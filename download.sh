# Letölti a megadott nyomtatványokat a NAV oldaláról és eltárolja őket az
# `abevjava/nyomtatvanyok`` mappában.
#
# Használat:
# > ./download.sh 23nyk 2308

BASE_URL="https://nav.gov.hu/pfile/programFile?path=/nyomtatvanyok/letoltesek/nyomtatvanykitolto_programok/nyomtatvanykitolto_programok_nav"

for ID in $@
do 
    LOWER_ID=$(echo "${ID}" | tr '[:upper:]' '[:lower:]')
    UPPER_ID=$(echo "${ID}" | tr '[:lower:]' '[:upper:]')
    URL="${BASE_URL}/${UPPER_ID}/nav_${LOWER_ID}"
    ./run.sh /bin/bash -c "wget -O ${UPPER_ID}.jar ${URL}; java -jar ${UPPER_ID}.jar -s"
done