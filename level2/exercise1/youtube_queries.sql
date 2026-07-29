USE youtube;


-- 1. List videos published by a specific user

SELECT Video.title, Video.upload_date
FROM Video
         JOIN `User`
              ON Video.id_user = `User`.id_user
WHERE `User`.username = 'arnaucs';


-- 2. List tags of a specific video

SELECT Tag.name AS tag
FROM Tag
         JOIN Video_Tag
              ON Tag.id_tag = Video_Tag.id_tag
         JOIN Video
              ON Video_Tag.id_video = Video.id_video
WHERE Video.title = 'Learning Java';


-- 3. Count subscribers of each channel

SELECT Channel.name AS channel,
       COUNT(Subscription.id_user) AS subscribers
FROM Channel
         LEFT JOIN Subscription
                   ON Channel.id_channel = Subscription.id_channel
GROUP BY Channel.id_channel;


-- 4. Users who liked a specific video

SELECT `User`.username
FROM `User`
         JOIN Video_Reaction
              ON `User`.id_user = Video_Reaction.id_user
         JOIN Video
              ON Video_Reaction.id_video = Video.id_video
WHERE Video.title = 'Learning Java'
  AND Video_Reaction.reaction = 'like';


-- 5. Comments of a specific video

SELECT `User`.username, Comment.text, Comment.comment_date
FROM Comment
         JOIN `User`
              ON Comment.id_user = `User`.id_user
         JOIN Video
              ON Comment.id_video = Video.id_video
WHERE Video.title = 'Learning Java';