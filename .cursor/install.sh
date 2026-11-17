#!/usr/bin/env bash
set -euo pipefail

# Static HTML mock exams — no package dependencies.
for f in index.html \
  Claude-Certified-Architect-Foundations-Mock-Exam.html \
  Claude-Certified-Architect-Professional-Mock-Exam.html \
  Claude-Certified-Developer-Foundations-Mock-Exam.html \
  Claude-Certified-Associate-Foundations-Mock-Exam.html; do
  test -f "$f" || { echo "Missing required file: $f" >&2; exit 1; }
done

echo "Static exam assets verified."