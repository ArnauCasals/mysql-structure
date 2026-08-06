USE spotify;


-- 1. Show all users

SELECT *
FROM Users;


-- 2. Show premium users with their subscriptions

SELECT
    u.username,
    u.email,
    s.start_date,
    s.renewal_date
FROM Users u
         JOIN Subscription s
              ON u.id_user = s.id_user;


-- 3. Show all songs with their albums and artists

SELECT
    s.title AS Song,
    a.title AS Album,
    ar.name AS Artist
FROM Song s
         JOIN Album a
              ON s.id_album = a.id_album
         JOIN Artist ar
              ON a.id_artist = ar.id_artist;


-- 4. Show the most played songs

SELECT
    title,
    play_count
FROM Song
ORDER BY play_count DESC;


-- 5. Show playlists created by users

SELECT
    u.username,
    p.title,
    p.creation_date,
    p.deleted
FROM Playlist p
         JOIN Users u
              ON p.id_user = u.id_user;


-- 6. Show artists followed by users

SELECT
    u.username,
    ar.name AS Artist
FROM User_Artist_Follow f
         JOIN Users u
              ON f.id_user = u.id_user
         JOIN Artist ar
              ON f.id_artist = ar.id_artist;


-- 7. Show favorite songs

SELECT
    u.username,
    s.title
FROM Favorite_Song f
         JOIN Users u
              ON f.id_user = u.id_user
         JOIN Song s
              ON f.id_song = s.id_song;


-- 8. Show payments made by premium users

SELECT
    u.username,
    p.order_number,
    p.total,
    p.payment_date
FROM Payment p
         JOIN Subscription s
              ON p.id_subscription = s.id_subscription
         JOIN Users u
              ON s.id_user = u.id_user;