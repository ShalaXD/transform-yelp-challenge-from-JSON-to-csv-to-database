import sys
import csv
import json
reload(sys)
sys.setdefaultencoding('utf-8')

file = open("yelp_academic_dataset_review.json","r")
newcsv = open("review.csv", "wb+")
output = csv.DictWriter(newcsv,fieldnames=["review_id","user_id","business_id","stars","date","text","useful","funny","cool","type"]) 
output.writeheader()
for eachline in file:
	data = json.loads(eachline)
	data["text"] = data["text"].replace(',', '').replace('\n', '').replace('\\', '')
	output.writerow(data)


