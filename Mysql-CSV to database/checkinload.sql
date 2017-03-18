DROP TABLE IF EXISTS checkin;

CREATE TABLE checkin (
    time TEXT,
    business_id VARCHAR(100),
    type VARCHAR(100),

    PRIMARY KEY (business_id),
    FOREIGN KEY (business_id) REFERENCES business(business_id)
) CHARACTER SET 'UTF8';

LOAD DATA LOCAL INFILE '/Users/shalachen/Desktop/yelp/checkin.csv' INTO TABLE checkin
FIELDS TERMINATED BY ',' 
OPTIONALLY ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;