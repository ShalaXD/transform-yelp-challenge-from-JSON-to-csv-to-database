DROP TABLE IF EXISTS business;

CREATE TABLE business (
    business_id VARCHAR(100),
    name VARCHAR(100),
    neighborhood VARCHAR(100),
    address VARCHAR(200),
    city VARCHAR(50),
    state VARCHAR(50),
    postal_code VARCHAR(10),
    latitude DOUBLE,
    longitude DOUBLE,
    stars FLOAT,
    review_count INTEGER,
    is_open VARCHAR(10),
    attributes TEXT,
    type VARCHAR(100),

    PRIMARY KEY (business_id)
) CHARACTER SET 'UTF8';

LOAD DATA LOCAL INFILE '/Users/shalachen/Desktop/yelp/business.csv' INTO TABLE business
FIELDS TERMINATED BY ',' 
OPTIONALLY ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;


