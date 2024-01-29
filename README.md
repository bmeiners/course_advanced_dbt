# Welcome to the Bingeflix Data Team

### Coding Conventions
#### General
- Use UPPER case for all keywords
- Use trailing commas in SELECT statements
- Use Snowflake dialect
- Use consistent style in GROUP BY and ORDER BY (either names or numbers, not both)


### Testing Conventions
#### Sources
- The primary key source column must have not_null and unique generic tests.
- All boolean columns must have an accepted_values schema test. The accepted values are true and false.
- Columns that contain category values must have an accepted_values schema test.
- Columns that should never be null must have a not_null schema test.
- Columns that should be unique must have a unique schema test.

#### Models
- The primary key column must have not_null and unique schema tests.
- All boolean columns must have an accepted_values schema test. The accepted values are true and false.
- Columns that contain category values must have an accepted_values schema test.
- Columns that should never be null must have a not_null schema test.
- Columns that should be unique must have a unique schema test.
- Where possible, use schema tests from the dbt_utils or dbt_expectations packages to perform extra verification.

## Project 1

[Commit link](https://github.com/bmeiners/course_advanced_dbt/commit/2c417e2002303d2cbf2ddf1a6393d5e3a8eb3d10)

### Task 2:
 I chose the subscriptions table in the source_bingeflix.yml to add the doc blocks.

### Task 3:
 1. Solved missing documentarion for fct_events table. Added a primary key test for the table.
 2. Added documentation for the ads_platform schema and table.
 3. Added a exception when reasoning about the fanout problem, the uses of this model seem reasonable.