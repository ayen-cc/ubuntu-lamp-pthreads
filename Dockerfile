FROM ayen/ubuntu-lamp
MAINTAINER Ayen Ling <ling@ayen.cc>
RUN /usr/local/php/bin/pecl update-channels
RUN /usr/local/php/bin/pecl install pthreads-2.0.10
RUN sed -i '/extension=modulename.extension/a extension=pthreads.so' /etc/php.ini
