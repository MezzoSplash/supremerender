mkdir -p transcoded
for i in *.mp4; do
  if [ ! -f "transcoded/${i%.*}.mov" ]; then
    ffmpeg -i "$i" -vcodec mjpeg -q:v 2 -acodec pcm_s16be -q:a 0 -f mov "transcoded/${i%.*}.mov"
  else
    echo "Skipping $i: transcoded/${i%.*}.mov already exists"
  fi
done
