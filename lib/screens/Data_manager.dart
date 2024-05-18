class DataManager {
  static const String csvString = '''App name,Date,Time,Duration,Category,Person
App Usage,5/18/24,7:42:29 PM,0:00:01,Other,1
Activity history enabled,5/18/24,7:42:29 PM,0:00:00,Other,1
App Usage,5/18/24,7:42:14 PM,0:00:00,Other,1
App Usage,5/18/24,7:42:13 PM,0:00:01,Other,1
App Usage,5/18/24,7:41:52 PM,0:00:04,Other,1
Package installer,5/18/24,7:41:37 PM,0:00:15,Other,1
My Files,5/18/24,7:41:33 PM,0:00:04,Productivity,1
addiction_detection,5/18/24,7:41:10 PM,0:00:21,Other,1
addiction_detection,5/18/24,7:39:46 PM,0:00:55,Other,1
addiction_detection,5/18/24,7:39:10 PM,0:00:01,Other,1
WhatsApp,5/18/24,7:34:54 PM,0:00:28,Social Media,1
System UI,5/18/24,7:29:26 PM,0:00:02,Other,1
addiction_detection,5/18/24,7:29:00 PM,0:00:23,Other,1
Gmail,5/18/24,7:28:16 PM,0:00:06,Productivity,1
Gmail,5/18/24,7:21:52 PM,0:00:55,Productivity,1
Gmail,5/18/24,7:16:21 PM,0:01:18,Productivity,1
JioCinema,5/18/24,7:16:08 PM,0:00:10,Other,1
WhatsApp,5/18/24,7:12:25 PM,0:00:07,Social Media,1
WhatsApp,5/18/24,7:09:37 PM,0:00:40,Social Media,1
WhatsApp,5/18/24,7:02:20 PM,0:07:12,Social Media,1
Classroom,5/18/24,6:58:29 PM,0:00:22,Other,1
LinkedIn,5/18/24,6:58:26 PM,0:00:02,Social Media,1
Classroom,5/18/24,6:46:40 PM,0:00:09,Other,1
Drive,5/18/24,6:46:02 PM,0:00:38,Other,1
Classroom,5/18/24,6:45:54 PM,0:00:07,Other,1
WhatsApp,5/18/24,6:45:38 PM,0:00:02,Social Media,1
WhatsApp,5/18/24,6:42:55 PM,0:01:35,Social Media,1
Truecaller,5/18/24,6:42:53 PM,0:00:02,Other,1
WhatsApp,5/18/24,6:42:53 PM,0:00:00,Social Media,1
Phone,5/18/24,6:42:51 PM,0:00:02,Other,1
Truecaller,5/18/24,6:42:51 PM,0:00:00,Other,1
Phone,5/18/24,6:42:51 PM,0:00:00,Other,1
Phone,5/18/24,6:39:25 PM,0:00:02,Other,1
WhatsApp,5/18/24,6:38:12 PM,0:01:14,Social Media,1
Truecaller,5/18/24,6:38:00 PM,0:00:01,Other,1
Truecaller,5/18/24,6:36:48 PM,0:00:00,Other,1
Truecaller,5/18/24,6:36:45 PM,0:00:00,Other,1
Phone,5/18/24,6:36:16 PM,0:00:29,Other,1
WhatsApp,5/18/24,5:58:40 PM,0:00:59,Social Media,1
Maps,5/18/24,5:58:38 PM,0:00:02,Other,1
Maps,5/18/24,5:58:24 PM,0:00:09,Other,1
Maps,5/18/24,5:55:48 PM,0:00:01,Other,1
Maps,5/18/24,5:51:46 PM,0:03:58,Other,1
Maps,5/18/24,5:47:29 PM,0:00:02,Other,1
Maps,5/18/24,5:47:14 PM,0:00:02,Other,1
Maps,5/18/24,5:42:44 PM,0:02:01,Other,1
Truecaller,5/18/24,5:42:43 PM,0:00:02,Other,1
Truecaller,5/18/24,5:42:41 PM,0:00:00,Other,1
Maps,5/18/24,5:42:38 PM,0:00:02,Other,1
Phone,5/18/24,5:42:38 PM,0:00:00,Other,1
Truecaller,5/18/24,5:42:38 PM,0:00:00,Other,1
Phone,5/18/24,5:42:35 PM,0:00:03,Other,1
Phone,5/18/24,5:41:30 PM,0:00:02,Other,1
Phone,5/18/24,5:41:19 PM,0:00:00,Other,1
Phone,5/18/24,5:41:02 PM,0:00:09,Other,1
Maps,5/18/24,5:37:02 PM,0:00:03,Other,1
Maps,5/18/24,5:33:17 PM,0:00:14,Other,1
Maps,5/18/24,5:32:36 PM,0:00:17,Other,1
Screenshot,5/18/24,5:32:33 PM,0:00:03,Other,1
Screenshot,5/18/24,5:11:33 PM,0:00:00,Other,1
Screenshot,5/18/24,5:11:30 PM,0:00:01,Other,1
Screenshot,5/18/24,5:11:29 PM,0:00:00,Other,1
Maps,5/18/24,5:11:01 PM,0:00:27,Other,1
Maps,5/18/24,5:08:16 PM,0:00:57,Other,1
Camera,5/18/24,4:26:44 PM,0:00:20,Other,1
Gmail,5/18/24,4:08:54 PM,0:00:51,Productivity,1
WhatsApp,5/18/24,4:08:01 PM,0:00:25,Social Media,1
WhatsApp,5/18/24,3:49:20 PM,0:00:06,Social Media,1
Instagram,5/18/24,3:49:14 PM,0:00:05,Social Media,1
WhatsApp,5/18/24,3:49:12 PM,0:00:02,Social Media,1
Gmail,5/18/24,3:21:54 PM,0:00:23,Productivity,1
Groww,5/18/24,3:21:10 PM,0:00:40,Other,1
Gmail,5/18/24,3:20:49 PM,0:00:20,Productivity,1
WhatsApp,5/18/24,3:20:35 PM,0:00:08,Social Media,1
WhatsApp,5/18/24,3:20:25 PM,0:00:07,Social Media,1
Digilocker,5/18/24,3:19:33 PM,0:00:39,Other,1
Gmail,5/18/24,3:18:15 PM,0:01:13,Productivity,1
Gmail,5/18/24,3:17:59 PM,0:00:16,Productivity,1
Gmail,5/18/24,3:17:30 PM,0:00:23,Productivity,1
Maps,5/18/24,3:08:29 PM,0:02:05,Other,1
Maps,5/18/24,3:07:32 PM,0:00:21,Other,1
Maps,5/18/24,3:01:21 PM,0:00:42,Other,1
WhatsApp,5/18/24,3:01:20 PM,0:00:01,Social Media,1
WhatsApp,5/18/24,2:52:53 PM,0:04:20,Social Media,1
Maps,5/18/24,2:51:54 PM,0:00:57,Other,1
Maps,5/18/24,2:47:16 PM,0:00:43,Other,1
Gmail,5/18/24,2:46:57 PM,0:00:16,Productivity,1
Gmail,5/18/24,2:46:23 PM,0:00:33,Productivity,1
Camera,5/18/24,2:45:33 PM,0:00:39,Other,1
Maps,5/18/24,2:45:31 PM,0:00:02,Other,1
Maps,5/18/24,2:29:56 PM,0:12:30,Other,1
Maps,5/18/24,2:19:36 PM,0:00:29,Other,1
Maps,5/18/24,2:18:02 PM,0:00:25,Other,1
Permission controller,5/18/24,2:18:00 PM,0:00:02,Other,1
Maps,5/18/24,2:16:24 PM,0:01:16,Other,1
Maps,5/18/24,2:15:42 PM,0:00:30,Other,1
Truecaller,5/18/24,2:15:40 PM,0:00:01,Other,1
Maps,5/18/24,2:15:40 PM,0:00:01,Other,1
Phone,5/18/24,2:15:38 PM,0:00:02,Other,1
Truecaller,5/18/24,2:15:38 PM,0:00:00,Other,1
Phone,5/18/24,2:15:01 PM,0:00:36,Other,1
Phone,5/18/24,2:14:41 PM,0:00:02,Other,1
Maps,5/18/24,2:13:31 PM,0:01:10,Other,1
Truecaller,5/18/24,2:13:01 PM,0:00:10,Other,1
Truecaller,5/18/24,2:12:55 PM,0:00:01,Other,1
Phone,5/18/24,2:12:53 PM,0:00:02,Other,1
Truecaller,5/18/24,2:12:52 PM,0:00:00,Other,1
Phone,5/18/24,2:12:03 PM,0:00:13,Other,1
Truecaller,5/18/24,2:08:21 PM,0:00:00,Other,1
Truecaller,5/18/24,2:08:19 PM,0:00:00,Other,1
Phone,5/18/24,2:07:51 PM,0:00:28,Other,1
Truecaller,5/18/24,1:30:48 PM,0:00:02,Other,1
Phone,5/18/24,1:30:48 PM,0:00:00,Other,1
Truecaller,5/18/24,1:30:48 PM,0:00:00,Other,1
Phone,5/18/24,1:30:47 PM,0:00:01,Other,1
Phone,5/18/24,1:29:36 PM,0:00:12,Other,1
Phone,5/18/24,1:23:27 PM,0:00:03,Other,1
Phone,5/18/24,1:23:27 PM,0:00:00,Other,1
Truecaller,5/18/24,1:23:24 PM,0:00:01,Other,1
Truecaller,5/18/24,1:11:01 PM,0:00:00,Other,1
Truecaller,5/18/24,1:10:58 PM,0:00:00,Other,1
Phone,5/18/24,1:10:31 PM,0:00:28,Other,1
LinkedIn,5/18/24,12:52:28 PM,0:00:11,Social Media,1
LinkedIn,5/18/24,12:52:18 PM,0:00:03,Social Media,1
LinkedIn,5/18/24,12:52:09 PM,0:00:04,Social Media,1
GPay,5/18/24,12:49:25 PM,0:00:04,Internet Browsing,1
GPay,5/18/24,12:43:54 PM,0:00:21,Internet Browsing,1
WhatsApp,5/18/24,12:28:54 PM,0:00:25,Social Media,1
WhatsApp,5/18/24,12:27:59 PM,0:00:53,Social Media,1
WhatsApp,5/18/24,11:52:55 AM,0:00:11,Social Media,1
WhatsApp,5/18/24,11:52:52 AM,0:00:02,Social Media,1
WhatsApp,5/18/24,11:47:46 AM,0:00:24,Social Media,1
Chrome,5/18/24,11:46:10 AM,0:01:34,Internet Browsing,1
Chrome,5/18/24,11:45:59 AM,0:00:11,Internet Browsing,1
WhatsApp,5/18/24,11:45:38 AM,0:00:20,Social Media,1
WhatsApp,5/18/24,11:43:18 AM,0:00:21,Social Media,1
Digilocker,5/18/24,11:43:12 AM,0:00:02,Other,1
Digilocker,5/18/24,11:17:56 AM,0:00:17,Other,1
Uber,5/18/24,11:01:43 AM,0:00:20,Other,1
Truecaller,5/18/24,11:01:41 AM,0:00:02,Other,1
Truecaller,5/18/24,11:01:31 AM,0:00:00,Other,1
Uber,5/18/24,11:01:31 AM,0:00:00,Other,1
Phone,5/18/24,11:01:29 AM,0:00:02,Other,1
Truecaller,5/18/24,11:01:29 AM,0:00:00,Other,1
Phone,5/18/24,11:01:28 AM,0:00:01,Other,1
Phone,5/18/24,11:01:15 AM,0:00:10,Other,1
Uber,5/18/24,10:56:51 AM,0:00:31,Other,1
Uber,5/18/24,10:56:40 AM,0:00:03,Other,1
Uber,5/18/24,10:56:20 AM,0:00:18,Other,1
Uber,5/18/24,10:56:17 AM,0:00:01,Other,1
WhatsApp,5/18/24,10:56:16 AM,0:00:01,Social Media,1
Uber,5/18/24,10:56:14 AM,0:00:02,Other,1
Uber,5/18/24,10:54:47 AM,0:00:28,Other,1
Uber,5/18/24,10:51:02 AM,0:00:57,Other,1
Uber,5/18/24,10:49:45 AM,0:00:16,Other,1
Uber,5/18/24,10:48:40 AM,0:00:11,Other,1
Uber,5/18/24,10:47:34 AM,0:00:59,Other,1
WhatsApp,5/18/24,10:47:07 AM,0:00:09,Social Media,1
Uber,5/18/24,10:40:46 AM,0:00:26,Other,1
Truecaller,5/18/24,10:27:52 AM,0:00:02,Other,1
Truecaller,5/18/24,10:10:32 AM,0:00:00,Other,1
Truecaller,5/18/24,10:10:30 AM,0:00:00,Other,1
Phone,5/18/24,10:10:04 AM,0:00:26,Other,1
Phone,5/18/24,9:32:31 AM,0:00:04,Other,1
Truecaller,5/18/24,9:32:31 AM,0:00:00,Other,1
Phone,5/18/24,9:32:30 AM,0:00:01,Other,1
Phone,5/18/24,9:31:21 AM,0:00:13,Other,1
Truecaller,5/18/24,9:16:47 AM,0:00:02,Other,1
Truecaller,5/18/24,9:16:45 AM,0:00:00,Other,1
Phone,5/18/24,9:16:32 AM,0:00:13,Other,1
Instagram,5/18/24,8:52:44 AM,0:03:22,Social Media,1
Clash Royale,5/18/24,8:38:01 AM,0:14:38,Games,1
WhatsApp,5/18/24,8:37:48 AM,0:00:04,Social Media,1
Groww,5/18/24,8:36:43 AM,0:01:00,Other,1
INDmoney,5/18/24,8:33:12 AM,0:03:30,Other,1
Groww,5/18/24,8:31:12 AM,0:01:58,Other,1
YouTube,5/18/24,8:30:10 AM,0:00:58,Internet Browsing,1
Groww,5/18/24,8:29:17 AM,0:00:51,Other,1
Gmail,5/18/24,8:28:32 AM,0:00:43,Productivity,1
WhatsApp,5/18/24,8:25:59 AM,0:02:13,Social Media,1
Clock,5/18/24,7:04:01 AM,0:00:04,Other,1
Clock,5/18/24,6:47:02 AM,0:00:05,Other,1
WhatsApp,5/18/24,12:04:16 AM,0:00:14,Social Media,1
Clock,5/17/24,11:45:44 PM,0:00:13,Other,1
X,5/17/24,11:21:45 PM,0:13:57,Social Media,1
Google,5/17/24,11:21:28 PM,0:00:16,Internet Browsing,1
X,5/17/24,11:19:55 PM,0:01:30,Social Media,1
Clash Royale,5/17/24,11:11:47 PM,0:07:42,Games,1
Truecaller,5/17/24,11:11:18 PM,0:00:02,Other,1
Truecaller,5/17/24,10:15:24 PM,0:00:00,Other,1
Truecaller,5/17/24,10:15:21 PM,0:00:00,Other,1
Phone,5/17/24,10:14:53 PM,0:00:28,Other,1
WhatsApp,5/17/24,9:00:27 PM,0:03:11,Social Media,1
YouTube,5/17/24,8:57:20 PM,0:03:06,Internet Browsing,1
WhatsApp,5/17/24,8:53:18 PM,0:01:16,Social Media,1
WhatsApp,5/17/24,8:52:28 PM,0:00:34,Social Media,1
WhatsApp,5/17/24,8:50:01 PM,0:02:23,Social Media,1
WhatsApp,5/17/24,8:49:16 PM,0:00:15,Social Media,1
Truecaller,5/17/24,8:49:14 PM,0:00:01,Other,1
WhatsApp,5/17/24,8:49:12 PM,0:00:02,Social Media,1
Phone,5/17/24,8:49:12 PM,0:00:00,Other,1
Truecaller,5/17/24,8:49:12 PM,0:00:00,Other,1
Phone,5/17/24,8:49:10 PM,0:00:01,Other,1
Phone,5/17/24,8:45:59 PM,0:00:02,Other,1
WhatsApp,5/17/24,8:42:58 PM,0:03:01,Social Media,1
Glance for realme,5/17/24,8:39:51 PM,0:00:30,Other,1
WhatsApp,5/17/24,8:36:40 PM,0:00:31,Social Media,1
Truecaller,5/17/24,8:36:34 PM,0:00:02,Other,1
Truecaller,5/17/24,8:36:08 PM,0:00:00,Other,1
Phone,5/17/24,8:36:06 PM,0:00:00,Other,1
Truecaller,5/17/24,8:36:06 PM,0:00:00,Other,1
Phone,5/17/24,8:36:05 PM,0:00:01,Other,1
WhatsApp,5/17/24,8:32:29 PM,0:03:15,Social Media,1
Truecaller,5/17/24,8:25:40 PM,0:00:00,Other,1
Phone,5/17/24,8:25:09 PM,0:00:31,Other,1
Google,5/17/24,7:47:20 PM,0:00:11,Internet Browsing,1
WhatsApp,5/17/24,7:47:17 PM,0:00:02,Social Media,1
Google,5/17/24,7:46:22 PM,0:00:32,Internet Browsing,1
IRCTC Rail Connect,5/17/24,7:38:11 PM,0:08:10,Other,1
Google,5/17/24,7:37:32 PM,0:00:38,Internet Browsing,1
IRCTC Rail Connect,5/17/24,7:37:30 PM,0:00:01,Other,1
IRCTC Rail Connect,5/17/24,7:36:09 PM,0:01:13,Other,1
IRCTC Rail Connect,5/17/24,7:35:35 PM,0:00:33,Other,1
IRCTC Rail Connect,5/17/24,7:35:15 PM,0:00:19,Other,1
IRCTC Rail Connect,5/17/24,7:34:53 PM,0:00:20,Other,1
IRCTC Rail Connect,5/17/24,7:33:17 PM,0:01:35,Other,1
Calendar,5/17/24,7:32:49 PM,0:00:23,Other,1
Clash Royale,5/17/24,7:32:46 PM,0:00:02,Games,1
Clash Royale,5/17/24,7:32:20 PM,0:00:18,Games,1
Clash Royale,5/17/24,7:25:09 PM,0:06:47,Games,1
Gmail,5/17/24,7:24:46 PM,0:00:17,Productivity,1
WhatsApp,5/17/24,7:23:27 PM,0:01:18,Social Media,1
Truecaller,5/17/24,7:03:42 PM,0:00:01,Other,1
Truecaller,5/17/24,7:02:33 PM,0:00:00,Other,1
Phone,5/17/24,7:02:30 PM,0:00:02,Other,1
Truecaller,5/17/24,7:02:30 PM,0:00:00,Other,1
Phone,5/17/24,7:02:30 PM,0:00:01,Other,1
Phone,5/17/24,6:56:32 PM,0:00:06,Other,1
Phone,5/17/24,6:56:15 PM,0:00:08,Other,1
Truecaller,5/17/24,6:55:15 PM,0:00:42,Other,1
Phone,5/17/24,6:55:13 PM,0:00:02,Other,1
Truecaller,5/17/24,6:55:12 PM,0:00:00,Other,1
Phone,5/17/24,6:55:11 PM,0:00:02,Other,1
Phone,5/17/24,6:36:23 PM,0:00:33,Other,1
WhatsApp,5/17/24,6:36:03 PM,0:00:18,Social Media,1
WhatsApp,5/17/24,6:29:48 PM,0:00:13,Social Media,1
WhatsApp,5/17/24,6:12:55 PM,0:00:17,Social Media,1
Truecaller,5/17/24,6:12:53 PM,0:00:01,Other,1
Truecaller,5/17/24,6:12:20 PM,0:00:00,Other,1
Truecaller,5/17/24,6:12:16 PM,0:00:00,Other,1
Phone,5/17/24,6:11:44 PM,0:00:33,Other,1
WhatsApp,5/17/24,6:00:26 PM,0:00:16,Social Media,1
WhatsApp,5/17/24,5:58:57 PM,0:00:10,Social Media,1
WhatsApp,5/17/24,5:54:00 PM,0:03:45,Social Media,1
Camera,5/17/24,5:53:25 PM,0:00:32,Other,1
WhatsApp,5/17/24,5:50:17 PM,0:03:08,Social Media,1
X,5/17/24,5:24:05 PM,0:21:17,Social Media,1
Gmail,5/17/24,5:23:51 PM,0:00:10,Productivity,1
Duolingo,5/17/24,5:18:29 PM,0:01:56,Other,1
Duolingo,5/17/24,5:16:43 PM,0:01:41,Other,1
WhatsApp,5/17/24,5:16:02 PM,0:00:26,Social Media,1
Truecaller,5/17/24,5:16:00 PM,0:00:01,Other,1
Truecaller,5/17/24,5:08:23 PM,0:00:00,Other,1
Truecaller,5/17/24,5:08:19 PM,0:00:00,Other,1
Phone,5/17/24,5:07:48 PM,0:00:31,Other,1
Truecaller,5/17/24,5:07:47 PM,0:00:00,Other,1
Phone,5/17/24,5:07:46 PM,0:00:01,Other,1
Truecaller,5/17/24,5:07:42 PM,0:00:01,Other,1
Phone,5/17/24,5:07:26 PM,0:00:17,Other,1
Truecaller,5/17/24,4:47:05 PM,0:00:00,Other,1
Clock,5/17/24,4:47:00 PM,0:00:05,Other,1
Truecaller,5/17/24,4:17:45 PM,0:00:00,Other,1
Truecaller,5/17/24,4:17:41 PM,0:00:00,Other,1
Phone,5/17/24,4:17:13 PM,0:00:27,Other,1
Truecaller,5/17/24,4:13:21 PM,0:00:00,Other,1
Phone,5/17/24,4:13:19 PM,0:00:00,Other,1
Truecaller,5/17/24,4:13:19 PM,0:00:00,Other,1
Phone,5/17/24,4:12:50 PM,0:00:29,Other,1
Truecaller,5/17/24,3:40:30 PM,0:00:00,Other,1
Phone,5/17/24,3:40:27 PM,0:00:01,Other,1
Truecaller,5/17/24,3:40:27 PM,0:00:00,Other,1
Phone,5/17/24,3:40:00 PM,0:00:26,Other,1
Calendar,5/17/24,3:02:39 PM,0:00:37,Other,1
Clock,5/17/24,3:02:30 PM,0:00:07,Other,1
Clock,5/17/24,3:02:16 PM,0:00:12,Other,1
Calendar,5/17/24,3:02:04 PM,0:00:11,Other,1
Calendar,5/17/24,2:57:55 PM,0:02:41,Other,1
Truecaller,5/17/24,2:57:53 PM,0:00:02,Other,1
Calendar,5/17/24,2:57:51 PM,0:00:02,Other,1
Truecaller,5/17/24,2:57:51 PM,0:00:00,Other,1
Calendar,5/17/24,2:56:45 PM,0:01:06,Other,1
Chrome,5/17/24,2:52:41 PM,0:00:01,Internet Browsing,1
Phone,5/17/24,2:51:48 PM,0:00:10,Other,1
WhatsApp,5/17/24,2:51:23 PM,0:00:16,Social Media,1
Gmail,5/17/24,2:24:36 PM,0:00:48,Productivity,1
Glance for realme,5/17/24,2:23:59 PM,0:00:02,Other,1
Truecaller,5/17/24,2:16:39 PM,0:00:02,Other,1
Truecaller,5/17/24,2:14:43 PM,0:00:00,Other,1
Truecaller,5/17/24,2:14:39 PM,0:00:01,Other,1
Phone,5/17/24,2:14:06 PM,0:00:33,Other,1
Truecaller,5/17/24,1:46:06 PM,0:00:00,Other,1
Truecaller,5/17/24,1:46:02 PM,0:00:00,Other,1
Phone,5/17/24,1:45:35 PM,0:00:27,Other,1
Truecaller,5/17/24,1:36:12 PM,0:00:00,Other,1
Truecaller,5/17/24,1:36:10 PM,0:00:00,Other,1
Phone,5/17/24,1:35:42 PM,0:00:28,Other,1
WhatsApp,5/17/24,1:28:02 PM,0:00:09,Social Media,1
WhatsApp,5/17/24,1:23:25 PM,0:00:39,Social Media,1
WhatsApp,5/17/24,1:16:38 PM,0:01:59,Social Media,1
Maps,5/17/24,1:14:23 PM,0:00:02,Other,1
Maps,5/17/24,1:00:00 PM,0:13:19,Other,1
WhatsApp,5/17/24,12:59:51 PM,0:00:08,Social Media,1
GPay,5/17/24,12:59:45 PM,0:00:03,Internet Browsing,1
Truecaller,5/17/24,12:59:43 PM,0:00:02,Other,1
Truecaller,5/17/24,12:55:29 PM,0:00:00,Other,1
GPay,5/17/24,12:55:27 PM,0:00:00,Internet Browsing,1
Truecaller,5/17/24,12:55:27 PM,0:00:00,Other,1
Phone,5/17/24,12:54:54 PM,0:00:32,Other,1
GPay,5/17/24,12:29:58 PM,0:00:43,Internet Browsing,1
WhatsApp,5/17/24,12:19:44 PM,0:00:25,Social Media,1
Truecaller,5/17/24,12:14:46 PM,0:00:01,Other,1
Truecaller,5/17/24,12:12:17 PM,0:00:00,Other,1
Phone,5/17/24,12:12:15 PM,0:00:01,Other,1
Truecaller,5/17/24,12:12:15 PM,0:00:00,Other,1
Phone,5/17/24,12:12:13 PM,0:00:02,Other,1
Phone,5/17/24,12:10:19 PM,0:00:12,Other,1
Uber,5/17/24,12:09:09 PM,0:00:52,Other,1
Truecaller,5/17/24,12:08:46 PM,0:00:01,Other,1
Truecaller,5/17/24,12:03:12 PM,0:00:00,Other,1
Truecaller,5/17/24,12:03:09 PM,0:00:00,Other,1
Phone,5/17/24,12:02:43 PM,0:00:26,Other,1
WhatsApp,5/17/24,11:53:17 AM,0:00:17,Social Media,1
WhatsApp,5/17/24,11:41:38 AM,0:00:44,Social Media,1
Glance for realme,5/17/24,11:33:21 AM,0:00:02,Other,1
Google,5/17/24,11:06:01 AM,0:00:01,Internet Browsing,1
Chrome,5/17/24,11:03:51 AM,0:02:10,Internet Browsing,1
Google,5/17/24,11:03:40 AM,0:00:11,Internet Browsing,1
WhatsApp,5/17/24,11:03:36 AM,0:00:02,Social Media,1
WhatsApp,5/17/24,10:53:42 AM,0:00:37,Social Media,1
Truecaller,5/17/24,10:45:04 AM,0:00:02,Other,1
Truecaller,5/17/24,10:45:02 AM,0:00:00,Other,1
Phone,5/17/24,10:45:00 AM,0:00:00,Other,1
Truecaller,5/17/24,10:45:00 AM,0:00:00,Other,1
Phone,5/17/24,10:44:59 AM,0:00:01,Other,1
Phone,5/17/24,10:44:20 AM,0:00:05,Other,1
Camera,5/17/24,10:42:01 AM,0:00:05,Other,1
Google,5/17/24,10:37:19 AM,0:00:27,Internet Browsing,1
WhatsApp,5/17/24,10:33:17 AM,0:02:29,Social Media,1
WhatsApp,5/17/24,10:30:13 AM,0:00:06,Social Media,1
Phone,5/17/24,10:30:11 AM,0:00:01,Other,1
Truecaller,5/17/24,10:30:09 AM,0:00:02,Other,1
Phone,5/17/24,10:30:07 AM,0:00:03,Other,1
Truecaller,5/17/24,10:30:07 AM,0:00:00,Other,1
Phone,5/17/24,10:30:05 AM,0:00:01,Other,1
Phone,5/17/24,10:27:14 AM,0:00:10,Other,1
WhatsApp,5/17/24,10:26:59 AM,0:00:14,Social Media,1
Phone,5/17/24,10:26:57 AM,0:00:03,Other,1
Phone,5/17/24,10:26:42 AM,0:00:09,Other,1
WhatsApp,5/17/24,10:25:46 AM,0:00:56,Social Media,1
Phone,5/17/24,10:25:45 AM,0:00:00,Other,1
Truecaller,5/17/24,10:25:45 AM,0:00:00,Other,1
Phone,5/17/24,10:25:43 AM,0:00:02,Other,1
Phone,5/17/24,10:18:08 AM,0:00:04,Other,1
Phone,5/17/24,10:18:07 AM,0:00:00,Other,1
WhatsApp,5/17/24,10:11:07 AM,0:00:03,Social Media,1
WhatsApp,5/17/24,10:07:04 AM,0:00:03,Social Media,1
Truecaller,5/17/24,10:06:54 AM,0:00:02,Other,1
Phone,5/17/24,10:06:51 AM,0:00:00,Other,1
Truecaller,5/17/24,10:06:51 AM,0:00:00,Other,1
Phone,5/17/24,10:06:50 AM,0:00:01,Other,1
Phone,5/17/24,10:05:10 AM,0:00:09,Other,1
Phone,5/17/24,10:04:58 AM,0:00:02,Other,1
Truecaller,5/17/24,10:04:40 AM,0:00:14,Other,1
Phone,5/17/24,10:04:38 AM,0:00:00,Other,1
Truecaller,5/17/24,10:04:38 AM,0:00:00,Other,1
Phone,5/17/24,10:04:37 AM,0:00:01,Other,1
Phone,5/17/24,10:03:38 AM,0:00:04,Other,1
Phone,5/17/24,10:03:38 AM,0:00:00,Other,1
Truecaller,5/17/24,10:03:27 AM,0:00:05,Other,1
Phone,5/17/24,10:03:24 AM,0:00:00,Other,1
Truecaller,5/17/24,10:03:24 AM,0:00:00,Other,1
Phone,5/17/24,10:03:22 AM,0:00:02,Other,1
Phone,5/17/24,10:02:45 AM,0:00:03,Other,1
Phone,5/17/24,10:02:44 AM,0:00:00,Other,1
Chrome,5/17/24,10:02:34 AM,0:00:04,Internet Browsing,1
Truecaller,5/17/24,10:02:32 AM,0:00:02,Other,1
Truecaller,5/17/24,9:36:12 AM,0:00:00,Other,1
Chrome,5/17/24,9:36:09 AM,0:00:00,Internet Browsing,1
Truecaller,5/17/24,9:36:08 AM,0:00:00,Other,1
Phone,5/17/24,9:35:38 AM,0:00:30,Other,1
Truecaller,5/17/24,9:20:15 AM,0:00:00,Other,1
Chrome,5/17/24,9:20:12 AM,0:00:00,Internet Browsing,1
Truecaller,5/17/24,9:20:12 AM,0:00:00,Other,1
Phone,5/17/24,9:19:40 AM,0:00:32,Other,1
Chrome,5/17/24,9:04:15 AM,0:01:11,Internet Browsing,1
Truecaller,5/17/24,9:04:13 AM,0:00:02,Other,1
Chrome,5/17/24,9:04:11 AM,0:00:02,Internet Browsing,1
Truecaller,5/17/24,9:04:11 AM,0:00:00,Other,1
Chrome,5/17/24,9:03:51 AM,0:00:20,Internet Browsing,1
Phone,5/17/24,9:03:04 AM,0:00:02,Other,1
Truecaller,5/17/24,9:03:04 AM,0:00:00,Other,1
Phone,5/17/24,9:03:03 AM,0:00:01,Other,1
Phone,5/17/24,9:01:21 AM,0:00:01,Other,1
Phone,5/17/24,9:00:50 AM,0:00:04,Other,1
Drive,5/17/24,9:00:49 AM,0:00:02,Other,1
Drive,5/17/24,8:58:27 AM,0:00:48,Other,1
WhatsApp,5/17/24,8:58:22 AM,0:00:03,Social Media,1
X,5/17/24,8:58:21 AM,0:00:01,Social Media,1
WhatsApp,5/17/24,8:57:39 AM,0:00:42,Social Media,1
Drive,5/17/24,8:57:07 AM,0:00:27,Other,1
Gmail,5/17/24,8:57:05 AM,0:00:02,Productivity,1
Sheets,5/17/24,8:56:28 AM,0:00:37,Other,1
Gmail,5/17/24,8:56:21 AM,0:00:07,Productivity,1
X,5/17/24,8:47:30 AM,0:01:03,Social Media,1
Google,5/17/24,8:47:14 AM,0:00:14,Internet Browsing,1
X,5/17/24,8:38:31 AM,0:08:43,Social Media,1
Clash Royale,5/17/24,8:32:54 AM,0:05:29,Games,1
Truecaller,5/17/24,8:32:53 AM,0:00:01,Other,1
Clash Royale,5/17/24,8:32:50 AM,0:00:02,Games,1
Truecaller,5/17/24,8:32:50 AM,0:00:00,Other,1
Clash Royale,5/17/24,8:29:57 AM,0:02:53,Games,1
Gmail,5/17/24,8:28:58 AM,0:00:52,Productivity,1
WhatsApp,5/17/24,8:28:15 AM,0:00:42,Social Media,1
WhatsApp,5/17/24,8:25:18 AM,0:01:00,Social Media,1
WhatsApp,5/17/24,8:08:35 AM,0:00:06,Social Media,1
GPay,5/17/24,8:07:55 AM,0:00:38,Internet Browsing,1
Uber,5/17/24,8:07:51 AM,0:00:02,Other,1
Truecaller,5/17/24,8:07:50 AM,0:00:02,Other,1
Truecaller,5/17/24,8:03:28 AM,0:00:00,Other,1
Uber,5/17/24,8:03:27 AM,0:00:00,Other,1
Phone,5/17/24,8:03:25 AM,0:00:02,Other,1
Truecaller,5/17/24,8:03:25 AM,0:00:00,Other,1
Phone,5/17/24,8:02:38 AM,0:00:04,Other,1
Uber,5/17/24,7:52:40 AM,0:07:22,Other,1
Phone,5/17/24,7:51:24 AM,0:00:11,Other,1
Maps,5/17/24,7:47:23 AM,0:01:32,Other,1
Maps,5/17/24,7:44:57 AM,0:02:23,Other,1
Maps,5/17/24,7:43:51 AM,0:00:40,Other,1
Maps,5/17/24,7:41:13 AM,0:01:22,Other,1
Maps,5/17/24,7:39:05 AM,0:00:58,Other,1
X,5/17/24,7:27:49 AM,0:11:15,Social Media,1
Camera,5/17/24,7:25:32 AM,0:00:49,Other,1
Maps,5/17/24,7:25:20 AM,0:00:12,Other,1
Maps,5/17/24,7:24:40 AM,0:00:00,Other,1
Glance for realme,5/17/24,7:24:31 AM,0:00:08,Other,1
Maps,5/17/24,7:22:16 AM,0:00:00,Other,1
X,5/17/24,7:14:43 AM,0:07:33,Social Media,1
Maps,5/17/24,7:14:26 AM,0:00:15,Other,1
Maps,5/17/24,7:11:29 AM,0:02:44,Other,1
X,5/17/24,7:11:24 AM,0:00:06,Social Media,1
X,5/17/24,7:03:34 AM,0:07:48,Social Media,1
Maps,5/17/24,7:02:40 AM,0:00:52,Other,1
Calendar,5/17/24,7:02:37 AM,0:00:01,Other,1
Calendar,5/17/24,7:01:27 AM,0:01:01,Other,1
Calendar,5/17/24,7:00:27 AM,0:00:57,Other,1
Groww,5/17/24,7:00:21 AM,0:00:02,Other,1
Groww,5/17/24,6:58:02 AM,0:01:06,Other,1
Camera,5/17/24,6:57:13 AM,0:00:39,Other,1
Clock,5/17/24,6:57:01 AM,0:00:05,Other,1
Truecaller,5/17/24,6:42:07 AM,0:00:02,Other,1
Truecaller,5/17/24,6:42:03 AM,0:00:00,Other,1
Phone,5/17/24,6:42:03 AM,0:00:00,Other,1
Truecaller,5/17/24,6:42:02 AM,0:00:00,Other,1
Phone,5/17/24,6:42:01 AM,0:00:01,Other,1
Phone,5/17/24,6:38:16 AM,0:00:26,Other,1
Truecaller,5/17/24,6:36:14 AM,0:00:00,Other,1
Truecaller,5/17/24,6:36:11 AM,0:00:00,Other,1
Phone,5/17/24,6:35:43 AM,0:00:28,Other,1
X,5/17/24,1:54:00 AM,0:09:54,Social Media,1
Maps,5/17/24,1:41:23 AM,0:00:58,Other,1''';
}
