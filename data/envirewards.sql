-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 15, 2024 at 11:16 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `envirewards`
--

-- --------------------------------------------------------

--
-- Table structure for table `store_info`
--

CREATE TABLE `store_info` (
  `Store_ID` varchar(20) NOT NULL,
  `Store_Name` varchar(20) DEFAULT NULL,
  `Voucher_ID` int(20) DEFAULT NULL,
  `store_image` mediumblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `store_info`
--

INSERT INTO `store_info` (`Store_ID`, `Store_Name`, `Voucher_ID`, `store_image`) VALUES
('TCO1', 'TESCO', 10, 0x89504e470d0a1a0a0000000d49484452000001a40000007808030000008a1976e7000000cf504c5445ffffffe40520004996e30000004393547eb3f5c1c3e40019e4001de93d4fe3000ffef8f9fce1e4e30015e94956e50525ee7984e3000a003e91fdeff1fceaebf4aeb4003b90f8d3d5ed757e004293fbdadef299a0f7babfea5e66fef6f7e9555fec5e6cef828af5f9fcf8cacef3a1a8f18f98ebf1f7f8c7cbe73443f3a7adf6b4bae7263a004c98d0dbe9f19199e93c4eec6973e52031819cc33f70acd9e4ef00368e6586b63667a69ab0cfb3c4db85a0c5a5b9d42b60a3d5deebbfcee11a589f336cab6f90bd6b8ab94e76ad00318d4f4a0c8f0000121149444154789ced5d7b7fa2bc1256e34a444151acd61b52b1a2b42adbeef6b2bbeddbb7e7fb7fa6035e11663099da6d7b8ecf5fddfdc990cc33994c269390c97c6d94daddc66860155dcfaf642bbe37d707d5d9b43b6ed78f21bdde0ca4b7067a28bd92cd862fd017f6645a18964bc790ff7f8072a1e5ab0663aaa6289c073acc72ce152dfc2fc35015cf1a758765aaf076d72e6677d297e2c3376ce557747b3a963185527b3c1d2df4c09e3ccf2dead6c06e48b5cf2cbc03561de8be45444a17c6b6cb99ba555e12813a0da666bd4163d897506588f274e02b4c5570e1a13d286af0938590c0fab0b1702b8ac18c90f215342db480a07dce508cea2e7b073497a2edb7889820ed351dd730527518a18a69be35690abba7f6ac58615a0afb51a8bdc3029b23ddd742ca219161fb8cb07d22240935490a6b9232ba4617d1005b5b1ff94c9191c303a2dcaa88c1d6bb9622c6fe0ada01924a4dbba81d1418b64f9f981f48d250a2cf711120490d9f112406ce697088a2b2ed056348466a3a4975476782947385f98bf4e1f49e24652cf2508248320772a36807cd4aa7a85d0d0691accc14924c5b6ec073d518a4d1f4ae2435c8c2019286be4195964e52bd6a18f2031427a93e52e4e5696c80c74aef4a529becef922435a8c3287b80a4498540114e52c9a9507c721089b01116e2bc2b497597aad804490d5acf574821a9ac130523240d5d724339f3c71f4052463f164905a4eb4150b085a1616fc349721875da8449b2df30de83deb0d10790d4a3aa204652dd07fa1eac10d9dc9e340ae300dde964b6f010aa30924a83d4de876be29d09a8fb660291d4f6717961c24235d4f4757296e9d06a2185a430d3a28086a169db740cf8a62d490b80241e01ded87d9216c9984163ee6c985453a31352158ba61192ca6e4a28a231e62d3a936139d05add6c4f3b2d9f45870940d2040d110361ca7cd1b26776cb0ac4a878c7551f583425480a33542b03d22a9eebba154092d5ebe9ae5759199896b08d08492ad4902d45daca46431971117b240d93bd6216e2bf43e53b036d8f2798a4a18f8ef360900e1a8994523958fc6c5b9224c9c65c32337a8eb90d0a4afd692b8b7b59cd4f46791192b81226103dab6577ba8101d5ebfd7ea9544f4e2bbc12882995fafd7ab9e08caa3d37d0f5de28de91d44a90143cdcafef6036bb8dcec8eeb96a407744c63e4989f516670e4ad112fd464fdbd93d4852218bd9bdc2bc1192046857f93a164c90d4827d92c2dc4e4258bf61a1342995c4cf3724053370565fccc666cc27961092a26f349b4e4b0fd3920992aa0049608aa66f0e678be24ec61e49cdb814aee2c3688b7267be5104445297231c71e63a297959d3aea8104930479c791358d858c7620ccd8b3fb124896bcc6b754d284c172069f5bbf2b4e5ae9d0181a425fae674b196b147d2283e751858fa35d6a6ee5a1100494d8c232ddb39903a2f0f42bf1623c90639520c1befeec4072783605ed2634c042471236b753159a22485a88f17cbe41a95a4a58ce1224ca9ec91e4c77cbd524c1511c574b96c4992d4f7108e0c5d202b3d0d18de27c90139d2fc646813816921511babeeffb0cbd48a9db279234352f8de996ff0b79014ca707c234a523b3e90d8f4908848fb3b9a0690a4c346cc8daad0c646d953f7482a80490bb57820bd5d5a602c75f77ed76583544992240543a153792349819d8fa2242503500163dfa15c3412247530e51c8847b628f55884a472051a976af130e1037811a0f87b5a9a760eb44696a480266b3bc88924855bd8bbbf67b18e702e4552d00a1623a989712436d72db188c804c7a5e68a6c0b5bf09036c4f67dd72090143cb4f9834c52148378b0aaa67a7a008ebeff6f24a5c80e18ec3e76631d1c97ca412d2d51827229615b64fa4822698ba390946881b053daa2bdf72fc4d9c959ef0e653073c20a824fc37b8d9a7ef8d12d3e0149f3780b145756c41eea59502d8a4794d7833c96513dfce00a13d86444490ef109484a46cb069c2c16c4085976b60f3f0a610871c47df16ec2fbd7877693a3f8042425465260666f60c9ac8003894c3ca8639910a4093a3ccec58de6139004151d318b68f7d88cc47dd912bd3512abb8108a2753e60aa7a125ace6139004f64153165245a45bf4e1d0ce900e46d648e690b3b2a14d135c2c29ae30d19f802407ec035799b79898d2f63f440612b182bc04e61a989c346456125e0e7e0292d07dc970efdc6d75c6fd23f8165bb6556b4ca1c6a992c13c284462387e0292ca69a55ccb3d30dfb21d41e7578733abaa6412630b68ef592ab9b86c14b8d2125f2afd459250cf8565ac7742b5b01e8517ab0e9acddfe0cdfe3f06703796c94a036b41784554cc5f22a93d1df11926259ebcc3a85a960ef14523ad79706ca7b6447b146f37981112df4a49eb21174e241f9fa476dddca23d2c4c9daa15564b1878e6cc94a9b1e41a63d9163aa21289c025625b03e200d305f24b2e38e36b88261d8e4d5258dab483ba3aabb5e4c0c0d39b2dc902e320f253e753d07dc2013835db0075507e4a0a2625703d2bbc223e3a497b355dd1ff4e21c94452c529e00aab00d5246530ddc0a13a2a2114a1864965b0972881b623ec84df812404292465ba94726d6e54ecb8f2c1445b569913d30d193057cbe429072307e1f4dde72009498a1e4240534ce818ae45904866ee035ee0c8cbb121450907209f84a44c95560ecd99be67d6f0611c8db893943121715c95179428880a21bc79f2594842eb430f41ad4467880e188290492a832429f282e018bc22f8f4a72129d3e012c2225058a492125e721d99242e2f08349e2f4852a66cd1ce95706d379640b7726c7767c80b8247922ff8f42722299329cc196534450aa490912470dc1fd6ceb10287ff91396985668b118e7da9dbe80dae345564aa3ef6703492c0e84eb459c72769ff520d43dd2cb685480a1ad41830d1d3f7bb776e720070d587e252ef23823305f237e680c9f48f5bccb2717b8de6783a7166d5f0545578744690a4b04ddd916eb00397cbc45858af560bf0965f967a1151bc4c7ddd455931253873215c4f7b749212465bea3727b6aec89526969a4e75ae2e2f6912a16a3394867016503e91b306782818b9ce25057d3073f1710956246752aa17e4edaf1eb0bb9857960765d3a9da6ca0b5e19a3b03dd263900305320bff101ee78704534edfbb748a2a36f96c37bcafc94d3e7bb02296463969c170203114534744e17231c817f0192d6ed34db9d9e67a0478b372e08be948a0307558500cf71d27d04e3066d20faf8572169897ad376e347f9633d461605f25b402b200b25c949a90e6ea0884bf9522405288d071a64969bfa71380d2e571f1f05505e2b33065600eba124d4fcd5480ad09c0321dca6b0ce04836689493a0638632bd9c9b7ed267d499202179fb4cc6d69355ce4402e45816b2de5a2c532e8a125ea2ebe2449d0eed326cb8a945a72833894c09d7dce65b67ac14a65c513cf827c4d9280c2ddcd791fc4df91672538d1c4248652131e481212be2849c9d5e1f650968d941ec99c5689002ef49149348195e052b5315f94a464d5eb9624e4fc6396cbe645cb2b7f04932e5e0ede80430f99dabdaf4a5262836677d30d369414b993156d77358b2187d24407265cae2633237d2849a54d952da5983e111fec0e92205a0d2f5e90d04cdbe36b3520c73b15b1a46df10825b51f4752dbda780ccb924fda8ce3973f447c3cbcf3970defac116669e8ab1b3520f940c513891707f0491cb9fdfc8f22c9ac6a6cb37419b0ec4876572e7ee467efc43a7aabbca10b766daa293b3514904c947b58187c75a5225951fb212495862dc3e0dbf5e540e3cc77e48e93c417f17b1379192d0f53b1bb6af7310a0444d48014056a87c65209be012a723993183e80a4e1c85dd69b44485ade422793034d84e0fb4e1eb93b211b1680b50e0edaa1c7f6d5d09fc34353499f5a4c287f95256c1afe6592da8d85c2d6fb0d7b242def73146f7c7c9a88ef4520172f2d5faba66f11b717abcab2a81ae01ba042d34a995c1c03a696491f0d7d1b4940c2033ef35b6f171a9d4158edb05bc5c4480a69524742c91b731e7faf3a88fd44c759e22c3b4147d3b0b7a92adb53431373a0aa86142a743de411798e32fd648984c46a1a20496dd91b0c2ccbd25ddff7f9fa5e6f1efbe55aca2e27ca0de6360efacb46b2eacb887bf912e26ad634316b0a74b2dda9ec44efdbea186389b3ca2c21ca9c7848a1272770045d7b2091d6878e7aab5b68cbabab15ecea6980a46c7863a6a24f867814613a5ef29c4c6220051dc3ae6d5c41639ad7ea0edbab3b08fa66733c1df85a5472cca10cd160841b9a6b8f771358bba1a3df2f51e42fb7ca848b80e4bbc513c6c8be8018609296e7c334bfd89a061a8c37b6d91d5480fe83631fbdb671fb1a35183615dff73cdf0fbf25161be871af3f4c2982560c23ebe94bb87e16ff08905a91aec609012dcfc52344fab779b2384921420d1a15cfd5072d7be44c0274aa03dde370ff11f31438a8c19737d883f7cc27a6e6a697766a946f3e16875f59cf99e8322d4e12606ec2398b3eb8b92c8a3492569d0acfdf2e8fdd6e6e9147a6622cc49a54680735566f4fc44ff5c55bbe7a92d534f4b32f0700ed91095f1f5246f66ec470902441b01eba0357b6e86a85825c87cebac22cea851f60f59ff0fe18bcb72c8a2391c4acb45d52279bf2e18854802b91f24225390f85b9d45b0a108725bc5092395491c451483a18d29a964a138f68a13047d6a829500c5fba3239facab76c0ea337a48be11824a9d9c306da1c503e17879bea584ffbac0bd046e64ddef215e8123cf3f3e4372f20a05b02828ddf90443ce117767f215410d2b60df957a4f893669589cad3185b90c2ee1d6ca680885fb40dc2d434f869416cb72ac24fe230e9cf57869fd711af009aeac27a5d0b8f9d6b07e41d184f3c14624ddffa29f5b63b2f82988ba4a46d177e58146e649bbfdf9d1599c491a4a0ff5ef28b38a9301d57e805cbef93e99d83e6df9f567db6ffc1a17d19aa3ea3070b9f15a5a16317c3345fea99a4e587cfd97c468967eb535b57b18334eb0fd4336f31eb8a5abfd9edb48a95f599c625567f7bbd9143be44f6d3a3d40ffa6df75c65b57edd64005797492d75c8e78b51b74ef721e189b645d137d67add7c962d70869edeb2274369d1a552bf3c6e384e67361a8d66ce645a684b5d75f965d1af9bc3696764575badd6a2d7b32cabb768b5aab65328d7a9d7044551aa9be6b0eb046fb043bd36bac3b2597f03f32764221fc738e184134e38e184134e38e184134e38e184134e38e184134e38e184134e38e184134ef832b8b87eb8fffef39b2c5effb9c5655e8632a5457e7bfd96d2cedba75f8f2ff2326f1ed3643e3cbe10ba7e737dfcaedf5ce00c3dbde6f2b5daf9795e0eb51f2f9768337fdde5ce03999222f33faeeed186de3e3ee76af232cf7ffc7ec0bbfef29c2734b3f6e3276a9ed4ae07eac465de3fd7f23902ceee505bba7db9a2c9ace1b43fbde66b1491f9fc3ddaf5c7e74097049967bf9fd0ae7f27763d459d192a45b9f347cce42f5f72e73491cf68dfafff2136b376f307ed3a519df9da77aceb17df73244bcae5717566aeefce4832d3f4f9f04c6b67eeec1b368c2ebe930c3e00aecfdb1b62d7f357a8f77cfa7d7c7566eec97dbfc1dce7e5cb1955263abbffa19a523eff0b93f990a336f30e9d39ee89a33d577b45bdfcc54f62df7367ffa2f6f99b388cf2e7a87d3ee4897dcf5fa16efe9edcf56fa8aba3abf305757517af447de6ce509bbfbea2ea338feaf317b599e7cfa87d3ed2f5f937d599b9b8210b45c3a56baa0fc95fa13ee417559f357cd5411f47a83ee91cd55075663264a13fd039ee0f5162eefc37aacf07b229e18b62f2d83c43a7b8cc37aa9b3fc343868b3b6a4371bf744d9f37717d926dfe3b2af3fe074d643e8feb93ec9672f8eae8e2376d2513b83374d9f144f64bafe8387a0f8ea8f351fe1cd5e7c51d599defc1111e2f9139c2e3a5377084cfc5648e72e838a27384ab337349e6e8191f47643fff13e7e81de2253247b83e2fa91c9de3eaccdc3e1385d67ee331185164e097f0188c3a17a7c44bdfc92901549fb75493afdda14b84cc13752d83a76de8eb0e5c9f17547de673e8b2f892bade3cbb41bb7efd4c5527ee4232bf883253d236e4be9f5fa17efef21b5166ca70bf2586b4f99494c02f623a247f8e0f77b27dd6f01420b9ef2929ab3fc4f452be86eb93ea426a784695ea3ef3b5df2921c32b4968be768567d21f687d0fda892f3b7ed15217e7e7af78df1f895b5cb9eff8d626559dcff8aa38e8bbfc1c973fafd59eeff176fe4b686728f315a7e896e2ea42993f718a483b13f95a609df8ec4e5167b8697bf790b24d4ec9f85fddbc3ca414325c9f11daf9fcfaf884773df3f41f82c98732f1ae67ee2932ef7edea71432bc873a33ff050427d1d5f5e275a80000000049454e44ae426082);

-- --------------------------------------------------------

--
-- Table structure for table `userinfo`
--

CREATE TABLE `userinfo` (
  `email` varchar(50) NOT NULL,
  `user_pass` varchar(30) DEFAULT NULL,
  `tokens` int(225) DEFAULT NULL,
  `user_type` enum('Admin','endUser','employee') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userinfo`
--

INSERT INTO `userinfo` (`email`, `user_pass`, `tokens`, `user_type`) VALUES
('beepboop@Adamemail.com', 'SafePassword', 0, 'endUser'),
('example@gmail.com', 'password1', 5200, 'endUser'),
('RosieLovesMeMore@gmail.com', 'AdamsJeal0us', 500000, 'endUser'),
('SexyUser@email.com', 'Wh0G4ve4d4mC0n7r0l?', 0, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `voucher_values`
--

CREATE TABLE `voucher_values` (
  `Voucher_ID` int(10) NOT NULL,
  `Voucher_Val` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `voucher_values`
--

INSERT INTO `voucher_values` (`Voucher_ID`, `Voucher_Val`) VALUES
(10, 10.00),
(50, 50.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `store_info`
--
ALTER TABLE `store_info`
  ADD PRIMARY KEY (`Store_ID`),
  ADD KEY `Voucher_ID` (`Voucher_ID`);

--
-- Indexes for table `userinfo`
--
ALTER TABLE `userinfo`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `voucher_values`
--
ALTER TABLE `voucher_values`
  ADD PRIMARY KEY (`Voucher_ID`),
  ADD UNIQUE KEY `Voucher_Val` (`Voucher_Val`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `store_info`
--
ALTER TABLE `store_info`
  ADD CONSTRAINT `store_info_ibfk_1` FOREIGN KEY (`Voucher_ID`) REFERENCES `voucher_values` (`Voucher_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
