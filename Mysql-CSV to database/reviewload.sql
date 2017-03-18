DROP TABLE IF EXISTS review;

CREATE TABLE review (
    review_id VARCHAR(100),
    user_id VARCHAR(100),
    business_id VARCHAR(100),
    stars FLOAT,
    date DATE,
    text TEXT,
    useful INTEGER,
    funny INTEGER,
    cool INTEGER,
    type VARCHAR(100),

    PRIMARY KEY (review_id),
    FOREIGN KEY (user_id) REFERENCES user(user_id),
    FOREIGN KEY (business_id) REFERENCES business(business_id)
) CHARACTER SET 'UTF8';


LOAD DATA LOCAL INFILE '/Users/shalachen/Desktop/yelp/review.csv' INTO TABLE review
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;
