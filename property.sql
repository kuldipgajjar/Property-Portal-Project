-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2018 at 03:06 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `property`
--

-- --------------------------------------------------------

--
-- Table structure for table `agent`
--

CREATE TABLE IF NOT EXISTS `agent` (
  `agent_id` int(11) NOT NULL AUTO_INCREMENT,
  `agentname` varchar(255) NOT NULL,
  `agentemail` varchar(255) NOT NULL,
  `agentphone` varchar(255) NOT NULL,
  `agent_password` varchar(255) NOT NULL,
  `agent_photo` varchar(255) NOT NULL,
  PRIMARY KEY (`agent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `agent`
--

INSERT INTO `agent` (`agent_id`, `agentname`, `agentemail`, `agentphone`, `agent_password`, `agent_photo`) VALUES
(1, 'Dhyanam', 'dhyanam@gmail.com', '8200155238', 'd@123465', 'images/agent/92463948462.jpg'),
(2, 'Jaimin', 'jaimin@gmail.com', '9033879398', 'j@123456', 'images/agent/425263251.jpg'),
(3, 'Lakhan', 'lakhan@gmail.com', '9574206930', 'l@123456', 'images/agent/54224118203.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

CREATE TABLE IF NOT EXISTS `area` (
  `area_id` int(255) NOT NULL AUTO_INCREMENT,
  `cityid` int(255) NOT NULL,
  `areaname` varchar(255) NOT NULL,
  PRIMARY KEY (`area_id`),
  KEY `cityid` (`cityid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `area`
--

INSERT INTO `area` (`area_id`, `cityid`, `areaname`) VALUES
(1, 1, 'Memnager'),
(2, 1, 'Bopal'),
(3, 1, 'Satelite'),
(4, 1, 'Vasna'),
(5, 1, 'himmatlal Park'),
(6, 1, 'Thaltej'),
(7, 1, 'iscon'),
(8, 1, 'maninager'),
(9, 1, 'naroda'),
(10, 1, 'Vijay char Rasta'),
(11, 1, 'Naranpura'),
(12, 1, 'Ghatlodia');

-- --------------------------------------------------------

--
-- Table structure for table `bookmark`
--

CREATE TABLE IF NOT EXISTS `bookmark` (
  `bookmark_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  PRIMARY KEY (`bookmark_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE IF NOT EXISTS `city` (
  `cityid` int(255) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(255) NOT NULL,
  PRIMARY KEY (`cityid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`cityid`, `cityname`) VALUES
(1, 'Ahmedabad');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `contact_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_name` varchar(255) NOT NULL,
  `c_email` varchar(255) NOT NULL,
  `c_subject` varchar(255) NOT NULL,
  `c_phone` varchar(255) NOT NULL,
  `c_message` varchar(255) NOT NULL,
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contact_id`, `c_name`, `c_email`, `c_subject`, `c_phone`, `c_message`) VALUES
(1, 'Jay', 'jayshah@gmail.com', 'Job', '8855223388', 'Dear Sir requirement for php  job');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `feed_id` int(255) NOT NULL AUTO_INCREMENT,
  `property_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  PRIMARY KEY (`feed_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `furnished`
--

CREATE TABLE IF NOT EXISTS `furnished` (
  `furnished_id` int(11) NOT NULL AUTO_INCREMENT,
  `furnished` varchar(255) NOT NULL,
  PRIMARY KEY (`furnished_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `furnished`
--

INSERT INTO `furnished` (`furnished_id`, `furnished`) VALUES
(1, 'full'),
(2, 'semi'),
(3, 'not');

-- --------------------------------------------------------

--
-- Table structure for table `guestdetail`
--

CREATE TABLE IF NOT EXISTS `guestdetail` (
  `guest_id` int(11) NOT NULL AUTO_INCREMENT,
  `signupid` varchar(255) NOT NULL,
  `propertyid` varchar(255) NOT NULL,
  `name2` varchar(255) NOT NULL,
  `email1` varchar(255) NOT NULL,
  `mobile1` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `agentname` varchar(255) NOT NULL,
  `status_inquiry` varchar(255) NOT NULL,
  PRIMARY KEY (`guest_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `propertydetail`
--

CREATE TABLE IF NOT EXISTS `propertydetail` (
  `propertydetail_id` int(255) NOT NULL AUTO_INCREMENT,
  `propertytitle` varchar(255) NOT NULL,
  `propertystatus_id` int(255) NOT NULL,
  `category_id` int(255) NOT NULL,
  `subcat_id` int(255) NOT NULL,
  `minprice` varchar(255) NOT NULL,
  `maxprice` varchar(255) NOT NULL,
  `minarea` varchar(255) NOT NULL,
  `maxarea` varchar(255) NOT NULL,
  `rooms` varchar(255) NOT NULL,
  `bathrooms` varchar(255) NOT NULL,
  `balconey` varchar(255) NOT NULL,
  `furnished_id` int(255) NOT NULL,
  `floor` varchar(255) NOT NULL,
  `cons_status` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `floorno` varchar(255) NOT NULL,
  `complexname` varchar(255) NOT NULL,
  `cityid` int(255) NOT NULL,
  `area_id` int(255) NOT NULL,
  `postalcode` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `features` varchar(255) NOT NULL,
  `signup_id` int(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  PRIMARY KEY (`propertydetail_id`),
  KEY `category_id` (`category_id`),
  KEY `propertystatus_id` (`propertystatus_id`),
  KEY `category_id_2` (`category_id`),
  KEY `subcat_id` (`subcat_id`),
  KEY `cityid` (`cityid`),
  KEY `area_id` (`area_id`),
  KEY `furnished_id` (`furnished_id`),
  KEY `signup_id` (`signup_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `propertydetail`
--

INSERT INTO `propertydetail` (`propertydetail_id`, `propertytitle`, `propertystatus_id`, `category_id`, `subcat_id`, `minprice`, `maxprice`, `minarea`, `maxarea`, `rooms`, `bathrooms`, `balconey`, `furnished_id`, `floor`, `cons_status`, `date`, `photo`, `floorno`, `complexname`, `cityid`, `area_id`, `postalcode`, `description`, `features`, `signup_id`, `email`, `phone`) VALUES
(1, 'Viharika', 2, 3, 8, '', '1500000', '900', '950', '3', '2', '1', 3, '2', 'Ready', '01-01-2018', '../minimaladmin/images/propertyimg/50012207547180182.jpg,../minimaladmin/images/propertyimg/32754516925445561.jpeg', 'A-202', 'Visamo Kids', 1, 2, '380058', 'It is totally renovated 2 bhk flat with attached bathroom, Vitrified tiles, Modular electrical fitting, Asian royal colour , One small balcony and wash area i in kitchen. No transfer fee and maintainance', 'freeparking,placetoseat,Garden,gas,gym,lift', 1, 'patat.lakhan56@gmail.com', '9574206930'),
(2, 'Alekha', 1, 1, 1, '', '15000', '500', '600', '2', '1', '1', 2, '1', 'Ready', '10-03-2018', '../minimaladmin/images/propertyimg/50103760222717283.jpeg,../minimaladmin/images/propertyimg/70858765967285165.jpeg,../minimaladmin/images/propertyimg/69091797972656252.jpeg,../minimaladmin/images/propertyimg/9367981038568115124458611O-1523694182.jpeg,../', 'A-101', 'AALEKH APARTMENTS', 1, 1, '380052', 'We are giving furniture,  Bed, Dinning table, And other household things as it is. Located at a very prime location of ahmedabad and within a km or 2 all banks are there. All amenities are near to the place. Parking area.', 'freeparking,placetoseat,Garden,lift', 1, 'patat.lakhan56@gmail.com', '9574206930'),
(3, 'Sahajanand Oasis ', 2, 1, 9, '', '4800000', '1200', '1500', '4', '3', '2', 2, '8', 'Ready', '09-09-2017', '../minimaladmin/images/propertyimg/38577270185333252.jpeg,../minimaladmin/images/propertyimg/53533936213836674.jpg,../minimaladmin/images/propertyimg/38497925575561525.jpg,../minimaladmin/images/propertyimg/60510254667968751.jpeg', 'c-808', 'Sahajanand Oasis Flats', 1, 1, '380052', 'We are giving furniture, Ac, Bed, Dinning table, And other household things as it is. Located at a very prime location of ahmedabad and within a km or 2 all banks are there. All amenities are near to the place. Parking area is under cctv curvivlance.', 'freeparking,placetoseat,swimmingpool,laundryroom,Garden,gas,gym,lift', 2, 'jaimin@gmail.com', '9033879398'),
(4, 'ANAND PARK ', 1, 1, 2, '', '18000', '700', '750', '3', '2', '1', 3, '3', 'Ready', '03-03-2018', '../minimaladmin/images/propertyimg/27398681335113521.jpeg,../minimaladmin/images/propertyimg/21005249396270753.jpeg,../minimaladmin/images/propertyimg/60058594450988772.jpeg', 'F-303', 'ANAND PARK ', 1, 1, '380052', 'The property is in prime location with well maintained garden. This will appeal people who prefer to live a peaceful life. Away from the crowd and yet within them. Well designed and caters to the need of each family member. This is an ideal choice of educted professional people.', 'freeparking,placetoseat,gas,lift', 2, 'jaimin@gmail.com', '9033879398'),
(5, 'Devraj ', 2, 2, 6, '', '3000000', '1500', '1600', '4', '3', '2', 3, '2', 'Ready', '05-08-2017', '../minimaladmin/images/propertyimg/53353882310791014.jpeg,../minimaladmin/images/propertyimg/23559570467193602.jpeg,../minimaladmin/images/propertyimg/43167114539154051.jpeg,../minimaladmin/images/propertyimg/3826904871673594.jpeg,../minimaladmin/images/p', 'D-202', 'Devraj Residency', 1, 9, '382330', 'Its a good aria.. Pacefull aria.. Good public.. And amunies.. Utility r near..', 'freeparking,aircondition,placetoseat,swimmingpool,Garden,gym,lift', 3, 'dhyanam@gmail.com', '8200155238'),
(6, 'Smita Tower', 1, 3, 8, '', '18000', '800', '850', '3', '2', '1', 1, '4', 'Ready', '02-02-2018', '../minimaladmin/images/propertyimg/912719731.jpeg,../minimaladmin/images/propertyimg/50689692.jpeg,../minimaladmin/images/propertyimg/73791503.jpeg,../minimaladmin/images/propertyimg/888763434.jpeg', ' B-404', 'Smita Tower', 1, 1, '380052', 'Residential apartment is available for rent. Situated in memnager.', 'freeparking,gas,lift', 3, 'dhyanam@gmail.com', '8200155238'),
(7, 'Hari ', 1, 2, 6, '', '17000', '1500', '1700', '4', '3', '3', 2, '0', 'Ready', '07-03-2018', '../minimaladmin/images/propertyimg/855499271.jpeg,../minimaladmin/images/propertyimg/235534672.jpeg,../minimaladmin/images/propertyimg/206268313.jpeg,../minimaladmin/images/propertyimg/625610354.jpeg,../minimaladmin/images/propertyimg/755767825.jpeg,../mi', ' ', 'Vasana Hadmatia', 1, 4, '382460', 'A 3 bhk property is available for rent in vasna. It has a built-up area of 1500 sqft and is available for rent at Rs. 17,000 per month (negotiable). The house is semi-furnished. It is east facing property. It has 4 bathrooms and 3 balconies.', 'freeparking,placetoseat,Garden,gas,gym', 3, 'dhyanam@gmail.com', '8200155238'),
(8, 'Goyal', 2, 1, 2, '', '2500000', '1200', '1250', '3', '1', '1', 1, '6', 'Ready', '03-03-2017', '../minimaladmin/images/propertyimg/340606691.jpeg,../minimaladmin/images/propertyimg/737243652.jpeg,../minimaladmin/images/propertyimg/17547603.jpeg,../minimaladmin/images/propertyimg/680053714.jpeg,../minimaladmin/images/propertyimg/815094005.jpeg,../min', '601', 'Shivdhara Appartments', 1, 6, '380054', 'The flat is completely renovated by latest plumbing,Complete electricity fitting and cabling,New vitrified flooring ,All windows are grilled ,Kitchen with complete furniture for storage. \r\n', 'freeparking,placetoseat,Garden,gas,lift', 4, 'kashyap@gmail.com', '8160783196'),
(9, 'shivalik', 1, 3, 7, '', '9000', '500', '550', '2', '1', '1', 2, '3', 'Ready', '06-03-2018', '../minimaladmin/images/propertyimg/80078121.jpeg,../minimaladmin/images/propertyimg/105255122.jpg,../minimaladmin/images/propertyimg/583923343.jpe,../minimaladmin/images/propertyimg/805633554.jpeg', 'f-306', 'Sahajanand Complex', 1, 10, '380013', 'he flat is completely renovated by latest plumbing,Complete electricity fitting and cabling,New vitrified flooring and rent road touch rent 9000.one deposite', 'freeparking,placetoseat,gas,lift', 4, 'kashyap@gmail.com', '8160783196'),
(10, 'Sarjan ', 2, 1, 3, '', '5000000', '1500', '1800', '4', '3', '2', 1, '3', 'Ready', '25-03-2018', '../minimaladmin/images/propertyimg/81420891.jpeg,../minimaladmin/images/propertyimg/64117432.jpeg,../minimaladmin/images/propertyimg/662414553.jpeg,../minimaladmin/images/propertyimg/673675544.jpeg', 'd-308', 'Sarjan Tower M', 1, 1, '380052', 'This is a meticulously designed 3 bhk sale apartment located in memnagar, ahmedabad west. It is a freehold property. The flat is a spacious property and is ready to move in. Located in an integrated society of Sarjan Tower, it has 4 bathroom(S) and 2 balcony(S).', 'freeparking,aircondition,placetoseat,swimmingpool,laundryroom,Garden,gas,gym,lift', 3, 'dhyanam@gmail.com', '8200155238'),
(11, 'Rameshwar', 2, 2, 2, '', '4500000', '500', '800', '3', '3', '1', 3, '1', 'Ready', '28-03-2018', '../minimaladmin/images/propertyimg/921966561.jpeg,../minimaladmin/images/propertyimg/699218752.jpeg,../minimaladmin/images/propertyimg/591583253.jpeg,../minimaladmin/images/propertyimg/593688974.jpeg,../minimaladmin/images/propertyimg/870086675.jpeg', 's-1', 'Rameshwar', 1, 11, '380013', 'Its a  house in naranpura having 2 bhk with 2 bathroom ', 'freeparking,gas', 2, 'jaimin@gmail.com', '9033879398'),
(12, 'Satyam', 2, 2, 4, '', '5200000', '800', '850', '2', '1', '0', 1, '0', 'Ready', '05-04-2018', '../minimaladmin/images/propertyimg/26214591.jpeg,../minimaladmin/images/propertyimg/687255862.jpeg,../minimaladmin/images/propertyimg/412628173.jpeg,../minimaladmin/images/propertyimg/712585454.jpeg', 's-100', 'Satyam Homes', 1, 12, '380061', 'It is a property type of tenament in a good locality which consists of co-Operative neighbours. We have a well maintained auda garden with amul parlour which provides good exercise zone just like any gym, and a good place to pass your leisure time.', 'freeparking,placetoseat,Garden,gas', 1, 'patat.lakhan56@gmail.com', '9574206930'),
(13, 'krishna', 2, 1, 1, '', '1700000', '800', '850', '2', '1', '1', 2, '3', '10 day', '04-04-2018', '../minimaladmin/images/propertyimg/388610841.jpg,../minimaladmin/images/propertyimg/516571052.jpg', 'w-308', '18,Dhanyata Society', 1, 3, '380015', 'A beautiful 1 bhk apartment in satellite, ahmedabad west. The property is a part of apartment. It is a resale property in a promising locality. This well-Designed new property is ready to move in. ', 'freeparking,placetoseat,Garden,gas,lift', 1, 'patat.lakhan56@gmail.com', '9574206930'),
(14, 'Sanskruti', 1, 1, 2, '', '18000', '800', '850', '3', '2', '1', 3, '2', 'Ready', '02-12-2017', '../minimaladmin/images/propertyimg/106811523.jpeg,../minimaladmin/images/propertyimg/831695564.jpeg', 'g-508', 'Sanskruti Complex', 1, 2, '380058', 'A beautiful 2 bhk apartment in bopal, ahmedabad west. The property is a part of ravi apartment. It is a resale property in a promising locality. This well-Designed new property is ready to move in. ', 'freeparking,placetoseat,Garden,gas,lift', 1, 'patat.lakhan56@gmail.com', '9574206930'),
(15, 'Sthapatya', 1, 1, 3, '', '19000', '800', '900', '4', '2', '1', 3, '8', 'Ready', '02-04-2018', '../minimaladmin/images/propertyimg/760498052.jpg,../minimaladmin/images/propertyimg/896026623.jpg', 'b-15', 'Sthapatya Apprtment', 1, 1, '380052', 'nice place appart near all food avalible\r\n3 bhk 19000 rent', 'freeparking,Garden,gas,lift', 2, 'jaimin@gmail.com', '9033879398'),
(16, 'Voxa', 2, 2, 5, '', '5500000', '500', '900', '3', '2', '0', 2, '0', '15 day', '02-04-2018', '../minimaladmin/images/propertyimg/867645276.jpg,../minimaladmin/images/propertyimg/90698247.jpg', 'fvoxa', 'Kailashpati', 1, 8, '380008', 'Residential house for sell.The property has 3 bedrooms with 2 bathrooms .I', 'freeparking,placetoseat,swimmingpool,Garden,gas,gym,lift', 3, 'dhyanam@gmail.com', '8200155238'),
(17, 'corextrime', 1, 3, 8, '', '30000', '1000', '1100', '2', '1', '1', 3, '8', 'Ready', '01-01-2018', '../minimaladmin/images/propertyimg/325347904.jpg', '806', 'Shivalik High Street', 1, 5, '380015', 'sale flat, located in satellite, ahmedabad west, is available. It is a ready to move in not furnished flat located in shantrunjay towers', 'freeparking,aircondition,placetoseat,lift', 3, 'dhyanam@gmail.com', '8200155238');

-- --------------------------------------------------------

--
-- Table structure for table `propertystatus`
--

CREATE TABLE IF NOT EXISTS `propertystatus` (
  `propertystatus_id` int(255) NOT NULL AUTO_INCREMENT,
  `propertystatus` varchar(255) NOT NULL,
  PRIMARY KEY (`propertystatus_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `propertystatus`
--

INSERT INTO `propertystatus` (`propertystatus_id`, `propertystatus`) VALUES
(1, 'For Rent'),
(2, 'For Sell');

-- --------------------------------------------------------

--
-- Table structure for table `p_category`
--

CREATE TABLE IF NOT EXISTS `p_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryname` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `p_category`
--

INSERT INTO `p_category` (`category_id`, `categoryname`) VALUES
(1, 'Appartment'),
(2, 'House'),
(3, 'Flat');

-- --------------------------------------------------------

--
-- Table structure for table `p_subcategory`
--

CREATE TABLE IF NOT EXISTS `p_subcategory` (
  `subcat_id` int(255) NOT NULL AUTO_INCREMENT,
  `category_id` int(255) NOT NULL,
  `subcategory` varchar(255) NOT NULL,
  PRIMARY KEY (`subcat_id`),
  KEY `cate_id` (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `p_subcategory`
--

INSERT INTO `p_subcategory` (`subcat_id`, `category_id`, `subcategory`) VALUES
(1, 1, '1 BHK Apartment'),
(2, 1, '2 BHK Apartment'),
(3, 1, '3 BHK Apartment'),
(4, 2, '1 BHK House'),
(5, 2, '2 BHK House'),
(6, 2, '3 BHK House'),
(7, 3, '1 BHK Flat'),
(8, 3, '2 BHK Flat'),
(9, 3, '3 BHK Flat');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE IF NOT EXISTS `signup` (
  `signup_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `c_password` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `user_type` varchar(255) NOT NULL,
  PRIMARY KEY (`signup_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`signup_id`, `name`, `email`, `password`, `c_password`, `mobile`, `user_type`) VALUES
(1, 'Lakhan', 'patat.lakhan56@gmail.com', 'lakhan@123', 'lakhan@123', '9574206930', 'Buyer'),
(2, 'Jaimin', 'jaimin@gmail.com', 'jaimin@123', 'jaimin@123', '9033879398', 'Builder'),
(3, 'Dhyanam', 'dhyanam@gmail.com', 'd@123456', 'd@123456', '8200155238', 'Agent'),
(4, 'Kashyap', 'kashyap@gmail.com', 'kp@1234', 'kp@1234', '8160783196', 'Builder');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE IF NOT EXISTS `slider` (
  `image_id` int(11) NOT NULL AUTO_INCREMENT,
  `message1` varchar(255) NOT NULL,
  `message2` varchar(255) NOT NULL,
  `imagename` varchar(255) NOT NULL,
  PRIMARY KEY (`image_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`image_id`, `message1`, `message2`, `imagename`) VALUES
(1, 'Welcome to', 'Homy', 'images/slider/58banner-slider-1.jpg'),
(2, 'Find your', 'Dream House', 'images/slider/87banner-slider-2.jpg'),
(3, 'Find your', 'Dream House', 'images/slider/12banner-slider-3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `visit`
--

CREATE TABLE IF NOT EXISTS `visit` (
  `visit_id` int(11) NOT NULL AUTO_INCREMENT,
  `guestid` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  PRIMARY KEY (`visit_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `area`
--
ALTER TABLE `area`
  ADD CONSTRAINT `area_ibfk_1` FOREIGN KEY (`cityid`) REFERENCES `city` (`cityid`);

--
-- Constraints for table `propertydetail`
--
ALTER TABLE `propertydetail`
  ADD CONSTRAINT `propertydetail_ibfk_2` FOREIGN KEY (`propertystatus_id`) REFERENCES `propertystatus` (`propertystatus_id`),
  ADD CONSTRAINT `propertydetail_ibfk_3` FOREIGN KEY (`category_id`) REFERENCES `p_category` (`category_id`),
  ADD CONSTRAINT `propertydetail_ibfk_4` FOREIGN KEY (`subcat_id`) REFERENCES `p_subcategory` (`subcat_id`),
  ADD CONSTRAINT `propertydetail_ibfk_5` FOREIGN KEY (`cityid`) REFERENCES `city` (`cityid`),
  ADD CONSTRAINT `propertydetail_ibfk_6` FOREIGN KEY (`area_id`) REFERENCES `area` (`area_id`),
  ADD CONSTRAINT `propertydetail_ibfk_7` FOREIGN KEY (`furnished_id`) REFERENCES `furnished` (`furnished_id`);

--
-- Constraints for table `p_subcategory`
--
ALTER TABLE `p_subcategory`
  ADD CONSTRAINT `p_subcategory_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `p_category` (`category_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
