import sys
import csv
import json
reload(sys)
sys.setdefaultencoding('utf-8')

file = open("yelp_academic_dataset_business.json","r")
newcsv = open("hours.csv", "wb+")
output = csv.writer(newcsv) 
output.writerow(["hours_id","hours","business_id"])
count = 0
for eachline in file:
	data = json.loads(eachline)
	if data["hours"] is not None:
		for i in xrange(len(data["hours"])):
			count +=1
			output.writerow([count,data["hours"][i],data["business_id"]])

