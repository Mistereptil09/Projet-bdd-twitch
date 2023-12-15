use twitch;

INSERT INTO language (idlanguage, language)
VALUES
    (1, 'English'),
    (2, 'French'),
    (3, 'Spanish'),
    (4, 'German'),
    (5, 'Italian');

INSERT INTO users (idusers, username, displayName, bio, profileBanner, smartnotification, profilePicture, videoPlayerBanner, profileAccentColor, isLive, language_idlanguage)
VALUES 
    (1, 'john_billy', 'John_Billy232', 'Spreading good vibes and sipping coffee. Join the positive party!', 'banner1.jpg', true, 'profile1.jpg', true, 'Red', false, 1),
    (2, 'jane_tyson', 'Killer3', 'Casual gaming, awesome tunes, and the best pizza talk.', 'banner2.jpg', true, 'profile2.jpg', true, 'Green', true, 2),
    (3, 'bob_smith', 'iwantit2', "Gaming, tech, and cat cuddles. Let\'s level up together!", 'banner3.jpg', false, 'profile3.jpg', false, 'Blue', false, 3),
    (4, 'alice_jones', 'JIOP', 'Gaming tactics, bookworm adventures, and tea time chats.', 'banner4.jpg', true, 'profile4.jpg', false, 'Magenta', false, 4),
    (5, 'sam_wilson', 'roeot', "Leveling up in games and real life. Let\'s crush it together!", 'banner5.jpg', false, 'profile5.jpg', true, 'Yellow', true, 5),
    (6, 'lisa_miller', 'Lisa_M', 'Exploring the gaming world and sharing the adventure!', 'banner6.jpg', true, 'profile6.jpg', false, 'Purple', true, 1);

INSERT INTO channelfeedback(idchannelFeedback, feedback, users_idusers)
VALUES 
    (1, 'Great channel! Love the content.', 1),
    (2, 'Awesome streams, keep it up!', 2),
    (3, 'The music selection is fantastic!', 3),
    (4, 'I learned a lot from your tutorials.', 4),
    (5, 'Engaging and interactive stream!', 5),
    (6, 'Your are  hilarious!', 6);

INSERT INTO categoryFeedback(idcategoryFeedback, feedback, users_idusers)
VALUES
    (1, 'Excellent', 1),
    (2, 'Good', 2),
    (3, 'Average', 3),
    (4, 'Below Average', 4),
    (5, 'Poor', 5),
    (6, 'Needs Improvement', 6);

INSERT INTO videoFeedback (idvideoFeedback,feedback, users_idusers)
VALUES
    (1,'Great video!', 1),
    (2,'Awesome content!', 2),
    (3,'Needs improvement.', 3),
    (4,'Interesting topic.', 4),
    (5,'Well explained.', 5),
    (6,'Engaging presentation.', 6);


INSERT INTO privacy (idprivacy,users_idusers, storiesClipSharing, blockWhispers, blockGifts, hideBadge, hideSub, hideFounder)
VALUES
    (1,1, 1, 0, 1, 0, 0, 1),
    (2,2, 0, 1, 0, 1, 1, 0),
    (3,3, 1, 1, 1, 0, 0, 0),
    (4,4, 0, 0, 1, 1, 0, 1),
    (5,5, 1, 0, 0, 0, 1, 1),
    (6,6, 0, 1, 1, 1, 1, 0);

INSERT INTO socialLinks (idsocialLinks,linkTitle, link, users_idusers) 
VALUES
    (1,'Twitter', 'https://twitter.com', 1),
    (2,'Instagram', 'https://www.instagram.com', 2),
    (3,'YouTube', 'https://www.youtube.com/', 3),
    (4,'Facebook', 'https://www.facebook.com', 4),
    (5,'LinkedIn', 'https://www.linkedin.com', 5),
    (6,'Discord', 'https://www.discord.com', 6);

INSERT INTO earnings (idearnings, donations, subs, partnership, dateStart, dateEnd, users_idusers)
VALUES
  (1, 500.25, 1000.50, 750.75, '2023-01-01 00:00:00', '2023-01-31 23:59:59', 1),
  (2, 750.50, 1200.75, 900.25, '2023-02-01 00:00:00', '2023-02-28 23:59:59', 2),
  (3, 600.75, 950.25, 800.00, '2023-03-01 00:00:00', '2023-03-31 23:59:59', 3),
  (4, 900.00, 1500.00, 1200.50, '2023-04-01 00:00:00', '2023-04-30 23:59:59', 4),
  (5, 800.50, 1300.25, 1000.75, '2023-05-01 00:00:00', '2023-05-31 23:59:59', 5),
  (6, 850.75, 1400.50, 1100.25, '2023-06-01 00:00:00', '2023-06-30 23:59:59', 6);

INSERT INTO subs (idsubs,prime, dateStart, tier, currency, 
earnings_idearnings, users_idusers, users_idusers1) 
VALUES
    (1, 1, '2023-01-15', 1, 'USD', 1, 1, 1),
    (2, 0, '2023-02-20', 2, 'EUR', 2, 2, 2),
    (3, 1, '2023-03-10', 3, 'USD', 3, 3, 3),
    (4, 0, '2023-04-05', 1, 'EUR', 4, 4, 4),
    (5, 1, '2023-05-22', 2, 'USD', 5, 5, 5),
    (6, 0, '2023-06-18', 3, 'EUR', 6, 6, 6);

INSERT INTO highlights (idhighlights,users_idusers, video, name)
VALUES
    (1, 1, 'url/video1', 'Boss one shot !'),
    (2, 2, 'url/video2', 'Finally level 200 !'),
    (3, 3, 'url/video3', 'Beating the beat'),
    (4, 4, 'url/video4', 'classic music'),
    (5, 5, 'url/video5', 'how to become great at playing'),
    (6, 6, 'url/video6', 'trolled a player really hard');

INSERT INTO recommendedhighlights(highlights_idhighlights, users_idusers)
VALUES
  (1, 1),
  (2, 2),
  (3, 3),
  (4, 4),
  (5, 5),
  (6, 6);


INSERT INTO categories (idcategories, parent_id, name)
VALUES
    (1, null, 'Games'),
    (2, 1, 'Fortnite'),
    (3, 1, 'Fifa'),
    (4, null, 'Discuss'),
    (5, null, 'Drawing and illustration'),
    (6, null,'Music');

INSERT INTO notificationEmail (idnotificationEmail, live, streamTogether, pastBroadcasts, clips, events, chatMentions, userFollow, creator, moderationNeeds, giftsRewards, subEmails, streamStats, developerUpdates, recommendedLive, subs, marketing, stories, storiesReactions, sharedClips, users_idusers1)
VALUES
    (1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1),
    (2, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 1, 1, 0, 1, 1, 1, 2),
    (3, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 1, 0, 0, 3), 
    (4, 1, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 4),
    (5, 1, 1, 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 5),
    (6, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 6); 

INSERT INTO notificationPhone (idnotificationPhone,live, streamTogether, pastBroadcasts, clips, events, chatMentions, userFollow, creator, moderationNeeds, giftsRewards, subEmails, streamStats, developerUpdates, recommendedLive, subs, marketing, stories, storiesReactions, sharedClips, users_idusers1)
VALUES 
    (1,1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
    (2,1, 0, 1, 0, 1, 0, 1, 1, 0, 0, 1, 1, 1, 0, 1, 0, 1, 1, 0, 2),
    (3,0, 1, 0, 1, 1, 1, 1, 0, 1, 1, 0, 1, 1, 1, 0, 1, 1, 0, 1, 3),
    (4,1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 0, 1, 0, 1, 1, 1, 0, 1, 1, 4),
    (5,0, 0, 1, 1, 1, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 1, 1, 0, 1, 5),
    (6,1, 1, 1, 0, 1, 1, 1, 0, 1, 0, 1, 1, 0, 1, 1, 1, 0, 1, 1, 6);

INSERT INTO notificationTwitch (idnotificationTwitch,live, streamTogether, pastBroadcasts, clips, events, chatMentions, userFollow, creator, moderationNeeds, giftsRewards, subEmails, streamStats, developerUpdates, recommendedLive, subs, marketing, stories, storiesReactions, sharedClips, users_idusers1)
VALUES 
    (1,1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1),
    (2,1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 0, 1, 0, 1, 1, 2),
    (3,1, 1, 0, 1, 1, 1, 0, 1, 0, 1, 0, 1, 1, 1, 1, 0, 1, 1, 1, 3),
    (4,1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 0, 1, 4),
    (5,1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 1, 0, 1, 0, 1, 1, 1, 5),
    (6,0, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 0, 1, 0, 6);

INSERT INTO `cookiePreferences` (`idcookiePreferences`, `operationalCookie`, `analyticsCookie`, `advertisingCookies`, `users_idusers`, `amazon/Twitch`, `comScore`, `doubleVerify`, `google`, `integralAdScience`, `nielsen`, `salesforceDMP`, `branch`)
VALUES
    (1, 1, 1, 1, 1, 1, 0, 1, 1, 0, 1, 0, 1),
    (2, 1, 0, 1, 2, 1, 1, 0, 0, 1, 0, 1, 0),
    (3, 1, 1, 0, 3, 0, 1, 1, 1, 0, 0, 1, 1),
    (4, 1, 0, 0, 4, 0, 0, 0, 1, 1, 0, 0, 1),
    (5, 1, 1, 1, 5, 1, 1, 1, 1, 1, 1, 1, 1);


/*INSERT INTO connections*/
INSERT INTO connections(idconnections, amazon, steam, youtube, tiktok, X, riotGames, ubisoft, streamlabs, users_idusers)
VALUES
(1, 'John_Amazon', 'John_Steam', 'John_YouTube', 'John_TikTok', 'John_X', 'John_RiotGames', 'John_Ubisoft', 'John_Streamlabs', 1),
(2, 'Jane_Amazon', 'Jane_Steam', 'Jane_YouTube', 'Jane_TikTok', 'Jane_X', 'Jane_RiotGames', 'Jane_Ubisoft', 'Jane_Streamlabs', 2),
(3, 'Bob_Amazon', 'Bob_Steam', 'Bob_YouTube', 'Bob_TikTok', 'Bob_X', 'Bob_RiotGames', 'Bob_Ubisoft', 'Bob_Streamlabs', 3),
(4, 'Alice_Amazon', 'Alice_Steam', 'Alice_YouTube', 'Alice_TikTok', 'Alice_X', 'Alice_RiotGames', 'Alice_Ubisoft', 'Alice_Streamlabs', 4),
(5, 'Sam_Amazon', 'Sam_Steam', 'Sam_YouTube', 'Sam_TikTok', 'Sam_X', 'Sam_RiotGames', 'Sam_Ubisoft', 'Sam_Streamlabs', 5),
(6, 'Emily_Amazon', 'Emily_Steam', 'Emily_YouTube', 'Emily_TikTok', 'Emily_X', 'Emily_RiotGames', 'Emily_Ubisoft', 'Emily_Streamlabs', 6);

/*INSERT INTO externalConnections*/
INSERT INTO externalConnections (idexternalConnections, nom, email, users_idusers)
VALUES
(1, 'John', 'john@gmail.com', 1),
(2, 'Jane', 'jane@gmail.com', 2),
(3, 'Bob', 'bob@gmail.com', 3),
(4, 'Alice', 'alice@gmail.com', 4),
(5, 'Samuel', 'samuel@gmail.com', 5),
(6, 'Emily', 'emily@gmail.com', 6);


INSERT INTO tags (idtags,nom) 
VALUES
    (1,'Action'),
    (2,'Fortnite'),
    (3,'English'),
    (4,'Spanish'),
    (5,'Creative'),
    (6,'Esports');

INSERT into categories_has_tags(categories_idcategories, tags_idtags)
VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6);

INSERT INTO streams (idstreams, title, startTime, endTime, description, liveNotification, drugs, bets, adultGames, vulgarLanguage, sexualThemes, shockingContenent, redifusion, promotionalContent, rebroadcast, isLive, users_idusers, language_idlanguage) VALUES
(1, 'Playing all games on steam', '2023-12-05 18:00:00', '2023-12-05 22:00:00', 'Join me for a gaming session!', 'https://twitch.tv/gamer123', 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 1, 1),
(2, 'Art Showcase', '2023-12-06 14:00:00', '2023-12-06 16:00:00', 'Showcasing my latest art creations.', 'https://twitch.tv/artist456', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 2),
(3, 'Cooking Stream', '2023-12-07 19:30:00', '2023-12-07 21:30:00', 'Cooking up some delicious recipes!', 'https://twitch.tv/chef789', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 3, 3),
(4, 'Tech Talk', '2023-12-08 17:00:00', '2023-12-08 19:00:00', 'Discussing the latest in technology.', 'https://twitch.tv/techie101', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 4, 4),
(5, 'Music Jam', '2023-12-09 20:00:00', '2023-12-09 22:00:00', 'Playing some tunes and taking song requests.', 'https://twitch.tv/musician789', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 5, 5),
(6, 'Fitness Workout', '2023-12-10 12:00:00', '2023-12-10 13:30:00', 'Join me for a live fitness workout session!', 'https://twitch.tv/fitstreamer', 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 6, 5);

INSERT INTO uploads (iduploads, users_idusers, video, title, description, duration)
VALUES 
  (1, 1, 'url/video1', 'Awesome Gameplay', 'Check out my amazing gaming skills!', 15.5),
  (2, 2, 'url/video2', 'Epic Moments', 'Highlight reel of my best gaming moments!', 12.8),
  (3, 3, 'url/video3', 'FIFA Skills', 'Showcasing my top FIFA skills and goals!', 8.2),
  (4, 4, 'url/video4', 'GTA V Marathon', 'Two days of non-stop GTA V action!', 32.0),
  (5, 5, 'url/video5', 'Chill Stream', 'Come hang out and chill with us!', 22.5),
  (6, 6, 'url/video6', 'Music Jam Session', 'Playing some tunes and taking song requests!', 18.3);

INSERT INTO tags_has_streams (tags_idtags, streams_idstreams) 
VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6);

INSERT INTO schedule (idschedule,date, title, duration, startTimeSchedule, skipOnce, monday, tuesday, wednesday, thursday, friday, saturday, sunday, holidays, users_idusers) 
VALUES
    (1,'2023-12-10', 'Fortnite with the boys', 3.5, '2023-12-10 18:00:00', 0, 1, 0, 1, 1, 0, 0, 0, 0, 1),
    (2,'2023-12-12', 'Tech Talk', 2.0, '2023-12-12 20:00:00', 0, 0, 1, 0, 0, 1, 0, 0, 0, 2),
    (3,'2023-12-15', 'online party', 4.0, '2023-12-15 15:30:00', 0, 0, 0, 0, 1, 0, 1, 0, 0, 3),
    (4,'2023-12-18', 'Fitness Workout', 1.5, '2023-12-18 12:00:00', 0, 0, 0, 0, 0, 1, 0, 1, 0, 4),
    (5,'2023-12-20', 'Playing fifa', 2.5, '2023-12-20 19:30:00', 0, 1, 1, 0, 0, 0, 0, 0, 0, 5),
    (6,'2023-12-25', 'Testing the new spiderman', 3.0, '2023-12-25 14:00:00', 1, 0, 0, 0, 0, 0, 0, 0, 1, 6);

INSERT INTO extensions (idextensions,channels_idChaines, channels_users_idusers, extensionName, users_idusers)
VALUES
    (1,1, 1, 'Streamlabs', 1),
    (2,2, 2, 'Bits Leaderboard', 2),
    (3,3, 3, 'StreamElements', 3),
    (4,4, 4, 'Sound Alerts', 4),
    (5,5, 5, 'Twitch Sings Extension', 5),
    (6,6, 6, 'Schedule Extension', 6);

INSERT INTO panels (idpanels,panelTitle, imageLink, description, image, users_idusers)
VALUES
    (1,'About Me', 'about_me_image_link.png', 'Learn more about me and my streaming journey!', 'about_me_panel_image.png', 1),
    (2,'Social Media', 'social_media_image_link.png', 'Follow me on Twitter, Instagram, and join our Discord community!', 'social_media_panel_image.png', 2),
    (3,'Donations', 'donations_image_link.png', 'Support the stream by making a donation. Every contribution is appreciated!', 'donations_panel_image.png', 3),
    (4,'Schedule', 'schedule_image_link.png', 'Check out my streaming schedule to know when I go live!', 'schedule_panel_image.png', 4),
    (5,'FAQ', 'faq_image_link.png', 'Find answers to frequently asked questions about the channel and community.', 'faq_panel_image.png', 5),
    (6,'Merchandise', 'merchandise_image_link.png', 'Explore exclusive merchandise and represent the channel!', 'merchandise_panel_image.png', 6);

INSERT INTO emotes (idemotes,img, name, users_idusers)
VALUES
    (1,'emote1.jpg', 'Residentslepper', 1),
    (2,'emote2.png', 'Heyguys', 2),
    (3,'emote3.gif', 'Lul', 3),
    (4,'emote4.jpg', 'Kappa', 4),
    (5,'emote5.png', 'Pogchamp', 5),
    (6,'emote6.gif', 'SeemsGood', 6);

INSERT INTO chat (idchat, message, users_idusers, emotes_idemotes)
VALUES
    (1, 'Hello, everyone!', 1, 1),
    (2, 'What game are we playing today?', 2, 2),
    (3, 'I just reached level 50!', 3, 3),
    (4, 'you are soo bad at this game', 4, 4),
    (5, 'Does anyone have tips for this boss?', 5, 5);

INSERT INTO ChatStatistics (idChatStatistics, averageConversation, largestNumberMessages, smallestNumberMessages, users_idusers)
VALUES
    (1, 5.3, 10, 2, 1),
    (2, 8.2, 15, 4, 2),
    (3, 6.5, 12, 3, 3),
    (4, 7.1, 18, 5, 4),
    (5, 9.0, 20, 1, 5);

INSERT INTO viewersFromRaid (idviewersFromRaid,average, largest, smallest, analytics_idanalytics, analytics_users_idusers, users_idusers)
VALUES 
    (1,100, 150, 80, 1, 1, 1),
    (2,120, 180, 90, 2, 2, 2),
    (3,90, 130, 70, 3, 3, 3),
    (4,110, 160, 85, 4, 4, 4),
    (5,95, 140, 75, 5, 5, 5),
    (6,105, 170, 88, 6, 6, 6);

INSERT INTO timeStreaming (idtimeStreaming,average, smallest, largest, users_idusers)
VALUES
    (1,120, 90, 150, 1),
    (2,100, 80, 130, 2),
    (3,140, 110, 170, 3),
    (4,90, 70, 120, 4),
    (5,110, 85, 140, 5),
    (6,130, 100, 160, 6);

INSERT INTO follows (idfollows, users_idusers, users_idusers1, categories_idcategories, date)
VALUES
    (1, 1, 1, 1, '2023-12-01 08:00:00'),
    (2, 2, 2, 2, '2023-12-02 10:30:00'),
    (3, 3, 3, 3, '2023-12-03 12:45:00'),
    (4, 4, 4, 4, '2023-12-04 14:15:00'),
    (5, 5,5, 5, '2023-12-05 16:30:00'),
    (6, 6, 6, 6, '2023-12-06 18:45:00');

INSERT INTO newFollowers (idnewFollowers,users_idusers, lastMonth, lastWeek, lastYear, follows_idfollows)
VALUES 
    (1,1, 50, 20, 200, 1),
    (2,2, 30, 10, 150, 2),
    (3,3, 45, 15, 180, 3),
    (4,4, 60, 25, 220, 4),
    (5,5, 40, 18, 170, 5),
    (6,6,70,20,300,6);

INSERT INTO adsviews (idadsViews, lastMonth, lastWeek, lastYear, users_idusers)
VALUES
    (1, 1000, 250, 5000, 1),
    (2, 2000, 500, 10000, 2),
    (3, 1500, 375, 7500, 3),
    (4, 3000, 750, 15000, 4),
    (5, 2500, 625, 12500, 5),
    (6, 1200, 300, 6000, 6);

INSERT INTO numberfollowers(idnumberFollowers, largest, average, smallest, users_idusers)
VALUES
  (1, 5000, 2500, 1000, 1),
  (2, 10000, 5000, 2000, 2),
  (3, 7500, 3750, 1500, 3),
  (4, 15000, 7500, 3000, 4),
  (5, 12500, 6250, 2500, 5),
  (6, 20000, 10000, 5000, 6);


INSERT INTO subsStats (idsubsStats,largest, average, smallest, users_idusers) 
VALUES
    (1,50, 25, 10, 1),
    (2,65, 30, 15, 2),
    (3,45, 20, 8, 3),
    (4,55, 28, 12, 4),
    (5,60, 26, 14, 5),
    (6,70, 35, 18, 6);

INSERT INTO users_has_uploads (users_idusers, uploads_iduploads, uploads_users_idusers)
VALUES
    (1, 1, 1),
    (2, 2, 2),
    (3, 3, 3),
    (4, 4, 4),
    (5, 5, 5),
    (6, 6, 6);


INSERT INTO users_has_streams (users_idusers, streams_idstreams, streams_users_idusers)
VALUES
    (1, 1, 1),
    (2, 2, 2),
    (3, 3, 3),
    (4, 4, 4),
    (5, 5, 5),
    (6, 6, 6);

INSERT INTO  users_has_highlights (users_idusers, highlights_idhighlights, highlights_users_idusers)
VALUES
    (1, 1, 1),
    (2, 2, 2),
    (3, 3, 3),
    (4, 4, 4),
    (5, 5, 5),
    (6, 6, 6);

INSERT INTO poll (idpoll, title, chat_idchat)
VALUES 
    (1, 'Favorite Color', 1),
    (2, 'Favorite Food', 2),
    (3, 'Favorite Movie', 3),
    (4, 'Favorite Book', 4),
    (5, 'Favorite Song', 5),
    (6, 'Best Travel Destination', 1);

INSERT INTO answers (idanswers, answers, votes, poll_idpoll)
VALUES
    (1, 'Blue', 20, 1),
    (2, 'Yellow', 10, 1),
    (6, 'Pizza', 25, 2),
    (7, 'Donuts', 12, 2),
    (13, 'The Dark Knight', 15, 3),
    (14, 'Avatar', 5, 3),
    (19, 'Harry Potter and the Sorcerer''s Stone', 8, 4),
    (20, 'One punch Man', 15, 4),
    (24, 'Imagine', 10, 5),
    (25, 'Believer', 30, 5),
    (31, 'Paris', 18, 6),
    (32, 'Tokyo', 13, 6);

INSERT INTO badges (idbadges, img, subs_idsubs)
VALUES 
    (1, 'Crown Badge.png', 1),
    (2, 'checkmarkbadge.png', 1),
    (3, 'swordbadge.png', 1),
    (4, 'broadcasttowerbadge.png', 1),
    (5, 'subscriberbadge.png', 1),
    (6, 'starbadge.png', 1);


INSERT INTO  users_has_badges(users_idusers, badges_idbadges)
VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6);

INSERT INTO collection (idcollection, streams_idstreams, uploads_iduploads, highlights_idhighlights, users_idusers, title, img)
VALUES
    (1, 1, 1, 1, 1, 'Come to play fortnite with us', 'img1.png'),
    (2, 2, 2, 2, 2, 'League of Legends all night long!', 'img2.png'),
    (3, 3, 3, 3, 3, 'Raging on fifa', 'collection_img3.png'),
    (4, 4, 4, 4, 4, '2 days streaming gta V without stop', 'img4.png'),
    (5, 5, 5, 5, 5, 'Comme chill with us!', 'img5.png');

INSERT INTO reaction (idreaction,reaction, img, date, streams_idstreams, users_idusers)
VALUES
    (1, 'Hype', 'hype.png', '2023-12-01 08:00:00', 1, 1),
    (2, 'Love', 'love.png', '2023-12-01 09:30:00', 2, 2),
    (3, 'Funny', 'funny.png', '2023-12-01 11:15:00', 3, 3),
    (4, 'Wow', 'wow.png', '2023-12-01 13:45:00', 4, 4),
    (5, 'What', 'what.png', '2023-12-01 15:20:00', 5, 5),
    (6, 'Oh no!', 'Ohno.png', '2023-12-01 17:00:00', 6, 6);

INSERT INTO hypechat (idhypechat,amount, message, currency, earnings_idearnings, users_idusers)
VALUES
    (1, 50.0, 'Great stream!', 'USD', 1, 1),
    (2, 25.0, 'Loving the content!', 'euros', 2, 2),
    (3, 30.0, "Keep it up!", 'USD', 3, 3),
    (4, 40.0, "You're amazing!", 'USD', 4, 4),
    (5, 20.0, 'Best stream ever!', 'euros', 5, 5),
    (6, 35.0, 'Enjoying every moment!', 'USD', 6, 6);   

INSERT INTO adsincome (idadsIncome, users_idusers, earnings_idearnings, amount)
VALUES 
    (1, 1, 1, 1000.00),
    (2, 2, 2, 2000.00),
    (3, 3, 3, 1500.00),
    (4, 4, 4, 3000.00),
    (5, 5, 5, 2500.00),
    (6, 6, 6, 2500.00);

INSERT INTO ads (idads ,adsIncome_idadsIncome, users_idusers, url, duration)
VALUES
    (1, 1, 1, 'http://nike.com', '2023-12-04 12:30:00'),
    (2, 2, 2, 'http://adidas.com', '2023-12-04 13:45:00'),
    (3, 3, 3, 'http://spotify.com', '2023-12-04 14:15:00'),
    (4, 4, 4, 'http://dior.com', '2023-12-04 15:00:00'),
    (5, 5, 5, 'http://asus.com', '2023-12-04 16:20:00'),
    (6, 6, 6, 'http://newbalance.com', '2021-14-06 20:23:00');


INSERT INTO directMessages (iddirectMessages, message, users_idusers, users_idusers1)
VALUES
    (1, 'Hey, how are you?', 1, 2),
    (2, "I'm doing great, thanks!", 2, 1),
    (3, 'What are you up to today?', 3, 4),
    (4, 'Just working on some projects.', 4, 5),
    (5, 'Do you want to grab lunch later?', 5, 1);

INSERT INTO report (idreport, problem, reason, description, users_idusers, users_idusers1)
VALUES
    (1, 'Chat Misconduct', 'Harassment', 'Report of a user engaging in harassing behavior in the chat. Include inappropriate language and personal attacks.', 1, 1),
    (2, 'Fraudulent Activity', 'fraud', 'Report of a user engaging in fraudulent activity, attempting to deceive others for financial gain or personal information',2,2),
    (3, 'Content Violation', 'Copyright Infringement', 'Report of a channel streaming copyrighted content without permission.', 3,3),
    (4, 'Hateful Behavior', 'offensive language', 'Report of a user exhibiting hateful behavior, including offensive language', 4, 4),
    (5, 'Malicious Links,spam or bots', 'malicious links', 'Report of a user sharing links that are potentially harmful or contain malicious content.', 5, 5),
    (6, 'Inappropriate Content', 'Violating Guidelines', 'Report of inappropriate content in the stream.', 6, 6);

INSERT INTO chatBan (idchatBan, chat_idchat, users_idusers, start, reason, end)
VALUES
    (1, 1, 2, '2023-12-01 15:00:00', 'Spamming chat', '2023-12-02 15:00:00'),
    (2, 2, 3, '2023-12-03 18:30:00', 'Inappropriate language', '2023-12-05 18:30:00'),
    (3, 3, 2, '2023-12-04 12:00:00', 'Harassment', '2023-12-06 12:00:00'),
    (4, 4, 2, '2023-12-02 20:45:00', 'Violating community guidelines', '2023-12-04 20:45:00'),
    (5, 5, 1, '2023-12-01 09:15:00', 'Spreading misinformation', '2023-12-03 09:15:00');

INSERT INTO twitchban(idtwitchBan, start, end, reason, users_idusers)
VALUES
    (1, '2023-12-01 10:00:00', '2023-12-02 10:00:00', 'Violating community guidelines', 1),
    (2, '2023-12-03 12:30:00', '2023-12-05 12:30:00', 'Inappropriate behavior', 2),
    (3, '2023-12-04 15:00:00', '2023-12-06 15:00:00', 'Spamming chat', 3),
    (4, '2023-12-02 18:45:00', '2023-12-04 18:45:00', 'Harassment', 4),
    (5, '2023-12-01 08:15:00', '2023-12-03 08:15:00', 'Harassement', 5),
    (6, '2023-12-05 20:00:00', '2023-12-07 20:00:00', 'Unauthorized content', 6);

INSERT INTO bits (idbits, amount, conversionCost, currency, users_idusers, chat_idchat)
VALUES 
    (1, 1000.5, 50.25, 'USD', 1, 5),
    (2, 500.75, 25.1, 'euros',2, 1),
    (3, 250.25, 12.5, 'euros', 3, 4),
    (4, 100.0, 5.0, 'euros', 4, 2),
    (5, 50.5, 2.5, 'USD', 5, 1),
    (6, 75.25, 3.75, 'USD', 6, 5);

INSERT INTO viewerHistory (idviewerHistory, users_idusers, streams_idstreams, highlights_idhighlights, uploads_iduploads)
VALUES
    (1, 1, 1, 1, 1),
    (2, 2, 2, 2, 2),
    (3, 3, 3, 3, 3),
    (4, 4, 4, 4, 4),
    (5, 5, 5, 5, 5),
    (6, 6, 6, 6, 6);

INSERT INTO drops (iddrops, externalConnections_idexternalConnections, users_idusers, partner, startDate, endDate)
VALUES
    (1, 1, 1, 'Amazon', '2023-12-01 10:00:00', '2023-12-01 12:00:00'),
    (2, 2, 2, 'Asus', '2023-12-02 15:30:00', '2023-12-02 18:00:00'),
    (3, 3, 3, 'Nvidia', '2023-12-03 12:45:00', '2023-12-03 14:30:00'),
    (4, 4, 4, 'Adidas', '2023-12-04 08:00:00', '2023-12-04 10:30:00'),
    (5, 5, 5, 'Epic Games', '2023-12-05 16:00:00', '2023-12-05 18:45:00'),
    (6, 6, 6, 'Apple', '2023-12-06 14:00:00', '2023-12-06 16:30:00');

INSERT INTO rewards (idrewards,reward, img, viewTime, streams_idstreams, categories_idcategories, drops_iddrops)
VALUES 
    (1,'Exclusive Emote', 'emote_image.png', '01:00:00', 1, 1, 1),
    (2,'Custom Chat Badge', 'badge_image.png', '02:00:00', 2, 2, 2),
    (3,'Shoutout', 'shoutout_image.png', '00:30:00', 3, 3, 3),
    (4,'Access to Subscriber-Only Discord Channel', 'discord_image.png', '01:30:00', 4, 4, 4),
    (5,'Game Key Giveaway', 'game_key_image.png', '01:00:00', 5, 5, 5),
    (6,'Behind-the-Scenes Content', 'behind_the_scenes_image.png', '00:45:00', 6, 6, 6);
    
    INSERT INTO connectionhistory (idconnectionHistory, date, systemConnected, localisation, users_idusers)
VALUES
  (1, '2023-12-01 08:30:00', 'smartphone', 'New York', 1),
  (2, '2023-12-02 10:45:00', 'smartphone', 'Los Angeles', 2),
  (3, '2023-12-03 12:15:00', 'laptop', 'Chicago', 3),
  (4, '2023-12-04 14:30:00', 'tablet', 'Miami', 4),
  (5, '2023-12-05 16:45:00', 'smartphone', 'San Francisco', 5),
  (6, '2023-12-06 18:00:00', 'laptop', 'Paris', 6);
    
INSERT INTO recommendedchannels(users_idusers, users_idusers1)
VALUES
  (1, 2),
  (2, 2),
  (3, 3),
  (4, 4),
  (5, 5),
  (6, 6);

    
INSERT INTO blockedUsers (idblockedUsers, users_idusers, date, users_idusers1)
VALUES
    (1, 1, '2021-12-01 10:30:00', 2),
    (2, 2, '2022-12-02 15:45:00', 4),
    (3, 3, '2023-12-03 12:20:00', 1),
    (4, 4, '2023-12-04 18:00:00', 6),
    (5, 5, '2020-12-05 09:10:00', 3),
    (6, 6, '2020-12-02 09:10:00', 5);

INSERT INTO roles (idroles ,users_idusers, chat_idchat, name) 
VALUES
    (1,1, 1, 'Moderator'),
    (2,2, 2, 'Viewer'),
    (3,3, 3, 'Subscriber'),
    (4,4, 4, 'Viewer'),
    (5,5, 5, 'Admin'),
    (6,6, 3, 'Viewer');

INSERT INTO twitchPartners (idtwitchPartners, date, status, users_idusers)
VALUES
  (1, '2023-12-01 12:30:00', 'Active', 1),
  (2, '2023-12-02 14:45:00', 'Active', 2),
  (3, '2023-12-03 16:15:00', 'Inactive', 3),
  (4, '2023-12-04 18:00:00', 'Active', 4),
  (5, '2023-12-05 20:20:00', 'Inactive', 5),
  (6, '2023-12-06 22:23:00', 'Active', 6);

INSERT INTO numberTwitchPartners ( idnumberTwitchPartners,lastMonth, lastYear, lastWeek, users_idusers)
VALUES 
    (1,100, 1200, 30, 1),
    (2,150, 1800, 40, 2),
    (3,80, 950, 25, 3),
    (4,200, 2400, 50, 4),
    (5,120, 1500, 35, 5),
    (6,90, 1200, 28, 6);