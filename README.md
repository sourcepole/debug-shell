# debug-shell

Some container environments (hi Kubernetes!) do not
permit running the container as root.

So in order to debug stuff you need a shell container
with plenty of tools in it.

This is such a container.

Check the [Dockerfile](Dockerfile) to see which tools are
included.

Deploy via `kubectl apply -f debug-shell-pod.yaml`.
