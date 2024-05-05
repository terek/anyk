docker run \
  -h $HOSTNAME \
  --net=host \
  -v /tmp/.X11-unix \
  -v ${XAUTHORITY:-$HOME/.Xauthority}:/root/.Xauthority:rw \
  -e DISPLAY=:0 \
  -t anyk $@