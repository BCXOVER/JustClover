import { test, expect } from '@playwright/test';

const EXPECTED_BUILD = process.env.EXPECTED_BUILD || 'stage121-restore-appjs-and-browser-tests-20260503-1';
const ROOM_ID = process.env.ROOM_ID || '';
const DEPLOY_WAIT_MS = Number(process.env.DEPLOY_WAIT_MS || 300_000);

function stageUrl(baseURL) {
  const url = new URL(baseURL || 'https://bcxover.github.io/JustClover/');
  url.searchParams.set('v', EXPECTED_BUILD);
  if (ROOM_ID) url.searchParams.set('room', ROOM_ID);
  url.searchParams.set('t', String(Date.now()));
  return url.toString();
}

async function waitForExpectedBuild(page, url) {
  const deadline = Date.now() + DEPLOY_WAIT_MS;
  let lastBuild = '';
  let lastError = '';

  while (Date.now() < deadline) {
    const response = await page.goto(url, { waitUntil: 'domcontentloaded' }).catch(error => {
      lastError = String(error?.message || error);
      return null;
    });

    if (response && response.status() >= 400) lastError = `HTTP ${response.status()}`;

    await page.waitForTimeout(1200);

    lastBuild = await page.evaluate(() => window.JUSTCLOVER_BUILD || '').catch(error => {
      lastError = String(error?.message || error);
      return '';
    });

    if (lastBuild === EXPECTED_BUILD) return;
    await page.waitForTimeout(5000);
  }

  throw new Error(`Expected build ${EXPECTED_BUILD}, got ${lastBuild || 'empty'}. Last error: ${lastError || 'none'}`);
}

async function openStage(page, baseURL) {
  const url = stageUrl(baseURL);
  const pageErrors = [];

  page.on('pageerror', error => {
    const text = String(error?.message || error);
    const ignored = ['ResizeObserver loop', 'Script error'];
    if (!ignored.some(part => text.includes(part))) pageErrors.push(text);
  });

  page.on('console', msg => {
    if (msg.type() !== 'error') return;
    const text = msg.text();
    const ignored = [
      'favicon',
      'manifest.webmanifest',
      'ResizeObserver loop',
      'Failed to load resource',
      'net::ERR_BLOCKED_BY_CLIENT',
    ];
    if (!ignored.some(part => text.includes(part))) console.log('[browser console error]', text);
  });

  await waitForExpectedBuild(page, url);
  return { url, pageErrors };
}

async function forceRoomDomVisible(page) {
  await page.evaluate(() => {
    document.getElementById('authView')?.classList.add('hidden');
    document.getElementById('appView')?.classList.remove('hidden');
    document.body.classList.add('authenticated', 'active-room');
    document.querySelectorAll('.section').forEach(section => {
      section.classList.toggle('active', section.id === 'watchSection');
    });
    document.querySelectorAll('.nav-btn').forEach(button => {
      button.classList.toggle('active', button.dataset.section === 'watchSection');
    });
  });
}

test.describe('JustClover browser smoke', () => {
  test('site loads Stage121 app.js and no YAML app crash', async ({ page, baseURL }) => {
    const { pageErrors } = await openStage(page, baseURL);

    await expect(page.locator('body')).toContainText('JUST');
    await expect(page.locator('#authView')).toBeVisible();

    const build = await page.evaluate(() => window.JUSTCLOVER_BUILD);
    expect(build).toBe(EXPECTED_BUILD);

    const badge = await page.evaluate(() => getComputedStyle(document.documentElement, '::after').content);
    expect(badge).toContain('121 APPFIX');

    const appFix = await page.evaluate(() => window.jc121AppFixDebug?.());
    expect(appFix).toMatchObject({
      build: EXPECTED_BUILD,
      authView: true,
      appView: true,
      playerFrame: true,
      chatForm: true,
    });

    expect(pageErrors).toEqual([]);
  });

  test('GIF button exists and opens picker grid', async ({ page, baseURL }) => {
    const { pageErrors } = await openStage(page, baseURL);
    await forceRoomDomVisible(page);

    const gifButton = page.locator('[data-jc118-gif], [data-jc116-gif], .gif-tool').first();
    await expect(gifButton).toBeVisible();
    await gifButton.click();

    await expect(page.locator('#jc118GifDialog')).toBeVisible();
    await expect(page.locator('#jc118GifGrid')).toBeVisible();
    await expect(page.locator('#jc118GifGrid .jc118-gif-tile').first()).toBeVisible();

    const tileCount = await page.locator('#jc118GifGrid .jc118-gif-tile').count();
    expect(tileCount).toBeGreaterThan(0);

    expect(pageErrors).toEqual([]);
  });
});
