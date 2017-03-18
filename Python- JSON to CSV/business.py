import sys
import csv
import json
reload(sys)
sys.setdefaultencoding('utf-8')

file = open("yelp_academic_dataset_business.json","r")
newcsv = open("business.csv", "wb+")
output = csv.writer(newcsv) 
output.writerow(["business_id","name","neighborhood","address","city","state","postal_code","latitude","longitude","stars","review_count","is_open","attributes","type"])

for eachline in file:
	data = json.loads(eachline)
	output.writerow([data["business_id"],data["name"],data["neighborhood"],data["address"],data["city"],data["state"],data["postal_code"],data["latitude"],data["longitude"],data["stars"],data["review_count"],data["is_open"],data["attributes"],data["type"]])

