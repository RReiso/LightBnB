SELECT reservations.*, properties.*, AVG(property_reviews.rating) as average_rating
FROM properties
JOIN reservations ON property_id = properties.id
JOIN users ON owner_id = users.id
JOIN property_reviews ON reservation_id = reservations.id
WHERE users.id = 1 AND reservations.end_date < now()::date
GROUP BY reservations.id, properties.id
ORDER BY reservations.start_date
LIMIT 10;
