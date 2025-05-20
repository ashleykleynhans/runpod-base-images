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

PYTHON_VERSION=$(python3 -c "import sys; print(f'{sys.version_info.major}.{sys.version_info.minor}')")

echo "Python version is ${PYTHON_VERSION}.x"

# Update the venv path in the activate script
if [[ "$PYTHON_VERSION" == "3.10" ]]; then
    sed -i "s|VIRTUAL_ENV=\"${OLD_PATH}\"|VIRTUAL_ENV=\"${NEW_PATH}\"|" activate
elif [[ "$PYTHON_VERSION" == "3.11" || "$PYTHON_VERSION" == "3.12" ]]; then
    sed -i "s|VIRTUAL_ENV=${OLD_PATH}|VIRTUAL_ENV=${NEW_PATH}|" activate
else
    sed -i "s|VIRTUAL_ENV=\"${OLD_PATH}\"|VIRTUAL_ENV=\"${NEW_PATH}\"|" activate
fi

# Update the venv path in the shebang for all files containing a shebang
sed -i "s|#\!${OLD_PATH}/bin/python3|#\!${NEW_PATH}/bin/python3|" *
