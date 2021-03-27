#! bin/bash
# This script finds and compares versions of Python.
if [ -x "$(which python3)" ];
then
  echo "Python3 exists!";
elif [ -x "$(which python2)" ];
then
  VERSION=$(python -V 2>&1 | cut -d' ' -f2);
  TYPE=$(echo $VERSION | head -c 1);
  if [ "$TYPE" == "3" ];
  then
    echo "Python3 exists!"
  elif [ "$TYPE" == "2" ];
  then
    echo "Python2 exists! It has End of life status. Please, install and use Python3.";
  else
    echo "Another Python version exists!";
  fi
else
  echo "No Python detected! Please, install and use Python3."
fi
