#! /bin/bash

#Variable
Receiver=475663574@qq.com,wangwh@nco-china.com.cn

#run testcase
python -m robot.run --suite DefaultConfiguration --outputdir ../OMCoutput/ ../OMCTest/

#generate output
python ../OMCoutput/robot/rebot.py --summary summary.html --log NONE --report NONE --outputdir ../OMCoutput ../OMCoutput/output.xml

#send mail
python ../OMCsendmail/sendmail.py ../OMCoutput/summary.html ../OMCoutput/report.html ${Receiver}
