# Futtatja az abevjava programot.
# Az alábbi mappák vannak megosztva a konténerrel:
# - abevjava/nyomtatvanyok -> /abevjava/nyomtatvanyok (letöltött nyomtatványok)
# - abevjava -> /root/abevjava (beállítások, mentések, stb.)

WORK="$(pwd)/abevjava"

docker run \
  -h $HOSTNAME \
  --net=host \
  -v /tmp/.X11-unix \
  -v "${XAUTHORITY:-$HOME/.Xauthority}":/root/.Xauthority:rw \
  -v "${WORK}":/root/abevjava \
  -v "${WORK}/nyomtatvanyok":/abevjava/nyomtatvanyok \
  -e DISPLAY=:0 \
  -t anyk "$@"