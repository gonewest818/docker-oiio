## What

The dockerfile in this repo captures the dependencies and steps necessary
to download and build OpenImageIO from sources.  Base OS is Centos 7.

### Building

    $ ./build.sh

### Running

    $ docker run -it --rm oiio bash

OIIO command line tools are available:

    $ echo $PATH
    /work/oiio-Release-1.7.15/dist/linux64/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
    $ idiff
    $ oiiotool

Python module also available

    $ python
    Python 2.7.5 (default, Nov  6 2016, 00:28:07) 
    [GCC 4.8.5 20150623 (Red Hat 4.8.5-11)] on linux2
    Type "help", "copyright", "credits" or "license" for more information.
    >>> import OpenImageIO
    >>> 


