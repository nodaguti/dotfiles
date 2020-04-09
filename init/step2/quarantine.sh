#!/bin/sh

sudo xattr -r -d com.apple.quarantine "${HOME}/Library/QuickLook"
