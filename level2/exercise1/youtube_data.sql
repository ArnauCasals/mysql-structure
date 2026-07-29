USE youtube;


-- Users

INSERT INTO `User`
(email, password, username, birth_date, gender, country, postal_code)
VALUES
    ('arnau@gmail.com', '1234', 'arnaucs', '1992-09-15', 'male', 'Spain', '08012'),
    ('maria@gmail.com', '5678', 'maria92', '1992-05-20', 'female', 'Spain', '08001');


-- Channels

INSERT INTO Channel
(name, description, creation_date, id_user)
VALUES
    ('Arnau Channel', 'Technology and programming videos', '2026-01-10', 1),
    ('Maria Channel', 'Cooking videos', '2026-02-15', 2);


-- Videos

INSERT INTO Video
(title, description, size, file_name, duration, thumbnail, views, likes, dislikes, status, upload_date, id_user)
VALUES
    ('Learning Java', 'Java programming tutorial', 250.50, 'java.mp4', 600, 'java.png', 150, 20, 2, 'public', '2026-03-01 10:00:00', 1),
    ('Pizza Recipe', 'How to make homemade pizza', 300.00, 'pizza.mp4', 480, 'pizza.png', 200, 35, 1, 'public', '2026-03-05 18:00:00', 2);


-- Tags

INSERT INTO Tag
(name)
VALUES
    ('Java'),
    ('Programming'),
    ('Cooking');


-- Video Tags

INSERT INTO Video_Tag
(id_video, id_tag)
VALUES
    (1, 1),
    (1, 2),
    (2, 3);


-- Subscriptions

INSERT INTO Subscription
(id_user, id_channel, subscription_date)
VALUES
    (2, 1, '2026-03-10 12:00:00'),
    (1, 2, '2026-03-11 13:00:00');


-- Video reactions

INSERT INTO Video_Reaction
(id_user, id_video, reaction, reaction_date)
VALUES
    (2, 1, 'like', '2026-03-12 14:00:00'),
    (1, 2, 'like', '2026-03-13 15:00:00');


-- Playlists

INSERT INTO Playlist
(name, creation_date, status, id_user)
VALUES
    ('My Programming Videos', '2026-03-15', 'public', 1),
    ('My Favorites', '2026-03-16', 'private', 2);


-- Playlist Videos

INSERT INTO Playlist_Video
(id_playlist, id_video)
VALUES
    (1, 1),
    (2, 2);


-- Comments

INSERT INTO Comment
(text, comment_date, id_user, id_video)
VALUES
    ('Very useful tutorial!', '2026-03-20 10:30:00', 2, 1),
    ('Great recipe!', '2026-03-21 11:00:00', 1, 2);


-- Comment reactions

INSERT INTO Comment_Reaction
(id_user, id_comment, reaction, reaction_date)
VALUES
    (1, 1, 'like', '2026-03-22 12:00:00'),
    (2, 2, 'like', '2026-03-23 13:00:00');