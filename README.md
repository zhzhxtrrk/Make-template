this is a simple build system, a little like GNUStep or Android.

Here is a simple

{% highlight make %}
include build/Common.makefile

TARGET=test
SRC=test.c

include build/Build.makefile
{% endhighlight %}

{% highlight make %}
include build/Common.makefile

TARGET=libtest.so
SRC=test.c
CFLAGS=
LDFLAGS=
TYPE=shared

include build/Build.makefile
{% endhighlight %}