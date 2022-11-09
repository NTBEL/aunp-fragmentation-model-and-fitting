USER=`whoami`
DATE=`date`
MANIFEST='DATA-MANIFEST.txt'

# Append the new file set tagged with the user and date/time.
echo " " >> $MANIFEST
echo "$USER $DATE" >> $MANIFEST
find ./ | grep -v "README" | grep -v ".sh" >> $MANIFEST
