import sys
import csv
import json
reload(sys)
sys.setdefaultencoding('utf-8')

newcsv = open("tip.csv", "wb+")
output = csv.writer(newcsv)
output.writerow(["text_id","text","date","likes","business_id","user_id","type"])
count = 0
file = open('{0}.{1}'.format("yelp_academic_dataset_tip", 'json'), 'r') 
for eachline in file.readlines():
	count +=1
	data = json.loads(eachline)
	data["text"] = data["text"].replace(',', '').replace('\n', '').replace('\\', '')
	output.writerow([count,data["text"],data["date"],data["likes"],data["business_id"],data["user_id"],data["type"]])
