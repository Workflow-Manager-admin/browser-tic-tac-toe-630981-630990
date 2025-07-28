#!/bin/bash
cd /tmp/kavia/workspace/code-generation/browser-tic-tac-toe-630981-630990/tic_tac_toe_frontend
npx eslint 
$ESLINT_EXIT_CODE
npm run build
BUILD_EXIT_CODE=$?
if [ $ESLINT_EXIT_CODE -ne 0 ] || [ $BUILD_EXIT_CODE -ne 0 ]; then
   exit 1
fi

