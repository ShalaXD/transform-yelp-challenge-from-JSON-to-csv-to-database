DROP TABLE IF EXISTS tip;

CREATE TABLE tip (
    text_id INTEGER,
    text TEXT,
    date VARCHAR(50),
    likes INTEGER,
    business_id VARCHAR(100),
    user_id VARCHAR(100),
    type VARCHAR(100),

    PRIMARY KEY (text_id),
    FOREIGN KEY (business_id) REFERENCES business(business_id),
    FOREIGN KEY (user_id) REFERENCES user(user_id)
) CHARACTER SET 'UTF8';

LOAD DATA LOCAL INFILE '/Users/shalachen/Desktop/yelp/tip.csv' INTO TABLE tip
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;
