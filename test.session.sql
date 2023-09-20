


--@block
CREATE TABLE Users(
    id INT PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(255) NOT NULL UNIQUE,
    bio TEXT,
    country VARCHAR(2)

);

--@block
INSERT INTO users(email, bio, country)
VALUES
    ("johanna_ar_bast@gmail.com", "i love cats", "SW"),
    ("it_was_me_dio@gmail.com", "i love to smash things", "SW"),
    ("ida@gmail.com", "i love to sleep", "SW");

--@block

SELECT * FROM users;

--@block

SELECT email, id FROM users

WHERE country = "SW"

AND email LIKE "i%"

ORDER BY id ASC

LIMIT 2;

--@block

CREATE INDEX email_index on users(email);

--@block

CREATE TABLE Rooms(
    id INT AUTO_INCREMENT,
    street VARCHAR(255),
    owner_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (owner_id) REFERENCES users(id)
);

--@block

INSERT INTO rooms(owner_id, street)
VALUES
    (1, "Segelbåts rummet"),
    (1, "Pizza rummet"),
    (1, "Kaffemaskins rummet"),
    (1, "Kalles chokladfabrik");

--@block

SELECT * FROM rooms;

--@block

SELECT * FROM users
INNER JOIN rooms
ON rooms.owner_id = users.id;

--@block

CREATE TABLE Bookings(
    id INT AUTO_INCREMENT,
    room_id INT NOT NULL,
    guest_id INT NOT NULL,
    check_in DATETIME,
    PRIMARY KEY (id),
    FOREIGN KEY (room_id) REFERENCES rooms(id),
    FOREIGN KEY (guest_id) REFERENCES users(id)
);

--@block

SELECT guest_id, street, check_in FROM bookings
INNER JOIN rooms ON rooms.owner_id = guest_id;