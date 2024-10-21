-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Okt 21. 09:13
-- Kiszolgáló verziója: 10.4.28-MariaDB
-- PHP verzió: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `blog`
--
CREATE DATABASE IF NOT EXISTS `blog` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `blog`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `bloggers`
--

CREATE TABLE `bloggers` (
  `Id` char(36) NOT NULL,
  `Name` longtext NOT NULL,
  `Sex` longtext NOT NULL,
  `Status` longtext NOT NULL,
  `RegistrationTime` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `bloggers`
--

INSERT INTO `bloggers` (`Id`, `Name`, `Sex`, `Status`, `RegistrationTime`) VALUES
('08a90d60-3ec2-4ada-a7ec-26ff572afbbb', 'Faîtes', 'Female', 'nisi at nibh in hac', '2024-08-22 12:49:06.000000'),
('08cc441c-3250-404e-aad2-973f481221b0', 'Fèi', 'Polygender', 'bibendum imperdiet nullam orci pede', '2023-11-18 14:24:28.000000'),
('0e1d54e7-e40d-4752-84b9-c03fb69e8c05', 'Marie-noël', 'Male', 'donec vitae nisi nam ultrices libero non', '2024-10-12 18:25:41.000000'),
('0e443114-4acc-456d-8a6b-d4003f7a1e51', 'Liè', 'Male', 'sit amet lobortis sapien sapien non', '2024-01-18 22:22:02.000000'),
('0ee615a2-249a-4b4c-9ba0-dc8c90563422', 'Marie-josée', 'Male', 'velit id pretium iaculis diam erat fermentum justo nec condimentum', '2024-02-27 14:57:50.000000'),
('10292f04-d47a-41e6-a43c-f6277b8b030b', 'Lucrèce', 'Female', 'eros vestibulum ac est lacinia nisi venenatis tristique fusce congue', '2023-11-01 20:10:30.000000'),
('11340965-bb48-48b5-9dcf-68cc445ed711', 'Crééz', 'Male', 'quam a odio in hac habitasse platea dictumst maecenas ut', '2024-10-19 09:55:52.000000'),
('13c99ecc-e483-45b1-aad8-e1889a632418', 'Eloïse', 'Male', 'vestibulum quam sapien varius ut blandit non interdum', '2024-07-22 00:41:51.000000'),
('14ef15ed-3f7c-43f4-b861-d5aae896f96f', 'Cinéma', 'Non-binary', 'praesent blandit nam nulla integer pede justo lacinia eget', '2024-06-04 06:04:32.000000'),
('16bb905f-ec8c-4a7a-9397-9b6ad15a7ac9', 'Stévina', 'Female', 'odio justo sollicitudin ut suscipit', '2024-02-06 02:32:36.000000'),
('1ccaf320-3119-4e37-b686-d78f8432f90b', 'Pò', 'Male', 'lobortis vel dapibus at diam', '2024-01-01 18:58:43.000000'),
('1f0c9e15-a9e7-46f4-919a-9bb5b72cbc91', 'Méline', 'Female', 'nulla elit ac nulla sed vel enim', '2024-01-11 19:41:06.000000'),
('1ff4347b-2e57-413c-8c57-de2bbb67caeb', 'Eugénie', 'Male', 'potenti in eleifend quam a odio', '2024-04-07 22:56:08.000000'),
('2333d320-f539-4d13-99fc-4f1371c13af9', 'Tán', 'Male', 'consequat in consequat ut nulla sed accumsan', '2024-08-27 02:58:00.000000'),
('28018494-316d-4518-9d5e-d1e739173d21', 'Fèi', 'Male', 'a libero nam dui proin leo odio porttitor', '2024-10-04 09:03:28.000000'),
('29ddd18a-6aab-4cb3-bffd-1ea5510a294e', 'Publicité', 'Agender', 'scelerisque mauris sit amet eros suspendisse accumsan tortor', '2023-10-31 12:56:31.000000'),
('2bc3782f-108f-4727-8c37-6f399ca81286', 'Séverine', 'Female', 'morbi vel lectus in quam', '2024-01-25 22:43:57.000000'),
('2e725ffb-1305-4186-9cc0-b4b0dcfffb63', 'Anaël', 'Male', 'turpis nec euismod scelerisque quam', '2024-02-06 23:13:52.000000'),
('2ea12f10-5bb4-48ad-9c3d-af5aea07e2cf', 'Maïly', 'Male', 'leo rhoncus sed vestibulum sit amet cursus id', '2023-11-10 18:41:44.000000'),
('30179ba0-3184-49a2-b593-dfc707c2b5c3', 'Lauréna', 'Male', 'odio consequat varius integer ac leo pellentesque', '2024-04-25 20:07:46.000000'),
('31c4b38d-7eff-4f5b-a055-30fbdd02c553', 'Séverine', 'Male', 'consequat lectus in est risus auctor sed tristique in tempus', '2024-02-20 11:04:55.000000'),
('3315ca96-7040-41fc-a6c0-ceebb782bef2', 'Maéna', 'Male', 'lorem ipsum dolor sit amet consectetuer adipiscing elit proin', '2024-08-22 11:30:43.000000'),
('3b9492ff-79e9-41c8-9c5c-91e4a8da8bf4', 'Håkan', 'Male', 'lobortis sapien sapien non mi integer ac neque duis', '2024-03-18 18:07:18.000000'),
('3f0e0c8f-b78f-4f78-b99d-10a08ebf84db', 'Vénus', 'Male', 'nec euismod scelerisque quam turpis adipiscing', '2024-08-09 06:42:52.000000'),
('45c0f430-a6a4-49b7-a426-57e327a9c834', 'Gösta', 'Male', 'augue a suscipit nulla elit', '2024-04-25 06:28:15.000000'),
('4679b08a-ed3d-4087-929f-c9bb15c263b0', 'Lucrèce', 'Male', 'platea dictumst morbi vestibulum velit id pretium', '2024-06-11 17:50:26.000000'),
('4756a2b4-7910-430b-9503-03b0c9b21eeb', 'Anaé', 'Genderfluid', 'sapien dignissim vestibulum vestibulum ante ipsum primis', '2023-12-08 18:12:06.000000'),
('48c82eb2-5619-42fe-a1cc-8718f61fffd0', 'Cunégonde', 'Male', 'cubilia curae duis faucibus accumsan odio curabitur convallis', '2024-08-04 08:02:30.000000'),
('4903ebce-1a13-41da-ab4d-e87d3c7ccd98', 'Hélène', 'Female', 'primis in faucibus orci luctus et ultrices posuere cubilia', '2024-03-30 13:37:28.000000'),
('492e11f3-5254-4f95-9868-a9cc12adb22b', 'Médiamass', 'Male', 'morbi a ipsum integer a nibh in quis justo', '2024-01-24 11:52:36.000000'),
('500fc9b2-453c-4080-91df-e678d7d5ff01', 'Léane', 'Male', 'magna vulputate luctus cum sociis natoque penatibus et magnis dis', '2023-11-04 13:57:41.000000'),
('5283737b-db69-41ef-9e5f-38198ae7d000', 'Alizée', 'Female', 'nulla neque libero convallis eget eleifend', '2024-05-12 17:12:12.000000'),
('52ca593a-3044-47a7-9149-d95d3fd012dc', 'Mylène', 'Female', 'rhoncus dui vel sem sed sagittis nam congue', '2024-06-11 09:44:11.000000'),
('5472b1b8-ab01-408d-a9fc-0cfb7d42797e', 'Cléopatre', 'Male', 'ultrices enim lorem ipsum dolor', '2024-02-22 16:30:36.000000'),
('56a2af0d-4555-4166-8c1a-d3c60a9dc879', 'Océane', 'Bigender', 'morbi sem mauris laoreet ut', '2024-03-14 18:31:17.000000'),
('576efab2-c22b-43f6-8722-a6b061358714', 'André', 'Female', 'rutrum nulla tellus in sagittis dui vel nisl duis ac', '2024-08-08 03:34:42.000000'),
('58619b19-d1e3-43ef-b8ca-bb2f26c368e6', 'Gaëlle', 'Female', 'venenatis turpis enim blandit mi in porttitor pede', '2024-06-28 18:55:07.000000'),
('59699b69-806c-4721-9c22-56ca4e013a6f', 'Kù', 'Male', 'nullam molestie nibh in lectus pellentesque at nulla suspendisse', '2024-01-08 10:56:18.000000'),
('5985b813-3a5a-494d-b10a-ece71769aad5', 'Nadège', 'Female', 'luctus ultricies eu nibh quisque id justo sit', '2024-07-20 13:50:40.000000'),
('5a8ba5da-1eaa-4952-bbd8-78b2bd893ae3', 'Bérénice', 'Female', 'nulla ultrices aliquet maecenas leo odio condimentum', '2024-06-08 12:36:39.000000'),
('5ccefec8-f376-47ae-9130-eefd86a8ed23', 'Annotée', 'Male', 'turpis donec posuere metus vitae ipsum aliquam non mauris morbi', '2023-11-20 16:57:20.000000'),
('5f87497b-d98a-4514-8528-c34a077655d9', 'Lài', 'Bigender', 'nisl venenatis lacinia aenean sit amet justo', '2024-01-30 15:12:24.000000'),
('6628ecd2-cd36-49b8-acc7-67c179eb704a', 'Eléa', 'Bigender', 'pretium nisl ut volutpat sapien arcu', '2024-09-13 18:49:07.000000'),
('67cd1dc1-1281-428f-af1e-74bb78eeebf6', 'Loïca', 'Female', 'vulputate nonummy maecenas tincidunt lacus at velit vivamus vel', '2023-12-25 15:39:33.000000'),
('68af3f60-643e-44b4-86c2-c739b8982f0a', 'Nélie', 'Male', 'varius nulla facilisi cras non velit nec nisi', '2023-11-24 02:41:09.000000'),
('697fd4dc-34f5-4d25-85f8-377933df3a2e', 'Gaïa', 'Male', 'mauris vulputate elementum nullam varius nulla facilisi', '2024-10-01 13:21:13.000000'),
('6aa5efdc-9823-4abb-9d5c-92d964a9746a', 'Cécile', 'Male', 'quam sollicitudin vitae consectetuer eget rutrum at', '2024-08-05 06:18:19.000000'),
('6cfdc33c-cc50-4989-8faa-ab31aeabd3ef', 'Sòng', 'Female', 'vulputate ut ultrices vel augue vestibulum', '2024-02-15 20:18:44.000000'),
('6ec302ee-f5cc-4e49-95ce-ced9a95af14d', 'Gösta', 'Male', 'est risus auctor sed tristique', '2023-12-31 12:21:41.000000'),
('703c396c-bbfd-479d-b025-a9754aeb8f1b', 'Frédérique', 'Male', 'dolor quis odio consequat varius', '2024-08-14 01:19:29.000000'),
('71ab72dd-23d6-4e41-8626-5396c110162e', 'Maëline', 'Female', 'semper porta volutpat quam pede lobortis ligula', '2024-08-06 18:26:06.000000'),
('71d6ca50-28c8-42b3-9f67-dc4c226037b8', 'Réjane', 'Female', 'eu massa donec dapibus duis at velit eu est congue', '2024-09-28 07:25:44.000000'),
('73ccffdb-c351-4c5a-a075-7a8ada674a38', 'Clélia', 'Male', 'justo eu massa donec dapibus duis at velit eu est', '2024-08-11 02:52:58.000000'),
('74175722-9e94-4b7d-be69-2481a884c208', 'Salomé', 'Male', 'quis turpis sed ante vivamus tortor duis mattis egestas', '2023-12-22 10:10:25.000000'),
('7e418674-a571-4a65-848b-d3087e692ed0', 'Pélagie', 'Polygender', 'ultricies eu nibh quisque id justo sit', '2024-02-14 20:30:35.000000'),
('818ae2d8-71cc-4b3b-adda-cebefb07c7e8', 'Eliès', 'Male', 'condimentum neque sapien placerat ante nulla justo', '2024-04-12 07:37:38.000000'),
('835aff72-a06f-409f-97a8-aede1e4c50fa', 'Estée', 'Female', 'a ipsum integer a nibh in quis justo maecenas rhoncus', '2024-07-12 21:24:09.000000'),
('84e14da7-e967-4bf3-a7e4-7f0958af7861', 'Maïlis', 'Female', 'etiam justo etiam pretium iaculis justo in hac habitasse platea', '2023-11-23 21:39:16.000000'),
('861d9377-f90f-4539-95e9-b23f5bf81c6f', 'Eliès', 'Male', 'primis in faucibus orci luctus et ultrices posuere', '2023-12-25 08:30:32.000000'),
('865a5ade-0263-4076-b152-5718f7a1dadc', 'Rachèle', 'Male', 'aliquet pulvinar sed nisl nunc rhoncus dui vel', '2023-11-27 17:41:24.000000'),
('88afd051-e15d-4cdc-930f-ba49a194dcbe', 'Nuó', 'Male', 'vel accumsan tellus nisi eu orci', '2024-10-13 08:14:49.000000'),
('8dc3d28c-ab59-4ea1-9fd9-b1d0128e0429', 'Esbjörn', 'Female', 'dui luctus rutrum nulla tellus', '2024-05-06 10:03:22.000000'),
('927dc2e0-e825-4052-ba17-718892e0a9e3', 'Léana', 'Female', 'ipsum ac tellus semper interdum', '2023-12-31 02:14:32.000000'),
('955d8cab-73a4-4114-9627-291265badb88', 'Yénora', 'Genderfluid', 'sapien urna pretium nisl ut volutpat sapien arcu', '2024-06-24 03:26:20.000000'),
('9810691d-6146-4b6d-a19a-8019789c176b', 'Audréanne', 'Female', 'est et tempus semper est quam', '2024-10-05 20:20:44.000000'),
('990fe11c-53b0-45d2-b502-a1945af76ee0', 'Pénélope', 'Female', 'non sodales sed tincidunt eu felis fusce posuere', '2024-08-30 14:32:29.000000'),
('9f5af331-5f0a-41ca-8317-3ee21796684a', 'Publicité', 'Female', 'proin risus praesent lectus vestibulum quam', '2024-01-21 15:28:56.000000'),
('9f8447cd-4761-4489-a10f-4a776285ac55', 'Eléa', 'Male', 'vestibulum sed magna at nunc commodo', '2024-09-18 15:00:50.000000'),
('a46f88fe-f5a3-4a4d-8ae0-1bd6c9c4ea2e', 'Cunégonde', 'Female', 'lorem vitae mattis nibh ligula nec', '2023-12-10 10:41:32.000000'),
('a686cece-9a9a-4542-99b7-072bf944df40', 'Maëlys', 'Male', 'leo maecenas pulvinar lobortis est', '2024-03-01 15:31:30.000000'),
('ac602a64-da3a-4838-89ae-5902c7efdd7c', 'Gisèle', 'Female', 'fermentum justo nec condimentum neque sapien placerat ante', '2023-10-24 14:52:45.000000'),
('ad227c72-61a5-4640-a8ec-fe0dbb023d71', 'Frédérique', 'Female', 'ut nulla sed accumsan felis ut at', '2024-01-15 10:23:15.000000'),
('aed30530-9370-4d52-ace3-17a2e5ada13f', 'Médiamass', 'Male', 'quisque id justo sit amet sapien dignissim', '2024-08-22 17:59:31.000000'),
('b715a8b2-dcc9-44a6-81fe-c9e7164ed45f', 'Mégane', 'Genderqueer', 'rhoncus mauris enim leo rhoncus', '2024-07-27 19:13:18.000000'),
('b75755c5-ccee-4584-a91b-bebbe6e29efd', 'Josée', 'Female', 'aliquam quis turpis eget elit sodales scelerisque', '2024-06-19 21:24:20.000000'),
('b7964253-7566-4559-87e2-e6c63e63fa50', 'Mélinda', 'Female', 'pede ac diam cras pellentesque volutpat dui', '2024-01-10 22:15:20.000000'),
('b79b91cc-f996-4c20-8cf3-cff887e53681', 'Hélène', 'Male', 'dapibus at diam nam tristique tortor', '2024-08-15 16:38:51.000000'),
('b7dee2ae-7657-496c-937c-c6da31fbd6f4', 'Anaïs', 'Male', 'eros viverra eget congue eget', '2024-02-26 05:18:09.000000'),
('ba487c01-a988-4332-bf7c-d76a7b6ee644', 'Göran', 'Male', 'interdum venenatis turpis enim blandit mi in', '2024-10-15 12:30:48.000000'),
('bcb39a82-005e-4f0d-8475-0fefebfca2ba', 'Léonie', 'Female', 'interdum mauris non ligula pellentesque ultrices phasellus id sapien in', '2023-11-09 10:44:58.000000'),
('be616a6c-18fc-40ce-a5c8-f97b2075245c', 'Hélène', 'Male', 'eget massa tempor convallis nulla neque libero convallis eget eleifend', '2024-05-07 14:21:30.000000'),
('c027458c-c133-4c56-bee6-2e0a22fc466e', 'Léana', 'Male', 'in tempus sit amet sem fusce consequat nulla nisl', '2024-01-20 23:40:14.000000'),
('c3978964-7857-4ed7-8ecc-2554bd5d06d7', 'Desirée', 'Male', 'purus eu magna vulputate luctus cum sociis natoque penatibus et', '2024-07-28 11:46:04.000000'),
('c3eb8a85-49f2-4192-b57e-54cdf9b74203', 'Lài', 'Female', 'posuere metus vitae ipsum aliquam non mauris', '2024-03-17 23:35:11.000000'),
('c7f62594-77e4-4566-a66b-91617e239d7a', 'Marylène', 'Male', 'dui luctus rutrum nulla tellus in sagittis', '2024-03-22 14:03:00.000000'),
('c89b35a8-f1ec-4f2e-b4e9-bf5ca29dcea0', 'Mélissandre', 'Male', 'et tempus semper est quam pharetra magna ac consequat', '2024-06-27 11:28:30.000000'),
('c8e49e35-cc03-40b7-ab26-5ac5aac7d17e', 'Françoise', 'Female', 'amet justo morbi ut odio', '2024-04-22 03:00:22.000000'),
('c920e8ef-465d-4758-b96d-f377fd97a87f', 'Andréa', 'Female', 'erat fermentum justo nec condimentum', '2024-08-09 23:27:43.000000'),
('cb33fb6d-08bd-4f6c-b05c-580a31f03231', 'Lorène', 'Male', 'aliquet massa id lobortis convallis', '2024-01-07 16:58:14.000000'),
('cc5c4c71-b567-4936-b887-0e4fde6babe0', 'Anaëlle', 'Male', 'natoque penatibus et magnis dis parturient montes nascetur ridiculus', '2024-01-19 11:49:36.000000'),
('d1af6eb1-398e-421c-9cc5-439e2cae6ef4', 'Danièle', 'Female', 'id consequat in consequat ut nulla', '2023-11-27 02:07:31.000000'),
('d5ee06c4-1a22-4134-88ab-44ed95261149', 'Judicaël', 'Female', 'a pede posuere nonummy integer non velit donec diam', '2024-03-25 02:15:30.000000'),
('db95ca4a-5e12-47de-a648-d51f4a72b1c0', 'Sélène', 'Female', 'felis ut at dolor quis odio consequat varius integer', '2024-09-15 10:13:20.000000'),
('dda0c659-59d2-413f-ab22-ec2715333469', 'Marie-josée', 'Male', 'varius integer ac leo pellentesque ultrices mattis odio donec', '2024-01-25 01:08:17.000000'),
('e3e5938f-a88e-4127-9ba7-a6f999653819', 'Bénédicte', 'Female', 'auctor gravida sem praesent id', '2024-06-17 20:16:22.000000'),
('e4548572-db63-417c-8a1d-a377c43c7c60', 'Léandre', 'Female', 'dolor vel est donec odio justo', '2024-10-09 20:20:49.000000'),
('e6111f0d-168c-4e35-8cfa-ba3aad7a7a81', 'Annotée', 'Male', 'vitae nisi nam ultrices libero non mattis', '2024-01-24 13:04:51.000000'),
('ea1982fd-ce73-479a-8b4d-ae8607a61512', 'Mélanie', 'Male', 'dui maecenas tristique est et tempus semper est', '2024-04-17 16:53:47.000000'),
('eb4a6b20-8e32-4d46-8a79-1fc27443f4ce', 'Aloïs', 'Female', 'eget tempus vel pede morbi porttitor', '2024-03-02 22:57:52.000000'),
('f7398035-3323-4a8f-9094-f7d8f9b5d9f1', 'Nadège', 'Male', 'justo pellentesque viverra pede ac diam cras pellentesque volutpat dui', '2024-05-05 17:44:26.000000');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `__efmigrationshistory`
--

CREATE TABLE `__efmigrationshistory` (
  `MigrationId` varchar(150) NOT NULL,
  `ProductVersion` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `__efmigrationshistory`
--

INSERT INTO `__efmigrationshistory` (`MigrationId`, `ProductVersion`) VALUES
('20241021064055_CreateBlogDb', '8.0.10');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `bloggers`
--
ALTER TABLE `bloggers`
  ADD PRIMARY KEY (`Id`);

--
-- A tábla indexei `__efmigrationshistory`
--
ALTER TABLE `__efmigrationshistory`
  ADD PRIMARY KEY (`MigrationId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
