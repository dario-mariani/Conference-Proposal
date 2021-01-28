-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2020 at 05:34 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `conference proposal`
--

-- --------------------------------------------------------

--
-- Table structure for table `audience`
--

CREATE TABLE `audience` (
  `AudienceID` int(11) NOT NULL,
  `AudienceType` varchar(255) NOT NULL
) ENGINE=Aria DEFAULT CHARSET=utf8;

--
-- Dumping data for table `audience`
--

INSERT INTO `audience` (`AudienceID`, `AudienceType`) VALUES
(1, 'Academic Libraries'),
(2, 'Higher Education'),
(3, 'Makerspaces'),
(4, 'K-12 Education'),
(5, 'Public Libraries'),
(6, 'School Libraries'),
(7, 'Special Libraries'),
(8, 'Museums'),
(9, 'IT'),
(10, 'Health Science Libraries'),
(11, 'Social Emotion Learning');

-- --------------------------------------------------------

--
-- Table structure for table `employers`
--

CREATE TABLE `employers` (
  `EmpID` int(11) NOT NULL,
  `EmpName` varchar(255) NOT NULL,
  `OrgID` int(11) NOT NULL
) ENGINE=Aria DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employers`
--

INSERT INTO `employers` (`EmpID`, `EmpName`, `OrgID`) VALUES
(1, 'Cajon Valley', 3),
(2, 'California State University, Fullerton', 1),
(3, 'City College of San Francisco', 1),
(4, 'College of Charleston', 1),
(5, 'Collin College', 1),
(6, 'DePaul University', 1),
(7, 'Fort Worth Public Library', 2),
(8, 'George Brown College', 1),
(9, 'Hillsdale Middle School', 3),
(10, 'Indiana University', 1),
(11, 'Kings County Library', 2),
(12, 'Lake County Library', 2),
(13, 'Lawrence University', 1),
(14, 'Miami University', 1),
(15, 'Middle Tennessee State University', 1),
(16, 'Moreno Valley College', 1),
(17, 'National University Library ', 1),
(18, 'Neil Squire Society\'s Makers Making Change', 4),
(19, 'New College of Florida', 1),
(20, 'New York Public Library', 2),
(21, 'New York University', 1),
(22, 'Northern Arizona University', 1),
(23, 'Ohio University', 1),
(24, 'Pepperdine University', 1),
(25, 'Purdue University', 1),
(26, 'Regallium Consulting', 5),
(27, 'San Francisco State University', 1),
(28, 'San Jose State University ', 1),
(29, 'Solano County Library', 2),
(30, 'The Brandeis School of San Francisco', 3),
(31, 'Town of Brookline Public Schools', 3),
(32, 'UC Berkeley', 1),
(33, 'UC Riverside', 1),
(34, 'UC San Diego', 1),
(35, 'UC San Francisco', 1),
(36, 'University of Arizona', 1),
(37, 'University of La Verne', 1),
(38, 'University of Michigan', 1),
(39, 'University of North Carolina', 1),
(40, 'University of Oregon', 1),
(41, 'University of Redlands', 1),
(42, 'University of Toronto Scarborough', 1),
(43, 'University of Wyoming', 1),
(44, 'Washington College', 1);

-- --------------------------------------------------------

--
-- Table structure for table `formats`
--

CREATE TABLE `formats` (
  `FormatID` int(11) NOT NULL,
  `FormatName` varchar(255) NOT NULL,
  `FormatLength` int(11) NOT NULL DEFAULT 0
) ENGINE=Aria DEFAULT CHARSET=utf8;

--
-- Dumping data for table `formats`
--

INSERT INTO `formats` (`FormatID`, `FormatName`, `FormatLength`) VALUES
(1, 'Panel Discussion', 45),
(2, 'Pre-Conference Workshop', 180),
(3, 'Presentation', 20),
(4, 'Roundtable Discussion', 45),
(5, 'Workshop Only', 45);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `JobID` int(11) NOT NULL,
  `JobTitle` varchar(255) NOT NULL
) ENGINE=Aria DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`JobID`, `JobTitle`) VALUES
(1, 'Acquisitions Technician'),
(2, 'Art Professor'),
(3, 'Artist'),
(4, 'Arts & Systems Librarian'),
(5, 'Assistant Director Digital Media Services'),
(6, 'Assistant Manager Library Technology'),
(7, 'Assistant Professor'),
(8, 'Assistant Professor of Art Sculpture'),
(9, 'Assistant Professor of Interior Architecture'),
(10, 'Assistant Professor of Undergraduate Psychology'),
(11, 'Associate Librarian '),
(12, 'Associate Librarian of Systems, Metadata & Assessment'),
(13, 'Branch Manager'),
(14, 'Business Librarian'),
(15, 'CEO'),
(16, 'Community Coordinator'),
(17, 'Community/Citizen Science Resident'),
(18, 'Creation and Innovation Services Librarian'),
(19, 'Creativity and Outreach Librarian'),
(20, 'Creat\'R Lab Student Electronics Assistant'),
(21, 'CTE Laboratory Technician'),
(22, 'Curriculum Designer '),
(23, 'Design Lab Intern'),
(24, 'Digital Media Lab Manager'),
(25, 'Digital Services Librarian '),
(26, 'Director of Branch Libraries '),
(27, 'Director of CATalyst Studios'),
(28, 'Director of Digital Media Services'),
(29, 'Director of Research Services'),
(30, 'Director STEM Innovation Center & Makerspace'),
(31, 'Engineering Technology Information Specialist'),
(32, 'Experiential Learning Librarian'),
(33, 'Faculty Child Development Department'),
(34, 'Faculty Director'),
(35, 'Head of Collections Assessment & Access'),
(36, 'Head of Library Information Technology'),
(37, 'Instruction Coordinator'),
(38, 'Instructional Coach'),
(39, 'Interim Coordinating Director for Specialized Collections'),
(40, 'Lead Instructional Designer'),
(41, 'Lead Student Assistant'),
(42, 'Learning Center Assistant'),
(43, 'Librarian'),
(44, 'Librarian for Emerging Technology and Digital Projects'),
(45, 'Library Assistant'),
(46, 'Library Communication Specialist'),
(47, 'Library Technician '),
(48, 'Library Technology Coordinator'),
(49, 'LLC Web Support & Outreach '),
(50, 'Maker Coordinator and Faculty'),
(51, 'Maker Educator '),
(52, 'Maker Services Coordinator'),
(53, 'Makers Lab Designer'),
(54, 'Makers Lab Manager'),
(55, 'Makers Lab Technician'),
(56, 'Makerspace Arts & Media Lead'),
(57, 'Makerspace Assistant'),
(58, 'Makerspace Coordinator'),
(59, 'Makerspace Education Service Lead'),
(60, 'Makerspace Librarian'),
(61, 'Makerspace Project Supervisor'),
(62, 'Makerspace Student Assistant'),
(63, 'Manager Library Technology'),
(64, 'Media Resource Specialist '),
(65, 'Middle School Social Studies Teacher'),
(66, 'Principal '),
(67, 'Public Education Specialist '),
(68, 'Reference & Learning Technologies Librarian '),
(69, 'Research Librarian'),
(70, 'Scholars Studio Librarian'),
(71, 'School of Information and Library Science'),
(72, 'Student Aide II â€“ CTE'),
(73, 'Student Research Fellow'),
(74, 'Supervising Librarian'),
(75, 'Systems Administrator'),
(76, 'Teacher Prep Center Coordinator '),
(77, 'Technology and Media Production Specialist'),
(78, 'Technology Labs Coordinator'),
(79, 'Director of Asian American and Asian Resource and Cultural Center');

-- --------------------------------------------------------

--
-- Table structure for table `organizations`
--

CREATE TABLE `organizations` (
  `OrgID` int(11) NOT NULL,
  `OrgType` varchar(255) NOT NULL
) ENGINE=Aria DEFAULT CHARSET=utf8;

--
-- Dumping data for table `organizations`
--

INSERT INTO `organizations` (`OrgID`, `OrgType`) VALUES
(1, 'University/College'),
(2, 'Public Library'),
(3, 'K-12 School(s)'),
(4, 'Non Profit'),
(5, 'Limited Liability Company');

-- --------------------------------------------------------

--
-- Table structure for table `presenters`
--

CREATE TABLE `presenters` (
  `PresenterID` int(11) NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `MiddleName` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) NOT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Bio` longtext DEFAULT NULL
) ENGINE=Aria DEFAULT CHARSET=utf8;

--
-- Dumping data for table `presenters`
--

INSERT INTO `presenters` (`PresenterID`, `FirstName`, `MiddleName`, `LastName`, `Email`, `Bio`) VALUES
(1, 'Aaron', NULL, 'Prenger', 'aprenger@nu.edu ', 'Aaron Prenger, a Navy veteran, is a full-time student at National University pursing a Bachelor of Science in Information Technology Management. He aids faculty at NU’s Library as a Student Research Fellow. Aaron has experience using the NU Library makerspace as a student and an employee. His professional interests include computer science, 3D printing, robot making, student outreach for makerspaces, and volunteering in his free time to help others. '),
(2, 'Abraham', NULL, 'Cifuentes', 'abraham.cifuentes@mvc.edu', 'Abraham attended Moreno Valley College where he obtained an associate degree in Computer Science in the year 2016. He then transferred to Arizona State University where he obtained a bachelor\'s in software engineering and a minor in Computer Information Systems. While in school at Arizona State he participated in Artificial Intelligence research with Google and Lyft for automated vehicles and human integrated robotics. During his university studies Abraham worked for 5 years as the Marketing and Media Coordinator for the TRIO Programs at Moreno Valley College. In the Fall of 2019, he joined the Career and Technical Education Department as the iMake Innovation Center\'s Learning Center Assistant and was recently promoted to CTE Laboratory Technician.'),
(3, 'Amelia', NULL, 'Vander Heide', 'azvanderheide@solanocounty.com', 'Amelia is a horror movie junkie and romance novel enthusiast with a not-so-secret passion for breaking down access barriers within librarians. She is currently a supervisor with Solano County and has worked as a librarian at various capacities including teen services, programming, and aboard a 39ft. mobile maker lab.'),
(4, 'Amy', NULL, 'Jiang', 'ajiang@laverne.edu', 'Amy Jiang holds an MLS from the University of North Carolina at Chapel Hill, MS in Computer Science from Southeastern University, BA of English Translation and Interpretation from Tianjin Foreign Studies University in China. She is the Library Technology Coordinator at the Wilson Library at the University of La Verne. (2012 to present) where she serves as ILS system administrator, founding director for the Wilson library makerspace. Amy has worked at Northwestern University as Digital Resources and Emerging Technology Librarian from 2004-2012.'),
(5, 'Amy', NULL, 'Patton', 'amy.patton@lakecountyca.gov ', NULL),
(6, 'Ande', NULL, 'Hearn', 'ahearn2@washcoll.edu', 'Brian and Ande co-founded the IDEAWORKS Makerspace and have been at its heart and soul since its inception in 2015.  Their curricular integration ranges from single session demos to semester long embedded co-teaching in maker-specific curriculum. They founded and advise a Makers Union student organization and have rolled out co-curricular programming that includes a 5-day Maker Boot Camp, and immersive year-long projects such as the Solar/Electric Boat Racing Team (1st place, 2019).  \nBoth have previously presented at MIRA:\n  • Laser Cutter - The Gateway Drug to your Makerspace - 2018\n  • The Value of a Curricular / Co-Curricular Circle - 2018\n  • Finding the Ideal CNC Tools for your Academic Makerspace \n     (pre-conference workshop) - 2019\n  • The Power of Neutrality in a Library Makerspace - 2019'),
(7, 'Andrew', NULL, 'Garnett-Cook', 'Andrew_cook@psbma.org', 'I has been teaching social studies for 21 years at the Heath School in Brookline, Massachusetts. My primary areas are U.S. History, Civics, and 7th Grade World Geography.'),
(8, 'Angela', 'M.', 'Vanden Elzen', 'angela.vandenelzen@lawrence.edu', 'Angela is the reference & learning technologies librarian who oversees the campus makerspace. '),
(9, 'Ann', NULL, 'Mason', 'masona@cajonvalley.net', 'Ann is a veteran teacher with thirty years of classroom experience. Three years ago she left the classroom to become an innovation coach with Google\'s Dynamic Learning Project at Hillsdale Middle School. The transition from coach to facilitator of the Makerspace fit perfectly with Ann\'s energetic and enthusiastic approach to learning. The Makerspace truly is her happy space.'),
(10, 'Anna', NULL, 'Speth', 'anna.speth@pepperdine.edu', 'Anna Speth is the librarian for emerging technology and digital projects at Pepperdine University. She holds a MLIS from Simmons University and a BA from Duke University. Speth co-directs the makerspace at Pepperdine and works on digital initiatives within the library and special collections.'),
(11, 'Annalise', NULL, 'Phillips', 'asphillips@berkeley.edu', 'Annalise has 12 years of experience in education, 7 of which have been in library and museum makerspaces. She has experience working with diverse audiences in varied settings including teaching high school English, managing the Makerspace at the New York Hall of Science, the first early childhood Fab Lab at the Bay Area Discovery Museum, and teaching a course on Making and Innovation at Sonoma State University. She is currently the Makerspace Education Service Lead at UC Berkeley, where she oversees the setup, maintenance and operation of the Moffitt Library Makerspace.'),
(12, 'Ashley', 'F.', 'Curran', 'Ashley.Curran@nyulangone.org', 'Ashley Curran has a master\'s degree in Library Science from Queens College, City University of New York and is currently the branch manager of the Lapidus Library at the New York University (NYU) Health Sciences Library. Ms. Curran has over 16 years of professional library experience in both the public library system and academic library system. Her work as a branch manager has imbued in her a keen understanding of user needs, which has helped her to predict potential roadblocks to user satisfaction. When not managing the library Ms. Curran enjoys travel, historical fiction and spending time with her family.'),
(13, 'Bel', NULL, 'Beeson', NULL, 'Bel Beeson has been a Children\'s Librarian for the past 3 years. She has a B. A. in Comparative Literature with an emphasis in Black Studies, and a MLIS from the University of Washington. She has worked as a pirate at the 826 Valencia tutoring center, and at the Bureau of Fearless Ideas, a creative writing center in Seattle. Bel teaches grades K-8 at The Brandeis school in everything from information literacy, to graphic novel making, to graphic design in Photoshop. She has developed a thriving program at the Brandeis School of San Francisco that merges creative writing, and book talking with SEL.'),
(15, 'Brianna', NULL, 'Marshall', 'brianna.marshall@ucr.edu', 'Brianna Marshall is the Director of Research Services at the UCR Library, where she oversees the Research Services department and Maker Services unit, which includes the Creat\'R Lab makerspace. '),
(17, 'Chris', NULL, 'Holthe', 'Chris.Holthe@nau.edu', 'Chris Holthe is the Experiential Learning Librarian at Northern Arizona University\'s Cline Library. Chris is responsible for overseeing all services and programming associated with the library\'s MakerLab and advanced media studios and is tasked with working alongside NAU staff and faculty in order to integrate experiential learning into the curriculum and to promote new experiences, technologies, and teaching methods across campus. Chris received his Masters in Library and Information Science from the University of Illinois Urbana-Champaign and previously served as the Training and Maker Services Manager at the University of Houston Libraries.'),
(16, 'Bridgett', 'Kathryn', 'Pride', 'BridgettKathryn@gmail.com', 'Bridgett Kathryn Pride is a reference librarian in the Manuscripts, Archives, and Rare Books Division of the Schomburg Center for Research in Black Culture. While she is currently a librarian with the New York Public Library, she has also worked in academic libraries, teaching students about zines, and makerspaces. During her spare time, Bridgett is a mixed media artist, a creator of zines, baker, and a crochet artisan. She is also a historian who studies American women and their intersectional identities with gender, race, and class in the 19th and 20th centuries. Currently her research covers the history of zine making in black communities as it pertains to activism and social justice. She is an alumnus of the University of La Verne.'),
(14, 'Brian', NULL, 'Palmer', 'bpalmer2@washcoll.edu', 'Brian and Ande co-founded the IDEAWORKS Makerspace and have been at its heart and soul since its inception in 2015.  Their curricular integration ranges from single session demos to semester long embedded co-teaching in maker-specific curriculum. They founded and advise a Makers Union student organization and have rolled out co-curricular programming that includes a 5-day Maker Boot Camp, and immersive year-long projects such as the Solar/Electric Boat Racing Team (1st place, 2019).  \nBoth have previously presented at MIRA:\n  • Laser Cutter - The Gateway Drug to your Makerspace - 2018\n  • The Value of a Curricular / Co-Curricular Circle - 2018\n  • Finding the Ideal CNC Tools for your Academic Makerspace \n     (pre-conference workshop) - 2019\n  • The Power of Neutrality in a Library Makerspace - 2019\n\nBrian also has presented at Educause (2007) and is co-author of 63 Ready-to-Use Maker Projects (2018).'),
(18, 'Chris', NULL, 'Novak', 'cnovak@sfsu.edu ', NULL),
(19, 'Christina', NULL, 'Ferrari', 'christina.ferrari@georgebrown.ca ', 'Christina contributed to the operations and promotion of the UTSC Library Makerspace before its official opening in October 2016, until late 2019. Christina trained new members of the Makerspace on its equipment and technology, and worked directly with them on how to use the Makerspace’s resources. During her time in the space, she witnessed first-hand how access to emerging technology helped users to further their knowledge, and engage in unique projects. '),
(20, 'Dane', 'Alexander', 'Giuffre', 'Dane.Giuffre@nyulangone.org', 'Dane Alexander Giuffre has a Liberal Arts Bachelor Degree from Pace University and is a Library Assistant IV at the New York University (NYU) Health Sciences Library. With a collective 8 years in customer service Mr. Giuffre believes in open communication, collaborative problem solving, and meaningful accountability. These, to him, are the key components of human interaction, and as such they are essential to providing emotionally intelligent customer service. Mr. Giuffre also loves filmmaking, photography, and other visual arts in his fleeting downtime, always on the hunt for a new story to observe or create.'),
(21, 'Daniel', 'J.', 'Harper', 'dharper1@ohio.edu', 'Daniel J. Harper, MID, PhD, is assistant professor of interior architecture at Ohio University. Following a nearly two decades–long career as a practicing designer, Harper has held various positions with the Interior Design Educators Council, including past regional chair for the Midwest and associate editor of the IDEC Exchange. Harper is an active member of the American Society of Interior Designers. His research interests include the design of educational spaces, work styles and workplace strategy, and higher education pedagogy and practices. He has presented both nationally and internationally at many conferences.\n\nKaty B. Mathuews, MA, MLIS, PhD, is head of collections assessment and access, and coordinating director of specialized collections at Ohio University\'s main campus. She is an executive board member of the Academic Library Association of Ohio, serving as its president in 2019–2020. Mathuews has authored over 20 scholarly and professional publications. Her research interests include academic library assessment, academic library\'s contribution to student success, library space, and understanding and supporting marginalized student groups. She has presented her work nationally and internationally at many conferences.\n'),
(22, 'Danielle', NULL, 'De Luna', 'Danielle.deluna@laverne.edu  ', NULL),
(23, 'Donnell', NULL, 'Layne', 'donnell.layne@mvc.edu', 'Mr. Donnell Layne is new to Moreno Valley College. As a leading-edge educator and technology executive, Mr. Layne is a wonderful addition to the community college space. Born and raised in Harlem, NY, Mr. Layne is lifelong New York Knicks fan. With a background in Information Technology, he completed his undergraduate work at Cornell University studying the African diaspora. After working in the industry for several years, Mr. Layne chose to return to school and completed his engineering work, graduating summa cum laude, from Northwestern University. He has been working in the computer and telecommunications field for close to 20 years with experience as a teacher, trainer, senior technical project manager, CEO and consultant. Mr. Layne is a Co-founder and Chief Operations Officer for Bridging The Gap, a non-profit organization, where he started the Nature, Technology and Tomorrow initiative dedicated to providing educational opportunities and experiences in technology for underrepresented populations in Chicago, IL. Mr. Layne joins us as the Director for the HSI Title III STEM grant at Moreno Valley College and looks forward to the amazing opportunities this will facilitate for the students.'),
(24, 'Dylan', NULL, 'Romero', 'dylan.romero@ucsf.edu', 'Dylan Romero manages the Makers Lab located in the UC San Francisco Library. Dylan supports both educational and creative applications of emerging technologies such as 3D printers, 3D scanners, and programmable electronics. He has worked in education since 2003 and has a BS in Business Administration and an MA in Instructional Technologies, both from San Francisco State University. Dylan is a champion of physical and digital spaces in the library environment where exploration, tinkering, and collaboration are strongly encouraged.'),
(25, 'Elena', NULL, 'Rodriguez', 'etrodrig@cofc.edu', 'Elena Rodriguez, Instruction Coordinator for Research and Instruction Services, College of Charleston Libraries obtained her Masters in Library and Information Science from Western University in 2013. Her research interests include embedded librarianship, the scholarship of teaching and learning, digital scholarship, and MLIS curriculum.'),
(26, 'Elizabeth', NULL, 'O\'Brien', 'elizabeth.obrien@utoronto.ca', 'Elizabeth has been a leader in the Library\'s Makerspace since its inception. Her passions include include learning through making and encouraging student innovation through design thinking approaches. She is currently pursuing her Master\'s of Education with an emphasis in adult education and community development.  '),
(27, 'Erica', NULL, 'Ervin', 'ervineri@umich.edu', 'Erica Ervin is the Technology and Media Production Specialist for the Shapiro Design Lab at the University of Michigan Library. Working for over 10 years in academic libraries  and in makerspaces for the past five. '),
(28, 'Erica', NULL, 'Gardner', 'elgard@umich.edu', 'After graduating from engineering school, I felt very drained and uninspired. My local makerspace, the Ithaca Generator, reignited my creativity and reminded me why I wanted to be an engineer. After collaborating with a community science organization at my first job, I became interested in how makerspaces can empower citizen and community science groups. Luckily at the University of Michigan I have been able to combine these interests as a Citizen and Community Science Resident in the Shapiro Design Lab, where I have been tinkering with open-source microscopes, volunteering with Great Lakes environmental nonprofits, laser-cutting art, and learning about environmental justice. '),
(29, 'Fahed', NULL, 'Elkhatib', 'felkh002@ucr.edu ', 'Fahed Elkhatib is the Student Electronics Assistant at the Creat’R Lab and also serves as the STEM student representative on the Creat’R Lab Steering Committee.'),
(30, 'Gerardo', NULL, 'Serrano', 'gerardo.serrano@mvc.edu', 'Gerardo Serrano is an Alumni of MVC from 2000-2001, while he was finishing his 4 years as a United States Marine after being Honorably Discharged, he earned a Bachelor of Science Degree in Business Management through Westwood College of Technology. He used his B.S to open a small online computer business that he has been successfully managing for over 17 years. He has always had a passion for technology, he put his foot in the door at Norco College as a senior custodian for 5 years never giving up on a chance to get into the Technology side of the college. He was finally given a chance to come to MVC where he had the opportunity to work with the wonderful Staff of CTE. Being part of the iMake Innovation Center allows him to be able to help other people make their dreams and ideas come true. He finally feels like he has found his home.'),
(31, 'Ian', NULL, 'Garland', 'ian.garland@fortworthtexas.gov', 'For over 14 years Ian Garland has worked as an informal educator in both museums and the entertainment industry. During his time working at the Perot Museum of Nature and Science in Dallas, Texas, he had the opportunity to help start a brand new mobile Makerspace for the Dallas/Fort Worth community. This helped him establish a foothold in the Maker community, although his education from UNT was in Technical Theater with focus in light design. Today, he works at the Fort Worth Public Library as a Public Education Specialist in the Panther Lab Makerspace. No longer on wheels, he has had to find new ways of keeping guests coming back for new activities and themes. '),
(32, 'Jacob', NULL, 'Launder', 'launderj@cajonvalley.net', 'Jake Launder: Principal Hillsdale Middle School 2016 - Present, Google Dynamic Learning Project Administrator: 2017 - 2018; Jake is a driven, creative and innovative motivator. Jake works diligently to allow good people to do exceptional work to impact students.'),
(33, 'Jane', NULL, 'Crayton', 'jcrayton@uwyo.edu', 'Jane is currently the Makerspace Coordinator for the Coe Student Innovation Center, and Adjunct Instructor in College of Education at the University of Wyoming. Previously while at Colorado State University as STEAM 4-H Youth Development Agent, she was the Principal investigator of the BeeWise Project 2017 - 2018, director of Growing STEAM Makers, Making the Future and Adventure Day Camp 2016 - 2019 and the lead Producer of the Pueblo Mini Maker Faire in 2017. Jane was the founder of the Colorado Chapter of Dorkbot 2006 - 2012 and she currently contracts and collaborates on several grants at University of Colorado as a Digital Media Specialist and Immersive Educational Technologist for Rio Verde Archaeology since 2011.'),
(34, 'Jason', NULL, 'Kennedy', 'jason.kennedy@mvc.edu', 'Jason Kennedy is the Makerspace Project Supervisor with Moreno Valley College (MVC) â€“ Career and Technical Education (CTE) division. Previously he worked as an Employment Placement Coordinator and is in his third year at MVC. He has 10 plus years work experience in the Higher Education Industry. Many years were spent as a program advisor and college faculty member with emphasis on creating a teaching/research laboratory, career services, job placement and development, teaching, academic advising, student recruiting, new program - course development, grant writing and management, budget analysis (P&L), and also higher education college transfer. He has earned both a Masters and Bachelor\'s degree in Geography with emphasis in Geographic Information Systems (GIS) and also taken Ph.D. level Education courses. His hobbies include snowboarding and hiking with his family. '),
(35, 'Jay', NULL, 'Margalus', 'jmargal@cdm.depaul.edu', 'Jay Margalus is a computer scientist and designer with a focus in emerging technologies. He is the Faculty Director at DePaul University\'s Idea Realization Lab, and a teacher in DePaul\'s School of Design. Jay has been making makerspaces for over a decade in and around Chicago, and literally wrote the certification on making for Caterpillar, Inc'),
(36, 'Jennifer', NULL, 'Vanderpool', 'jennifervanderpool@gmail.com', 'Jennifer Nichols is an academic librarian and Director of CATalyst Studios, an interdisciplinary makerspace and VR/AR studio, at the University of Arizona Libraries.'),
(37, 'Jennifer', NULL, 'Nichols', 'jtn@email.arizona.edu', 'Jennifer Vanderpool is a Los Angles based social practice artist. She holds an Independent, Interdisciplinary Ph.D. in Art Critical Practice in Trauma Studies from the University of California at Santa Barbara. Some recent exhibitions include Flores Para El Trueque with Mercadito & Mentidero, Bogotá; Super Natural at the National Centre for Contemporary Art, Moscow; Garment Girl at Heritage Space, Hanoi. Her work has been awarded exhibition funding from the Andy Warhol Foundation for the Visual Arts, Los Angeles Department of Cultural Affairs, Ohio Arts Council, Kunstrådet: Danish Arts Council, Kulturrådet: Swedish Arts Council, and the National Endowment for the Arts.'),
(38, 'Jenny', NULL, 'Tai', 'Jenny.Tai@ucsf.edu', 'Jenny is currently the Makers Lab Technician at the UCSF Library Makers Lab and comes from a human-computer interaction (HCI) design background. Jenny has been supporting UCSF\'s community of makers with their projects since 2017 and has expertise in 3D printing, 3D modeling and other emerging technologies. She recently completed a professional certification in additive manufacturing from the MITxPro online learning program.'),
(39, 'Jie', NULL, 'Tian', 'jtian@fullerton.edu', 'Jie Tian has been a research librarian at California State University, Fullerton for over two decades. Her academic backgrounds are in English, American Studies, Creative Writing, and Library and Information Science. In recent years, she begins to pursue/combine the two art forms: poetry and artist books â€” to explore issues that she is passionate about: cultural sustainability, migration, and ecological arts.'),
(40, 'Jolanda-Pieta', NULL, 'van Arnhem', 'vanarnhemj@cofc.edu', 'Jolanda-Pieta van Arnhem, Scholars Studio Librarian, College of Charleston Libraries obtained her M.F.A. from Vermont College of Fine Arts and her M.L.I.S. from the University of South Carolina. Jolanda researches emerging technologies and develops instruction on information technology utilization and digital scholarship tools for research and classroom use in the arts and humanities.'),
(41, 'Jon', NULL, 'Oakes', 'jon.oakes@sjsu.edu', 'Jon joined SJSU in 2018 to help develop technology literacy to the students of San Jose State as well as help students creating high tech get noticed by industry in the Silicon Valley. Prior to joining SJSU he was a co-founder of Silicon Valley Virtual Reality which worked with startups and investors to create an ecosystem for VR business to get their start. Before VR came along, he was a life long maker, wood-worker and PC geek in private industry.'),
(42, 'Jordan', NULL, 'Nielsen', 'jnielsen@sfsu.edu', 'Jordan Nielsen is an Associate Librarian at San Francisco State University (SF State) where he supports the research, teaching, and learning of the students faculty in the Lam Family College of Business. Jordan has nearly a decade of experience as a business and entrepreneurship librarian, and he has conducted extensive research into the information seeking behavior of academic entrepreneurs. He has also worked in multiple academic library makerspaces, and he regularly collaborates on projects that connect the SF State Library\'s makerspace with the broader campus community.'),
(43, 'Joseph', NULL, 'Seibert', 'jseibert@nu.edu ', 'Joseph Seibert, a retired veteran, is a senior at National University currently pursuing a Bachelor of Science in Manufacturing Design Engineering. Joseph, in addition to assisting to the grand opening of the National University Library makerspace, has enjoyed volunteering his time to assist in workshops for The Girl Scouts of America, and lectured at various elementary schools in the greater area of San Diego on the importance of engineering to inspire future engineers. His knowledge of 3D printers and designing on CAD software has been an important asset to the library’s team. Being an excellent student and representative, Joseph was selected to serve as the student body to the San Diego County Engineering Council Awards in 2018. Joseph prides himself with upmost dedication and perseverance, providing a solid work ethic and strong commitment.'),
(44, 'Kathleen', NULL, 'White', NULL, 'Kathleen White (she/her) is past department chair of the Child Development Department at City College of San Francisco. She has many local, regional and statewide roles, including her current role as Coordinator for the Teacher Prep Center at CCSF. Kathleen is PI of CCSF\'s National Science Foundation Advanced Technological Education Grant \"Growing CTE and STEM Teachers.\" She is a founding member and long-term advocate for the California Teacher Prep Pathway, in which she creates pathways for students from community college to four year universities to address the shortage and meet the demand for next generation teachers across California.'),
(45, 'Katy', 'B.', 'Mathuews', 'mathuews@ohio.edu', 'Katy B. Mathuews, MA, MLIS, PhD, is head of collections assessment and access, and coordinating director of specialized collections at Ohio University\'s main campus. She is an executive board member of the Academic Library Association of Ohio, serving as its president in 2019–2020. Mathuews has authored over 20 scholarly and professional publications. Her research interests include academic library assessment, academic library\'s contribution to student success, library space, and understanding and supporting marginalized student groups. She has presented her work nationally and internationally at many conferences.'),
(46, 'Kelvin', NULL, 'Maestre', 'kelvin.a.maestre@lawrence.edu', 'Kelvin is a junior at Lawrence University and is the makerspace student assistant.'),
(47, 'Kevin', NULL, 'Tolley', 'kmtolley@solanocounty.com', 'Kevin holds a masters in Anthropology as well as being a librarian. His work with native populations has made him very interested in rural libraries and the uniquely underserved populations they create. He is currently a supervisor with Solano County in Rio Vista where he works to bring all the cool things to that small town.'),
(48, 'Kim', NULL, 'Wong', 'kfwong@sfsu.edu', NULL),
(49, 'Landon', NULL, 'Phillips', NULL, 'Landon Phillips is the co-director of the Genesis Lab and Lead Instructional Designer at Pepperdine University. He is the co-author of the grant that created the makerspace at Pepperdine, and holds a master\'s degree in learning technology. He has also taught several classes at Pepperdine, including sections on design and public speaking.'),
(50, 'Leanne', NULL, 'Nay', 'lnay@indiana.edu', 'Leanne Nay is IU’s Creativity and Outreach Librarian. As part of the Scholars’ Commons Department, her research interests include makerspaces, digital media, design thinking, and digital scholarship. Her recent projects include developing the Wells Library Mini Makerspace and working with colleagues at the University of Illinois to develop a train-the-trainer program for the HathiTrust Research Center. Prior to joining the IU Libraries, she worked as the Digital Literacy Librarian in the Martin County (FL) Library System. She received her Master of Library Science from IU in 2014, and also holds a Bachelor of Fine Arts in Film Production from Chapman University.'),
(51, 'Lisa', NULL, 'Regalla', 'lisa@regalliumconsulting.com', 'Lisa Regalla, PhD is CEO of Regallium Consulting and the Director of STEM Learning & Innovation at the Bay Area Discovery Museum. She leads a variety of STEM initiatives and manages partnerships nationwide that leverage current research to support the creative development of children. She has been the director of the Developing Makerspaces in Libraries throughout California Project, a partnership with the CA State Library and the Bay Area Discovery Museum from January 2018 until the present.'),
(52, 'Maggie', NULL, 'Melo', 'melo1@email.unc.edu', 'Maggie Melo’s research in the School of Information and Library Science at the University of North Carolina at Chapel Hill resides at the intersection of innovation, critical maker culture, and the development of equitable and inclusive collaborative learning spaces in academic libraries.'),
(53, 'Mary-Grace', NULL, 'Capobianco', 'marygrace.capobianco@utoronto.ca', 'Mary-Grace is a cross-appointed technician at the UTSC Library and has had various roles in the UTSC Library Makerspace including in the ideation and inauguration of the space. She has gravitated to guiding students in their creating and advocating for the Makerspace both on and off campus. She believes in the future possibilities of making in pedagogy and is ready to expand the scope of the UTSC Library Makerspace.'),
(54, 'Maura', NULL, 'Devlin-Clancy', 'mclancy@ccsf.edu', 'Maura Devlin-Clancy​ (she/her) is faculty and past department chair of the Computer Networking and Information Technology Department at City College of San Francisco. In this role, she lead the local CCC Maker Initiative, with funding from the CA State Chancellor\'s office to establish makerspaces and a maker community at CCSF and be part of the network of 23 makerspaces across the California community college system. Maura is currently Maker Coordinator and Faculty at CCSF and Co-PI of the NSF ATE Project \"Growing CTE and STEM Teachers,\" specifically focusing on makerspace as a strategy for teacher prep.'),
(55, 'Melanie', NULL, 'Ramiro', 'melanie.ramiro@ucr.edu ', 'Melanie Ramiro is the library\'s Communication Specialist, managing marketing and communications for all UCR Library programs. '),
(56, 'Melissa', NULL, 'Galvan', 'mgalvan@uoregon.edu', 'Raised in Los Angeles, Melissa is currently an undergraduate at the University of Oregon.   She is pursuing a double major in General Science and Ethnic Studies with a minor in Biology and will be seeking a career in medicine.  Melissa has been working for five years in the Allan Price Science Commons (PSC) and Research library. She is the lead student assistant for both the PSC and its DeArmond Makerspace.  After graduation, she hopes to enter the American Sign Language Interpreters Program at California State University Northridge and teach biology before applying to medical school.'),
(57, 'Melissa', NULL, 'Valenzuela', 'mvalenzuel61@student.rccd.edu', 'Melissa Valenzuela is currently in her second year at Moreno Valley college where she is completing her General Education with plans to transfer to Cal State San Bernardino where she will major in Cyber Security with a minor in teaching. She is currently a student employee for the Makerspace at Moreno Valley College where she has been able to put her skills into practice by learning to use different technical equipment and passing down what she has learned to others. Working at the makerspace has not only brought her many skills, but a decision in a career. She plans on pursuing a career in teaching Cyber Security for K-12. '),
(58, 'Michael', NULL, 'Wheaton', 'michael.wheaton@mtsu.edu', 'Michael Wheaton is an IT Manager at Middle Tennessee State University’s Walker Library with three decades of experience watching technology evolve on university campuses. Michael specializes in Library Technology and regularly researches makerspace technologies to showcase new tech trends and find new ways to improve upon his library\'s existing MakerSpace. Michael enjoys camping with his Boy Scout Troop where he can escape from the technology that fills his everyday life.'),
(59, 'Myra', NULL, 'Rodriguez', 'mrodriguez2@nu.edu ', 'Myra Rodriguez, a Navy veteran, is a full-time student at National University pursuing a Master of Business Administration. She aids faculty at NU’s Library as a Student Research Fellow. Myra has experience using the NU Library makerspace as a student and as an employee. Her professional interests include outreach for makerspaces, creativity through art, 3D printing, innovation through prototyping, business and marketing, project management, and entrepreneurship. '),
(60, 'Nancy', NULL, 'Cunningham', 'Nancyc@uoregon.edu', 'Nancy is the Director of Branch Libraries at the University of Oregon Libraries.  She oversees the management of five branch libraries including the Allan Price Science Commons (PSC) and Research library. She holds both a masters in library science and masters in business administration.   Nancy has over 20 years of experience in the management and supervision of public services and technology learning spaces in academic libraries in California, Texas, Florida, and now Oregon.'),
(61, 'Pamela', 'K.', 'Sari', 'Psari@purdue.edu ', 'Director, Asian American and Asian Resource and Cultural Center \nPurdue University\nPh.D., American Studies, Purdue University \nMA, American Studies, University of Wyoming \nBA, English/American Studies, Diponegoro University, Indonesia \nPamela K. Sari (she/her/hers) directs the Asian American and Asian Resource and Cultural Center (AAARCC) at Purdue University. Sari is an American Studies scholar specializes in the intersection of religion and transnational Asian/immigrant communities. She earned her Ph.D. in American Studies and graduate minors in Anthropology and Women\'s, Gender, and Sexuality Studies from Purdue University. As a graduate student, she was involved in Asian Pacific American Caucus and Student Steering Committee to propose the AAARCC. She was a 2019 Summer Research Associate at The Pluralism Project, Harvard University. '),
(62, 'Ray', NULL, 'Gonzalez', 'raymond.gonzalez@ucr.edu', 'Ray Gonzalez is the Maker Services Coordinator, responsible for overseeing the Creat\'R Lab.'),
(63, 'Ryan', NULL, 'Buyssens', 'rbuyssens@ncf.edu', 'Ryan Buyssens was born and raised near Detroit, MI; an environment that imparted a rich, lifelong influence from the automotive industry’s mechanized culture. He received his MFA at Cranbrook Academy of Art, is a recipient of the North Carolina Artist Fellowship and has exhibited his work internationally. Notable exhibitions that his work has been included in are: Kinetica - 2013 at Manifest Gallery, Cincinnati, OH; The 2014 World Maker Faire, New York City; the 2015 3D PrintShow in London, Paris and Dubai; and at the 2018 Currents New Media in Santa Fe, NM. His work can be found in the collections of Fidelity Investments, Ultimaker Corporation and The Orlando Science Center. Ryan is currently an Assistant Professor of Art at New College of Florida. As an artist, inventor and maker, he expresses his commentary on logic and progress through the manipulation of various media. Recently, he has been exploiting interactivity of kinematic objects and environments in order to create new experiences for participants. Ryan creates his devices with the use of electronic sensors and microcontrollers, computer design, 3D printing, CNC machining, laser-cutting and good-old-fashioned-patience.'),
(64, 'Sandee', NULL, 'Bisson', 'sbisson@sfbrandeis.org', 'Sandee Bisson has been teaching elementary and middle school students for more than 20 years. She has a B.A. in English Education from Plymouth State University and a M.Ed. in STEAM from The University of San Diego. The past five years she has developed and facilitated the Maker Education program at The Brandeis School of San Francisco and been a co-facilitator of The Ethical Creativity institute for Jewish educators. She was recently featured in a Medium article on intersection of making and design thinking with Stanford\'s d.school. You can see her work on Twitter @MrsBissonSF or on her blog MakeWonder.blog.'),
(65, 'Sanjeet', NULL, 'Mann', 'sanjeet_mann@redlands.edu', 'I am Arts & Systems Librarian at the University of Redlands, a private liberal arts university in southern California. My roles are to coordinate library systems and technology; to support faculty and students as subject librarian for Art, Creative Writing, Theatre and Music programs; and to work closely with campus IT. We recently partnered with IT on a makerspace initiative and a library system migration. I’m interested in researching and articulating critical perspectives on technology librarianship and my chapter exploring the nature of collaboration on makerspace projects has been published in Re-Making the Library Makerspace (Library Juice Press, 2020)'),
(66, 'Sarah', NULL, 'Nagle', 'pricesb@miamioh.edu', 'Sarah Nagle serves as Creation and Innovation Services Librarian at Miami University in Ohio. She supports transdisciplinary projects and curriculum relating to a wide range of experiential learning, maker, and innovation topics. Sarah’s research interests include inclusivity in the maker movement and how maker-centered learning can enhance learning both in informal environments and higher education. '),
(68, 'Sarah', NULL, 'Margalus', 'sarah@margalus.com', 'Sarah is an instructional coach, reading specialist, and maker. She uses her literacy expertise and knowledge of best instructional practices to increase student performance through presentations, coaching, and curriculum development. Sarah’s most recent consulting work includes providing assessment tools for STEAM learning and helping teachers integrate standards-based lessons into makerspaces. She works with her community through programming at SpaceLab in Mokena, IL. She also brings STEAM teachers together  through a program called Teacher Tuesdays in conjunction with the local University of Illinois Extension and Illinois Computer Educators. '),
(69, 'Scott', NULL, 'McAvoy', 'smcavoy@ucsd.edu', 'Scott McAvoy founded the UC San Diego Digital Media Lab, which offers free 3D printing, 3D scanning, and advanced media consultation services to its diverse academic/research community. He offers his time and expertise towards projects crossing nearly every field, fabricating custom research parts for scientific and medical use, and pioneering advanced data visualization methods.'),
(70, 'Scott', NULL, 'Drapeau', 'Scott.Drapeau@ucsf.edu', 'Scott is the Makers Lab Designer, and is working on his Masters in product design at San Francisco State University. He coordinates and supports health science related projects, such as reproducing anatomical models for surgical exploration. Scott\'s expertise are in product ideation, sketching, 3D modeling and printing, casting and silicone production, and wood working. '),
(71, 'Shukerrah', NULL, 'Palmer', 'shukerrahpalmer@gmail.com', 'My name is Shukerrah Palmer. I am a second-year Biology major at Moreno Valley Community College. I have been working in the Makerspace for five months. I specialize in 3D Printing, Laser Cutting, Vinyl Printing, Sewing, and Soldering. Some notable examples of unique things I have created are plastic advent calendars, wooden coasters, acrylic ornaments, succulent terrariums, window decorations for the holidays, bubble wands and vinyl-printed t-shirts. I plan to transfer this Fall to UC Riverside where I will continue to study Biology to become an Emergency Room Physician.'),
(67, 'Sarah', NULL, 'Huber', 'huber47@purdue.edu', 'Assistant Professor of Library Science Engineering Technology Information Specialist \nPurdue University\nMLIS, St. Catherine University \nMN School Library Media Specialist License, St. Catherine University \nAAS, Audio-Visual Digital Media, Minneapolis Community and Technical College \nBA, English, University of Minnesota\nSarah Huber is an assistant professor and engineering technology information specialist for the physical sciences, engineering, and technology division of the Purdue libraries. She is liaison to the Purdue Polytechnic Institute (PPI), which includes engineering technology and computer graphics technology, among other programs. In this position, she collaborates with the PPI faculty and students in the areas of information literacy, scholarly communication, data management, and research. Professor Huber’s research focuses on new systems of organization within libraries. Other research and teaching includes visual literacy and Maker programming.'),
(72, 'Sowmya', NULL, 'Rajendran', 'sjrajendran@collin.edu', 'Sowmya Rajendran is a Makerspace Assistant with Collin College and has helped manage the makerspace at McKinney Campus Library for the past two years. She is a graduate of UT Dallas and received her degree in Arts, Technology & Emerging Communication. She is also an avid maker and enjoys integrating digital fabrication concepts and technology into her artwork.'),
(73, 'Stef', NULL, 'Reamer', 'stefream@umich.edu', 'Stef Reamer is a senior in Anthropology at the University of Michigan. Stef has worked at the Shapiro Design Lab for 2 years specializing in 3D manufacturing and accessibility. She has 6 years of experience in 3D modeling and printing that she uses to help design and manufacture low cost, myoelectric prostheses for local children.\n'),
(74, 'Susan', NULL, 'Geffen', 'sgeffen@laverne.edu', 'Dr. Susan Geffen received her M.A. and Ph.D. degrees in Psychology from the University of Southern California. She spent two years as a postdoctoral fellow in the Speech Development Lab at the University of Calgary in Canada. She is an Assistant Professor of Psychology at the University of La Verne (2018 to present). Her research interests are broadly focused on the developmental progression of language acquisition and development, and the accompanying cognitive skills. She is the Director of the ULV Language and Cognition Lab, which explores the types of information infants, children and adults use to make categorical distinctions at both the sentence (e.g. statement vs. question) and word level (e.g. function [a, the] vs. content word [man, running]) in first and second language acquisition. An additional line of research focuses on evaluating the influence of multimodal information (e.g., visual and auditory cues) on language and cognition, including the ability to pay attention to one stimulus (e.g. visual) while ignoring another (e.g. auditory).'),
(75, 'Tamara', NULL, 'Evans', 'tamara.evans@kingscountylibrary.org  ', 'Tamara Evans of Kings County Library and Amy Patton of Lake County Library are both library professionals at rural California public libraries and participants in the Developing Makerspaces in Libraries throughout California. Over the last three years, with this project, they developed unique approaches to bring maker experiences to their communities.'),
(77, 'Valerie', NULL, 'Hackworth', 'valerie.hackworth@mtsu.edu', 'Valerie Hackworth is an IT Assistant Manager at Middle Tennessee State University’s Walker Library with 19 years of library experience, 9 of which are in Library Technology. She has a passion for learning and helping others learn to use old and new technologies. Valerie manages the Makerspace as well as Technology Services and recognizes a state of change leads to the future. In her free time she is a contemporary/modern dancer and expresses her art through creating choreography and performing with the Company.'),
(78, 'Zee', NULL, 'Kesler', 'zeek@neilsquire.ca', 'Zee Kesler is \"Maker Educator\", the founder of 2 mobile classrooms and is the Community Coordinator for Makers Making Change. In her role, Zee guides and empowers volunteer Chapter Leaders in connecting people with disabilities to makers in their commuity who can help make affordable assistive technologies by utilizing maker tools and skill sets. The goal of MMC is to create local community connections and provide assistive technologies to people with disabilities at 90% less cost than commercial devices.'),
(76, 'Tammera', NULL, 'Race', 'trace@ncf.edu', 'Tammera Race is a New College alum, earning her BA in Environmental Studies.  She earned an MS in Horticultural Science (University of Florida) and an MLIS (University of Wisconsin-Milwaukee).  She has been an academic librarian since 2010, bridging her science background with librarianship as a cataloger, instruction librarian for the sciences, and most recently as a systems, metadata, and assessment librarian.  Her publications include: A. Fairweather, C. Murgu, and T. Race, Diving into digital on a small scale: Digital curricula and technology-based education at the New College of Florida, Distance Learning, 16(2):1-13, 2019 and T. M. Race and S. Makri, Accidental information discovery: Cultivating serendipity in the digital age, Chandos Publishing, Oxford, 2016.  Her interest in makerspaces is grounded in her own valuable experiences with hands on learning and an appreciation for modern scholarship.');

-- --------------------------------------------------------

--
-- Table structure for table `presenters_jobs`
--

CREATE TABLE `presenters_jobs` (
  `JobID` int(11) NOT NULL,
  `PresenterID` int(11) NOT NULL
) ENGINE=Aria DEFAULT CHARSET=utf8;

--
-- Dumping data for table `presenters_jobs`
--

INSERT INTO `presenters_jobs` (`JobID`, `PresenterID`) VALUES
(73, 1),
(21, 2),
(74, 3),
(48, 4),
(47, 5),
(5, 6),
(65, 7),
(68, 8),
(58, 9),
(44, 10),
(59, 11),
(13, 12),
(43, 13),
(64, 13),
(28, 14),
(29, 15),
(69, 16),
(32, 17),
(36, 18),
(49, 19),
(45, 20),
(9, 21),
(56, 22),
(30, 23),
(54, 24),
(37, 25),
(60, 26),
(77, 27),
(17, 28),
(20, 29),
(42, 30),
(67, 31),
(66, 32),
(58, 33),
(61, 34),
(34, 35),
(27, 37),
(2, 36),
(3, 36),
(55, 38),
(69, 39),
(70, 40),
(78, 41),
(11, 42),
(14, 42),
(73, 43),
(33, 44),
(76, 44),
(35, 45),
(39, 45),
(62, 46),
(74, 47),
(75, 48),
(40, 49),
(19, 50),
(15, 51),
(71, 52),
(1, 53),
(50, 54),
(46, 55),
(41, 56),
(72, 57),
(63, 58),
(73, 59),
(26, 60),
(79, 61),
(52, 62),
(8, 63),
(22, 64),
(51, 64),
(4, 65),
(7, 67),
(31, 67),
(38, 68),
(18, 66),
(53, 70),
(24, 69),
(72, 71),
(57, 72),
(23, 73),
(10, 74),
(25, 75),
(12, 76),
(6, 77),
(16, 78),
(1, 83),
(80, 84),
(81, 85),
(82, 86),
(83, 87),
(14, 88),
(16, 89),
(85, 90),
(84, 91),
(86, 93),
(87, 95),
(14, 96),
(15, 97),
(14, 98),
(15, 99),
(14, 100),
(14, 101),
(14, 102),
(14, 103),
(15, 104),
(15, 105),
(16, 106),
(15, 107),
(15, 108),
(88, 109),
(15, 110),
(89, 111),
(15, 112),
(1, 114);

-- --------------------------------------------------------

--
-- Table structure for table `presenter_employers`
--

CREATE TABLE `presenter_employers` (
  `PresenterID` int(11) NOT NULL,
  `EmpID` int(11) NOT NULL
) ENGINE=Aria DEFAULT CHARSET=utf8;

--
-- Dumping data for table `presenter_employers`
--

INSERT INTO `presenter_employers` (`PresenterID`, `EmpID`) VALUES
(9, 1),
(39, 2),
(54, 3),
(44, 3),
(25, 4),
(40, 4),
(72, 5),
(35, 6),
(68, 6),
(31, 7),
(19, 8),
(32, 9),
(50, 10),
(75, 11),
(5, 12),
(8, 13),
(46, 13),
(66, 14),
(77, 15),
(58, 15),
(34, 16),
(23, 16),
(2, 16),
(30, 16),
(57, 16),
(71, 16),
(59, 17),
(43, 17),
(1, 17),
(78, 18),
(76, 19),
(63, 19),
(16, 20),
(12, 21),
(20, 21),
(17, 22),
(45, 23),
(21, 23),
(10, 24),
(49, 24),
(67, 25),
(61, 25),
(51, 26),
(42, 27),
(18, 27),
(48, 27),
(41, 28),
(47, 29),
(3, 29),
(64, 30),
(13, 30),
(7, 31),
(11, 32),
(15, 33),
(62, 33),
(29, 33),
(55, 33),
(69, 34),
(24, 35),
(38, 35),
(70, 35),
(37, 36),
(74, 37),
(36, 37),
(4, 37),
(22, 37),
(73, 38),
(28, 38),
(27, 38),
(52, 39),
(60, 40),
(56, 40),
(65, 41),
(26, 42),
(53, 42),
(33, 43),
(14, 44),
(6, 44),
(87, 32),
(88, 13),
(89, 21),
(90, 41),
(91, 21),
(93, 16),
(95, 37),
(96, 37),
(97, 20),
(98, 37),
(99, 20),
(100, 37),
(101, 37),
(102, 37),
(103, 37),
(104, 20),
(105, 37),
(106, 24),
(107, 37),
(108, 24),
(109, 1),
(110, 37),
(111, 1),
(112, 37),
(114, 1);

-- --------------------------------------------------------

--
-- Table structure for table `proposals`
--

CREATE TABLE `proposals` (
  `ProposalID` int(11) NOT NULL,
  `ProposalTitle` varchar(255) NOT NULL,
  `MakerStuAssist` tinyint(1) DEFAULT 0,
  `FormatID` int(11) NOT NULL,
  `Timestamp` varchar(255) DEFAULT NULL,
  `AvgScore` double NOT NULL,
  `Description` longtext DEFAULT NULL,
  `Outcomes` longtext DEFAULT NULL,
  `Participation` longtext DEFAULT NULL,
  `Expertise` longtext DEFAULT NULL,
  `Year` int(11) NOT NULL
) ENGINE=Aria DEFAULT CHARSET=utf8;

--
-- Dumping data for table `proposals`
--

INSERT INTO `proposals` (`ProposalID`, `ProposalTitle`, `MakerStuAssist`, `FormatID`, `Timestamp`, `AvgScore`, `Description`, `Outcomes`, `Participation`, `Expertise`, `Year`) VALUES
(1, 'Crafting Archival Research and Learning: Zines and Mobile Maker Kits', 0, 3, '2019/12/23 10:25:43 AM PST', 9.71428571428571, 'This presentation will discuss the evolution of an idea for archival maker spaces, to creating mobile maker kits in an academic library, to helping learners create zines using archival materials and resources at their public library.', 'Anyone can have a maker space, even if it is not a specific space.\n Zines and creative learning fight against insecurities in student learning. Zines are for everyone.\n Attendees will leave with a list of local partners they will brainstorm during the session to reach out to with the purpose of hosting maker space programs, and/ or obtaining makerspace supplies.', 'Attendees will work in small groups to identify the types of materials that are important for their makerspaces to have based off of the needs of their patrons.\n They will brainstorm how to obtain these materials, promote events, and build partnerships.', 'While in library school I first proposed the idea of the archival makerspace for a semester long assignment. I was then able to put parts of it into practice at the college library, creating mobile maker kits. Now, I teach students how to express what they learn through archival research into create works, like zines. I am a librarian and educator who has been creating zines and artwork for over 15 years.', 2020),
(2, 'Engaging Youth in your University Library Makerspace', 0, 1, '2020/01/23 12:39:18 PM PST', 10.1428571428571, 'Universities are building makerspaces and incorporating them into Library services across the nation. As they do this, it is imperative that makerspace directors have a plan for implementing youth programs in addition to programs that serve university students. However, many makerspaces have rules about minors using spaces, if they are allowed at all. At the university of Wyoming, we initially had issue with minors under 18 using the space without their adults. However, with clever programmatic partnerships and creative management, we have been able to expand opportunists for youth in our University Library Makerspace to the entire k-12 community. This panel discussion will host 2-3 presenters with myself to share best practices for Academic Library Makerspaces to increase their capacity to k-12 communities.', 'Ideas they can implement in their makerspaces for collaborating with k-12 communities.', 'audience will be able to ask questions to the panel', 'I have been involved in the maker movement since 2004 and I\'ve lead maker programs since 2006. I have experience working with non-profits and academic institutions. I have experience partnering with Libraries to implement maker programs and most recently directing a library makerspace. I have presented at NOMCON, Maker Faire Producers Summit, ISAM and I have published papers on making with ISAM and The Journal of Extension.', 2020),
(3, 'We\'re Makers, You\'re Makers, Everyone Can Be A Maker - Creating A Secondary Makerspace for All Students and All Teachers in Your School', 0, 3, '2019/11/11 3:13:24 PM PST', 11.2857142857143, 'The creation of a Makerspace can be a daunting task for a site or district. This presentation will engage the audience in our journey of creating a Makerspace that integrates all subjects and students on a campus of 1,500. Ensuring inclusion and access for all students.\n \n The presentation will highlight the necessary elements of a successful Makerspace at the secondary level. \n The audience will \n *Understand how our maker philosophy is integrated across all subject areas.\n *See how a Makerspace helps students learn the soft skills necessary to be successful in the future world of work.\n *Understand how personal connection and relationships between administration, facilitator, and teacher are essential for success.\n *Hear testimonials of students and teachers describing their maker experiences.\n *Learn how to maximize the use of student agency through a student maker team.\n *Hear creative ways to fund and get â€œthe stuffâ€ to fill the space.\n *See and touch items that make our Makerspace successful.\n \n Audience members will leave with strategies and answers on how they can implement a Makerspace on their site.', 'Attendees will leave with an idea of how to create, fill, and utilize a Makerspace their entire school will access.\n Attendees will gain encouragement and know that they can start from nothing and create a successful program.\n Attendees will see testimonials that show connection between a Makerspace and positive change on their campus and leave ready to implement change at their sites.', 'This proposal is mostly informational with time for questions at the end. We could also do a workshop highlighting a typical maker experience in different subject areas. I\'m not sure if we should submit another proposal or just let you know that it is an option. We could also combine the two. Information then activity. We are open to it all!', 'This is our story. We started from nothing and created a very successful Makerspace at Hillsdale Middle School. Our first year we had over 8,000 maker experiences. All 1500 students had between one and seven experiences. We knew right away we had something special that would change our campus culture. In our second year we\'re ready to share our story and talk about what has worked and what we would do differently. We want to share how our Makerspace is our happy place and hopefully others can use our story to create a space of their own.', 2020),
(4, 'Multifaceted Makerspace Training: Our Experiences and Methods', 1, 5, '2019/12/17 10:37:48 AM PST', 11.8571428571429, 'As our makerspace has grown more popular across campus and acquired a wider range of equipment, tools, and workspaces, we\'ve had to take a multifaceted approach to training sessions. Initially, small-group hands-on training was our only format- but we\'ve realized that many methods need to be employed to best serve all learners and class sizes. In this course, we\'ll share methods we\'ve been employing, discuss what we\'ve learned about Universal Design for Learning principles, and plot out future directions we plant to take makerspace training.', 'easy to employ training tools, universal design for learning principles, practical approaches that can be applied at attendees\' home makerspaces', 'Attendees will be asked to share their training methods and will be led in an activity to explore multiple ways in which different tools can be effectively taught.', 'I have been overseeing our campus makerspace for over 4 years. This includes procuring funding, selecting and purchasing equipment and supplies, creating training sessions, faculty & student outreach, assignment & classroom integration of tools, and more, as well as speaking about makerspaces at multiple conferences. Kelvin has been creating in the makerspace as a student for years, and has been the makerspace summer researcher as well as the student assistant who provides training and does maintenance in the space.', 2020),
(5, 'Michigan Neuroprosthetics ', 1, 3, NULL, 11.8571428571429, 'Designing cost affordable, accessible, and scalable myoelectric prostheses for children', '1) Change can be made even on a small scale; 2) One group of students can make a global impact; 3) Through an open source platform (including shared CAD and code files) we can make projects such as ours accessible and affordable \n', 'We will demonstrate how a myoelectric prosthetic arm works using participants; additionally, we will demonstrate how to operate our open source platform so that individuals can build an arm of their own.', 'Our team, Michigan Neuroprosthetics (MNP) is a multidisciplinary student organization with the unique benefit of being able to utilize experiences from a number of fields in order to build our arms. We are mentored through the Robotics department at the University of Michigan, and our previous experiences with organizations such e-NABLE has given us a background in 3D printable arms and open source constructs. Our first design was built off of the Unlimbited Arm, and we have since worked closely with local children and families to develop our own user-friendly designs, tailored exclusively to their needs.', 2020),
(6, 'A Whole New World: How to keep Makerspaces a gathering place for repeat customers', 0, 5, NULL, 12, '+Overview\nMakerspaces are great gathering hubs because they are located in community spaces like libraries and schools. However, Makerspaces can become stale for repeat visitors who come in weekly or even more frequently. Sometimes it takes some outside-the-box thinking, a little imagination, and some magic to keep visitors coming back again and again. \n\n+The Objective\nIn this interactive workshop participants will learn:\n1) How to identify community needs and how best to match them with activities.\n2) Resources for identifying fun and engaging holidays to use as theming guides.\n3) Skill building for outside-the-box thinking of activities and décor.\n4) Skill building for how best to take blue sky concepts and adapt them to a limited budget.\n5) Have fun and be silly.\n\n+MY PROPOSAL\nAfter having worked in museums and theme parks for over 14 years, I joined the Fort Worth Public Library and hit the ground running in the Panther Lab Makerspace. In my previous position at the Perot Museum of Nature and Science working on the TECH Truck Mobile Innovation Lab, I didn’t have many opportunities for repeat visitors but still got the chance to implement theming overlays such as transforming the TECH Truck into a haunted house or an 80’s video game arcade. Once in my current position, which is stationary, I noticed returning visitors who enjoyed using the Makerspace as a gathering place, but there wasn’t a lot of variety that kept these guests engaged visit after visit. I was determined to find a way to make sure every visitor had a reason to return. My love of Disney and theater magic helped bring my creative ideas to life, but learning how to transform a space with a limited budget became a challenge. During this workshop, I will share my experiences and resources for how to keep visitors returning month after month. Participants of the workshop will also have the opportunity to hone their skills for identifying fun activity ideas focused around a theme, and then scaling the event or activity to fit budgetary limitations. \n', '1) Know how to identify community needs and how best to match them with activities. \n2) Learn about resources for identifying fun and engaging holidays to use as theming guides.\n3) Skill building for outside-the-box thinking of activities and décor. \n4) Skill building for how best to take blue sky concepts and adapt them to a limited budget. 5) Be able to have fun and be silly. ', 'Working in groups, attendees will be given themes to design events and/or festivals around using Blue Sky Concepts then brainstorm on how to scale the ideas down to fit within budget constraints.This activity will help with outside the box thinking about how to keep a theme alive even on a limited budget. ', 'I have worked in museums and entertainment fields for over 14 years. In that time I have learned how to keep repeat visitors coming back for a new experience each time they visit.', 2020),
(7, 'So You Made a MakerSpace. . . What\'s Next?', 0, 5, NULL, 12.2857142857143, 'So what is a Makerspace? The MTSU Walker Library created a Makerspace in 2016. In four years it has become embedded in the curriculum of many classes in several of the University’s disciplines. By partnering with faculty and administrators across campus as well as outside organizations the Makerspace has made itself an invaluable resource. We plan to share our experiences of what not to do and what to do to promote your makerspace’s relevance in the university environment. ', 'How to plant the first seeds \nResources (you already have)\nTips and Tricks for collaborating with faculty \nHow to make makerspace invaluable to campus ', 'For audience participation, we plan to open with a word cloud exercise in which attendees use their mobile device to submit a word that they think of when they hear MakerSpace. We plan to display the results and discuss the prominent words, leading into our presentation.', 'Presenters are two of the four people who conceptualized and implemented the Middle Tennessee State University James E. Walker Library MakerSpace and continue to be actively involved in development, training, and events in the space. The Makerspace was created in 2016 and has been growing steadily since. We have experienced what not to do and learned best practices over the past four years. ', 2020),
(8, 'Puppies and Pizza - Transitioning your Makerspace into your students’ favorite hangout.', 0, 3, NULL, 12.2857142857143, 'Do you want to bring more people in from the fringes to explore Maker culture?  Want to cultivate a sense of commitment and belonging in your makerspace?  This session uncovers some of the methods we have explored that have increased interest in the IDEAWORKS Makerspace at Washington College.  \n\nLearn how to make your students feel safe, welcome, and develop a sense of ownership in this shared space.  Show the students you value their opinion by including them in the planning and shaping of their makerspace.  Plan regular events that bring students in to just destress and relax.  Give them the power to make the makerspace their own with their decorative input and music.  Show off their successes and feature their work.\n', '  • Learn ideas to increase traffic into your makerspace\n  • Learn how to build a sense of ownership and commitment in your makerspace\n  • Learn different ways to showcase student work and participation in your Makerspace\n     and beyond.', 'Participants will be drawn into the conversation by use of live polling and through Q&A following the presentation. ', 'Brian and Ande co-founded the IDEAWORKS Makerspace and have been at its heart and soul since its inception in 2015. Their curricular integration ranges from single session demos to semester long embedded co-teaching in maker-speciTc curriculum.\nThey founded and advise a Makers Union student organization and have rolled out co- curricular programming that includes a 5-day Maker Boot Camp, and immersive year-long projects such as the Solar/Electric Boat Racing Team (1st place, 2019).\nBoth have previously presented at MIRA:\n• Laser Cutter - The Gateway Drug to your Makerspace - 2018 • The Value of a Curricular / Co-Curricular Circle - 2018\n• Finding the Ideal CNC Tools for your Academic Makerspace\n(pre-conference workshop) - 2019\n• The Power of Neutrality in a Library Makerspace - 2019\nBrian also has presented at Educause (2007) and is co-author of 63 Ready-to-Use Maker Projects (2018).', 2020),
(10, 'Teaching History through Artifacts: Incorporating Makerspaces into the teaching of History', 0, 3, '2019/12/11 10:55:24 AM PST', 12.5714285714286, 'Teaching and learning about history has increasingly pushed students and teachers into using technology in increasingly more complex and creative ways. The challenge for teachers is to design learning experiences that empower students to show what they know and understand using a variety of different skills. Using the British Museum\'s \"History of the World in 100 Objects\" web page, I have designed projects that challenge students to prepare and present on a historical artifact and, using that artifact, teach an audience about a meaningful historical topic. Included in this project is the creation of a 3-D model of the artifact they chose to focus on, which they designed and built on our schools makerspace. \n In this presentation, teachers will learn about how these projects were organized and implemented. Through that, teachers will be presented with models for how to use makerspaces to encourage students\' creative thinking and design skills.', '1. Teachers will know a model for how to use makerspaces for the teaching of social studies.\n 2. Teachers will take away ideas for how to design projects of their own.\n 3. Teachers will be given access to my project materials and will be able to use them as models for creating their own projects.', 'My presentation will include images and video of kids in the process of designing and creating their artifacts.', 'Starting about three years ago, I began incorporating our school\'s makerspace into several of my 7th grade units, including Rome and Mesopotamia. I have designed projects that have pushed students. Working with our schools EdTech teacher, I have been actively involved in helping students think about, design, and create 3-D artifacts.', 2020),
(9, 'Leveraging Makerspace Ideals to Strengthen College Curriculum ', 0, 4, NULL, 12.4285714285714, 'Founded in 1964, New College of Florida is a small public liberal arts college, the smallest college in the Florida university system.  The New College educational program emphasizes independent study and personal discovery.  Over the past several years, New College has been examining its educational program in a time where credentials are critical to student success and liberal arts as a descriptor is viewed as a detriment.  Over the past academic year, the college has initiated proposals for new kinds of programs which dovetailed with the library identifying campus needs with respect to digital humanities. This is due to a growing interest in incorporating more technology into the academic program.  As a result, librarians, educational technology professionals, faculty and students have come together to create a structure to support digital liberal arts for undergraduates. This session will:\n\nDescribe example initiatives at colleges and universities in the United States\nPresent our own starting point for incorporating makerspace ideals into the curriculum\nReview our process for advancing campus conversations\nHighlight our goals and how we hope to measure whether we’ve attained them\nDiscuss next steps.\n\nParticipants will have time to reflect and plan for their own programs.  Round table guided activities will include:\nApply a “checklist” based on other examples to each participant’s scenario\nThink/pair/share - Where does making happen on my campus?\nMapping current resources - Who are the people who might be interested?  What are their affiliations?\nIdentify the next step (each participant) and get feedback from table mates.\n\nThis session will conclude with a discussion about how “makerspace ideals” can bring disciplines together, increase student sense of personal agency/responsibility, and offer opportunities for students to articulate the relevance of their liberal arts educational experience.', 'After attending this session, attendees will:\nKnow more about other institutions that advance liberal arts by incorporating technology\nTake away a key contacts list for building support at their institution\nBe able to describe a meaningful next step for the program they envision.', 'Participants will have time to reflect and plan for their own programs.  Round table guided activities will include:\nApply a “checklist” based on other examples to each participant’s scenario\nThink/pair/share - Where does making happen on my campus?\nMapping current resources - Who are the people who might be interested?  What are their affiliations?\nIdentify the next step (each participant) and get feedback from table mates.', 'In her role as systems, metadata and assessment librarian, Tammera has worked with librarians,educational technology, IT, faculty and students to create opportunities for students to explore technology in the library.  In 2018,she taught a tutorial for students focusing on makerspace resources at the public library and assessing campus resources.  Ryan has 20 years experience with digital fabrication and digital media. During this time, he has been a key figure in the integration of digital fabrication into several college curricula. Both are part of a campus initiative to create a certificate program for digital liberal arts. ', 2020),
(11, 'Esports: Partnerships and Community Building', 0, 3, '2020/02/04 4:06:44 PM PST', 12.5714285714286, 'In 2019, Pepperdine University\'s makerspace (Genesis Lab) forged a partnership with Campus Recreation to found the Pepperdine Esports program. Esports is a massive and rapidly growing industry on both a professional and collegiate level. In 2019, the League of Legends world championship had more viewers than the MLB World Series, NBA Finals, and Superbowl. Undergraduates gamers are enthusiastic about participating in esports and looking towards the industry as a desirable career path. Since the program\'s establishment, internal partners such as the Student Government Association, Career Center, and Corporate and Foundation Relations have reached out to sponsor and support the program and one-off events. Apart from building ties amongst departments, bringing esports into the makerspace has increased patron visits and student advocacy for the space. One of the greatest assets of the Genesis Lab is the community of users who use the space both academically and personally. When students from different backgrounds and areas of expertise begin making the choice to spend time in the Lab, true idea generation and interdisciplinary work begins. Many students who visit the Lab for gaming are enthusiastic and valuable additions to the Lab, with a passion for emerging technology and community.', '1) Seize partnership opportunities with on-campus collaborators willing to support your vision in tandem with their own.\n 2) Work with students to build bridges and community.\n 3) Don\'t be afraid to learn as you go.', 'Play a short online game as a group to show the community building power of gaming. (http://powerline.io/)', 'Landon Phillips and I have directed the Genesis Lab, Pepperdine\'s makerspace, since 2017. We have been involved with managing the esports program since its beginning in Spring 2019. No one on the management team is a gamer, so we have learned to manage the program while learning about its culture, relying on students and industry professionals as necessary. Landon and I work in the Genesis Lab on a daily basis and have watched the evolution of this program over the past year.', 2020),
(12, 'Reviving sewing and quilting using conductive thread ', 0, 3, NULL, 12.5714285714286, '+Overview\nSewing and quilting seem to be a dying art. However, the use of conductive thread and technology is breathing new life into this time honored craft. \n\n+The Objective\nIn this Presentation participants will learn:\n1) How conductive thread can open new possibilities for soft crafts.\n2) What does the future of integrated technology into fabrics and wearables might look like.\n3) How technology can be integrated into soft crafts as a teach tool. \n\n+MY PROPOSAL\nThe intersection of art and technology has always been a fascination for me. This fascination became even stronger once I found the world of quilting, especially modern quilting. Like a spark to gasoline, my interest in how to make quilts interactive took off and is an on-going and ever-evolving process. The moment I was able to make my very first interactive quilt play music was a moment of triumph for me. The design and execution for my first quilt is rough, to say the least, but the opportunities it opens up were the real objectives of my design. Working in informal education most of my life, I not only have built up an insatiable appetite for knowledge for myself, but also a love of helping to inspire the future generations. Quilting in its current form seems to be a dying art, but maybe by introducing a brand-new technology aspect to it there will be a new-found love for it. With schools, libraries, and other educational institutions helping to fuel the STEAM (Science, Technology, Engineering, Art, and Math) and Makerspace movement, now is a great time to help revive and revitalize a traditional craft. Who knows what the future of conductive quilting will be? It’s only limited by the imaginations of our future generations. \n\nVideo Link to Interactive Musical Quilt: https://www.instagram.com/p/Bju9-PMg257/\n\nInstagram Photo of Interactive Musical Quilt: https://www.instagram.com/p/BrGIhjQH5Dv/', '1) Sewing is not a dying art form now that conductive threads are becoming more common.\n2) Find ways for Makerspace to partner with soft crafts groups to breath new life into a traditional art form.\n3) Inspire ways to incorporate the technology already found in Makerspaces into brand new concepts for soft crafts. ', 'I hope to inspire attendees to find new ways of thinking about soft crafts and how they can be utilized in an educational setting. ', 'I only started quilting 3 years ago but I have been hooked ever since. When I started learning about quilting as an art from I always wanted to push the limit and find out how to incorporate technology into it. I have created a small prototype quilt that using a Makey Makey and conductive thread to see what the future might hold for the intersection of art and technology.', 2020),
(14, 'Building Connections: Identifying and Cultivating Campus Partnerships ', 0, 3, NULL, 12.7142857142857, 'Collaboration with campus partners magnifies the potential for your makerspace resources and programming. This session highlights the value and potential of partnerships between your makerspace and other offices and groups across campus. To demonstrate this, we will feature examples of makerspace partnerships with student affairs, with academic departments, and with institutional research, among others. Attendees will discover a comprehensive list of potential collaborators from across campus and learn strategies to reach out, make the connection, and cultivate successful partnerships. ', '1.	By the end of the session, participants will learn about a wide range of potential collaborators to further makerspace goals and initiatives. \n\n2.	By the end of the session, participants will understand effective ways to initiate partnerships across campus. \n\n3.	By the end of the session, participants will understand how to sustain rewarding collaborations. \n', 'Participants will share success stories and lessons learned from their own campus partnerships. ', 'Mathuews and Harper bring a multidisciplinary approach to this presentation. Mathuews, an academic librarian and institutional effectiveness practitioner, has managed library assessment, library outreach, public services, and a variety of library spaces. Harper, a designer and design educator, has designed and previously managed makerspaces along with other academic spaces and facilities. They are authors of the book Academic Library Makerspaces: A Practical Guide to Planning, Collaborating, and Supporting Campus Innovation, released in 2020.', 2020),
(15, 'Make:HerSpace - a women\'s suffrage project', 0, 3, '2020/01/23 12:27:55 PM PST', 12.8571428571429, 'Building programs to expand inclusivity in making in your makerspace. By sharing best practices and experience hosting single gendered programs, after-hours in the makerspace we have created a culture of women who are making on campus. In an effort to expand CSIC participation by females and female identified persons, we created a program focused on engaging women and girls in special projects using specific tools in the makerspace. The program is hosted by women for women. It is hosted in the CSIC makerspace after-hours so no males can interrupt our learning. The program track includes 4 programs, each one lasting 4-8 hours with 2-4 sessions per program. The programs aim to engage women in machine learning, computational making, and basic electronics through the four programs. The program is funded by the University of Wyoming\'s Women\'s Suffrage Celebration. Materials and participation is free of charge for registered participants and emphasizes women\'s success in making and innovation.', 'Building inclusivity requires making space for non-traditional STEM learners and Makers so they feel comfortable using the space. These populations are more likely to opt-out of learning opportunities in mixed gendered programs. Since the start of our programs we have been collecting data to highlight the pitfalls and success of the program. Our final program will be delivered in Spring 2020 and we would like to present this program data.', 'The audience will be asked to list three times they opt-ed out of programs and for what reasons on one side of a note card, and on the other side, they will write a possible solution/ intervention to prevent opting out. They will share these at their table among colleagues, one person from each table will be selected to share the best ideas from the table for building programs that ensure participants won\'t opt out.', 'I have been involved in the maker movement since 2004 and I\'ve lead maker programs since 2006. I have experience working with non-profits and academic institutions. I have experience partnering with Libraries to implement maker programs and most recently directing a library makerspace. I have presented at NOMCON, Maker Faire Producers Summit, ISAM and I have published papers on making with ISAM and The Journal of Extension.', 2020),
(13, 'Bridging Equity in Making: One County System\'s Journey in Serving both Rural and Urban Patrons', 0, 5, '2020/01/13 11:02:22 AM PST', 12.6666666666667, 'In this workshop, participants will design a makerspace for their library. Using resources made available as well as a discussion format, they will be able to create a makerspace that fits their needs, or refine a design already started. The designs are specific to the participants\' library and will reflect the strategic goals of their own system.\n \n Solano County is truly the tale of two counties. Located in Northern California, it is considered to be equal parts of the greater Bay Area and Sacramento valley. To the south there is Vallejo, an urban city with a population of over 100,000 and one of the most diverse zip codes in the United States, and to the far eastern end of the county there is Rio Vista, a rural agrarian town with a population of less 8,500 and a population that is 70% white. Despite these differences in population, both the John F. Kennedy (located in Vallejo) and Rio Vista libraries serve patrons that frequently encounter barriers to technology access. Vallejo\'s barriers include limited technology in home and school, high levels of poverty, and limited technology skills. Rio Vista encounters issues of limited transportation to larger cities and limited exposure to technology in school as well as incredibly disparate levels of wealth. Both of these town\'s supervisors knew they wanted to break down barriers to access and serve the underserved by incorporating a makerspace into their branches, all while staying true to their library system\'s strategic plan. \n \n Under this vision, these two managers worked to create the ideal spaces for their patrons. Rio Vista has created a mobile cart aimed at tweens and teens to expose community members to tools and exploration otherwise lacking in the community. While Vallejo was the recipient of a multi-year grant from the California State Library and this grant enabled them to convert their computer center into a permanent makerspace.\n \n Makerspaces by their very nature serve as creative spaces that encourage exploration and growth. They provide resources that would normally be out of the reach of library patrons, which is at the very core of every library service. A Makerspace is no more or less than a set of tools that can be utilized as patrons see fit. This means for a rural community patrons using tools and machines that might only be accessible in larger cities, including a 3D printer and vinyl cutter. While in a large urban branch this means patrons are able to use equipment that might be cost prohibitive such as virtual reality and AV production software.\n \n This workshop is designed to encourage creative interpretations of the idea of what a makerspace is. Participants will create a plan that could be used in grant writing, and help them become more comfortable with the idea that they can bring a makerspace to any library no matter the community it serves.', 'â€¢ Participants will become comfortable with the language and vocabulary of a makerspace.\n â€¢ Participants will re-imagine the scope and shape of a makerspace such that the idea of a makerspace works with a given space rather than the reverse.\n â€¢ Participants will leave the workshop with a tangible plan for creating a makerspace in their library', 'This session would start with a 10 minute talk about how both Rio Vista and Vallejo tackled serving their respective communities while following a larger system-wide vision. Then, using the rubrics, timelines, and other materials provided, participants will workshop out a plan for how they could create a makerspace to serve their customers\' needs.', 'Kevin Tolley is the Supervising Librarian at the Rio Vista Library, a small rural library located between the greater Bay Area and Sacramento valley. Kevin has built a mobile maker cart to serve his community using two small matching $1,000 grants. It has since become one of the library\'s most popular activities. \n \n Amelia Vander Heide wrote and received a multi-year grant from the California State Library to build a makerspace at John F. Kennedy Library, a large urban branch near the Bay Area. Since the space opened in August 2019, it has averaged more than 100 visitors per month.', 2020),
(16, 'Reaching Far and Wide - Getting the biggest return on your Makerspace investment', 0, 3, NULL, 12.8571428571429, 'With limited staffing and resources in your campus makerspace, where do you strike a balance between briefly introducing Maker tech & concepts to broad audiences, or diving deeply with complex projects with a few top students throughout the semester.  \n\nIn this presentation, we will discuss reaching out to more students briefly in their first year, compared to working closely with a smaller cohort of first year students in depth. We will also discuss the tendency for upperclassmen to be more independent while also needing more overall resources, and the value of mentorships that develop.\n\nWe will showcase how student driven co-curricular flexibility can generate projects that serve as platforms for credit-bearing independent research projects.', 'Attendees’ learning outcomes include:\n  • Discover options for various engagement levels.\n  • Learn pros and cons of varying levels of engagement.\n  • Increase the number of students reached (quantity).\n  • Have more impressive “signature projects” (quality).  \n  • This balance of quality and quantity is useful in justifying resources, marketing, and\n     student admissions, while gaining the attention of donors.', 'This 20 minute session will engage participants to relate the experiences we share with those they have personally experienced to help them evolve their programming for maximum student impact and value to their organization.', 'Brian and Ande co-founded the IDEAWORKS Makerspace and have been at its heart and soul since its inception in 2015.  Their curricular integration ranges from single session demos to semester long embedded co-teaching in maker-specific curriculum.  \n\nThey founded and advise a Makers Union student organization and have rolled out co-curricular programming that includes a 5-day Maker Boot Camp, and immersive year-long projects such as the Solar/Electric Boat Racing Team (1st place, 2019).  \n\nBoth have previously presented at MIRA:\n  • Laser Cutter - The Gateway Drug to your Makerspace - 2018\n  • The Value of a Curricular / Co-Curricular Circle - 2018\n  • Finding the Ideal CNC Tools for your Academic Makerspace \n     (pre-conference workshop) - 2019\n  • The Power of Neutrality in a Library Makerspace - 2019\n\nBrian also has presented at Educause (2007) and is co-author of 63 Ready-to-Use Maker Projects (2018).', 2020),
(17, 'Read. Feel. Make.: Weaving together literature SEL, and making in a K-8 library makerspace', 0, 5, '2020/01/21 1:16:34 PM PST', 13, 'We will share some of our favorite books that inspire SEL-focused making and the related projects. We will guide participants through a sample project to reinforce that this work can be impactful, even with limits on time and materials.', 'Attendees will have a list of books that inspire SEL-focused making.\n Attendees will have a list of SEL-focused maker activities, with supply lists and directions.\n Attendees will have practiced a SEL-focused that they can implement after a quick stop at the store.', 'Each participant will have the opportunity to engage in the hands-on activity we do with our kindergarteners to go with our reading of Sean Ferrell/Charles Santoso\'s picture book The Snurtch. This will allow them to see how simple materials can be transformed in compelling ways and how making and literature can combine to help young learners better understand their emotions.', 'Sandee is a former English teacher and passionate maker educator who empowers students and teachers to use their hands and hearts to make their ideas into realities. Bel is an inspired children\'s librarian who has worked as a creative writing tutor, is a self-proclaimed writer, and an artist who opens the minds of our youth to new worlds and helps them find their voice as writers and artist. Together they have created a learning space inspires to children to read, dream, and create.', 2020),
(18, 'Learning by Doing- The Student Perspective ', 1, 3, NULL, 13, 'Learning by doing can have a profound effect on the student learning experience. Makerspaces in academic libraries give students this experience and the opportunity to implement learned concepts. Three university students have experienced firsthand the benefits of having a makerspace in their academic library. This presentation focuses on their innovative stories and how they feel the makerspace enabled them to bring their concepts to life. Their perspective offers a glimpse of how students of all skill levels have much to gain from makerspaces, and gives them the competitive advantage to push their creativity to higher limits and open the doors to entrepreneurship. ', 'The attendees should take away these three outcomes: makerspaces should cater to students of all skill levels from novice to advanced, prototyping can significantly strengthen students’ critical thinking skills, and creativity and innovation open the doors to entrepreneurship. ', 'Session will incorporate an activity that will encourage the audience to brainstorm new ways in which they can improve their makerspace to give their students the competitive advantage. ', 'Presenters will speak on the benefits of utilizing a makerspace from the student perspective. Each presenter brings to the table their personal experiences with bringing concepts to life through prototyping. Their expertise varies from novice to advanced. As students, they have worked on academic projects to implement learned concepts in their campus makerspace. As library employees, they have assisted students and special event participants in this makerspace. As a group, they have knowledge and experience with 3D printing, information technology, information systems, computer science, engineering, and business management. ', 2020),
(19, 'Practical Solutions for Circulating Equipment in Makerspaces', 0, 3, '2020/01/21 3:24:44 PM PST', 13.1428571428571, 'Makerspaces have long sought to engage our users in exploration and discovery both within, and outside, of the physical confines of the â€œmakerspaceâ€ itself. To do so, many makerspaces have turned to circulating equipment, tools, and maker-kits as a way of continuing the experience of making once the makerspace has closed. But as makerspaces continue to expand the services and equipment we offer our users, managing the circulation of these items continues to become more and more onerous. This session will explore a variety of cost-effective recommendations for circulating tools, equipment, and kits in makerspaces.\n \n Topics will include:\n \n â€¢ How to communicate with users about makerspace equipment. \n â€¢ Tips for streamlining check-out and check-in procedures.\n â€¢ Tricks for managing complex, multi-component kits.\n â€¢ Recommendations for how to deal with consumables.\n â€¢ Potential opportunities for customizable makerspace kits.', '1) Attendees will reevaluate their circulation processes based on the experience of others.\n 2) Attendees will learn processes to incorporate customization options into their makerspace kits (build-it-yourself kits, online forms for item selection, kit preparation, etc.)\n 3) Attendees will feel empowered to explore new methods for circulating complex maker-kits and equipment at their own institution.', 'This short presentation is largely explanatory and will not incorporate active learning activities.', 'I have served in academic and public libraries for the last eight years and have managed academic library-based makerspaces at both the University of Houston and Northern Arizona University since 2015. In these roles I have developed a number of methods for streamlining makerspace processes and circulation procedures in order to increase efficiency and better manage makerspace collections on a budget.', 2020),
(20, 'Establishing an Inclusive Makerspace', 0, 4, '2020/01/21 1:54:50 PM PST', 13.4285714285714, 'This session will be a discussion focusing on evaluating the needs of your audience, designing a space for equity and inclusivity, and fostering a collaborative environment. During this session, participants will hear about three different makerspace setups, one low budget, one midrange and one refresh and restart of an existing space. They will learn to build a makerspace by setting goals, working within a budget, and managing existing equipment. In addition to setup and budgeting, participants will take away a list of low-barrier to entry workshops and projects to try at their home institution. At the end of the session participants will receive a google folder of shared curricula.\n  \n Participants will have an opportunity to fill out their own goal setting sheet, and will walk away with a comprehensive ordering list for a novice-oriented makerspace. The conversation will highlight proven processes for setting and managing an inventory of materials and equipment and include a walkthrough of various budget-conscious repair resources. The roundtable setting will encourage dialogue and allow for sharing of knowledge, expertise, and diverse experiences.', 'Defining goals for an inclusive makerspace\n Setting a budget for, plan, and track materials and equipment \n Develop low-barrier to entry activities to draw attendees', 'Participants will get to plan what they think they need for a successful makerspace, and begin a vision and goal setting process that will help them get started. They\'ll also get to walk away with a budget and planning worksheet as well as low barrier to entry workshops and project ideas.', 'In my seven years as a makerspace educator and manager I\'ve set up, repaired or reinvented several spaces, both my own and those of other museums, institutions and schools. I have worked with widely varying budgets, grants, and private funders. The spaces I have worked in and for have ranged in audience from toddlers to adult learners and everything in between.', 2020),
(21, 'Building Effective and Inspiring Makerspace Vision and Mission Statements to Support Institutional Initiatives', 0, 5, NULL, 13.4285714285714, 'Building effective vision and mission statements is essential to driving intentional planning and programming in your makerspace. Well-considered vision and mission statements also help position your makerspace to support broader institutional initiatives. In this workshop, participants will learn how to compose vision and mission statements grounded in institutional values. Learning outcomes include understanding the components of vision and mission statements, understanding how to tie makerspace vision and mission statements to institutional values, and learning how to write effective vision and mission statements. ', '1.	By the end of the session, participants will understand the components of effective vision and mission statements. \n\n2.	By the end of the session, participants will identify how to connect makerspace vision and mission statements to institutional vision and mission statements. \n\n3.	By the end of the session, participants will understand how to align decisions regarding planning, services, and resources with vision and mission statements. \n', 'Participants will examine vision and mission statements to identify key themes to align with the creation or revision of the makerspace vision and mission statements. ', 'Mathuews and Harper bring a multidisciplinary approach to this presentation. Mathuews, an academic librarian and institutional effectiveness practitioner, has managed library assessment, library outreach, public services, and a variety of library spaces. Harper, a designer and design educator, has designed and previously managed makerspaces along with other academic spaces and facilities. They are authors of the book Academic Library Makerspaces: A Practical Guide to Planning, Collaborating, and Supporting Campus Innovation, released in 2020.', 2020),
(22, 'Making Connections: Multidisciplinary Makerspace Curriculum Integrations', 0, 3, NULL, 13.4285714285714, 'By partnering with faculty to incorporate maker learning into the curriculum, academic makerspace organizers have a unique opportunity to impact scholarship across their institutions. Maker-centered learning can be beneficial to students in a myriad of ways, regardless of major or area of study. Faculty collaborations and curriculum integrations can also be an effective way to increase traffic and usage of academic makerspaces. This presentation will address the challenges and opportunities of faculty partnerships, addressing best practices for outreach and providing several case studies of specific makerspace curriculum integrations. Attendees will have the opportunity to share ideas and brainstorm ways to collaborate with faculty at their own institutions.', 'Attendees will learn the benefits of faculty partnerships for enhancing scholarship at their institutions and also for increasing makerspace impact. \nAttendees will learn best practices for outreach to faculty and for helping faculty develop assignments involving makerspaces. \nAttendees will walk away with specific examples of makerspace course integrations that they can implement at their own institutions. ', 'An important element of this presentation is the interactions between attendees and the ideas that are generated during collective brainstorming. Since every makerspace and institution is unique, I would like attendees to use the information presented to fuel the generation of ideas that can be implemented at their own institutions. ', 'I have worked in library makerspaces for 5 years, during which I have developed and implemented makerspace programs and classes for a variety of users, from children to senior adults. Since 2018 I have worked as Creation and Innovation Services Librarian at Miami University, where I opened a makerspace at our main library in Fall of 2019. In my current position, I work with faculty from a wide range of disciplines to incorporate maker learning into their courses. ', 2020);
INSERT INTO `proposals` (`ProposalID`, `ProposalTitle`, `MakerStuAssist`, `FormatID`, `Timestamp`, `AvgScore`, `Description`, `Outcomes`, `Participation`, `Expertise`, `Year`) VALUES
(23, 'Making space for everyone: Recommendations and renovations in the Design Lab', 0, 3, NULL, 13.4285714285714, 'Like many makerspaces and engaged learning spaces in academic libraries, The University of Michigan Library Design Lab has seen several evolutions since its inception. As the Design Lab was approaching its fourth year of serving the university community we knew that more changes were necessary to increase accessibility and inclusion and meet our diverse user needs. Our first step in looking forward was to look back and this meant hearing from our users directly on what their space was to them, what they enjoyed, and what may not have been as successful. In this presentation, I will discuss how the lab staff partnered with IMLS scholars to design, facilitate, and analyze the feedback of user assessments. That feedback helped us to plan the future direction of the spaces and renovations while ensuring we were connecting to library DEI goals keeping the focus of the Design Lab on more than just a place for tools but creating a community. ', 'Assessment should be the first step in undertaking renovations to spaces\nIt is important to recognize the needs of the community in these spaces. \nThe environmental experiences in the spaces should connect to the larger goals of the institution.\n', 'As part of the session, I would like the audience to take a few minutes to discuss what considerations they see as most important as they have renovated or are planning to redesign their spaces. To end the presentation the audience will share what changes they have already made to their spaces to ensure accessibility, inclusion, and low-barrier usage of makerspaces and any challenges they may have faced in doing so. ', 'Serving as a academic library makerspace manager for five years I have had the opportunity to oversee several evolutions of engaged learning spaces within different institutions and continue to strive for these spaces to be more diverse and accessible to everyone. ', 2020),
(24, 'Creating the Maker City: Maker-Centric Professional Development between Academia and K-12 Institutions', 0, 5, NULL, 13.5714285714286, 'This workshop empowers educators in academia to provide professional development opportunities for educators in K-12 institutions. Activities will help academics teach K-12 educators to identify the needs of their school and integrate their pre-existing curricula into maker labs through our learning standards mappings. As an outcome of this workshop, individuals will have the ability to empower educators and administrators to help their students utilize makerspaces to become practitioners in hands-on knowledge making.', '1. Develop a makerspace and accompanying curriculum for a K-12 institution. Describe what a makerspace is, how to integrate it into everyday education, and what tools and technologies may be available in a makerspace.\n2. Identify key aspects of successful K-12 makerspaces, including administrative support, sustainability, and the creation of a makerspace culture.\n3. Use a workshop model to create making experiences for K-12 students that address standards.', 'We will provide an exercise where participants can map maker curriculum and outcomes and content to learning standards including Common Core, NGSS, and 21st Century Learning Standards.', 'We have developed a maker curriculum used by Chicago Public Schools educators and administrators in partnership with DePaul, and have a training program that’s currently being rolled out to the school district. We created and run the makerspace network at DePaul, that encompasses multiple makerspaces on both of our campuses, including the Idea Realization Lab. Jay is also certified in Thinking and Learning in the Maker-Centered Classroom by Harvard, Making Makerspaces by the Higher Education Makerspace Initiative, and has over a decade of experience building and teaching in makerspaces.', 2020),
(25, 'Empowering and Engaging Undergraduate Students in your Makerspace', 1, 4, NULL, 13.8333333333333, 'Many makerspaces strive to be student-driven, but how can we build effective and sustainable connections with our student users to truly make this a reality? This roundtable discussion will provide space to trade strategies and ideas. Possible topics for discussion may include: how to create organizational structures such as a steering committee or advisory board that includes students; how to foster a community of users founded on respect and inclusivity; how to partner with student organizations on workshops, hackathons, and other programs; and how to leverage research and instructional partnerships to draw new student users into the makerspace. While the primary audience we are considering will be undergraduate students, attendees interested in engaging other types of users may also pick up useful strategies at this roundtable discussion.', '1. Understand the importance of connecting with and engaging students in your makerspace.\n2. Learn how to develop a steering committee or advisory group that includes students. \n3. Apply colleagues\' suggestions to ensure that your space is inclusive and welcoming to a diverse group of student users.\n', 'The facilitators will seed the conversation, inviting everyone to participate in reflective, open-ended information sharing to the extent that they are comfortable. The discussion will focus on practical takeaways that attendees will be able to apply at their own institutions.', 'Roundtable facilitators will include an undergraduate student worker (Fahed), the makerspace operations manager (Ray), and makerspace supervisor who chairs the steering committee (Brianna). Together, we represent three distinct roles and perspectives on student makerspace engagement. This is the type of conversation that has occurred informally at MIRA in the past and we think a roundtable discussion would be a great way to build on this interest.    ', 2020),
(26, 'Maker Marketing: Highlighting Library Collections Through Makerspace Programming', 0, 3, NULL, 13.8571428571429, 'Whether or not your library has a makerspace, there are infinite possibilities for marketing your library through making. In order to strengthen their case for ongoing funding, librarians at Indiana University started using content from library collections as a way to view making as both a learning opportunity and a promotional tool.\n\nFor instance, in one workshop attendees learned how to embroider discarded or duplicate maps from the Libraries’ map collection. In another workshop participants learned how to make animated GIFs using images from the IU Archives. These activities offer students, faculty, and staff the chance to tinker, play, and make, while also gaining insight into the Libraries diverse collections. Further, librarians are able to advocate for makerspace funding by demonstrating their increased value as a marketing tool to library administrators. ', '1. Participants will learn about one library’s efforts to promote their library through makerspace activities.\n2. Participants will identify collections or services that lend themselves to maker marketing.\n3. Participants will evaluate programming ideas in the context of their own library.', 'After hearing about a case study for “maker marketing,” participants will work in pairs to identify ways to promote their own library’s unique collections. ', 'I oversee our library’s makerspace initiatives, including our Mini Makerspace with drop-in making hours and an equipment checkout program, as well as our Maker Mondays workshop series. I have presented and coordinated maker workshops in our library for the past four years and have experimented with different topics and approaches.', 2020),
(27, 'Incorporating Makerspace into Psychology Classes', 0, 3, '2020/01/24 9:13:41 AM PST', 14, 'With more and more Makerspaces established in higher education, it is very important to incorporate the Makerspace into curriculum and evaluate the Makerspace\'s impact on student learning and success both academically and extracurricular. This session will talk about how at a private institution, the Makerspace works with a Psychology faculty member, incorporating 3D printing, and other emerging technologies into the class. The speakers will share both from the faculty perspective and Makerspace perspective on the needs, preparation, plan, support and the final product. Sample projects students finished using 3D printing will be shared in the presentation. The speakers will discuss issues encountered as well as possible future ways of improving the process. \n \n The speakers will also talk about the research project they are working on in terms of creating an assessment mechanism to evaluate the impact of the Makerspace on student learning outcomes. The speakers will talk about the design of their pre-test survey and post-test survey as well as share some preliminary data they collected.', '1. To gain ideas of how the Makerspace can be integrated into Psychology (and other) classes on campus\n 2. To learn about the technologies that could be used in psychology (and other) classes and see some examples\n 3. To have a better understanding of different aspects to consider when designing an assessment survey to Evaluate the link between student perceptions and course grades', 'The speakers will bring some examples that students have created as part of the psychology class project using the emerging technologies available in the Makerspace for people to examine. Participants will be able to see sample 3D printed pieces that were included in class presentations as part of the collaboration between the Makerspace and a psychology class.', 'Susan is a psychology faculty member who developed the museum exhibit project the speakers will discuss and helps students carry it out every semester. She has been a psychology instructor for 5 years and has worked with the Makerspace (at La Verne and other schools) to help students utilize the emerging technologies available through the Makerspace to make their museum exhibit proposals more interactive for their audience. \n Amy is the founding director of the University of La Verne\'s makerspace.Amy has worked with faculty from many disciplines such as art, education, physics and psychology, integrating makerspace into the curriculum.', 2020),
(28, 'Assemblage: Media produced art + crafting ', 1, 5, NULL, 14, 'During this presentation, we will contextualize technology based art production within contemporary art practices and more specifically the role of the digital art class in he Department of Art and Art History at the University of La Verne. We will present programs and technology available in the ULV Wilson Library Makerspace and how these were integrated into the course by sharing assignments and showing examples of student artwork. The programs we will overview include 360 degree photographs, VR and Tilt Brush, VR and Tilt Brush combined with digital photography, and drone photo and video work. We will also present assignments were students produced materials using Cricut and Tinkercad and then integrated the technologically produced elements with handcrafted artworks. Participants will then have the opportunity to explore using technology as a creative tool. We will provide participants directions for a project that they may explore and develop after the workshop. ', 'Participants will be introduced to the computer and technology as a creative tool. Participants will be introduced to the role of technology in contemporary creative production. Participants will learn and see how students used technology to create visual assignments. ', 'We hope to have access to the equipment available at the University of La Verne to let participants experiences the technology. We hope through this experience participants begin to think about technology not just as a device but a creative tool that can be used to produce works of art. ', 'I employ this technology in my professional practice and bring this experience into the classroom. I taught the Introduction to Digital Production at ULV Spring and Fall Semesters 2019. ', 2020),
(29, 'Strategies to quantify and mitigate the environmental impact of 3D-printing and other fabrication techniques', 1, 3, NULL, 14, 'I will discuss how to use basic lifecycle assessment tools and systems thinking to quantify and mitigate the environmental footprint of fabrication equipment such as 3D-printers and laser-cutters. First, I will engage the audience in a systems thinking activity by splitting them up into small groups for a few minutes to brainstorm where the materials of a 3D printed object come from and estimate how much energy was used to produce each. Then, I will describe how I have used lifecycle assessment to develop an easy-to-use tool that calculates the total energy required for 3D-printing an object, given the type of printer, type of filament, print time, and print weight. The calculator outputs are the energy required in kilowatt-hours and more easily comprehensible equivalents, such as “number of smartphones charged.” I am continuing to look at the environmental impact of other equipment, such as laser-cutters, and expanding the scope of each by accounting for other environmental impacts such as water requirements and aerosols produced. We plan to make the calculator available on the web for other makerspaces to use, so they can better understand the health and environmental impacts of their work. ', '1) A basic understanding of lifecycle assessment and systems thinking tools and how to apply them and learn more about them.\n2) A set of principles to reduce the health and environmental impacts of 3D-printing and lasercutting. \n3) The ability to use the online calculator I am developing.', 'I will begin the session by breaking the audience into small groups and providing each group with a small 3D-printed item. I will have each group estimate the energy required to produce each item, and guess where the materials came from. Then, I will use my calculator tool to show them how accurate their guesses are. ', 'I am currently pursuing two Master of Science degrees at the University of Michigan, one in Sustainable Systems through the School for Environment and Sustainability, and one in Chemical Engineering in the College of Engineering. In the Sustainable Systems program I have learned how to do lifecycle assessments of products. My chemical engineering degree has helped me understand the manufacturing process of different types of polymers used for 3D-printing. ', 2020),
(30, 'Can you do this for me?: Using Design Thinking to define the roles of Users and MakerSpace Staff', 0, 3, '2020/01/22 7:35:43 AM PST', 14.1428571428571, 'In our presentation we will explain how the NYU HSL MakerLab incorporated the Design Thinking methodology proposed by the Hasso-Plattner Institute of Design at Stanford (d.school) to structure our MakerLab and inform our decision making. Using their five-step method: empathize, define, ideate, prototype and test, has helped us empower our users, drive the design process, and define the roles of users and MakerLab staff.', 'Increased understanding of design thinking methodology\n Define role(s) of MakerLab staff\n Discuss methods to empower users to drive the design and implementation process', 'We will use an audience response web application called Mentimeter to survey the participants throughout the presentation and use other audience participation methods.', 'We\'ve been working on developing the NYU Health Sciences library MakerLab for over a year. We\'ve researched the literature, visited other makerspaces, and are active members of various makerspace listservs. Being active in this space has allowed us to collaborate with our colleagues, both in the medical center and across the nation. Being able to start several projects over the past year has given us the necessary knowledge and skills to speak on the subject and continue to raise key questions with our fellow makerspace constituents.', 2020),
(31, 'Using Photogrammetry and VR to preserve artifacts and archive experiences', 0, 5, '2020/01/31 4:30:41 PM PST', 14.1428571428571, 'Many artifacts and experiences can be captured and shared with VR and AR technology. Photogrammetry, 360 Video and simple scripting can take a real world exhibit and make it available to everyone over the web, or in VR or even AR to allow broader reach for events and exhibits and a curated digital archive of important artifacts. \n \n I\'ll use the example of \"The Art of Rememberance\" which we launched in October 2019 which captured several artists Ofrenda\'s (Altars) in 3d using photogrammetry along with an interactive tour using the artists voice tracks to talk about them all delivered over the web, in 3d and in VR without needing any special software to experience them.', '1. I would like to share the workflow of capturing physical artifacts using photogrammetry and hosting them on applications like Mozilla Hubs or Amazon Sumerian or Sketchfab.\n \n 2. I will talk about the need for archiving and preserving experiences like these and how they could be used as primary research sources by integrating with systems like Scholarworks.\n \n 3. How to produce these experiences without significant investment in hardware or software and how they can recruit students or even the public to help build these virtual tours for them.', 'I will have several artifacts that volunteers from the audience can photograph and we can build a quick version of a 3d mesh during the 20 minute talk and incorporate it into a virtual environment. I will also have a portable VR headset (Quest) so they can experience it in VR.', 'I have given a short version of this talk at the Convening of Makers last May. I\'ve built dozens of virtual environments over the past few years and have a lot of experience with photogrammetry. It\'s a new technology so I\'m not aware of any professional certifications for what I do, but I have successfully taught other faculty and staff how to build virtual environments and use photogrammetry using a variety of tools.\n \n Here\'s a link to our exhibit: https://library.sjsu.edu/events/art-remembrance-vr-experience', 2020),
(32, 'The Ecological Quest', 0, 5, '2020/02/02 8:33:07 PM PST', 14.1428571428571, 'This workshop will engage participants in an interactive, hands-on experience making the accordion book structure: a versatile, dynamic, and useful book form. The presenter will inspire participants to experiment with original writing, found texts and images to incorporate into the book. The presenter will introduce the concept of ecological making, including using garden and kitchen materials to make paper and ink. The presenter will offer a list of helpful references so participants can further their study and practice, after the workshop.', '1. Acquire the skills to make an accordion book structure.\n 2. Develop ecological and sustainability awareness in making.\n 3. Explore creativity through writing and making, using original writing, found texts, images or drawings.', 'Participants will learn how to fold a flat piece of paper into a three-dimensional book sculpture: the accordion book and will experiment with a few ways to display the book to create different effects. Participants will also have an opportunity to develop the content of the book by using their writing, found texts, images or drawings. Participants will brainstorm ideas on how we can become more ecological and sustainable in our making as a global community.', 'I am an academic librarian, poet, and aspiring book artist. My poems, essays, and reviews have appeared in literary journals and academic publications. I have taught research and creative writing at UC Riverside, California State University-Fullerton, and internationally. My artist books have been exhibited with San Diego Book Arts (Native Songs, 2018 & Migration Songs, 2020). In recent years, I begin to explore ecological issues and sustainability through the two art forms: poetry and artist books. I have taught writing/making to creative writers, English teachers, college students, international visiting scholars, and at conferences & workshops.', 2020),
(33, 'Collaborations Across Disciplines: Making in Mathematics', 0, 3, NULL, 14.1428571428571, 'This session will discuss collaborations between Collin College McKinney Campus Makerspace and Collin College Math Lab to develop workshops to integrate making and makerspace technologies into the math curriculum. More specifically, this presentation will cover how we utilized computing software and 3D printing to help students visualize mathematical concepts in calculus. We will also discuss ideas on how to create valuable partnerships with faculty and academic departments to help promote and integrate makerspaces into the curriculum in innovative ways.', 'Attendees will:\n 1) Learn how to integrate makerspace technology into mathematics, more specifically learn how to visualize the concept of Solids of Revolution in Calculus, utilizing technologies such as 3D printing and computing software.\n 2) Learn how to create valuable partnerships with college departments and faculty members to help integrate makerspaces into the curriculum.\n 3) Learn how the integration of makerspaces and makerspace technologies in academics can enhance and benefit student learning.\n', 'During the session, we will look at examples that help illustrate the concept of Solids of Revolution. Attendees will be encouraged to participate and guess the 3D shapes created by these examples - no math experience required!', 'I have helped run and manage the makerspace at Collin College McKinney Campus Library for the past two years as their makerspace assistant. During my time at Collin College, I have developed and led various workshops, including assisting and collaborating with Collin College Math Lab staff to create workshops integrating makerspace technology into the math curriculum and forging partnerships with faculty members to promote making in the academics. In addition, my undergraduate and graduate educational background at UT Dallas primarily focused on the integration of digital fabrication concepts and technologies, such as laser cutting and 3D printing, in art and design.', 2020),
(34, 'Qualitative Assessment Strategies for Your Makerspace ', 0, 5, NULL, 14.2857142857143, 'Assessing the effectiveness of your makerspace resources and services is essential to promote continuous improvement and to communicate the value of your space. In this workshop, attendees will learn about qualitative assessment approaches including surveys, interviews, and focus groups. These assessment methods help construct an understanding of users’ impressions and lived experiences in the makerspace. This feedback is essential to understanding if your resources and services are meeting the needs of users and helps construct a narrative to champion your space to stakeholders. Attendees will learn how to craft effective questions, learn tips for administration of assessment approaches, learn strategies to make the most of their assessment efforts, learn methods to analyze data, and learn tips to communicate and implement actionable results from the findings. Participants will practice constructing effective questions for surveys, interviews, and focus groups to gain an understanding of user experiences, needs, and preferences. ', '1.	By the end of the session, participants will be able to craft effective questions for surveys, focus groups, and interviews. \n\n2.	By the end of the session, participants will identify ways to analyze qualitative data gathered from surveys, focus groups, and interviews. \n\n3.	By the end of the session, participants will learn how to use assessment results to advocate for their makerspace. \n', 'Participants will practice identifying and constructing effective questions for qualitative assessment methods. ', 'Mathuews and Harper bring a multidisciplinary approach to this presentation. Mathuews, an academic librarian and institutional effectiveness practitioner, has managed library assessment, library outreach, public services, and a variety of library spaces. Harper, a designer and design educator, has designed and previously managed makerspaces along with other academic spaces and facilities. They are authors of the book Academic Library Makerspaces: A Practical Guide to Planning, Collaborating, and Supporting Campus Innovation, released in 2020.', 2020),
(35, 'It’s Dangerous to Go Alone!: Teaming Up to Support Entrepreneurship in an Academic Library Makerspace', 0, 3, NULL, 14.2857142857143, 'In the university environment, entrepreneurship has manifested in the form of interdisciplinary academic programs, co-curricular initiatives, research commercialization activities, and more. Modern academic libraries provide access to a wealth of tools, spaces, resources, and experts who support entrepreneurship regardless of the department, program, or individual who is engaging in it. This has become more pronounced as academic libraries have started operating makerspaces. These spaces have provided environments for budding entrepreneurs to experiment and explore the physical, digital, and commercial aspects of their business ideas, all while getting support from research and technology experts. In this presentation, hear how one academic library combined the expertise of its research librarians and information technology staff with its rich resources and makerspace to support both curricular and co-curricular entrepreneurship activities on a university campus.\n', '1. Attendees will be able to discuss collaborative strategies a makerspace can implement to engage and support academic entrepreneurs.\n2. Attendees will be able to identify appropriate research tools that can be used to support academic entrepreneurship projects.\n3. Attendees will be able to articulate the role modern academic libraries and makerspaces can have in a university entrepreneurship ecosystem.\n', 'Using the think-pair-share technique, attendees will be prompted with a series of questions and encouraged to think about the questions, discuss their answers with a nearby partner, and finally share their answers with the larger group. Question prompts will include:\n1. Does the makerspace at your institution currently provide support for entrepreneurship initiatives/programs? If not, are there opportunities for this type of support?\n2. Does the makerspace at your institution currently provide research support to its users? If not, are there opportunities for this type of support?\n3. Are there services, tools, and/or resources that you believe would strengthen the library and/or makerspace’s support for entrepreneurship?\n', 'The presenters have over a decade of combined experience working in academic libraries and makerspaces where they have been providing entrepreneurship support to students and faculty for the last several years. In addition to work experience, the presenters have also conducted multiple research studies focused on the role of academic libraries in supporting entrepreneurship.', 2020),
(37, 'Growing CTE/STEM Teachers in Makerspaces', 0, 5, NULL, 14.4285714285714, 'California faces a NextGen CTE and STEM teacher shortage. City College of San Francisco (CCSF) was awarded a National Science Foundation Advanced Technological Education (NSF ATE) project grant \"Growing CTE and STEM Teachers\" to develop innovative strategies to boost the number and diversity of students entering the field of K-14 STEM and CTE teaching. Our project uses makerspaces as a main strategy. CCSF faculty from the statewide California Teacher Prep Program and the statewide CCCMaker Initiative are leading this work at CCSF. This workshop will share strategies such as recruiting nontraditional students, curriculum development, and engaging students through Making in education. Classroom activities, student feedback and survey results will also be shared.', 'Recognize the challenges and opportunities to use Makerspaces to address STEM and CTE teacher shortage.\n\nIdentify how makerspaces can help address workforce needs in CTE and STEM, including the teaching workforce.\n\nRecognize challenges and opportunities for makerspaces in education', 'Participants will engage in hands-on activities that teacher prep and maker students at CCSF undertake in the classroom, as well as use rubrics and learning frameworks to assess their learning experiences.', 'Maura Devlin-Clancy​ led the CA Community College Maker Initiative in San Francisco from 2016-2019, which established makerspaces and a maker community at City College of SF. Maura is currently Maker Coordinator at CCSF, and Co-PI of the National Science Foundation Advanced Technological Education Project grant \"Growing CTE and STEM Teachers,\" using makerspace as a strategy to address the CA CTE and STEM teacher shortage. She has presented on academic makerspaces at local, state and national conferences including the CA State University Maker Convening, the Annual CA statewide conference of the Joint Special Populations Advisory Committee, and the National Science Foundation ATE Principal Investigator Conference in 2018 and 2019.', 2020),
(38, 'Planning and Design Collaboration to Optimize Makerspace Outcomes', 0, 5, NULL, 14.4285714285714, 'Whether you are planning a new makerspace or revisiting the design of an existing one, this workshop will help you to identify potential partners in the planning and design process. Attendees will be provided with an overview of various administrative, regulatory, and planning considerations critical to the design of a makerspace. After establishing a solid foundation of planning and design considerations, attendees will be led through a process of aligning those considerations with appropriate collaborators. This session is focused on highlighting common but often unknown resources, both on and off campus, who can ultimately make your planning process easier and more efficient.', '1.	By the end of the session, participants will be able to define the space-related needs for the design or redesign of a makerspace.\n2.	By the end of the session, participants will be able to identify potential partners to achieve the space-related desires for a new or redesigned makerspace\n3.	By the end of the session, participants will be able to leverage collaborations to ensure a thorough and efficient design process. \n', 'Attendees will be invited to take part in group activities which will culminate in a list of potential makerspace partners. Part of the activity will involve attendees aligning disparate, space-related makerspace needs and desires with an appropriate partner.\n\nOne table/group focuses on visuals\nOne table focuses on tools and equipment\nOne table focuses on safety\nEtc.\n', 'Harper and Mathuews bring a multidisciplinary approach to this presentation. Harper, a designer and design educator, has designed and previously managed makerspaces along with other academic spaces and facilities. Mathuews, an academic librarian and institutional effectiveness practitioner, has managed library assessment, library outreach, public services, and a variety of library spaces. They are authors of the book Academic Library Makerspaces: A Practical Guide to Planning, Collaborating, and Supporting Campus Innovation, released in 2020.', 2020),
(36, 'Creating a maker culture on the campus of Moreno Valley College and City of Moreno Valley.', 1, 3, '2020/01/30 2:05:39 PM PST', 14.4285714285714, 'Moreno Valley College (MVC) is in the midst of creating and sustaining a maker culture in both of their new iMAKE innovation centers. This includes the iMAKE Mobile Innovation Center which is a mobile makerspace bus that has been providing making since December 2018 to the Moreno Valley College campus, K-12 partners, non-profits after school programs, and a partnership with various departments of the City of Moreno Valley such as the Employment Resource Center and the Parks and Recreation Departments. In addition, the newly designed 4,000 plus square feet iMAKE Innovation Center will officially open up for Spring 2020 semester at the Moreno Valley College campus providing both high and low tech equipment and access for college students, faculty, staff, and the community at large.\n \n In Summer 2019, MVC had a team of administrators and faculty attend the Maker Ed week long summer institute at their Berkeley, CA makerspace headquarters. They learned about designing for equity and sustainability, program design, curriculum and activity development, and documentation and assessment. They decided to bring this back and continue to develop this maker culture at the Moreno Valley College campus. A series of workshops at both the MVC iMAKE Innovation Center and Maker Ed headquarters, community of practice sessions, and coaching sessions will be facilitated and utilized at MVC over the course of the 2020 year in collaboration with Maker Ed.\n \n Also, multiple professional development flex days have been implemented for faculty at the MVC Campus in Spring 2019 and also Spring 2020. The mobile makerspace bus offered hands on sessions plus also the new iMAKE Innovation Center with hands on making and learning. Here ideas are shared and implemented with maker staff and faculty and encouraged for upcoming MVC classes and their students.\n \n MVC has been successful in implementing mobile making with the community especially for K-12 feeder schools and job seekers and entrepreneurs at the City of Moreno Valley Employment Resources Centers. Participants have access to rapid prototype makerspace equipment and have leveraged this for design and making.', '1.) Participants will be able to learn the types of professional development that were used at Moreno Valley College\'s iMAKE Innovation Center for getting faculty and staff involved to enhance student learning experiences.\n 2.) Participants will examine methods to create maker centered learning pathways at a higher education institution.\n 3.) Participants will examine methods to build maker focused community partnerships with K-12 schools, non-profits and local government agencies.', 'Participants will assemble a laser cut wood or acrylic puzzle object. The pieces will be cut utilizing the MVC makerspace and ready for participants to engage in putting the puzzle together.', 'The iMAKE Innovation Center team at Moreno Valley College has built a mobile makerspace bus and physical laboratory makerspace. Over the past year and a half, the makerspace bus has attended hundreds of college, K-12, and community events where participants learned and applied hands-on making and tinkering. In addition, the MVC iMAKE Innovation Center will officially open in Spring semester (February 2020) with a 4,150 square foot lab that includes various high tech and low- tech equipment and a 40 seat learning center classroom. This will be open to students and community members.', 2020),
(39, 'Establishing and Enacting Policies and Procedures to Help Ensure a Safe Makerspace', 0, 5, NULL, 14.4285714285714, 'The contemporary makerspace is a site of exciting and ever-changing technology. While many of the tools and the technology of a makerspace are intended to be intuitive and have built-in safeguards, the fervor that often surrounds making can compromise safety. Because of this, it is important to establish policy around access and use of a makerspace and enact safety procedures to ensure that makerspace patrons are safe and that outcomes are not compromised. During this interactive session, participants will identify an array of safety considerations for both the space and tools and equipment commonly found within. The session will include an overview of both common and lesser known policies that are enacted to regulate access and promote safety. Additionally, attendees will be exposed to a breadth of strategies for documenting and implementing policy and procedures. Participants of this workshop will leave the session with a new-found awareness of safe makerspace operation.', '1.	By the end of the session, participants will be able to identify specific safety considerations and safety priorities for a makerspace.\n2.	By the end of the session, participants will be able to analyze their current policies and procedures for areas of possible improvement.\n3.	By the end of the session, participants will be able to implement policy and procedures for the safe and effective operation of a makerspace. \n', 'Attendees will be invited to take part in a group activity during which they will identify safety concerns of a makerspace and then collaborate to formulate possible ways to mitigate such dangers.', 'Harper and Mathuews bring a multidisciplinary approach to this presentation. Harper, a designer and design educator, has designed and previously managed makerspaces along with other academic spaces and facilities. Mathuews, an academic librarian and institutional effectiveness practitioner, has managed library assessment, library outreach, public services, and a variety of library spaces. They are authors of the book Academic Library Makerspaces: A Practical Guide to Planning, Collaborating, and Supporting Campus Innovation, released in 2020.', 2020),
(40, 'Quilting Diversity into Making ', 0, 5, NULL, 14.4285714285714, 'This academic year at the Purdue University Libraries and School of Information, the head of the Mobile Making programming, Professor Sarah Huber, and her Mobile Making crew decided their programming needed to center around attracting more diverse groups of students to their Maker events. They reached out to the Purdue Civic Engagement and Leadership Development to collaborate with the cultural centers on campus. This workshop is based on the partnership with the Asian American and Asian Resource Cultural Center (AAARC). Images on Asian community and culture at Purdue through the years were collected from the University Archives and Special collections then printed on fabric. An example is a photo of Amelia Earhart participating in a traditional Japanese tea ceremony. For the Maker event, students decorated the fabric squares. They were also encouraged to bring in their own photos to reflect their campus experience. For students who brought in their own photos, they were asked to record the story behind the photo. The decorated images, and with the use of an Arduino, the recorded stories were put together for an interactive quilt. Professor Huber and the director of AAARC, Dr. Pamela K. Sari, will briefly discuss the preparation, event, lessons learned, and plans going forward. Included will be general guidelines and materials used. Participants will then be able to interact with the quilt, decorate quilt square images themselves, and ask questions about the materials used. The workshop will end with a guided discussion about possible directions to assess for learning and engagement and variations on how this project could serve different demographics on campus. ', '1.  Participants will gather information about the diverse needs of a cultural center and how to plan a Maker project to support those needs \n\n2.  Participants will evaluate various materials to use in an interactive quilt project \n\n3.  Participants will assess ways to measure impact of a quilt Maker project with a cultural center and future directions to take a cultural center quilt project ', 'The interactive quilt will be on display for participants to test. It will be an opportunity for participants to ask questions about how the quilt was made and share ideas about how it could have been done differently. The workshop includes 15-20 archival images printed onto fabric with materials that were used in the cultural center project to decorate them. Lastly, the Arduino components will be on display for people to see and ask questions about.  ', 'Professor Huber designs and runs the Maker programming for the Purdue University Libraries and School of Information Studies. In addition to her Maker programming, she teaches for credit courses and is focusing on Maker assessment and diversity in Making as an area of research. \n\nDr. Sari has been involved with Diversity, Equity, and Inclusion initiatives since her time in graduate school. In her capacity as the Director of the AAARCC at Purdue University, she has been thinking about creative and sustainable ways to incorporate the Center’s archives into their critical cultural programming.  \n\n ', 2020),
(41, 'Telling The Story Of Your Makerspace', 0, 3, '2020/01/24 4:21:59 PM PST', 14.5, 'Great work is happening in makerspaces across the world, from K-12 to higher education! But have you struggled to tell the story of your makerspace to showcase the fantastic services, programming, and projects happening every day? This presentation will share three ways to tell your story, all using free, readily available tools and software. Whether your makerspace is located in an elementary school, health science library, or non-profit, you can apply these straightforward strategies to promote your makerspace.\n \n \n See how you can engage your community on social media to promote services, projects, and programming;Â \n implement a reproducible format for documenting successes on your website; and create annual reports for your makerspace using free, dynamic software.\n \n \n Attendees will be encouraged to participate in conversation about how they are currently telling their story. Ideas and feedback will be documented and shared with conference attendees following the session.', 'Following the session, attendees will be able to:\n \n Engage your community on social media to promote services, projects, and programming.Â \n Implement a reproducible format for documenting successes on your website.\n Create annual reports for your makerspace using free, dynamic software.', 'A portion of the 20-minute presentation will include a conversation with participants on how they are currently telling the story of their makerspaces. Ideas and feedback will be documented and shared with conference attendees following the session.', 'Telling the story of the UCSF Makers Lab is a substantial part of my role as manager. Since opening in 2016, we have published 50+ blog posts, gained over 700 followers on social media, and have developed annual reports at the end of every year. I have worked closely with the library\'s communication manager on branding and marketing until their departure in 2019. Because the communication manager role has not been filled, the department has assumed all branding and marketing responsibilities.', 2020),
(42, 'Keepin\' it Real: AR, VR, and MR for Instruction and Learning', 0, 5, '2020/01/28 8:13:23 AM PST', 14.5714285714286, 'Did you know that virtual reality, augmented reality and 360 video are making the transition from gaming at home to the classroom? The 2019 Horizon Report for Higher Education reports that the increased use of augmented reality (AR), virtual reality (VR), and mixed reality (MR) has enabled mobile learning to become more active and collaborative, providing unique opportunities to enhance established learning models.\n \n This interactive workshop will focus on the use of augmented, virtual, and mixed reality in library instruction. Faculty librarians van Arnhem and Rodriguez will discuss their experiences teaching basic tools of analysis and critical thinking through the lens of augmented and virtual reality with a variety of campus collaborators including single-session library instruction sessions with campus faculty, collaborative sessions with First Year Experience faculty, and in the Library freshman seminar, AR U Experienced: An Introduction to Augmented and Virtual Reality.', 'Attendees in this session will: \n 1. gain hands-on experience with Augmented and Virtual Reality by using a variety of tools and resources. \n 2. engage in a pedagogical discussion on AR, VR, and MR as teaching tools.\n 3. learn ways to collaborate with faculty to infuse these emerging technologies in library instruction.', 'This session will incorporate various AR, VR, and MR technologies we are currently using during our library instruction. There will also be opportunities for collaborative exercises and a pedagogical discussion on AR, VR, and MR as teaching tools.', 'Rodriguez has been running the VR Instruction Program at the College of Charleston library since 2019 and collaborating with faculty and campus partners. van Arnhem has authored numerous articles and delivered keynotes, papers, and workshops on topics related to augmented and virtual reality and the scholarship of teaching and learning. She also teaches an Augmented Virtual Reality seminar for the School of Information at San Jose State University,', 2020),
(43, 'Space Assessment as a Tool for Makerspace Evolution and Advocacy', 0, 5, NULL, 14.5714285714286, 'The physical appearance and performance of a makerspace affects makers interest in and their ability to use it. With this understanding in mind, this workshop leverages the value of formal and informal space assessment methods to better gauge performance of a makerspace and advocate for changes and/or improvements. During this workshop, participants will learn how the design of the physical space can affect perceptions of a makerspace and either positively or negatively impact making. Participants will be led through a process of identifying and establishing metrics which can be used to carry out a space assessment. Additionally, attendees will learn strategies for using metrics and the findings from a space assessment as tools for advocacy. Participants, especially those with less experience in the areas of design and space management, will benefit from learning about post-occupancy evaluation as a tool of makerspace design and for on-going improvement.', '1.	By the end of the session, participants will be able to identify relevant, space-related assessment criteria.\n2.	By the end of the session, participants will be able to conduct an assessment based on established assessment criteria.\n3.	By the end of the session, participants will be able to analyze data collected from a space assessment to advocate for their makerspace.\n', 'Attendees will be invited to take part in group activities intended to collect details on how space assessment is currently taking place at different makerspaces. This will evolve into new idea generation for attendees.', 'Harper and Mathuews bring a multidisciplinary approach to this presentation. Harper, a designer and design educator, has designed and previously managed makerspaces along with other academic spaces and facilities. Mathuews, an academic librarian and institutional effectiveness practitioner, has managed library assessment, library outreach, public services, and a variety of library spaces. They are authors of the book Academic Library Makerspaces: A Practical Guide to Planning, Collaborating, and Supporting Campus Innovation, released in 2020.', 2020),
(44, 'Breaking the Mold (or Not): Promoting Innovation Through Creativity Within a Health Sciences Makerspace', 0, 3, '2020/01/29 4:27:59 PM PST', 14.6666666666667, 'Discover how 3D CAD design, mold making, and even die-cutting is being utilized in the UCSF Library Makers Lab at the University of California, San Francisco to create real tools for surgical simulation training and enhancing medical education. Through the showcase of three innovative maker projects, learn how taking an iterative approach to design encourages creativity within a health science institution.', 'KNOW: Learn about 3 health science maker projects supported by the Makers Lab: a pelvic bone marrow biopsy simulation model created using 3D printing and modeling;Â a glenohumeral joint made possible with the addition of silicone mold making techniques, and a brain-spine pathways model achieved with die-cutting.\n \n \n KNOW: Find out how these projects are being used in medical education and surgical simulation at UCSF.\n \n \n BE ABLE TO: Adopt an iterative, product design approach to projects emerging in their makerspace; work closely with makerspace patrons through consultations and increase involvement/stakes in a project from both sides.', 'Physical models of the projects discussed in the presentation will be available to the audience for handling and viewing post-presentation.Â What might be the value of such learning tools in medical education? Other fields?\n \n Attendees are alsoÂ welcome to participate in an open discussion on how they have leveraged technologies within their makerspace to bring ideas and projects to fruition, what challenges they have faced/are facing when it comes to these projects, and what projects are currently being used for enhancing education at their institution.', 'The Makers Lab at UCSF is unique in that we have the opportunity to work with various healthcare professionals and researchers, sometimes those that do both. As such, they present some unique perspectives (as well as challenges) on how to approach \"making\" in the health sciences. We provide advice and guidance to these patrons on how to pursue their projects, utilizing not only 3D printing, programmable electronics and CAD software but sewing, mold making and other arts and crafts materials as well.Â Now supporting the majority of the 6,000 visits per year to our makerspace, we are positioned in the library as the hub intersecting science and creativity.', 2020);
INSERT INTO `proposals` (`ProposalID`, `ProposalTitle`, `MakerStuAssist`, `FormatID`, `Timestamp`, `AvgScore`, `Description`, `Outcomes`, `Participation`, `Expertise`, `Year`) VALUES
(45, 'Creative Program Evaluation that Raises Diverse Voices and Provides Actionable Feedback', 0, 1, NULL, 14.6666666666667, 'Increasingly, the evaluation field has been exploring its relationship to equity and inclusiveness in the evaluation process. The Developing Makerspaces in Libraries Throughout California project has proven to be a living lab for how a diverse group of 10 underserved libraries can incorporate assorted evaluation methods to measure organizational and programmatic impact of maker activities with their constituents and staff.\n\nThe Maker Movement has taken off across the country. However, with respect to evaluation, measuring the impact of these programs has been inconsistent and far from generalizable. Evaluation in these spaces has not for the most part investigated how participants can access and engage in makerspaces in robust and equitably consequential ways. Libraries offer a perfect community-based location for providing equal access to a broad range of culturally and age appropriate hands-on maker activities.  As part of their three-year training program, participating librarians in the California project have been trained in methods for creating maker activities that best meet the needs of their unique local populations.  Aligned with this goal, one of the primary project outputs has been the development of generalizable and adaptable tools that promote a balanced and inclusionary process for conducting evaluation across diverse settings. \n\nThroughout this inclusionary framework, library practitioners have involved peers, patrons and community partners in a multi-faceted evaluation processes that are responsive and flexible, allowing for ongoing collaborative iteration of makerspace site design, program design and instructional methods.  We will showcase the range of quantitative and qualitative evaluation methods librarians have implemented to ensure that the maker programs they are implementing are equitable, and that support an evaluation process itself that incorporates, shares and values insights of their community. \n', 'Attendees will hear creative ways to collect immediate feedback from youth and adult maker program participants\nAttendees will hear stories of how community-driven evaluation has directly informed programming at a diverse set of libraries.\nAttendees will take away tools and resources on creative program assessment that can be used at their own library\n', 'Our session will give attendees the opportunity to view and try out the tools during the session. Participants will also have time to discuss with their peers how to implement any of the creative strategies presented at their own sites.', 'Lisa Regalla, PhD is CEO of Regallium Consulting and the Director of STEM Learning & Innovation at the Bay Area Discovery Museum. She leads a variety of STEM initiatives and manages partnerships nationwide that leverage current research to support the creative development of children. Lisa formally served as Deputy Director of Maker Ed, supporting a growing network committed to broadening participation in making as a form of creative learning. She developed content and a national outreach program for Twin Cities Public Television’s series, SciGirls and DragonflyTV: Nano and also spent several years working at the Museum of Science, Boston and the Da Vinci Science Center in PA. As manager of several national outreach programs throughout her career, she has conducted extensive professional development workshops on facilitating creative learning environments for children of all ages. Lisa received a BS in Chemistry and a BA in Theater before earning her PhD in Chemistry. In 2011, she received a Daytime Emmy Award for her work on SciGirls and the Rising Star Award from the Women Chemists Committee of the American Chemical Society for her work to promote gender equity in STEM.\n', 2020),
(46, 'DIY Gaming Switch Build', 0, 5, '2019/11/06 3:18:13 PM PST', 14.8571428571429, 'Participants will learn to 3D print, solder and assemble electronic components to create a simple switch that can be used for people with disabilities to access gaming devices, smartphones, tablets, computers etc. Makers will learn about opportunities for community impact that will open doors for funding and greater community collaboration, contribution and awareness.', '1. opportunities for community impact 2. simple hands on making activities for ages 8+ 3. 3D printing, soldering and electronics skills', 'Participants will learn to solder and assemble electronic components to create a switch that can be used for people with disabilities to access gaming devices, smartphones, tablets, computers etc.', 'Zee Kesler is a maker educator who has been involved in the vancouver Maker Education Initiative for 9 years. She is the founder of 2 mobile classrooms, has a disability herself and works as a Community Coordinator Neil Squire Society\'s Makers Making Change', 2020),
(47, 'Try, Try Again: how rapid prototyping adds value to non STEM disciplines', 0, 3, NULL, 15.1428571428571, '            Since its opening in 2016, the UTSC Library Makerspace has served its local campus community of 15,000 students and 500 Faculty and Staff. The Makerspace has steadily evolved its services and equipment complement through the last 4 years to include creative suite tools, professional recording and photography equipment and pedagogical applications of its 3D printing facilities.\n\nThrough our Makerspace’s 3D printers, students have the ability to create rapid, no-cost prototypes to test their designs. Rapid prototyping as part of the design process is a valuable concept for students. After presenting in a management class, the Makerspace staff adapted the presentation into a workshop, appropriate for all disciplines. This presentation will provide highlights of the workshop, including some hands-on interactive segments.', 'Learners will be able to explain the concept and benefits of rapid prototyping as part of the product design process. \nLearners will be able to summarize methods for prototyping, including paper prototypes and additive manufacturing, e.g. 3D printing.\nLearners will be able to provide examples of applications of rapid prototyping for a variety of disciplines.\n', 'In small groups, participants will actively create rapid prototypes using moldable materials to create prototypes for a 3D scanning (e.g. play-doh)\n\n', 'The UTSC Library Makerspace staff have experience with 3D scanning technology, as well as 3D modeling software. Makerspace staff have provided workshops on how to use 3D modeling software to create original designs for 3D printing and have encouraged student entrepreneurs in designing prototypes. As the space has evolved so has the team\'s understanding and application of pedagogy of prototyping concepts.', 2020),
(48, 'How to Develop an Eye-catching Brand Identity for Your Makerspace', 0, 1, NULL, 15.1666666666667, 'Most people approach branding backwards: they pick a logo and color palette, but they later do revision after revision because something about the design feels off. In this session, we will teach attendees how to suss out the \"soul\" of your makerspace’s brand identity first, so that the design elements fall into place with less effort and more staying power.\n\nThe first panelist (a makerspace supervisor) will briefly provide context on the history and user population of the Creat’R Lab makerspace, focusing on how we collaboratively developed a user personality  for our program. She will also describe how we navigated having a makerspace brand identity that was significantly different from existing library branding.\n\nThe second panelist (a makerspace operations manager) will describe how the branding has manifested in the overall space and layout, discussing how we used logos, signage, and paint color to enhance our space\n\nThe third panelist (a branding and communications specialist) will share practical tips for how attendees can formulate a user personality for your makerspace. Additionally, she will share how attendees can leverage brand identity in promotion and marketing, including tips for how to work within existing institutional promotion channels, developing templates to reuse and repurpose content, and how to approach social media and student-generated content. \n', '1. Understand the importance of brand identity for your makerspace.\n2. Discover how to apply your brand identity through small and large-scale changes to your makerspace.\n3. Learn a step-by-step process for how to formulate a user personality for your makerspace (one important piece of your overall brand identity). \n\n', 'We will walk attendees through the process of generating a user personality for their makerspace, including leaving attendees with supporting materials that they can return to their institution with. As our panel concludes, we will also invite attendees to share what their current makerspace brand identity looks like and any branding strategies they have found particularly helpful or impactful. ', 'Brianna, Ray, and Melanie are colleagues who work together to support the Creat’R Lab makerspace. Melanie is a design maven who collaborated with department head Brianna to establish the initial brand identity. Ray oversees daily operations and has worked to incorporate the brand into the space. After undertaking this work at our own library, we are excited to share what we’ve learned with colleagues in other makerspaces. ', 2020),
(49, 'Using Google Sheets and Forms to Manage Makerspace and Services', 1, 2, NULL, 15.3333333333333, 'Learn how to use the free Google products Sheets and Forms to manage your makerspace and services! This workshop will cover how to create a Form that automatically populates a row in Sheets, how to use Conditional Formatting and Data Validation to keep track of submissions, and  how to use Formulas and Statements for automation and analysis. We will create a sample 3D Printing Request Form. ', '1) How to use create a Form that automatically populates a row in Sheets\n2) How to use Conditional formatting and Data Validation to keep track of submissions\n3) How to use Formulas and Statements for automation and analysis', '1) Invite audience to give examples of the services they offer and need to keep track of\n2) Walkthrough on how to use various features of Google Forms and Sheets\n3) We will have made sample 3D Printing Request Form by the end of the workshop', 'The Creat’R Lab (UCR Makerspace) is currently using this to manage its 3D Printing service. Ray also has experience working with CRMs, ticket systems, and database management.', 2020),
(50, 'Makerspaces making student staff into leaders', 1, 5, NULL, 15.4285714285714, 'Makerspaces, whether in public or academic libraries, are often filled with complex machinery such as 3D printers, commercial sewing machines, and laser cutters.  These types of machines need to be carefully monitored not only for successful usage by patrons but also for safety.   Since it opened in 2016, the University of Oregon’s DeArmond Makerspace has been operating with highly trained student staff with great success.   The Makerspace became a vehicle for not only training student assistants to use the complex machinery, they became the focus of a larger goal to develop them as leaders in safety practices, customer service, outreach, fundraising, and purchase decision-making.  Student staff create safety rules, lead workshops, recruit students, and are responsible for training Makerspace users and new employees.  Student staff are involved in purchase decisions and we count on their well-researched recommendations.   As a result, student staff report acquiring high levels of confidence which they exhibit both in the Makerspace and in their classes and academic work.  \n\nOur active learning workshop will guide participants in how to create a student development plan for makerspace operations. This includes tips on training, supervision, mentorship, inclusive recruitment, and strategies for student participation in all aspects of makerspace promotion and outreach.   Because of its student staff, the University of Oregon DeArmond Makerspace reports increasing levels of usage, no accidents, and high rates of student satisfaction.   Students staff have made our Makerspace a pillar of student success at the University of Oregon.  \n', '•	Participants will be able to create a student leadership development plan  \n  \n•	Participants will be able to apply strategies to recruit successful student employees  \n  \n•	Participants will be able to integrate student employees into policy making, purchasing decisions, and donor outreach \n', 'Workshop participants will be tasked with sharing in groups the challenges and opportunities present in supervising and training students in a makerspace environment. Participants will also be paired in twos to develop 3 basic strategies to recruit and mentor students from diverse backgrounds.   Workshop presenters will also incorporate other active learning strategies so that everyone is able share their experience and get questions answered from other participants or workshop leaders.  ', 'Melissa Galvan\'s expertise comes from four years of employment as a lead student assistant in the UO DeArmond Makerspace. Melissa is responsible for training users on all the equipment including new employees.  She has developed a successful proposal to purchase three new 3D printers. She has also participated in the promotion of the Makerspace with donors and the university board of trustees.  \n\nNancy Cunningham has created and managed several technology learning spaces in her 20 year career as a library administrator.  This includes the development of a digital media commons in Florida and now the DeArmond Makerspace.  She has extensive experience hiring and training students to work in public services in academic libraries and has developed mentoring programs for them.  \n', 2020),
(51, 'Pursuing Social Justice Through Makerspaces', 0, 4, NULL, 15.4285714285714, 'Working in makerspaces comes with social responsibilities. The maker movement celebrates technology-rich learning for its ability to increase users’ social capital. However, makerspaces can exacerbate inequities if technology is assumed to be neutral rather than a product of society. \n\nMany of us are aware that the world around us is not as it should be, and seek to shield our communities by integrating social justice into our work. Constrained by scarcity and frustrated by institutional mandates for efficiency, we may struggle to build and sustain momentum. Still, hope endures when we can center the voices and aspirations of marginalized users in makerspace decisions.  \n\nThis session will create a learning space for attendees interested in how makerspaces can advance social justice. Hearing the successes and obstacles experienced by a cross-section of attendees will illuminate the common challenges we face in navigating institutional power structures and challenging conventional assumptions about making. Attendees are invited to bring their questions, suggestions, doubts, and dreams to this roundtable session, and to come away with ideas, inspiration and the confidence that comes from knowing that we are not alone. ', 'Attendees will reflect on and have opportunities to articulate how their work with makerspaces relates to social justice.\n\nAttendees will learn from the shared obstacles and successes of peers seeking equitable and inclusive makerspaces.\n\nAttendees will begin to build a network of peers interested in social justice and equity issues. ', 'To encourage active participation and make the session accessible to diverse learning styles, I plan to use the following structure. \n\nAttendees will arrive to find a list of tentative discussion questions to reflect on before the start of the roundtable. In addition to the questions below, attendees will consider what questions they would like to pose to the group. \n\n1. Please introduce yourself and tell us what comes to mind when you think of a socially just makerspace.\n\n2. What are some of the obstacles you are facing?\n\n3. How does your position enable you to work toward social justice? \n\nI will circulate an optional sign-in sheet to allow attendees to remain in contact after the session. At the end of the session, I will also circulate a list of recommended readings to encourage further learning. ', 'Makerspace meetings with library and academic computing colleagues over the past five years, attendance at previous MIRA conferences, research for my book chapter on makerspace collaborations, and engagement with critical theory and critical librarianship are shaping my conviction that makerspaces need a commitment to social justice. I have years of experience participating in and facilitating roundtable discussions at Armacost Library, which values shared leadership, reflective dialogue, and integrating values with practice. ', 2020),
(52, 'Voicing Concern: Sharing Critical Theories, Reflections and Practices for Re-making the Library Makerspace ', 0, 1, NULL, 15.6666666666667, 'Nearly 20 years into “the Maker Movement,” we find ourselves working to disrupt and re-make the narratives of makerspaces, particularly within the library domain. As many have worked to implement making into libraries and education spaces, we are confronted with the necessity of rupturing systemic structures that endorse narrow representations of making. \n\nThis panel discussion will highlight the voices within the edited collection, Re-making the Library Makerspace Critical Theories, Reflections, and Practices, a forthcoming book from Library Juice Press (July 2020). This collection centers the limitations and challenges emerging from the Maker Movement’s popularized concept of ‘makerspace,’ as narrow, classist, predominantly white, and heteronormative. The book emphasizes the critical work that is being done to cultivate anti-oppressive, inclusive and equitable making environments in libraries.\n\nEditors Jennifer Nichols and Maggie Melo, and contributing author Brianna Marshall, will discuss the following themes of the collection and engage the audience in critical discussion, using protocols and frameworks from the equity-centered design framework/liberatory design cards.\n\n- Who Belongs in the Makerspace? Power and Critical Theories\n- Movement, Empathy, and Inclusion in Youth Makerspaces\n- Counternarratives\n- Re-imagined Makerspaces: Policies, Procedures, and Culture\n', 'Participants will notice and reflect on their own situations relative to institutional power; Participants will understand limitations of idealized makerspace narratives; Participants will practice and leave with equity-centered/liberatory design practices for future application', 'After the panel discussion, the audience will use exercises and practices from the liberatory design cards to reflect on the themes of the edited collection. Small group discussion and sharing will culminate with larger group share outs, to integrate the themes and share possible local actions that individual participants can incorporate in their work.', 'Maggie Melo’s research in the School of Information and Library Science at the University of North Carolina at Chapel Hill resides at the intersection of innovation, critical maker culture, and the development of equitable and inclusive collaborative learning spaces in academic libraries. Jennifer Nichols is an academic librarian and Director of CATalyst Studios, an interdisciplinary makerspace and VR/AR studio, at the University of Arizona Libraries. Brianna Marshall is Director of Research Services at the University of California Riverside Library, where she oversees the Creat’R Lab makerspace.', 2020),
(53, 'Deciphering Complex Data for Making & Media', 0, 2, '2019/12/19 2:21:25 PM PST', 16, 'The internet is awash with 3D data, everything from CT scans of human anatomy to lidar maps of your backyard are freely available online. The publicly available data can be used across higher education and align your makerspace with the mission of your university. While the data is now accessible, it\'s proven to be unwieldy for general use. In this workshop learners will work with complex 3D data formats, including high resolution 3D scans, CT imagery, and lidar. Workshop attendees will become familiar with the tools and workflows required to utilize these formats for additive manufacturing and media/game design.', 'Attendees will be able to \n \n 1. Describe the skillsets/software/hardware infrastructure required for working with complex 3D data formats.\n 2. Create a 3D printable object from a point cloud.\n 3. Demonstrate the ability to accurately segment bone from a given CT dataset and prepare for 3D printing.\n 4. Access and navigate three online repositories for complex 3D data formats.', 'All users will manipulate anatomical and geographic data on their personal computers using free, cross-platform software, demystifying complex systems and creating a 3D printable anatomical structure and map.', 'Scott acts as UCSD\'s 3D data format expert. He routinely works with complex data, harnessing it for visualization and fabrication. In 2017 he created a turtle shell prosthetic using photogrammetry, the project was picked up by 3Dprint.com, CNN, and BBC Earth. He routinely works with archaeologists creating 3D reconstructions of ancient structures, and in his free time consults on underwater structure scanning and mapping.\n \n Dylan manages the UCSF Makers Lab and co-developed the â€œ3D Printing for Health Science Studentsâ€ elective with the UCSF Department of Anatomy. He uses free, cross-platform software to generate 3D models from DICOM data for health science education, simulation, and patient care. Dylan is also interested in using DICOM data to create extended reality content (virtual reality, augmented reality, and mixed reality) for health sciences education.', 2020);

-- --------------------------------------------------------

--
-- Table structure for table `proposal_audience`
--

CREATE TABLE `proposal_audience` (
  `ProposalID` int(11) NOT NULL,
  `AudienceID` int(11) NOT NULL
) ENGINE=Aria DEFAULT CHARSET=utf8;

--
-- Dumping data for table `proposal_audience`
--

INSERT INTO `proposal_audience` (`ProposalID`, `AudienceID`) VALUES
(1, 1),
(1, 5),
(1, 6),
(1, 7),
(1, 4),
(1, 2),
(1, 8),
(1, 3),
(2, 1),
(2, 4),
(3, 4),
(3, 3),
(4, 1),
(4, 5),
(4, 6),
(4, 7),
(4, 4),
(4, 2),
(4, 8),
(4, 3),
(5, 1),
(5, 5),
(5, 6),
(5, 4),
(5, 2),
(5, 3),
(6, 5),
(6, 6),
(6, 8),
(6, 3),
(7, 1),
(7, 4),
(7, 2),
(7, 3),
(8, 1),
(8, 5),
(8, 6),
(8, 7),
(8, 2),
(8, 8),
(8, 3),
(9, 1),
(9, 2),
(9, 3),
(10, 4),
(10, 3),
(11, 1),
(11, 6),
(11, 4),
(11, 2),
(11, 3),
(12, 5),
(12, 6),
(12, 4),
(12, 2),
(12, 8),
(12, 3),
(13, 1),
(13, 5),
(13, 6),
(13, 7),
(13, 8),
(14, 1),
(14, 2),
(14, 3),
(15, 1),
(15, 5),
(15, 4),
(15, 2),
(15, 3),
(16, 1),
(16, 4),
(16, 2),
(16, 3),
(17, 5),
(17, 6),
(17, 4),
(17, 3),
(17, 11),
(18, 1),
(18, 3),
(19, 1),
(19, 5),
(19, 3),
(20, 1),
(20, 5),
(20, 8),
(20, 3),
(21, 1),
(21, 5),
(21, 6),
(21, 7),
(21, 4),
(21, 2),
(21, 8),
(21, 3),
(22, 1),
(22, 2),
(22, 3),
(23, 1),
(23, 5),
(23, 6),
(23, 7),
(23, 4),
(23, 2),
(23, 8),
(23, 3),
(24, 4),
(24, 2),
(24, 3),
(25, 1),
(25, 2),
(25, 3),
(26, 1),
(26, 7),
(26, 8),
(26, 3),
(27, 1),
(27, 4),
(27, 2),
(27, 3),
(28, 1),
(28, 5),
(28, 6),
(28, 7),
(28, 4),
(28, 2),
(28, 8),
(28, 3),
(29, 3),
(30, 1),
(30, 2),
(30, 3),
(30, 10),
(31, 1),
(31, 5),
(31, 6),
(31, 7),
(31, 4),
(31, 2),
(31, 8),
(32, 1),
(32, 5),
(32, 6),
(32, 7),
(32, 4),
(32, 2),
(32, 8),
(32, 3),
(33, 1),
(33, 4),
(33, 2),
(33, 3),
(34, 1),
(34, 5),
(34, 6),
(34, 7),
(34, 4),
(34, 2),
(34, 8),
(34, 3),
(35, 1),
(35, 2),
(35, 3),
(36, 4),
(36, 2),
(36, 3),
(37, 4),
(37, 2),
(37, 3),
(38, 1),
(38, 2),
(38, 3),
(39, 1),
(39, 5),
(39, 6),
(39, 7),
(39, 2),
(39, 3),
(40, 1),
(40, 5),
(40, 6),
(40, 7),
(40, 4),
(40, 2),
(40, 8),
(40, 3),
(41, 1),
(41, 5),
(41, 6),
(41, 7),
(41, 4),
(41, 2),
(41, 8),
(41, 3),
(42, 1),
(42, 2),
(43, 1),
(43, 2),
(43, 3),
(44, 1),
(44, 7),
(44, 2),
(44, 3),
(45, 5),
(45, 6),
(45, 4),
(45, 3),
(46, 1),
(46, 5),
(46, 6),
(46, 7),
(46, 4),
(46, 2),
(46, 8),
(46, 3),
(47, 1),
(47, 6),
(47, 2),
(48, 1),
(48, 5),
(48, 6),
(48, 7),
(48, 4),
(48, 2),
(48, 8),
(48, 3),
(49, 1),
(49, 5),
(49, 6),
(49, 7),
(49, 4),
(49, 2),
(49, 8),
(49, 3),
(50, 1),
(50, 6),
(50, 4),
(50, 2),
(50, 3),
(51, 1),
(51, 5),
(51, 6),
(51, 7),
(51, 4),
(51, 2),
(51, 8),
(51, 9),
(52, 1),
(52, 5),
(52, 6),
(52, 7),
(52, 4),
(52, 2),
(52, 8),
(52, 3),
(53, 5),
(53, 6),
(53, 7),
(53, 4),
(53, 2),
(53, 8),
(53, 3),
(62, 5),
(62, 5),
(63, 5),
(63, 5),
(64, 12),
(63, 11),
(65, 13),
(66, 6),
(66, 5),
(67, 14),
(68, 15),
(68, 1);

-- --------------------------------------------------------

--
-- Table structure for table `proposal_presenters`
--

CREATE TABLE `proposal_presenters` (
  `PresenterID` int(11) NOT NULL,
  `PrimaryPres` tinyint(1) DEFAULT 0,
  `ProposalID` int(11) NOT NULL
) ENGINE=Aria DEFAULT CHARSET=utf8;

--
-- Dumping data for table `proposal_presenters`
--

INSERT INTO `proposal_presenters` (`PresenterID`, `PrimaryPres`, `ProposalID`) VALUES
(16, 1, 1),
(33, 1, 2),
(9, 1, 3),
(32, 0, 3),
(8, 1, 4),
(46, 0, 4),
(73, 1, 5),
(31, 1, 6),
(77, 1, 7),
(58, 0, 7),
(14, 1, 8),
(6, 0, 8),
(76, 1, 9),
(63, 0, 9),
(7, 1, 10),
(10, 1, 11),
(49, 0, 11),
(31, 1, 12),
(47, 1, 13),
(3, 0, 13),
(45, 1, 14),
(21, 0, 14),
(33, 1, 15),
(14, 1, 16),
(6, 0, 16),
(64, 1, 17),
(13, 0, 17),
(59, 1, 18),
(43, 0, 18),
(1, 0, 18),
(17, 1, 19),
(11, 1, 20),
(45, 1, 21),
(21, 0, 21),
(66, 1, 22),
(27, 1, 23),
(35, 1, 24),
(68, 0, 24),
(15, 1, 25),
(29, 0, 25),
(62, 0, 25),
(50, 1, 26),
(74, 1, 27),
(4, 0, 27),
(36, 1, 28),
(22, 0, 28),
(28, 1, 29),
(12, 1, 30),
(20, 0, 30),
(41, 1, 31),
(39, 1, 32),
(72, 1, 33),
(45, 1, 34),
(21, 0, 34),
(42, 1, 35),
(18, 0, 35),
(48, 0, 35),
(34, 1, 36),
(23, 0, 36),
(2, 0, 36),
(30, 0, 36),
(57, 0, 36),
(71, 0, 36),
(54, 1, 37),
(44, 0, 37),
(21, 1, 38),
(45, 0, 38),
(21, 1, 39),
(45, 0, 39),
(67, 1, 40),
(61, 0, 40),
(24, 1, 41),
(25, 1, 42),
(40, 0, 42),
(21, 1, 43),
(45, 0, 43),
(38, 1, 44),
(70, 0, 44),
(51, 1, 45),
(75, 0, 45),
(5, 0, 45),
(78, 1, 46),
(26, 1, 47),
(19, 0, 47),
(53, 0, 47),
(15, 1, 48),
(55, 0, 48),
(62, 0, 48),
(62, 1, 49),
(29, 0, 49),
(60, 1, 50),
(56, 0, 50),
(65, 1, 51),
(37, 1, 52),
(52, 0, 52),
(15, 0, 52),
(69, 1, 53),
(24, 0, 53),
(89, 1, 55),
(95, 1, 57),
(96, 1, 58),
(102, 1, 60),
(103, 1, 61),
(104, 0, 61),
(105, 1, 62),
(106, 0, 62),
(107, 1, 63),
(108, 0, 63),
(109, 1, 64),
(110, 1, 63),
(111, 1, 65),
(112, 1, 66),
(114, 1, 68);

-- --------------------------------------------------------

--
-- Table structure for table `proposal_topics`
--

CREATE TABLE `proposal_topics` (
  `ProposalID` int(11) NOT NULL,
  `TopicID` int(11) NOT NULL
) ENGINE=Aria DEFAULT CHARSET=utf8;

--
-- Dumping data for table `proposal_topics`
--

INSERT INTO `proposal_topics` (`ProposalID`, `TopicID`) VALUES
(1, 5),
(1, 23),
(1, 18),
(1, 7),
(1, 19),
(1, 6),
(1, 16),
(1, 14),
(1, 10),
(2, 5),
(2, 23),
(2, 19),
(3, 18),
(3, 7),
(3, 19),
(3, 6),
(3, 20),
(3, 16),
(3, 14),
(3, 10),
(4, 5),
(4, 18),
(4, 7),
(4, 19),
(4, 6),
(4, 20),
(4, 3),
(4, 24),
(4, 28),
(4, 14),
(4, 10),
(5, 5),
(5, 23),
(5, 19),
(5, 6),
(5, 20),
(5, 16),
(5, 27),
(5, 14),
(5, 10),
(6, 5),
(6, 18),
(6, 19),
(6, 27),
(7, 23),
(7, 18),
(7, 7),
(7, 19),
(7, 20),
(7, 3),
(7, 16),
(7, 27),
(7, 28),
(8, 5),
(8, 23),
(8, 19),
(8, 6),
(8, 27),
(8, 24),
(8, 28),
(8, 14),
(8, 10),
(9, 5),
(9, 23),
(9, 18),
(9, 7),
(9, 26),
(9, 19),
(9, 6),
(9, 20),
(9, 3),
(9, 9),
(9, 16),
(9, 28),
(10, 18),
(10, 7),
(10, 19),
(10, 20),
(11, 5),
(11, 23),
(11, 9),
(11, 27),
(12, 18),
(12, 7),
(12, 26),
(12, 19),
(12, 16),
(12, 27),
(13, 5),
(13, 18),
(13, 19),
(13, 16),
(14, 23),
(15, 14),
(15, 10),
(16, 13),
(16, 18),
(16, 7),
(16, 26),
(16, 19),
(16, 6),
(16, 20),
(16, 3),
(16, 9),
(16, 16),
(16, 8),
(17, 18),
(17, 7),
(17, 26),
(17, 19),
(17, 6),
(18, 18),
(18, 2),
(18, 26),
(18, 19),
(18, 6),
(18, 20),
(18, 12),
(18, 16),
(19, 24),
(20, 26),
(20, 24),
(20, 14),
(20, 10),
(21, 24),
(21, 17),
(21, 22),
(21, 29),
(22, 23),
(22, 18),
(22, 7),
(22, 19),
(22, 20),
(23, 23),
(23, 18),
(23, 3),
(23, 16),
(23, 24),
(23, 14),
(23, 10),
(24, 5),
(24, 23),
(24, 18),
(24, 7),
(24, 19),
(24, 20),
(24, 3),
(25, 5),
(25, 18),
(25, 14),
(25, 10),
(26, 5),
(26, 23),
(26, 18),
(26, 19),
(27, 18),
(27, 7),
(27, 26),
(27, 19),
(27, 20),
(27, 3),
(27, 16),
(28, 7),
(28, 26),
(28, 19),
(28, 6),
(28, 28),
(29, 13),
(29, 6),
(29, 3),
(29, 9),
(30, 18),
(30, 26),
(30, 19),
(30, 6),
(30, 20),
(30, 16),
(30, 24),
(31, 5),
(31, 16),
(31, 28),
(32, 5),
(32, 13),
(32, 18),
(32, 7),
(32, 26),
(32, 19),
(32, 6),
(32, 20),
(32, 12),
(32, 16),
(32, 27),
(32, 14),
(32, 10),
(33, 23),
(33, 18),
(33, 7),
(33, 26),
(33, 19),
(33, 6),
(33, 20),
(33, 16),
(34, 3),
(35, 23),
(35, 18),
(35, 19),
(35, 12),
(35, 16),
(36, 5),
(36, 23),
(36, 18),
(36, 7),
(36, 26),
(36, 19),
(36, 6),
(36, 20),
(36, 3),
(36, 16),
(37, 5),
(37, 18),
(37, 7),
(37, 19),
(37, 16),
(37, 14),
(37, 10),
(38, 23),
(39, 3),
(39, 24),
(40, 23),
(40, 18),
(40, 2),
(40, 7),
(40, 19),
(40, 14),
(40, 10),
(41, 5),
(41, 23),
(41, 18),
(41, 7),
(41, 19),
(41, 9),
(41, 12),
(41, 16),
(41, 27),
(41, 14),
(41, 10),
(42, 23),
(42, 18),
(42, 27),
(42, 28),
(43, 3),
(43, 24),
(44, 5),
(44, 23),
(44, 18),
(44, 26),
(44, 19),
(44, 6),
(44, 16),
(44, 1),
(44, 25),
(45, 5),
(45, 26),
(45, 19),
(45, 6),
(45, 3),
(45, 14),
(45, 10),
(46, 5),
(46, 9),
(46, 16),
(46, 4),
(46, 15),
(46, 11),
(47, 18),
(47, 7),
(47, 26),
(47, 19),
(47, 12),
(48, 5),
(48, 21),
(49, 18),
(49, 19),
(49, 6),
(49, 3),
(49, 24),
(50, 18),
(50, 19),
(50, 6),
(50, 20),
(50, 3),
(50, 24),
(50, 14),
(50, 10),
(51, 18),
(51, 26),
(51, 6),
(51, 14),
(51, 10),
(52, 14),
(52, 10),
(53, 18),
(53, 26),
(53, 19),
(53, 9),
(53, 16),
(53, 28),
(62, 1),
(62, 1),
(63, 1),
(63, 1),
(64, 30),
(63, 21),
(65, 31),
(66, 2),
(66, 1),
(67, 32),
(68, 33),
(68, 1);

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `TopicID` int(11) NOT NULL,
  `TopicType` varchar(255) NOT NULL
) ENGINE=Aria DEFAULT CHARSET=utf8;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`TopicID`, `TopicType`) VALUES
(1, '3D Printing'),
(2, 'Artificial Intelligence'),
(3, 'Assessment'),
(4, 'Assistive Technology'),
(5, 'Community Engagement'),
(6, 'Critical Thinking'),
(7, 'Curriculum'),
(8, 'Developing Signature Projects to Increase Percieved Value'),
(9, 'Disruptive Technologies'),
(10, 'Diversity and Inclusivity'),
(11, 'Electronics'),
(12, 'Entrepreneurship'),
(13, 'Environmental Sustainability'),
(14, 'Equity'),
(15, 'Health Care'),
(16, 'Innovation'),
(17, 'Institutional Innitiatives'),
(18, 'Learning'),
(19, 'Learning by doing'),
(20, 'Learning Outcomes'),
(21, 'Marketing and Outreach'),
(22, 'Mission Statements'),
(23, 'Partnerships'),
(24, 'Policies and Procedures'),
(25, 'Rapid Prototyping'),
(26, 'Theory to Practice'),
(27, 'Trends'),
(28, 'Virtual or Augmented Reality'),
(29, 'Vision Statements');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `usersId` int(11) NOT NULL,
  `usersName` varchar(128) NOT NULL,
  `usersEmail` varchar(128) NOT NULL,
  `usersUid` varchar(128) NOT NULL,
  `usersPwd` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`usersId`, `usersName`, `usersEmail`, `usersUid`, `usersPwd`) VALUES
(2, 'Dario Mariani', 'Dario66m@gmail.com', 'dariom', '$2y$10$v.gA.rIYx5SbfRfOCDVb..jdk.kpmLs8SLwKqKfylJvcrREA8YqIm'),
(3, 'Dario Jr', 'dariojr@gmail.com', 'djr100', '$2y$10$yucgLbByEwcjANdkkaSj4.aKTjTQ14/DpB/q.nv0G2Trj4fH.NybO'),
(4, 'Robert Mariani', 'robert@gmail.com', 'robi', '$2y$10$foWj9uuPKHfPUtkYILR/.u7aAZ7cLNwf32bpQSHLAV/lbLvUvefXW');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `audience`
--
ALTER TABLE `audience`
  ADD PRIMARY KEY (`AudienceID`);

--
-- Indexes for table `employers`
--
ALTER TABLE `employers`
  ADD PRIMARY KEY (`EmpID`),
  ADD KEY `OrgID` (`OrgID`);

--
-- Indexes for table `formats`
--
ALTER TABLE `formats`
  ADD PRIMARY KEY (`FormatID`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`JobID`);

--
-- Indexes for table `organizations`
--
ALTER TABLE `organizations`
  ADD PRIMARY KEY (`OrgID`);

--
-- Indexes for table `presenters`
--
ALTER TABLE `presenters`
  ADD PRIMARY KEY (`PresenterID`);

--
-- Indexes for table `presenters_jobs`
--
ALTER TABLE `presenters_jobs`
  ADD KEY `JobID` (`JobID`),
  ADD KEY `PresenterID` (`PresenterID`);

--
-- Indexes for table `presenter_employers`
--
ALTER TABLE `presenter_employers`
  ADD KEY `EmpID` (`EmpID`),
  ADD KEY `PresenterID` (`PresenterID`);

--
-- Indexes for table `proposals`
--
ALTER TABLE `proposals`
  ADD PRIMARY KEY (`ProposalID`),
  ADD KEY `FormatID` (`FormatID`);

--
-- Indexes for table `proposal_audience`
--
ALTER TABLE `proposal_audience`
  ADD KEY `AudienceID` (`AudienceID`),
  ADD KEY `ProposalID` (`ProposalID`);

--
-- Indexes for table `proposal_presenters`
--
ALTER TABLE `proposal_presenters`
  ADD KEY `PresenterID` (`PresenterID`),
  ADD KEY `ProposalID` (`ProposalID`);

--
-- Indexes for table `proposal_topics`
--
ALTER TABLE `proposal_topics`
  ADD KEY `ProposalID` (`ProposalID`),
  ADD KEY `TopicID` (`TopicID`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`TopicID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`usersId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `audience`
--
ALTER TABLE `audience`
  MODIFY `AudienceID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `formats`
--
ALTER TABLE `formats`
  MODIFY `FormatID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `JobID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `organizations`
--
ALTER TABLE `organizations`
  MODIFY `OrgID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `presenters`
--
ALTER TABLE `presenters`
  MODIFY `PresenterID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `proposals`
--
ALTER TABLE `proposals`
  MODIFY `ProposalID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `TopicID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `usersId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
