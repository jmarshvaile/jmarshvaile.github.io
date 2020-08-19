---
layout: post
---

The following is taken from the official Docker product manual for [Ubuntu installations](https://docs.docker.com/engine/install/ubuntu/). For other supported platforms, see their [main installation page](https://docs.docker.com/engine/install/).

{% highlight bash %}
$ sudo apt-get update

$ sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
{% endhighlight %}

{% highlight bash %}
$ curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
{% endhighlight %}

{% highlight bash %}
$ sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
{% endhighlight %}

{% highlight bash %}
$ sudo apt-get update
$ sudo apt-get install docker-ce docker-ce-cli containerd.io
{% endhighlight %}

{% highlight bash %}
$ sudo docker run hello-world
{% endhighlight %}

> **WARNING:** The docker group grants privileges equivalent to the root user. For details on how this impacts security in your system, see [Docker Daemon Attack Surface](https://docs.docker.com/engine/security/security/#docker-daemon-attack-surface).

**WARNING:** The docker group grants privileges equivalent to the root user. For details on how this impacts security in your system, see [Docker Daemon Attack Surface](https://docs.docker.com/engine/security/security/#docker-daemon-attack-surface).

{% render_time %}
page rendered at:
{% endrender_time %}


{% highlight bash %}
$ sudo usermod -aG docker $USER
{% endhighlight %}

{% highlight bash %}
$ docker run hello-world
{% endhighlight %}
