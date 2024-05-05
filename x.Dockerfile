FROM anyk

ARG ID=23NYK
ARG LOWER_ID=$(echo $ID | tr '[:upper:]' '[:lower:]')
ARG URL=https://nav.gov.hu/pfile/programFile?path=/nyomtatvanyok/letoltesek/nyomtatvanykitolto_programok/nyomtatvanykitolto_programok_nav/${ID}/nav_${LOWER_ID}

RUN wget -O $ID.jar $URL
RUN java -jar $ID.jar -s

CMD ["/bin/bash", "abevjava_start"]

# /abevjava/nyomtatvanyok
# /root/abevjava/mentesek
# /root/abevjava/naplo
