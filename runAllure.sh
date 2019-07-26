#!/bin/bash
echo "ALLURE_VERSION:" $(cat ${ALLURE_VERSION})

if [ -e $REPORT_DIRECTORY/"index.html" ]; then
		echo "Opening existing report"
else
		echo "Generating default report"
		/app/generateAllureReport.sh
fi
allure open --port $PORT
