#!/bin/bash
curl -L -O https://github.com/jasoncee01/CSEC471/raw/refs/heads/main/ADModule-master.zip
curl -O https://raw.githubusercontent.com/jasoncee01/CSEC471/refs/heads/main/PowerView.ps1
python3 -m http.server 8001
