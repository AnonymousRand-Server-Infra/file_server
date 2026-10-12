FROM busybox:musl AS busybox

FROM sigoden/dufs:latest

# install busybox's statically-compiled binaries for basic shell commands for `post_start`
COPY --from=busybox /bin/busybox /bin/
# the "exec" form, i.e. a list, ensures that we don't need `sh` first to run this :3
RUN ["/bin/busybox", "--install", "-s", "/bin"]
