INSERT INTO users (name, email, password)
VALUES 
('A A', 'a@a.com','$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('B B', 'b@b.com','$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('C C', 'c@c.com','$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');

INSERT INTO properties (owner_id, title, description, thumbnail_photo_url,
cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms,
number_of_bedrooms, country, street, city, province, post_code, active)
VALUES (1,'D House','description', 'https://example.com/img.jpeg/img.jpeg','https://example.com/img.jpeg/img.jpeg',
30, 0, 1, 1, 'Canada', 'ddd', 'Ottawa', 'Ontario', 'L4O0P6', true),
(2,'E House','description', 'https://example.com/img.jpeg/img.jpeg','https://example.com/img.jpeg/img.jpeg',
40, 1, 2, 3, 'Canada', 'eee', 'Montreal', 'Quebec', 'M1E0P7', true),
(3,'F House','description', 'https://example.com/img.jpeg/img.jpeg','https://example.com/img.jpeg/img.jpeg',
50, 0, 2, 2, 'Canada', 'fff', 'Regina', 'Saskatchewan', 'D4A9H4', true);

INSERT INTO reservations (start_date, end_date, property_id, guest_id)
VALUES ('2018-09-11', '2018-09-26', 3, 1),
('2019-01-04', '2019-02-01', 3, 2),
('2021-10-01', '2021-10-14', 1, 3);

INSERT INTO property_reviews (guest_id, property_id, reservation_id, rating, message)
VALUES (1, 3, 1, 5, 'message'),
(2, 3, 2, 4, 'message'),
(3, 1, 3, 5, 'message');

