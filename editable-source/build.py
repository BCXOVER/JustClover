#!/usr/bin/env python3
"""Build the editable fragments into one GameSense Lua script (Python standard library only)."""
from pathlib import Path
import argparse
import hashlib
import json

root = Path(__file__).resolve().parent
parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument('--output', type=Path, default=root / 'dist' / 'andromeda.lua')
parser.add_argument('--check', action='store_true', help='verify the unchanged baseline snapshot')
args = parser.parse_args()
manifest = json.loads((root / 'manifest.json').read_text(encoding='utf-8'))
pieces = []
for part in manifest['parts']:
    path = (root / part['path']).resolve()
    if not path.is_relative_to(root):
        raise SystemExit('Source fragment is outside the project: ' + part['path'])
    content = path.read_bytes()
    if args.check and hashlib.sha256(content).hexdigest() != part['sha256']:
        raise SystemExit('Modified source fragment: ' + part['path'])
    pieces.append(content)
source = b''.join(pieces)
digest = hashlib.sha256(source).hexdigest()
if args.check and digest != manifest['baseline_sha256']:
    raise SystemExit('Baseline source checksum does not match')
args.output.parent.mkdir(parents=True, exist_ok=True)
args.output.write_bytes(source)
print(str(args.output))
print(str(len(source)) + ' bytes; SHA256 ' + digest)
