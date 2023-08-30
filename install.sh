#!/usr/bin/env sh

# Configuration
XCODE_TEMPLATE_DIR=$HOME'/Library/Developer/Xcode/Templates/File Templates/PlanNet Templates'
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Copy file templates into the local RIBs template directory
xcodeTemplate () {
  echo "==> Copying up Xcode file templates..."

  if [ -d "$XCODE_TEMPLATE_DIR" ]; then
    rm -R "$XCODE_TEMPLATE_DIR"
  fi
  mkdir -p "$XCODE_TEMPLATE_DIR"

  cp -R $SCRIPT_DIR/*.xctemplate "$XCODE_TEMPLATE_DIR"

  }

xcodeTemplate

echo "==> Template files have been installed, select 'ScreenTemplate' from the 'New File...| PlanNet Templates' dialog in Xcode."








# make special compartiment for custom templates
#mkdir -p ~/Applications/Xcode.app/Contents/Developer/Library/Xcode/Templates/File\ Templates/PlanNet\ Templates

# copy all templates into folder
#cp -R /Templates ~/Applications/Xcode.app/Contents/Developer/Library/Xcode/Templates/File\ Templates/PlanNet\ Templates