FROM bambucha/baikal

#install/setup caldavzap
RUN mkdir /baikal/html/ui
RUN wget -O caldav.zip https://www.inf-it.com/CalDavZAP_0.13.1.zip \
    && unzip caldav.zip -d /baikal/html \
    && mv /baikal/html/caldavzap/* /baikal/html/ui
COPY config.js /baikal/html/ui
RUN chown -R lighttpd:lighttpd /baikal/html/ui
