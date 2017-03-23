-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mar 21 Juin 2016 à 17:13
-- Version du serveur :  10.1.13-MariaDB
-- Version de PHP :  5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `mvctp`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`) VALUES
(1, 'Classic Cars', 'classic_cars'),
(2, 'Motorcycles', 'motorcycles'),
(3, 'Planes', 'planes'),
(4, 'Ships', 'ships'),
(5, 'Trains', 'trains'),
(6, 'Trucks and Buses', 'trucks_and_buses'),
(7, 'Vintage Cars', 'vintage_cars');

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `brand` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ref` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_cat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `brand`, `ref`, `id_cat`) VALUES
(1, '1952 Alpine Renault 1300', 'Turnable front wheels; steering function; detailed interior; detailed engine; opening hood; opening trunk; opening doors; and detailed chassis.', '98.58', 'Classic Metal Creations', 'S10_1949', 1),
(2, '1972 Alfa Romeo GTA', 'Features include: Turnable front wheels; steering function; detailed interior; detailed engine; opening hood; opening trunk; opening doors; and detailed chassis.', '85.68', 'Motor City Art Classics', 'S10_4757', 1),
(3, '1962 LanciaA Delta 16V', 'Features include: Turnable front wheels; steering function; detailed interior; detailed engine; opening hood; opening trunk; opening doors; and detailed chassis.', '103.42', 'Second Gear Diecast', 'S10_4962', 1),
(4, '1968 Ford Mustang', 'Hood, doors and trunk all open to reveal highly detailed interior features. Steering wheel actually turns the front wheels. Color dark green.', '95.34', 'Autoart Studio Design', 'S12_1099', 1),
(5, '2001 Ferrari Enzo', 'Turnable front wheels; steering function; detailed interior; detailed engine; opening hood; opening trunk; opening doors; and detailed chassis.', '95.59', 'Second Gear Diecast', 'S12_1108', 1),
(6, '1969 Corvair Monza', '1:18 scale die-cast about 10'''' long doors open, hood opens, trunk opens and wheels roll', '89.14', 'Welly Diecast Productions', 'S12_3148', 1),
(7, '1968 Dodge Charger', '1:12 scale model of a 1968 Dodge Charger. Hood, doors and trunk all open to reveal highly detailed interior features. Steering wheel actually turns the front wheels. Color black', '75.16', 'Welly Diecast Productions', 'S12_3380', 1),
(8, '1969 Ford Falcon', 'Turnable front wheels; steering function; detailed interior; detailed engine; opening hood; opening trunk; opening doors; and detailed chassis.', '83.05', 'Second Gear Diecast', 'S12_3891', 1),
(9, '1970 Plymouth Hemi Cuda', 'Very detailed 1970 Plymouth Cuda model in 1:12 scale. The Cuda is generally accepted as one of the fastest original muscle cars from the 1970s. This model is a reproduction of one of the orginal 652 cars built in 1970. Red color.', '31.92', 'Studio M Art Models', 'S12_3990', 1),
(10, '1969 Dodge Charger', 'Detailed model of the 1969 Dodge Charger. This model includes finely detailed interior and exterior features. Painted in red and white.', '58.73', 'Welly Diecast Productions', 'S12_4675', 1),
(11, '1993 Mazda RX-7', 'This model features, opening hood, opening doors, detailed engine, rear spoiler, opening trunk, working steering, tinted windows, baked enamel finish. Color red.', '83.51', 'Highway 66 Mini Classics', 'S18_1129', 1),
(12, '1965 Aston Martin DB5', 'Die-cast model of the silver 1965 Aston Martin DB5 in silver. This model includes full wire wheels and doors that open with fully detailed passenger compartment. In 1:18 scale, this model measures approximately 10 inches/20 cm long.', '65.96', 'Classic Metal Creations', 'S18_1589', 1),
(13, '1948 Porsche 356-A Roadster', 'This precision die-cast replica features opening doors, superb detail and craftsmanship, working steering system, opening forward compartment, opening rear trunk with removable spare, 4 wheel independent spring suspension as well as factory baked enaml finish.''', '53.90', 'Gearbox Collectibles', 'S18_1889', 1),
(14, '1995 Honda Civic', 'This model features, opening hood, opening doors, detailed engine, rear spoiler, opening trunk, working steering, tinted windows, baked enamel finish. Color yellow.', '93.89', 'Min Lin Diecast', 'S18_1984', 1),
(15, '1998 Chrysler Plymouth Prowler', 'Turnable front wheels; steering function; detailed interior; detailed engine; opening hood; opening trunk; opening doors; and detailed chassis.', '101.51', 'Gearbox Collectibles', 'S18_2238', 1),
(16, '1999 Indy 500 Monte Carlo SS', 'Features include opening and closing doors. Color: Red', '56.76', 'Red Start Diecast', 'S18_2870', 1),
(17, '1992 Ferrari 360 Spider red', 'his replica features opening doors, superb detail and craftsmanship, working steering system, opening forward compartment, opening rear trunk with removable spare, 4 wheel independent spring suspension as well as factory baked enamel finish.', '77.90', 'Unimax Art Galleries', 'S18_3232', 1),
(18, '1985 Toyota Supra', 'This model features soft rubber tires, working steering, rubber mud guards, authentic Ford logos, detailed undercarriage, opening doors and hood, removable split rear gate, full size spare mounted in bed, detailed interior with opening glove box', '57.01', 'Highway 66 Mini Classics', 'S18_3233', 1),
(19, '1969 Dodge Super Bee', 'This replica features opening doors, superb detail and craftsmanship, working steering system, opening forward compartment, opening rear trunk with removable spare, 4 wheel independent spring suspension as well as factory baked enamel finish.', '49.05', 'Min Lin Diecast', 'S18_3278', 1),
(20, '1976 Ford Gran Torino', 'Highly detailed 1976 Ford Gran Torino ''''Starsky and Hutch'''' diecast model. Very well constructed and painted in red and white patterns.', '73.49', 'Gearbox Collectibles', 'S18_3482', 1),
(21, '1948 Porsche Type 356 Roadster', 'This model features working front and rear suspension on accurately replicated and actuating shock absorbers as well as opening engine cover, rear stabilizer flap,  and 4 opening doors.', '62.16', 'Gearbox Collectibles', 'S18_3685', 1),
(22, '1970 Triumph Spitfire', 'Features include opening and closing doors. Color: White.', '91.92', 'Min Lin Diecast', 'S18_4027', 1),
(23, '1957 Corvette Convertible', '1957 die cast Corvette Convertible in Roman Red with white sides and whitewall tires. 1:18 scale quality die-cast with detailed engine and underbvody. Now you can own The Classic Corvette.', '69.93', 'Classic Metal Creations', 'S18_4721', 1),
(24, '1957 Ford Thunderbird', 'This 1:18 scale precision die-cast replica, with its optional porthole hardtop and factory baked-enamel Thunderbird Bronze finish, is a 100% accurate rendition of this American classic.', '34.21', 'Studio M Art Models', 'S18_4933', 1),
(25, '1970 Chevy Chevelle SS 454', 'This model features rotating wheels, working streering system and opening doors. All parts are particularly delicate due to their precise scale and require special care and attention. It should not be picked up by the doors, roof, hood or trunk.', '49.24', 'Unimax Art Galleries', 'S24_1046', 1),
(26, '1970 Dodge Coronet', '1:24 scale die-cast about 18'''' long doors open, hood opens and rubber wheels', '32.37', 'Highway 66 Mini Classics', 'S24_1444', 1),
(27, '1966 Shelby Cobra 427 S/C', 'This diecast model of the 1966 Shelby Cobra 427 S/C includes many authentic details and operating parts. The 1:24 scale model of this iconic lighweight sports car from the 1960s comes in silver and it''s own display case.', '29.18', 'Carousel DieCast Legends', 'S24_1628', 1),
(28, '1949 Jaguar XK 120', 'Precision-engineered from original Jaguar specification in perfect scale ratio. Features opening doors, superb detail and craftsmanship, working steering system, opening forward compartment, opening rear trunk with removable spare, 4 wheel independent spring suspension as well as factory baked enamel finish.', '47.25', 'Classic Metal Creations', 'S24_2766', 1),
(29, '1958 Chevy Corvette Limited Edition', 'The operating parts of this 1958 Chevy Corvette Limited Edition are particularly delicate due to their precise scale and require special care and attention. Features rotating wheels, working streering, opening doors and trunk. Color dark green.', '15.91', 'Carousel DieCast Legends', 'S24_2840', 1),
(30, '1952 Citroen-15CV', 'Precision crafted hand-assembled 1:18 scale reproduction of the 1952 15CV, with its independent spring suspension, working steering system, opening doors and hood, detailed engine and instrument panel, all topped of with a factory fresh baked enamel finish.', '72.82', 'Exoto Designs', 'S24_2887', 1),
(31, '1982 Lamborghini Diablo', 'This replica features opening doors, superb detail and craftsmanship, working steering system, opening forward compartment, opening rear trunk with removable spare, 4 wheel independent spring suspension as well as factory baked enamel finish.', '16.24', 'Second Gear Diecast', 'S24_2972', 1),
(32, '1969 Chevrolet Camaro Z28', '1969 Z/28 Chevy Camaro 1:24 scale replica. The operating parts of this limited edition 1:24 scale diecast model car 1969 Chevy Camaro Z28- hood, trunk, wheels, streering, suspension and doors- are particularly delicate due to their precise scale and require special care and attention.', '50.51', 'Exoto Designs', 'S24_3191', 1),
(33, '1971 Alpine Renault 1600s', 'This 1971 Alpine Renault 1600s replica Features opening doors, superb detail and craftsmanship, working steering system, opening forward compartment, opening rear trunk with removable spare, 4 wheel independent spring suspension as well as factory baked enamel finish.', '38.58', 'Welly Diecast Productions', 'S24_3371', 1),
(34, '2002 Chevy Corvette', 'The operating parts of this limited edition Diecast 2002 Chevy Corvette 50th Anniversary Pace car Limited Edition are particularly delicate due to their precise scale and require special care and attention. Features rotating wheels, poseable streering, opening doors and trunk.', '62.11', 'Gearbox Collectibles', 'S24_3432', 1),
(35, '1956 Porsche 356A Coupe', 'Features include: Turnable front wheels; steering function; detailed interior; detailed engine; opening hood; opening trunk; opening doors; and detailed chassis.', '98.30', 'Classic Metal Creations', 'S24_3856', 1),
(36, '1992 Porsche Cayenne Turbo Silver', 'This replica features opening doors, superb detail and craftsmanship, working steering system, opening forward compartment, opening rear trunk with removable spare, 4 wheel independent spring suspension as well as factory baked enamel finish.', '69.78', 'Exoto Designs', 'S24_4048', 1),
(37, '1961 Chevrolet Impala', 'This 1:18 scale precision die-cast reproduction of the 1961 Chevrolet Impala has all the features-doors, hood and trunk that open; detailed 409 cubic-inch engine; chrome dashboard and stick shift, two-tone interior; working steering system; all topped of with a factory baked-enamel finish.', '32.33', 'Classic Metal Creations', 'S24_4620', 1),
(38, '1982 Camaro Z28', 'Features include opening and closing doors. Color: White. rnMeasures approximately 9 1/2'''' Long.', '46.53', 'Carousel DieCast Legends', 'S700_2824', 1),
(39, '1969 Harley Davidson Ultimate Chopper', 'This replica features working kickstand, front suspension, gear-shift lever, footbrake lever, drive chain, wheels and steering. All parts are particularly delicate due to their precise scale and require special care and attention.', '48.81', 'Min Lin Diecast', 'S10_1678', 2),
(40, '1996 Moto Guzzi 1100i', 'Official Moto Guzzi logos and insignias, saddle bags located on side of motorcycle, detailed engine, working steering, working suspension, two leather seats, luggage rack, dual exhaust pipes, small saddle bag located on handle bars, two-tone paint with chrome accents, superior die-cast detail , rotating wheels , working kick stand, diecast metal with plastic parts and baked enamel finish.', '68.99', 'Highway 66 Mini Classics', 'S10_2016', 2),
(41, '2003 Harley-Davidson Eagle Drag Bike', 'Model features, official Harley Davidson logos and insignias, detachable rear wheelie bar, heavy diecast metal with resin parts, authentic multi-color tampo-printed graphics, separate engine drive belts, free-turning front fork, rotating tires and rear racing slick, certificate of authenticity, detailed engine, display standrn, precision diecast replica, baked enamel finish, 1:10 scale model, removable fender, seat and tank cover piece for displaying the superior detail of the v-twin engine', '91.02', 'Red Start Diecast', 'S10_4698', 2),
(42, '2002 Suzuki XREO', 'Official logos and insignias, saddle bags located on side of motorcycle, detailed engine, working steering, working suspension, two leather seats, luggage rack, dual exhaust pipes, small saddle bag located on handle bars, two-tone paint with chrome accents, superior die-cast detail , rotating wheels , working kick stand, diecast metal with plastic parts and baked enamel finish.', '66.27', 'Unimax Art Galleries', 'S12_2823', 2),
(43, '1936 Harley Davidson El Knucklehead', 'Intricately detailed with chrome accents and trim, official die-struck logos and baked enamel finish.', '24.23', 'Welly Diecast Productions', 'S18_2625', 2),
(44, '1957 Vespa GS150', 'Features rotating wheels , working kick stand. Comes with stand.', '32.95', 'Studio M Art Models', 'S18_3782', 2),
(45, '1997 BMW R 1100 S', 'Detailed scale replica with working suspension and constructed from over 70 parts', '60.86', 'Autoart Studio Design', 'S24_1578', 2),
(46, '1960 BSA Gold Star DBD34', 'Detailed scale replica with working suspension and constructed from over 70 parts', '37.32', 'Highway 66 Mini Classics', 'S24_2000', 2),
(47, '1982 Ducati 900 Monster', 'Features two-tone paint with chrome accents, superior die-cast detail , rotating wheels , working kick stand', '47.10', 'Highway 66 Mini Classics', 'S24_2360', 2),
(48, '1997 BMW F650 ST', 'Features official die-struck logos and baked enamel finish. Comes with stand.', '66.92', 'Exoto Designs', 'S32_1374', 2),
(49, '1982 Ducati 996 R', 'Features rotating wheels , working kick stand. Comes with stand.', '24.14', 'Gearbox Collectibles', 'S32_2206', 2),
(50, '1974 Ducati 350 Mk3 Desmo', 'This model features two-tone paint with chrome accents, superior die-cast detail , rotating wheels , working kick stand', '56.13', 'Second Gear Diecast', 'S32_4485', 2),
(51, '2002 Yamaha YZR M1', 'Features rotating wheels , working kick stand. Comes with stand.', '34.17', 'Autoart Studio Design', 'S50_4713', 2),
(52, '1980s Black Hawk Helicopter', '1:18 scale replica of actual Army''s UH-60L BLACK HAWK Helicopter. 100% hand-assembled. Features rotating rotor blades, propeller blades and rubber wheels.', '77.27', 'Red Start Diecast', 'S18_1662', 3),
(53, 'P-51-D Mustang', 'Has retractable wheels and comes with a stand', '49.00', 'Gearbox Collectibles', 'S18_2581', 3),
(54, '1928 British Royal Navy Airplane', 'Official logos and insignias', '66.74', 'Classic Metal Creations', 'S24_1785', 3),
(55, '1900s Vintage Bi-Plane', 'Hand crafted diecast-like metal bi-plane is re-created in about 1:24 scale of antique pioneer airplane. All hand-assembled with many different parts. Hand-painted in classic yellow and features correct markings of original airplane.', '34.25', 'Autoart Studio Design', 'S24_2841', 3),
(56, 'Corsair F4U ( Bird Cage)', 'Has retractable wheels and comes with a stand. Official logos and insignias.', '29.34', 'Second Gear Diecast', 'S24_3949', 3),
(57, '1900s Vintage Tri-Plane', 'Hand crafted diecast-like metal Triplane is Re-created in about 1:24 scale of antique pioneer airplane. This antique style metal triplane is all hand-assembled with many different parts.', '36.23', 'Unimax Art Galleries', 'S24_4278', 3),
(58, 'American Airlines: B767-300', 'Exact replia with official logos and insignias and retractable wheels', '51.15', 'Min Lin Diecast', 'S700_1691', 3),
(59, 'America West Airlines B757-200', 'Official logos and insignias. Working steering system. Rotating jet engines', '68.80', 'Motor City Art Classics', 'S700_2466', 3),
(60, 'ATA: B757-300', 'Exact replia with official logos and insignias and retractable wheels', '59.33', 'Highway 66 Mini Classics', 'S700_2834', 3),
(61, 'F/A 18 Hornet 1/72', '10'''' Wingspan with retractable landing gears.Comes wih pilot''', '54.40', 'Motor City Art Classics', 'S700_3167', 3),
(62, 'American Airlines: MD-11S', 'Polished finish. Exact replia with official logos and insignias and retractable wheels', '36.27', 'Second Gear Diecast', 'S700_4002', 3),
(63, 'Boeing X-32A JSF', '10'''' Wingspan with retractable landing gears.Comes with pilot', '32.77', 'Motor City Art Classics', 'S72_1253', 3),
(64, '1999 Yamaha Speed Boat', 'Exact replica. Wood and Metal. Many extras including rigging, long boats, pilot house, anchors, etc. Comes with three masts, all square-rigged.', '51.61', 'Min Lin Diecast', 'S18_3029', 4),
(65, '18th century schooner', 'All wood with canvas sails. Many extras including rigging, long boats, pilot house, anchors, etc. Comes with 4 masts, all square-rigged.', '82.34', 'Carousel DieCast Legends', 'S24_2011', 4),
(66, 'The Schooner Bluenose', 'All wood with canvas sails. Measures 31 1/2 inches in Length, 22 inches High and 4 3/4 inches Wide. Many extras.rnThe schooner Bluenose was built in Nova Scotia in 1921 to fish the rough waters off the coast of Newfoundland. Because of the Bluenose racing prowess she became the pride of all Canadians. Still featured on stamps and the Canadian dime, the Bluenose was lost off Haiti n 1946.''', '34.00', 'Autoart Studio Design', 'S700_1138', 4),
(67, 'The Mayflower', 'Measures 31 1/2 inches Long x 25 1/2 inches High x 10 5/8 inches WidernAll wood with canvas sail. Extras include long boats, rigging, ladders, railing, anchors, side cannons, hand painted, etc.', '43.30', 'Studio M Art Models', 'S700_1938', 4),
(68, 'HMS Bounty', 'Measures 30 inches Long x 27 1/2 inches High x 4 3/4 inches Wide. rnMany extras including rigging, long boats, pilot house, anchors, etc. Comes with three masts, all square-rigged.', '39.83', 'Unimax Art Galleries', 'S700_2047', 4),
(69, 'The USS Constitution Ship', 'All wood with canvas sails. Measures 31 1/2'''' Length x 22 3/8'''' High x 8 1/4'''' Width. Extras include 4 boats on deck, sea sprite on bow, anchors, copper railing, pilot houses, etc.', '33.97', 'Red Start Diecast', 'S700_2610', 4),
(70, 'The Titanic', 'Completed model measures 19 1/2 inches long, 9 inches high, 3inches wide and is in barn red/black. All wood and metal.', '51.09', 'Carousel DieCast Legends', 'S700_3505', 4),
(71, 'The Queen Mary', 'Exact replica. Wood and Metal. Many extras including rigging, long boats, pilot house, anchors, etc. Comes with three masts, all square-rigged.', '53.63', 'Welly Diecast Productions', 'S700_3962', 4),
(72, 'Pont Yacht', 'Measures 38 inches Long x 33 3/4 inches High. Includes a stand.rnMany extras including rigging, long boats, pilot house, anchors, etc. Comes with 2 masts, all square-rigged', '33.30', 'Unimax Art Galleries', 'S72_3212', 4),
(73, 'Collectable Wooden Train', 'Hand crafted wooden toy train set is in about 1:18 scale, 25 inches in total length including 2 additional carts, of actual vintage train. This antique style wooden toy train model set is all hand-assembled with 100% wood.', '67.56', 'Carousel DieCast Legends', 'S18_3259', 5),
(74, '1950''s Chicago Surface Lines Streetcar', 'This streetcar is a joy to see. It has 80 separate windows, electric wire guides, detailed interiors with seats, poles and drivers controls, rolling and turning wheel assemblies, plus authentic factory baked-enamel finishes (Green Hornet for Chicago and Cream and Crimson for Boston).', '26.72', 'Gearbox Collectibles', 'S32_3207', 5),
(75, '1962 City of Detroit Streetcar', 'This streetcar is a joy to see. It has 99 separate windows, electric wire guides, detailed interiors with seats, poles and drivers controls, rolling and turning wheel assemblies, plus authentic factory baked-enamel finishes (Green Hornet for Chicago and Cream and Crimson for Boston).', '37.49', 'Classic Metal Creations', 'S50_1514', 5),
(76, '1958 Setra Bus', 'Model features 30 windows, skylights & glare resistant glass, working steering system, original logos', '77.90', 'Welly Diecast Productions', 'S12_1666', 6),
(77, '1957 Chevy Pickup', '1:12 scale die-cast about 20'''' long Hood opens, Rubber wheels', '55.70', 'Exoto Designs', 'S12_4473', 6),
(78, '1940 Ford Pickup Truck', 'This model features soft rubber tires, working steering, rubber mud guards, authentic Ford logos, detailed undercarriage, opening doors and hood,  removable split rear gate, full size spare mounted in bed, detailed interior with opening glove box', '58.33', 'Studio M Art Models', 'S18_1097', 6),
(79, '1964 Mercedes Tour Bus', 'Exact replica. 100+ parts. working steering system, original logos', '74.86', 'Unimax Art Galleries', 'S18_2319', 6),
(80, '1926 Ford Fire Engine', 'Gleaming red handsome appearance. Everything is here the fire hoses, ladder, axes, bells, lanterns, ready to fight any inferno.', '24.92', 'Carousel DieCast Legends', 'S18_2432', 6),
(81, '1940s Ford truck', 'This 1940s Ford Pick-Up truck is re-created in 1:18 scale of original 1940s Ford truck. This antique style metal 1940s Ford Flatbed truck is all hand-assembled. This collectible 1940''s Pick-Up truck is painted in classic dark green color, and features rotating wheels.', '84.76', 'Motor City Art Classics', 'S18_4600', 6),
(82, '1962 Volkswagen Microbus', 'This 1:18 scale die cast replica of the 1962 Microbus is loaded with features: A working steering system, opening front doors and tailgate, and famous two-tone factory baked enamel finish, are all topped of by the sliding, real fabric, sunroof.', '61.34', 'Autoart Studio Design', 'S24_2300', 6),
(83, '1980’s GM Manhattan Express', 'This 1980’s era new look Manhattan express is still active, running from the Bronx to mid-town Manhattan. Has 35 opeining windows and working lights. Needs a battery.', '53.93', 'Motor City Art Classics', 'S32_1268', 6),
(84, '1954 Greyhound Scenicruiser', 'Model features bi-level seating, 50 windows, skylights & glare resistant glass, working steering system, original logos', '25.98', 'Classic Metal Creations', 'S32_2509', 6),
(85, '1996 Peterbilt 379 Stake Bed with Outrigger', 'This model features, opening doors, detailed engine, working steering, tinted windows, detailed interior, die-struck logos, removable stakes operating outriggers, detachable second trailer, functioning 360-degree self loader, precision molded resin trailer and trim, baked enamel finish on cab', '33.61', 'Red Start Diecast', 'S32_3522', 6),
(86, 'Diamond T620 Semi-Skirted Tanker', 'This limited edition model is licensed and perfectly scaled for Lionel Trains. The Diamond T620 has been produced in solid precision diecast and painted with a fire baked enamel finish. It comes with a removable tanker and is a perfect model to add authenticity to your static train or car layout or to just have on display.', '68.29', 'Highway 66 Mini Classics', 'S50_1392', 6),
(87, '1937 Lincoln Berline', 'Features opening engine cover, doors, trunk, and fuel filler cap. Color black', '60.62', 'Motor City Art Classics', 'S18_1342', 7),
(88, '1936 Mercedes-Benz 500K Special Roadster', 'This 1:18 scale replica is constructed of heavy die-cast metal and has all the features of the original: working doors and rumble seat, independent spring suspension, detailed interior, working steering system, and a bifold hood that reveals an engine so accurate that it even includes the wiring. All this is topped off with a baked enamel finish. Color white.', '24.26', 'Studio M Art Models', 'S18_1367', 7),
(89, '1917 Grand Touring Sedan', 'This 1:18 scale replica of the 1917 Grand Touring car has all the features you would expect from museum quality reproductions: all four doors and bi-fold hood opening, detailed engine and instrument panel, chrome-look trim, and tufted upholstery, all topped off with a factory baked-enaml finish.''', '86.70', 'Welly Diecast Productions', 'S18_1749', 7),
(90, '1911 Ford Town Car', 'Features opening hood, opening doors, opening trunk, wide white wall tires, front door arm rests, working steering system.', '33.30', 'Motor City Art Classics', 'S18_2248', 7),
(91, '1932 Model A Ford J-Coupe', 'This model features grille-mounted chrome horn, lift-up louvered hood, fold-down rumble seat, working steering system, chrome-covered spare, opening doors, detailed and wired engine', '58.48', 'Autoart Studio Design', 'S18_2325', 7),
(92, '1928 Mercedes-Benz SSK', 'This 1:18 replica features grille-mounted chrome horn, lift-up louvered hood, fold-down rumble seat, working steering system, chrome-covered spare, opening doors, detailed and wired engine. Color black.', '72.56', 'Gearbox Collectibles', 'S18_2795', 7),
(93, '1913 Ford Model T Speedster', 'This 250 part reproduction includes moving handbrakes, clutch, throttle and foot pedals, squeezable horn, detailed wired engine, removable water, gas, and oil cans, pivoting monocle windshield, all topped with a baked enamel red finish. Each replica comes with an Owners Title and Certificate of Authenticity. Color red.', '60.78', 'Carousel DieCast Legends', 'S18_2949', 7),
(94, '1934 Ford V8 Coupe', 'Chrome Trim, Chrome Grille, Opening Hood, Opening Doors, Opening Trunk, Detailed Engine, Working Steering System', '34.35', 'Min Lin Diecast', 'S18_2957', 7),
(95, '18th Century Vintage Horse Carriage', 'Hand crafted diecast-like metal horse carriage is re-created in about 1:18 scale of antique horse carriage. This antique style metal Stagecoach is all hand-assembled with many different parts.rnrnThis collectible metal horse carriage is painted in classic Red, and features turning steering wheel and is entirely hand-finished.', '60.74', 'Red Start Diecast', 'S18_3136', 7),
(96, '1903 Ford Model A', 'Features opening trunk,  working steering system', '68.30', 'Unimax Art Galleries', 'S18_3140', 7),
(97, '1917 Maxwell Touring Car', 'Features Gold Trim, Full Size Spare Tire, Chrome Trim, Chrome Grille, Opening Hood, Opening Doors, Opening Trunk, Detailed Engine, Working Steering System', '57.54', 'Exoto Designs', 'S18_3320', 7),
(98, '1941 Chevrolet Special Deluxe Cabriolet', 'Features opening hood, opening doors, opening trunk, wide white wall tires, front door arm rests, working steering system, leather upholstery. Color black.', '64.58', 'Exoto Designs', 'S18_3856', 7),
(99, '1932 Alfa Romeo 8C2300 Spider Sport', 'This 1:18 scale precision die cast replica features the 6 front headlights of the original, plus a detailed version of the 142 horsepower straight 8 engine, dual spares and their famous comprehensive dashboard. Color black.', '43.26', 'Exoto Designs', 'S18_4409', 7),
(100, '1904 Buick Runabout', 'Features opening trunk,  working steering system', '52.66', 'Exoto Designs', 'S18_4522', 7),
(101, '1939 Cadillac Limousine', 'Features completely detailed interior including Velvet flocked drapes,deluxe wood grain floor, and a wood grain casket with seperate chrome handles', '23.14', 'Studio M Art Models', 'S18_4668', 7),
(102, '1939 Chevrolet Deluxe Coupe', 'This 1:24 scale die-cast replica of the 1939 Chevrolet Deluxe Coupe has the same classy look as the original. Features opening trunk, hood and doors and a showroom quality baked enamel finish.', '22.57', 'Motor City Art Classics', 'S24_1937', 7),
(103, '1938 Cadillac V-16 Presidential Limousine', 'This 1:24 scale precision die cast replica of the 1938 Cadillac V-16 Presidential Limousine has all the details of the original, from the flags on the front to an opening back seat compartment complete with telephone and rifle. Features factory baked-enamel black finish, hood goddess ornament, working jump seats.', '20.61', 'Classic Metal Creations', 'S24_2022', 7),
(104, '1912 Ford Model T Delivery Wagon', 'This model features chrome trim and grille, opening hood, opening doors, opening trunk, detailed engine, working steering system. Color white.', '46.91', 'Min Lin Diecast', 'S24_3151', 7),
(105, '1937 Horch 930V Limousine', 'Features opening hood, opening doors, opening trunk, wide white wall tires, front door arm rests, working steering system', '26.00', 'Autoart Studio Design', 'S24_3420', 7),
(106, '1940 Ford Delivery Sedan', 'Chrome Trim, Chrome Grille, Opening Hood, Opening Doors, Opening Trunk, Detailed Engine, Working Steering System. Color black.', '48.64', 'Carousel DieCast Legends', 'S24_3816', 7),
(107, '1936 Mercedes Benz 500k Roadster', 'This model features grille-mounted chrome horn, lift-up louvered hood, fold-down rumble seat, working steering system and rubber wheels. Color black.', '21.75', 'Red Start Diecast', 'S24_3969', 7),
(108, '1936 Chrysler Airflow', 'Features opening trunk,  working steering system. Color dark green.', '57.46', 'Second Gear Diecast', 'S24_4258', 7),
(109, '1928 Ford Phaeton Deluxe', 'This model features grille-mounted chrome horn, lift-up louvered hood, fold-down rumble seat, working steering system', '33.02', 'Highway 66 Mini Classics', 'S32_4289', 7),
(110, '1930 Buick Marquette Phaeton', 'Features opening trunk,  working steering system', '27.00', 'Studio M Art Models', 'S50_1341', 7);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
