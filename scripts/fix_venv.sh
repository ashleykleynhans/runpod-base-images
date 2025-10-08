#!/usr/bin/env bash
if [ "$#" -ne 2 ]; then
  echo "Usage: $0 <OLD_VENV> <NEW_VENV>"
  echo "   eg: $0 /venv /workspace/venv"
  exit 1
fi

OLD_PATH=${1}
NEW_PATH=${2}
echo "VENV: Fixing venv. Old Path: ${OLD_PATH}  New Path: ${NEW_PATH}"
cd ${NEW_PATH}/bin

# Check if VIRTUAL_ENV line contains quotes or not
if grep -q "VIRTUAL_ENV=\"${OLD_PATH}\"" activate; then
    echo "Found VIRTUAL_ENV with quotes"
    sed -i "s|VIRTUAL_ENV=\"${OLD_PATH}\"|VIRTUAL_ENV=\"${NEW_PATH}\"|" activate
elif grep -q "VIRTUAL_ENV=${OLD_PATH}" activate; then
    echo "Found VIRTUAL_ENV without quotes"
    sed -i "s|VIRTUAL_ENV=${OLD_PATH}|VIRTUAL_ENV=${NEW_PATH}|" activate
else
    echo "Warning: Could not find VIRTUAL_ENV=${OLD_PATH} in activate script"
fi

# Update the venv path in the shebang for all files containing a shebang
sed -i "s|#\!${OLD_PATH}/bin/python3|#\!${NEW_PATH}/bin/python3|" *
