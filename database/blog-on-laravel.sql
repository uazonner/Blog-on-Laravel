-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 16, 2016 at 09:12 PM
-- Server version: 5.7.15-0ubuntu0.16.04.1
-- PHP Version: 7.0.8-0ubuntu0.16.04.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog-on-laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(75) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pos` tinyint(4) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `target` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `name`, `url`, `pos`, `title`, `target`) VALUES
(1, 'Главная', '/', 0, 'Главная страница сайта', NULL),
(2, 'Записи', '/', 0, 'Записи title', NULL),
(3, 'Сервисы', '/', 0, 'Сервисы title', NULL),
(4, 'Комментарии', '/', 0, 'Комментарии title', NULL),
(5, 'Архив', '/', 0, 'Архив title', NULL),
(6, 'О блоге', '/', 0, 'О блоге title', NULL),
(7, 'Контакты', '/', 0, 'Контакты title', NULL),
(8, 'Резюме', '/', 0, 'Резюме title', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_10_07_161346_create_posts_table', 1),
(4, '2016_10_08_215521_create_tags_table', 1),
(5, '2016_10_08_215944_create_categories_table', 1),
(6, '2016_10_08_220138_create_posts_categories_table', 1),
(7, '2016_10_08_221011_create_posts_tags_table', 1),
(10, '2016_10_13_182937_create_menu_items_table', 2),
(11, '2016_10_15_102842_add_rating_column_posts', 3),
(12, '2016_10_15_104146_create_user_post_like_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `body_preview` text COLLATE utf8_unicode_ci NOT NULL,
  `author_id` int(10) UNSIGNED NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `likes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `alias`, `body`, `body_preview`, `author_id`, `published`, `created_at`, `updated_at`, `likes`) VALUES
(62, 'Eligendi at quisquam consequatur fugiat odit. Ut non dolore dolorem. Aut ut ut suscipit asperiores. Ipsa debitis at assumenda.', 'quasi-asperiores-molestias-mollitia-odio', 'Velit sequi tempore omnis saepe voluptatibus quo voluptatibus. Optio sunt aut deleniti porro tempore qui voluptas. Quam nihil saepe eius laudantium. Beatae voluptatem molestiae odio et consequuntur praesentium.\nSaepe pariatur quia distinctio dolores soluta rem rem. Quis autem accusantium nostrum laborum voluptas ea provident. Eos est nostrum omnis.\nImpedit aut omnis unde magni repudiandae ullam dolorem. Ut et maxime omnis rem saepe. Ipsum magni eaque distinctio quis.\nHarum aspernatur voluptatum et autem doloribus ex blanditiis. Repellendus consectetur repellendus consequatur libero asperiores. At et architecto facere omnis nostrum. Quos quibusdam praesentium est ad aliquid quas ab.\nQuasi inventore aut maiores commodi sapiente minus at. Impedit voluptatum ea et rerum.\nUt libero omnis soluta sint assumenda adipisci quasi. Voluptatem quis velit rerum. Incidunt dolorem rerum eum reiciendis facere consequatur. Eum atque quod dolore ducimus voluptates cupiditate. Voluptatem hic aliquam molestiae.\nNulla perspiciatis tempore aut atque. Nisi repellendus veniam officiis laudantium rerum cumque eos. Ab voluptas qui quaerat aut veritatis dolor earum. Praesentium quibusdam est dolorem et aut.', 'Nostrum et voluptatem omnis ut odit sit deserunt. Corporis aut doloribus odio aliquid soluta. Qui aut est ad molestiae accusantium.\nEx adipisci veniam consequatur aut. Perspiciatis perferendis maxime provident placeat sit ipsam.\nDoloremque et dolore atque voluptatem reprehenderit repudiandae sed voluptate. Debitis libero modi hic nemo ullam labore. Voluptatum tempora nulla debitis dolores quaerat molestias. Vel nam sed nihil.', 2, 0, '2016-10-14 16:16:01', '2016-10-14 16:16:01', 0),
(63, 'Quia in excepturi quia ex. Et nihil et et labore reiciendis omnis porro. Aut libero nam aut culpa assumenda cumque molestiae.', 'rem-et-earum-eos-tempora', 'Beatae magni et veniam doloribus at modi corporis voluptatibus. Magni ea ex doloremque maiores. Perferendis consequatur omnis est vero minima.\nNeque sint et explicabo est. Velit reprehenderit et et voluptatem voluptatem aperiam quae. Est et perferendis soluta quae numquam. Excepturi vitae tempore possimus quis quis. Quae cumque ratione excepturi.\nQuis nihil ullam culpa incidunt. Voluptatem eos sit ut eveniet dolorem consequatur. Tempora eos soluta voluptatum quidem. Enim accusamus explicabo et dolores et quas qui alias.\nAdipisci possimus cupiditate officiis aliquam earum qui sed. Expedita repellat molestiae illum est modi aspernatur nihil. Quod qui non cumque ipsam. Vel qui alias ullam aut. Quibusdam labore qui qui nobis facilis est voluptatem provident.\nDolorum sapiente esse nulla voluptates necessitatibus nulla ut. Velit eligendi ut perferendis fugit ut qui ullam. Ut qui qui amet. Dolorem libero ducimus autem quod veritatis nam qui.\nAt vero ipsam ipsum sit. Qui doloribus recusandae magni temporibus dicta quibusdam minima. Quidem voluptatem fugit aut enim iste praesentium quae necessitatibus. Distinctio voluptas in iusto modi labore rerum non.', 'Tempora magnam esse autem aut et. Ut autem repellendus sint omnis. Reiciendis dolores occaecati ut facilis reprehenderit aliquid.\nDolores ut mollitia unde magnam cumque libero et. Neque a ipsum dolores autem illum quis. Non est qui non.\nAut quibusdam velit dolores animi qui repellat vel. Consequatur atque ut aut velit omnis asperiores non. Nesciunt optio doloremque aut corrupti. Veniam necessitatibus impedit velit.', 1, 1, '2016-10-14 16:16:01', '2016-10-14 16:16:01', 0),
(64, 'Rem vero ab rerum aspernatur. Voluptas deserunt et quis necessitatibus et. Aliquam accusamus quo qui sed praesentium.', 'incidunt-necessitatibus-aut-et-mollitia-rerum-rerum', 'Rerum nihil ab exercitationem et quibusdam. Quia libero dolorem quis consequatur sit maxime voluptatem. Culpa quos officia fugit et corrupti ut dolores consequatur.\nProvident et itaque laboriosam voluptas sit. Adipisci sed cupiditate distinctio et debitis animi harum. Totam aliquid numquam sit nihil. Aspernatur quia quia occaecati voluptate.\nRepudiandae non ut assumenda quaerat eos ut corporis. Expedita error inventore est ex veritatis. Inventore itaque animi delectus alias praesentium.\nVoluptas sequi ut vero cupiditate. Vero laborum perspiciatis recusandae recusandae. Neque voluptas temporibus dolor alias reiciendis. Tenetur quod omnis occaecati eum temporibus exercitationem ipsa delectus.\nInventore quod eum eos dolorum commodi. Quo nesciunt accusantium dolorem commodi. Necessitatibus modi sint impedit veniam voluptates.\nNesciunt doloremque voluptas minima id. Et dolores et rerum minus. Perferendis modi ut hic maiores. Distinctio quae sit dicta et deserunt esse sint nihil.\nDolore vero et et dolores. Officiis tenetur optio nemo quia velit vero architecto. Voluptatem ut quas et dolor.', 'Ipsum rem non est incidunt consequuntur nisi dicta. Et velit sequi nesciunt pariatur voluptas repellat ducimus. Omnis quia beatae dolorem dicta facilis.\nMagni maxime porro fugit incidunt sint rem. Vitae quo et nobis animi reprehenderit. Corrupti rerum enim aut provident amet nam consequatur iste.\nRem tempora consequatur doloribus soluta assumenda eveniet. Fuga a hic alias molestiae. Ut eius ab est animi. Inventore id repudiandae corporis omnis.', 1, 0, '2016-10-14 16:16:01', '2016-10-14 16:16:01', 0),
(65, 'Nemo expedita voluptatem ut in. Accusantium aliquid debitis voluptatibus voluptas sunt facilis nemo. Et rerum molestiae incidunt illum.', 'velit-provident-id-laudantium', 'Temporibus est delectus autem ipsam. Quibusdam assumenda quis veritatis sit dignissimos voluptas. Aut voluptatibus quae deleniti suscipit dolores corporis et. Voluptas aut tempore voluptates ut voluptatem corrupti.\nEsse eos aut cupiditate qui. Suscipit qui eos ut dolorem sed exercitationem eum. Nemo qui voluptatum et et cupiditate vel repellat. Esse consectetur quo id.\nPerferendis molestias dolorum eum totam aut ab. Enim tempora corporis sit rerum modi dolores.\nQuas velit officia et. Quaerat laborum illo animi optio dolorum quos alias. Ea est consequatur vero. Eveniet excepturi facere ad velit magni voluptatibus. Iste quia maiores voluptatum perspiciatis nulla aspernatur.\nMaiores laborum natus in recusandae. Placeat eaque rem vitae voluptas illo non voluptatem. Possimus numquam laudantium tenetur aut.\nUt ad nulla quaerat velit rerum. Deserunt qui quas debitis nihil in saepe. Tenetur numquam aut perspiciatis dolorum illum debitis.\nExplicabo quasi optio ad facilis qui incidunt pariatur reprehenderit. Ipsum voluptas nostrum neque iure ut consectetur. Omnis ut ducimus at in. Rerum et perspiciatis inventore quos. Repellendus quod quod velit hic.', 'Commodi aut ad aut sint itaque voluptatum. Necessitatibus aut sunt aut. Est recusandae sint voluptatem soluta quam doloribus.\nUnde soluta molestiae et vitae excepturi. Qui odio velit repudiandae odio unde perspiciatis quasi.\nVero eos labore et voluptatem. Cum tempore natus hic delectus excepturi laborum ut doloribus. Commodi suscipit incidunt culpa quibusdam doloremque perferendis eos. Et qui provident distinctio omnis.', 1, 1, '2016-10-14 16:16:01', '2016-10-14 16:16:01', 0),
(66, 'Porro quia magni aliquam rem cupiditate at. Optio aut ullam fugit ducimus enim.', 'exercitationem-provident-est-est-reprehenderit-dolorem', 'Commodi nisi maxime reiciendis qui libero incidunt dolores. Laborum repellat corporis et possimus exercitationem id. Aut iusto saepe distinctio libero. Doloremque delectus nihil sed quis molestiae. Tempore optio quasi aut aspernatur aut.\nQuas nesciunt perspiciatis nesciunt sed quos. Qui quibusdam quo itaque.\nEaque qui non distinctio facilis minus deserunt. Soluta veniam tempora et optio consequatur voluptatem omnis. Enim eaque in ea sunt qui. Magni quidem qui sed perspiciatis beatae fugit sit asperiores.\nUllam odio laborum fugiat earum non. Possimus magni animi assumenda quia consequatur.\nQuia voluptatem vero similique ullam. Nemo nisi dolorum nesciunt praesentium quibusdam expedita laudantium.\nQuidem enim dicta qui. Iure similique similique qui blanditiis minima veniam. Repudiandae rerum eius odit facilis necessitatibus consequatur.\nPerspiciatis non nobis explicabo laboriosam enim et eum. Sint corporis omnis consequatur et commodi.\nQui et et explicabo. Adipisci eaque est consectetur atque quo assumenda. Ratione quo eos sint ipsum quas consectetur distinctio. Et assumenda quisquam sit. Hic quidem ut eius ducimus unde.', 'Reiciendis ipsum voluptas quos aut illo ipsam dolores. Animi quidem est commodi et voluptatem voluptas quod. Provident assumenda porro et eveniet repudiandae ratione sint. In fuga possimus dicta reprehenderit autem est sit.\nConsequatur et aperiam consequatur non. Eum qui repellendus dolores velit dolores accusamus et.\nAut ut dolores assumenda sint ab. Dolorem et corporis necessitatibus quis quibusdam. Minus animi et aperiam dolor enim.', 1, 0, '2016-10-14 16:16:01', '2016-10-14 16:16:01', 0),
(67, 'Illo nihil ut eum. Esse nesciunt vero praesentium error id a. Quae cupiditate maxime et.', 'qui-dolor-sunt-tempore-voluptatem-unde-veritatis', 'Corporis in molestias voluptatem eos aut fugiat nulla id. Nulla alias voluptatem illo quia aliquam. Sit illo et et ut quia eos consequatur.\nReiciendis et consequatur rerum necessitatibus qui modi. Consequuntur eligendi animi aliquam pariatur nulla eius enim. Magni dolore pariatur ducimus ea cupiditate eum aperiam. Explicabo occaecati molestiae a minus.\nNon delectus molestias architecto enim. Rerum ut qui reiciendis eius. Non quisquam dolorem debitis maiores aliquid.\nVoluptas dolore odio illum autem ab minus fugit. Et asperiores ut ducimus ut. Repellat repudiandae non aliquid. Tempora quas omnis assumenda quos.\nEt in molestiae dolores rerum veniam. Voluptates cupiditate id natus facilis at nulla ut reprehenderit. Fuga dolor odio et cupiditate voluptatibus esse saepe.\nQui fugiat enim at fuga excepturi. Qui sed beatae et ea eaque illum odit. Rerum ratione nihil eveniet quae voluptate.\nExercitationem quo veniam harum exercitationem asperiores. Maxime dicta nostrum voluptates ut est.\nCupiditate beatae animi ad et dolor quasi. Voluptatem et distinctio quia aut porro a. Ea eveniet eligendi laudantium repellat rem animi et non.', 'Ut excepturi fuga voluptas sint pariatur aut dolorem qui. In voluptatem velit aperiam sit iusto.\nAsperiores autem ut nihil pariatur. Non sed vel aut aut et. Similique rem ab consequatur et explicabo eum recusandae. Non expedita molestiae rerum dolorem magni aut ut. Repellendus sequi aut molestiae possimus iusto.\nNon quia omnis consequatur aut ab totam. Vero natus ducimus consequatur neque veniam et. Eaque amet beatae repellendus magni ullam consequuntur sit. Enim ut dolore voluptatem voluptatem aut nemo ullam.', 1, 0, '2016-10-14 16:16:01', '2016-10-14 16:16:01', 0),
(68, 'Rerum modi voluptatem fugit exercitationem eaque quibusdam quia. Aut praesentium dolorem et est pariatur. Placeat temporibus et numquam et dicta.', 'aut-minima-doloribus-harum-provident-nulla-repellendus-pariatur', 'Adipisci iste consequuntur sit veritatis. Maiores minima aliquid incidunt quia et. Expedita porro veritatis et tenetur amet sunt rem.\nQuo cumque pariatur eveniet voluptatem. Aut alias ducimus et est. Autem aperiam in maiores officiis at non. Porro aut recusandae libero qui officiis perspiciatis doloribus.\nUt quis fugit vitae et in. Beatae autem aut est minus ullam laudantium similique consequatur. Temporibus consequuntur sed omnis ipsum voluptatibus.\nSit sunt sed et vel iste blanditiis. Laborum sit voluptatem veritatis molestiae rerum mollitia saepe temporibus. Sed eos velit sequi. Et architecto quam eum dolorum. Molestias eum aut nihil ipsam sunt autem sint.\nDebitis rerum quo voluptatem non. In autem dolores totam molestias. Ullam magni illum ipsum debitis rerum et ab nihil. Eveniet rerum dolores tenetur non impedit nulla molestias. Vitae autem exercitationem nihil consequatur neque est.\nAut dolores qui maxime natus autem fuga. Facere ipsam ab sed ea quibusdam delectus quidem. Eum qui esse ex nulla voluptatem numquam libero nihil.', 'Eaque mollitia at rem sit dignissimos qui. Quis consequatur adipisci sunt alias ad architecto nemo odio. Nobis sit similique eum modi.\nCulpa culpa qui dolorum enim veniam soluta cumque eveniet. Molestiae assumenda tenetur dolores nostrum dignissimos sed. Non officiis velit ratione nisi delectus reprehenderit amet cumque.\nEt iste quae consequatur deserunt fugit sapiente et. Veniam qui deserunt culpa voluptatem rem dicta animi maxime. Ut nesciunt voluptas earum sunt incidunt reprehenderit corrupti dolore.', 1, 0, '2016-10-14 16:16:01', '2016-10-14 16:16:01', 0),
(69, 'Quia itaque quos deserunt architecto nulla. Doloremque fuga nemo temporibus. Assumenda asperiores asperiores maiores magni sequi hic consequuntur.', 'omnis-est-consequatur-similique-aut-consequatur-debitis-optio', 'Fugiat nulla eum tempora aliquid. Eveniet quasi distinctio a illo quis sunt cum voluptatem. Ratione aut vel aliquam aut laboriosam sed.\nQuia voluptas est harum. Veniam inventore totam commodi et deleniti. Blanditiis saepe sunt necessitatibus pariatur tenetur facere vero.\nDicta voluptas quia ea et fugiat dolorem molestiae. Occaecati fugit repellendus provident eum. Qui illum repudiandae quisquam nihil recusandae.\nConsequatur dolorem modi ut. Minus voluptas eius nam asperiores fugiat provident iste. Magnam nisi reprehenderit doloremque in eius.\nDeleniti velit sit sit ea rerum in laboriosam. Qui soluta dolorem quod nobis eius iste non qui. Enim dignissimos dicta voluptate et. Voluptas itaque ducimus voluptas.\nQuod molestiae fuga incidunt provident voluptatum mollitia vel. Omnis possimus iste eaque provident quis dolores iste. Repellat est quod odio assumenda debitis minus.\nDeleniti fuga necessitatibus dolorum commodi praesentium aut molestias. Veritatis dolores sunt consequatur hic illum laborum consequuntur. Inventore voluptas distinctio sequi quia dignissimos est et.', 'Reiciendis quae quisquam quis iste. Tenetur qui tenetur sunt sequi aut commodi cumque. Et voluptatem est tempora et natus. Reprehenderit repellat numquam harum laudantium tempora.\nEt quibusdam et quia inventore voluptatibus maxime. Possimus eum et quae iure quis molestias officia. Eveniet unde distinctio iusto amet sit rerum. Eum neque ex consequatur inventore.', 1, 1, '2016-10-14 16:16:01', '2016-10-14 16:16:01', 0),
(70, 'Non saepe eos velit velit ad. Nesciunt sit tempore saepe quis commodi in. Qui totam rerum natus sint blanditiis ut.', 'aut-ad-optio-consequatur-maiores-quo-consequatur-explicabo', 'Eaque eum dignissimos qui pariatur dolor distinctio qui ullam. Ab neque id eos ipsum perspiciatis quia ab. Ratione nesciunt deleniti ducimus perspiciatis. Voluptas odit quia ad molestiae.\nExpedita aut iste consequuntur et libero. Recusandae accusamus illum excepturi doloribus temporibus dignissimos voluptatum velit. Rerum repudiandae maiores ipsam ut sit eum sit. Neque laudantium non sit sed aut quia.\nCulpa deleniti magni ea. Aut qui sed et harum. Aut quo sint excepturi temporibus. Quos ut sequi consequatur fugit.\nSoluta aperiam quis nihil dicta culpa exercitationem itaque. Illum doloribus nihil dolorum accusantium nobis. Voluptatem sunt perferendis error eum dolorem.\nEst sit odio excepturi quo. Fuga provident accusamus consequuntur nemo. Sit delectus quia excepturi totam quas corporis eligendi. Voluptate explicabo sapiente mollitia minima.\nMolestiae ipsum nisi autem itaque aut et. Vel repudiandae quasi voluptatem esse vitae. Autem cumque veritatis autem est ut est optio. Quasi aut velit ab.\nMinus ad iure doloribus quia. Error dicta ut atque voluptatem excepturi fuga. Sit dolor quae impedit rerum inventore in.', 'Eius sint est beatae dolorem aut. Esse et qui voluptatem sunt facere. Est molestias error sequi recusandae rerum esse. Sequi voluptas quis ea voluptate.\nPorro culpa nostrum voluptatem mollitia. Commodi iste aliquid facilis aut qui. Officia magni eum consequatur. Aut eos quas eum eos quae dignissimos.\nAb voluptas velit neque blanditiis. Tenetur aspernatur culpa modi. Molestias minus doloribus aut. Non aut totam quibusdam iusto numquam ut quis.', 1, 1, '2016-10-14 16:16:01', '2016-10-14 16:16:01', 0),
(71, 'Et aut alias tempore quaerat qui. Et est tempora sit quia rerum vero. Et fugit temporibus distinctio autem. Voluptatem ipsam beatae optio est.', 'officiis-voluptas-tenetur-eius-porro-rem', 'Maxime facilis est assumenda qui ut dolor consequatur. Suscipit architecto ullam consequuntur illum saepe commodi qui.\nQuia eligendi illum sunt molestiae nihil qui. Omnis voluptate omnis sequi vero. Et quo rerum culpa animi. Animi nobis et velit non quia.\nEos quidem et voluptatem delectus eveniet consectetur. Provident repudiandae tempora autem blanditiis odit eos cumque. Dolorum velit magnam animi et maiores ipsum ea.\nOmnis tempore omnis nulla accusamus nihil blanditiis earum. Porro eum repellendus ipsa enim quis. Consequatur harum quam sint consequatur excepturi dolorem ipsam nihil.\nPariatur quisquam corporis quisquam quod aliquam. Rerum quae quia sit asperiores ea accusamus voluptatem. Sint quaerat et quaerat repellat. Aut dignissimos quis totam sunt magni.\nAut voluptatum dolores voluptates ut a voluptatibus. Natus praesentium dolor animi velit nihil fugit. Velit reprehenderit et dolor architecto et voluptatem. Ea ad aut hic veniam ipsa alias. Qui exercitationem aliquid hic culpa voluptates iusto.\nEt accusantium sint quisquam laborum architecto debitis quia. Dolorem facere et quae similique dicta. Consequatur nostrum id omnis et blanditiis nisi non.', 'Aut est ipsum consectetur. Ipsa eveniet inventore ad alias fugit et accusamus. Voluptatum itaque fugit itaque libero perspiciatis quod.\nDoloremque odio vel sequi magni et repudiandae dolore. Sint eos tempore doloremque dignissimos est voluptatem. Ut sint sed inventore rerum voluptas reprehenderit. Quis iusto ut sed incidunt et.\nSint consequatur rem et sunt tenetur pariatur. Dolores quibusdam quas dolores qui voluptatibus adipisci possimus. Nesciunt qui modi ullam molestiae esse pariatur laborum aut.', 1, 1, '2016-10-14 16:16:01', '2016-10-14 16:16:01', 0),
(72, 'Debitis eligendi ut id quia. Accusantium commodi est quidem quia recusandae eum odio error. Neque dolores laboriosam nesciunt ea praesentium.', 'rerum-omnis-ut-doloribus-molestiae-inventore', 'Sequi expedita enim distinctio ut alias. Ex debitis quia repudiandae. Reprehenderit dolorum amet fuga. Aut alias et adipisci ratione et voluptatem in. Nobis odio praesentium et doloribus.\nLabore ipsa impedit autem et. Sed est velit earum in vel omnis.\nAliquid veniam totam cum voluptatem. Cum sint qui quia id ad est enim. Consectetur ad nesciunt totam ut aut. Laudantium nam repellat placeat et quo dolor.\nDolores maiores voluptas ducimus ad. Tenetur et quisquam blanditiis assumenda facilis. Ipsa non enim odit provident eum. Aut quae ut corporis omnis porro incidunt.\nItaque animi debitis adipisci nisi earum eveniet natus. Molestiae eum ut nulla neque. Voluptate laborum aut et et soluta libero incidunt. Ratione aut nisi reprehenderit quo voluptatem debitis voluptatum dicta.\nEst consequatur libero nihil est. Laudantium quaerat id tenetur. Quia deleniti eum velit qui. Voluptatem aut neque maiores. Quis tenetur sequi id.\nDolore molestiae ad sint eius voluptate. Aliquid qui velit sint eos. Dolorum error tempore voluptates fugiat.\nVoluptates autem impedit magni architecto. Voluptates aut quod impedit sit cumque.', 'Modi et rerum autem voluptas voluptatem quaerat voluptatibus. Est numquam temporibus enim quos omnis. Voluptatibus praesentium tenetur laborum vitae. Est error doloremque rerum est praesentium itaque.\nNon incidunt rem aperiam explicabo laboriosam repudiandae in dolorem. Sapiente enim autem molestias ut ut exercitationem.\nOfficia enim ex omnis quos quo aut voluptatum eos. Sunt inventore ea ut excepturi magni dolorem. Vero molestias accusantium voluptatem ipsa voluptatibus ut. Ab qui qui suscipit quia eaque rerum.', 1, 1, '2016-10-14 16:16:01', '2016-10-14 16:16:01', 0),
(73, 'Assumenda ut quidem nam quae accusantium unde. Deserunt rerum dolor quam ut enim et. Eum laborum aut qui consequatur.', 'consequatur-necessitatibus-consequatur-voluptatem-perspiciatis-eum-magni-ea', 'Aut hic aut blanditiis sint aut repellat. Iure dignissimos et fuga occaecati et consequatur nam. Aperiam cumque sed non dolorum et ad aperiam.\nUt non quia hic quibusdam occaecati sint. Velit voluptas sunt et atque ex possimus distinctio.\nOfficia modi quo nam soluta quia maxime. Qui magni nihil ipsa aut non suscipit quod. Consequuntur minima est labore expedita.\nNobis possimus aperiam aut. Porro nisi eos est occaecati unde animi. Occaecati et dolor quibusdam ipsum est dolore odit. Ut ad est ab. Accusamus minus non quisquam fugiat ut culpa.\nExcepturi dolor dolorem voluptatem non. Quo unde odio velit et. Et voluptatem et sit veniam reprehenderit minima deleniti.\nOmnis eveniet nihil hic explicabo est ullam accusamus. Aut voluptatem et rerum repudiandae. Quas deleniti ea quo fugiat. Doloremque neque porro est qui ratione.\nNihil similique harum magni est. Nulla ut sit temporibus tempore omnis.\nDeserunt quod eius sunt ipsum velit. Ipsam aut totam quam rem. Molestias temporibus minima cupiditate rem consequatur sunt. Dicta dolorem eum officia sequi aut.', 'Est est cupiditate tempora et dolores eum commodi. Exercitationem architecto minima unde placeat blanditiis. Sequi ipsum et sit necessitatibus eos asperiores sed adipisci.\nRepellat consequuntur quae facilis quaerat. Perferendis rerum accusantium necessitatibus in. Aut quibusdam et aperiam quaerat fuga unde nobis. Eos recusandae et et eum facere veritatis a.\nVoluptas omnis est nisi voluptatibus error dolore laudantium. Veritatis non sit mollitia officiis ut. Quos voluptas error minus molestiae.', 1, 1, '2016-10-14 16:16:01', '2016-10-14 16:16:01', 0),
(74, 'Ipsam est qui neque sed dolorem consequuntur. Et nihil eius adipisci quia. Omnis delectus eveniet iste velit iure quaerat.', 'aut-laudantium-aut-quasi-ut-corporis-et-ab', 'Est corrupti blanditiis nemo eveniet rerum qui rerum. Eos recusandae accusantium aperiam rerum deserunt culpa quibusdam. Quam aut assumenda natus itaque quos tenetur eum ut. Maiores veritatis aliquam aut ut eum et rerum.\nUnde voluptatum consequatur provident saepe magni. Doloribus sed sit magnam consequuntur repudiandae. Earum suscipit autem tempore ipsum sapiente delectus.\nNihil incidunt placeat libero officiis ut. Et tenetur voluptas sit dolore quo qui reiciendis dolores. Quo ratione omnis dolor.\nSed et ducimus dolorem fugiat. Suscipit ut accusamus consequatur. Ipsa cupiditate ab aut.\nIpsam est placeat modi error iure. Perferendis sapiente occaecati exercitationem dolorem. Totam maxime impedit a consequatur. Dolores porro cumque voluptas at iure quaerat.\nNon maxime sunt fugiat placeat aut quis sequi. Quasi vel est quibusdam dolore quisquam ut consequatur sed. Totam nesciunt sapiente cumque.\nFugit consequatur sed voluptatibus. Facere perferendis laboriosam quae reprehenderit pariatur labore. Velit voluptatibus explicabo quos aut a voluptatem eligendi. Est occaecati quis est laborum repudiandae praesentium.', 'Dolores at quia ipsam sed. Doloribus iure tempore exercitationem dignissimos. Beatae vel voluptate odio nulla aspernatur porro.\nMolestiae repudiandae eaque non rerum ipsa. Alias aut aspernatur sunt dolore sit ut soluta in.\nNatus sapiente vero exercitationem esse aut. Voluptate quia sapiente eius necessitatibus sint. Distinctio sit ab aliquam sunt est molestiae aliquid. Non ullam atque dicta totam. Iusto vitae dignissimos laboriosam alias est consectetur aut.', 1, 0, '2016-10-14 16:16:01', '2016-10-14 16:16:01', 0),
(75, 'Nostrum sunt est eum qui totam est consequatur. Harum qui sunt ut et odit incidunt occaecati.', 'sit-sed-ad-voluptates-doloremque', 'Ut iure ut at fuga dignissimos. Cupiditate vitae fuga at impedit doloremque aut. Et alias repellat tenetur quidem.\nEt et rerum voluptatem quis possimus quas molestiae. Delectus vero sunt ut. Aut a ea voluptatem aut voluptatem esse. Aut et rerum est aperiam incidunt earum. Qui aliquid dicta occaecati quos.\nQuos harum assumenda autem dolores repudiandae. Error explicabo vel laboriosam officiis quae qui. Asperiores est velit vero.\nSit nisi est voluptatem reiciendis et similique aut. Repudiandae voluptas eum dolor esse alias in. Tenetur sapiente fuga delectus dolores. Et iusto voluptatem occaecati totam.\nAut aut qui aut odit. Ut dolor quisquam non odit. Hic tenetur excepturi sunt libero qui. Ea esse repellendus praesentium quo possimus est. Laborum voluptatum hic qui laborum vel.\nAt voluptatem vero et et. Rerum dignissimos est dolore a. Quisquam placeat aliquam recusandae nisi neque quisquam id.\nQuo nemo totam tempora sed. Sunt earum dignissimos et perspiciatis qui magnam. Quasi nulla eum quis explicabo est unde. Animi nobis voluptatem occaecati deleniti eius.', 'Laboriosam est perferendis temporibus dolorem enim dolorem. Molestias reiciendis ab praesentium autem quia accusamus. Debitis rerum qui quis reprehenderit non. Ex aliquid et nostrum eos vel corrupti.\nMolestiae aut consectetur iusto doloribus. Aut dicta dolor vel ut consequatur nihil. Vel deleniti dolor modi. Totam dolores repudiandae ut et aut animi laborum quaerat.\nEt quae voluptatem at. Repellendus aut et sed minima reprehenderit. Quos quo est et velit quod velit non ut.', 1, 1, '2016-10-14 16:16:01', '2016-10-14 16:16:01', 0),
(76, 'Et amet nobis quam sed. Et laboriosam facere odio. Explicabo autem rerum rerum.', 'tenetur-sequi-sit-similique-quisquam-perspiciatis-aperiam-possimus', 'Voluptate officiis cupiditate quos dolore exercitationem ex dicta. Deserunt voluptatem tempora quidem in.\nVelit laborum tempora recusandae. Autem molestias sunt soluta quis. Est et at aliquam aliquid quaerat neque quo autem.\nConsequatur quis et ab quidem est ea. Quibusdam et repellendus iusto laborum vitae ullam animi. Nulla dolores ipsa ad hic. Non fuga et nesciunt dolore corrupti ab.\nEt ex repellendus et. Quibusdam neque occaecati velit repellat voluptatem. Non ratione eos atque corrupti autem facere culpa corrupti. Quia minima cupiditate consequatur atque hic qui.\nDolorem quam eos adipisci velit voluptatem quo. Rerum aut vel et dolore cumque sed. Eum illo aut inventore et suscipit. Deleniti est unde ea quod et.\nQui accusantium quia ut facere tempore. Ullam velit voluptas in. Voluptatibus dolorem suscipit animi quia.\nMagni in ea omnis nemo inventore ut nulla. Ducimus eum ea dignissimos ut velit dolores. Distinctio architecto perspiciatis aliquam earum consequatur. Excepturi voluptas assumenda ducimus eius ullam aspernatur omnis. Fugit dicta est aut est quasi.', 'Dolores sit eveniet sit consectetur. Laboriosam id molestias tenetur et voluptas architecto est. Exercitationem ea qui sed id qui occaecati eum.\nLibero praesentium maxime sit saepe in ipsum modi quibusdam. Aut eaque commodi veniam nam sapiente. Voluptatibus animi velit rerum nobis quis possimus at.\nIure rem impedit laborum cum autem. Sed eligendi velit veritatis magnam. Minima aliquam consequatur quasi beatae quis aperiam.\nEt beatae libero qui dolorum ut. Quisquam commodi quia placeat. Excepturi modi expedita voluptatem occaecati.', 1, 1, '2016-10-14 16:16:01', '2016-10-14 16:16:01', 0),
(77, 'Quia voluptatem molestiae vero molestias. Ipsa explicabo possimus doloribus quos. Dolores veniam rerum enim veritatis excepturi ipsam rerum.', 'architecto-ipsum-porro-vel-eos-culpa-et-enim', 'Rem veniam necessitatibus nemo nemo. Quam harum neque natus consequatur ducimus et aliquam. Necessitatibus ut quod odio et maxime architecto non.\nDolor dolorem occaecati vero distinctio est aliquid similique architecto. Dolor saepe vero totam distinctio. Expedita est et repellendus sit ut.\nAdipisci sint odit fugit. Occaecati consectetur quia corrupti velit possimus. Ducimus quo doloribus velit hic qui suscipit ipsam. Expedita et quo ipsam quis voluptatem cum maxime repellat.\nVoluptatem velit tenetur magni beatae architecto officia. Qui fuga voluptatem aut id id asperiores. Maxime recusandae architecto ipsum repellendus assumenda non.\nIn sed consectetur quasi pariatur. Aut fuga beatae voluptas qui assumenda. Ullam quis adipisci et ex.\nDolores ut cum veritatis sunt voluptate praesentium. Nihil eaque perferendis nostrum ipsa et ratione. Deleniti quo omnis ut occaecati.\nSunt est fuga eum. Quae mollitia sed nobis nostrum recusandae voluptates. Minus delectus quis doloremque sit dolorum eius dolorum ut.\nDistinctio maiores et et voluptas expedita expedita consequatur. Sapiente laborum consectetur doloremque voluptates occaecati rerum voluptas. Sunt et fugiat neque necessitatibus ut.', 'Perferendis at velit magnam dolorem dolor temporibus possimus. Quis et magnam maiores officiis quidem. Cum in qui numquam et.\nOptio minima aut explicabo earum aut. Maiores aut voluptatem earum recusandae iusto. Molestiae qui qui laboriosam consectetur non est nobis.\nVel temporibus voluptates dolor est vero corrupti vel. Necessitatibus tenetur reprehenderit voluptatum est voluptatem. Aliquid voluptatem minima harum quibusdam rerum et fugiat pariatur.', 1, 1, '2016-10-14 16:16:01', '2016-10-14 16:16:01', 0),
(78, 'Sed minus qui non delectus nulla aut. Aliquam ex amet consequatur a sequi aut. Quibusdam et aut soluta facere voluptatum.', 'ex-corrupti-velit-quia-rerum-perferendis', 'Dolorum dicta expedita saepe temporibus deserunt. Voluptates molestias nostrum nobis explicabo deserunt autem sit nobis. Ullam qui atque illum expedita. Tempore eos perspiciatis blanditiis incidunt.\nNon maxime aut unde qui saepe pariatur alias architecto. Voluptas voluptatibus beatae qui nihil. Voluptas voluptate ut vel vero. Voluptatem aut eveniet maxime excepturi aliquid aut qui. Ad aspernatur qui consequatur reiciendis sequi eligendi.\nVel harum porro fuga officia cumque quis. Et sint sit sunt voluptas qui tempore. Iste iste iusto eveniet earum velit repellendus numquam.\nNatus dicta ut molestias atque. Hic illum quam quisquam nam. Et nobis quisquam at officiis vel delectus. Nesciunt aut quibusdam doloribus adipisci exercitationem explicabo.\nConsequatur voluptatem vero voluptatibus autem dolorum. Quia est sit natus id necessitatibus doloremque mollitia accusantium.\nEos et minus vel. Quis libero libero ut et libero fuga nostrum. Odio sit illum sint voluptate minus eos. Eius molestiae magnam saepe sit at.', 'Nesciunt nam possimus reprehenderit sunt necessitatibus soluta quis. Quidem nam porro eaque aliquid quia voluptatibus sapiente. Facilis et qui iusto id necessitatibus aut dolores. Dolores qui molestias non accusantium qui dolore.\nQuia numquam nostrum optio deleniti soluta. Magnam sequi dolorum quos labore officiis veniam dicta fuga. Voluptatum ipsum minima est et iusto ut dolor. Et aut ea esse velit aliquid nisi ducimus.', 1, 0, '2016-10-14 16:16:01', '2016-10-14 16:16:01', 0),
(79, 'Accusantium iure dicta quae impedit. Dolorum sunt sed velit culpa est. Laboriosam eos sit voluptatem et.', 'eum-aut-eaque-maxime-nisi-corrupti-ea', 'Quam et nesciunt quo molestiae omnis deserunt. Necessitatibus harum ut voluptatum nulla sit. Numquam ducimus beatae aliquam sit architecto. Natus molestiae deserunt sapiente aspernatur aspernatur. Quos similique quis nemo blanditiis est tenetur ea.\nError quia sed quisquam nihil animi. Tenetur rerum aut eos ducimus facilis. Qui beatae magni quis qui sunt perferendis quaerat deleniti. A sapiente aspernatur asperiores autem.\nDelectus ad adipisci natus. Omnis id id porro ea consequatur et voluptas. Sit quo illum corporis beatae sit voluptatum dolor.\nOfficiis in sapiente ipsam expedita quaerat sint sed. Illo labore sequi ut sunt iure ullam. Hic eaque repellat non dolor quam.\nEst quia est error magnam. Aspernatur exercitationem doloremque voluptas ullam sint unde quia. Eos qui unde vel quam.\nBeatae aut suscipit quis rerum maiores. Animi tempora qui rerum esse sunt. Ut perspiciatis beatae et.\nIusto perferendis accusantium et eius sit soluta iusto. Sit rerum exercitationem recusandae reprehenderit vel. Quas neque sequi nihil suscipit eos ea quasi.', 'Exercitationem excepturi quia autem ad distinctio hic. Voluptatem possimus architecto quam autem provident temporibus. Et atque suscipit quos enim amet omnis voluptatibus aut. Aut id natus deleniti.\nQui enim ut magni quod porro repellat dolores recusandae. Ratione omnis a sit qui illum vero aut asperiores. Placeat eos et quam optio quia.\nNon debitis non soluta sed quod assumenda consequatur. Quod fugiat totam hic quo expedita porro qui quas. Atque et quia officia rerum ea aut. Explicabo nihil odio et repellendus doloribus.', 1, 0, '2016-10-14 16:16:01', '2016-10-14 16:16:01', 0),
(80, 'Officiis rerum adipisci sed modi quis est. Et nam tempore qui et ipsa. Qui itaque unde ea sint.', 'qui-facilis-quasi-molestias', 'Praesentium ut fugiat adipisci animi sequi omnis. Officiis rerum voluptatibus velit est sunt minus qui. Sunt tenetur quo ipsam quis natus totam magni. Ullam et tempore recusandae esse debitis.\nUllam aliquam eos inventore sit. Quas aut totam ut non sint corporis provident. Dolore assumenda eaque quaerat similique ut dolorem est.\nQui maiores qui doloribus est id quidem. Deleniti aliquam incidunt hic. Aut nesciunt corrupti eum dolore non deserunt. Sit eveniet minima facilis consequatur magni.\nAmet saepe voluptatem occaecati dolor blanditiis error. Eum consequatur sit voluptatum. Ipsa quasi magni perspiciatis quo.\nQui omnis dolorem quo dolor vitae dicta nobis. Et ratione asperiores ut impedit esse. Dolorum reiciendis ut tempore enim. Eum corporis quia culpa nemo ut neque reiciendis.\nCulpa dolores odio et reprehenderit dolorem et. Officiis ipsum fugiat vitae sit. Eveniet et tempora nobis fugit laborum id deleniti. Id perferendis ipsa non beatae omnis explicabo.\nAliquam error facere velit quis ratione possimus. Molestiae quasi vitae suscipit enim. Atque aut dolore quod vel ipsam.', 'Qui suscipit deleniti consequuntur cum. Molestiae maiores aliquam sint quam cupiditate.\nAut et quam nihil repellendus esse aut. Iusto praesentium in et temporibus eveniet quis.\nEum aut sit sit nihil amet dicta. Consectetur architecto iure maxime delectus sed veniam quis officiis. Officiis dicta fugit aperiam. Aut nostrum sint doloremque sint nulla.', 1, 0, '2016-10-14 16:16:01', '2016-10-14 16:16:01', 0),
(81, 'Rerum at et blanditiis harum aut. Inventore natus quisquam voluptatem.', 'deleniti-enim-ipsa-commodi-ipsam', 'Accusantium aut quis nam id blanditiis. Aut neque odit consequatur sint.\nId vero illum eveniet dignissimos atque quos reiciendis. Quidem sed veritatis veniam quia veniam eaque. Et delectus enim blanditiis quo eum suscipit incidunt. Et voluptatem doloribus et provident.\nPariatur corporis rerum consequatur consectetur enim mollitia. Dolorem reiciendis dolor autem aut. Velit delectus a quod repudiandae facilis. Dolorum quaerat quae repudiandae temporibus necessitatibus.\nEsse mollitia praesentium quo rerum labore debitis. Eligendi cumque sint quasi quia veniam id reiciendis ea. Quasi illum sed rerum iste magni. Molestiae possimus suscipit nisi quaerat fuga aperiam omnis consequuntur.\nVoluptas sint occaecati eveniet accusamus sit. Aut nihil nostrum adipisci. Id quasi quae enim sequi id aut. Cupiditate et earum unde natus.\nEst et maxime sapiente maiores. Doloremque blanditiis iste quidem vel quidem. Amet quisquam molestiae soluta laborum explicabo. Itaque eum aut perferendis sit maxime et. Incidunt ducimus ut impedit quia laborum adipisci ducimus.', 'Voluptatum et quas aut temporibus aut. Voluptatem soluta officiis quisquam voluptas.\nVitae rerum non repellat aut quo omnis. Dolore blanditiis magni quo est cum tenetur. Placeat dolor amet quo consequatur voluptatem at veritatis quam. Assumenda est earum et est magnam nostrum. Id expedita nesciunt sit perspiciatis quia.\nSed ab tempora quidem. Sunt nam delectus amet necessitatibus aut ipsa et. Nam doloribus illo voluptas maxime voluptatibus. Quibusdam dignissimos in blanditiis praesentium officia quod.', 1, 1, '2016-10-14 16:16:01', '2016-10-14 16:16:01', 0);

-- --------------------------------------------------------

--
-- Table structure for table `posts_categories`
--

CREATE TABLE `posts_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `categories_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts_tags`
--

CREATE TABLE `posts_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `active`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'uazonner@gmail.com', '$2y$10$MdExIkKItujW3qQVIWi4u.4iBtW6gzzV43qvqCfINyR9OH.P7aJgW', 'HDnOiVfxGbzRxhphdHgK3lShwkG4v8sT6lvM7ApAbI6JQusalWtPBXGdACVb', 1, '2016-10-12 18:12:43', '2016-10-16 12:50:44'),
(2, 'Alex_K', 'alex_k@gmail.com', '$2y$10$NnKO5QeXpb7qy7.TpqHnwexMMoHXrqwPW63sGXrH0dTYomt2ZI7eG', 'CJ6FRDyVCG', 1, '2016-10-14 20:40:40', '2016-10-14 20:40:40');

-- --------------------------------------------------------

--
-- Table structure for table `user_post_like`
--

CREATE TABLE `user_post_like` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_post_like`
--

INSERT INTO `user_post_like` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES
(1, 1, 63, NULL, NULL),
(2, 1, 69, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_alias_unique` (`alias`),
  ADD KEY `posts_author_id_foreign` (`author_id`);

--
-- Indexes for table `posts_categories`
--
ALTER TABLE `posts_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_categories_post_id_foreign` (`post_id`),
  ADD KEY `posts_categories_categories_id_foreign` (`categories_id`);

--
-- Indexes for table `posts_tags`
--
ALTER TABLE `posts_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_tags_post_id_foreign` (`post_id`),
  ADD KEY `posts_tags_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_name_unique` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_post_like`
--
ALTER TABLE `user_post_like`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
--
-- AUTO_INCREMENT for table `posts_categories`
--
ALTER TABLE `posts_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `posts_tags`
--
ALTER TABLE `posts_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user_post_like`
--
ALTER TABLE `user_post_like`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts_categories`
--
ALTER TABLE `posts_categories`
  ADD CONSTRAINT `posts_categories_categories_id_foreign` FOREIGN KEY (`categories_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_categories_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts_tags`
--
ALTER TABLE `posts_tags`
  ADD CONSTRAINT `posts_tags_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_tags_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
