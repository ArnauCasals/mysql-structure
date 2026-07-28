CREATE DATABASE IF NOT EXISTS youtube;

USE youtube;


CREATE TABLE User (
                      id_user INT AUTO_INCREMENT PRIMARY KEY,
                      email VARCHAR(100) UNIQUE,
                      password VARCHAR(100),
                      username VARCHAR(50) UNIQUE,
                      birth_date DATE,
                      gender VARCHAR(20),
                      country VARCHAR(50),
                      postal_code VARCHAR(10)
);


CREATE TABLE Video (
                       id_video INT AUTO_INCREMENT PRIMARY KEY,
                       title VARCHAR(100),
                       description TEXT,
                       size DECIMAL(10,2),
                       file_name VARCHAR(100),
                       duration INT,
                       thumbnail VARCHAR(255),
                       views INT DEFAULT 0,
                       likes INT DEFAULT 0,
                       dislikes INT DEFAULT 0,
                       status ENUM('public', 'hidden', 'private'),
                       upload_date DATETIME,
                       id_user INT,

                       FOREIGN KEY (id_user) REFERENCES User(id_user)
);


CREATE TABLE Tag (
                     id_tag INT AUTO_INCREMENT PRIMARY KEY,
                     name VARCHAR(50)
);


CREATE TABLE Video_Tag (
                           id_video INT,
                           id_tag INT,

                           PRIMARY KEY (id_video, id_tag),

                           FOREIGN KEY (id_video) REFERENCES Video(id_video),
                           FOREIGN KEY (id_tag) REFERENCES Tag(id_tag)
);


CREATE TABLE Channel (
                         id_channel INT AUTO_INCREMENT PRIMARY KEY,
                         name VARCHAR(100),
                         description TEXT,
                         creation_date DATE,
                         id_user INT,

                         FOREIGN KEY (id_user) REFERENCES User(id_user)
);


CREATE TABLE Subscription (
                              id_user INT,
                              id_channel INT,
                              subscription_date DATETIME,

                              PRIMARY KEY (id_user, id_channel),

                              FOREIGN KEY (id_user) REFERENCES User(id_user),
                              FOREIGN KEY (id_channel) REFERENCES Channel(id_channel)
);


CREATE TABLE Video_Reaction (
                                id_user INT,
                                id_video INT,
                                reaction ENUM('like', 'dislike'),
                                reaction_date DATETIME,

                                PRIMARY KEY (id_user, id_video),

                                FOREIGN KEY (id_user) REFERENCES User(id_user),
                                FOREIGN KEY (id_video) REFERENCES Video(id_video)
);


CREATE TABLE Playlist (
                          id_playlist INT AUTO_INCREMENT PRIMARY KEY,
                          name VARCHAR(100),
                          creation_date DATE,
                          status ENUM('public', 'private'),
                          id_user INT,

                          FOREIGN KEY (id_user) REFERENCES User(id_user)
);


CREATE TABLE Playlist_Video (
                                id_playlist INT,
                                id_video INT,

                                PRIMARY KEY (id_playlist, id_video),

                                FOREIGN KEY (id_playlist) REFERENCES Playlist(id_playlist),
                                FOREIGN KEY (id_video) REFERENCES Video(id_video)
);


CREATE TABLE Comment (
                         id_comment INT AUTO_INCREMENT PRIMARY KEY,
                         text TEXT,
                         comment_date DATETIME,
                         id_user INT,
                         id_video INT,

                         FOREIGN KEY (id_user) REFERENCES User(id_user),
                         FOREIGN KEY (id_video) REFERENCES Video(id_video)
);


CREATE TABLE Comment_Reaction (
                                  id_user INT,
                                  id_comment INT,
                                  reaction ENUM('like', 'dislike'),
                                  reaction_date DATETIME,

                                  PRIMARY KEY (id_user, id_comment),

                                  FOREIGN KEY (id_user) REFERENCES User(id_user),
                                  FOREIGN KEY (id_comment) REFERENCES Comment(id_comment)
);