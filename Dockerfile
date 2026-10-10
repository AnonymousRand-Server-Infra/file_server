FROM busybox:musl AS busybox

FROM sigoden/dufs:latest

# for `post_start` command to have the required binaries
COPY --from=busybox /bin/* /bin/
