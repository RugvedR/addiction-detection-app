class DataManager {
  static const String csvString = '''App name,Date,Time,Duration,Category,Person
Swiggy,16/04/2024,10:53:58 pm,0:00:35,Internet Browsing,1
Zomato,16/04/2024,10:53:25 pm,0:00:02,Internet Browsing,1
Truecaller,16/04/2024,10:53:23 pm,0:00:02,Other,1
Zomato,16/04/2024,10:53:22 pm,0:00:01,Internet Browsing,1
Phone,16/04/2024,10:53:19 pm,0:00:03,Other,1
Phone,16/04/2024,10:53:04 pm,0:00:01,Other,1
Zomato,16/04/2024,10:52:39 pm,0:00:24,Internet Browsing,1
Phone,16/04/2024,10:52:35 pm,0:00:01,Other,1
Truecaller,16/04/2024,10:52:31 pm,0:00:00,Other,1
Truecaller,16/04/2024,10:45:30 pm,0:00:00,Other,1
Phone,16/04/2024,10:45:25 pm,0:00:03,Other,1
Phone,16/04/2024,10:44:24 pm,0:00:15,Other,1
Phone,16/04/2024,10:36:17 pm,0:00:00,Other,1
Swiggy,16/04/2024,10:36:06 pm,0:00:00,Internet Browsing,1
Zomato,16/04/2024,10:35:31 pm,0:00:01,Internet Browsing,1
Swiggy,16/04/2024,10:33:48 pm,0:00:37,Internet Browsing,1
Snapchat,16/04/2024,10:33:46 pm,0:00:00,Social Media,1
Phone,16/04/2024,10:33:31 pm,0:00:00,Other,1
Truecaller,16/04/2024,10:33:27 pm,0:00:04,Other,1
Truecaller,16/04/2024,9:35:54 pm,0:00:00,Other,1
Phone,16/04/2024,9:35:32 pm,0:00:18,Other,1
Phone,16/04/2024,9:35:22 pm,0:00:04,Other,1
Phone,16/04/2024,9:35:13 pm,0:00:00,Other,1
Phone,16/04/2024,9:35:10 pm,0:00:00,Other,1
Phone,16/04/2024,9:34:56 pm,0:00:01,Other,1
Phone,16/04/2024,9:34:40 pm,0:00:15,Other,1
Truecaller,16/04/2024,9:34:33 pm,0:00:08,Other,1
Truecaller,16/04/2024,9:29:59 pm,0:00:00,Other,1
Phone,16/04/2024,9:29:51 pm,0:00:08,Other,1
Phone,16/04/2024,9:21:26 pm,0:01:18,Other,1
Truecaller,16/04/2024,9:21:22 pm,0:00:02,Other,1
Truecaller,16/04/2024,9:02:23 pm,0:00:00,Other,1
Phone,16/04/2024,9:02:17 pm,0:00:03,Other,1
Phone,16/04/2024,9:01:38 pm,0:00:01,Other,1
Phone,16/04/2024,9:01:27 pm,0:00:05,Other,1
Phone,16/04/2024,8:59:41 pm,0:00:03,Other,1
Phone,16/04/2024,8:56:08 pm,0:00:17,Other,1
Instagram,16/04/2024,8:40:20 pm,0:02:20,Social Media,1
Gmail,16/04/2024,8:37:31 pm,0:00:09,Productivity,1
Instagram,16/04/2024,8:33:13 pm,0:00:10,Social Media,1
Gmail,16/04/2024,8:32:48 pm,0:00:23,Productivity,1
Gmail,16/04/2024,8:30:24 pm,0:02:14,Productivity,1
WhatsApp,16/04/2024,8:17:32 pm,0:00:38,Social Media,1
Gmail,16/04/2024,8:12:21 pm,0:00:00,Productivity,1
Truecaller,16/04/2024,8:12:14 pm,0:00:04,Other,1
Gmail,16/04/2024,8:11:59 pm,0:00:14,Productivity,1
Phone,16/04/2024,8:11:50 pm,0:00:09,Other,1
Phone calls,16/04/2024,8:11:49 pm,0:00:01,Other,1
Truecaller,16/04/2024,8:11:44 pm,0:00:05,Other,1
Phone,16/04/2024,8:11:13 pm,0:00:31,Other,1
WhatsApp,16/04/2024,8:11:12 pm,0:00:00,Social Media,1
Phone calls,16/04/2024,8:11:12 pm,0:00:01,Other,1
WhatsApp,16/04/2024,8:11:11 pm,0:00:00,Social Media,1
Truecaller,16/04/2024,8:11:10 pm,0:00:01,Other,1
WhatsApp,16/04/2024,8:11:09 pm,0:00:01,Social Media,1
Truecaller,16/04/2024,8:11:07 pm,0:00:02,Other,1
Truecaller,16/04/2024,8:10:52 pm,0:00:00,Other,1
Phone,16/04/2024,8:10:35 pm,0:00:15,Other,1
WhatsApp,16/04/2024,7:59:28 pm,0:00:25,Social Media,1
WhatsApp,16/04/2024,7:54:39 pm,0:00:04,Social Media,1
GPay,16/04/2024,7:53:53 pm,0:00:03,Internet Browsing,1
WhatsApp,16/04/2024,7:53:11 pm,0:00:42,Social Media,1
GPay,16/04/2024,7:52:22 pm,0:00:49,Internet Browsing,1
WhatsApp,16/04/2024,7:50:19 pm,0:02:00,Social Media,1
Swiggy,16/04/2024,7:39:03 pm,0:00:00,Internet Browsing,1
Blinkit,16/04/2024,7:33:27 pm,0:00:06,Other,1
Swiggy,16/04/2024,7:33:11 pm,0:00:00,Internet Browsing,1
Instagram,16/04/2024,7:19:59 pm,0:00:00,Social Media,1
Instagram,16/04/2024,6:58:22 pm,0:00:10,Social Media,1
Instagram,16/04/2024,6:42:14 pm,0:00:23,Social Media,1
Instagram,16/04/2024,6:40:00 pm,0:00:13,Social Media,1
WhatsApp,16/04/2024,6:25:47 pm,0:00:00,Social Media,1
Photos,16/04/2024,6:25:44 pm,0:00:03,Other,1
WhatsApp,16/04/2024,6:25:42 pm,0:00:01,Social Media,1
WhatsApp,16/04/2024,6:25:33 pm,0:00:07,Social Media,1
Messages,16/04/2024,6:25:30 pm,0:00:00,Social Media,1
Messages,16/04/2024,6:19:23 pm,0:00:01,Social Media,1
Truecaller,16/04/2024,6:18:07 pm,0:00:01,Other,1
Truecaller,16/04/2024,6:17:16 pm,0:00:02,Other,1
Chrome,16/04/2024,6:17:16 pm,0:00:00,Internet Browsing,1
Truecaller,16/04/2024,6:17:07 pm,0:00:08,Other,1
Truecaller,16/04/2024,6:16:02 pm,0:00:00,Other,1
Phone,16/04/2024,6:15:56 pm,0:00:05,Other,1
Phone,16/04/2024,6:11:20 pm,0:00:25,Other,1
Phone,16/04/2024,6:11:06 pm,0:00:02,Other,1
Phone,16/04/2024,6:10:45 pm,0:00:05,Other,1
Phone,16/04/2024,6:10:07 pm,0:00:06,Other,1
WhatsApp,16/04/2024,6:04:55 pm,0:00:00,Social Media,1
WhatsApp,16/04/2024,6:04:21 pm,0:00:13,Social Media,1
Truecaller,16/04/2024,6:04:19 pm,0:00:02,Other,1
Truecaller,16/04/2024,6:03:42 pm,0:00:00,Other,1
WhatsApp,16/04/2024,6:03:41 pm,0:00:00,Social Media,1
Phone,16/04/2024,6:03:38 pm,0:00:02,Other,1
Phone,16/04/2024,6:01:55 pm,0:00:01,Other,1
WhatsApp,16/04/2024,6:01:09 pm,0:00:45,Social Media,1
WhatsApp,16/04/2024,6:00:08 pm,0:00:50,Social Media,1
Contacts,16/04/2024,6:00:02 pm,0:00:00,Other,1
Phone,16/04/2024,5:59:57 pm,0:00:05,Other,1
Truecaller,16/04/2024,5:59:46 pm,0:00:11,Other,1
Phone,16/04/2024,5:59:42 pm,0:00:03,Other,1
Phone,16/04/2024,5:59:20 pm,0:00:02,Other,1
Phone,16/04/2024,5:58:50 pm,0:00:10,Other,1
Chrome,16/04/2024,5:58:19 pm,0:00:29,Internet Browsing,1
Maps,16/04/2024,5:57:00 pm,0:00:00,Other,1
GPay,16/04/2024,5:56:32 pm,0:00:01,Internet Browsing,1
Instagram,16/04/2024,5:52:49 pm,0:00:01,Social Media,1
Phone,16/04/2024,5:52:46 pm,0:00:01,Other,1
Truecaller,16/04/2024,5:52:44 pm,0:00:02,Other,1
Truecaller,16/04/2024,5:51:48 pm,0:00:06,Other,1
Truecaller,16/04/2024,5:46:02 pm,0:00:00,Other,1
Truecaller,16/04/2024,5:45:57 pm,0:00:00,Other,1
Phone,16/04/2024,5:45:55 pm,0:00:02,Other,1
Phone,16/04/2024,5:45:24 pm,0:00:02,Other,1
Phone,16/04/2024,5:45:17 pm,0:00:03,Other,1
Truecaller,16/04/2024,5:40:14 pm,0:00:35,Other,1
Truecaller,16/04/2024,5:39:06 pm,0:00:00,Other,1
Phone,16/04/2024,5:39:01 pm,0:00:02,Other,1
Phone,16/04/2024,5:37:57 pm,0:00:10,Other,1
heyDoc,16/04/2024,5:25:50 pm,0:00:00,Other,1
heyDoc,16/04/2024,5:24:50 pm,0:00:00,Other,1
heyDoc,16/04/2024,5:24:32 pm,0:00:00,Other,1
heyDoc,16/04/2024,5:20:09 pm,0:00:02,Other,1
Phone,16/04/2024,5:20:07 pm,0:00:02,Other,1
Phone,16/04/2024,5:17:29 pm,0:00:02,Other,1
heyDoc,16/04/2024,5:01:17 pm,0:16:12,Other,1
Phone,16/04/2024,5:01:08 pm,0:00:00,Other,1
heyDoc,16/04/2024,5:00:27 pm,0:00:00,Other,1
heyDoc,16/04/2024,4:43:39 pm,0:00:00,Other,1
heyDoc,16/04/2024,4:18:36 pm,0:00:00,Other,1
heyDoc,16/04/2024,4:15:55 pm,0:00:00,Other,1
heyDoc,16/04/2024,4:14:23 pm,0:00:00,Other,1
Phone,16/04/2024,4:14:19 pm,0:00:01,Other,1
Phone,16/04/2024,4:14:16 pm,0:00:00,Other,1
Phone,16/04/2024,4:13:37 pm,0:00:09,Other,1
heyDoc,16/04/2024,3:55:28 pm,0:00:00,Other,1
Instagram,16/04/2024,3:54:33 pm,0:00:00,Social Media,1
WhatsApp,16/04/2024,3:49:57 pm,0:04:36,Social Media,1
Instagram,16/04/2024,2:56:46 pm,0:53:11,Social Media,1
YouTube,16/04/2024,2:42:40 pm,0:00:01,Internet Browsing,1
Gmail,16/04/2024,2:41:51 pm,0:00:42,Productivity,1
Truecaller,16/04/2024,2:31:49 pm,0:00:01,Other,1
Camera,16/04/2024,2:31:44 pm,0:00:04,Other,1
Truecaller,16/04/2024,2:31:37 pm,0:00:05,Other,1
Phone,16/04/2024,2:31:34 pm,0:00:02,Other,1
Phone,16/04/2024,2:31:11 pm,0:00:05,Other,1
Phone,16/04/2024,2:30:17 pm,0:00:13,Other,1
Phone,16/04/2024,2:20:33 pm,0:00:01,Other,1
Truecaller,16/04/2024,2:20:19 pm,0:00:00,Other,1
Phone,16/04/2024,2:19:12 pm,0:01:08,Other,1
WhatsApp,16/04/2024,2:17:30 pm,0:01:39,Social Media,1
Truecaller,16/04/2024,2:17:27 pm,0:00:03,Other,1
WhatsApp,16/04/2024,2:17:25 pm,0:00:02,Social Media,1
Contacts,16/04/2024,2:17:23 pm,0:00:00,Other,1
Phone,16/04/2024,2:17:06 pm,0:00:17,Other,1
Contacts,16/04/2024,2:17:06 pm,0:00:00,Other,1
Phone,16/04/2024,2:17:04 pm,0:00:01,Other,1
Contacts,16/04/2024,2:17:03 pm,0:00:01,Other,1
Truecaller,16/04/2024,2:17:01 pm,0:00:03,Other,1
Contacts,16/04/2024,2:17:00 pm,0:00:01,Other,1
Phone,16/04/2024,2:16:47 pm,0:00:13,Other,1
WhatsApp,16/04/2024,2:14:36 pm,0:02:09,Social Media,1
Instagram,16/04/2024,1:42:41 pm,0:00:01,Social Media,1
Gmail,16/04/2024,1:42:31 pm,0:00:00,Productivity,1
WhatsApp,16/04/2024,1:42:14 pm,0:00:17,Social Media,1
WhatsApp,16/04/2024,1:34:43 pm,0:00:33,Social Media,1
Gmail,16/04/2024,1:34:42 pm,0:00:02,Productivity,1
Truecaller,16/04/2024,1:34:39 pm,0:00:02,Other,1
Truecaller,16/04/2024,1:29:47 pm,0:00:00,Other,1
Phone,16/04/2024,1:29:33 pm,0:00:14,Other,1
Truecaller,16/04/2024,1:29:26 pm,0:00:00,Other,1
Gmail,16/04/2024,1:29:24 pm,0:00:01,Productivity,1
Phone,16/04/2024,1:29:18 pm,0:00:06,Other,1
Phone,16/04/2024,1:29:02 pm,0:00:10,Other,1
Gmail,16/04/2024,1:20:53 pm,0:01:11,Productivity,1
Truecaller,16/04/2024,1:10:53 pm,0:00:01,Other,1
Gmail,16/04/2024,1:10:52 pm,0:00:01,Productivity,1
Phone,16/04/2024,1:10:33 pm,0:00:18,Other,1
Phone,16/04/2024,1:10:17 pm,0:00:03,Other,1
Gmail,16/04/2024,1:09:55 pm,0:00:21,Productivity,1
Phone,16/04/2024,12:59:00 pm,0:00:00,Other,1
Phone,16/04/2024,12:54:43 pm,0:01:52,Other,1
Truecaller,16/04/2024,12:52:18 pm,0:02:25,Other,1
Phone,16/04/2024,12:52:09 pm,0:00:08,Other,1
Phone,16/04/2024,12:51:39 pm,0:00:24,Other,1
Phone,16/04/2024,12:49:04 pm,0:00:10,Other,1
Instagram,16/04/2024,12:47:54 pm,0:00:01,Social Media,1
Phone,16/04/2024,12:47:49 pm,0:00:01,Other,1
Phone,16/04/2024,12:47:25 pm,0:00:04,Other,1
Phone calls,16/04/2024,12:47:22 pm,0:00:03,Other,1
Phone calls,16/04/2024,12:33:29 pm,0:10:01,Other,1
Truecaller,16/04/2024,12:27:47 pm,0:05:42,Other,1
Phone calls,16/04/2024,12:27:45 pm,0:00:02,Other,1
Phone,16/04/2024,12:27:43 pm,0:00:02,Other,1
Phone,16/04/2024,12:26:06 pm,0:00:01,Other,1
Phone calls,16/04/2024,12:26:03 pm,0:00:03,Other,1
Phone,16/04/2024,12:25:58 pm,0:00:05,Other,1
Truecaller,16/04/2024,12:25:53 pm,0:00:05,Other,1
Phone,16/04/2024,12:25:51 pm,0:00:02,Other,1
Phone,16/04/2024,12:25:47 pm,0:00:01,Other,1
Phone,16/04/2024,12:25:35 pm,0:00:01,Other,1
WhatsApp,16/04/2024,12:10:18 pm,0:13:35,Social Media,1
WhatsApp,16/04/2024,12:09:11 pm,0:00:08,Social Media,1
Messages,16/04/2024,12:06:12 pm,0:02:58,Social Media,1
Messages,16/04/2024,12:04:40 pm,0:00:20,Social Media,1
Instagram,16/04/2024,12:04:38 pm,0:00:00,Social Media,1
Truecaller,16/04/2024,12:04:27 pm,0:00:11,Other,1
Truecaller,16/04/2024,11:58:23 am,0:00:00,Other,1
Instagram,16/04/2024,11:58:21 am,0:00:02,Social Media,1
Phone,16/04/2024,11:58:16 am,0:00:04,Other,1
Phone,16/04/2024,11:57:59 am,0:00:03,Other,1
Instagram,16/04/2024,11:57:17 am,0:00:42,Social Media,1
Swiggy,16/04/2024,11:56:34 am,0:00:00,Internet Browsing,1
Instagram,16/04/2024,11:53:13 am,0:00:00,Social Media,1
Truecaller,16/04/2024,11:53:09 am,0:00:01,Other,1
Truecaller,16/04/2024,11:52:30 am,0:00:03,Other,1
heyDoc,16/04/2024,11:52:24 am,0:00:00,Other,1
heyDoc,16/04/2024,11:51:17 am,0:00:28,Other,1
Permission controller,16/04/2024,11:51:15 am,0:00:02,Other,1
heyDoc,16/04/2024,11:51:12 am,0:00:03,Other,1
heyDoc,16/04/2024,11:50:34 am,0:00:34,Other,1
Phone,16/04/2024,11:50:29 am,0:00:00,Other,1
Phone,16/04/2024,11:49:27 am,0:00:01,Other,1
Phone,16/04/2024,11:49:24 am,0:00:02,Other,1
Instagram,16/04/2024,11:40:05 am,0:02:57,Social Media,1
Snapchat,16/04/2024,11:39:51 am,0:00:11,Social Media,1
Instagram,16/04/2024,11:18:43 am,0:00:01,Social Media,1
WhatsApp,16/04/2024,11:18:03 am,0:00:38,Social Media,1
Truecaller,16/04/2024,11:17:57 am,0:00:04,Other,1
WhatsApp,16/04/2024,11:17:56 am,0:00:01,Social Media,1
Phone,16/04/2024,11:17:31 am,0:00:24,Other,1
Phone,16/04/2024,11:17:20 am,0:00:00,Other,1
Truecaller,16/04/2024,11:17:18 am,0:00:02,Other,1
Truecaller,16/04/2024,11:15:30 am,0:00:00,Other,1
Phone,16/04/2024,11:15:26 am,0:00:02,Other,1
Phone,16/04/2024,11:13:36 am,0:00:01,Other,1
Phone,16/04/2024,11:13:29 am,0:00:05,Other,1
Phone,16/04/2024,11:11:13 am,0:00:01,Other,1
WhatsApp,16/04/2024,11:10:48 am,0:00:23,Social Media,1
WhatsApp,16/04/2024,11:08:01 am,0:00:19,Social Media,1
Slack,16/04/2024,11:07:25 am,0:00:16,Other,1
Gmail,16/04/2024,8:42:17 am,0:00:00,Productivity,1
Weather,16/04/2024,8:42:11 am,0:00:00,Other,1
Clock,16/04/2024,8:42:01 am,0:00:10,Other,1
Slack,16/04/2024,1:41:02 am,0:00:00,Other,1
Instagram,16/04/2024,12:50:50 am,0:04:50,Social Media,1
Spotify,16/04/2024,12:41:20 am,0:00:00,Social Media,1
Instagram,16/04/2024,12:30:54 am,0:00:01,Social Media,1
Spotify,16/04/2024,12:22:32 am,0:00:00,Social Media,1
Instagram,16/04/2024,12:05:32 am,0:11:19,Social Media,1
Snapchat,16/04/2024,12:05:15 am,0:00:17,Social Media,1
Instagram,16/04/2024,12:05:12 am,0:00:02,Social Media,1
Instagram,15/04/2024,11:53:35 pm,0:07:17,Social Media,1''';
}
