import sys
import csv
import json
reload(sys)
sys.setdefaultencoding('utf-8')

file = open("yelp_academic_dataset_checkin.json","r")
newcsv = open("checkin.csv", "wb+")
output = csv.DictWriter(newcsv, fieldnames = ["time","business_id","type"]) 
output.writeheader()
for eachline in file:
	data = json.loads(eachline)
	output.writerow(data)
