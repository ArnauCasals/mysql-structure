USE spotify;


-- USERS

INSERT INTO Users
(email, password, username, birth_date, gender, country, postal_code, user_type)
VALUES
    ('arnau@gmail.com', '1234', 'Arnau', '1992-09-15', 'M', 'Spain', '08001', 'PREMIUM'),
    ('laura@gmail.com', '5678', 'Laura', '1995-05-20', 'F', 'Spain', '08002', 'FREE'),
    ('marc@gmail.com', 'abcd', 'Marc', '1990-03-10', 'M', 'France', '75001', 'PREMIUM');


-- ARTISTS

INSERT INTO Artist
(name, image)
VALUES
    ('Imagine Dragons', 'imagine_dragons.jpg'),
    ('Coldplay', 'coldplay.jpg'),
    ('Taylor Swift', 'taylor_swift.jpg');


-- ALBUMS

INSERT INTO Album
(id_artist, title, release_year, cover_image)
VALUES
    (1, 'Evolve', 2017, 'evolve.jpg'),
    (2, 'Music Of The Spheres', 2021, 'spheres.jpg'),
    (3, '1989', 2014, '1989.jpg');


-- SONGS

INSERT INTO Song
(id_album, title, duration, play_count)
VALUES
    (1, 'Believer', 204, 1000000),
    (1, 'Thunder', 187, 800000),
    (2, 'Higher Power', 211, 500000),
    (3, 'Blank Space', 231, 900000);


-- SUBSCRIPTION

INSERT INTO Subscription
(id_user, start_date, renewal_date)
VALUES
    (1, '2026-01-01', '2027-01-01'),
    (3, '2026-02-01', '2027-02-01');


-- PAYMENT

INSERT INTO Payment
(id_subscription, payment_date, order_number, total)
VALUES
    (1, '2026-01-01', 'ORDER001', 9.99),
    (2, '2026-02-01', 'ORDER002', 9.99);


-- CREDIT CARD

INSERT INTO Credit_Card
(id_subscription, card_number, expiration_month, expiration_year, security_code)
VALUES
    (1, '1234567890123456', 12, 2028, '123');


-- PAYPAL

INSERT INTO Paypal
(id_subscription, paypal_username)
VALUES
    (2, 'marc_paypal');


-- PLAYLISTS

INSERT INTO Playlist
(id_user, title, songs_number, creation_date, deleted, deleted_date)
VALUES
    (1, 'Gym Motivation', 2, '2026-01-10', FALSE, NULL),
    (1, 'Old songs', 1, '2026-02-15', TRUE, '2026-03-01'),
    (2, 'My favourites', 1, '2026-04-01', FALSE, NULL);


-- PLAYLIST SONG

INSERT INTO Playlist_Song
(id_playlist, id_song, added_by_user, added_date)
VALUES
    (1, 1, 1, '2026-01-10'),
    (1, 2, 1, '2026-01-10'),
    (3, 4, 2, '2026-04-01');


-- USER FOLLOWS ARTIST

INSERT INTO User_Artist_Follow
(id_user, id_artist, follow_date)
VALUES
    (1, 1, '2026-01-01'),
    (1, 2, '2026-01-02'),
    (2, 3, '2026-04-01');


-- ARTIST RELATION

INSERT INTO Artist_Relation
(id_artist, id_related_artist)
VALUES
    (1, 2),
    (2, 3);


-- FAVORITE ALBUM

INSERT INTO Favorite_Album
(id_user, id_album, favorite_date)
VALUES
    (1, 1, '2026-01-05'),
    (2, 3, '2026-04-02');


-- FAVORITE SONG

INSERT INTO Favorite_Song
(id_user, id_song, favorite_date)
VALUES
    (1, 1, '2026-01-05'),
    (3, 3, '2026-02-05');