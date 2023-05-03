ERD Relationship Logic:

concessions-customers [customer_id] (many-to-one): customers are unique, but there can be multiple concession purchases on the same or different dates

customers-tickets [customer_id] (one-to-many): similar to the previous customer_id relationship, one customer can have multiple entries into tickets if they purchase multiple in the day or are return customers

tickets-theaters [theater_id] (many-to-one): it's important that there can be many/multiple tickets with the same theater_id number so many people can see the same movie and the theater_id can be reused for other screenings in the data

tickets-movies [movie_id] (many-to-one): as with the above relationships, because there are so many tickets and so much data on all of the the database will need to be structured to handle multiple ticket occurrences with the same movie_id number