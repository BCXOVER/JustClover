name: Browser smoke tests

on:
  workflow_dispatch:
    inputs:
      expected_build:
        description: 'Expected window.JUSTCLOVER_BUILD value'
        required: false
        default: 'stage118-gif-gallery-no-api-stable-20260503-1'
      room_id:
        description: 'Optional room id for the smoke URL'
        required: false
        default: ''
  push:
    branches: [main]
    paths:
      - 'index.html'
      - 'style.css'
      - 'app.js'
      - 'service-worker.js'
      - 'package.json'
      - 'playwright.config.js'
      - 'tests/**'
      - '.github/workflows/browser-tests.yml'

jobs:
  browser-smoke:
    runs-on: ubuntu-latest
    timeout-minutes: 12
    env:
      PLAYWRIGHT_BASE_URL: https://bcxover.github.io/JustClover/
      EXPECTED_BUILD: ${{ github.event.inputs.expected_build || 'stage118-gif-gallery-no-api-stable-20260503-1' }}
      ROOM_ID: ${{ github.event.inputs.room_id || '' }}
      DEPLOY_WAIT_MS: 240000
    steps:
      - name: Checkout repository
        uses: actions/checkout@v4

      - name: Setup Node.js
        uses: actions/setup-node@v4
        with:
          node-version: 20

      - name: Install dependencies
        run: npm install

      - name: Install Playwright Chromium
        run: npx playwright install --with-deps chromium

      - name: Run browser smoke tests
        run: npm run test:browser

      - name: Upload Playwright report
        if: always()
        uses: actions/upload-artifact@v4
        with:
          name: playwright-report
          path: playwright-report/
          if-no-files-found: ignore
          retention-days: 7

      - name: Upload test results
        if: always()
        uses: actions/upload-artifact@v4
        with:
          name: test-results
          path: test-results/
          if-no-files-found: ignore
          retention-days: 7
