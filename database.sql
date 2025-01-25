-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.7.19 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table master.images
CREATE TABLE IF NOT EXISTS `images` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `photographer` varchar(255) NOT NULL,
  `uploaded` varchar(255) NOT NULL,
  `uploader` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table master.images: ~0 rows (approximately)
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
/*!40000 ALTER TABLE `images` ENABLE KEYS */;

-- Dumping structure for table master.log_controllers
CREATE TABLE IF NOT EXISTS `log_controllers` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `controller` varchar(255) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `created` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_log_controllers_user_id` (`user_id`),
  CONSTRAINT `fk_log_controllers_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table master.log_controllers: ~0 rows (approximately)
/*!40000 ALTER TABLE `log_controllers` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_controllers` ENABLE KEYS */;

-- Dumping structure for table master.log_models
CREATE TABLE IF NOT EXISTS `log_models` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `model` varchar(255) NOT NULL,
  `model_id` int(11) unsigned NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `method` varchar(255) NOT NULL,
  `data` text NOT NULL,
  `created` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_log_models_user_id` (`user_id`),
  CONSTRAINT `fk_log_models_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table master.log_models: ~0 rows (approximately)
/*!40000 ALTER TABLE `log_models` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_models` ENABLE KEYS */;

-- Dumping structure for table master.payments
CREATE TABLE IF NOT EXISTS `payments` (
  `id` bigint(20) unsigned NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `payment_system_id` int(11) NOT NULL,
  `payment_details` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(19,2) NOT NULL,
  `status` enum('created','approved','cancelled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'created',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table master.payments: ~0 rows (approximately)
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;

-- Dumping structure for table master.payment_systems
CREATE TABLE IF NOT EXISTS `payment_systems` (
  `id` bigint(20) unsigned NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table master.payment_systems: ~7 rows (approximately)
/*!40000 ALTER TABLE `payment_systems` DISABLE KEYS */;
INSERT INTO `payment_systems` (`id`, `title`) VALUES
	(1, 'Visa'),
	(2, 'Master Card'),
	(3, 'aaa'),
	(4, 'asdsda'),
	(5, 'asd'),
	(6, 'tests'),
	(7, 'test');
/*!40000 ALTER TABLE `payment_systems` ENABLE KEYS */;

-- Dumping structure for table master.races
CREATE TABLE IF NOT EXISTS `races` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `location` varchar(255) NOT NULL,
  `distances` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `date` date DEFAULT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- Dumping data for table master.races: ~4 rows (approximately)
/*!40000 ALTER TABLE `races` DISABLE KEYS */;
INSERT INTO `races` (`id`, `title`, `name`, `content`, `location`, `distances`, `logo`, `date`, `updated_at`, `created_at`, `user_id`) VALUES
	(1, 'Hincestienduro 2', 'Hincestienduro', '<ul class="center-list position-relative">\n			\n							<h4>Hincestienduro Where &amp; When</h4>\n							<li>\n								<strong>Location:</strong>\n								<small>\n										<span>chisinau</span>,\n										<span>  2024</span>\n								</small>\n							</li>\n								<li><strong>Race Date:</strong> <small><span>2025/01/24 07:00:00 PM (Friday)</span></small></li>\n								<li>\n									<strong>Categories:</strong> <small><ul>\n				<li>Hobby</li>\n				<li>Newby</li>\n				<li>Expert</li>\n			</ul>\n			</small>\n								</li>\n						</ul>', 'chisinau, 2024, MDA	', '10 Km, 20 Km', 'https://s3-us-west-2.amazonaws.com/images.raceentry.com/logo/sd-trail-championships-registration-logo-53188.jpg?v=1737772095', '2025-01-24', '2025-01-24 04:36:12', '2025-01-24 04:38:16', 1),
	(2, 'MT TOP SUMMER MARATHON example ', 'MT TOP SUMMER MARATHON', 'THIS IS THE FIRST MARATHON OF ITS KIND IN QUTHING DISTRICT, WE NOT ONLY RACE BUT WE CELEBRATE 200 YEARS OF BASOTHO NATION', 'MOUNT MOOROSI, QUTHING, LSO', '5 Km	', 'https://s3-us-west-2.amazonaws.com/images.raceentry.com/top-banner/mt-top-summer-marathon-top-banner-82196.jpg?v=1737772926', '2025-01-24', '2025-01-24 04:36:12', '2025-01-24 04:38:17', 1),
	(3, 'MOUNT MOOROSI RACE lorem 4', 'MOUNT MOOROSI RACE', 'THIS IS THE FIRST MARATHON OF ITS KIND IN QUTHING DISTRICT, WE NOT ONLY RACE BUT WE CELEBRATE 200 YEARS OF BASOTHO NATION', 'MOUNT MOOROSI, QUTHING, LSO', '10 Km	', 'https://s3-us-west-2.amazonaws.com/images.raceentry.com/top_banner/mount-moorosi-race-top_banner-82197.jpg?v=1737773046', '2025-03-24', '2025-01-24 04:36:12', NULL, 1),
	(4, '2025 The Cookie Dash Hybrid Race LOS ANGELES', '2025 The Cookie Dash Hybrid Race LOS ANGELES', '<div id="raceFullDesc">\n			<h5><strong>Get Ready for the Cookie Dash! ðŸÂªâœ¨The race is on—join us for the Cookie Dash! It\'s not just a race, it\'s an adventure filled with delicious cookies for those who run with a sweet reward in mind!</strong></h5>\n			<h5><span style="color: #843fa1;"><u><strong>Overview:</strong></u></span><br><span style="color: #34495e;">Run will sell-out QUICK! We will close off waves the moment they fill up. If waves are sold out, you can sign-up for the virtual run option or wait list.</span></h5>\n			<h5><span style="color: #34495e;">This is a smaller, private group run with a cap per wave.</span></h5>\n			<h5><span style="color: #34495e;">All paces and ages (under 18 with guardian) are welcome - Run or Walk! </span><span style="color: #34495e;">&nbsp;</span></h5>\n			<h5><span style="color: #000000;"><u>There\'s no equipment or setup, this is a pure run with our coordinators to support you in a warm, stress-free setting!</u></span></h5>\n			<h5><span style="color: #000000;">When you sign-up, we give you the support you need to help you achieve your goals and fitness. We also invite you to be part of our local run clubs that supports your fitness journey.&nbsp;<br></span></h5>\n			<h5><span style="color: #843fa1;"><strong><u>Timing:</u></strong></span></h5>\n			<h5><span style="color: #000000;">- Timing is Optional: You may track your time on an app (Strava, RunKeeper, Nike Run, etc) and submit your times with our easy form to be posted online. Or you can ask our coordinators to help keep track of your time.&nbsp;</span></h5>\n			<h5><span style="color: #000000;">- No timing chips (</span><span style="color: #000000;">This is a stress free run to support you in achieving your goals)!</span></h5>\n			<h5><span style="color: #843fa1;"><u><strong>What You Get (Swag Bag)</strong></u></span><span style="color: #843fa1;"><u><strong>:</strong></u></span></h5>\n			<h5><span style="color: #000000;">-<strong> Running T-Shirt</strong> (Shipped to the address you register with - US only)</span></h5>\n			<h5><strong><span style="color: #000000;">- Finisher\'s Towel or Giveaway</span></strong></h5>\n			<h5><span style="color: #000000;"><strong>- Finisher\'s Medal!&nbsp;</strong></span></h5>\n			<h5><strong><span style="color: #000000;">- Digital Training Pack&nbsp;</span></strong></h5>\n			<h5><span style="color: #000000;">-&nbsp;<span style="color: rgb( 86 , 66 , 219 );"><a style="color: rgb( 86 , 66 , 219 );" href="https://www.thebestraces.com/results/" target="_blank" rel="nofollow noopener noreferrer"><strong>Online Results &amp; Certificate of Completion</strong></a></span></span></h5>\n			<h5><span style="color: #000000;"><span style="color: rgb( 86 , 66 , 219 );"><strong>- <span style="color: rgb( 132 , 63 , 161 );"><a style="color: rgb( 132 , 63 , 161 );" href="https://www.thebestraces.com/run-or-walk-club/" target="_blank" rel="nofollow noopener noreferrer"><span style="text-decoration: underline;">Invitation to Join one of our Local Running Clubs</span></a></span></strong></span></span></h5>\n			<h5><span style="color: #000000;">-&nbsp;<strong>We now have Technical Running Shirts (Optional).</strong> These lightweight, moisture wicking shirts can be <u>upgraded for just $5 more</u>.&nbsp;</span></h5>\n			<h5><span style="color: #843fa1;"><strong><u>Packet Pickup:</u></strong></span></h5>\n			<h5><span style="color: #000000;">No hassle of picking up packets required!</span></h5>\n			<h5><span style="color: #000000;">-Swag shipped direct to your address (Please make sure you provide your full, correct US mailing address including apartment number and check spelling)</span></h5>\n			<h5><span style="color: #000000;">- Race bibs are provided on race day</span></h5>\n			<h5><span style="color: #843fa1;"><strong><u>When will I get my Swag?</u></strong></span></h5>\n			<h5><span style="color: #000000;">You will get your shirt at your mailing address the week of your race.</span></h5>\n			<h5><span style="color: #843fa1;"><u><strong>Race Updates: </strong></u></span></h5>\n			<h5><span style="color: #000000;">We will email you a final update the Wednesday before the race with final details and course maps.</span></h5>\n			<h5><span style="color: #843fa1;"><u><strong>Do you accept last minute registrations?</strong> (For those signing up 2 weeks before the race)</u></span></h5>\n			<h5><span style="color: #000000;">Yes, but please note that it takes time for us to ship your shirt. Your shirt will likely arrive after the run. You can wear any shirt you find appropriate to run the race!&nbsp;</span></h5>\n			<h5>&nbsp;<br><span style="color: #843fa1;"><u><strong>Wave Times: (Email Us Your Desired Wave Time: <a style="color: #843fa1;" href="mailto:info@thebestraces.com" target="_blank" rel="nofollow noopener noreferrer">info@thebestraces.com</a>)</strong></u></span><br><span style="color: #000000;">(Waves filled on a First Come, First Serve Basis)</span><br><span style="color: #000000;">Wave A: 7:30AM</span><br><span style="color: #000000;">Wave B: 8:00AM</span><br><span style="color: #000000;">Wave C: 8:30AM</span></h5>\n			<h5><span style="color: #000000;">Late runners can run upon arrival (Please note our coordinators stay 3 hours after the first wave)</span></h5>\n			<h5><span style="color: #000000;"><span style="text-decoration: underline;"><span style="color: rgb( 132 , 63 , 161 ); text-decoration: underline;"><strong>Are there any other Questions we missed?</strong></span></span><br><span style="text-decoration: underline;"><a href="https://www.thebestraces.com/faq/" target="_blank" rel="nofollow noopener noreferrer"><span style="color: rgb(132, 63, 161); text-decoration: underline;">https://www.thebestraces.com/faq/</span></a></span></span></h5>\n			<h5><span style="color: #843fa1;"><u><strong>Virtual Run Option:</strong></u></span><br><span style="color: #000000;">- Our Virtual Run uniquely offers a Training Pack with Digital Tools to support your run.&nbsp;</span></h5>\n			<h5><span style="color: #000000;">Virtual runs can be done any time and place of your choosing using any tracking device (optional). After you finish, you can submit your results to info@thebestraces.com to receive your medal!&nbsp;</span></h5>\n			<h5><span style="color: #843fa1;"><u><strong>Race Bundle:</strong></u></span></h5>\n			<h5><span style="color: #000000;">Sign-up for more races and get a discount!&nbsp;</span></h5>\n			<h4><span style="color: #843fa1;"><u><strong>Sponsorships &amp; Promoting your Business:</strong></u></span></h4>\n			<h5><strong>If you\'re looking to become a sponsor, we\'d love showcase your business!</strong><br><span style="color: #3598db;"><strong><u><a style="color: #3598db;" href="https://www.thebestraces.com/events" target="_blank" rel="nofollow noopener noreferrer">https://www.thebestraces.com/events</a></u></strong></span></h5>\n			<h5>&nbsp;</h5>\n			<h4><span style="color: #843fa1;"><strong><u>Team Glo Volunteers:</u></strong></span></h4>\n			<h5><span style="color: #843fa1;">If you\'re interested in helping put on runs for the Community and helping people achieve their goals, we invite you to join our team of volunteers, fill out the form here: </span><strong><span style="color: #3598db;"><a style="color: #3598db;" href="https://www.thebestraces.com/volunteer-form/" target="_blank" rel="nofollow noopener noreferrer"><u>https://www.thebestraces.com/volunteer-form/</u></a> </span></strong></h5>\n			<h5>&nbsp;</h5>\n			<h4><span style="text-decoration: underline;"><span style="color: rgb( 132 , 63 , 161 ); text-decoration: underline;"><strong>Be part of the Journey!</strong></span></span></h4>\n			<h5>Our Charity Initiatives. Find out more @ <a href="https://www.thebestracesjourney.com" target="_blank" rel="nofollow noopener noreferrer"><span style="color: rgb( 132 , 63 , 161 );">www.thebestracesjourney.com</span></a><br>Keep running. Every mile you log after the race, we\'ll donate $1 to one of the charities we work with! (Note that Fundraising is Optional)</h5>\n			</div>', 'Newport Beach, California', '1 Mi, 10 Km, 13.1 Km, 5 Km', 'https://s3-us-west-2.amazonaws.com/images.raceentry.com/logo/washington-city-half-marathon-registration-logo-2182.png?v=1737772095', NULL, '2025-01-24 04:36:12', '2025-01-24 04:38:18', 1),
	(22, 'Hincestienduro lorem', 'Hincestienduro', '<ul class="center-list position-relative">\n			\n							<h4>Hincestienduro Where &amp; When</h4>\n							<li>\n								<strong>Location:</strong>\n								<small>\n										<span>chisinau</span>,\n										<span>  2024</span>\n								</small>\n							</li>\n								<li><strong>Race Date:</strong> <small><span>2025/01/24 07:00:00 PM (Friday)</span></small></li>\n								<li>\n									<strong>Categories:</strong> <small><ul>\n				<li>Hobby</li>\n				<li>Newby</li>\n				<li>Expert</li>\n			</ul>\n			</small>\n								</li>\n						</ul>', 'chisinau, 2024, MDA	', '10 Km, 20 Km', 'https://s3-us-west-2.amazonaws.com/images.raceentry.com/logo/sd-trail-championships-registration-logo-53188.jpg?v=1737772095', '2025-01-24', '2025-01-24 04:36:12', '2025-01-24 04:38:16', 1),
	(23, '2025 The Cookie Dash Hybrid Race LOS ANGELES 1', '2025 The Cookie Dash Hybrid Race LOS ANGELES', '<div id="raceFullDesc">\n			<h5><strong>Get Ready for the Cookie Dash! ðŸÂªâœ¨The race is on—join us for the Cookie Dash! It\'s not just a race, it\'s an adventure filled with delicious cookies for those who run with a sweet reward in mind!</strong></h5>\n			<h5><span style="color: #843fa1;"><u><strong>Overview:</strong></u></span><br><span style="color: #34495e;">Run will sell-out QUICK! We will close off waves the moment they fill up. If waves are sold out, you can sign-up for the virtual run option or wait list.</span></h5>\n			<h5><span style="color: #34495e;">This is a smaller, private group run with a cap per wave.</span></h5>\n			<h5><span style="color: #34495e;">All paces and ages (under 18 with guardian) are welcome - Run or Walk! </span><span style="color: #34495e;">&nbsp;</span></h5>\n			<h5><span style="color: #000000;"><u>There\'s no equipment or setup, this is a pure run with our coordinators to support you in a warm, stress-free setting!</u></span></h5>\n			<h5><span style="color: #000000;">When you sign-up, we give you the support you need to help you achieve your goals and fitness. We also invite you to be part of our local run clubs that supports your fitness journey.&nbsp;<br></span></h5>\n			<h5><span style="color: #843fa1;"><strong><u>Timing:</u></strong></span></h5>\n			<h5><span style="color: #000000;">- Timing is Optional: You may track your time on an app (Strava, RunKeeper, Nike Run, etc) and submit your times with our easy form to be posted online. Or you can ask our coordinators to help keep track of your time.&nbsp;</span></h5>\n			<h5><span style="color: #000000;">- No timing chips (</span><span style="color: #000000;">This is a stress free run to support you in achieving your goals)!</span></h5>\n			<h5><span style="color: #843fa1;"><u><strong>What You Get (Swag Bag)</strong></u></span><span style="color: #843fa1;"><u><strong>:</strong></u></span></h5>\n			<h5><span style="color: #000000;">-<strong> Running T-Shirt</strong> (Shipped to the address you register with - US only)</span></h5>\n			<h5><strong><span style="color: #000000;">- Finisher\'s Towel or Giveaway</span></strong></h5>\n			<h5><span style="color: #000000;"><strong>- Finisher\'s Medal!&nbsp;</strong></span></h5>\n			<h5><strong><span style="color: #000000;">- Digital Training Pack&nbsp;</span></strong></h5>\n			<h5><span style="color: #000000;">-&nbsp;<span style="color: rgb( 86 , 66 , 219 );"><a style="color: rgb( 86 , 66 , 219 );" href="https://www.thebestraces.com/results/" target="_blank" rel="nofollow noopener noreferrer"><strong>Online Results &amp; Certificate of Completion</strong></a></span></span></h5>\n			<h5><span style="color: #000000;"><span style="color: rgb( 86 , 66 , 219 );"><strong>- <span style="color: rgb( 132 , 63 , 161 );"><a style="color: rgb( 132 , 63 , 161 );" href="https://www.thebestraces.com/run-or-walk-club/" target="_blank" rel="nofollow noopener noreferrer"><span style="text-decoration: underline;">Invitation to Join one of our Local Running Clubs</span></a></span></strong></span></span></h5>\n			<h5><span style="color: #000000;">-&nbsp;<strong>We now have Technical Running Shirts (Optional).</strong> These lightweight, moisture wicking shirts can be <u>upgraded for just $5 more</u>.&nbsp;</span></h5>\n			<h5><span style="color: #843fa1;"><strong><u>Packet Pickup:</u></strong></span></h5>\n			<h5><span style="color: #000000;">No hassle of picking up packets required!</span></h5>\n			<h5><span style="color: #000000;">-Swag shipped direct to your address (Please make sure you provide your full, correct US mailing address including apartment number and check spelling)</span></h5>\n			<h5><span style="color: #000000;">- Race bibs are provided on race day</span></h5>\n			<h5><span style="color: #843fa1;"><strong><u>When will I get my Swag?</u></strong></span></h5>\n			<h5><span style="color: #000000;">You will get your shirt at your mailing address the week of your race.</span></h5>\n			<h5><span style="color: #843fa1;"><u><strong>Race Updates: </strong></u></span></h5>\n			<h5><span style="color: #000000;">We will email you a final update the Wednesday before the race with final details and course maps.</span></h5>\n			<h5><span style="color: #843fa1;"><u><strong>Do you accept last minute registrations?</strong> (For those signing up 2 weeks before the race)</u></span></h5>\n			<h5><span style="color: #000000;">Yes, but please note that it takes time for us to ship your shirt. Your shirt will likely arrive after the run. You can wear any shirt you find appropriate to run the race!&nbsp;</span></h5>\n			<h5>&nbsp;<br><span style="color: #843fa1;"><u><strong>Wave Times: (Email Us Your Desired Wave Time: <a style="color: #843fa1;" href="mailto:info@thebestraces.com" target="_blank" rel="nofollow noopener noreferrer">info@thebestraces.com</a>)</strong></u></span><br><span style="color: #000000;">(Waves filled on a First Come, First Serve Basis)</span><br><span style="color: #000000;">Wave A: 7:30AM</span><br><span style="color: #000000;">Wave B: 8:00AM</span><br><span style="color: #000000;">Wave C: 8:30AM</span></h5>\n			<h5><span style="color: #000000;">Late runners can run upon arrival (Please note our coordinators stay 3 hours after the first wave)</span></h5>\n			<h5><span style="color: #000000;"><span style="text-decoration: underline;"><span style="color: rgb( 132 , 63 , 161 ); text-decoration: underline;"><strong>Are there any other Questions we missed?</strong></span></span><br><span style="text-decoration: underline;"><a href="https://www.thebestraces.com/faq/" target="_blank" rel="nofollow noopener noreferrer"><span style="color: rgb(132, 63, 161); text-decoration: underline;">https://www.thebestraces.com/faq/</span></a></span></span></h5>\n			<h5><span style="color: #843fa1;"><u><strong>Virtual Run Option:</strong></u></span><br><span style="color: #000000;">- Our Virtual Run uniquely offers a Training Pack with Digital Tools to support your run.&nbsp;</span></h5>\n			<h5><span style="color: #000000;">Virtual runs can be done any time and place of your choosing using any tracking device (optional). After you finish, you can submit your results to info@thebestraces.com to receive your medal!&nbsp;</span></h5>\n			<h5><span style="color: #843fa1;"><u><strong>Race Bundle:</strong></u></span></h5>\n			<h5><span style="color: #000000;">Sign-up for more races and get a discount!&nbsp;</span></h5>\n			<h4><span style="color: #843fa1;"><u><strong>Sponsorships &amp; Promoting your Business:</strong></u></span></h4>\n			<h5><strong>If you\'re looking to become a sponsor, we\'d love showcase your business!</strong><br><span style="color: #3598db;"><strong><u><a style="color: #3598db;" href="https://www.thebestraces.com/events" target="_blank" rel="nofollow noopener noreferrer">https://www.thebestraces.com/events</a></u></strong></span></h5>\n			<h5>&nbsp;</h5>\n			<h4><span style="color: #843fa1;"><strong><u>Team Glo Volunteers:</u></strong></span></h4>\n			<h5><span style="color: #843fa1;">If you\'re interested in helping put on runs for the Community and helping people achieve their goals, we invite you to join our team of volunteers, fill out the form here: </span><strong><span style="color: #3598db;"><a style="color: #3598db;" href="https://www.thebestraces.com/volunteer-form/" target="_blank" rel="nofollow noopener noreferrer"><u>https://www.thebestraces.com/volunteer-form/</u></a> </span></strong></h5>\n			<h5>&nbsp;</h5>\n			<h4><span style="text-decoration: underline;"><span style="color: rgb( 132 , 63 , 161 ); text-decoration: underline;"><strong>Be part of the Journey!</strong></span></span></h4>\n			<h5>Our Charity Initiatives. Find out more @ <a href="https://www.thebestracesjourney.com" target="_blank" rel="nofollow noopener noreferrer"><span style="color: rgb( 132 , 63 , 161 );">www.thebestracesjourney.com</span></a><br>Keep running. Every mile you log after the race, we\'ll donate $1 to one of the charities we work with! (Note that Fundraising is Optional)</h5>\n			</div>', 'Newport Beach, California', '1 Mi, 10 Km, 13.1 Km, 5 Km', 'https://s3-us-west-2.amazonaws.com/images.raceentry.com/logo/washington-city-half-marathon-registration-logo-2182.png?v=1737772095', NULL, '2025-01-24 04:36:12', '2025-01-24 04:38:18', 1),
	(24, 'MT TOP SUMMER MARATHON example 4', 'MT TOP SUMMER MARATHON', 'THIS IS THE FIRST MARATHON OF ITS KIND IN QUTHING DISTRICT, WE NOT ONLY RACE BUT WE CELEBRATE 200 YEARS OF BASOTHO NATION', 'MOUNT MOOROSI, QUTHING, LSO', '5 Km	', 'https://s3-us-west-2.amazonaws.com/images.raceentry.com/top-banner/mt-top-summer-marathon-top-banner-82196.jpg?v=1737772926', '2025-01-24', '2025-01-24 04:36:12', '2025-01-24 04:38:17', 1),
	(25, 'MOUNT MOOROSI RACE lorem 4', 'MOUNT MOOROSI RACE', 'THIS IS THE FIRST MARATHON OF ITS KIND IN QUTHING DISTRICT, WE NOT ONLY RACE BUT WE CELEBRATE 200 YEARS OF BASOTHO NATION', 'MOUNT MOOROSI, QUTHING, LSO', '10 Km	', 'https://s3-us-west-2.amazonaws.com/images.raceentry.com/top_banner/mount-moorosi-race-top_banner-82197.jpg?v=1737773046', '2025-03-24', '2025-01-24 04:36:12', NULL, 1),
	(26, 'Hincestienduro 5', 'Hincestienduro', '<ul class="center-list position-relative">\n			\n							<h4>Hincestienduro Where &amp; When</h4>\n							<li>\n								<strong>Location:</strong>\n								<small>\n										<span>chisinau</span>,\n										<span>  2024</span>\n								</small>\n							</li>\n								<li><strong>Race Date:</strong> <small><span>2025/01/24 07:00:00 PM (Friday)</span></small></li>\n								<li>\n									<strong>Categories:</strong> <small><ul>\n				<li>Hobby</li>\n				<li>Newby</li>\n				<li>Expert</li>\n			</ul>\n			</small>\n								</li>\n						</ul>', 'chisinau, 2024, MDA	', '10 Km, 20 Km', 'https://s3-us-west-2.amazonaws.com/images.raceentry.com/logo/sd-trail-championships-registration-logo-53188.jpg?v=1737772095', '2025-01-24', '2025-01-24 04:36:12', '2025-01-24 04:38:16', 1),
	(27, '2025 The Cookie Dash Hybrid Race LOS ANGELES 1', '2025 The Cookie Dash Hybrid Race LOS ANGELES', '<div id="raceFullDesc">\n			<h5><strong>Get Ready for the Cookie Dash! ðŸÂªâœ¨The race is on—join us for the Cookie Dash! It\'s not just a race, it\'s an adventure filled with delicious cookies for those who run with a sweet reward in mind!</strong></h5>\n			<h5><span style="color: #843fa1;"><u><strong>Overview:</strong></u></span><br><span style="color: #34495e;">Run will sell-out QUICK! We will close off waves the moment they fill up. If waves are sold out, you can sign-up for the virtual run option or wait list.</span></h5>\n			<h5><span style="color: #34495e;">This is a smaller, private group run with a cap per wave.</span></h5>\n			<h5><span style="color: #34495e;">All paces and ages (under 18 with guardian) are welcome - Run or Walk! </span><span style="color: #34495e;">&nbsp;</span></h5>\n			<h5><span style="color: #000000;"><u>There\'s no equipment or setup, this is a pure run with our coordinators to support you in a warm, stress-free setting!</u></span></h5>\n			<h5><span style="color: #000000;">When you sign-up, we give you the support you need to help you achieve your goals and fitness. We also invite you to be part of our local run clubs that supports your fitness journey.&nbsp;<br></span></h5>\n			<h5><span style="color: #843fa1;"><strong><u>Timing:</u></strong></span></h5>\n			<h5><span style="color: #000000;">- Timing is Optional: You may track your time on an app (Strava, RunKeeper, Nike Run, etc) and submit your times with our easy form to be posted online. Or you can ask our coordinators to help keep track of your time.&nbsp;</span></h5>\n			<h5><span style="color: #000000;">- No timing chips (</span><span style="color: #000000;">This is a stress free run to support you in achieving your goals)!</span></h5>\n			<h5><span style="color: #843fa1;"><u><strong>What You Get (Swag Bag)</strong></u></span><span style="color: #843fa1;"><u><strong>:</strong></u></span></h5>\n			<h5><span style="color: #000000;">-<strong> Running T-Shirt</strong> (Shipped to the address you register with - US only)</span></h5>\n			<h5><strong><span style="color: #000000;">- Finisher\'s Towel or Giveaway</span></strong></h5>\n			<h5><span style="color: #000000;"><strong>- Finisher\'s Medal!&nbsp;</strong></span></h5>\n			<h5><strong><span style="color: #000000;">- Digital Training Pack&nbsp;</span></strong></h5>\n			<h5><span style="color: #000000;">-&nbsp;<span style="color: rgb( 86 , 66 , 219 );"><a style="color: rgb( 86 , 66 , 219 );" href="https://www.thebestraces.com/results/" target="_blank" rel="nofollow noopener noreferrer"><strong>Online Results &amp; Certificate of Completion</strong></a></span></span></h5>\n			<h5><span style="color: #000000;"><span style="color: rgb( 86 , 66 , 219 );"><strong>- <span style="color: rgb( 132 , 63 , 161 );"><a style="color: rgb( 132 , 63 , 161 );" href="https://www.thebestraces.com/run-or-walk-club/" target="_blank" rel="nofollow noopener noreferrer"><span style="text-decoration: underline;">Invitation to Join one of our Local Running Clubs</span></a></span></strong></span></span></h5>\n			<h5><span style="color: #000000;">-&nbsp;<strong>We now have Technical Running Shirts (Optional).</strong> These lightweight, moisture wicking shirts can be <u>upgraded for just $5 more</u>.&nbsp;</span></h5>\n			<h5><span style="color: #843fa1;"><strong><u>Packet Pickup:</u></strong></span></h5>\n			<h5><span style="color: #000000;">No hassle of picking up packets required!</span></h5>\n			<h5><span style="color: #000000;">-Swag shipped direct to your address (Please make sure you provide your full, correct US mailing address including apartment number and check spelling)</span></h5>\n			<h5><span style="color: #000000;">- Race bibs are provided on race day</span></h5>\n			<h5><span style="color: #843fa1;"><strong><u>When will I get my Swag?</u></strong></span></h5>\n			<h5><span style="color: #000000;">You will get your shirt at your mailing address the week of your race.</span></h5>\n			<h5><span style="color: #843fa1;"><u><strong>Race Updates: </strong></u></span></h5>\n			<h5><span style="color: #000000;">We will email you a final update the Wednesday before the race with final details and course maps.</span></h5>\n			<h5><span style="color: #843fa1;"><u><strong>Do you accept last minute registrations?</strong> (For those signing up 2 weeks before the race)</u></span></h5>\n			<h5><span style="color: #000000;">Yes, but please note that it takes time for us to ship your shirt. Your shirt will likely arrive after the run. You can wear any shirt you find appropriate to run the race!&nbsp;</span></h5>\n			<h5>&nbsp;<br><span style="color: #843fa1;"><u><strong>Wave Times: (Email Us Your Desired Wave Time: <a style="color: #843fa1;" href="mailto:info@thebestraces.com" target="_blank" rel="nofollow noopener noreferrer">info@thebestraces.com</a>)</strong></u></span><br><span style="color: #000000;">(Waves filled on a First Come, First Serve Basis)</span><br><span style="color: #000000;">Wave A: 7:30AM</span><br><span style="color: #000000;">Wave B: 8:00AM</span><br><span style="color: #000000;">Wave C: 8:30AM</span></h5>\n			<h5><span style="color: #000000;">Late runners can run upon arrival (Please note our coordinators stay 3 hours after the first wave)</span></h5>\n			<h5><span style="color: #000000;"><span style="text-decoration: underline;"><span style="color: rgb( 132 , 63 , 161 ); text-decoration: underline;"><strong>Are there any other Questions we missed?</strong></span></span><br><span style="text-decoration: underline;"><a href="https://www.thebestraces.com/faq/" target="_blank" rel="nofollow noopener noreferrer"><span style="color: rgb(132, 63, 161); text-decoration: underline;">https://www.thebestraces.com/faq/</span></a></span></span></h5>\n			<h5><span style="color: #843fa1;"><u><strong>Virtual Run Option:</strong></u></span><br><span style="color: #000000;">- Our Virtual Run uniquely offers a Training Pack with Digital Tools to support your run.&nbsp;</span></h5>\n			<h5><span style="color: #000000;">Virtual runs can be done any time and place of your choosing using any tracking device (optional). After you finish, you can submit your results to info@thebestraces.com to receive your medal!&nbsp;</span></h5>\n			<h5><span style="color: #843fa1;"><u><strong>Race Bundle:</strong></u></span></h5>\n			<h5><span style="color: #000000;">Sign-up for more races and get a discount!&nbsp;</span></h5>\n			<h4><span style="color: #843fa1;"><u><strong>Sponsorships &amp; Promoting your Business:</strong></u></span></h4>\n			<h5><strong>If you\'re looking to become a sponsor, we\'d love showcase your business!</strong><br><span style="color: #3598db;"><strong><u><a style="color: #3598db;" href="https://www.thebestraces.com/events" target="_blank" rel="nofollow noopener noreferrer">https://www.thebestraces.com/events</a></u></strong></span></h5>\n			<h5>&nbsp;</h5>\n			<h4><span style="color: #843fa1;"><strong><u>Team Glo Volunteers:</u></strong></span></h4>\n			<h5><span style="color: #843fa1;">If you\'re interested in helping put on runs for the Community and helping people achieve their goals, we invite you to join our team of volunteers, fill out the form here: </span><strong><span style="color: #3598db;"><a style="color: #3598db;" href="https://www.thebestraces.com/volunteer-form/" target="_blank" rel="nofollow noopener noreferrer"><u>https://www.thebestraces.com/volunteer-form/</u></a> </span></strong></h5>\n			<h5>&nbsp;</h5>\n			<h4><span style="text-decoration: underline;"><span style="color: rgb( 132 , 63 , 161 ); text-decoration: underline;"><strong>Be part of the Journey!</strong></span></span></h4>\n			<h5>Our Charity Initiatives. Find out more @ <a href="https://www.thebestracesjourney.com" target="_blank" rel="nofollow noopener noreferrer"><span style="color: rgb( 132 , 63 , 161 );">www.thebestracesjourney.com</span></a><br>Keep running. Every mile you log after the race, we\'ll donate $1 to one of the charities we work with! (Note that Fundraising is Optional)</h5>\n			</div>', 'Newport Beach, California', '1 Mi, 10 Km, 13.1 Km, 5 Km', 'https://s3-us-west-2.amazonaws.com/images.raceentry.com/logo/washington-city-half-marathon-registration-logo-2182.png?v=1737772095', NULL, '2025-01-24 04:36:12', '2025-01-24 04:38:18', 1);
/*!40000 ALTER TABLE `races` ENABLE KEYS */;

-- Dumping structure for table master.roles
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(11) unsigned NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table master.roles: ~2 rows (approximately)
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`, `name`, `description`) VALUES
	(1, 'login', 'Login privileges, granted after account confirmation'),
	(2, 'admin', 'Administrative user, has access to everything.');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

-- Dumping structure for table master.roles_users
CREATE TABLE IF NOT EXISTS `roles_users` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table master.roles_users: ~2 rows (approximately)
/*!40000 ALTER TABLE `roles_users` DISABLE KEYS */;
INSERT INTO `roles_users` (`user_id`, `role_id`) VALUES
	(1, 1),
	(1, 2);
/*!40000 ALTER TABLE `roles_users` ENABLE KEYS */;

-- Dumping structure for table master.rules
CREATE TABLE IF NOT EXISTS `rules` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `key` varchar(255) NOT NULL,
  `rule` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Dumping data for table master.rules: ~5 rows (approximately)
/*!40000 ALTER TABLE `rules` DISABLE KEYS */;
INSERT INTO `rules` (`id`, `type`, `key`, `rule`) VALUES
	(1, 'controller', 'user_management', 'role:admin'),
	(2, 'controller', 'user_logs', 'role:admin'),
	(3, 'controller', 'user_config', 'role:admin'),
	(4, 'controller', 'user_logs', 'role:user'),
	(5, 'controller', 'user_config', 'role:user');
/*!40000 ALTER TABLE `rules` ENABLE KEYS */;

-- Dumping structure for table master.sessions
CREATE TABLE IF NOT EXISTS `sessions` (
  `session_id` varchar(24) NOT NULL,
  `last_active` int(10) unsigned NOT NULL,
  `contents` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_active` (`last_active`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- Dumping data for table master.sessions: 0 rows
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;

-- Dumping structure for table master.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `password` varchar(65) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table master.users: ~3 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `email`, `first_name`, `last_name`, `password`, `salt`) VALUES
	(1, 'admin@demo.com', 'David', 'Stutz', '8d5f8aeeb64e3ce20b537d04c486407eaf489646617cfcf493e76f5b794fa080', NULL),
	(2, 'user@demo.com', 'David', 'Stutz', '856c44c23fa1396cbb2cc565ea287aedc328169a0455df31b251dbb293ba2985', NULL),
	(3, 'user2@demo.com', '', '', '856c44c23fa1396cbb2cc565ea287aedc328169a0455df31b251dbb293ba2985', NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table master.users_user_roles
CREATE TABLE IF NOT EXISTS `users_user_roles` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `user_role_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_users_user_roles_user_id` (`user_id`),
  KEY `fk_users_user_roles_user_role_id` (`user_role_id`),
  CONSTRAINT `fk_users_user_roles_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_users_user_roles_user_role_id` FOREIGN KEY (`user_role_id`) REFERENCES `user_roles` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table master.users_user_roles: ~2 rows (approximately)
/*!40000 ALTER TABLE `users_user_roles` DISABLE KEYS */;
INSERT INTO `users_user_roles` (`id`, `user_id`, `user_role_id`) VALUES
	(1, 1, 1),
	(2, 2, 2);
/*!40000 ALTER TABLE `users_user_roles` ENABLE KEYS */;

-- Dumping structure for table master.user_config
CREATE TABLE IF NOT EXISTS `user_config` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `group` varchar(255) NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_config_user_id` (`user_id`),
  CONSTRAINT `fk_user_config_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table master.user_config: ~0 rows (approximately)
/*!40000 ALTER TABLE `user_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_config` ENABLE KEYS */;

-- Dumping structure for table master.user_logins
CREATE TABLE IF NOT EXISTS `user_logins` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(65) NOT NULL,
  `agent` varchar(65) NOT NULL,
  `login` varchar(255) NOT NULL,
  `created` int(11) unsigned NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- Dumping data for table master.user_logins: ~11 rows (approximately)
/*!40000 ALTER TABLE `user_logins` DISABLE KEYS */;
INSERT INTO `user_logins` (`id`, `ip`, `agent`, `login`, `created`, `user_id`) VALUES
	(1, 'd0c5c267365c771a1bed92ba355dcf100511e34ded4a2500fa501a874b30e13c', '30269475f9966909fde59b038d6997c3dfe99a176b150532b9b5ab9be3d00fb3', 'admin@demo.com', 1737698320, NULL),
	(2, 'd0c5c267365c771a1bed92ba355dcf100511e34ded4a2500fa501a874b30e13c', '30269475f9966909fde59b038d6997c3dfe99a176b150532b9b5ab9be3d00fb3', 'admin@demo.com', 1737698335, NULL),
	(3, 'd0c5c267365c771a1bed92ba355dcf100511e34ded4a2500fa501a874b30e13c', '30269475f9966909fde59b038d6997c3dfe99a176b150532b9b5ab9be3d00fb3', 'admin@demo.com', 1737698362, NULL),
	(4, 'd0c5c267365c771a1bed92ba355dcf100511e34ded4a2500fa501a874b30e13c', '30269475f9966909fde59b038d6997c3dfe99a176b150532b9b5ab9be3d00fb3', 'admin@demo.com', 1737698387, NULL),
	(5, 'd0c5c267365c771a1bed92ba355dcf100511e34ded4a2500fa501a874b30e13c', '30269475f9966909fde59b038d6997c3dfe99a176b150532b9b5ab9be3d00fb3', 'admin@demo.com', 1737698744, NULL),
	(6, 'd0c5c267365c771a1bed92ba355dcf100511e34ded4a2500fa501a874b30e13c', '30269475f9966909fde59b038d6997c3dfe99a176b150532b9b5ab9be3d00fb3', 'admin@demo.com', 1737698995, NULL),
	(7, 'd0c5c267365c771a1bed92ba355dcf100511e34ded4a2500fa501a874b30e13c', '30269475f9966909fde59b038d6997c3dfe99a176b150532b9b5ab9be3d00fb3', 'admin@demo.com', 1737699051, NULL),
	(8, 'd0c5c267365c771a1bed92ba355dcf100511e34ded4a2500fa501a874b30e13c', '30269475f9966909fde59b038d6997c3dfe99a176b150532b9b5ab9be3d00fb3', 'admin@demo.com', 1737699079, NULL),
	(9, 'd0c5c267365c771a1bed92ba355dcf100511e34ded4a2500fa501a874b30e13c', '30269475f9966909fde59b038d6997c3dfe99a176b150532b9b5ab9be3d00fb3', 'admin@demo.com', 1737699114, NULL),
	(10, 'd0c5c267365c771a1bed92ba355dcf100511e34ded4a2500fa501a874b30e13c', '30269475f9966909fde59b038d6997c3dfe99a176b150532b9b5ab9be3d00fb3', 'admin@demo.com', 1737699185, NULL),
	(11, 'd0c5c267365c771a1bed92ba355dcf100511e34ded4a2500fa501a874b30e13c', '30269475f9966909fde59b038d6997c3dfe99a176b150532b9b5ab9be3d00fb3', 'admin@demo.com', 1737699994, NULL),
	(12, 'd0c5c267365c771a1bed92ba355dcf100511e34ded4a2500fa501a874b30e13c', '30269475f9966909fde59b038d6997c3dfe99a176b150532b9b5ab9be3d00fb3', 'admin@demo.com', 1737700074, NULL),
	(13, 'd0c5c267365c771a1bed92ba355dcf100511e34ded4a2500fa501a874b30e13c', '30269475f9966909fde59b038d6997c3dfe99a176b150532b9b5ab9be3d00fb3', 'admin@demo.com', 1737700110, NULL);
/*!40000 ALTER TABLE `user_logins` ENABLE KEYS */;

-- Dumping structure for table master.user_roles
CREATE TABLE IF NOT EXISTS `user_roles` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table master.user_roles: ~2 rows (approximately)
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` (`id`, `name`) VALUES
	(1, 'admin'),
	(2, 'user');
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;

-- Dumping structure for table master.user_tokens
CREATE TABLE IF NOT EXISTS `user_tokens` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(40) NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `user_agent` varchar(64) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `expires` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_token` (`token`),
  KEY `fk_user_tokens_user_id` (`user_id`),
  CONSTRAINT `fk_user_tokens_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table master.user_tokens: ~0 rows (approximately)
/*!40000 ALTER TABLE `user_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_tokens` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
