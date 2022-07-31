/*
In the schema file, you first delete the urls table if it already exists. This avoids the possibility of another table named urls existing, which might result in confusing behavior; for example, if it has different columns. Note that this will delete all of the existing data whenever the schema file executes.
You then create the table with the following columns:
id: The ID of the URL, this will be a unique integer value for each URL entry. You will use it to get the original URL from a hash string.
created: The date the URL was shortened.
original_url: The original long URL to which you will redirect users.
clicks: The number of times a URL has been clicked. The initial value will be 0, which will increment with each redirect.
*/

DROP TABLE IF EXISTS urls;

CREATE TABLE urls (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    original_url TEXT NOT NULL,
    clicks INTEGER NOT NULL DEFAULT 0
);
