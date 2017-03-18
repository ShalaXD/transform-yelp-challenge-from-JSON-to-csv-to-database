DROP TABLE IF EXISTS hours;

CREATE TABLE hours (
    hours_id INTEGER,
    hours VARCHAR(100),
    business_id VARCHAR(100),

    PRIMARY KEY (hours_id),
    FOREIGN KEY (business_id) REFERENCES business(business_id)
) CHARACTER SET 'UTF8';


LOAD DATA LOCAL INFILE '/Users/shalachen/Desktop/yelp/hours.csv' INTO TABLE hours
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;
