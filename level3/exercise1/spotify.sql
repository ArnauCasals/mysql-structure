CREATE DATABASE IF NOT EXISTS spotify;

USE spotify;


CREATE TABLE Users (
                       id_user INT AUTO_INCREMENT PRIMARY KEY,
                       email VARCHAR(100) UNIQUE,
                       password VARCHAR(100),
                       username VARCHAR(100),
                       birth_date DATE,
                       gender VARCHAR(20),
                       country VARCHAR(50),
                       postal_code VARCHAR(10),
                       user_type ENUM('FREE','PREMIUM')
);


CREATE TABLE Artist (
                        id_artist INT AUTO_INCREMENT PRIMARY KEY,
                        name VARCHAR(100),
                        image VARCHAR(255)
);


CREATE TABLE Album (
                       id_album INT AUTO_INCREMENT PRIMARY KEY,
                       id_artist INT,
                       title VARCHAR(100),
                       release_year YEAR,
                       cover_image VARCHAR(255),

                       FOREIGN KEY (id_artist) REFERENCES Artist(id_artist)
);


CREATE TABLE Song (
                      id_song INT AUTO_INCREMENT PRIMARY KEY,
                      id_album INT,
                      title VARCHAR(100),
                      duration INT,
                      play_count INT DEFAULT 0,

                      FOREIGN KEY (id_album) REFERENCES Album(id_album)
);


CREATE TABLE Subscription (
                              id_subscription INT AUTO_INCREMENT PRIMARY KEY,
                              id_user INT,
                              start_date DATE,
                              renewal_date DATE,

                              FOREIGN KEY (id_user) REFERENCES Users(id_user)
);


CREATE TABLE Payment (
                         id_payment INT AUTO_INCREMENT PRIMARY KEY,
                         id_subscription INT,
                         payment_date DATE,
                         order_number VARCHAR(100) UNIQUE,
                         total DECIMAL(10,2),

                         FOREIGN KEY (id_subscription) REFERENCES Subscription(id_subscription)
);


CREATE TABLE Credit_Card (
                             id_card INT AUTO_INCREMENT PRIMARY KEY,
                             id_subscription INT,
                             card_number VARCHAR(20),
                             expiration_month INT,
                             expiration_year INT,
                             security_code VARCHAR(10),

                             FOREIGN KEY (id_subscription) REFERENCES Subscription(id_subscription)
);


CREATE TABLE Paypal (
                        id_paypal INT AUTO_INCREMENT PRIMARY KEY,
                        id_subscription INT,
                        paypal_username VARCHAR(100),

                        FOREIGN KEY (id_subscription) REFERENCES Subscription(id_subscription)
);


CREATE TABLE Playlist (
                          id_playlist INT AUTO_INCREMENT PRIMARY KEY,
                          id_user INT,
                          title VARCHAR(100),
                          songs_number INT DEFAULT 0,
                          creation_date DATE,
                          deleted BOOLEAN DEFAULT FALSE,
                          deleted_date DATE,

                          FOREIGN KEY (id_user) REFERENCES Users(id_user)
);


CREATE TABLE Playlist_Song (
                               id_playlist INT,
                               id_song INT,
                               added_by_user INT,
                               added_date DATE,

                               PRIMARY KEY (id_playlist, id_song),

                               FOREIGN KEY (id_playlist) REFERENCES Playlist(id_playlist),
                               FOREIGN KEY (id_song) REFERENCES Song(id_song),
                               FOREIGN KEY (added_by_user) REFERENCES Users(id_user)
);


CREATE TABLE User_Artist_Follow (
                                    id_user INT,
                                    id_artist INT,
                                    follow_date DATE,

                                    PRIMARY KEY (id_user, id_artist),

                                    FOREIGN KEY (id_user) REFERENCES Users(id_user),
                                    FOREIGN KEY (id_artist) REFERENCES Artist(id_artist)
);


CREATE TABLE Artist_Relation (
                                 id_artist INT,
                                 id_related_artist INT,

                                 PRIMARY KEY (id_artist, id_related_artist),

                                 FOREIGN KEY (id_artist) REFERENCES Artist(id_artist),
                                 FOREIGN KEY (id_related_artist) REFERENCES Artist(id_artist)
);


CREATE TABLE Favorite_Album (
                                id_user INT,
                                id_album INT,
                                favorite_date DATE,

                                PRIMARY KEY (id_user, id_album),

                                FOREIGN KEY (id_user) REFERENCES Users(id_user),
                                FOREIGN KEY (id_album) REFERENCES Album(id_album)
);


CREATE TABLE Favorite_Song (
                               id_user INT,
                               id_song INT,
                               favorite_date DATE,

                               PRIMARY KEY (id_user, id_song),

                               FOREIGN KEY (id_user) REFERENCES Users(id_user),
                               FOREIGN KEY (id_song) REFERENCES Song(id_song)
);