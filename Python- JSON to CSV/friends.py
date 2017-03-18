import sys
import csv
import json
reload(sys)
sys.setdefaultencoding('utf-8')

file = open("yelp_academic_dataset_user.json","r")
newcsv = open("friends.csv", "wb+")
output = csv.writer(newcsv) 
output.writerow(["friends_id","friends","user_id"])
count = 0

for eachline in file:
	data = json.loads(eachline)
	if data["friends"] is not None:
		for i in xrange(len(data["friends"])):
			count +=1
			output.writerow([count,data["friends"][i],data["user_id"]])
print count

