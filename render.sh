#!/usr/bin/env bash
# Render the CV: writes PDF/PNG/Markdown/HTML into rendercv_output/, then
# refreshes main.pdf (the copy the webpage submodule points at).
#
# rendercv lives in its own pyenv virtualenv ("rendercv", Python 3.12) because
# rendercv >= 2.4 requires Python >= 3.12.
set -euo pipefail
cd "$(dirname "$0")"

~/.pyenv/versions/rendercv/bin/rendercv render Spyros_Pavlatos_CV.yaml
cp rendercv_output/Spyros_Pavlatos_CV.pdf main.pdf
