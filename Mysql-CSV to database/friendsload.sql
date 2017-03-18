DROP TABLE IF EXISTS friends;

CREATE TABLE friends (
    friends_id INTEGER,
    friends VARCHAR(100),
    user_id VARCHAR(100),

    PRIMARY KEY (friends_id),
    FOREIGN KEY (user_id) REFERENCES user(user_id)
) CHARACTER SET 'UTF8';


LOAD DATA LOCAL INFILE '/Users/shalachen/Desktop/yelp/friends.csv' INTO TABLE friends
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;
