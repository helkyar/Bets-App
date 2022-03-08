-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 08, 2022 at 07:01 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bets`
--

-- --------------------------------------------------------

--
-- Table structure for table `bets`
--

CREATE TABLE `bets` (
  `bet_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `game_id` int(11) NOT NULL,
  `bet_pay` float NOT NULL,
  `bet_type` int(11) NOT NULL,
  `bet_amount` int(11) NOT NULL,
  `resolved` int(1) NOT NULL DEFAULT 0,
  `show` int(1) NOT NULL DEFAULT 1,
  `result_local` int(11) DEFAULT NULL,
  `result_visit` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bets`
--

INSERT INTO `bets` (`bet_id`, `user_id`, `game_id`, `bet_pay`, `bet_type`, `bet_amount`, `resolved`, `show`, `result_local`, `result_visit`) VALUES
(5, 1, 3118, 2, 2, 150, 0, 1, NULL, NULL),
(6, 3, 3057, 3.25, 3, 150, 0, 1, NULL, NULL),
(7, 3, 3121, 3.25, 3, 50, 0, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `game_id` int(11) NOT NULL,
  `local` varchar(20) DEFAULT NULL,
  `visitor` varchar(20) DEFAULT NULL,
  `date` varchar(10) DEFAULT NULL,
  `visitor_result` int(11) NOT NULL,
  `local_result` int(11) NOT NULL,
  `scraper_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`game_id`, `local`, `visitor`, `date`, `visitor_result`, `local_result`, `scraper_id`) VALUES
(2848, 'Valencia', 'Getafe', NULL, 1, 1, 0),
(2849, 'Cádiz', 'Levante', NULL, 1, 1, 1),
(2850, 'Mallorca', 'Betis', NULL, 1, 1, 2),
(2851, 'Alavés', 'Real Madrid', NULL, 1, 1, 3),
(2852, 'Osasuna', 'Espanyol', NULL, 0, 0, 4),
(2853, 'Celta', 'Atlético', NULL, 1, 1, 5),
(2854, 'Barcelona', 'R. Sociedad', NULL, 4, 4, 6),
(2855, 'Sevilla', 'Rayo', NULL, 3, 3, 7),
(2856, 'Villarreal', 'Granada', NULL, 0, 0, 8),
(2857, 'Elche', 'Athletic', NULL, 0, 0, 9),
(2858, 'Betis', 'Cádiz', NULL, 1, 1, 10),
(2859, 'Alavés', 'Mallorca', NULL, 0, 0, 11),
(2860, 'Espanyol', 'Villarreal', NULL, 0, 0, 12),
(2861, 'Granada', 'Valencia', NULL, 1, 1, 13),
(2862, 'Athletic', 'Barcelona', NULL, 1, 1, 14),
(2863, 'R. Sociedad', 'Rayo', NULL, 1, 1, 15),
(2864, 'Atlético', 'Elche', NULL, 1, 1, 16),
(2865, 'Levante', 'Real Madrid', NULL, 3, 3, 17),
(2866, 'Getafe', 'Sevilla', NULL, 0, 0, 18),
(2867, 'Osasuna', 'Celta', NULL, 0, 0, 19),
(2868, 'Mallorca', 'Espanyol', NULL, 1, 1, 20),
(2869, 'Valencia', 'Alavés', NULL, 3, 3, 21),
(2870, 'Celta', 'Athletic', NULL, 0, 0, 22),
(2871, 'Elche', 'Sevilla', NULL, 1, 1, 23),
(2872, 'R. Sociedad', 'Levante', NULL, 1, 1, 24),
(2873, 'Betis', 'Real Madrid', NULL, 0, 0, 25),
(2874, 'Barcelona', 'Getafe', NULL, 2, 2, 26),
(2875, 'Cádiz', 'Osasuna', NULL, 2, 2, 27),
(2876, 'Rayo', 'Granada', NULL, 4, 4, 28),
(2877, 'Atlético', 'Villarreal', NULL, 2, 2, 29),
(2878, 'Levante', 'Rayo', NULL, 1, 1, 30),
(2879, 'Athletic', 'Mallorca', NULL, 2, 2, 31),
(2880, 'Espanyol', 'Atlético', NULL, 1, 1, 32),
(2881, 'Osasuna', 'Valencia', NULL, 1, 1, 33),
(2882, 'Cádiz', 'R. Sociedad', NULL, 0, 0, 34),
(2883, 'Real Madrid', 'Celta', NULL, 5, 5, 35),
(2884, 'Getafe', 'Elche', NULL, 0, 0, 36),
(2885, 'Granada', 'Betis', NULL, 1, 1, 37),
(2886, 'Villarreal', 'Alavés', NULL, 5, 5, 38),
(2887, 'Sevilla', 'Barcelona', NULL, 1, 1, 39),
(2888, 'Celta', 'Cádiz', NULL, 1, 1, 40),
(2889, 'Rayo', 'Getafe', NULL, 3, 3, 41),
(2890, 'Atlético', 'Athletic', NULL, 0, 0, 42),
(2891, 'Elche', 'Levante', NULL, 1, 1, 43),
(2892, 'Alavés', 'Osasuna', NULL, 0, 0, 44),
(2893, 'Mallorca', 'Villarreal', NULL, 0, 0, 45),
(2894, 'R. Sociedad', 'Sevilla', NULL, 0, 0, 46),
(2895, 'Betis', 'Espanyol', NULL, 2, 2, 47),
(2896, 'Valencia', 'Real Madrid', NULL, 1, 1, 48),
(2897, 'Barcelona', 'Granada', NULL, 1, 1, 49),
(2898, 'Getafe', 'Atlético', NULL, 1, 1, 50),
(2899, 'Athletic', 'Rayo', NULL, 1, 1, 51),
(2900, 'Levante', 'Celta', NULL, 0, 0, 52),
(2901, 'Espanyol', 'Alavés', NULL, 1, 1, 53),
(2902, 'Sevilla', 'Valencia', NULL, 3, 3, 54),
(2903, 'Real Madrid', 'Mallorca', NULL, 6, 6, 55),
(2904, 'Villarreal', 'Elche', NULL, 4, 4, 56),
(2905, 'Granada', 'R. Sociedad', NULL, 2, 2, 57),
(2906, 'Osasuna', 'Betis', NULL, 1, 1, 58),
(2907, 'Cádiz', 'Barcelona', NULL, 0, 0, 59),
(2908, 'Alavés', 'Atlético', NULL, 1, 1, 60),
(2909, 'Valencia', 'Athletic', NULL, 1, 1, 61),
(2910, 'Sevilla', 'Espanyol', NULL, 2, 2, 62),
(2911, 'Real Madrid', 'Villarreal', NULL, 0, 0, 63),
(2912, 'Mallorca', 'Osasuna', NULL, 2, 2, 64),
(2913, 'Barcelona', 'Levante', NULL, 3, 3, 65),
(2914, 'Rayo', 'Cádiz', NULL, 3, 3, 66),
(2915, 'R. Sociedad', 'Elche', NULL, 1, 1, 67),
(2916, 'Betis', 'Getafe', NULL, 2, 2, 68),
(2917, 'Celta', 'Granada', NULL, 1, 1, 69),
(2918, 'Athletic', 'Alavés', NULL, 1, 1, 70),
(2919, 'Osasuna', 'Rayo', NULL, 1, 1, 71),
(2920, 'Mallorca', 'Levante', NULL, 1, 1, 72),
(2921, 'Cádiz', 'Valencia', NULL, 0, 0, 73),
(2922, 'Atlético', 'Barcelona', NULL, 2, 2, 74),
(2923, 'Elche', 'Celta', NULL, 1, 1, 75),
(2924, 'Espanyol', 'Real Madrid', NULL, 2, 2, 76),
(2925, 'Getafe', 'R. Sociedad', NULL, 1, 1, 77),
(2926, 'Villarreal', 'Betis', NULL, 2, 2, 78),
(2927, 'Granada', 'Sevilla', NULL, 1, 1, 79),
(2928, 'Levante', 'Getafe', NULL, 0, 0, 80),
(2929, 'R. Sociedad', 'Mallorca', NULL, 1, 1, 81),
(2930, 'Rayo', 'Elche', NULL, 2, 2, 82),
(2931, 'Celta', 'Sevilla', NULL, 0, 0, 83),
(2932, 'Villarreal', 'Osasuna', NULL, 1, 1, 84),
(2933, 'Barcelona', 'Valencia', NULL, 3, 3, 85),
(2934, 'Alavés', 'Betis', NULL, 0, 0, 86),
(2935, 'Espanyol', 'Cádiz', NULL, 2, 2, 87),
(2936, 'Real Madrid', 'Athletic', NULL, 1, 1, 88),
(2937, 'Granada', 'Atlético', NULL, 2, 2, 89),
(2938, 'Osasuna', 'Granada', NULL, 1, 1, 90),
(2939, 'Valencia', 'Mallorca', NULL, 2, 2, 91),
(2940, 'Cádiz', 'Alavés', NULL, 0, 0, 92),
(2941, 'Elche', 'Espanyol', NULL, 2, 2, 93),
(2942, 'Athletic', 'Villarreal', NULL, 2, 2, 94),
(2943, 'Sevilla', 'Levante', NULL, 5, 5, 95),
(2944, 'Barcelona', 'Real Madrid', NULL, 1, 1, 96),
(2945, 'Betis', 'Rayo', NULL, 3, 3, 97),
(2946, 'Atlético', 'R. Sociedad', NULL, 2, 2, 98),
(2947, 'Getafe', 'Celta', NULL, 0, 0, 99),
(2948, 'Alavés', 'Elche', NULL, 1, 1, 100),
(2949, 'Espanyol', 'Athletic', NULL, 1, 1, 101),
(2950, 'Villarreal', 'Cádiz', NULL, 3, 3, 102),
(2951, 'Mallorca', 'Sevilla', NULL, 1, 1, 103),
(2952, 'Rayo', 'Barcelona', NULL, 1, 1, 104),
(2953, 'Betis', 'Valencia', NULL, 4, 4, 105),
(2954, 'Real Madrid', 'Osasuna', NULL, 0, 0, 106),
(2955, 'Celta', 'R. Sociedad', NULL, 0, 0, 107),
(2956, 'Granada', 'Getafe', NULL, 1, 1, 108),
(2957, 'Levante', 'Atlético', NULL, 2, 2, 109),
(2958, 'Elche', 'Real Madrid', NULL, 1, 1, 110),
(2959, 'Sevilla', 'Osasuna', NULL, 2, 2, 111),
(2960, 'Valencia', 'Villarreal', NULL, 2, 2, 112),
(2961, 'Barcelona', 'Alavés', NULL, 1, 1, 113),
(2962, 'Cádiz', 'Mallorca', NULL, 1, 1, 114),
(2963, 'Atlético', 'Betis', NULL, 3, 3, 115),
(2964, 'Getafe', 'Espanyol', NULL, 2, 2, 116),
(2965, 'R. Sociedad', 'Athletic', NULL, 1, 1, 117),
(2966, 'Rayo', 'Celta', NULL, 0, 0, 118),
(2967, 'Levante', 'Granada', NULL, 0, 0, 119),
(2968, 'Athletic', 'Cádiz', NULL, 0, 0, 120),
(2969, 'Espanyol', 'Granada', NULL, 2, 2, 121),
(2970, 'Celta', 'Barcelona', NULL, 3, 3, 122),
(2971, 'Alavés', 'Levante', NULL, 2, 2, 123),
(2972, 'Real Madrid', 'Rayo', NULL, 2, 2, 124),
(2973, 'Villarreal', 'Getafe', NULL, 1, 1, 125),
(2974, 'Valencia', 'Atlético', NULL, 3, 3, 126),
(2975, 'Mallorca', 'Elche', NULL, 2, 2, 127),
(2976, 'Osasuna', 'R. Sociedad', NULL, 0, 0, 128),
(2977, 'Betis', 'Sevilla', NULL, 0, 0, 129),
(2978, 'Levante', 'Athletic', NULL, 0, 0, 130),
(2979, 'Celta', 'Villarreal', NULL, 1, 1, 131),
(2980, 'Sevilla', 'Alavés', NULL, 2, 2, 132),
(2981, 'Atlético', 'Osasuna', NULL, 1, 1, 133),
(2982, 'Barcelona', 'Espanyol', NULL, 1, 1, 134),
(2983, 'Getafe', 'Cádiz', NULL, 4, 4, 135),
(2984, 'Granada', 'Real Madrid', NULL, 1, 1, 136),
(2985, 'Elche', 'Betis', NULL, 0, 0, 137),
(2986, 'R. Sociedad', 'Valencia', NULL, 0, 0, 138),
(2987, 'Rayo', 'Mallorca', NULL, 3, 3, 139),
(2988, 'Athletic', 'Granada', NULL, 2, 2, 140),
(2989, 'Alavés', 'Celta', NULL, 1, 1, 141),
(2990, 'Valencia', 'Rayo', NULL, 1, 1, 142),
(2991, 'Mallorca', 'Getafe', NULL, 0, 0, 143),
(2992, 'Villarreal', 'Barcelona', NULL, 1, 1, 144),
(2993, 'Betis', 'Levante', NULL, 3, 3, 145),
(2994, 'Espanyol', 'R. Sociedad', NULL, 1, 1, 146),
(2995, 'Cádiz', 'Atlético', NULL, 1, 1, 147),
(2996, 'Real Madrid', 'Sevilla', NULL, 2, 2, 148),
(2997, 'Osasuna', 'Elche', NULL, 1, 1, 149),
(2998, 'Granada', 'Alavés', NULL, 2, 2, 150),
(2999, 'Sevilla', 'Villarreal', NULL, 1, 1, 151),
(3000, 'Barcelona', 'Betis', NULL, 0, 0, 152),
(3001, 'Atlético', 'Mallorca', NULL, 1, 1, 153),
(3002, 'R. Sociedad', 'Real Madrid', NULL, 0, 0, 154),
(3003, 'Rayo', 'Espanyol', NULL, 1, 1, 155),
(3004, 'Elche', 'Cádiz', NULL, 3, 3, 156),
(3005, 'Levante', 'Osasuna', NULL, 0, 0, 157),
(3006, 'Celta', 'Valencia', NULL, 1, 1, 158),
(3007, 'Getafe', 'Athletic', NULL, 0, 0, 159),
(3008, 'Mallorca', 'Celta', NULL, 0, 0, 160),
(3009, 'Espanyol', 'Levante', NULL, 4, 4, 161),
(3010, 'Alavés', 'Getafe', NULL, 1, 1, 162),
(3011, 'Valencia', 'Elche', NULL, 2, 2, 163),
(3012, 'Athletic', 'Sevilla', NULL, 0, 0, 164),
(3013, 'Villarreal', 'Rayo', NULL, 2, 2, 165),
(3014, 'Osasuna', 'Barcelona', NULL, 2, 2, 166),
(3015, 'Betis', 'R. Sociedad', NULL, 4, 4, 167),
(3016, 'Real Madrid', 'Atlético', NULL, 2, 2, 168),
(3017, 'Cádiz', 'Granada', NULL, 1, 1, 169),
(3018, 'Celta', 'Espanyol', NULL, 3, 3, 170),
(3019, 'Rayo', 'Alavés', NULL, 2, 2, 171),
(3020, 'R. Sociedad', 'Villarreal', NULL, 1, 1, 172),
(3021, 'Barcelona', 'Elche', NULL, 3, 3, 173),
(3022, 'Sevilla', 'Atlético', NULL, 2, 2, 174),
(3023, 'Granada', 'Mallorca', NULL, 4, 4, 175),
(3024, 'Athletic', 'Betis', NULL, 3, 3, 176),
(3025, 'Getafe', 'Osasuna', NULL, 1, 1, 177),
(3026, 'Real Madrid', 'Cádiz', NULL, 0, 0, 178),
(3027, 'Levante', 'Valencia', NULL, 3, 3, 179),
(3028, 'Valencia', 'Espanyol', NULL, 1, 1, 180),
(3029, 'Getafe', 'Real Madrid', NULL, 1, 1, 181),
(3030, 'Atlético', 'Rayo', NULL, 2, 2, 182),
(3031, 'Elche', 'Granada', NULL, 0, 0, 183),
(3032, 'Alavés', 'R. Sociedad', NULL, 1, 1, 184),
(3033, 'Betis', 'Celta', NULL, 0, 0, 185),
(3034, 'Mallorca', 'Barcelona', NULL, 0, 0, 186),
(3035, 'Villarreal', 'Levante', NULL, 5, 5, 187),
(3036, 'Osasuna', 'Athletic', NULL, 1, 1, 188),
(3037, 'Cádiz', 'Sevilla', NULL, 0, 0, 189),
(3038, 'Levante', 'Mallorca', NULL, 2, 2, 190),
(3039, 'R. Sociedad', 'Celta', NULL, 1, 1, 191),
(3040, 'Granada', 'Barcelona', NULL, 1, 1, 192),
(3041, 'Real Madrid', 'Valencia', NULL, 4, 4, 193),
(3042, 'Rayo', 'Betis', NULL, 1, 1, 194),
(3043, 'Sevilla', 'Getafe', NULL, 1, 1, 195),
(3044, 'Alavés', 'Athletic', NULL, 0, 0, 196),
(3045, 'Osasuna', 'Cádiz', NULL, 2, 2, 197),
(3046, 'Villarreal', 'Atlético', NULL, 2, 2, 198),
(3047, 'Espanyol', 'Elche', NULL, 1, 1, 199),
(3048, 'Athletic', 'Real Madrid', NULL, 1, 1, 200),
(3049, 'Elche', 'Villarreal', NULL, 1, 1, 201),
(3050, 'Betis', 'Alavés', NULL, 4, 4, 202),
(3051, 'Cádiz', 'Espanyol', NULL, 2, 2, 203),
(3052, 'Celta', 'Osasuna', NULL, 2, 2, 204),
(3053, 'Valencia', 'Sevilla', NULL, 1, 1, 205),
(3054, 'Getafe', 'Granada', NULL, 4, 4, 206),
(3055, 'Atlético', 'Levante', NULL, 0, 0, 207),
(3056, 'Mallorca', 'R. Sociedad', NULL, 0, 0, 208),
(3057, 'Barcelona', 'Rayo', '24/04', -1, -1, 209),
(3058, 'Espanyol', 'Betis', NULL, 1, 1, 210),
(3059, 'Levante', 'Cádiz', NULL, 0, 0, 211),
(3060, 'Villarreal', 'Mallorca', NULL, 3, 3, 212),
(3061, 'Sevilla', 'Celta', NULL, 2, 2, 213),
(3062, 'Atlético', 'Valencia', NULL, 3, 3, 214),
(3063, 'Granada', 'Osasuna', NULL, 0, 0, 215),
(3064, 'Real Madrid', 'Elche', NULL, 2, 2, 216),
(3065, 'Rayo', 'Athletic', NULL, 0, 0, 217),
(3066, 'R. Sociedad', 'Getafe', NULL, 0, 0, 218),
(3067, 'Alavés', 'Barcelona', NULL, 0, 0, 219),
(3068, 'Getafe', 'Levante', NULL, 3, 3, 220),
(3069, 'Elche', 'Alavés', NULL, 3, 3, 221),
(3070, 'Mallorca', 'Cádiz', NULL, 2, 2, 222),
(3071, 'Celta', 'Rayo', NULL, 2, 2, 223),
(3072, 'Osasuna', 'Sevilla', NULL, 0, 0, 224),
(3073, 'Valencia', 'R. Sociedad', NULL, 0, 0, 225),
(3074, 'Barcelona', 'Atlético', NULL, 4, 4, 226),
(3075, 'Betis', 'Villarreal', NULL, 0, 0, 227),
(3076, 'Real Madrid', 'Granada', NULL, 1, 1, 228),
(3077, 'Athletic', 'Espanyol', NULL, 2, 2, 229),
(3078, 'Sevilla', 'Elche', NULL, 2, 2, 230),
(3079, 'Cádiz', 'Celta', NULL, 0, 0, 231),
(3080, 'Villarreal', 'Real Madrid', NULL, 0, 0, 232),
(3081, 'Rayo', 'Osasuna', NULL, 0, 0, 233),
(3082, 'Atlético', 'Getafe', NULL, 4, 4, 234),
(3083, 'Alavés', 'Valencia', NULL, 2, 2, 235),
(3084, 'Levante', 'Betis', NULL, 2, 2, 236),
(3085, 'R. Sociedad', 'Granada', NULL, 2, 2, 237),
(3086, 'Espanyol', 'Barcelona', NULL, 2, 2, 238),
(3087, 'Mallorca', 'Athletic', NULL, 3, 3, 239),
(3088, 'Elche', 'Rayo', NULL, 2, 2, 240),
(3089, 'Granada', 'Villarreal', NULL, 1, 1, 241),
(3090, 'Osasuna', 'Atlético', NULL, 0, 0, 242),
(3091, 'Cádiz', 'Getafe', NULL, 1, 1, 243),
(3092, 'Real Madrid', 'Alavés', NULL, 3, 3, 244),
(3093, 'Espanyol', 'Sevilla', NULL, 1, 1, 245),
(3094, 'Valencia', 'Barcelona', NULL, 1, 1, 246),
(3095, 'Betis', 'Mallorca', NULL, 2, 2, 247),
(3096, 'Athletic', 'R. Sociedad', NULL, 4, 4, 248),
(3097, 'Celta', 'Levante', NULL, 1, 1, 249),
(3098, 'Levante', 'Elche', NULL, 3, 3, 250),
(3099, 'Mallorca', 'Valencia', NULL, 0, 0, 251),
(3100, 'Getafe', 'Alavés', NULL, 2, 2, 252),
(3101, 'Rayo', 'Real Madrid', NULL, 0, 0, 253),
(3102, 'Atlético', 'Celta', NULL, 2, 2, 254),
(3103, 'Villarreal', 'Espanyol', NULL, 5, 5, 255),
(3104, 'Sevilla', 'Betis', NULL, 2, 2, 256),
(3105, 'R. Sociedad', 'Osasuna', NULL, 1, 1, 257),
(3106, 'Barcelona', 'Athletic', NULL, 4, 4, 258),
(3107, 'Granada', 'Cádiz', NULL, 0, 0, 259),
(3108, 'Alavés', 'Sevilla', NULL, 0, 0, 260),
(3109, 'Osasuna', 'Villarreal', NULL, 1, 1, 261),
(3110, 'Espanyol', 'Getafe', NULL, 2, 2, 262),
(3111, 'Valencia', 'Granada', NULL, 3, 3, 263),
(3112, 'Real Madrid', 'R. Sociedad', NULL, 4, 4, 264),
(3113, 'Cádiz', 'Rayo', NULL, 2, 2, 265),
(3114, 'Elche', 'Barcelona', NULL, 1, 1, 266),
(3115, 'Celta', 'Mallorca', NULL, 4, 4, 267),
(3116, 'Betis', 'Atlético', NULL, 1, 1, 268),
(3117, 'Athletic', 'Levante', NULL, 3, 3, 269),
(3118, 'Atlético', 'Cádiz', '11/03', -1, -1, 270),
(3119, 'Levante', 'Espanyol', '12/03', -1, -1, 271),
(3120, 'Granada', 'Elche', '12/03', -1, -1, 272),
(3121, 'Villarreal', 'Celta', '12/03', -1, -1, 273),
(3122, 'Getafe', 'Valencia', '12/03', -1, -1, 274),
(3123, 'Rayo', 'Sevilla', '13/03', -1, -1, 275),
(3124, 'Betis', 'Athletic', '13/03', -1, -1, 276),
(3125, 'R. Sociedad', 'Alavés', '13/03', -1, -1, 277),
(3126, 'Barcelona', 'Osasuna', '13/03', -1, -1, 278),
(3127, 'Mallorca', 'Real Madrid', '14/03', -1, -1, 279),
(3128, 'Athletic', 'Getafe', '18/03', -1, -1, 280),
(3129, 'Alavés', 'Granada', '19/03', -1, -1, 281),
(3130, 'Elche', 'Valencia', '19/03', -1, -1, 282),
(3131, 'Osasuna', 'Levante', '19/03', -1, -1, 283),
(3132, 'Rayo', 'Atlético', '19/03', -1, -1, 284),
(3133, 'Espanyol', 'Mallorca', '20/03', -1, -1, 285),
(3134, 'Celta', 'Betis', '20/03', -1, -1, 286),
(3135, 'Cádiz', 'Villarreal', '20/03', -1, -1, 287),
(3136, 'Sevilla', 'R. Sociedad', '20/03', -1, -1, 288),
(3137, 'Real Madrid', 'Barcelona', '20/03', -1, -1, 289),
(3138, 'Athletic', 'Elche', '03/04', -1, -1, 290),
(3139, 'Atlético', 'Alavés', '03/04', -1, -1, 291),
(3140, 'Barcelona', 'Sevilla', '03/04', -1, -1, 292),
(3141, 'Celta', 'Real Madrid', '03/04', -1, -1, 293),
(3142, 'Getafe', 'Mallorca', '03/04', -1, -1, 294),
(3143, 'Granada', 'Rayo', '03/04', -1, -1, 295),
(3144, 'Levante', 'Villarreal', '03/04', -1, -1, 296),
(3145, 'Betis', 'Osasuna', '03/04', -1, -1, 297),
(3146, 'R. Sociedad', 'Espanyol', '03/04', -1, -1, 298),
(3147, 'Valencia', 'Cádiz', '03/04', -1, -1, 299),
(3148, 'Cádiz', 'Betis', '10/04', -1, -1, 300),
(3149, 'Elche', 'R. Sociedad', '10/04', -1, -1, 301),
(3150, 'Espanyol', 'Celta', '10/04', -1, -1, 302),
(3151, 'Levante', 'Barcelona', '10/04', -1, -1, 303),
(3152, 'Mallorca', 'Atlético', '10/04', -1, -1, 304),
(3153, 'Osasuna', 'Alavés', '10/04', -1, -1, 305),
(3154, 'Rayo', 'Valencia', '10/04', -1, -1, 306),
(3155, 'Real Madrid', 'Getafe', '10/04', -1, -1, 307),
(3156, 'Sevilla', 'Granada', '10/04', -1, -1, 308),
(3157, 'Villarreal', 'Athletic', '10/04', -1, -1, 309),
(3158, 'Alavés', 'Rayo', '17/04', -1, -1, 310),
(3159, 'Athletic', 'Celta', '17/04', -1, -1, 311),
(3160, 'Atlético', 'Espanyol', '17/04', -1, -1, 312),
(3161, 'Barcelona', 'Cádiz', '17/04', -1, -1, 313),
(3162, 'Elche', 'Mallorca', '17/04', -1, -1, 314),
(3163, 'Getafe', 'Villarreal', '17/04', -1, -1, 315),
(3164, 'Granada', 'Levante', '17/04', -1, -1, 316),
(3165, 'R. Sociedad', 'Betis', '17/04', -1, -1, 317),
(3166, 'Sevilla', 'Real Madrid', '17/04', -1, -1, 318),
(3167, 'Valencia', 'Osasuna', '17/04', -1, -1, 319),
(3168, 'Atlético', 'Granada', '20/04', -1, -1, 320),
(3169, 'Celta', 'Getafe', '20/04', -1, -1, 321),
(3170, 'Cádiz', 'Athletic', '20/04', -1, -1, 322),
(3171, 'Espanyol', 'Rayo', '20/04', -1, -1, 323),
(3172, 'Levante', 'Sevilla', '20/04', -1, -1, 324),
(3173, 'Mallorca', 'Alavés', '20/04', -1, -1, 325),
(3174, 'Osasuna', 'Real Madrid', '20/04', -1, -1, 326),
(3175, 'Betis', 'Elche', '20/04', -1, -1, 327),
(3176, 'R. Sociedad', 'Barcelona', '20/04', -1, -1, 328),
(3177, 'Villarreal', 'Valencia', '20/04', -1, -1, 329),
(3178, 'Alavés', 'Villarreal', '01/05', -1, -1, 330),
(3179, 'Athletic', 'Atlético', '01/05', -1, -1, 331),
(3180, 'Barcelona', 'Mallorca', '01/05', -1, -1, 332),
(3181, 'Elche', 'Osasuna', '01/05', -1, -1, 333),
(3182, 'Getafe', 'Betis', '01/05', -1, -1, 334),
(3183, 'Granada', 'Celta', '01/05', -1, -1, 335),
(3184, 'Rayo', 'R. Sociedad', '01/05', -1, -1, 336),
(3185, 'Real Madrid', 'Espanyol', '01/05', -1, -1, 337),
(3186, 'Sevilla', 'Cádiz', '01/05', -1, -1, 338),
(3187, 'Valencia', 'Levante', '01/05', -1, -1, 339),
(3188, 'Athletic', 'Valencia', '08/05', -1, -1, 340),
(3189, 'Atlético', 'Real Madrid', '08/05', -1, -1, 341),
(3190, 'Celta', 'Alavés', '08/05', -1, -1, 342),
(3191, 'Cádiz', 'Elche', '08/05', -1, -1, 343),
(3192, 'Espanyol', 'Osasuna', '08/05', -1, -1, 344),
(3193, 'Getafe', 'Rayo', '08/05', -1, -1, 345),
(3194, 'Levante', 'R. Sociedad', '08/05', -1, -1, 346),
(3195, 'Mallorca', 'Granada', '08/05', -1, -1, 347),
(3196, 'Betis', 'Barcelona', '08/05', -1, -1, 348),
(3197, 'Villarreal', 'Sevilla', '08/05', -1, -1, 349),
(3198, 'Alavés', 'Espanyol', '11/05', -1, -1, 350),
(3199, 'Barcelona', 'Celta', '11/05', -1, -1, 351),
(3200, 'Elche', 'Atlético', '11/05', -1, -1, 352),
(3201, 'Granada', 'Athletic', '11/05', -1, -1, 353),
(3202, 'Osasuna', 'Getafe', '11/05', -1, -1, 354),
(3203, 'Rayo', 'Villarreal', '11/05', -1, -1, 355),
(3204, 'Real Madrid', 'Levante', '11/05', -1, -1, 356),
(3205, 'R. Sociedad', 'Cádiz', '11/05', -1, -1, 357),
(3206, 'Sevilla', 'Mallorca', '11/05', -1, -1, 358),
(3207, 'Valencia', 'Betis', '11/05', -1, -1, 359),
(3208, 'Athletic', 'Osasuna', '15/05', -1, -1, 360),
(3209, 'Atlético', 'Sevilla', '15/05', -1, -1, 361),
(3210, 'Celta', 'Elche', '15/05', -1, -1, 362),
(3211, 'Cádiz', 'Real Madrid', '15/05', -1, -1, 363),
(3212, 'Espanyol', 'Valencia', '15/05', -1, -1, 364),
(3213, 'Getafe', 'Barcelona', '15/05', -1, -1, 365),
(3214, 'Levante', 'Alavés', '15/05', -1, -1, 366),
(3215, 'Mallorca', 'Rayo', '15/05', -1, -1, 367),
(3216, 'Betis', 'Granada', '15/05', -1, -1, 368),
(3217, 'Villarreal', 'R. Sociedad', '15/05', -1, -1, 369),
(3218, 'Alavés', 'Cádiz', '22/05', -1, -1, 370),
(3219, 'Barcelona', 'Villarreal', '22/05', -1, -1, 371),
(3220, 'Elche', 'Getafe', '22/05', -1, -1, 372),
(3221, 'Granada', 'Espanyol', '22/05', -1, -1, 373),
(3222, 'Osasuna', 'Mallorca', '22/05', -1, -1, 374),
(3223, 'Rayo', 'Levante', '22/05', -1, -1, 375),
(3224, 'Real Madrid', 'Betis', '22/05', -1, -1, 376),
(3225, 'R. Sociedad', 'Atlético', '22/05', -1, -1, 377),
(3226, 'Sevilla', 'Athletic', '22/05', -1, -1, 378),
(3227, 'Valencia', 'Celta', '22/05', -1, -1, 379);

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `team_id` int(11) NOT NULL,
  `teamname` varchar(50) NOT NULL,
  `visit_won` int(11) DEFAULT NULL,
  `visit_lost` int(11) DEFAULT NULL,
  `tendency` varchar(2) DEFAULT '',
  `local_won` int(11) DEFAULT NULL,
  `local_lost` int(11) DEFAULT NULL,
  `visit_game` int(11) DEFAULT NULL,
  `local_game` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`team_id`, `teamname`, `visit_won`, `visit_lost`, `tendency`, `local_won`, `local_lost`, `visit_game`, `local_game`) VALUES
(1, 'Valencia', 18, 24, '', 21, 18, 12, 13),
(2, 'Cádiz', 11, 20, '', 10, 17, 12, 13),
(3, 'Mallorca', 13, 31, '', 12, 13, 13, 13),
(4, 'Alavés', 11, 29, '', 9, 11, 13, 13),
(5, 'Osasuna', 15, 12, '', 11, 19, 13, 13),
(6, 'Celta', 13, 12, '', 19, 17, 13, 13),
(7, 'Barcelona', 20, 15, '', 23, 11, 13, 11),
(8, 'Sevilla', 10, 7, '', 25, 11, 13, 12),
(9, 'Villarreal', 13, 12, '', 34, 14, 12, 13),
(10, 'Elche', 13, 24, '', 16, 14, 13, 12),
(11, 'Betis', 22, 16, '', 25, 16, 12, 12),
(12, 'Espanyol', 12, 24, '', 21, 16, 12, 13),
(13, 'Granada', 11, 18, '', 16, 20, 12, 12),
(14, 'Athletic', 10, 12, '', 21, 13, 13, 12),
(15, 'R. Sociedad', 16, 19, '', 9, 6, 13, 12),
(16, 'Atlético', 25, 22, '', 22, 12, 13, 12),
(17, 'Levante', 12, 32, '', 13, 18, 13, 12),
(18, 'Getafe', 7, 18, '', 19, 12, 13, 12),
(19, 'Rayo', 8, 19, '', 16, 9, 11, 12),
(20, 'Real Madrid', 16, 8, '', 32, 9, 10, 14);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(300) NOT NULL,
  `money` int(11) NOT NULL,
  `bets_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `money`, `bets_id`) VALUES
(1, 't', 't', 1000, 0),
(3, 'j', 'j', 1000, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bets`
--
ALTER TABLE `bets`
  ADD PRIMARY KEY (`bet_id`),
  ADD KEY `user_id` (`user_id`,`game_id`),
  ADD KEY `fk_game_key` (`game_id`);

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`game_id`),
  ADD KEY `local` (`local`,`visitor`),
  ADD KEY `fk_visitor_key` (`visitor`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`team_id`),
  ADD UNIQUE KEY `teamname_2` (`teamname`),
  ADD KEY `teamname` (`teamname`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bets`
--
ALTER TABLE `bets`
  MODIFY `bet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `game_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3228;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `team_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bets`
--
ALTER TABLE `bets`
  ADD CONSTRAINT `fk_game_key` FOREIGN KEY (`game_id`) REFERENCES `games` (`game_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_user_key` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON UPDATE CASCADE;

--
-- Constraints for table `games`
--
ALTER TABLE `games`
  ADD CONSTRAINT `fk_local_key` FOREIGN KEY (`local`) REFERENCES `teams` (`teamname`),
  ADD CONSTRAINT `fk_visitor_key` FOREIGN KEY (`visitor`) REFERENCES `teams` (`teamname`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
