`cdebug` is a container debugging tool.  It is helpful when diagnosing issues
in "minimalist" containers that don't themselves provide any debugging tools.
You can `strace`, attach a debugger, edit files, and anything else your heart
desires, in a familiar fully-featured Debian-based environment.


# How it works

The core of `cdebug` is the container image, which is a Debian-based image
which has a set of useful tools pre-installed -- and within which you can
install any other packages that you need.

The real *magic*, though, is in the helper script,
handily called `cdebug`, which you install on the server and run as

```
cdebug <container>
```

whenever you want to debug `<container>`.  This script creates a new "sidecar"
container, attached to the namespaces of the container you want to debug.  By
attaching to the namespaces of the existing container, we get access to that
container's processes and networking configuration, so you can do (almost)
anything you'd be able to do in a "normal" system.
