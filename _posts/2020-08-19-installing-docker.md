---
layout: post
---

{% include callouts.html type="warning" header="assumptions" content="You are running the 64-bit version of Ubuntu 16.04 or higher, and you do not already have an older version of Docker installed. See the official product manual for other [supported platforms](https://docs.docker.com/engine/install/)." %}

To proceed, enter the following commands into your bash terminal and answer all prompts.

{% highlight bash %}
$ sudo apt-get update
{% endhighlight %}
{% highlight bash %}
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

{% include callouts.html type="primary" header="note" content="Docker Engine is supported on `amd64`, `armhf`, and `arm64` architectures. Replace the abbreviation in [arch=`<abbr>`] with the architecture matching your OS." %}

{% highlight bash %}
$ sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
{% endhighlight %}

{% highlight bash %}
$ sudo apt-get update
{% endhighlight %}

{% highlight bash %}
$ sudo apt-get install docker-ce docker-ce-cli containerd.io
{% endhighlight %}

{% highlight bash %}
$ sudo docker run hello-world
{% endhighlight %}

Your Docker Engine is now installed, running, and ready to use. Get started with Docker by following their official [quickstart guide](https://docs.docker.com/get-started/).

You can optionally add the user to the docker group to avoid typing `sudo` before each docker call.

{% include callouts.html type="danger" header="caution" content="The docker group grants privileges equivalent to the root user. For details on how this impacts security in your system, see [Docker Daemon Attack Surface](https://docs.docker.com/engine/security/security/#docker-daemon-attack-surface)." %}

{% highlight bash %}
$ sudo usermod -aG docker $USER
{% endhighlight %}

{% highlight bash %}
$ docker run hello-world
{% endhighlight %}