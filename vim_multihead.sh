#!/bin/bash
cd ~/data/sources/PavonEngine && st vim "+set titlestring=Debug" ./Source/Editor/main.c --servername MULTIHEAD_CODE &
cd ~/data/sources/PavonEngine && st vim "+set titlestring=Code" --servername MULTIHEAD_SERVER &
#cd ~/sources/PavonEngineC && st vim "+set titlestring=Debugger" --servername MULTIHEAD_DEBUGGER &
