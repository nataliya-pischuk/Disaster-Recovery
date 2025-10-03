#!bin/bash
PORT=$(bash -c 'exec 3<> /dev/tcp/127.0.0.1/80;echo $?' 2>/dev/null)
echo "$PORT"
echo "$FILE"
if [[ $PORT -eq 0 && $FILE -eq 0 ]]; then
  echo "0" > /tmp/track_file
  exit 0
else
  echo "1" > /tmp/track_file
  exit 1
fi
