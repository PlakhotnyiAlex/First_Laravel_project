-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Окт 27 2022 г., 16:18
-- Версия сервера: 8.0.31-0ubuntu0.22.04.1
-- Версия PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `first_project`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'numquam', '2022-10-17 15:09:36', '2022-10-17 15:09:36'),
(2, 'update category', '2022-10-17 15:09:36', '2022-10-20 15:27:07'),
(3, 'molestiae', '2022-10-17 15:09:36', '2022-10-17 15:09:36'),
(4, 'dolores', '2022-10-17 15:09:36', '2022-10-17 15:09:36'),
(5, 'consectetur', '2022-10-17 15:09:36', '2022-10-17 15:09:36'),
(6, 'cum', '2022-10-17 15:09:36', '2022-10-17 15:09:36'),
(7, 'deserunt', '2022-10-17 15:09:36', '2022-10-17 15:09:36'),
(8, 'mollitia', '2022-10-17 15:09:36', '2022-10-17 15:09:36'),
(9, 'eius', '2022-10-17 15:09:36', '2022-10-17 15:09:36'),
(10, 'aperiam', '2022-10-17 15:09:36', '2022-10-17 15:09:36'),
(11, 'dolores', '2022-10-18 12:56:21', '2022-10-18 12:56:21'),
(12, 'perspiciatis', '2022-10-18 12:56:21', '2022-10-18 12:56:21'),
(13, 'ipsa', '2022-10-18 12:56:21', '2022-10-18 12:56:21'),
(14, 'enim', '2022-10-18 12:56:21', '2022-10-18 12:56:21'),
(15, 'repellendus', '2022-10-18 12:56:21', '2022-10-18 12:56:21'),
(16, 'quidem', '2022-10-18 12:56:21', '2022-10-18 12:56:21'),
(17, 'laborum', '2022-10-18 12:56:21', '2022-10-18 12:56:21'),
(18, 'enim', '2022-10-18 12:56:21', '2022-10-18 12:56:21'),
(19, 'laboriosam', '2022-10-18 12:56:21', '2022-10-18 12:56:21'),
(20, 'explicabo', '2022-10-18 12:56:21', '2022-10-18 12:56:21'),
(21, 'new category', '2022-10-20 14:53:01', '2022-10-20 14:53:01'),
(22, 'new category', '2022-10-20 14:55:32', '2022-10-20 14:55:32');

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_10_16_085915_create_categories_table', 1),
(6, '2022_10_16_102351_create_tags_table', 1),
(7, '2022_10_13_122125_create_posts_table', 2),
(8, '2022_10_16_102557_create_post_tags_table', 3),
(9, '2022_10_19_124558_add_column_role_to_users_table', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `likes` bigint UNSIGNED DEFAULT NULL,
  `is_published` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` bigint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `image`, `likes`, `is_published`, `created_at`, `updated_at`, `category_id`) VALUES
(1, 'sapiente-dolorem-dignissimos-laborum-ullam-repellat-eum-ut', 'Amet culpa et sunt dicta est. Dolores ullam qui aut officiis eaque mollitia. Rerum hic molestiae voluptas autem ipsam mollitia.', 'https://via.placeholder.com/640x480.png/00eedd?text=sapiente', 141, 1, '2022-10-17 15:09:36', '2022-10-17 15:09:36', 8),
(2, 'ullam-omnis-neque-consequatur-magnam-magni-voluptas-officia', 'Ipsam nostrum vel suscipit amet eum. Tempora expedita doloremque quas non quia quisquam similique. Fugiat nihil officiis est. Quos maxime laboriosam eligendi.', 'https://via.placeholder.com/640x480.png/0011bb?text=laudantium', 88, 1, '2022-10-17 15:09:36', '2022-10-17 15:09:36', 7),
(3, 'New 2222', 'some', 'ffg.jpg', 57, 1, '2022-10-17 15:09:36', '2022-10-20 15:27:07', 2),
(5, 'soluta-dolor-qui-modi-quae-dolorem-molestias-ut-eius', 'Pariatur labore et dignissimos distinctio eligendi. Exercitationem cupiditate libero cupiditate dolorum. Possimus voluptates earum quam quas natus aut.', 'https://via.placeholder.com/640x480.png/008800?text=quia', 108, 1, '2022-10-17 15:09:36', '2022-10-17 15:09:36', 2),
(6, 'officia-modi-et-dolores', 'Fuga consequatur ipsa praesentium unde. Est porro eum velit vitae sint aut molestias. Inventore sit et earum ipsam excepturi nesciunt quia.', 'https://via.placeholder.com/640x480.png/009988?text=eius', 88, 1, '2022-10-18 12:56:22', '2022-10-18 12:56:22', 3),
(7, 'necessitatibus-id-tempore-eveniet-nihil-vero-reprehenderit-quo', 'Possimus voluptatem voluptatum quis quia eaque rerum. Error qui totam voluptas autem laborum excepturi.', 'https://via.placeholder.com/640x480.png/006622?text=consequatur', 37, 1, '2022-10-18 12:56:22', '2022-10-18 12:56:22', 12),
(8, 'earum-unde-hic-et-hic-quia-qui-voluptatem', 'Officia et repellendus facere et impedit non. Repellat quo omnis aut sint minima. Quae mollitia voluptas aut.', 'https://via.placeholder.com/640x480.png/00ccbb?text=sint', 38, 1, '2022-10-18 12:56:22', '2022-10-18 12:56:22', 17),
(9, 'occaecati-sunt-nostrum-sapiente-inventore-eos', 'Ratione autem vel et neque iure et omnis est. Unde autem distinctio vitae.', 'https://via.placeholder.com/640x480.png/00ff11?text=sit', 159, 1, '2022-10-18 12:56:22', '2022-10-18 12:56:22', 9),
(10, 'debitis-maiores-culpa-rerum-dolores-vitae-omnis-cumque-esse', 'Incidunt doloremque est tempore harum molestiae aut. Dicta quod autem voluptates ut magnam mollitia recusandae. Rerum at sed et.', 'https://via.placeholder.com/640x480.png/009911?text=iure', 82, 1, '2022-10-18 12:56:22', '2022-10-18 12:56:22', 4),
(11, 'corrupti-ab-consequatur-occaecati-aliquam', 'Ut nesciunt eligendi vel aut nam eos ex. Quia iusto laudantium commodi amet recusandae occaecati at. Nostrum sit voluptatum qui itaque necessitatibus non illo. Et iure ipsa alias illum.', 'https://via.placeholder.com/640x480.png/001188?text=quia', 56, 1, '2022-10-18 12:56:22', '2022-10-18 12:56:22', 19),
(12, 'consequatur-sed-et-aliquid-similique-neque-et-aspernatur', 'Sed sunt sed et nam est omnis rerum nemo. Exercitationem quibusdam soluta unde. Porro fugit doloremque cupiditate similique commodi atque ut.', 'https://via.placeholder.com/640x480.png/00cc55?text=non', 94, 1, '2022-10-18 12:56:22', '2022-10-18 12:56:22', 14),
(13, 'blanditiis-ut-sequi-enim-quis-facere-consequatur', 'Amet ullam quia aut blanditiis accusamus sed voluptatum veritatis. Autem voluptatem amet minus ipsa rem nihil. Ducimus alias rerum nulla molestiae. Pariatur facere inventore dicta ea.', 'https://via.placeholder.com/640x480.png/0066bb?text=molestias', 75, 1, '2022-10-18 12:56:22', '2022-10-18 12:56:22', 18),
(14, 'inventore-debitis-unde-neque-et', 'Rem quia iste sapiente fugiat et neque. Repellendus aut saepe reprehenderit. Officiis harum et et numquam tempore.', 'https://via.placeholder.com/640x480.png/004488?text=voluptatem', 95, 1, '2022-10-18 12:56:22', '2022-10-18 12:56:22', 7),
(15, 'qui-qui-consectetur-quas-sint-aut-mollitia-voluptas', 'Possimus est eaque nisi accusamus ut beatae. Sed consequatur consequatur voluptatum soluta voluptates et. Velit eveniet harum optio earum.', 'https://via.placeholder.com/640x480.png/000088?text=sit', 188, 1, '2022-10-18 12:56:22', '2022-10-18 12:56:22', 16),
(16, 'vitae-numquam-consequuntur-culpa-quod-et-et', 'Id minima aperiam rerum quae. Veritatis amet est voluptas magni assumenda maxime. Quaerat unde et ratione maxime.', 'https://via.placeholder.com/640x480.png/0077ee?text=nihil', 79, 1, '2022-10-18 12:56:22', '2022-10-18 12:56:22', 19),
(17, 'eos-repudiandae-ut-id-iusto-animi-ab-culpa', 'Nisi possimus exercitationem quia. Consectetur iure voluptatem dolores voluptatem veniam accusantium. Non asperiores officia animi non rem quia vel.', 'https://via.placeholder.com/640x480.png/00aa00?text=quis', 110, 1, '2022-10-18 12:56:22', '2022-10-18 12:56:22', 8),
(18, 'culpa-reiciendis-occaecati-aut-aut', 'Explicabo et necessitatibus nihil suscipit ut. A ut tempora omnis ut est. Illo libero fugit blanditiis totam. Neque ut pariatur enim laborum fugiat cum.', 'https://via.placeholder.com/640x480.png/00ddee?text=esse', 186, 1, '2022-10-18 12:56:22', '2022-10-18 12:56:22', 3),
(19, 'neque-quidem-iusto-nesciunt-sapiente-officiis', 'In cupiditate harum temporibus saepe eius eos. Neque nulla debitis nobis. Magni praesentium hic libero.', 'https://via.placeholder.com/640x480.png/00bbdd?text=perspiciatis', 183, 1, '2022-10-18 12:56:22', '2022-10-18 12:56:22', 18),
(20, 'eius-molestias-omnis-velit-amet-ipsa-odit', 'Pariatur sit mollitia ut ullam reiciendis enim voluptate. Nobis temporibus necessitatibus blanditiis aut incidunt facere occaecati dolorem. Ducimus ut et et et aut nihil quis.', 'https://via.placeholder.com/640x480.png/00bbee?text=occaecati', 7, 1, '2022-10-18 12:56:22', '2022-10-18 12:56:22', 8),
(21, 'molestiae-perferendis-minus-quod', 'Qui autem ut blanditiis a quisquam aliquam odit. Qui adipisci molestias nemo eum soluta dolores. Minus nostrum possimus harum in. Non aperiam quo occaecati nesciunt corrupti non voluptas.', 'https://via.placeholder.com/640x480.png/0033bb?text=unde', 94, 1, '2022-10-18 12:56:22', '2022-10-18 12:56:22', 4),
(22, 'ut-quasi-dolores-ut-qui-dolor', 'Autem a asperiores nobis ut rerum. At nobis sit quibusdam ut provident impedit. Reiciendis quia consequatur enim iste ut est officia et.', 'https://via.placeholder.com/640x480.png/002255?text=eum', 83, 1, '2022-10-18 12:56:22', '2022-10-18 12:56:22', 11),
(23, 'et-autem-exercitationem-neque-vel', 'Adipisci ea nam ratione ea. Est sunt recusandae ut dolore officia. Perferendis excepturi voluptatibus tenetur atque.', 'https://via.placeholder.com/640x480.png/00ee11?text=esse', 195, 1, '2022-10-18 12:56:22', '2022-10-18 12:56:22', 13),
(24, 'est-harum-quia-alias-magni-officia-atque-impedit', 'Consequuntur recusandae cupiditate amet doloremque. Quidem accusamus sed sit deleniti deleniti reiciendis. Consectetur deserunt voluptatibus similique sequi.', 'https://via.placeholder.com/640x480.png/006600?text=porro', 1, 1, '2022-10-18 12:56:22', '2022-10-18 12:56:22', 15),
(25, 'et-mollitia-quidem-nisi-rerum-ad', 'Quo aperiam exercitationem consequatur voluptatem est. Et rerum soluta quia iste. Et dolorum ea quibusdam nostrum repellendus voluptatum. Optio adipisci neque autem necessitatibus aliquam ut.', 'https://via.placeholder.com/640x480.png/0044bb?text=ea', 165, 1, '2022-10-18 12:56:22', '2022-10-18 12:56:22', 20),
(26, 'quas-eligendi-velit-esse-consequatur', 'Enim eligendi velit quae doloribus. Culpa et quod sed omnis tempore impedit soluta. Et excepturi veritatis commodi aut saepe.', 'https://via.placeholder.com/640x480.png/00cc22?text=sint', 111, 1, '2022-10-18 12:56:22', '2022-10-18 12:56:22', 4),
(27, 'similique-sit-accusamus-nesciunt-voluptas-aut-et-natus', 'Quia ullam asperiores ut nostrum. Nobis dolorum quia dicta officia. Animi quam incidunt hic inventore. Dolorum pariatur ut similique et vitae aut atque esse.', 'https://via.placeholder.com/640x480.png/001144?text=unde', 151, 1, '2022-10-18 12:56:22', '2022-10-18 12:56:22', 17),
(28, 'voluptatum-eum-qui-est-doloribus', 'Nemo voluptas recusandae dolor quia sed. Mollitia saepe et sapiente et nihil ea sapiente. Commodi alias ex suscipit aut aliquid voluptatum.', 'https://via.placeholder.com/640x480.png/00ddbb?text=quos', 176, 1, '2022-10-18 12:56:22', '2022-10-18 12:56:22', 3),
(29, 'atque-quasi-nisi-rerum-non-non-temporibus-laborum-optio', 'Non laborum fuga rem consectetur exercitationem. Explicabo placeat natus et. Voluptatem consequuntur et pariatur dolor omnis quia.', 'https://via.placeholder.com/640x480.png/007711?text=et', 191, 1, '2022-10-18 12:56:22', '2022-10-18 12:56:22', 20),
(30, 'reiciendis-dolores-quod-iusto-laboriosam', 'Voluptatem est laboriosam natus minus ut. Ea aspernatur dolorum voluptas officiis quisquam quis molestias mollitia.', 'https://via.placeholder.com/640x480.png/008888?text=qui', 197, 1, '2022-10-18 12:56:22', '2022-10-18 12:56:22', 2),
(31, 'Postman', 'sddsfdfdggghhghgfhhhfhcvbcvbbvbcvbvvbcb', 'dsdfgdf.jpg', NULL, 1, '2022-10-19 14:15:53', '2022-10-19 14:15:53', 2),
(32, 'Updated', 'sddsfdfdggghhghgfhhhfhcvbcvbbvbcvbvvbcb', 'dsdfgdf.jpg', NULL, 1, '2022-10-19 14:16:50', '2022-10-19 14:32:22', 2),
(33, 'PostNEW', 'sddsfdfdggghhghgfhhhfhcvbcvbbvbcvbvvbcb', 'dsdfgdf.jpg', NULL, 1, '2022-10-19 14:21:59', '2022-10-19 14:21:59', 2),
(34, 'NewUpdated', 'sddsfdfdggghhghgfhhhfhcvbcvbbvbcvbvvbcb', 'dsdfgdf.jpg', NULL, 1, '2022-10-19 14:32:34', '2022-10-19 14:32:34', 2),
(37, 'new', 'cxzcx', 'gggg.jpg', NULL, 1, '2022-10-20 11:39:41', '2022-10-20 11:39:41', 4),
(38, 'New postman', 'some', 'ffg.jpg', NULL, 1, '2022-10-20 14:53:01', '2022-10-20 14:53:01', 21),
(39, 'New postman', 'some', 'ffg.jpg', NULL, 1, '2022-10-20 14:55:32', '2022-10-20 14:55:32', 22),
(40, 'New postman', 'some', 'ffg.jpg', NULL, 1, '2022-10-20 15:06:28', '2022-10-20 15:06:28', 2),
(41, 'New postman', 'some', 'ffg.jpg', NULL, 1, '2022-10-20 15:13:18', '2022-10-20 15:13:18', 2),
(42, 'sunt aut facere repellat provident occaecati excepturi optio reprehenderit', 'quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 10),
(43, 'qui est esse', 'est rerum tempore vitae\nsequi sint nihil reprehenderit dolor beatae ea dolores neque\nfugiat blanditiis voluptate porro vel nihil molestiae ut reiciendis\nqui aperiam non debitis possimus qui neque nisi nulla', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 5),
(44, 'ea molestias quasi exercitationem repellat qui ipsa sit aut', 'et iusto sed quo iure\nvoluptatem occaecati omnis eligendi aut ad\nvoluptatem doloribus vel accusantium quis pariatur\nmolestiae porro eius odio et labore et velit aut', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 7),
(45, 'eum et est occaecati', 'ullam et saepe reiciendis voluptatem adipisci\nsit amet autem assumenda provident rerum culpa\nquis hic commodi nesciunt rem tenetur doloremque ipsam iure\nquis sunt voluptatem rerum illo velit', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 15),
(46, 'nesciunt quas odio', 'repudiandae veniam quaerat sunt sed\nalias aut fugiat sit autem sed est\nvoluptatem omnis possimus esse voluptatibus quis\nest aut tenetur dolor neque', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 8),
(47, 'dolorem eum magni eos aperiam quia', 'ut aspernatur corporis harum nihil quis provident sequi\nmollitia nobis aliquid molestiae\nperspiciatis et ea nemo ab reprehenderit accusantium quas\nvoluptate dolores velit et doloremque molestiae', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 15),
(48, 'magnam facilis autem', 'dolore placeat quibusdam ea quo vitae\nmagni quis enim qui quis quo nemo aut saepe\nquidem repellat excepturi ut quia\nsunt ut sequi eos ea sed quas', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 20),
(49, 'dolorem dolore est ipsam', 'dignissimos aperiam dolorem qui eum\nfacilis quibusdam animi sint suscipit qui sint possimus cum\nquaerat magni maiores excepturi\nipsam ut commodi dolor voluptatum modi aut vitae', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 22),
(50, 'nesciunt iure omnis dolorem tempora et accusantium', 'consectetur animi nesciunt iure dolore\nenim quia ad\nveniam autem ut quam aut nobis\net est aut quod aut provident voluptas autem voluptas', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 10),
(51, 'optio molestias id quia eum', 'quo et expedita modi cum officia vel magni\ndoloribus qui repudiandae\nvero nisi sit\nquos veniam quod sed accusamus veritatis error', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 17),
(52, 'et ea vero quia laudantium autem', 'delectus reiciendis molestiae occaecati non minima eveniet qui voluptatibus\naccusamus in eum beatae sit\nvel qui neque voluptates ut commodi qui incidunt\nut animi commodi', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 18),
(53, 'in quibusdam tempore odit est dolorem', 'itaque id aut magnam\npraesentium quia et ea odit et ea voluptas et\nsapiente quia nihil amet occaecati quia id voluptatem\nincidunt ea est distinctio odio', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 16),
(54, 'dolorum ut in voluptas mollitia et saepe quo animi', 'aut dicta possimus sint mollitia voluptas commodi quo doloremque\niste corrupti reiciendis voluptatem eius rerum\nsit cumque quod eligendi laborum minima\nperferendis recusandae assumenda consectetur porro architecto ipsum ipsam', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 4),
(55, 'voluptatem eligendi optio', 'fuga et accusamus dolorum perferendis illo voluptas\nnon doloremque neque facere\nad qui dolorum molestiae beatae\nsed aut voluptas totam sit illum', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 6),
(56, 'eveniet quod temporibus', 'reprehenderit quos placeat\nvelit minima officia dolores impedit repudiandae molestiae nam\nvoluptas recusandae quis delectus\nofficiis harum fugiat vitae', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 8),
(57, 'sint suscipit perspiciatis velit dolorum rerum ipsa laboriosam odio', 'suscipit nam nisi quo aperiam aut\nasperiores eos fugit maiores voluptatibus quia\nvoluptatem quis ullam qui in alias quia est\nconsequatur magni mollitia accusamus ea nisi voluptate dicta', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 1),
(58, 'fugit voluptas sed molestias voluptatem provident', 'eos voluptas et aut odit natus earum\naspernatur fuga molestiae ullam\ndeserunt ratione qui eos\nqui nihil ratione nemo velit ut aut id quo', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 20),
(59, 'voluptate et itaque vero tempora molestiae', 'eveniet quo quis\nlaborum totam consequatur non dolor\nut et est repudiandae\nest voluptatem vel debitis et magnam', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 21),
(60, 'adipisci placeat illum aut reiciendis qui', 'illum quis cupiditate provident sit magnam\nea sed aut omnis\nveniam maiores ullam consequatur atque\nadipisci quo iste expedita sit quos voluptas', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 21),
(61, 'doloribus ad provident suscipit at', 'qui consequuntur ducimus possimus quisquam amet similique\nsuscipit porro ipsam amet\neos veritatis officiis exercitationem vel fugit aut necessitatibus totam\nomnis rerum consequatur expedita quidem cumque explicabo', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 8),
(62, 'asperiores ea ipsam voluptatibus modi minima quia sint', 'repellat aliquid praesentium dolorem quo\nsed totam minus non itaque\nnihil labore molestiae sunt dolor eveniet hic recusandae veniam\ntempora et tenetur expedita sunt', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 18),
(63, 'dolor sint quo a velit explicabo quia nam', 'eos qui et ipsum ipsam suscipit aut\nsed omnis non odio\nexpedita earum mollitia molestiae aut atque rem suscipit\nnam impedit esse', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 5),
(64, 'maxime id vitae nihil numquam', 'veritatis unde neque eligendi\nquae quod architecto quo neque vitae\nest illo sit tempora doloremque fugit quod\net et vel beatae sequi ullam sed tenetur perspiciatis', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 1),
(65, 'autem hic labore sunt dolores incidunt', 'enim et ex nulla\nomnis voluptas quia qui\nvoluptatem consequatur numquam aliquam sunt\ntotam recusandae id dignissimos aut sed asperiores deserunt', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 6),
(66, 'rem alias distinctio quo quis', 'ullam consequatur ut\nomnis quis sit vel consequuntur\nipsa eligendi ipsum molestiae et omnis error nostrum\nmolestiae illo tempore quia et distinctio', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 7),
(67, 'est et quae odit qui non', 'similique esse doloribus nihil accusamus\nomnis dolorem fuga consequuntur reprehenderit fugit recusandae temporibus\nperspiciatis cum ut laudantium\nomnis aut molestiae vel vero', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 1),
(68, 'quasi id et eos tenetur aut quo autem', 'eum sed dolores ipsam sint possimus debitis occaecati\ndebitis qui qui et\nut placeat enim earum aut odit facilis\nconsequatur suscipit necessitatibus rerum sed inventore temporibus consequatur', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 10),
(69, 'delectus ullam et corporis nulla voluptas sequi', 'non et quaerat ex quae ad maiores\nmaiores recusandae totam aut blanditiis mollitia quas illo\nut voluptatibus voluptatem\nsimilique nostrum eum', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 4),
(70, 'iusto eius quod necessitatibus culpa ea', 'odit magnam ut saepe sed non qui\ntempora atque nihil\naccusamus illum doloribus illo dolor\neligendi repudiandae odit magni similique sed cum maiores', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 19),
(71, 'a quo magni similique perferendis', 'alias dolor cumque\nimpedit blanditiis non eveniet odio maxime\nblanditiis amet eius quis tempora quia autem rem\na provident perspiciatis quia', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 21),
(72, 'ullam ut quidem id aut vel consequuntur', 'debitis eius sed quibusdam non quis consectetur vitae\nimpedit ut qui consequatur sed aut in\nquidem sit nostrum et maiores adipisci atque\nquaerat voluptatem adipisci repudiandae', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 16),
(73, 'doloremque illum aliquid sunt', 'deserunt eos nobis asperiores et hic\nest debitis repellat molestiae optio\nnihil ratione ut eos beatae quibusdam distinctio maiores\nearum voluptates et aut adipisci ea maiores voluptas maxime', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 10),
(74, 'qui explicabo molestiae dolorem', 'rerum ut et numquam laborum odit est sit\nid qui sint in\nquasi tenetur tempore aperiam et quaerat qui in\nrerum officiis sequi cumque quod', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 19),
(75, 'magnam ut rerum iure', 'ea velit perferendis earum ut voluptatem voluptate itaque iusto\ntotam pariatur in\nnemo voluptatem voluptatem autem magni tempora minima in\nest distinctio qui assumenda accusamus dignissimos officia nesciunt nobis', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 13),
(76, 'id nihil consequatur molestias animi provident', 'nisi error delectus possimus ut eligendi vitae\nplaceat eos harum cupiditate facilis reprehenderit voluptatem beatae\nmodi ducimus quo illum voluptas eligendi\net nobis quia fugit', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 20),
(77, 'fuga nam accusamus voluptas reiciendis itaque', 'ad mollitia et omnis minus architecto odit\nvoluptas doloremque maxime aut non ipsa qui alias veniam\nblanditiis culpa aut quia nihil cumque facere et occaecati\nqui aspernatur quia eaque ut aperiam inventore', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 3),
(78, 'provident vel ut sit ratione est', 'debitis et eaque non officia sed nesciunt pariatur vel\nvoluptatem iste vero et ea\nnumquam aut expedita ipsum nulla in\nvoluptates omnis consequatur aut enim officiis in quam qui', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 18),
(79, 'explicabo et eos deleniti nostrum ab id repellendus', 'animi esse sit aut sit nesciunt assumenda eum voluptas\nquia voluptatibus provident quia necessitatibus ea\nrerum repudiandae quia voluptatem delectus fugit aut id quia\nratione optio eos iusto veniam iure', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 11),
(80, 'eos dolorem iste accusantium est eaque quam', 'corporis rerum ducimus vel eum accusantium\nmaxime aspernatur a porro possimus iste omnis\nest in deleniti asperiores fuga aut\nvoluptas sapiente vel dolore minus voluptatem incidunt ex', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 9),
(81, 'enim quo cumque', 'ut voluptatum aliquid illo tenetur nemo sequi quo facilis\nipsum rem optio mollitia quas\nvoluptatem eum voluptas qui\nunde omnis voluptatem iure quasi maxime voluptas nam', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 15),
(82, 'non est facere', 'molestias id nostrum\nexcepturi molestiae dolore omnis repellendus quaerat saepe\nconsectetur iste quaerat tenetur asperiores accusamus ex ut\nnam quidem est ducimus sunt debitis saepe', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 7),
(83, 'commodi ullam sint et excepturi error explicabo praesentium voluptas', 'odio fugit voluptatum ducimus earum autem est incidunt voluptatem\nodit reiciendis aliquam sunt sequi nulla dolorem\nnon facere repellendus voluptates quia\nratione harum vitae ut', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 13),
(84, 'eligendi iste nostrum consequuntur adipisci praesentium sit beatae perferendis', 'similique fugit est\nillum et dolorum harum et voluptate eaque quidem\nexercitationem quos nam commodi possimus cum odio nihil nulla\ndolorum exercitationem magnam ex et a et distinctio debitis', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 21),
(85, 'optio dolor molestias sit', 'temporibus est consectetur dolore\net libero debitis vel velit laboriosam quia\nipsum quibusdam qui itaque fuga rem aut\nea et iure quam sed maxime ut distinctio quae', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 11),
(86, 'ut numquam possimus omnis eius suscipit laudantium iure', 'est natus reiciendis nihil possimus aut provident\nex et dolor\nrepellat pariatur est\nnobis rerum repellendus dolorem autem', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 11),
(87, 'aut quo modi neque nostrum ducimus', 'voluptatem quisquam iste\nvoluptatibus natus officiis facilis dolorem\nquis quas ipsam\nvel et voluptatum in aliquid', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 21),
(88, 'quibusdam cumque rem aut deserunt', 'voluptatem assumenda ut qui ut cupiditate aut impedit veniam\noccaecati nemo illum voluptatem laudantium\nmolestiae beatae rerum ea iure soluta nostrum\neligendi et voluptate', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 6),
(89, 'ut voluptatem illum ea doloribus itaque eos', 'voluptates quo voluptatem facilis iure occaecati\nvel assumenda rerum officia et\nillum perspiciatis ab deleniti\nlaudantium repellat ad ut et autem reprehenderit', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 16),
(90, 'laborum non sunt aut ut assumenda perspiciatis voluptas', 'inventore ab sint\nnatus fugit id nulla sequi architecto nihil quaerat\neos tenetur in in eum veritatis non\nquibusdam officiis aspernatur cumque aut commodi aut', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 22),
(91, 'repellendus qui recusandae incidunt voluptates tenetur qui omnis exercitationem', 'error suscipit maxime adipisci consequuntur recusandae\nvoluptas eligendi et est et voluptates\nquia distinctio ab amet quaerat molestiae et vitae\nadipisci impedit sequi nesciunt quis consectetur', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 12),
(92, 'soluta aliquam aperiam consequatur illo quis voluptas', 'sunt dolores aut doloribus\ndolore doloribus voluptates tempora et\ndoloremque et quo\ncum asperiores sit consectetur dolorem', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 7),
(93, 'qui enim et consequuntur quia animi quis voluptate quibusdam', 'iusto est quibusdam fuga quas quaerat molestias\na enim ut sit accusamus enim\ntemporibus iusto accusantium provident architecto\nsoluta esse reprehenderit qui laborum', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 2),
(94, 'ut quo aut ducimus alias', 'minima harum praesentium eum rerum illo dolore\nquasi exercitationem rerum nam\nporro quis neque quo\nconsequatur minus dolor quidem veritatis sunt non explicabo similique', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 8),
(95, 'sit asperiores ipsam eveniet odio non quia', 'totam corporis dignissimos\nvitae dolorem ut occaecati accusamus\nex velit deserunt\net exercitationem vero incidunt corrupti mollitia', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 1),
(96, 'sit vel voluptatem et non libero', 'debitis excepturi ea perferendis harum libero optio\neos accusamus cum fuga ut sapiente repudiandae\net ut incidunt omnis molestiae\nnihil ut eum odit', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 16),
(97, 'qui et at rerum necessitatibus', 'aut est omnis dolores\nneque rerum quod ea rerum velit pariatur beatae excepturi\net provident voluptas corrupti\ncorporis harum reprehenderit dolores eligendi', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 5),
(98, 'sed ab est est', 'at pariatur consequuntur earum quidem\nquo est laudantium soluta voluptatem\nqui ullam et est\net cum voluptas voluptatum repellat est', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 6),
(99, 'voluptatum itaque dolores nisi et quasi', 'veniam voluptatum quae adipisci id\net id quia eos ad et dolorem\naliquam quo nisi sunt eos impedit error\nad similique veniam', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 10),
(100, 'qui commodi dolor at maiores et quis id accusantium', 'perspiciatis et quam ea autem temporibus non voluptatibus qui\nbeatae a earum officia nesciunt dolores suscipit voluptas et\nanimi doloribus cum rerum quas et magni\net hic ut ut commodi expedita sunt', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 22),
(101, 'consequatur placeat omnis quisquam quia reprehenderit fugit veritatis facere', 'asperiores sunt ab assumenda cumque modi velit\nqui esse omnis\nvoluptate et fuga perferendis voluptas\nillo ratione amet aut et omnis', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 18),
(102, 'voluptatem doloribus consectetur est ut ducimus', 'ab nemo optio odio\ndelectus tenetur corporis similique nobis repellendus rerum omnis facilis\nvero blanditiis debitis in nesciunt doloribus dicta dolores\nmagnam minus velit', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 9),
(103, 'beatae enim quia vel', 'enim aspernatur illo distinctio quae praesentium\nbeatae alias amet delectus qui voluptate distinctio\nodit sint accusantium autem omnis\nquo molestiae omnis ea eveniet optio', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 6),
(104, 'voluptas blanditiis repellendus animi ducimus error sapiente et suscipit', 'enim adipisci aspernatur nemo\nnumquam omnis facere dolorem dolor ex quis temporibus incidunt\nab delectus culpa quo reprehenderit blanditiis asperiores\naccusantium ut quam in voluptatibus voluptas ipsam dicta', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 8),
(105, 'et fugit quas eum in in aperiam quod', 'id velit blanditiis\neum ea voluptatem\nmolestiae sint occaecati est eos perspiciatis\nincidunt a error provident eaque aut aut qui', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 20),
(106, 'consequatur id enim sunt et et', 'voluptatibus ex esse\nsint explicabo est aliquid cumque adipisci fuga repellat labore\nmolestiae corrupti ex saepe at asperiores et perferendis\nnatus id esse incidunt pariatur', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 1),
(107, 'repudiandae ea animi iusto', 'officia veritatis tenetur vero qui itaque\nsint non ratione\nsed et ut asperiores iusto eos molestiae nostrum\nveritatis quibusdam et nemo iusto saepe', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 6),
(108, 'aliquid eos sed fuga est maxime repellendus', 'reprehenderit id nostrum\nvoluptas doloremque pariatur sint et accusantium quia quod aspernatur\net fugiat amet\nnon sapiente et consequatur necessitatibus molestiae', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 22),
(109, 'odio quis facere architecto reiciendis optio', 'magnam molestiae perferendis quisquam\nqui cum reiciendis\nquaerat animi amet hic inventore\nea quia deleniti quidem saepe porro velit', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 4),
(110, 'fugiat quod pariatur odit minima', 'officiis error culpa consequatur modi asperiores et\ndolorum assumenda voluptas et vel qui aut vel rerum\nvoluptatum quisquam perspiciatis quia rerum consequatur totam quas\nsequi commodi repudiandae asperiores et saepe a', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 2),
(111, 'voluptatem laborum magni', 'sunt repellendus quae\nest asperiores aut deleniti esse accusamus repellendus quia aut\nquia dolorem unde\neum tempora esse dolore', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 3),
(112, 'et iusto veniam et illum aut fuga', 'occaecati a doloribus\niste saepe consectetur placeat eum voluptate dolorem et\nqui quo quia voluptas\nrerum ut id enim velit est perferendis', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 15),
(113, 'sint hic doloribus consequatur eos non id', 'quam occaecati qui deleniti consectetur\nconsequatur aut facere quas exercitationem aliquam hic voluptas\nneque id sunt ut aut accusamus\nsunt consectetur expedita inventore velit', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 22),
(114, 'consequuntur deleniti eos quia temporibus ab aliquid at', 'voluptatem cumque tenetur consequatur expedita ipsum nemo quia explicabo\naut eum minima consequatur\ntempore cumque quae est et\net in consequuntur voluptatem voluptates aut', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 19),
(115, 'enim unde ratione doloribus quas enim ut sit sapiente', 'odit qui et et necessitatibus sint veniam\nmollitia amet doloremque molestiae commodi similique magnam et quam\nblanditiis est itaque\nquo et tenetur ratione occaecati molestiae tempora', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 7),
(116, 'dignissimos eum dolor ut enim et delectus in', 'commodi non non omnis et voluptas sit\nautem aut nobis magnam et sapiente voluptatem\net laborum repellat qui delectus facilis temporibus\nrerum amet et nemo voluptate expedita adipisci error dolorem', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 20),
(117, 'doloremque officiis ad et non perferendis', 'ut animi facere\ntotam iusto tempore\nmolestiae eum aut et dolorem aperiam\nquaerat recusandae totam odio', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 13),
(118, 'necessitatibus quasi exercitationem odio', 'modi ut in nulla repudiandae dolorum nostrum eos\naut consequatur omnis\nut incidunt est omnis iste et quam\nvoluptates sapiente aliquam asperiores nobis amet corrupti repudiandae provident', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 16),
(119, 'quam voluptatibus rerum veritatis', 'nobis facilis odit tempore cupiditate quia\nassumenda doloribus rerum qui ea\nillum et qui totam\naut veniam repellendus', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 17),
(120, 'pariatur consequatur quia magnam autem omnis non amet', 'libero accusantium et et facere incidunt sit dolorem\nnon excepturi qui quia sed laudantium\nquisquam molestiae ducimus est\nofficiis esse molestiae iste et quos', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 11),
(121, 'labore in ex et explicabo corporis aut quas', 'ex quod dolorem ea eum iure qui provident amet\nquia qui facere excepturi et repudiandae\nasperiores molestias provident\nminus incidunt vero fugit rerum sint sunt excepturi provident', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 5),
(122, 'tempora rem veritatis voluptas quo dolores vero', 'facere qui nesciunt est voluptatum voluptatem nisi\nsequi eligendi necessitatibus ea at rerum itaque\nharum non ratione velit laboriosam quis consequuntur\nex officiis minima doloremque voluptas ut aut', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 5),
(123, 'laudantium voluptate suscipit sunt enim enim', 'ut libero sit aut totam inventore sunt\nporro sint qui sunt molestiae\nconsequatur cupiditate qui iste ducimus adipisci\ndolor enim assumenda soluta laboriosam amet iste delectus hic', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 10),
(124, 'odit et voluptates doloribus alias odio et', 'est molestiae facilis quis tempora numquam nihil qui\nvoluptate sapiente consequatur est qui\nnecessitatibus autem aut ipsa aperiam modi dolore numquam\nreprehenderit eius rem quibusdam', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 4),
(125, 'optio ipsam molestias necessitatibus occaecati facilis veritatis dolores aut', 'sint molestiae magni a et quos\neaque et quasi\nut rerum debitis similique veniam\nrecusandae dignissimos dolor incidunt consequatur odio', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 17),
(126, 'dolore veritatis porro provident adipisci blanditiis et sunt', 'similique sed nisi voluptas iusto omnis\nmollitia et quo\nassumenda suscipit officia magnam sint sed tempora\nenim provident pariatur praesentium atque animi amet ratione', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 14),
(127, 'placeat quia et porro iste', 'quasi excepturi consequatur iste autem temporibus sed molestiae beatae\net quaerat et esse ut\nvoluptatem occaecati et vel explicabo autem\nasperiores pariatur deserunt optio', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 14),
(128, 'nostrum quis quasi placeat', 'eos et molestiae\nnesciunt ut a\ndolores perspiciatis repellendus repellat aliquid\nmagnam sint rem ipsum est', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 17),
(129, 'sapiente omnis fugit eos', 'consequatur omnis est praesentium\nducimus non iste\nneque hic deserunt\nvoluptatibus veniam cum et rerum sed', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 4),
(130, 'sint soluta et vel magnam aut ut sed qui', 'repellat aut aperiam totam temporibus autem et\narchitecto magnam ut\nconsequatur qui cupiditate rerum quia soluta dignissimos nihil iure\ntempore quas est', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 13),
(131, 'ad iusto omnis odit dolor voluptatibus', 'minus omnis soluta quia\nqui sed adipisci voluptates illum ipsam voluptatem\neligendi officia ut in\neos soluta similique molestias praesentium blanditiis', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 19),
(132, 'aut amet sed', 'libero voluptate eveniet aperiam sed\nsunt placeat suscipit molestias\nsimilique fugit nam natus\nexpedita consequatur consequatur dolores quia eos et placeat', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 17),
(133, 'ratione ex tenetur perferendis', 'aut et excepturi dicta laudantium sint rerum nihil\nlaudantium et at\na neque minima officia et similique libero et\ncommodi voluptate qui', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 20),
(134, 'beatae soluta recusandae', 'dolorem quibusdam ducimus consequuntur dicta aut quo laboriosam\nvoluptatem quis enim recusandae ut sed sunt\nnostrum est odit totam\nsit error sed sunt eveniet provident qui nulla', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 12),
(135, 'qui qui voluptates illo iste minima', 'aspernatur expedita soluta quo ab ut similique\nexpedita dolores amet\nsed temporibus distinctio magnam saepe deleniti\nomnis facilis nam ipsum natus sint similique omnis', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 15),
(136, 'id minus libero illum nam ad officiis', 'earum voluptatem facere provident blanditiis velit laboriosam\npariatur accusamus odio saepe\ncumque dolor qui a dicta ab doloribus consequatur omnis\ncorporis cupiditate eaque assumenda ad nesciunt', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 20),
(137, 'quaerat velit veniam amet cupiditate aut numquam ut sequi', 'in non odio excepturi sint eum\nlabore voluptates vitae quia qui et\ninventore itaque rerum\nveniam non exercitationem delectus aut', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 13),
(138, 'quas fugiat ut perspiciatis vero provident', 'eum non blanditiis soluta porro quibusdam voluptas\nvel voluptatem qui placeat dolores qui velit aut\nvel inventore aut cumque culpa explicabo aliquid at\nperspiciatis est et voluptatem dignissimos dolor itaque sit nam', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 3),
(139, 'laboriosam dolor voluptates', 'doloremque ex facilis sit sint culpa\nsoluta assumenda eligendi non ut eius\nsequi ducimus vel quasi\nveritatis est dolores', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 13),
(140, 'temporibus sit alias delectus eligendi possimus magni', 'quo deleniti praesentium dicta non quod\naut est molestias\nmolestias et officia quis nihil\nitaque dolorem quia', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 8),
(141, 'at nam consequatur ea labore ea harum', 'cupiditate quo est a modi nesciunt soluta\nipsa voluptas error itaque dicta in\nautem qui minus magnam et distinctio eum\naccusamus ratione error aut', NULL, NULL, 1, '2022-10-21 06:01:58', '2022-10-21 06:01:58', 20);

-- --------------------------------------------------------

--
-- Структура таблицы `post_tags`
--

CREATE TABLE `post_tags` (
  `id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL,
  `tag_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `post_tags`
--

INSERT INTO `post_tags` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 1, 4, NULL, NULL),
(2, 1, 5, NULL, NULL),
(3, 1, 9, NULL, NULL),
(4, 1, 14, NULL, NULL),
(5, 1, 15, NULL, NULL),
(6, 2, 1, NULL, NULL),
(7, 2, 3, NULL, NULL),
(8, 2, 6, NULL, NULL),
(9, 2, 9, NULL, NULL),
(10, 2, 17, NULL, NULL),
(21, 5, 1, NULL, NULL),
(22, 5, 3, NULL, NULL),
(26, 6, 21, NULL, NULL),
(27, 6, 26, NULL, NULL),
(28, 6, 32, NULL, NULL),
(29, 6, 34, NULL, NULL),
(30, 6, 39, NULL, NULL),
(31, 7, 22, NULL, NULL),
(32, 7, 24, NULL, NULL),
(33, 7, 28, NULL, NULL),
(34, 7, 37, NULL, NULL),
(35, 7, 38, NULL, NULL),
(36, 8, 26, NULL, NULL),
(37, 8, 27, NULL, NULL),
(38, 8, 29, NULL, NULL),
(39, 8, 34, NULL, NULL),
(40, 8, 40, NULL, NULL),
(41, 9, 22, NULL, NULL),
(42, 9, 26, NULL, NULL),
(43, 9, 29, NULL, NULL),
(44, 9, 33, NULL, NULL),
(45, 9, 40, NULL, NULL),
(46, 10, 22, NULL, NULL),
(47, 10, 25, NULL, NULL),
(48, 10, 28, NULL, NULL),
(49, 10, 35, NULL, NULL),
(50, 10, 40, NULL, NULL),
(51, 11, 25, NULL, NULL),
(52, 11, 28, NULL, NULL),
(53, 11, 31, NULL, NULL),
(54, 11, 32, NULL, NULL),
(55, 11, 40, NULL, NULL),
(56, 12, 23, NULL, NULL),
(57, 12, 24, NULL, NULL),
(58, 12, 28, NULL, NULL),
(59, 12, 29, NULL, NULL),
(60, 12, 35, NULL, NULL),
(61, 13, 23, NULL, NULL),
(62, 13, 26, NULL, NULL),
(63, 13, 31, NULL, NULL),
(64, 13, 34, NULL, NULL),
(65, 13, 39, NULL, NULL),
(66, 14, 22, NULL, NULL),
(67, 14, 31, NULL, NULL),
(68, 14, 33, NULL, NULL),
(69, 14, 38, NULL, NULL),
(70, 14, 40, NULL, NULL),
(71, 15, 21, NULL, NULL),
(72, 15, 22, NULL, NULL),
(73, 15, 27, NULL, NULL),
(74, 15, 32, NULL, NULL),
(75, 15, 39, NULL, NULL),
(76, 16, 21, NULL, NULL),
(77, 16, 24, NULL, NULL),
(78, 16, 26, NULL, NULL),
(79, 16, 35, NULL, NULL),
(80, 16, 37, NULL, NULL),
(81, 17, 27, NULL, NULL),
(82, 17, 28, NULL, NULL),
(83, 17, 36, NULL, NULL),
(84, 17, 37, NULL, NULL),
(85, 17, 39, NULL, NULL),
(86, 18, 27, NULL, NULL),
(87, 18, 29, NULL, NULL),
(88, 18, 32, NULL, NULL),
(89, 18, 37, NULL, NULL),
(90, 18, 38, NULL, NULL),
(91, 19, 22, NULL, NULL),
(92, 19, 23, NULL, NULL),
(93, 19, 24, NULL, NULL),
(94, 19, 26, NULL, NULL),
(95, 19, 40, NULL, NULL),
(96, 20, 23, NULL, NULL),
(97, 20, 24, NULL, NULL),
(98, 20, 30, NULL, NULL),
(99, 20, 36, NULL, NULL),
(100, 20, 37, NULL, NULL),
(101, 21, 23, NULL, NULL),
(102, 21, 26, NULL, NULL),
(103, 21, 31, NULL, NULL),
(104, 21, 33, NULL, NULL),
(105, 21, 35, NULL, NULL),
(106, 22, 29, NULL, NULL),
(107, 22, 33, NULL, NULL),
(108, 22, 35, NULL, NULL),
(109, 22, 38, NULL, NULL),
(110, 22, 39, NULL, NULL),
(111, 23, 23, NULL, NULL),
(112, 23, 26, NULL, NULL),
(113, 23, 27, NULL, NULL),
(114, 23, 28, NULL, NULL),
(115, 23, 37, NULL, NULL),
(116, 24, 23, NULL, NULL),
(117, 24, 31, NULL, NULL),
(118, 24, 33, NULL, NULL),
(119, 24, 34, NULL, NULL),
(120, 24, 35, NULL, NULL),
(121, 25, 25, NULL, NULL),
(122, 25, 26, NULL, NULL),
(123, 25, 29, NULL, NULL),
(124, 25, 32, NULL, NULL),
(125, 25, 39, NULL, NULL),
(126, 26, 22, NULL, NULL),
(127, 26, 23, NULL, NULL),
(128, 26, 24, NULL, NULL),
(129, 26, 27, NULL, NULL),
(130, 26, 28, NULL, NULL),
(131, 27, 22, NULL, NULL),
(132, 27, 27, NULL, NULL),
(133, 27, 31, NULL, NULL),
(134, 27, 35, NULL, NULL),
(135, 27, 36, NULL, NULL),
(136, 28, 21, NULL, NULL),
(137, 28, 23, NULL, NULL),
(138, 28, 24, NULL, NULL),
(139, 28, 29, NULL, NULL),
(140, 28, 35, NULL, NULL),
(141, 29, 24, NULL, NULL),
(142, 29, 32, NULL, NULL),
(143, 29, 34, NULL, NULL),
(144, 29, 36, NULL, NULL),
(145, 29, 39, NULL, NULL),
(146, 30, 22, NULL, NULL),
(147, 30, 24, NULL, NULL),
(148, 30, 29, NULL, NULL),
(149, 30, 38, NULL, NULL),
(150, 30, 39, NULL, NULL),
(151, 5, 2, NULL, NULL),
(152, 31, 1, NULL, NULL),
(153, 31, 4, NULL, NULL),
(154, 32, 1, NULL, NULL),
(155, 32, 4, NULL, NULL),
(156, 33, 1, NULL, NULL),
(157, 33, 4, NULL, NULL),
(158, 34, 1, NULL, NULL),
(159, 34, 4, NULL, NULL),
(165, 37, 3, NULL, NULL),
(166, 37, 4, NULL, NULL),
(167, 38, 5, NULL, NULL),
(168, 38, 41, NULL, NULL),
(169, 39, 5, NULL, NULL),
(170, 39, 42, NULL, NULL),
(171, 40, 5, NULL, NULL),
(172, 40, 43, NULL, NULL),
(173, 41, 5, NULL, NULL),
(174, 41, 44, NULL, NULL),
(175, 3, 5, NULL, NULL),
(176, 3, 48, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `tags`
--

CREATE TABLE `tags` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tags`
--

INSERT INTO `tags` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'facere', '2022-10-17 15:09:36', '2022-10-17 15:09:36'),
(2, 'molestiae', '2022-10-17 15:09:36', '2022-10-17 15:09:36'),
(3, 'sit', '2022-10-17 15:09:36', '2022-10-17 15:09:36'),
(4, 'veniam', '2022-10-17 15:09:36', '2022-10-17 15:09:36'),
(5, 'updated tag', '2022-10-17 15:09:36', '2022-10-20 15:27:07'),
(6, 'et', '2022-10-17 15:09:36', '2022-10-17 15:09:36'),
(7, 'tempore', '2022-10-17 15:09:36', '2022-10-17 15:09:36'),
(8, 'ea', '2022-10-17 15:09:36', '2022-10-17 15:09:36'),
(9, 'quaerat', '2022-10-17 15:09:36', '2022-10-17 15:09:36'),
(10, 'voluptas', '2022-10-17 15:09:36', '2022-10-17 15:09:36'),
(11, 'neque', '2022-10-17 15:09:36', '2022-10-17 15:09:36'),
(12, 'aut', '2022-10-17 15:09:36', '2022-10-17 15:09:36'),
(13, 'quasi', '2022-10-17 15:09:36', '2022-10-17 15:09:36'),
(14, 'cumque', '2022-10-17 15:09:36', '2022-10-17 15:09:36'),
(15, 'illo', '2022-10-17 15:09:36', '2022-10-17 15:09:36'),
(16, 'consequatur', '2022-10-17 15:09:36', '2022-10-17 15:09:36'),
(17, 'qui', '2022-10-17 15:09:36', '2022-10-17 15:09:36'),
(18, 'voluptas', '2022-10-17 15:09:36', '2022-10-17 15:09:36'),
(19, 'omnis', '2022-10-17 15:09:36', '2022-10-17 15:09:36'),
(20, 'dolore', '2022-10-17 15:09:36', '2022-10-17 15:09:36'),
(21, 'aut', '2022-10-18 12:56:21', '2022-10-18 12:56:21'),
(22, 'error', '2022-10-18 12:56:21', '2022-10-18 12:56:21'),
(23, 'maiores', '2022-10-18 12:56:21', '2022-10-18 12:56:21'),
(24, 'blanditiis', '2022-10-18 12:56:21', '2022-10-18 12:56:21'),
(25, 'velit', '2022-10-18 12:56:21', '2022-10-18 12:56:21'),
(26, 'rerum', '2022-10-18 12:56:21', '2022-10-18 12:56:21'),
(27, 'voluptate', '2022-10-18 12:56:21', '2022-10-18 12:56:21'),
(28, 'enim', '2022-10-18 12:56:21', '2022-10-18 12:56:21'),
(29, 'quaerat', '2022-10-18 12:56:21', '2022-10-18 12:56:21'),
(30, 'officia', '2022-10-18 12:56:21', '2022-10-18 12:56:21'),
(31, 'et', '2022-10-18 12:56:21', '2022-10-18 12:56:21'),
(32, 'laudantium', '2022-10-18 12:56:21', '2022-10-18 12:56:21'),
(33, 'iste', '2022-10-18 12:56:21', '2022-10-18 12:56:21'),
(34, 'quia', '2022-10-18 12:56:21', '2022-10-18 12:56:21'),
(35, 'ut', '2022-10-18 12:56:21', '2022-10-18 12:56:21'),
(36, 'qui', '2022-10-18 12:56:21', '2022-10-18 12:56:21'),
(37, 'nostrum', '2022-10-18 12:56:21', '2022-10-18 12:56:21'),
(38, 'incidunt', '2022-10-18 12:56:21', '2022-10-18 12:56:21'),
(39, 'vitae', '2022-10-18 12:56:21', '2022-10-18 12:56:21'),
(40, 'sequi', '2022-10-18 12:56:21', '2022-10-18 12:56:21'),
(41, 'new tag', '2022-10-20 14:53:01', '2022-10-20 14:53:01'),
(42, 'new tag', '2022-10-20 14:55:32', '2022-10-20 14:55:32'),
(43, 'new tag', '2022-10-20 15:06:28', '2022-10-20 15:06:28'),
(44, 'new tag', '2022-10-20 15:13:18', '2022-10-20 15:13:18'),
(48, 'recent new tag', '2022-10-20 15:27:07', '2022-10-20 15:27:07');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`) VALUES
(1, 'Oleksandr Plakhotnyi', 'plahotniy.alex@gmail.com', NULL, '$2y$10$pQtmzDItOjXioGKcAL6SWOQPWeG4eEkCU27zXf63AejpU7rP0lW4C', NULL, '2022-10-19 09:37:58', '2022-10-19 09:37:58', 'admin');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_category_idx` (`category_id`);

--
-- Индексы таблицы `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_tag_post_idx` (`post_id`),
  ADD KEY `post_tag_tag_idx` (`tag_id`);

--
-- Индексы таблицы `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT для таблицы `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT для таблицы `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `post_category_fk` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Ограничения внешнего ключа таблицы `post_tags`
--
ALTER TABLE `post_tags`
  ADD CONSTRAINT `post_tag_post_fk` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  ADD CONSTRAINT `post_tag_tag_fk` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
