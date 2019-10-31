CREATE SCHEMA stackoverflow_filtered;

SET search_path TO stackoverflow_filtered;

-- Creating table results.
create table results(
 answer_id varchar,
 question_id varchar,
 user_id varchar,
 created_at varchar,
 body varchar(500),
 accepted_answer_id varchar,
 view_count varchar,
 score varchar,
 comment_count varchar,
 "location" varchar(100),
 display_name varchar(100)
);

-- Creating btree and hash respectively
CREATE INDEX reputation_col on results using btree(reputation);
CREATE INDEX hash_index on results using hash(display_name);

-- Creating a view 
CREATE VIEW join_view as
SELECT display_name,city,question_id
FROM results
WHERE accepted_answer_id IS NOT NULL;

-- Creating a materilized view
CREATE MATERIALEIZED VIEW mat_view AS
SELECT display_name,city,question_id
FROM results
WHERE accepted_answer_id IS NOT NULL;
