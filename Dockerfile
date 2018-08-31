# Docker optimized Ubuntu container
FROM phusion/baseimage:0.11

# Use baseimage-docker's init system.
CMD ["/sbin/my_init"]

# Install stuff
RUN apt-get install wget curl tmux htop apache2

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
