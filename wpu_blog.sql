-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 27, 2021 at 07:34 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wpu_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Web Programming', 'web-programming', '2021-12-23 19:47:06', '2021-12-23 19:47:06'),
(2, 'Web Design', 'web-design', '2021-12-23 19:47:06', '2021-12-23 19:47:06'),
(3, 'Personal', 'personal', '2021-12-23 19:47:06', '2021-12-23 19:47:06');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_12_10_023708_create_posts_table', 1),
(6, '2021_12_10_042134_create_categories_table', 1),
(7, '2021_12_24_051153_add_is_admin_to_users_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `image`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'Aut eos minus natus soluta velit fugit eos sequi vel et.', 'placeat-autem-dignissimos-quibusdam-sunt-dolorum-quia-repellendus', NULL, 'Quia eius aliquam iure ut magni aut dolores. Enim distinctio explicabo quia inventore quos asperiores. Harum nemo cumque dignissimos accusamus. Dolore neque quos ut ipsa exercitationem distinctio.', '<p>Omnis sed voluptates qui non consequatur natus maiores. Cumque quae odit illum esse quia eius. Consequatur sit qui ut doloremque.</p><p>Porro sunt qui sed enim. Quidem vitae iusto ut id. Omnis magni libero molestiae voluptatem architecto.</p><p>Modi consequatur sequi aut sit quod ut rem quo. Neque tempore reprehenderit omnis in esse et. Aspernatur molestiae sapiente eum minus accusantium culpa sunt. Dolore doloribus quam culpa et hic quis.</p><p>Est dolorem voluptas ducimus dolores qui quidem temporibus. Ut omnis at occaecati voluptatem ipsa enim harum. Quam voluptatem occaecati voluptatibus doloremque. Omnis voluptatem adipisci eveniet officia quis.</p><p>Ut corporis voluptate aspernatur ut et. Dolores consequatur nemo aut voluptatem est non. Neque nihil deserunt molestiae nesciunt voluptatem suscipit. Aut aut voluptas possimus.</p><p>Non dolorum occaecati et. Dolore et maxime libero quia molestias ut id aut. Fugit et non ut alias quod et. Deleniti illum consequatur sed nostrum autem perferendis.</p><p>Dolor incidunt cumque neque autem id excepturi. Vel quis nisi iusto alias. Voluptatibus eos temporibus est incidunt dolores numquam. Rerum et quo rerum dolores ut fuga officia.</p><p>Eos voluptas ut at id facilis aut culpa. Voluptatem eligendi odio aliquam sit maiores accusantium vero. Sit incidunt praesentium delectus voluptatem aut autem.</p><p>Beatae corporis harum quia dolor cupiditate. Dolore aspernatur qui quibusdam consequatur possimus nesciunt. Error eveniet et dolore. Similique itaque corrupti ut magni sed nostrum omnis.</p><p>Consequatur rerum rerum aut rerum dolorem voluptas eligendi ratione. Cum et atque laudantium et libero aut ut. Sit ducimus placeat accusamus vel eaque.</p>', NULL, '2021-12-23 19:47:06', '2021-12-23 19:47:06'),
(2, 1, 2, 'Est facere assumenda.', 'ea-dolorem-minima-quae-officia', NULL, 'Quam cum autem nam et. Autem laboriosam at non voluptas sit. Amet impedit quia dolores voluptatem dolor autem. Tempora expedita dolorem et nihil.', '<p>Voluptatem velit quam aut. Odit quis ut unde consectetur explicabo aut qui non. Et iure porro minima numquam ullam odit. Exercitationem dolor aut quo ut cumque. Est corrupti sed aut mollitia laudantium deserunt.</p><p>Aliquid adipisci neque magnam alias consequatur. Dolorum ea placeat officiis. Earum optio perferendis velit ullam.</p><p>Ea nisi eos iste nostrum qui. Vel ipsum et sit doloremque dolore libero. Alias a reiciendis optio consequatur. Sint dolor reprehenderit et eaque et quia eos.</p><p>Qui ducimus ipsa ab. Sint est similique itaque quam vero dignissimos. Cum placeat vero quibusdam tenetur. Necessitatibus perspiciatis hic consectetur.</p><p>Vel dolorum voluptatem doloribus vel. Consequatur explicabo odit sit consequatur sint. Expedita nihil eligendi beatae doloremque. In et porro qui est atque nihil cumque neque. Dolores velit nam placeat facere qui qui aliquam.</p>', NULL, '2021-12-23 19:47:06', '2021-12-23 19:47:06'),
(3, 2, 3, 'In nesciunt illum in quas.', 'id-molestiae-esse-officiis-amet-omnis-accusamus-et-accusamus', NULL, 'Optio ipsam nisi ipsa et sapiente. Aut suscipit odit ea vero quidem aut. Delectus accusamus nisi aut placeat. Aut doloremque possimus sequi magni.', '<p>Ut tenetur nihil sunt corrupti tempore. Quaerat eaque autem ullam officia illum a non. Cum beatae dolorem est quas. Autem dolor illum quos aut.</p><p>Numquam est molestias non consectetur. Et eveniet omnis ullam doloribus. Adipisci dolor sunt et aliquam aspernatur autem. Ea eligendi aut soluta suscipit.</p><p>Est in et et nostrum quia. Exercitationem sunt natus enim maxime aut. Quasi non in occaecati perferendis ex. Beatae ducimus qui est neque eligendi sed modi sed.</p><p>Sequi sit consequatur quam repellendus ab fugit vitae nihil. Asperiores perspiciatis omnis harum eaque. Ut sunt quas tempore necessitatibus.</p><p>Ullam reprehenderit ullam ducimus iure veritatis quisquam. Et error earum qui ex ab sint. Voluptatem non omnis voluptatem blanditiis quam. Incidunt adipisci magni a nobis neque praesentium maiores itaque.</p><p>Perspiciatis veniam quae nostrum sed. Autem non sit aut minima. Tempore ea consequatur facere sit est ratione error.</p><p>Labore iste voluptas exercitationem velit recusandae consectetur at. Aperiam amet perspiciatis distinctio vitae veritatis.</p><p>Recusandae aspernatur sed nostrum eos omnis illo sed quo. Eos qui fuga iure omnis aut beatae tempora. Rerum tempora eligendi laboriosam fugiat commodi qui quia.</p><p>Saepe eius eaque quis facere provident et voluptatum. Dolorem ratione sit sit. Dignissimos ratione aut optio necessitatibus.</p>', NULL, '2021-12-23 19:47:06', '2021-12-23 19:47:06'),
(4, 3, 3, 'Incidunt voluptas rerum veritatis atque placeat molestiae.', 'voluptas-nam-similique-nulla-nesciunt-rem-id', NULL, 'Dolores magni quod enim facere deleniti excepturi ut. Eos dolorum assumenda optio sed sed. Magni qui sit est. Quia error odio in dolor mollitia ipsam id rerum.', '<p>Incidunt asperiores molestiae voluptate autem et non. Nihil est similique aut sed. Quas autem eius nostrum tenetur placeat quia commodi. Ut in aperiam et voluptatem animi quisquam eum.</p><p>Quia qui autem saepe eum voluptatum dignissimos. Non impedit et et omnis accusamus recusandae. Praesentium rerum ea ea non. Maxime dolores aliquid cupiditate adipisci facilis nisi corporis.</p><p>Rerum pariatur eos repudiandae. Repellendus ea quos aut porro consequuntur. Eum aut laboriosam possimus facere inventore accusamus. Et ut a eos.</p><p>Ducimus repudiandae veniam officia. Et nihil ut pariatur et explicabo. Sint id porro minima. Nemo corporis corrupti veritatis et sit.</p><p>Enim corrupti magnam quasi illum hic voluptatem quis. Ab voluptas atque eligendi voluptatem vero hic. Fugit excepturi hic veniam suscipit id. Molestiae in velit animi asperiores veritatis voluptas pariatur.</p><p>Voluptatem consequuntur sint sit doloribus vel. Cum sit dolores libero esse et non. Et assumenda omnis qui autem quo vel.</p><p>Voluptatem totam quo perspiciatis aspernatur voluptatem qui. Laudantium fugit sunt eius dignissimos in. Ut officiis non enim. Quas eligendi sint maiores reprehenderit rerum est. Vel voluptatem sunt dolor deserunt.</p><p>Voluptas iste enim in voluptate maxime. Non voluptatibus exercitationem quae.</p>', NULL, '2021-12-23 19:47:06', '2021-12-23 19:47:06'),
(5, 2, 2, 'Vero autem dolores magnam sequi facere quis quam eum nihil.', 'placeat-repellendus-unde-tenetur-eaque-saepe-dolor', NULL, 'Aut quasi unde dolore blanditiis. Et illo aut enim excepturi dolor. Hic eius ut rem aut tenetur consequuntur suscipit. Sapiente in officia itaque possimus.', '<p>Repellendus voluptates laboriosam et dolor est sunt. Voluptas officia voluptatem quia officiis eum.</p><p>Nisi molestias ea sit ullam non. Alias architecto quidem ut dolore nam modi.</p><p>Voluptas aliquam dolores hic architecto quibusdam ea. Odit voluptatem molestias facilis ut dolores. Et laudantium omnis dolor sequi est in.</p><p>Consequatur delectus qui ratione. Delectus quod animi cupiditate omnis soluta quas. Incidunt sint assumenda iste blanditiis harum consequatur.</p><p>Dolorem nesciunt iste omnis natus beatae. Autem est facilis quia ut maxime. Labore iusto et expedita exercitationem. Dolorem officiis ut consequatur aut maxime vel.</p>', NULL, '2021-12-23 19:47:06', '2021-12-23 19:47:06'),
(6, 3, 1, 'Sed et enim pariatur expedita et.', 'cupiditate-earum-repudiandae-repellendus-quam-accusamus-praesentium-amet', NULL, 'Est sit rerum libero. Quibusdam dolore aut consectetur libero qui. Incidunt qui delectus delectus. Dolore officiis aut excepturi voluptatem similique quo.', '<p>Ut necessitatibus ea hic corporis ab. Praesentium hic et sequi consequatur. Ad ut ea non. Mollitia consequuntur deserunt dolorem consectetur.</p><p>Necessitatibus repudiandae rem dolorum quo et voluptatem rerum. Reiciendis est facere sit similique. Excepturi accusamus officia accusamus sit quo.</p><p>Et sit et rerum enim. Quia iure veritatis in quos ab. Modi quo qui velit facere.</p><p>Est vitae sint aut quia ipsa est accusantium inventore. A sunt vel qui nisi. Autem tempora et ipsa iure blanditiis aliquam.</p><p>Quos omnis libero aliquid provident. Odio delectus expedita debitis repudiandae aut iure velit et. Voluptatem totam est a facere placeat. Omnis ullam aut omnis aliquam.</p><p>Voluptatem autem dolor quos adipisci. Molestiae expedita enim qui neque dolorem ab.</p><p>Velit rerum animi eos pariatur. Omnis quis architecto laudantium possimus. Maiores autem id impedit minus voluptas velit.</p>', NULL, '2021-12-23 19:47:06', '2021-12-23 19:47:06'),
(7, 3, 2, 'Laboriosam delectus neque officiis nostrum maiores voluptas vel est nihil.', 'voluptas-temporibus-voluptatem-vitae-sunt', NULL, 'Minima est quos earum. Repellendus ut eos optio suscipit et. Voluptates ut tempore molestiae distinctio est in at. Sunt voluptas laboriosam nisi reiciendis.', '<p>Quidem doloremque nihil enim dolor rerum voluptatem. Necessitatibus earum ipsam soluta esse occaecati quo reprehenderit.</p><p>Eos quis repellendus officiis in. Quia magni assumenda nemo dolor totam. Nihil illo est atque.</p><p>Quis a molestias rerum doloremque. Quia cum et ab ut hic ipsam doloremque. Et consectetur enim non et nam ut reprehenderit. Cum ratione sint molestias doloremque enim dolores.</p><p>Ut tenetur nesciunt dolor nostrum sunt. Et repudiandae molestias velit eum velit. Id eveniet odio labore nesciunt voluptate. Maxime neque occaecati modi deserunt unde molestiae.</p><p>Asperiores nostrum est id veniam quas eveniet nulla. Facere iusto est quisquam eligendi nulla perspiciatis explicabo voluptas. In voluptas dolorum ducimus. Rerum est quas sit dolore earum alias architecto.</p><p>Quaerat beatae laudantium eum voluptate. Quidem et aut ut eius. Tempore enim consectetur dolor.</p>', NULL, '2021-12-23 19:47:06', '2021-12-23 19:47:06'),
(8, 2, 1, 'Voluptates quia voluptatem aut et et.', 'rerum-officia-quia-aut-numquam-veritatis-ut', NULL, 'Temporibus odit amet mollitia ut non architecto. Itaque natus omnis et nulla quo consequatur natus. Laboriosam et voluptatem blanditiis esse.', '<p>Veritatis accusantium suscipit maxime voluptates saepe. Odio omnis eveniet aut labore est. Quaerat laboriosam dolore repellat excepturi quaerat necessitatibus numquam ut. Eum non velit amet reiciendis omnis id.</p><p>Tempora eum odit ad quis voluptatem sed quos. Cumque aliquam sed quam fugiat accusamus. Qui mollitia vitae cumque in odit voluptas. Nesciunt pariatur molestias cumque dolor omnis enim eos.</p><p>Aliquam velit fugit rerum aut id. Omnis in rerum eos consequuntur consectetur est sunt. Velit non eligendi nulla. Repudiandae optio nihil voluptas vel.</p><p>Ut sed beatae dicta blanditiis facere molestiae. Velit culpa maiores facere optio ut eaque commodi. Ipsam hic quia facere commodi velit rerum.</p><p>Neque aut et praesentium tempore in. Optio sit totam delectus voluptas. Architecto voluptatem odio aliquam quibusdam et illo. Sit et ratione quo et velit. A ut repellat ipsa libero omnis inventore.</p><p>Perspiciatis et voluptas quos dicta quas quibusdam delectus. Dolorem qui incidunt ut aut a. Sed sed neque libero molestias beatae sunt facilis.</p>', NULL, '2021-12-23 19:47:06', '2021-12-23 19:47:06'),
(9, 2, 3, 'Quia voluptas aut et est omnis perferendis voluptate error nostrum necessitatibus aut.', 'omnis-est-odio-ad-nobis', NULL, 'Quia ut quia blanditiis adipisci mollitia voluptatibus doloribus. Dignissimos fugit veniam alias vero magni repellendus. Enim qui accusamus sint dolorem est blanditiis. Sunt ut modi ut dolore.', '<p>Ratione culpa rerum at dolorem et nam. Autem impedit aut atque rerum. Temporibus recusandae veritatis ex eligendi sed. Excepturi eaque eveniet cumque vel architecto.</p><p>Sunt quis voluptatem ut modi dicta. Occaecati et voluptatem illo iure voluptas. Deleniti mollitia laudantium est officiis similique eos aperiam nam.</p><p>Facere maxime culpa quia occaecati. Ipsam commodi voluptas ab et id. Repudiandae quia sequi necessitatibus qui laboriosam et. Quia eos sed voluptatum. Deleniti consequatur aut rerum.</p><p>Nostrum ut sit eos necessitatibus veniam et nisi. Eaque distinctio est voluptatem perferendis ullam dolorum illo. A modi maxime et cumque doloremque. Est voluptate ut aut debitis laudantium sed.</p><p>Aut in temporibus commodi saepe fugiat. Tempore et rerum aut enim a. Est voluptas voluptatem dolorum ex porro.</p><p>Illum voluptatem illo non doloribus in. Velit nisi quod eius ipsum. Magni et in expedita repellat qui mollitia. Voluptatem officia alias vel ex consectetur pariatur qui.</p><p>Est distinctio sed ut. Odit dicta quod ad alias. Et sit ea facilis laborum. Maxime dolorum id officiis delectus et.</p>', NULL, '2021-12-23 19:47:06', '2021-12-23 19:47:06'),
(10, 2, 1, 'Placeat et modi quos ducimus ad enim.', 'aut-quas-ratione-tempore-dolorum-sit', NULL, 'Enim maiores ipsa qui nihil deleniti nisi voluptatem. Esse ullam odit aut ex qui. Magnam aut dolore veritatis sit.', '<p>Quae cupiditate dolore velit aut sint rerum. Optio autem qui molestiae expedita. Nulla recusandae autem id pariatur enim. Adipisci quia distinctio adipisci.</p><p>Ex voluptas in nisi quasi voluptas architecto. Est assumenda eveniet amet. Rerum in suscipit veritatis. Qui rerum voluptas aliquam.</p><p>Non laborum eligendi illo cupiditate facere adipisci rerum. Cum distinctio voluptates sed amet reprehenderit. Minima et dolore veritatis voluptatum et quia sint.</p><p>Incidunt veritatis voluptates eaque eligendi nobis. Mollitia et libero tempore dolores ut dolores perspiciatis tempore. Quia explicabo sit beatae. A voluptas reiciendis ut.</p><p>Neque harum facilis rerum consequuntur. Et omnis dolorem quod dolor eos dolores. Aut praesentium ipsa eius et quam.</p><p>Nihil reprehenderit nihil beatae totam. Quasi cupiditate perspiciatis itaque impedit et. Non eos quasi ut ducimus. Possimus libero laborum quis consequatur illo voluptatem pariatur natus.</p><p>Labore dolore accusamus illum asperiores fugit. Atque reprehenderit eveniet eos vero iure minus aspernatur. Qui optio qui qui et doloribus saepe.</p><p>Iste eos et doloremque distinctio cumque. Itaque et dolorum enim et est officia. Veritatis ut blanditiis aut nostrum.</p>', NULL, '2021-12-23 19:47:06', '2021-12-23 19:47:06'),
(11, 1, 2, 'Sunt quia culpa magnam incidunt.', 'voluptatem-nostrum-et-nemo-recusandae-odit-sed', NULL, 'Non libero et qui et rerum. Omnis illum voluptas quia autem in praesentium.', '<p>In enim fugiat voluptas voluptatem. Et voluptas eaque non temporibus aut voluptatem rerum. Rem odit rerum dolores qui ipsum quis facere.</p><p>Aut dolor molestiae ea aut placeat. Molestias voluptatum cumque tempore a delectus. Provident nostrum quos odit autem est. Voluptatum dolorem maiores harum qui ipsum.</p><p>Dolor quia enim dolor aut iste ducimus error illum. Eos eaque aut fugit soluta earum dolorum est. Fugiat autem officiis numquam fuga voluptas vitae. Quia est voluptates aperiam sunt velit.</p><p>Illo quaerat cum enim ut qui. Et sit asperiores amet provident vitae ut in. Qui ex assumenda quia omnis culpa repellat.</p><p>Quia nostrum assumenda quia enim sit beatae. Voluptatem eveniet tempora facere fuga. Necessitatibus est aliquid architecto illo voluptas. Perspiciatis accusantium non et consequatur ipsam sapiente tempora. Qui sapiente eveniet occaecati atque doloribus.</p><p>Doloremque nulla placeat reiciendis ut sint at vel quisquam. Accusantium eum voluptatibus reiciendis qui. Dicta libero et dolore qui itaque. Incidunt quas temporibus alias qui aliquam. Enim earum magnam in provident ipsa qui.</p>', NULL, '2021-12-23 19:47:06', '2021-12-23 19:47:06'),
(12, 3, 2, 'Esse distinctio doloremque numquam occaecati.', 'in-illo-placeat-veritatis-enim', NULL, 'Rerum sed doloremque aliquam velit maxime. Nobis fugit et quisquam fugiat quisquam in placeat. Aut qui et ratione magnam tempora corrupti. Quasi laboriosam nam consequuntur repellat sequi impedit. Corporis ipsa nesciunt in numquam deleniti quo.', '<p>Vel sequi inventore eos. Dolores enim ipsa ab et omnis. Molestiae sed commodi voluptatibus sunt tempore.</p><p>Dolores temporibus recusandae ab debitis ut animi. Dolorum commodi reprehenderit officiis ut. Neque aliquid tempore eaque.</p><p>Aut id fuga possimus eos dolorem. Distinctio nisi sed eligendi explicabo officia deleniti dolorem. Voluptatem beatae porro labore blanditiis sed placeat autem magni. Accusamus nostrum totam ut dolores numquam quia dignissimos.</p><p>Qui corrupti nihil aut omnis mollitia quo voluptas. Id earum eos aliquid ut in nisi.</p><p>Consequuntur cumque quidem in qui. Aut sit praesentium beatae voluptatem quia et. Voluptatum enim ipsa doloremque voluptate ex ut.</p><p>Alias consectetur quis et eveniet minima. Omnis minus sit necessitatibus qui eveniet est. Sunt possimus laborum soluta sit doloribus.</p>', NULL, '2021-12-23 19:47:06', '2021-12-23 19:47:06'),
(13, 2, 2, 'Consectetur exercitationem ut aut assumenda.', 'qui-repudiandae-placeat-natus-laudantium-nihil', NULL, 'Culpa neque unde voluptatibus animi atque tempora inventore. Non odio sit reiciendis autem amet inventore. Et eligendi ad mollitia sunt facilis.', '<p>Eligendi quia eveniet tenetur deleniti. Minima velit dolorem fuga corrupti. Et rerum sed perspiciatis vel cum id delectus. Libero explicabo ea quibusdam et.</p><p>Repellat esse et sit. Velit explicabo atque earum harum.</p><p>Quis veniam possimus accusamus voluptatem pariatur consequuntur. Harum autem dignissimos aliquid vel omnis occaecati. Hic qui placeat quibusdam dolorum sunt necessitatibus. Unde eum ipsam eos in.</p><p>Quia fugiat sint enim incidunt. Eveniet nam dolores aut magni pariatur eum quam. Dolor voluptates nihil et odit quia animi voluptatem.</p><p>Exercitationem et mollitia dolores iure. Similique veniam omnis iste officiis quo autem. Sit et est inventore officiis molestiae reprehenderit quod.</p><p>Itaque architecto praesentium dignissimos qui ex. Necessitatibus ullam ullam quisquam necessitatibus esse aut ducimus. Architecto asperiores consequatur et eum officia.</p><p>Sit sint quia nobis unde voluptate ad. Odit quia enim et sed fuga consequatur officia non. Rem aut in ipsam aut. Maxime animi magnam eos quia aspernatur esse.</p><p>Accusamus ut omnis tempora rerum dolores voluptas. Ut enim ut magni. Et porro temporibus et voluptates.</p>', NULL, '2021-12-23 19:47:06', '2021-12-23 19:47:06'),
(14, 1, 1, 'Dolores rem sint.', 'non-error-voluptatem-non-et-laboriosam', NULL, 'Est fugit debitis et alias. Est ratione beatae voluptatem in iste velit. Accusamus ut sint vitae et voluptatem quas. Mollitia explicabo minima dicta et. Sed et tempora fuga sed optio.', '<p>Quia omnis voluptatibus sit qui consectetur fuga. Nihil tenetur sed tempore odit fugiat sed similique.</p><p>Vel laborum adipisci ipsam voluptas qui est. Cum enim molestiae omnis maxime nam. Officiis possimus nihil voluptatem nihil quas repellat numquam.</p><p>Est ut ut eum eveniet. Optio deleniti commodi maiores ut consequatur aliquam ducimus. Eveniet architecto aliquid vel dolores non.</p><p>Corporis occaecati non similique et dignissimos voluptatem est repudiandae. Culpa voluptatum ut eligendi autem. Ab possimus sunt et sit. Soluta in nisi veniam accusamus. Ut blanditiis eum minima dolorem et est beatae.</p><p>Qui deserunt quidem itaque in molestiae vel nihil consequatur. Qui impedit repellat voluptates sunt. Dolor sit quas corporis perspiciatis temporibus est.</p><p>Illo deleniti nulla non aperiam aliquid. Tempora accusantium architecto voluptate non doloribus quis dolores eaque. Qui qui eius magnam et voluptate qui aut. Et itaque rerum molestiae voluptatem facere accusamus est.</p><p>Et officia earum nisi ducimus vitae natus. Assumenda voluptate voluptatem enim.</p><p>Similique aut impedit ad. Ratione aut dignissimos ab ea maiores autem dolorem. Numquam recusandae aut voluptatum eaque omnis laboriosam sit.</p><p>Dolor molestiae recusandae consequatur explicabo eligendi mollitia est. Ad molestiae eos atque. Sint sit dicta dolor et amet qui. Molestiae odit omnis neque sit sit sed qui.</p><p>Nemo neque quo animi eligendi velit. Sed doloribus officiis mollitia. Error error in eos non vel aut tenetur placeat.</p>', NULL, '2021-12-23 19:47:07', '2021-12-23 19:47:07'),
(15, 1, 1, 'Qui in aut voluptas minus animi voluptas deleniti est.', 'qui-iste-eum-sit', NULL, 'Est aliquam eos quis sunt perferendis autem quisquam. Aliquam voluptatum voluptate velit eveniet. Quia ut excepturi quaerat enim.', '<p>Est pariatur qui sed quo et. Eius minima dolor unde voluptatum architecto soluta excepturi. Quaerat eius magni quia voluptatem alias quibusdam. Molestias repellat deleniti nulla delectus. Corrupti magnam odit dolorem minus possimus laboriosam.</p><p>Labore in nisi aut iusto. Qui corporis distinctio illo fugit enim molestias ex. Quaerat quam ab et et dolores numquam reiciendis. Repellendus at ipsam impedit.</p><p>Et nam iusto dignissimos repudiandae ipsam et. Optio et est corporis. Culpa ut numquam voluptatem eos quo distinctio.</p><p>Velit laboriosam sit quia est est vel possimus voluptatem. Atque illo non a aliquam dolorem enim eveniet. Tempora rem dolor est quo corrupti.</p><p>Quae molestiae incidunt quam nihil sint. Dolores dolores praesentium et esse eum et ut. Perspiciatis est voluptas ut sequi eos.</p><p>Dolores neque expedita perspiciatis perferendis reiciendis necessitatibus rerum accusamus. Nihil doloribus illo et hic libero praesentium est. Nihil officiis illo explicabo ex omnis molestiae veniam. Ut rem illum odio et.</p><p>Totam labore exercitationem vitae consectetur aliquam soluta. Impedit eaque quaerat sed pariatur corporis aut. Voluptatem sit dicta consequatur dolor autem facere. Atque ut dolor sunt aliquam repellat sit quis.</p>', NULL, '2021-12-23 19:47:07', '2021-12-23 19:47:07'),
(16, 3, 1, 'Atque animi quibusdam sit.', 'eos-tempore-eum-consectetur-est', NULL, 'Ut sed explicabo ipsum temporibus laborum ipsum quos. Quo saepe odio qui. Impedit sed provident vero ut iure fugit veniam. Quos natus atque cupiditate eos.', '<p>Unde expedita eos officia excepturi. Laborum itaque deleniti corrupti omnis sit. Eaque odit ut adipisci. Iure inventore quibusdam eum soluta repellendus.</p><p>Voluptatum quo consequatur rerum molestias fugiat. Molestiae dolore alias dignissimos consequatur nobis officia. Inventore velit qui dolorem id laborum. Mollitia voluptates doloremque quo rem et.</p><p>Veniam pariatur repudiandae eligendi explicabo deleniti quidem. Enim molestiae vel perspiciatis eius incidunt magni ut. Eos vitae aut maxime ut velit et. Minima at id placeat enim pariatur molestias.</p><p>Sequi distinctio est et mollitia facilis tenetur autem officia. Cumque quos sint laudantium voluptatum culpa. Molestias consequatur corrupti nesciunt. Et alias ducimus accusantium cupiditate.</p><p>Facilis aspernatur exercitationem dolor reiciendis accusantium eos. Similique corrupti sit consequatur aut beatae saepe quidem voluptates. Assumenda tempora delectus natus in sint. Id molestias ut numquam esse. Eveniet sapiente sed vero est reiciendis quis quia.</p>', NULL, '2021-12-23 19:47:07', '2021-12-23 19:47:07'),
(17, 2, 1, 'Est nihil ea mollitia eos eum quaerat.', 'placeat-nemo-quos-ex-voluptatibus-assumenda-laudantium-et-totam', NULL, 'Quia quos cupiditate possimus consectetur. Quaerat officiis nulla blanditiis aut nesciunt eum. Dignissimos maiores ut non similique modi nemo sequi.', '<p>Totam ea in rem numquam nesciunt est corrupti cupiditate. Error suscipit et consequatur suscipit. Aut illo est quas qui fugiat.</p><p>Autem tempore quia aspernatur officia consectetur molestiae culpa. Minus ex dolores perferendis eaque necessitatibus. Molestiae voluptate enim reiciendis culpa molestiae possimus. Iure in dolores itaque expedita recusandae molestias.</p><p>Sit id labore architecto cum soluta. Quas eos dolor quibusdam alias harum voluptas sunt. Ullam iusto quia libero quos.</p><p>Sit dicta beatae mollitia earum et suscipit earum. Accusamus consequatur minima officiis qui. Repellat cupiditate rerum quae ducimus id dolor. Ut aut labore adipisci non nesciunt dolores.</p><p>Magnam aliquid facere voluptatem quisquam eaque. Officia recusandae reiciendis reprehenderit aut. Amet rerum rem velit ut. Ut dolore suscipit molestiae qui accusantium qui et.</p><p>Aspernatur molestiae dicta molestiae. Sunt officiis autem illum praesentium magni. Veniam dolorum sapiente impedit culpa. Eum quisquam distinctio minus.</p><p>Aliquid numquam molestiae assumenda harum. Ex cupiditate culpa soluta impedit perspiciatis quae sint.</p>', NULL, '2021-12-23 19:47:07', '2021-12-23 19:47:07'),
(18, 1, 2, 'In maiores adipisci non asperiores voluptas perspiciatis error.', 'eaque-et-optio-vel-nulla-minima-eum', NULL, 'Suscipit perferendis quas repellat earum sed sit consequatur. Rerum occaecati pariatur ut mollitia et assumenda. Necessitatibus rerum quam sit incidunt ea vero consequatur fugit.', '<p>Voluptatum officia quis sit quis. Amet necessitatibus asperiores error iusto qui. Eveniet voluptas esse vero. Qui ab numquam quia tenetur totam.</p><p>Odio aspernatur sed deserunt quasi laboriosam quo magni. Officia veniam et velit. Maxime aut et perspiciatis velit et nostrum. Quas nisi placeat sunt.</p><p>Quae ut architecto excepturi accusamus cumque at. Suscipit aperiam nobis enim dolor sed inventore recusandae. Minima ut a tenetur ut. Id consequatur ut quia ad.</p><p>Corporis aperiam odit voluptatem. Sequi harum explicabo laudantium provident et et architecto. Nobis sit ut quia dolores nihil.</p><p>Est soluta incidunt quia nulla itaque sed repellendus. Consequuntur qui ut ea officiis laborum quaerat. Dolores sed reiciendis labore culpa necessitatibus magni sunt. Et sed facilis dolorem voluptatem voluptatum. Consequuntur sed et et omnis maiores in tenetur.</p>', NULL, '2021-12-23 19:47:07', '2021-12-23 19:47:07'),
(19, 1, 1, 'Laboriosam minima autem velit ipsum ad sit est modi.', 'eveniet-modi-nesciunt-rerum-omnis-itaque-quia', NULL, 'Exercitationem ut aut accusantium nemo dolor. Explicabo nobis sed dolorem. Dolor dignissimos nulla sed. Voluptatum voluptate omnis quas dolorem est distinctio.', '<p>Enim nesciunt labore quisquam occaecati commodi vero alias quis. Et fugiat quo maxime quasi esse a. Eum laboriosam vero fugit repellat est ut voluptatem.</p><p>Perspiciatis sit quos unde voluptas eveniet facere dolores. Et ut temporibus assumenda vero velit minima sit ut. Fugit voluptatum perspiciatis nihil deserunt.</p><p>Repellendus et cupiditate dolores molestias minus. Sit laudantium ducimus aspernatur. Rerum ut vero alias quam. Id deleniti consectetur repudiandae vero asperiores dicta repellendus nam.</p><p>Et quasi necessitatibus necessitatibus perspiciatis facilis voluptas qui. Sit cumque tempore ducimus ipsam nisi vitae iure. Excepturi consequatur quo velit ullam quia aut.</p><p>Architecto illum dicta voluptatem et dicta amet totam ducimus. Eum ducimus quia ut repudiandae vero ut error. Reprehenderit quia qui numquam quo accusamus inventore enim. Itaque eum harum suscipit.</p><p>Dignissimos qui est omnis quas illum. Amet quis explicabo consequuntur cupiditate earum consequuntur reprehenderit sit. Dolorem inventore soluta sint corporis nam veniam enim. Autem harum incidunt quis facere.</p><p>Beatae assumenda qui suscipit voluptates ducimus saepe vero. Est minus sed ut id illo. Dolores quidem velit ipsam voluptas recusandae debitis. Quaerat et qui officia fugiat. Vel eius quaerat voluptate reprehenderit.</p><p>Officiis ut deleniti repellendus qui voluptatem eligendi et. Ipsa qui odio tenetur vel repellat id nihil. Modi vel quia architecto eos totam architecto.</p><p>Dignissimos nulla aut et temporibus expedita est. Sapiente et id qui quaerat eos. Velit officiis aliquid error aut. Quaerat aliquam optio vel reiciendis.</p>', NULL, '2021-12-23 19:47:07', '2021-12-23 19:47:07'),
(20, 2, 1, 'Ipsa ea nobis voluptatum in.', 'sed-voluptatem-nesciunt-itaque-excepturi-voluptate-minus', NULL, 'Eligendi possimus minus qui voluptatem atque quasi. Deserunt rerum deserunt provident quae aperiam esse.', '<p>Natus eveniet magni magnam ipsum et delectus. Praesentium deleniti doloremque ut enim expedita. Ad qui ipsum qui rem. Error similique excepturi inventore laborum voluptatem est sint. Nam quo qui quo in dolorem qui eveniet.</p><p>Quaerat ut ut quisquam voluptatem assumenda rerum voluptatibus. Voluptatem autem in non perferendis itaque. Natus aut eaque tenetur enim neque officiis temporibus.</p><p>Ut ab reiciendis sint voluptatum deserunt itaque. Vel est molestiae accusamus ea. Delectus explicabo et quo repellat doloremque quia voluptas eaque.</p><p>Voluptates laboriosam odit rerum aut. Ut est tempore aut eum aspernatur ea vel. Sit temporibus architecto sint est ut id. Corporis fuga ad qui nisi consectetur et.</p><p>Provident vel possimus aut voluptatem cum molestiae similique amet. Omnis facilis sit et totam quaerat. Repellat earum quos nesciunt aut provident.</p><p>Non qui velit dolorem ab ut. Doloremque doloribus eum molestias doloribus mollitia totam vel nihil.</p><p>Aspernatur et deserunt nesciunt quasi omnis qui. Non aliquam harum nam impedit. Deserunt ab unde voluptatibus eaque. Distinctio omnis et tempore illum ipsam dolorum.</p><p>Magni qui eum commodi eaque perspiciatis vel labore. Natus dignissimos labore et quasi. Vel et aliquam at dicta eos sunt. Temporibus officiis et eligendi eius veniam vel qui. Facere molestias esse eligendi veritatis.</p><p>Est sunt quia voluptas minus in blanditiis quo. Nobis unde maiores qui ut consequatur blanditiis. Laboriosam iste expedita dignissimos voluptas ut iusto.</p><p>Voluptatem blanditiis eveniet voluptates dolor nesciunt optio et. Ullam at accusantium architecto voluptates officia. Ad voluptas minima mollitia sunt. Inventore vel qui qui consequuntur.</p>', NULL, '2021-12-23 19:47:07', '2021-12-23 19:47:07'),
(25, 1, 4, 'Coba Post', 'coba-post', NULL, 'Tes', '<div>Tes</div>', NULL, '2021-12-23 22:34:42', '2021-12-23 22:34:42');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'Tedi Lamar Latupono', 'eanggriawan', 'jindra22@example.org', '2021-12-23 19:47:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'QUviK1Av21fHX8FpzEI13Skb7IBAcIt6kI3z5gpWqKTw7oj4qFzL1ZqDw7P9', '2021-12-23 19:47:06', '2021-12-23 19:47:06', 1),
(2, 'Talia Wijayanti S.E.', 'gadang95', 'maryadi.jail@example.com', '2021-12-23 19:47:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZvWrrMhf3C', '2021-12-23 19:47:06', '2021-12-23 19:47:06', 0),
(3, 'Viktor Saptono', 'haryanti.gilang', 'sadina.jailani@example.org', '2021-12-23 19:47:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Jxay66yKCr', '2021-12-23 19:47:06', '2021-12-23 19:47:06', 0),
(4, 'Alvin Kurniawan', 'alvinkurniawan', 'alvin@gmail.com', NULL, '$2y$10$qiQCe/0VjlQfOM0U5JjuO.EZiNVAxnFMpjueSJRaRZOkO0TIiLaH6', NULL, '2021-12-23 19:47:06', '2021-12-23 19:47:06', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
