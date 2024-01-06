# PLANET="NAME:COMMAND:QUANTITIES"
# COMMAND: Moon=301, Sun=10, Mercury=199, Venus=299, Earth=399, Mars=499, Jupiter=599, Saturn=699, Uranus=799, Neptune=899,
# QUANTITIES: Table Settings (option 5): https://ssd.jpl.nasa.gov/horizons/app.html#/
#    9: Visual mag. and Surface Brightness
#   10: Illuminated fraction
#   31: Observer ecliptic lon. and lat.
MOON="Moon:301:31,10"
SUN="Sun:10:31"
MERCURY="Mercury:199:31,10"
VENUS="Venus:299:31,10"
MARS="Mars:499:31"
JUPITER="Jupiter:599:31"
SATURN="Saturn:699:31"
URANUS="Uranus:799:31"
NEPTUNE="Neptune:899:31"

# Earth can not be observed from the center of the Earth
#EARTH="Earth:399"

# rows by date and hour
START=2024-01-01
STOP=2025-12-31
STEP=6h

# We only want the csv headers and data
FILTER='\(Date_.*UT.__HR:MN.*_JDUT,.*ObsEcLon.*ObsEcLat\|20[0-9][0-9].*000000,.*[0-9],.*[0-9],\)'

# FORMAT text or json
FORMAT='text'

# CSV_FORMAT=YES|NO
CSV_FORMAT='YES'

# this is the entire GET URL minus COMMAND (planet)
URL="https://ssd.jpl.nasa.gov/api/horizons.api?CAL_FORMAT=BOTH&OBJ_DATA=NO&MAKE_EPHEM=YES"
URL="${URL}&format=${FORMAT}&CSV_FORMAT=${CSV_FORMAT}&START_TIME=${START}&STOP_TIME=${STOP}&STEP_SIZE=${STEP}"

for PLANET in $MOON $SUN $MERCURY $VENUS $MARS $JUPITER $SATURN $URANUS $NEPTUNE; do
    NAME=`echo $PLANET | cut -d ":" -f 1`
    COMMAND=`echo $PLANET | cut -d ":" -f 2`
    QUANTITIES=`echo $PLANET | cut -d ":" -f 3`
    GET_URL="${URL}&COMMAND=${COMMAND}&QUANTITIES=%27${QUANTITIES}%27"
    echo $NAME $GET_URL
    wget $GET_URL -O ${NAME}.csv
    grep "$FILTER" ${NAME}.csv | sed "s:, , ,:, ${NAME},:" > ${NAME}.tmp
    mv ${NAME}.tmp ${NAME}.csv
done
