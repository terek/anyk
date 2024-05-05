FROM maven:3.5.0-jdk-8

ARG URL=https://nav.gov.hu/pfile/programFile?path=/nyomtatvanyok/letoltesek/nyomtatvanykitolto_programok/nyomtatvany_apeh/keretprogramok/AbevJava

WORKDIR /abevjava

RUN wget -O abev_install.jar $URL
RUN echo "abevjava.path = /abevjava" >> /etc/abevjavapath.cfg
RUN java -jar abev_install.jar -s

CMD ["/bin/bash", "abevjava_start"]