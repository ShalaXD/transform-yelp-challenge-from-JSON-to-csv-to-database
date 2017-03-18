import sys
import csv
import json
reload(sys)
sys.setdefaultencoding('utf-8')

file = open("yelp_academic_dataset_business.json","r")
newcsv = open("categories.csv", "wb+")
output = csv.writer(newcsv)
output.writerow(["categories_id","categories","business_id"])
count = 0
for eachline in file:
	data = json.loads(eachline)
	if data["categories"] is not None:
		for i in xrange(len(data["categories"])):
			count +=1
			output.writerow([count,data["categories"][i],data["business_id"]])
print count
