DROP TABLE IF EXISTS user2;

CREATE TABLE user2 (
    user_id VARCHAR(100),
    name VARCHAR(100),
    review_count INTEGER,
    yelping_since DATE,
    useful INTEGER,
    funny INTEGER,
    cool INTEGER,
    fans INTEGER,
    elite TEXT,
    average_stars DOUBLE,
    compliment_hot INTEGER,
  	compliment_more INTEGER,
  	compliment_profile INTEGER,
  	compliment_cute INTEGER,
  	compliment_list INTEGER,
  	compliment_note INTEGER,
  	compliment_plain INTEGER,
  	compliment_cool INTEGER,
  	compliment_funny INTEGER,
  	compliment_writer INTEGER,
  	compliment_photos INTEGER,
    type VARCHAR(100),

    PRIMARY KEY (user_id)
) CHARACTER SET 'UTF8';


LOAD DATA LOCAL INFILE '/Users/shalachen/Desktop/yelp/user.csv' INTO TABLE user2
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;
