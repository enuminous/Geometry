#!/usr/bin/env bash
set -euo pipefail
lake update
lake build Geometry
lake env lean Axioms.lean
lake build geometryAudit
lake exe geometryAudit
python3 sanity.py
