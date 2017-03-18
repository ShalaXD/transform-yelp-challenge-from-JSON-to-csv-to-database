import sys
import csv
import json
reload(sys)
sys.setdefaultencoding('utf-8')

file = open("yelp_academic_dataset_user.json","r")
newcsv = open("user.csv", "wb+")
output = csv.writer(newcsv) 
output.writerow(["user_id","name","review_count","yelping_since","useful","funny","cool","fans","elite","average_stars","compliment_hot","compliment_more","compliment_profile","compliment_cute","compliment_list","compliment_note","compliment_plain","compliment_cool","compliment_funny","compliment_writer","compliment_photos","type"]) 
for eachline in file:
	data = json.loads(eachline)
	output.writerow([data["user_id"],data["name"],data["review_count"],data["yelping_since"],data["useful"],data["funny"],data["cool"],data["fans"],data["elite"],data["average_stars"],data["compliment_hot"],data["compliment_more"],data["compliment_profile"],data["compliment_cute"],data["compliment_list"],data["compliment_note"],data["compliment_plain"],data["compliment_cool"],data["compliment_funny"],data["compliment_writer"],data["compliment_photos"],data["type"]])

