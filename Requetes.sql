use twitch;

SELECT
    users.username,
    subs.*,
    follows.*,
    streams.title as title_of_streams,
    schedule.date as date_of_schedule,
    panels.description as description_of_pannel,
    chat.message as meesage_of_chat
FROM
    twitch.users
JOIN
    twitch.subs ON twitch.users.idusers = twitch.subs.users_idusers
JOIN
    twitch.follows ON twitch.users.idusers = twitch.follows.users_idusers
JOIN
    twitch.streams ON twitch.users.idusers = twitch.streams.users_idusers
JOIN
    twitch.schedule ON twitch.users.idusers = twitch.schedule.users_idusers
JOIN
    twitch.panels ON twitch.users.idusers = twitch.panels.users_idusers
JOIN
    twitch.chat ON twitch.users.idusers = twitch.chat.users_idusers;

SELECT
    users.username,
    chat.message as message_chat,
    chatBan.reason as reason_of_chatBan,
    chatBan.chat_idchat as chatBanned_id,
    twitchBan.*,
    connectionHistory.*,
    blockedUsers.*,
    directMessages.*
FROM
    twitch.users
JOIN
    twitch.chat ON twitch.users.idusers = twitch.chat.users_idusers
JOIN
    twitch.chatBan ON twitch.chatBan.chat_idchat = twitch.chat.idchat
JOIN   
    twitch.twitchBan ON twitch.twitchBan.users_idusers = twitch.users.idusers
JOIN
    twitch.connectionHistory ON twitch.connectionHistory.users_idusers = twitch.users.idusers
JOIN
    twitch.blockedUsers ON twitch.blockedUsers.users_idusers = twitch.users.idusers
JOIN
    twitch.directMessages ON twitch.directMessages.users_idusers = twitch.users.idusers;

SELECT
    streams.*,
    tags.nom as tags,
    categories.name as categories,
    language.language
FROM
    twitch.streams
JOIN
    twitch.tags_has_streams ON twitch.streams.idstreams = twitch.tags_has_streams.streams_idstreams
JOIN
    twitch.tags ON twitch.tags_has_streams.tags_idtags = twitch.tags.idtags
JOIN
    twitch.categories_has_tags ON twitch.tags.idtags = twitch.categories_has_tags.tags_idtags
JOIN
    twitch.categories ON twitch.categories_has_tags.categories_idcategories = twitch.categories.idcategories
JOIN
    twitch.language ON twitch.language.idlanguage = twitch.streams.language_idlanguage;

SELECT
    collection.*,
    highlights.name as highlights_name,
    streams.title as stream_title,
    uploads.title as uploads_title,
    users.username,
    earnings.*
FROM
    twitch.collection
JOIN
    twitch.highlights ON twitch.collection.highlights_idhighlights = twitch.highlights.idhighlights
JOIN
    twitch.streams ON twitch.collection.streams_idstreams = twitch.streams.idstreams
JOIN
    twitch.uploads ON twitch.collection.uploads_iduploads = twitch.uploads.iduploads
JOIN
    twitch.users ON twitch.collection.users_idusers = twitch.users.idusers
JOIN
    earnings ON twitch.users.idusers = twitch.earnings.users_idusers;

SELECT
    users.*,
    follows.users_idusers1 as currently_following,
    subs.users_idusers1 as currently_supporting,
    categories.name as currently_following_the_category,
    adsIncome.*,
    ads.*
FROM
    twitch.users
JOIN
    twitch.follows ON twitch.follows.users_idusers1 = twitch.users.idusers
JOIN
    twitch.subs ON twitch.subs.users_idusers1 = twitch.users.idusers
JOIN
    twitch.categories ON twitch.categories.idcategories = twitch.follows.categories_idcategories
JOIN
    twitch.adsIncome ON twitch.adsIncome.users_idusers = twitch.users.idusers
JOIN
    twitch.ads ON twitch.ads.users_idusers = twitch.users.idusers;

SELECT * FROM socialLinks;
ALTER TABLE `twitch`.`socialLinks`
ADD COLUMN `image` VARCHAR(300) NULL AFTER `link`;
SELECT * FROM socialLinks;

SELECT * FROM categories;
ALTER TABLE `twitch`.`categories`
ADD COLUMN `image` VARCHAR(300) NULL AFTER `name`;
SELECT * FROM categories;

SELECT * FROM uploads;
ALTER TABLE `twitch`.`uploads`
ADD COLUMN `description2` VARCHAR(300) NULL AFTER `description`;
SELECT * FROM uploads;

SELECT * FROM answers WHERE idanswers = 1;
UPDATE answers
SET votes = votes + 30
WHERE idanswers = 1;
SELECT * FROM answers WHERE idanswers = 1;

SELECT * FROM poll WHERE idpoll = 2;
UPDATE poll
SET title = 'Votre pire aliment jamais mangé'
WHERE idpoll = 2;
SELECT * FROM poll WHERE idpoll = 2;

SELECT * FROM language WHERE idlanguage = 5;
UPDATE language
SET language = 'Russian'
WHERE idlanguage = 5;
SELECT * FROM language WHERE idlanguage = 5;

SELECT * FROM emotes;
DELETE FROM emotes
WHERE idemotes = 3;
SELECT * FROM emotes;

SELECT * FROM subs;
DELETE FROM subs
WHERE idsubs = 1;
SELECT * FROM subs;

SELECT * FROM chat;
DELETE FROM chat 
WHERE idchat = 2;
SELECT * FROM chat;

SELECT * FROM chatBan;
DELETE FROM chatBan
WHERE idchatBan = 4;
SELECT * FROM chatBan;
