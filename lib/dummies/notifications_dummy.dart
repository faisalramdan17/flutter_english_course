final notificationsJSON = [..._systemsJSON, ..._messagesJSON];

final _systemsJSON = [
  {
    "id": 1,
    "title": "Privacy Policy",
    "body": "Can be viewed in the user...",
    "type": "common",
    "isRead": false,
    "createdAt": DateTime.now().subtract(const Duration(days: 1)).toIso8601String(),
  },
  {
    "id": 2,
    "title": "Update",
    "body": "New version has been...",
    "type": "update",
    "isRead": false,
    "createdAt": DateTime.now().subtract(const Duration(days: 5)).toIso8601String(),
  },
  {
    "id": 3,
    "title": "My Collection",
    "body": "Your favorite courses are...",
    "type": "collection",
    "isRead": true,
    "createdAt": DateTime.now().subtract(const Duration(days: 10)).toIso8601String(),
  }
];

final _messagesJSON = [
  {
    "id": 4,
    "avatarURL": "https://miro.medium.com/fit/c/176/176/0*ZnEsHgycZzlyaPIJ.jpg",
    "title": "Faisal Ramdan",
    "body": "Courses mainly include...",
    "type": "message",
    "isRead": false,
    "createdAt": DateTime.now().subtract(const Duration(days: 1)).toIso8601String(),
  },
  {
    "id": 5,
    "avatarURL": "https://thumb.viva.co.id/media/frontend/tokoh/2017/04/04/58e35612d96bf-chelsea-islan_216_287.jpg",
    "title": "Hanna Rose",
    "body": "There will be live class...",
    "type": "message",
    "isRead": false,
    "createdAt": DateTime.now().subtract(const Duration(days: 5)).toIso8601String(),
  },
  {
    "id": 6,
    "avatarURL":
        "https://resize.programme-television.ladmedia.fr/r/670,670/img/var/premiere/storage/images/tele-7-jours/news-tv/cristiano-ronaldo-libere-de-son-contrat-avec-le-manchester-united-il-reagit-4697489/101210205-1-fre-FR/Cristiano-Ronaldo-libere-de-son-contrat-avec-le-Manchester-United-il-reagit.jpg",
    "title": "Tony Thomson",
    "body": "Study materials will be...",
    "type": "message",
    "isRead": true,
    "createdAt": DateTime.now().subtract(const Duration(days: 10)).toIso8601String(),
  },
  {
    "id": 7,
    "avatarURL":
        "https://upload.wikimedia.org/wikipedia/commons/thumb/1/18/Mark_Zuckerberg_F8_2019_Keynote_%2832830578717%29_%28cropped%29.jpg/220px-Mark_Zuckerberg_F8_2019_Keynote_%2832830578717%29_%28cropped%29.jpg",
    "title": "Andrey Nicola",
    "body": "There will be next",
    "type": "message",
    "isRead": true,
    "createdAt": DateTime.now().subtract(const Duration(days: 10)).toIso8601String(),
  }
];
