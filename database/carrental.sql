-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2017 at 08:10 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `carrental`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
`id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2017-07-05 11:02:08');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE IF NOT EXISTS `tblbooking` (
`id` int(11) NOT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `VehicleId` int(11) DEFAULT NULL,
  `FromDate` varchar(20) DEFAULT NULL,
  `ToDate` varchar(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`id`, `userEmail`, `VehicleId`, `FromDate`, `ToDate`, `message`, `Status`, `PostingDate`) VALUES
(1, 'test@gmail.com', 2, '22/06/2017', '25/06/2017', 'booking for a weekend getaway', 1, '2017-06-19 20:15:43');



-- --------------------------------------------------------

--
-- Table structure for table `tblbrands`
--

CREATE TABLE IF NOT EXISTS `tblbrands` (
`id` int(11) NOT NULL,
  `BrandName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `tblbrands`
--

INSERT INTO `tblbrands` (`id`, `BrandName`, `CreationDate`, `UpdationDate`) VALUES
(1, 'FORD', '2019-05-1 00:00:00', NULL),
(2, 'BMW', '2019-05-1 00:00:00', NULL),
(3, 'AUDI', '2019-05-1 00:00:00', NULL),
(4, 'NISSAN', '2019-05-1 00:00:00', NULL),
(5, 'NEXA', '2019-05-1 00:00:00', NULL),
(6, 'TATA', '2019-05-1 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE IF NOT EXISTS `tblcontactusinfo` (
`id` int(11) NOT NULL,
  `Address` tinytext,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'AUTOMAX CAR test demo																									', 'automax@test.com', '8585233222');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE IF NOT EXISTS `tblcontactusquery` (
`id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(1, 'Anuj Kumar', 'webhostingamigo@gmail.com', '2147483647', 'what an amzing site', '2017-06-18 10:03:07', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE IF NOT EXISTS `tblpages` (
`id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', '<P align=justify><FONT size=2><STRONG><FONT color=#990000>(1) ACCEPTANCE OF TERMS</FONT><BR><BR></STRONG><p>Welcome to automax@test.com!</p>

<p>These terms and conditions outline the rules and regulations for the use of AUTOMAX CAR RENTALS''s Website, located at https://www.automax_test.com.</p>

<p>By accessing this website we assume you accept these terms and conditions. Do not continue to use automax@test.com if you do not agree to take all of the terms and conditions stated on this page. Our Terms and Conditions were created with the help of the <a href="https://www.termsandconditionsgenerator.com">Terms And Conditions Generator</a> and the <a href="https://www.termsfeed.com">TermsFeed Generator</a>.</p>

<p>The following terminology applies to these Terms and Conditions, Privacy Statement and Disclaimer Notice and all Agreements: "Client", "You" and "Your" refers to you, the person log on this website and compliant to the Company’s terms and conditions. "The Company", "Ourselves", "We", "Our" and "Us", refers to our Company. "Party", "Parties", or "Us", refers to both the Client and ourselves. All terms refer to the offer, acceptance and consideration of payment necessary to undertake the process of our assistance to the Client in the most appropriate manner for the express purpose of meeting the Client’s needs in respect of provision of the Company’s stated services, in accordance with and subject to, prevailing law of Netherlands. Any use of the above terminology or other words in the singular, plural, capitalization and/or he/she or they, are taken as interchangeable and therefore as referring to same.</p>

<h3><strong>Cookies</strong></h3>

<p>We employ the use of cookies. By accessing automax@test.com, you agreed to use cookies in agreement with the AUTOMAX CAR RENTALS''s Privacy Policy.</p>

<p>Most interactive websites use cookies to let us retrieve the user’s details for each visit. Cookies are used by our website to enable the functionality of certain areas to make it easier for people visiting our website. Some of our affiliate/advertising partners may also use cookies.</p>

<h3><strong>License</strong></h3>

<p>Unless otherwise stated, AUTOMAX CAR RENTALS and/or its licensors own the intellectual property rights for all material on automax@test.com. All intellectual property rights are reserved. You may access this from automax@test.com for your own personal use subjected to restrictions set in these terms and conditions.</p>

<p>You must not:</p>
<ul>
    <li>Republish material from automax@test.com</li>
    <li>Sell, rent or sub-license material from automax@test.com</li>
    <li>Reproduce, duplicate or copy material from automax@test.com</li>
    <li>Redistribute content from automax@test.com</li>
</ul>

<p>This Agreement shall begin on the date hereof.</p>

<p>Parts of this website offer an opportunity for users to post and exchange opinions and information in certain areas of the website. AUTOMAX CAR RENTALS does not filter, edit, publish or review Comments prior to their presence on the website. Comments do not reflect the views and opinions of AUTOMAX CAR RENTALS,its agents and/or affiliates. Comments reflect the views and opinions of the person who post their views and opinions. To the extent permitted by applicable laws, AUTOMAX CAR RENTALS shall not be liable for the Comments or for any liability, damages or expenses caused and/or suffered as a result of any use of and/or posting of and/or appearance of the Comments on this website.</p>

<p>AUTOMAX CAR RENTALS reserves the right to monitor all Comments and to remove any Comments which can be considered inappropriate, offensive or causes breach of these Terms and Conditions.</p>

<p>You warrant and represent that:</p>

<ul>
    <li>You are entitled to post the Comments on our website and have all necessary licenses and consents to do so;</li>
    <li>The Comments do not invade any intellectual property right, including without limitation copyright, patent or trademark of any third party;</li>
    <li>The Comments do not contain any defamatory, libelous, offensive, indecent or otherwise unlawful material which is an invasion of privacy</li>
    <li>The Comments will not be used to solicit or promote business or custom or present commercial activities or unlawful activity.</li>
</ul>

<p>You hereby grant AUTOMAX CAR RENTALS a non-exclusive license to use, reproduce, edit and authorize others to use, reproduce and edit any of your Comments in any and all forms, formats or media.</p>

<h3><strong>Hyperlinking to our Content</strong></h3>

<p>The following organizations may link to our Website without prior written approval:</p>

<ul>
    <li>Government agencies;</li>
    <li>Search engines;</li>
    <li>News organizations;</li>
    <li>Online directory distributors may link to our Website in the same manner as they hyperlink to the Websites of other listed businesses; and</li>
    <li>System wide Accredited Businesses except soliciting non-profit organizations, charity shopping malls, and charity fundraising groups which may not hyperlink to our Web site.</li>
</ul>

<p>These organizations may link to our home page, to publications or to other Website information so long as the link: (a) is not in any way deceptive; (b) does not falsely imply sponsorship, endorsement or approval of the linking party and its products and/or services; and (c) fits within the context of the linking party’s site.</p>

<p>We may consider and approve other link requests from the following types of organizations:</p>

<ul>
    <li>commonly-known consumer and/or business information sources;</li>
    <li>dot.com community sites;</li>
    <li>associations or other groups representing charities;</li>
    <li>online directory distributors;</li>
    <li>internet portals;</li>
    <li>accounting, law and consulting firms; and</li>
    <li>educational institutions and trade associations.</li>
</ul>

<p>We will approve link requests from these organizations if we decide that: (a) the link would not make us look unfavorably to ourselves or to our accredited businesses; (b) the organization does not have any negative records with us; (c) the benefit to us from the visibility of the hyperlink compensates the absence of AUTOMAX CAR RENTALS; and (d) the link is in the context of general resource information.</p>

<p>These organizations may link to our home page so long as the link: (a) is not in any way deceptive; (b) does not falsely imply sponsorship, endorsement or approval of the linking party and its products or services; and (c) fits within the context of the linking party’s site.</p>

<p>If you are one of the organizations listed in paragraph 2 above and are interested in linking to our website, you must inform us by sending an e-mail to AUTOMAX CAR RENTALS. Please include your name, your organization name, contact information as well as the URL of your site, a list of any URLs from which you intend to link to our Website, and a list of the URLs on our site to which you would like to link. Wait 2-3 weeks for a response.</p>

<p>Approved organizations may hyperlink to our Website as follows:</p>

<ul>
    <li>By use of our corporate name; or</li>
    <li>By use of the uniform resource locator being linked to; or</li>
    <li>By use of any other description of our Website being linked to that makes sense within the context and format of content on the linking party’s site.</li>
</ul>

<p>No use of AUTOMAX CAR RENTALS''s logo or other artwork will be allowed for linking absent a trademark license agreement.</p>

<h3><strong>iFrames</strong></h3>

<p>Without prior approval and written permission, you may not create frames around our Webpages that alter in any way the visual presentation or appearance of our Website.</p>

<h3><strong>Content Liability</strong></h3>

<p>We shall not be hold responsible for any content that appears on your Website. You agree to protect and defend us against all claims that is rising on your Website. No link(s) should appear on any Website that may be interpreted as libelous, obscene or criminal, or which infringes, otherwise violates, or advocates the infringement or other violation of, any third party rights.</p>

<h3><strong>Your Privacy</strong></h3>

<p>Please read Privacy Policy</p>

<h3><strong>Reservation of Rights</strong></h3>

<p>We reserve the right to request that you remove all links or any particular link to our Website. You approve to immediately remove all links to our Website upon request. We also reserve the right to amen these terms and conditions and it’s linking policy at any time. By continuously linking to our Website, you agree to be bound to and follow these linking terms and conditions.</p>

<h3><strong>Removal of links from our website</strong></h3>

<p>If you find any link on our Website that is offensive for any reason, you are free to contact and inform us any moment. We will consider requests to remove links but we are not obligated to or so or to respond to you directly.</p>

<p>We do not ensure that the information on this website is correct, we do not warrant its completeness or accuracy; nor do we promise to ensure that the website remains available or that the material on the website is kept up to date.</p>

<h3><strong>Disclaimer</strong></h3>

<p>To the maximum extent permitted by applicable law, we exclude all representations, warranties and conditions relating to our website and the use of this website. Nothing in this disclaimer will:</p>

<ul>
    <li>limit or exclude our or your liability for death or personal injury;</li>
    <li>limit or exclude our or your liability for fraud or fraudulent misrepresentation;</li>
    <li>limit any of our or your liabilities in any way that is not permitted under applicable law; or</li>
    <li>exclude any of our or your liabilities that may not be excluded under applicable law.</li>
</ul>

<p>The limitations and prohibitions of liability set in this Section and elsewhere in this disclaimer: (a) are subject to the preceding paragraph; and (b) govern all liabilities arising under the disclaimer, including liabilities arising in contract, in tort and for breach of statutory duty.</p>

<p>As long as the website and the information and services on the website are provided free of charge, we will not be liable for any loss or damage of any nature.</p></FONT>'),
(2, 'Privacy Policy', 'privacy', '<span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;"><h1>Privacy Policy</h1>


<p>Effective date: May 10, 2019</p>


<p>AUTOMAX CAR RENTAL ("us", "we", or "our") operates the https://www.automax@test.com website (the "Service").</p>

<p>This page informs you of our policies regarding the collection, use, and disclosure of personal data when you use our Service and the choices you have associated with that data. Our Privacy Policy  for AUTOMAX CAR RENTAL is created with the help of the <a href="https://www.freeprivacypolicy.com/free-privacy-policy-generator.php">Free Privacy Policy Generator</a>.</p>

<p>We use your data to provide and improve the Service. By using the Service, you agree to the collection and use of information in accordance with this policy. Unless otherwise defined in this Privacy Policy, terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, accessible from https://www.automax@test.com</p>


<h2>Information Collection And Use</h2>

<p>We collect several different types of information for various purposes to provide and improve our Service to you.</p>

<h3>Types of Data Collected</h3>

<h4>Personal Data</h4>

<p>While using our Service, we may ask you to provide us with certain personally identifiable information that can be used to contact or identify you ("Personal Data"). Personally identifiable information may include, but is not limited to:</p>

<ul>
<li>Email address</li><li>First name and last name</li><li>Phone number</li><li>Address, State, Province, ZIP/Postal code, City</li><li>Cookies and Usage Data</li>
</ul>

<h4>Usage Data</h4>

<p>We may also collect information how the Service is accessed and used ("Usage Data"). This Usage Data may include information such as your computer''s Internet Protocol address (e.g. IP address), browser type, browser version, the pages of our Service that you visit, the time and date of your visit, the time spent on those pages, unique device identifiers and other diagnostic data.</p>

<h4>Tracking & Cookies Data</h4>
<p>We use cookies and similar tracking technologies to track the activity on our Service and hold certain information.</p>
<p>Cookies are files with small amount of data which may include an anonymous unique identifier. Cookies are sent to your browser from a website and stored on your device. Tracking technologies also used are beacons, tags, and scripts to collect and track information and to improve and analyze our Service.</p>
<p>You can instruct your browser to refuse all cookies or to indicate when a cookie is being sent. However, if you do not accept cookies, you may not be able to use some portions of our Service.</p>
<p>Examples of Cookies we use:</p>
<ul>
    <li><strong>Session Cookies.</strong> We use Session Cookies to operate our Service.</li>
    <li><strong>Preference Cookies.</strong> We use Preference Cookies to remember your preferences and various settings.</li>
    <li><strong>Security Cookies.</strong> We use Security Cookies for security purposes.</li>
</ul>

<h2>Use of Data</h2>
    
<p>AUTOMAX CAR RENTAL uses the collected data for various purposes:</p>    
<ul>
    <li>To provide and maintain the Service</li>
    <li>To notify you about changes to our Service</li>
    <li>To allow you to participate in interactive features of our Service when you choose to do so</li>
    <li>To provide customer care and support</li>
    <li>To provide analysis or valuable information so that we can improve the Service</li>
    <li>To monitor the usage of the Service</li>
    <li>To detect, prevent and address technical issues</li>
</ul>

<h2>Transfer Of Data</h2>
<p>Your information, including Personal Data, may be transferred to — and maintained on — computers located outside of your state, province, country or other governmental jurisdiction where the data protection laws may differ than those from your jurisdiction.</p>
<p>If you are located outside India and choose to provide information to us, please note that we transfer the data, including Personal Data, to India and process it there.</p>
<p>Your consent to this Privacy Policy followed by your submission of such information represents your agreement to that transfer.</p>
<p>AUTOMAX CAR RENTAL will take all steps reasonably necessary to ensure that your data is treated securely and in accordance with this Privacy Policy and no transfer of your Personal Data will take place to an organization or a country unless there are adequate controls in place including the security of your data and other personal information.</p>

<h2>Disclosure Of Data</h2>

<h3>Legal Requirements</h3>
<p>AUTOMAX CAR RENTAL may disclose your Personal Data in the good faith belief that such action is necessary to:</p>
<ul>
    <li>To comply with a legal obligation</li>
    <li>To protect and defend the rights or property of AUTOMAX CAR RENTAL</li>
    <li>To prevent or investigate possible wrongdoing in connection with the Service</li>
    <li>To protect the personal safety of users of the Service or the public</li>
    <li>To protect against legal liability</li>
</ul>

<h2>Security Of Data</h2>
<p>The security of your data is important to us, but remember that no method of transmission over the Internet, or method of electronic storage is 100% secure. While we strive to use commercially acceptable means to protect your Personal Data, we cannot guarantee its absolute security.</p>

<h2>Service Providers</h2>
<p>We may employ third party companies and individuals to facilitate our Service ("Service Providers"), to provide the Service on our behalf, to perform Service-related services or to assist us in analyzing how our Service is used.</p>
<p>These third parties have access to your Personal Data only to perform these tasks on our behalf and are obligated not to disclose or use it for any other purpose.</p>



<h2>Links To Other Sites</h2>
<p>Our Service may contain links to other sites that are not operated by us. If you click on a third party link, you will be directed to that third party''s site. We strongly advise you to review the Privacy Policy of every site you visit.</p>
<p>We have no control over and assume no responsibility for the content, privacy policies or practices of any third party sites or services.</p>


<h2>Children''s Privacy</h2>
<p>Our Service does not address anyone under the age of 18 ("Children").</p>
<p>We do not knowingly collect personally identifiable information from anyone under the age of 18. If you are a parent or guardian and you are aware that your Children has provided us with Personal Data, please contact us. If we become aware that we have collected Personal Data from children without verification of parental consent, we take steps to remove that information from our servers.</p>


<h2>Changes To This Privacy Policy</h2>
<p>We may update our Privacy Policy from time to time. We will notify you of any changes by posting the new Privacy Policy on this page.</p>
<p>We will let you know via email and/or a prominent notice on our Service, prior to the change becoming effective and update the "effective date" at the top of this Privacy Policy.</p>
<p>You are advised to review this Privacy Policy periodically for any changes. Changes to this Privacy Policy are effective when they are posted on this page.</p>


<h2>Contact Us</h2>
<p>If you have any questions about this Privacy Policy, please contact us:</p>
<ul>
        <li>By email: info@automax_support.com</li>
            <li>By visiting this page on our website: http://localhost/Online_Car/contact-us.php</li>
      
        <li>By phone number: 74185209630</li>
        </ul></span>'),
(3, 'About Us ', 'aboutus', '<span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;"><p>If you require any more information or have any questions about our site''s disclaimer, please feel free to contact us by email at info@automax_support.com</p>

<h2>Disclaimers for AUTOMAX CAR RENTAL</h2>

<p>All the information on this website - https://www.automax_test.com - is published in good faith and for general information purpose only. AUTOMAX CAR RENTAL does not make any warranties about the completeness, reliability and accuracy of this information. Any action you take upon the information you find on this website (AUTOMAX CAR RENTAL), is strictly at your own risk. AUTOMAX CAR RENTAL will not be liable for any losses and/or damages in connection with the use of our website. Our Disclaimer was generated with the help of the <a href="https://www.disclaimergenerator.net/">Disclaimer Generator</a> and the <a href="https://www.termsandcondiitionssample.com">Terms and Conditions Template</a>.</p>

<p>From our website, you can visit other websites by following hyperlinks to such external sites. While we strive to provide only quality links to useful and ethical websites, we have no control over the content and nature of these sites. These links to other websites do not imply a recommendation for all the content found on these sites. Site owners and content may change without notice and may occur before we have the opportunity to remove a link which may have gone bad.</p>

<p>Please be also aware that when you leave our website, other sites may have different privacy policies and terms which are beyond our control. Please be sure to check the Privacy Policies of these sites as well as their "Terms of Service" before engaging in any business or uploading any information.</p>

<h2>Consent</h2>

<p>By using our website, you hereby consent to our disclaimer and agree to its terms.</p>

<h2>Update</h2>

<p>Should we update, amend or make any changes to this document, those changes will be prominently posted here.</p></span>'),
(11, 'FAQs', 'faqs', '                                                           <span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;"><p>If you have any questions about us, please contact us:</p>
<ul>
        <li>By email: info@automax_support.com</li>
            <li>By visiting this page on our website: http://localhost/Online_Car/contact-us.php</li>
      
        <li>By phone number: 74185209630</li>
        </ul> &nbsp; &nbsp;info@automax.com, &nbsp; &nbsp;  74 , Shree Sai Mathura Parsad Chs, Paradise Cinema Lane, Mahim &nbsp; &nbsp; BANGALORE - 560001 , &nbsp; KARNATAKA ,INDIA &nbsp; &nbsp; dsfdsfds</span>');

--
-- Table structure for table `tblsubscribers`
--

CREATE TABLE IF NOT EXISTS `tblsubscribers` (
`id` int(11) NOT NULL,
  `SubscriberEmail` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tblsubscribers`
--

INSERT INTO `tblsubscribers` (`id`, `SubscriberEmail`, `PostingDate`) VALUES
(1, 'anuj.lpu1@gmail.com', '2017-06-22 16:35:32');

-- --------------------------------------------------------

--
-- Table structure for table `tbltestimonial`
--

CREATE TABLE IF NOT EXISTS `tbltestimonial` (
`id` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Testimonial` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbltestimonial`
--

INSERT INTO `tbltestimonial` (`id`, `UserEmail`, `Testimonial`, `PostingDate`, `status`) VALUES
(1, 'test@gmail.com', 'Test Test', '2017-06-18 07:44:31', 1),
(2, 'test@gmail.com', 'Testimonial', '2017-06-18 07:46:05', 1);
-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE IF NOT EXISTS `tblusers` (
`id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `EmailId`, `Password`, `ContactNo`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`) VALUES
(1, 'Anuj Kumar', 'webhostingamigo@gmail.com', 'f09df7868d52e12bba658982dbd79821', '09999857868', '03/02/1990', 'New Delhi', 'New Delhi', 'New Delhi', '2017-06-17 20:01:43', '2017-06-17 21:07:41'),
(2, 'Anuj Kumar', 'test@gmail.com', '5c428d8875d2948607f3e3fe134d71b4', '9999857868', '', 'New Delhi', 'Delhi', 'Delhi', '2017-06-17 20:03:36', '2017-06-26 19:18:14');

-- --------------------------------------------------------

--
-- Table structure for table `tblvehicles`
--

CREATE TABLE IF NOT EXISTS `tblvehicles` (
`id` int(11) NOT NULL,
  `VehiclesTitle` varchar(150) DEFAULT NULL,
  `VehiclesBrand` int(11) DEFAULT NULL,
  `VehiclesOverview` longtext,
  `PricePerDay` int(11) DEFAULT NULL,
  `FuelType` varchar(100) DEFAULT NULL,
  `ModelYear` int(6) DEFAULT NULL,
  `SeatingCapacity` int(11) DEFAULT NULL,
  `Vimage1` varchar(120) DEFAULT NULL,
  `Vimage2` varchar(120) DEFAULT NULL,
  `Vimage3` varchar(120) DEFAULT NULL,
  `Vimage4` varchar(120) DEFAULT NULL,
  `Vimage5` varchar(120) DEFAULT NULL,
  `AirConditioner` int(11) DEFAULT NULL,
  `PowerDoorLocks` int(11) DEFAULT NULL,
  `AntiLockBrakingSystem` int(11) DEFAULT NULL,
  `BrakeAssist` int(11) DEFAULT NULL,
  `PowerSteering` int(11) DEFAULT NULL,
  `DriverAirbag` int(11) DEFAULT NULL,
  `PassengerAirbag` int(11) DEFAULT NULL,
  `PowerWindows` int(11) DEFAULT NULL,
  `CDPlayer` int(11) DEFAULT NULL,
  `CentralLocking` int(11) DEFAULT NULL,
  `CrashSensor` int(11) DEFAULT NULL,
  `LeatherSeats` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `tblvehicles`
--

INSERT INTO `tblvehicles` (`id`, `VehiclesTitle`, `VehiclesBrand`, `VehiclesOverview`, `PricePerDay`, `FuelType`, `ModelYear`, `SeatingCapacity`, `Vimage1`, `Vimage2`, `Vimage3`, `Vimage4`, `Vimage5`, `AirConditioner`, `PowerDoorLocks`, `AntiLockBrakingSystem`, `BrakeAssist`, `PowerSteering`, `DriverAirbag`, `PassengerAirbag`, `PowerWindows`, `CDPlayer`, `CentralLocking`, `CrashSensor`, `LeatherSeats`, `RegDate`, `UpdationDate`) VALUES
(1, 'FORD MUSTANG GT', 1, 'Despite high tech updates, the Mustang is as crude and cool as ever. A muscle car, not a sports car, and all the better for it.', 3200, 'Petrol', 2015, 2, 'frdmstgt_1.jpg', 'frdmstgt_2.jpg', 'frdmstgt_3.jpg', 'frdmstgt_4.jpg', 'frdmstgt_5.jpg', 1, 1, 1, 1, 1, NULL, NULL, 1, 1, 1, 1, 1, '2019-05-02 01:19:53', '2019-05-10 00:00:00'),
(2, 'FORD ENDEAVOUR', 1, 'The top-spec Endeavour gets a 3.2-litre, 5-cylinder diesel engine good for 200PS @ 3000rpm and 470Nm @ 1750-2500rpm. This engine is only offered with a 6-speed automatic transmission and 4x4. ... However, the Ford Endeavour is a heavy SUV. The top-spec model weighs about 2.4 tons.', 2500, 'Diesel', 2016, 7, 'frdendvr_1.jpg', 'frdendvr_2.jpg', 'frdendvr_3.jpg', 'frdendvr_4.jpg', 'frdendvr_5.jpg', 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, NULL, '2019-05-02 01:19:53', '2019-05-10 00:00:00'),
(3, 'FORD FIGO TITANIUM', 1, 'The New Ford Figo is designed to perfectly fit in your smart world. Its energetic design and powerful engine are always ready to fuel your fast-paced lifestyle.', 1800, 'CNG', 2017, 5, 'frdfgtt_1.jpeg', 'frdfgtt_2.jpg', 'frdfgtt_3.jpg', 'frdfgtt_4.jpg', 'frdfgtt_15.jpg', 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, NULL, 1, '2019-05-02 01:19:53', '2019-05-10 00:00:00'),
(4, 'BMW X SERIES', 2, ' The world is full of possibilities – and the BMW X models provide you with the means to explore them. With the clear seating position, the intelligent BMW xDrive all-wheel drive system and the economical engines you will find the vehicle for every moment of your life in a BMW X model.', 3000, 'Diesel', 2016, 5, 'bmwX_1.png', 'bmwX_2.jpeg', 'bmwX_3.jpg', 'bmwX_4.jpg', 'bmwX_5.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL, '2019-05-02 00:00:00', '2019-05-10 00:00:00'),
(5, 'BMW 1 SERIES', 2, 'The BMW 1 Series is a range of subcompact executive cars (C-segment) manufactured by BMW since 2004. It is the successor to the BMW 3 Series Compact and is currently in its second generation. The first generation was produced in hatchback, coupe and convertible body styles.', 2800, 'CNG', 2017, 5, 'bmw1_1.jpeg', 'bmw1_2.jpg', 'bmw1_3.jpg', 'bmw1_4.jpg', 'bmw1_5.jpg', 1, 1, 1, 1, 1, 1, NULL, 1, 1, 1, NULL, NULL, '2019-05-02 00:00:00', '2019-05-10 02:00:39'),
(6, 'BMW 3 Series', 2, 'The BMW 3 Series models combine the joy of driving and practicality for daily use, ranging from the BMW 3 Series Sedan', 2000, 'Petrol', 2015, 5, 'bmw3_1.jpg', 'bmw3_2.jpg', 'bmw3_3.jpg', 'bmw3_4.jpg', 'bmw3_5.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2019-05-1 00:00:00', '2019-05-10 00:00:00'),
(7, 'NISSAN GTR', 4, 'The R35 Nissan GT-R is Nissan finest hour, and almost makes up for the Micra. A four-seater two-door with a decent boot and four-wheel drive that is mightily rear-biased. ... But it is not enough for Nissan: it is to get Nismo branding and become even faster.', 3000, 'Petrol', 2015, 4, 'nsgtr_1.jpg', 'nsgtr_2.jpg', 'nsgtr_3.jpg', 'nsgtr_4.jpg', 'nsgtr_5.png', 1, 1, 1, 1, 1, 1, NULL, NULL, 1, 1, 1, 1, '2019-05-1 00:00:00', '2019-05-10 00:00:00'),
(8, 'NISSAN SUNNY', 4, 'Nissan Sunny mid-size sedan. (Image: Siddharth Safaya/News18.com) ... Apart from the practicality, the Nissan Sunny is also a fun to drive car, thanks to its 1.5-litre diesel engine that produces 85 BHP of power and is mated to a 5-speed manual gearbox.', 1800, 'Diesel', 2016, 5, 'nssny_1.jpg', 'nssny_2.jpeg', 'nssny_3.jpg', 'nssny_4.jpg', 'nssny_5.jpg', 1, NULL, 1, 1, 1, 1, NULL, NULL, 1, 1, 1, 1, '2019-05-1 00:00:00', '2019-05-10 00:00:00'),
(9, 'NISSAN MICRA', 4, 'Nissan Micra Engine & Transmission: The Micra can be had with 1.2-litre, 3-cylinder (77PS/104Nm) petrol engine and a 1.5-litre, 4-cylinder (64PS/160Nm) diesel. ... Here are the fuel economy figures of the Nissan Micra: Petrol CVT- 19.15kmpl. Diesel MT- 23.19kmpl.', 1500, 'CNG', 2017, 5, 'nsmcr_1.jpg', 'nsmcr_2.jpg', 'nsmcr_3.jpg', 'nsmcr_4.jpg', 'nsmcr_5.jpg', 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL, '2019-05-1 00:00:00', '2019-05-10 00:00:00'),
(10, 'AUDI A2', 3, 'the Audi A2 (internally designated Typ 8Z) is a compact MPV-styled supermini car, with a five-door hatchback body style and four or five seats, produced by the German manufacturer Audi from November 1999 to August 2005.', 2000, 'Petrol', 2015, 5, 'audia2_1.jpg', 'audia2_2.jpg', 'audia2_3.jpg', 'audia2_4.jpg', 'audia2_5.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL, '2019-05-1 00:00:00', '2019-05-10 00:00:00'),
(11, 'AUDI A6', 3, 'A new Audi saloon, in size L to the A8s XL, A4s M and A3s S. Its maker claims the eighth-generation A6 is a multi-talent in the luxury class that brings numerous innovations to the segment…in terms of digitisation, comfort and sportiness', 2500, 'Diesel', 2016, 5, 'audia6_1.png', 'audia6_2.jpg', 'audia6_3.jpg', 'audia6_4.jpg', 'audia6_5.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2019-05-1 00:00:00', '2019-05-10 00:00:00'),
(12, 'AUDI A4', 3, 'Audi A4 has proven to be a wündercar that outperforms its rivals in nearly all of our testing metrics and remains one of the nicest-driving entry-luxury ...', 3000, 'CNG', 2017, 5, 'audia4_1.jpg', 'audia4_2.jpg', 'audia4_3.jpg', 'audia4_4.jpg', 'audia4_5.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, '2019-05-1 00:00:00', '2019-05-10 00:00:00'),
(13, 'NEXA IGNIS', 5, ' Maruti Suzukis Ignis is a compact crossover; simply, a hatchback with some SUV like traits. This small Maruti is designed to appeal to the youth and has been styled and designed to be attractive and affordable.', 1800, 'Petrol', 2016, 4, 'nxigns_1.png', 'nxigns_2.jpg', 'nxigns_3.jpeg', 'nxigns_4.jpg', 'nxigns_5.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL, '2019-05-1 00:00:00', '2019-05-10 00:00:00'),
(14, 'NEXA  BALENO', 5, 'Under the hood, the Baleno is powered by a 1.2-litre petrol engine that generates 84bhp of power and 140Nm of torque. The diesel on the other hand gets a 1.3-litre engine that generates 75bhp of power and 190Nm of torque. Both the engines get a five speed manual as standard, while the petrol offers a CVT option.', 2000, 'Diesel', 2017, 5, 'nxblno_1.jpg', 'nxblno_2.jpg', 'nxblno_3.jpg', 'nxblno_4.jpg', 'nxblno_5.jpg', 1, 1, 1, 1, 1, 1, NULL, 1, 1, 1, NULL, NULL, '2019-05-1 00:00:00', '2019-05-10 00:00:00'),
(15, 'NEXA CIAZ', 5, 'The Maruti Ciaz comes with a new 1.5-litre petrol and diesel engines as well as the existing 1.3-litre diesel motor. ... Coupled with a mild-hybrid tech, the Ciaz petrol returns 21.56kmpl (MT) and 20.28kmpl (AT), while the diesel engine has a milrage at 28.09kmpl.', 2200, 'CNG', 2017, 5, 'nxcz_1.jpg', 'nxcz_2.jpg', 'nxcz_3.jpg', 'nxcz_4.jpg', 'nxcz_5.jpg', 1, 1, 1, 1, 1, 1, NULL, NULL, 1, 1, 1, 1, '2019-05-1 00:00:00', '2019-05-10 00:00:00'),
(16, 'TATA TIAGO', 6, 'Tata Tiago Engine and Mileage: The Tiago is available with two engine options: a 1.2-litre (85PS/114Nm) petrol engine and a 1.05-litre (70PS/140Nm) diesel motor.', 1700, 'Petrol', 2017, 5, 'tatgo_1.jpg', 'tatgo_2.jpg', 'tatgo_3.jpg', 'tatgo_4.jpg', 'tatgo_5.jpg', 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2019-05-1 00:00:00', '2019-05-10 00:00:00'),
(17, 'TATA NEXON', 6, 'Tata Nexon Powertrain: The Nexon can be had with either a 1.2-litre turbocharged petrol engine, or a 1.5-litre turbocharged diesel engine.', 2200, 'Diesel', 2017, 6, 'tatnxn_1.jpg', 'tatnxn_2.jpg', 'tatnxn_3.jpg', 'tatnxn_4.jpg', 'tatnxn_5.jpg', 1, 1, 1, 1, 1, 1, NULL, 1, 1, 1, 1, NULL, '2019-05-1 00:00:00', '2019-05-10 00:00:00'),
(18, 'TATA SAFARI', 6, '', 2000, 'CNG', 2016, 6, 'tatsfri_1.jpg', 'tatsfri_2.jpg', 'tatsfri_3.jpg', 'tatsfri_4.jpg', 'tatsfri_5.jpg', 1, 1, 1, 1, 1, 1, NULL, 1, 1, 1, 1, NULL, '2019-05-1 00:00:00', '2019-05-10 00:00:00');


--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbrands`
--
ALTER TABLE `tblbrands`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tblbrands`
--
ALTER TABLE `tblbrands`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
