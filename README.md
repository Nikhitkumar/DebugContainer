# DebugContainer
Container with all debug tools such as htop, ps etc

## How to run 
Lauch the debug tools container in the pid,network namespace of a different container


```
TARGET=target_container_id

docker run \
  --pid container:$TARGET \
  --net container:$TARGET \
  --cap-add NET_RAW \
  --cap-add NET_ADMIN \
  --cap-add SYS_PTRACE \
  -ti \
  nikhitkumar/debug_container:main
```
