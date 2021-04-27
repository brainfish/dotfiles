#!/usr/local/bin/python3
from datetime import datetime
from os import walk, system
from random import choice
from shutil import copy2

SCREENSAVER_FOLDER = "/Users/brainfish/Movies/Screensavers"
COPY_TO = "current.mp4"

# Check if screensaver is already running => BAIL!
pgrep_exit = system("pgrep ScreenSaverEngine")
if pgrep_exit != 256:
    exit()

(_, _, filenames) = next(walk(SCREENSAVER_FOLDER))
screensaver = choice(
    [f for f in filenames if f[-4:].lower() == ".mp4" and f != COPY_TO]
)

src = f"{SCREENSAVER_FOLDER}/{screensaver}"
dst = f"{SCREENSAVER_FOLDER}/{COPY_TO}"
log = f"{SCREENSAVER_FOLDER}/rotate-screensaver.log"
with open(log, "a") as logfile:
    logfile.write(f"{datetime.now()} src:{src} dst:{dst}\n")
copy2(src, dst)
