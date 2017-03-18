DROP TABLE IF EXISTS categories;

CREATE TABLE categories (
    categories_id INTEGER,
    categories VARCHAR(100),
    business_id VARCHAR(100),

    PRIMARY KEY (categories_id),
    FOREIGN KEY (business_id) REFERENCES business(business_id)
) CHARACTER SET 'UTF8';

LOAD DATA LOCAL INFILE '/Users/shalachen/Desktop/yelp/categories.csv' INTO TABLE categories
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;
