Description
Ce projet consiste à concevoir une base de données pour la plateforme de streaming en direct Twitch.
Twitch permet aux joueurs de diffuser leurs parties en direct et de créer des communautés autour de leurs intérêts communs.
Notre base de données comprend environ 60 tables qui modélisent différents aspects du système.

Pour l'utiliser :
Avoir Myqsl installé localement.

Executer le sript :
- "twitch_mpd.sql" pour créer les tables et un utilisateur qui possède les droits complets sur les données dans cette bdd.

  Nom : admin MDP : 1234.
- "Full Insert Script.sql" pour inserer les données.
- "Requetes.sql" pour avoir des selects avec des jointures, des updates et des suppressions de données

Les fichiers "MCD projet twitch.png" et "MLD projet twitch.png" sont les images respectives du modèle conceptuel de données et du modèle logique de données.

- Le MCD à été fait sur draw.io puis exporté en png.
- Le MPD à été fait sur MysqlWorkbench puis exporté en png.
