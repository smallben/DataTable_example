#!/bin/sh
JSON_DATA_PATH="/usr/share/nginx/html/public_html/conf.d/DataTable.json"

if [ $REQUEST_METHOD = POST ]; then
	strparam=`cat $stdin | cut -c1-$CONTENT_LENGTH`
else
	strparam=$QUERY_STRING
fi


json_file=`cat $JSON_DATA_PATH`

echo -ne "Content-type:application/json\r\n\r\n"

echo $json_file

