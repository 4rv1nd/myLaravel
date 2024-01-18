-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 22, 2023 at 10:19 AM
-- Server version: 8.0.31
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cc_ap_booking`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
CREATE TABLE IF NOT EXISTS `blogs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `blog_tag_id` bigint UNSIGNED NOT NULL,
  `blog_categorie_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('1','0') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blogs_blog_tag_id_foreign` (`blog_tag_id`),
  KEY `blogs_blog_categorie_id_foreign` (`blog_categorie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `blog_tag_id`, `blog_categorie_id`, `title`, `slug`, `image`, `description`, `meta_title`, `meta_keywords`, `meta_description`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'Common Problems in Relationships and Their Solutions', 'common-problems-in-relationships-and-their-solutions', 'IwtI4KZ5ZMjG7EKWmhUPym4ErHrYM3XI7OJ5GyKc.png', '&lt;h3&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Arial; font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/h3&gt;&lt;p&gt;&lt;span style=&quot;font-family: Arial; font-size: 14px;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Relationships are not always easy. They require effort, commitment, and compromise from both partners. Sometimes, relationships face challenges and problems that can threaten their stability and happiness. In this blog post, we will explore some of the most common problems in relationships and their solutions.&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;h2&gt;&lt;br&gt;&lt;/h2&gt;&lt;h2&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;Lack of Communication&lt;/span&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Arial; font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/h2&gt;&lt;h3&gt;&lt;font color=&quot;#000000&quot; face=&quot;Arial&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/h3&gt;&lt;h3&gt;&lt;font color=&quot;#000000&quot; face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 18.6px;&quot;&gt;The Importance of Communication&lt;/span&gt;&lt;/font&gt;&lt;/h3&gt;&lt;p&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;One of the most common problems in relationships is lack of communication. Communication is essential for understanding, expressing, and resolving issues in a relationship. Without communication, partners can feel disconnected, frustrated, and annoyed. The importance of communication cannot be ignored. Communication helps to build trust, intimacy, and respect in a relationship. It also helps to prevent misunderstandings, conflicts, and hurt feelings.&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;h3&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Strategies for Improved Communication&lt;/font&gt;&lt;/span&gt;&lt;/h3&gt;&lt;p&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Some strategies for improved communication in a relationship are:&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;&lt;font color=&quot;#000000&quot; style=&quot;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Listen actively and empathetically with love to your partner. Try to understand their perspective and feelings without interrupting or judging them.&lt;/font&gt;&lt;/font&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Express your thoughts and feelings clearly and respectfully. Use &quot;I&quot; statements instead of &quot;you&quot; statements to avoid blaming or accusing your partner.&lt;/font&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Use positive and constructive feedback instead of criticism or complaints. Focus on what you appreciate and want from your partner instead of what you dislike or don&#039;t want.&lt;/font&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Choose an appropriate time and place to communicate. Avoid discussing sensitive or important issues when you or your partner are tired, stressed, distracted, or angry.&lt;/font&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;/p&gt;&lt;ul&gt;&lt;li style=&quot;&quot;&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Seek professional help if you have difficulty communicating with your partner. A therapist or counsellor can help you improve your communication skills and resolve underlying issues.&lt;/font&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;h2&gt;&lt;font face=&quot;Arial&quot; color=&quot;#000000&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/h2&gt;&lt;h2&gt;&lt;font face=&quot;Arial&quot; color=&quot;#000000&quot;&gt;Loss of Intimacy&lt;/font&gt;&lt;/h2&gt;&lt;p&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Another common problem in relationships is loss of intimacy. Intimacy is the emotional and physical closeness that partners share in a relationship. It involves sharing feelings, thoughts, experiences, and affection with each other. Intimacy can enhance the quality and satisfaction of a relationship. However, intimacy can also fade over time due to various factors such as stress, routine, boredom, health issues, or personal problems.&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;h3&gt;&lt;font color=&quot;#000000&quot; style=&quot;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/font&gt;&lt;/font&gt;&lt;/h3&gt;&lt;h3&gt;&lt;font color=&quot;#000000&quot; style=&quot;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;Tips for Restoring Intimacy&lt;/span&gt;&lt;/font&gt;&lt;/font&gt;&lt;/h3&gt;&lt;p&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Some tips for restoring intimacy in a relationship are:&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Spend quality time together. Make time for each other regularly and engage in activities that you both enjoy and value.&lt;/font&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Show appreciation and gratitude for your partner. Express your love and admiration for your partner verbally and nonverbally. Compliment them, thank them, hug them, kiss them, etc.&lt;/font&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Spice up your sex life. Explore your sexual fantasies and desires with your partner. Communicate your needs and preferences openly and respectfully.&lt;/font&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Seek professional help if you have sexual problems or difficulties. A sex therapist or counsellor can help you address any physical or psychological issues that may affect your sexual intimacy.&lt;/font&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;h2&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/h2&gt;&lt;h2&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Infidelity/Cheating&lt;/font&gt;&lt;/span&gt;&lt;/h2&gt;&lt;h2&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/h2&gt;&lt;h3&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;The Devastating Impact of Infidelity/Cheating&lt;/font&gt;&lt;/span&gt;&lt;/h3&gt;&lt;p&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;A third common problem in relationships is infidelity/cheating. Infidelity/cheating is the act of being unfaithful or dishonest to your partner by having a sexual or emotional affair with someone else. Infidelity/cheating can have a devastating impact on a relationship. It can cause feelings of betrayal, anger, sadness, guilt, shame, and distrust. It can also damage the self-esteem and confidence of both partners.&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;h3&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Steps to Healing from Infidelity/Cheating&lt;/font&gt;&lt;/span&gt;&lt;/h3&gt;&lt;p&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Some steps to healing from infidelity/cheating are:&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;End the affair completely. Cut off all contact with the person you had the affair with. Delete their phone number, email address, social media accounts, etc.&lt;/font&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Be honest and transparent with your partner. Admit your mistake and take responsibility for your actions. Answer any questions that your partner may have truthfully and respectfully.&lt;/font&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;&lt;font color=&quot;#000000&quot; style=&quot;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;Seek professional help if you need it. A therapist or counsellor can help you understand why you cheated and how to prevent it from happening again.&lt;/span&gt;&lt;/font&gt;&lt;/font&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Rebuild trust and intimacy with your partner. Work on restoring the communication, affection, and respect in your relationship. Show your partner that you are committed to them and the relationship.&lt;/font&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;&lt;font color=&quot;#000000&quot; style=&quot;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Forgive yourself and your partner. Forgiveness is a process that takes time and effort. It does not mean forgetting or condoning what happened, but rather letting go of the negative emotions and moving forward.&lt;/font&gt;&lt;/font&gt;&lt;/li&gt;&lt;/ul&gt;&lt;h2&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/span&gt;&lt;/h2&gt;&lt;h2&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Conflict&lt;/font&gt;&lt;/span&gt;&lt;/h2&gt;&lt;h2&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/span&gt;&lt;/h2&gt;&lt;h3&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;The Role of Conflict in Relationships&lt;/font&gt;&lt;/span&gt;&lt;/h3&gt;&lt;p&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;A fourth common problem in relationships is conflict. Conflict is the disagreement or clash between partners over different opinions, preferences, values, or goals. Conflict is inevitable and normal in any relationship. It can be healthy and constructive if it is handled properly. However, it can also be unhealthy and destructive if it is handled poorly.&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;The role of conflict in relationships is to:&lt;/font&gt;&lt;/span&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Challenge the status quo i.e. current situation, and stimulate growth and change&lt;/font&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;&lt;span id=&quot;docs-internal-guid-43a29174-7fff-26a8-4a7b-98df0f236804&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline; font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Clarify expectations and boundaries&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;&lt;span id=&quot;docs-internal-guid-43a29174-7fff-26a8-4a7b-98df0f236804&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline;&quot;&gt;&lt;span id=&quot;docs-internal-guid-380b274e-7fff-6ba7-04e9-0c3f388ab419&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline; font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Enhance understanding and empathy&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;&lt;span id=&quot;docs-internal-guid-43a29174-7fff-26a8-4a7b-98df0f236804&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline;&quot;&gt;&lt;span id=&quot;docs-internal-guid-380b274e-7fff-6ba7-04e9-0c3f388ab419&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline;&quot;&gt;&lt;span id=&quot;docs-internal-guid-bf145825-7fff-a5d0-9442-83508595d16b&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline; font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Strengthen connection and cooperation&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;&lt;span id=&quot;docs-internal-guid-43a29174-7fff-26a8-4a7b-98df0f236804&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline;&quot;&gt;&lt;span id=&quot;docs-internal-guid-380b274e-7fff-6ba7-04e9-0c3f388ab419&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline;&quot;&gt;&lt;span id=&quot;docs-internal-guid-bf145825-7fff-a5d0-9442-83508595d16b&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline; font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Effective Conflict Resolution Strategies&nbsp;&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;h3&gt;&lt;span id=&quot;docs-internal-guid-43a29174-7fff-26a8-4a7b-98df0f236804&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline;&quot;&gt;&lt;span id=&quot;docs-internal-guid-380b274e-7fff-6ba7-04e9-0c3f388ab419&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline;&quot;&gt;&lt;span id=&quot;docs-internal-guid-bf145825-7fff-a5d0-9442-83508595d16b&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline; font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h3&gt;&lt;h3&gt;&lt;span id=&quot;docs-internal-guid-43a29174-7fff-26a8-4a7b-98df0f236804&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline;&quot;&gt;&lt;span id=&quot;docs-internal-guid-380b274e-7fff-6ba7-04e9-0c3f388ab419&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline;&quot;&gt;&lt;span id=&quot;docs-internal-guid-bf145825-7fff-a5d0-9442-83508595d16b&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline; font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Effective Conflict Resolution Strategies&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h3&gt;&lt;p&gt;&lt;span id=&quot;docs-internal-guid-43a29174-7fff-26a8-4a7b-98df0f236804&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline;&quot;&gt;&lt;span id=&quot;docs-internal-guid-380b274e-7fff-6ba7-04e9-0c3f388ab419&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline;&quot;&gt;&lt;span id=&quot;docs-internal-guid-bf145825-7fff-a5d0-9442-83508595d16b&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline;&quot;&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Some effective conflict resolution strategies are:&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;&lt;span id=&quot;docs-internal-guid-43a29174-7fff-26a8-4a7b-98df0f236804&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline;&quot;&gt;&lt;span id=&quot;docs-internal-guid-380b274e-7fff-6ba7-04e9-0c3f388ab419&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline;&quot;&gt;&lt;span id=&quot;docs-internal-guid-bf145825-7fff-a5d0-9442-83508595d16b&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline;&quot;&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Use assertive or positive communication instead of aggressive or passive communication. Assertive communication is respectful, honest, direct, and balanced.&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;&lt;span id=&quot;docs-internal-guid-43a29174-7fff-26a8-4a7b-98df0f236804&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline;&quot;&gt;&lt;span id=&quot;docs-internal-guid-380b274e-7fff-6ba7-04e9-0c3f388ab419&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline;&quot;&gt;&lt;span id=&quot;docs-internal-guid-bf145825-7fff-a5d0-9442-83508595d16b&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline; font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Focus on the problem, not the person. Avoid personal attacks, insults, name-calling, or blaming.&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;&lt;span id=&quot;docs-internal-guid-43a29174-7fff-26a8-4a7b-98df0f236804&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline;&quot;&gt;&lt;span id=&quot;docs-internal-guid-380b274e-7fff-6ba7-04e9-0c3f388ab419&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline;&quot;&gt;&lt;span id=&quot;docs-internal-guid-bf145825-7fff-a5d0-9442-83508595d16b&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline; font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Use active listening skills such as paraphrasing, reflecting, summarising, or asking questions.&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;&lt;span id=&quot;docs-internal-guid-43a29174-7fff-26a8-4a7b-98df0f236804&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline;&quot;&gt;&lt;span id=&quot;docs-internal-guid-380b274e-7fff-6ba7-04e9-0c3f388ab419&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline;&quot;&gt;&lt;span id=&quot;docs-internal-guid-bf145825-7fff-a5d0-9442-83508595d16b&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline; font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Seek to understand before being understood. Try to see the situation from your partner&#039;s point of view.&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;&lt;span id=&quot;docs-internal-guid-43a29174-7fff-26a8-4a7b-98df0f236804&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline;&quot;&gt;&lt;span id=&quot;docs-internal-guid-380b274e-7fff-6ba7-04e9-0c3f388ab419&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline;&quot;&gt;&lt;span id=&quot;docs-internal-guid-bf145825-7fff-a5d0-9442-83508595d16b&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline; font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Use &quot;I&quot; statements instead of &quot;you&quot; statements to express your feelings and needs.&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;&lt;span id=&quot;docs-internal-guid-43a29174-7fff-26a8-4a7b-98df0f236804&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline;&quot;&gt;&lt;span id=&quot;docs-internal-guid-380b274e-7fff-6ba7-04e9-0c3f388ab419&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline;&quot;&gt;&lt;span id=&quot;docs-internal-guid-bf145825-7fff-a5d0-9442-83508595d16b&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline; font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Use &quot;we&quot; statements instead of &quot;me&quot; or &quot;you&quot; statements to show that you are a team and have a shared goal.&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;&lt;span id=&quot;docs-internal-guid-43a29174-7fff-26a8-4a7b-98df0f236804&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline;&quot;&gt;&lt;span id=&quot;docs-internal-guid-380b274e-7fff-6ba7-04e9-0c3f388ab419&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline;&quot;&gt;&lt;span id=&quot;docs-internal-guid-bf145825-7fff-a5d0-9442-83508595d16b&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline; font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Use compromise and negotiation to find a solution that works for both of you.&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;&lt;span id=&quot;docs-internal-guid-43a29174-7fff-26a8-4a7b-98df0f236804&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline;&quot;&gt;&lt;span id=&quot;docs-internal-guid-380b274e-7fff-6ba7-04e9-0c3f388ab419&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline;&quot;&gt;&lt;span id=&quot;docs-internal-guid-bf145825-7fff-a5d0-9442-83508595d16b&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline; font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Seek professional help if you have chronic/frequent or severe conflicts. A therapist or counsellor can help you develop healthy and effective conflict resolution skills.&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;h2&gt;&lt;span id=&quot;docs-internal-guid-43a29174-7fff-26a8-4a7b-98df0f236804&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline;&quot;&gt;&lt;span id=&quot;docs-internal-guid-380b274e-7fff-6ba7-04e9-0c3f388ab419&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline;&quot;&gt;&lt;span id=&quot;docs-internal-guid-bf145825-7fff-a5d0-9442-83508595d16b&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline; font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h2&gt;&lt;h2&gt;&lt;span id=&quot;docs-internal-guid-43a29174-7fff-26a8-4a7b-98df0f236804&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline;&quot;&gt;&lt;span id=&quot;docs-internal-guid-380b274e-7fff-6ba7-04e9-0c3f388ab419&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline;&quot;&gt;&lt;span id=&quot;docs-internal-guid-bf145825-7fff-a5d0-9442-83508595d16b&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline; font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Incompatibility&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h2&gt;&lt;h2&gt;&lt;span id=&quot;docs-internal-guid-43a29174-7fff-26a8-4a7b-98df0f236804&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline;&quot;&gt;&lt;span id=&quot;docs-internal-guid-380b274e-7fff-6ba7-04e9-0c3f388ab419&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline;&quot;&gt;&lt;span id=&quot;docs-internal-guid-bf145825-7fff-a5d0-9442-83508595d16b&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline; font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h2&gt;&lt;h3&gt;&lt;span id=&quot;docs-internal-guid-43a29174-7fff-26a8-4a7b-98df0f236804&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline;&quot;&gt;&lt;span id=&quot;docs-internal-guid-380b274e-7fff-6ba7-04e9-0c3f388ab419&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline;&quot;&gt;&lt;span id=&quot;docs-internal-guid-bf145825-7fff-a5d0-9442-83508595d16b&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline; font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Dealing with Incompatibility in Relationships&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h3&gt;&lt;p&gt;&lt;span id=&quot;docs-internal-guid-43a29174-7fff-26a8-4a7b-98df0f236804&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline;&quot;&gt;&lt;span id=&quot;docs-internal-guid-380b274e-7fff-6ba7-04e9-0c3f388ab419&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline;&quot;&gt;&lt;span id=&quot;docs-internal-guid-bf145825-7fff-a5d0-9442-83508595d16b&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline;&quot;&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;A fifth common problem in relationships is incompatibility. Incompatibility is the mismatch or difference between partners in terms of personality, interests, values, goals, or lifestyles. Incompatibility can cause friction, boredom, dissatisfaction, or resentment in a relationship. However, it can also be an opportunity for learning, growth, and diversity.&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;h3&gt;&lt;span id=&quot;docs-internal-guid-43a29174-7fff-26a8-4a7b-98df0f236804&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline;&quot;&gt;&lt;span id=&quot;docs-internal-guid-380b274e-7fff-6ba7-04e9-0c3f388ab419&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline;&quot;&gt;&lt;span id=&quot;docs-internal-guid-bf145825-7fff-a5d0-9442-83508595d16b&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline;&quot;&gt;&lt;font color=&quot;#000000&quot; style=&quot;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Strategies for Overcoming Incompatibility&lt;/font&gt;&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h3&gt;&lt;p&gt;&lt;span id=&quot;docs-internal-guid-43a29174-7fff-26a8-4a7b-98df0f236804&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline;&quot;&gt;&lt;span id=&quot;docs-internal-guid-380b274e-7fff-6ba7-04e9-0c3f388ab419&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline;&quot;&gt;&lt;span id=&quot;docs-internal-guid-bf145825-7fff-a5d0-9442-83508595d16b&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline; font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Some strategies for overcoming incompatibility in a relationship are:&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;&lt;span id=&quot;docs-internal-guid-43a29174-7fff-26a8-4a7b-98df0f236804&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline;&quot;&gt;&lt;span id=&quot;docs-internal-guid-380b274e-7fff-6ba7-04e9-0c3f388ab419&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline;&quot;&gt;&lt;span id=&quot;docs-internal-guid-bf145825-7fff-a5d0-9442-83508595d16b&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline; font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Accept and appreciate your partner for who they are. Do not try to change them or make them fit your expectations.&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;&lt;span id=&quot;docs-internal-guid-43a29174-7fff-26a8-4a7b-98df0f236804&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline;&quot;&gt;&lt;span id=&quot;docs-internal-guid-380b274e-7fff-6ba7-04e9-0c3f388ab419&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline;&quot;&gt;&lt;span id=&quot;docs-internal-guid-bf145825-7fff-a5d0-9442-83508595d16b&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline; font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Celebrate and embrace your differences. Do not see them as flaws or threats, but rather as strengths and opportunities.&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;ul&gt;&lt;li&gt;&lt;span id=&quot;docs-internal-guid-43a29174-7fff-26a8-4a7b-98df0f236804&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline;&quot;&gt;&lt;span id=&quot;docs-internal-guid-380b274e-7fff-6ba7-04e9-0c3f388ab419&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline;&quot;&gt;&lt;span id=&quot;docs-internal-guid-bf145825-7fff-a5d0-9442-83508595d16b&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline; font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Find common ground and shared interests. Do not focus on what separates you, but rather on what unites you.&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;ul&gt;&lt;li&gt;&lt;span id=&quot;docs-internal-guid-43a29174-7fff-26a8-4a7b-98df0f236804&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline;&quot;&gt;&lt;span id=&quot;docs-internal-guid-380b274e-7fff-6ba7-04e9-0c3f388ab419&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline;&quot;&gt;&lt;span id=&quot;docs-internal-guid-bf145825-7fff-a5d0-9442-83508595d16b&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline; font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Support and encourage your partner&#039;s individuality and autonomy. Do not stifle or control them, but rather empower and inspire them.&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;ul&gt;&lt;li&gt;&lt;span id=&quot;docs-internal-guid-43a29174-7fff-26a8-4a7b-98df0f236804&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline;&quot;&gt;&lt;span id=&quot;docs-internal-guid-380b274e-7fff-6ba7-04e9-0c3f388ab419&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline;&quot;&gt;&lt;span id=&quot;docs-internal-guid-bf145825-7fff-a5d0-9442-83508595d16b&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline; font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Seek professional help if you have serious or irreconcilable differences. A therapist or counsellor can help you determine if you are compatible or not and how to deal with the consequences.&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;h2&gt;&lt;span id=&quot;docs-internal-guid-43a29174-7fff-26a8-4a7b-98df0f236804&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline;&quot;&gt;&lt;span id=&quot;docs-internal-guid-380b274e-7fff-6ba7-04e9-0c3f388ab419&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline;&quot;&gt;&lt;span id=&quot;docs-internal-guid-bf145825-7fff-a5d0-9442-83508595d16b&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline;&quot;&gt;&lt;span id=&quot;docs-internal-guid-86745ebb-7fff-cd27-5d58-3a10e45fb8b0&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline; font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h2&gt;&lt;h2&gt;&lt;span id=&quot;docs-internal-guid-43a29174-7fff-26a8-4a7b-98df0f236804&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline;&quot;&gt;&lt;span id=&quot;docs-internal-guid-380b274e-7fff-6ba7-04e9-0c3f388ab419&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline;&quot;&gt;&lt;span id=&quot;docs-internal-guid-bf145825-7fff-a5d0-9442-83508595d16b&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline;&quot;&gt;&lt;span id=&quot;docs-internal-guid-86745ebb-7fff-cd27-5d58-3a10e45fb8b0&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline; font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Strengthening Relationships Through Effort and Commitment&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h2&gt;&lt;p&gt;&lt;span id=&quot;docs-internal-guid-43a29174-7fff-26a8-4a7b-98df0f236804&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline;&quot;&gt;&lt;span id=&quot;docs-internal-guid-380b274e-7fff-6ba7-04e9-0c3f388ab419&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline;&quot;&gt;&lt;span id=&quot;docs-internal-guid-bf145825-7fff-a5d0-9442-83508595d16b&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline;&quot;&gt;&lt;span id=&quot;docs-internal-guid-86745ebb-7fff-cd27-5d58-3a10e45fb8b0&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline; font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;In conclusion, relationships are complex and dynamic. They can face various problems and challenges that can affect their quality and longevity. However, these problems can also be solved and overcome with effort and commitment from both partners. By applying the strategies discussed in this blog post, you can strengthen your relationship and make it more fulfilling and satisfying.&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;', 'Common Problems in Relationship and Their Solutions', '.', 'Strengthen your relationship by resolving the problems of lack of communication, loss of intimacy, infidelity, conflict, and incompatibility with effective strategies.', '1', '2023-10-25 07:05:47', '2023-11-08 05:03:16');
INSERT INTO `blogs` (`id`, `blog_tag_id`, `blog_categorie_id`, `title`, `slug`, `image`, `description`, `meta_title`, `meta_keywords`, `meta_description`, `status`, `created_at`, `updated_at`) VALUES
(2, 2, 4, 'Factors Affecting Emotional Balance And Ways to Balance The Emotions', 'factors-affecting-emotional-balance-and-ways-to-balance-the-emotions', 'tf5fUiMyNl5FMbxK7Ft5Kj6ItFVosqlEUaZoif3G.png', '&lt;p style=&quot;line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Arial;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;&quot;&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Emotional balance is the ability to manage your emotions effectively and cope with the challenges and stressors of life. Emotional balance does not mean that you are always happy or calm, but that you can experience a range of emotions without being overwhelmed by them. Emotional balance can help you improve your mental health, well-being, and relationships.&lt;/font&gt;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;However, achieving emotional balance is not always easy. There are many factors that can affect your emotional balance, such as biological factors, psychological factors, and environmental factors. In this blog post, we will explore these factors and some best strategies for achieving emotional balance.&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/p&gt;&lt;h2&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;Biological Factors&lt;/span&gt;&lt;/font&gt;&lt;/h2&gt;&lt;p&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Biological factors are the physical aspects of your body that can influence your emotions. These include your genes, hormones, brain chemistry, health conditions, medications, and substance use. For example, some people may have a genetic predisposition to depression or anxiety, or experience mood swings due to hormonal changes. Some health conditions, such as thyroid disorders or diabetes, can also affect your emotional balance. Additionally, some medications or substances, such as alcohol or drugs, can alter your brain chemistry and affect your mood.&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;&quot;&gt;&lt;/p&gt;&lt;h2&gt;&lt;font color=&quot;#000000&quot;&gt;Psychological Factors&lt;/font&gt;&lt;/h2&gt;&lt;p&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;Psychological factors are the mental and emotional aspects of your personality that can influence your emotions. These include your temperament, beliefs, attitudes, expectations, self-esteem, coping skills, and cognitive style. For example, some people may have a more optimistic or pessimistic outlook on life, or a higher or lower self-esteem. Some people may also have more effective or ineffective coping skills, such as problem-solving or avoidance. Furthermore, some people may have a more rational or irrational cognitive style, such as being realistic or distorted in their thinking.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;&quot;&gt;&lt;/p&gt;&lt;h2&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;Environmental Factors&lt;/span&gt;&lt;/font&gt;&lt;/h2&gt;&lt;p&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;Environmental factors are the external aspects of your situation that can influence your emotions. These include your family, friends, work, school, culture, society, and life events. For example, some people may have more supportive or unsupportive relationships with their family or friends. Some people may also have more satisfying or stressful work or school environments. Moreover, some people may face more discrimination or oppression due to their culture or society. Additionally, some people may experience more positive or negative life events, such as marriage or divorce.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;&quot;&gt;&lt;/p&gt;&lt;h2&gt;&lt;font color=&quot;#000000&quot;&gt;Strategies for Achieving Emotional Balance&lt;/font&gt;&lt;/h2&gt;&lt;p&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Achieving emotional balance is not a one-time event, but a continuous process that requires awareness and effort. Here are some strategies that can help you achieve emotional balance:&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;&quot;&gt;&lt;/p&gt;&lt;h3&gt;&lt;font color=&quot;#000000&quot;&gt;Seek Professional Help&lt;/font&gt;&lt;/h3&gt;&lt;p&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;If you are struggling with your emotions and feel that they are interfering with your daily functioning, you may benefit from seeking professional help. A mental health professional can help you identify the causes of your emotional imbalance and provide you with appropriate treatment options. These may include psychotherapy, medication, or other interventions. Professional help can also help you prevent or manage any potential complications of emotional imbalance, such as depression, anxiety, substance abuse, or suicidal thoughts.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;However there are other strategies for achieving emotional balance which are further mentioned below. But due to emotional imbalance conditions, an individual is not able to use these strategies in the right way. Here, Seeking a professional help can be the best option to use the strategies below in order to get the best solutions.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;&quot;&gt;&lt;/p&gt;&lt;h3&gt;&lt;font color=&quot;#000000&quot;&gt;Practice Self-Care&lt;/font&gt;&lt;/h3&gt;&lt;p&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;Self-care is the act of taking care of yourself physically, mentally, emotionally, and spiritually. Self-care can help you reduce&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;stress and enhance your well-being. Some examples of self-care activities are:&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;ul&gt;&lt;li style=&quot;line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;&quot;&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Eating a balanced diet&lt;/font&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;ul&gt;&lt;li style=&quot;line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;&quot;&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Getting enough sleep&lt;/font&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;ul&gt;&lt;li style=&quot;line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;&quot;&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Exercising regularly&lt;/font&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;ul&gt;&lt;li style=&quot;line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;&quot;&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Drinking enough water&lt;/font&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;ul&gt;&lt;li style=&quot;line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;&quot;&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Avoiding alcohol and drugs&lt;/font&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;ul&gt;&lt;li style=&quot;line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;&quot;&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Practising relaxation techniques&lt;/font&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;ul&gt;&lt;li style=&quot;line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;&quot;&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Meditating&lt;/font&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;ul&gt;&lt;li style=&quot;line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;&quot;&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Doing hobbies&lt;/font&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;ul&gt;&lt;li style=&quot;line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;&quot;&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Reading&lt;/font&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;ul&gt;&lt;li style=&quot;line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;&quot;&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Listening to music&lt;/font&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;ul&gt;&lt;li style=&quot;line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;&quot;&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Spending time in nature&lt;/font&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;ul&gt;&lt;li style=&quot;line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;&quot;&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Taking breaks&lt;/font&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p style=&quot;line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;&quot;&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;h3 style=&quot;line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;&quot;&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Cultivate Positive Relationships&lt;/font&gt;&lt;/span&gt;&lt;/h3&gt;&lt;p style=&quot;line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;&quot;&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Positive relationships are those that provide you with support, comfort, encouragement, and joy. Positive relationships can help you cope with stress and improve your mood. Some examples of positive relationships are:&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;div&gt;&lt;p&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Family members&lt;/font&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;ul&gt;&lt;li&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Friends&lt;/font&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;ul&gt;&lt;li&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Partners&lt;/font&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;ul&gt;&lt;li&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Co-workers&lt;/font&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;ul&gt;&lt;li&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Classmates&lt;/font&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;ul&gt;&lt;li&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Neighbours&lt;/font&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;ul&gt;&lt;li&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Community members&lt;/font&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;ul&gt;&lt;li&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Pets&lt;/font&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;To cultivate positive relationships, you need to:&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Communicate effectively&lt;/font&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;ul&gt;&lt;li&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Express appreciation&lt;/font&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;ul&gt;&lt;li&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Show respect&lt;/font&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;ul&gt;&lt;li&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Be honest&lt;/font&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;ul&gt;&lt;li&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Be trustworthy&lt;/font&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;ul&gt;&lt;li&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Be supportive&lt;/font&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;ul&gt;&lt;li&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Be empathetic&lt;/font&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;ul&gt;&lt;li&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Be compassionate&lt;/font&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;ul&gt;&lt;li&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Be flexible&lt;/font&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Be forgiving&lt;/font&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;h3&gt;&lt;font color=&quot;#000000&quot; style=&quot;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Challenge Negative Thoughts&lt;/font&gt;&lt;/font&gt;&lt;/h3&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Negative thoughts are those that are irrational, distorted, or unhelpful. Negative thoughts can affect your emotions and behaviour negatively. Some examples of negative thoughts are:&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;b&gt;All-or-nothing thinking&lt;/b&gt;: Seeing things in black-and-white terms.&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Arial;&quot;&gt;Example: &quot;I failed one test; I&#039;m a failure.&quot;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;b&gt;Overgeneralization&lt;/b&gt;: Making broad conclusions based on one event.&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Example: &quot;Nobody likes me; I&#039;m always alone.&quot;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;b&gt;Mental filter&lt;/b&gt;: Focusing on the negative aspects of a situation and ignoring the positive ones.&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Example: &quot;I made a mistake; I ruined everything.&quot;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;b&gt;Disqualifying the positive&lt;/b&gt;: Rejecting positive experiences as irrelevant or undeserved.&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;Example: &quot;I got a compliment; they were just being nice.&quot;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;b&gt;Jumping to conclusions&lt;/b&gt;: Making assumptions without sufficient evidence.&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;Example: &quot;They didn&#039;t reply; they must hate me.&quot;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;b&gt;Magnification or minimization&lt;/b&gt;: Exaggerating or downplaying the importance of something.&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;font color=&quot;#000000&quot;&gt;Example: &quot;This is a disaster; nothing can fix it.&quot;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;b&gt;Emotional reasoning&lt;/b&gt;: Assuming that your emotions reflect reality.&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Example: &quot;I feel worthless; I am worthless.&quot;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;b&gt;Should statements&lt;/b&gt;: Imposing unrealistic or rigid expectations on yourself or others.&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Example: &quot;I should be perfect; they should love me.&quot;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;b&gt;Labelling&lt;/b&gt;: Attaching negative labels to yourself or others based on one trait or behaviour.&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Example: &quot;I&#039;m a loser; they&#039;re a jerk.&quot;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;b&gt;Personalization&lt;/b&gt;: Taking responsibility or blame for things that are not your fault or under your control.&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;font color=&quot;#000000&quot;&gt;Example: &quot;It&#039;s my fault; I caused it.&quot;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;&quot;&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;To challenge negative thoughts, you need to:&lt;/font&gt;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Identify them&lt;/font&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Question them&lt;/font&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;/font&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Replace them with more rational, balanced, and helpful thoughts&lt;/font&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;h3&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/span&gt;&lt;/h3&gt;&lt;h3&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Express Your Emotions&lt;/font&gt;&lt;/span&gt;&lt;/h3&gt;&lt;p&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Expressing your emotions is the act of acknowledging and communicating how you feel. Expressing your emotions can help you release tension, gain clarity, and seek support. Some examples of expressing your emotions are:&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Writing in a journal&lt;/font&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;ul&gt;&lt;li&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Talking to someone you trust&lt;/font&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;ul&gt;&lt;li&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Crying&lt;/font&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;ul&gt;&lt;li&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Laughing&lt;/font&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;ul&gt;&lt;li&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Screaming&lt;/font&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;ul&gt;&lt;li&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Singing&lt;/font&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;ul&gt;&lt;li&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Dancing&lt;/font&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;ul&gt;&lt;li&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Drawing&lt;/font&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;ul&gt;&lt;li&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Painting&lt;/font&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;However, expressing your emotions does not mean that you can act on them impulsively or harmfully. You need to express your emotions in a healthy and respectful way, without hurting yourself or others.&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;h2&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Conclusion&lt;/font&gt;&lt;/span&gt;&lt;/h2&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot; style=&quot;&quot;&gt;Emotional balance is the ability to manage your emotions effectively and cope with the challenges and stressors of life. Emotional balance can help you improve your mental health, well-being, and relationships. However, achieving emotional balance is not always easy. There are many factors that can affect your emotional balance, such as biological factors, psychological factors, and environmental factors. In this blog post, we explored these factors and some strategies for achieving emotional balance. These strategies include seeking professional help, practising self-care, cultivating positive relationships, challenging negative thoughts, and expressing your emotions. By applying these strategies, you can achieve emotional balance and live a happier and healthier life.&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;/div&gt;', 'Factors Affecting Emotional Balance And Ways to Balance The Emotions', '.', 'Explore the factors and some best strategies for achieving emotional balance which can help you improve your mental health, well-being, and relationships.', '1', '2023-10-25 23:59:50', '2023-11-08 05:04:03'),
(3, 2, 3, 'Personal Life Issues and Their Solutions', 'personal-life-issues-and-their-solutions', 'tENebqeIBcsogHXUqEUa8XNPmExf2ZjUB3UmQuhc.png', '&lt;p style=&quot;line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;&quot;&gt;&lt;/p&gt;&lt;h2&gt;&lt;br&gt;&lt;/h2&gt;&lt;p&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;We all face challenges and difficulties in our personal lives, whether it&#039;s related to our relationships, health, finances, or career. Sometimes, these issues can seem overwhelming and we may feel stuck or hopeless. However, there are always ways to cope and overcome these problems, and even learn from them. In this blog post, I will share some common personal life issues and their solutions, based on my own experience and research.&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;h2&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/span&gt;&lt;/h2&gt;&lt;h2&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Relationship issues&lt;/font&gt;&lt;/span&gt;&lt;/h2&gt;&lt;p&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;One of the most common sources of stress and unhappiness in our personal lives is having problems with our romantic partners, family members, or friends. These can range from minor disagreements to serious conflicts that threaten to end the relationship. Some possible solutions are:&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Communicate openly and honestly with your partner or loved one. Express your feelings, needs, and expectations, and listen to theirs. Try to understand their perspective and avoid blaming or criticising them.&lt;/font&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Seek professional help if needed. Sometimes, it can be helpful to have a third party mediate or facilitate the communication between you and your partner or loved one. A therapist, counsellor, or coach can offer unbiased advice and support, and help you resolve the underlying issues.&lt;/font&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Take a break if necessary. If the relationship is too toxic or abusive, you may need to distance yourself from the person or end the relationship altogether. This can be a hard decision, but it may be the best for your well-being and safety.&lt;/font&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;h2&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/span&gt;&lt;/h2&gt;&lt;h2&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Health issues&lt;/font&gt;&lt;/span&gt;&lt;/h2&gt;&lt;p&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot; style=&quot;&quot;&gt;Another common personal life issue is having physical or mental health problems that affect our quality of life and happiness. These can include chronic diseases, injuries, disabilities, depression, anxiety, or addiction. Some possible solutions are:&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Seek medical attention and treatment. If you have a health condition that requires medication, surgery, therapy, or rehabilitation, don&#039;t hesitate to consult a doctor and follow their recommendations. They can help you manage your symptoms and improve your condition.&lt;/font&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Adopt a healthy lifestyle. Eating well, exercising regularly, sleeping enough, and avoiding substances can have a positive impact on your physical and mental health. They can also prevent or reduce the risk of developing certain health problems in the future.&lt;/font&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Arial;&quot;&gt;Seek support from others. Having a health problem can make you feel isolated or ashamed, but you don&#039;t have to go through it alone. Reach out to your family, friends, or support groups who can offer you emotional and practical assistance. You can also join online communities or forums where you can share your experiences and learn from others who have similar issues.&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;/p&gt;&lt;h2&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/span&gt;&lt;/h2&gt;&lt;h2&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Financial issues&lt;/font&gt;&lt;/span&gt;&lt;/h2&gt;&lt;p&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;A third common personal life issue is having money problems that cause stress and anxiety. These can include debt, unemployment, low income, or unexpected expenses. Some possible solutions are:&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Create a budget and stick to it. A budget is a plan that helps you track your income and expenses, and allocate your money wisely. It can help you save more, spend less, and pay off your debt faster.&lt;/font&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Increase your income or reduce your expenses. If your budget is not enough to cover your needs and wants, you may need to find ways to earn more money or cut down on your costs. You can look for a better job, start a side hustle, sell some of your belongings, or negotiate with your creditors. You can also reduce your expenses by living below your means, using coupons or discounts, or switching to cheaper alternatives.&lt;/font&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Seek financial advice or assistance. If you are struggling with managing your money or getting out of debt, you may benefit from getting professional help. A financial planner, advisor, or counsellor can help you create a realistic financial plan and guide you through the process. You can also seek financial assistance from government programs, charities, or relatives who can offer you grants, loans, or gifts.&lt;/font&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;h2&gt;&lt;span id=&quot;docs-internal-guid-b658cc9b-7fff-a00e-ef13-796ee2fc32b9&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline; font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h2&gt;&lt;h2&gt;&lt;span id=&quot;docs-internal-guid-b658cc9b-7fff-a00e-ef13-796ee2fc32b9&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline; font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Career issues&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h2&gt;&lt;p&gt;&lt;span id=&quot;docs-internal-guid-b658cc9b-7fff-a00e-ef13-796ee2fc32b9&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline; font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;A fourth common personal life issue is having dissatisfaction or difficulties with our work or career. These can include lack of motivation, boredom, burnout, conflict with colleagues or bosses, poor performance, or lack of opportunities. Some possible solutions are:&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Set goals and pursue them. Having clear and specific goals can help you stay focused and motivated in your work or career. They can also help you measure your progress and achievements. You can set short-term and long-term goals that are realistic and attainable.&lt;/font&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Seek feedback and improvement. Getting feedback from others can help you identify your strengths and weaknesses in your work or career. You can ask for feedback from your colleagues, bosses, clients, or mentors who can offer you constructive criticism and praise. You can also seek improvement by learning new skills, taking courses, attending workshops, or reading books that can enhance your knowledge and abilities.&lt;/font&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Change your job or career if needed. If you are unhappy or unfulfilled with your current work or career path, you may need to consider making a change. You can look for a new job that suits your interests, values, skills, and better goals. You can also explore different career options that may be more rewarding or exciting for you.&lt;/font&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;These are some of the common personal life issues and their solutions that I have encountered or learned about. I hope they can help you cope and overcome your own challenges and difficulties. Remember, you are not alone, and there is always a way out. You just need to be proactive, resilient, and optimistic. Good luck!&lt;/font&gt;&lt;/span&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;', 'Explore Personal Life Issues and Their Solutions', '.', 'Explore the challenges and difficulties in our personal lives, whether it&#039;s related to our relationships, health, finances, or career and know about the way out of these.', '1', '2023-10-26 00:01:11', '2023-11-16 11:10:21');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

DROP TABLE IF EXISTS `blog_categories`;
CREATE TABLE IF NOT EXISTS `blog_categories` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('1','0') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blog_categories_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`, `meta_description`, `image`, `meta_title`, `meta_keywords`) VALUES
(1, 'Relationship Issues', 'relationship-issues', '1', '2023-10-25 04:15:38', '2023-11-09 03:03:51', 'Relationship Issues meta desc', 'ZifgS8WCFA2wTxtuB1ENhqYzo0SEROZqsDDVOE0p.jpg', 'Relationship Issues meta title', 'Relationship Issues meta key'),
(2, 'Love-Related Issues', 'love-related-issues', '1', '2023-10-25 04:15:44', '2023-11-09 03:04:20', 'Love-Related Issues meta desc', 'qHtcBDlzvlnPVW3fmTBAciOFY7ba7rM1QH3Jn5ND.jpg', 'Love-Related Issues meta title', 'Love-Related Issues meta key'),
(3, 'Personal Life Issues', 'personal-life-issues', '1', '2023-11-01 05:42:50', '2023-11-01 05:42:50', '', '', '', ''),
(4, 'Emotional Balance', 'emotional-balance', '1', '2023-11-01 05:43:13', '2023-11-01 05:43:13', '', '', '', ''),
(5, 'Decision Making', 'decision-making', '1', '2023-11-01 05:43:28', '2023-11-01 05:43:28', '', '', '', ''),
(6, 'Bullying or Ragging', 'bullying-or-ragging', '1', '2023-11-01 05:43:33', '2023-11-01 05:43:33', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `blog_tags`
--

DROP TABLE IF EXISTS `blog_tags`;
CREATE TABLE IF NOT EXISTS `blog_tags` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('1','0') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blog_tags_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_tags`
--

INSERT INTO `blog_tags` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`, `meta_description`, `image`, `meta_title`, `meta_keywords`) VALUES
(1, 'This is tag 1', 'this-is-tag-1', '1', '2023-10-25 04:15:18', '2023-11-09 03:02:31', 'This is tag 1 meta desc', 'myi7mOfcTfroXFfFQhURyyDyIoctA1EiAkqSLjt3.jpg', 'This is tag 1 meta title', 'This is tag 1 meta keywords'),
(2, 'This is tag 2', 'this-is-tag-2', '1', '2023-10-25 04:15:26', '2023-11-09 03:03:06', 'This is tag 2 meta desc', 'r6DFO4Aq0DaPTh73U0q4gntsxeKzGF2r9FLGnbu6.jpg', 'This is tag 2 meta title', 'This is tag 2 meta keywords');

-- --------------------------------------------------------

--
-- Table structure for table `cmn_branches`
--

DROP TABLE IF EXISTS `cmn_branches`;
CREATE TABLE IF NOT EXISTS `cmn_branches` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cmn_branches_name_unique` (`name`),
  UNIQUE KEY `cmn_branches_phone_unique` (`phone`),
  UNIQUE KEY `cmn_branches_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cmn_branches`
--

INSERT INTO `cmn_branches` (`id`, `name`, `phone`, `email`, `address`, `order`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(2, 'Dehradun, Uttarakhand', '917300999433', 'enquiry@heycounsellor.com', 'Head Office: Sadei Digital Pvt. Ltd. ABC Business Club, 16-Tagore Villa, Chakrata Road, Dehradun, Uttarakhand', 2, 1, 1, 1, '2023-10-14 04:21:12', '2023-10-16 00:11:49');

-- --------------------------------------------------------

--
-- Table structure for table `cmn_business_holidays`
--

DROP TABLE IF EXISTS `cmn_business_holidays`;
CREATE TABLE IF NOT EXISTS `cmn_business_holidays` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `cmn_branch_id` bigint UNSIGNED NOT NULL,
  `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cmn_business_holidays_cmn_branch_id_foreign` (`cmn_branch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cmn_business_holidays`
--

INSERT INTO `cmn_business_holidays` (`id`, `cmn_branch_id`, `title`, `start_date`, `end_date`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(4, 2, 'rewewr', '2021-10-11', '2021-10-12', 1, 1, '2021-10-31 05:38:09', '2021-10-31 05:40:03'),
(5, 2, 'rewr', '2021-10-19', '2021-10-20', 1, NULL, '2021-10-31 05:39:57', '2021-10-31 05:39:57'),
(11, 2, 'test', '2021-12-21', '2021-12-21', 1, NULL, '2021-12-17 02:46:01', '2021-12-17 02:46:01');

-- --------------------------------------------------------

--
-- Table structure for table `cmn_business_hours`
--

DROP TABLE IF EXISTS `cmn_business_hours`;
CREATE TABLE IF NOT EXISTS `cmn_business_hours` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `day` int NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `is_off_day` tinyint(1) NOT NULL DEFAULT '0',
  `cmn_branch_id` bigint UNSIGNED NOT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_cmn_business_hours_day_cmn_branch_id` (`day`,`cmn_branch_id`),
  KEY `cmn_business_hours_cmn_branch_id_foreign` (`cmn_branch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cmn_business_hours`
--

INSERT INTO `cmn_business_hours` (`id`, `day`, `start_time`, `end_time`, `is_off_day`, `cmn_branch_id`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(36, 0, '07:00:00', '23:00:00', 1, 2, 1, NULL, NULL, '2023-10-15 22:56:09'),
(37, 1, '09:30:00', '23:00:00', 0, 2, 1, NULL, NULL, '2023-10-15 22:56:09'),
(38, 2, '09:30:00', '23:00:00', 0, 2, 1, NULL, NULL, '2023-10-15 22:56:09'),
(39, 3, '09:30:00', '23:00:00', 0, 2, 1, NULL, NULL, '2023-10-15 22:56:09'),
(40, 4, '09:30:00', '23:00:00', 0, 2, 1, NULL, NULL, '2023-10-15 22:56:09'),
(41, 5, '09:30:00', '23:00:00', 0, 2, 1, NULL, NULL, '2023-10-15 22:56:09'),
(42, 6, '09:30:00', '23:00:00', 0, 2, 1, NULL, NULL, '2023-10-15 22:56:09');

-- --------------------------------------------------------

--
-- Table structure for table `cmn_categories`
--

DROP TABLE IF EXISTS `cmn_categories`;
CREATE TABLE IF NOT EXISTS `cmn_categories` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cmn_category_id` bigint UNSIGNED DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cmn_categories_slug_unique` (`slug`),
  KEY `cmn_categories_cmn_category_id_foreign` (`cmn_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cmn_categories`
--

INSERT INTO `cmn_categories` (`id`, `name`, `slug`, `icon`, `meta_title`, `meta_image`, `meta_content`, `cmn_category_id`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'General', 'general', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cmn_companies`
--

DROP TABLE IF EXISTS `cmn_companies`;
CREATE TABLE IF NOT EXISTS `cmn_companies` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `web_address` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_link` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cmn_companies_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cmn_companies`
--

INSERT INTO `cmn_companies` (`id`, `name`, `address`, `phone`, `mobile`, `email`, `web_address`, `image_link`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(9, 'Hey Counsellor', 'Sadei Digital Pvt. Ltd., ABC Business Club, 16-Tagore Villa, Chakrata Road, Dehradun, Uttarakhand', '01353502548', '7300999433', 'enquiry@heycounsellor.com', 'www.heycounsellor.com', NULL, 1, 1, '2021-10-18 04:17:27', '2023-10-14 04:36:39');

-- --------------------------------------------------------

--
-- Table structure for table `cmn_coupons`
--

DROP TABLE IF EXISTS `cmn_coupons`;
CREATE TABLE IF NOT EXISTS `cmn_coupons` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `percent` tinyint NOT NULL,
  `coupon_type` tinyint NOT NULL DEFAULT '1',
  `use_limit` int NOT NULL DEFAULT '1',
  `min_order_value` decimal(12,2) NOT NULL DEFAULT '0.00',
  `user_id` int DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `max_discount_value` decimal(12,2) NOT NULL,
  `is_fixed` tinyint NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cmn_currency_setups`
--

DROP TABLE IF EXISTS `cmn_currency_setups`;
CREATE TABLE IF NOT EXISTS `cmn_currency_setups` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cmn_currency_setups_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cmn_currency_setups`
--

INSERT INTO `cmn_currency_setups` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, '₹', 'INR', '2021-10-31 12:00:00', '2023-10-12 23:37:12');

-- --------------------------------------------------------

--
-- Table structure for table `cmn_customers`
--

DROP TABLE IF EXISTS `cmn_customers`;
CREATE TABLE IF NOT EXISTS `cmn_customers` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `full_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_no` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `country` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street_address` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street_number` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `gender` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cmn_customers_phone_no_unique` (`phone_no`),
  UNIQUE KEY `cmn_customers_email_unique` (`email`),
  KEY `cmn_customers_user_id_foreign` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cmn_customers`
--

INSERT INTO `cmn_customers` (`id`, `user_id`, `full_name`, `phone_no`, `email`, `dob`, `country`, `state`, `postal_code`, `city`, `street_address`, `street_number`, `remarks`, `created_at`, `updated_at`, `gender`) VALUES
(1, 29, 'Web User', '448801111111', 'webuser@example.com', NULL, NULL, NULL, NULL, NULL, 'Example customer address', NULL, NULL, '2021-11-18 18:11:07', '2022-01-22 04:33:17', NULL),
(39, NULL, 'example customer', '8806732625222', 'demo@example.com', NULL, NULL, 'Dhaka', '1230', 'Inside Dhaka Metro City', 'Demo address', NULL, NULL, '2022-01-21 22:22:32', '2022-01-21 22:22:32', NULL),
(40, NULL, 'example customer 2', '8801672886562', 'demo1@gmail.com', NULL, NULL, 'Dhaka', '1230', 'Inside Dhaka Metro City', 'demo address', NULL, NULL, '2022-01-22 01:47:48', '2022-01-22 01:47:48', NULL),
(41, 31, 'A', '+911234567890', 'hevadej571@czilou.com', '2023-10-01', 'india', 'uttrakhand', '248001', 'dehradun', ':)', '123 sdfsdf', NULL, '2023-10-13 02:11:01', '2023-10-13 02:11:01', NULL),
(43, 32, 'rtyrty', '+9112345678900', 'developmenttesting.hodu+1@gmail.com', '2023-12-20', 'Country', 'State', 'Postal Code', 'City', 'Street Address', 'Street number', NULL, '2023-10-13 23:06:07', '2023-11-16 05:47:55', 'male'),
(45, 49, 'Testing Account', '+911234568878', 'developmenttesting.hodu@gmail.com', '2023-07-26', 'Country', 'State', 'Postal Code', 'City', 'Street Address *', 'dfsd', NULL, '2023-10-30 00:06:42', '2023-11-15 09:43:46', 'male'),
(113, NULL, 'Ainsley Trevino', '+16928132474', 'cibuzu@mailinator.com', NULL, NULL, 'Magna qui eaque fugi', 'Dolor nulla cillum e', 'Non autem vel qui ra', 'Asperiores elit cul', NULL, NULL, '2023-11-15 05:29:39', '2023-11-15 05:29:39', NULL),
(114, 36, 'Arvind Negi', '+91123450789', 'arvindsinghnegi.hodu@gmail.com', '2023-11-16', 'India', 'Uttrakhand', '248001', 'Dehradun', 'Mussoorie Enclave', '1', NULL, '2023-11-16 06:31:59', '2023-12-21 11:17:49', 'male');

-- --------------------------------------------------------

--
-- Table structure for table `cmn_languages`
--

DROP TABLE IF EXISTS `cmn_languages`;
CREATE TABLE IF NOT EXISTS `cmn_languages` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rtl` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `default_language` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `cmn_languages_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cmn_languages`
--

INSERT INTO `cmn_languages` (`id`, `name`, `code`, `rtl`, `created_at`, `updated_at`, `default_language`) VALUES
(1, 'English', 'en', 0, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cmn_orders`
--

DROP TABLE IF EXISTS `cmn_orders`;
CREATE TABLE IF NOT EXISTS `cmn_orders` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `amount` decimal(12,2) NOT NULL,
  `discount_amount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `shipping_amount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `shipping_details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cmn_coupon_id` bigint UNSIGNED DEFAULT NULL,
  `coupon_amount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `payment_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `shipping_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'on_process',
  `updated_by` int DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cmn_orders_user_id_foreign` (`user_id`),
  KEY `cmn_orders_cmn_coupon_id_foreign` (`cmn_coupon_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cmn_order_details`
--

DROP TABLE IF EXISTS `cmn_order_details`;
CREATE TABLE IF NOT EXISTS `cmn_order_details` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `cmn_order_id` bigint UNSIGNED NOT NULL,
  `cmn_product_id` bigint UNSIGNED NOT NULL,
  `product_price` decimal(12,2) NOT NULL,
  `product_quantity` int NOT NULL,
  `total_price` decimal(12,2) NOT NULL,
  `discount_amount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `shipping_amount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `paid_amount` decimal(12,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `cmn_order_details_cmn_order_id_foreign` (`cmn_order_id`),
  KEY `cmn_order_details_cmn_product_id_foreign` (`cmn_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cmn_payment_infos`
--

DROP TABLE IF EXISTS `cmn_payment_infos`;
CREATE TABLE IF NOT EXISTS `cmn_payment_infos` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `paymentable_id` int NOT NULL,
  `paymentable_type` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_type` int NOT NULL COMMENT '1=local,2=paypal',
  `payment_amount` decimal(18,2) NOT NULL,
  `payment_fee` decimal(18,2) NOT NULL,
  `currency_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payee_email_address` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payee_crd_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_create_time` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_details` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cmn_payment_types`
--

DROP TABLE IF EXISTS `cmn_payment_types`;
CREATE TABLE IF NOT EXISTS `cmn_payment_types` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint NOT NULL DEFAULT '1',
  `order` int NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `modified_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cmn_payment_types_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cmn_payment_types`
--

INSERT INTO `cmn_payment_types` (`id`, `name`, `type`, `order`, `status`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(1, 'Local Payment', 1, 1, 1, 1, NULL, NULL, '2023-12-21 07:21:47'),
(2, 'Paypal', 2, 2, 0, 1, NULL, NULL, '2023-10-14 06:36:47'),
(3, 'Stripe', 3, 3, 0, 1, NULL, NULL, '2023-10-14 06:37:13'),
(4, 'User Balance', 4, 4, 1, 1, NULL, NULL, NULL),
(5, 'Razorpay', 5, 5, 1, 1, NULL, NULL, '2023-10-14 02:17:30');

-- --------------------------------------------------------

--
-- Table structure for table `cmn_paypal_api_configs`
--

DROP TABLE IF EXISTS `cmn_paypal_api_configs`;
CREATE TABLE IF NOT EXISTS `cmn_paypal_api_configs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `cmn_payment_type_id` bigint UNSIGNED NOT NULL,
  `client_id` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_secret` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sandbox` tinyint NOT NULL,
  `charge_type` tinyint NOT NULL COMMENT '1=addition, 2=deduction',
  `charge_percentage` decimal(4,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cmn_paypal_api_configs_cmn_payment_type_id_foreign` (`cmn_payment_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cmn_paypal_api_configs`
--

INSERT INTO `cmn_paypal_api_configs` (`id`, `cmn_payment_type_id`, `client_id`, `client_secret`, `sandbox`, `charge_type`, `charge_percentage`, `created_at`, `updated_at`) VALUES
(1, 2, 'test_idd', 'test_key', 0, 1, '0.00', NULL, '2023-10-14 06:37:07');

-- --------------------------------------------------------

--
-- Table structure for table `cmn_products`
--

DROP TABLE IF EXISTS `cmn_products`;
CREATE TABLE IF NOT EXISTS `cmn_products` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cmn_type_id` bigint UNSIGNED NOT NULL,
  `cmn_category_id` bigint UNSIGNED NOT NULL,
  `price` double(12,2) NOT NULL,
  `thumbnail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `unit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` decimal(5,2) NOT NULL DEFAULT '0.00',
  `discount_type` int NOT NULL DEFAULT '1',
  `quantity` int NOT NULL DEFAULT '1',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_hotdeal` tinyint NOT NULL DEFAULT '0',
  `is_new` tinyint NOT NULL DEFAULT '0',
  `meta_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cmn_products_cmn_type_id_foreign` (`cmn_type_id`),
  KEY `cmn_products_cmn_category_id_foreign` (`cmn_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cmn_razorpay_configs`
--

DROP TABLE IF EXISTS `cmn_razorpay_configs`;
CREATE TABLE IF NOT EXISTS `cmn_razorpay_configs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `cmn_payment_type_id` bigint UNSIGNED NOT NULL,
  `api_key` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_secret` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `charge_type` tinyint NOT NULL COMMENT '1=addition, 2=deduction',
  `charge_percentage` decimal(4,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cmn_razorpay_configs_cmn_payment_type_id_foreign` (`cmn_payment_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cmn_razorpay_configs`
--

INSERT INTO `cmn_razorpay_configs` (`id`, `cmn_payment_type_id`, `api_key`, `api_secret`, `charge_type`, `charge_percentage`, `created_at`, `updated_at`) VALUES
(1, 5, 'rzp_test_ggypOvbBQs0fBA', 'G8g7JI3Zm4VVMZUAyL8jWQZX', 1, '10.00', '2023-10-13 01:47:17', '2023-10-14 02:14:38');

-- --------------------------------------------------------

--
-- Table structure for table `cmn_stripe_api_configs`
--

DROP TABLE IF EXISTS `cmn_stripe_api_configs`;
CREATE TABLE IF NOT EXISTS `cmn_stripe_api_configs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `cmn_payment_type_id` bigint UNSIGNED NOT NULL,
  `api_key` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_secret` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `charge_type` tinyint NOT NULL COMMENT '1=addition, 2=deduction',
  `charge_percentage` decimal(4,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cmn_stripe_api_configs_cmn_payment_type_id_foreign` (`cmn_payment_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cmn_stripe_api_configs`
--

INSERT INTO `cmn_stripe_api_configs` (`id`, `cmn_payment_type_id`, `api_key`, `api_secret`, `charge_type`, `charge_percentage`, `created_at`, `updated_at`) VALUES
(1, 3, '', '', 1, '0.00', '2023-10-13 01:44:03', '2023-10-13 01:44:03');

-- --------------------------------------------------------

--
-- Table structure for table `cmn_translations`
--

DROP TABLE IF EXISTS `cmn_translations`;
CREATE TABLE IF NOT EXISTS `cmn_translations` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `cmn_language_id` bigint UNSIGNED NOT NULL,
  `lang_key` varchar(1500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_value` varchar(1500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cmn_translations_cmn_language_id_foreign` (`cmn_language_id`)
) ENGINE=InnoDB AUTO_INCREMENT=560 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cmn_translations`
--

INSERT INTO `cmn_translations` (`id`, `cmn_language_id`, `lang_key`, `lang_value`, `created_at`, `updated_at`) VALUES
(1, 1, 'Book An Appointment', 'Book An Appointment', '2022-04-15 04:30:58', '2022-04-15 04:30:58'),
(2, 1, 'Total Services', 'Total Services', '2022-04-15 04:30:58', '2022-04-15 04:30:58'),
(3, 1, 'Expertise Staffs', 'Expertise Staffs', '2022-04-15 04:30:58', '2022-04-15 04:30:58'),
(4, 1, 'Satisfied Clients', 'Satisfied Clients', '2022-04-15 04:30:58', '2022-04-15 04:30:58'),
(5, 1, 'Done Services', 'Done Services', '2022-04-15 04:30:58', '2022-04-15 04:30:58'),
(6, 1, 'Available Our Top and Popular Services', 'Available Our Top and Popular Services', '2022-04-15 04:30:58', '2022-04-15 04:30:58'),
(7, 1, 'We calculate top services based on our client feedback and number of provided services.', 'We calculate top services based on our client feedback and number of provided services.', '2022-04-15 04:30:58', '2022-04-15 04:30:58'),
(8, 1, 'Learn More', 'Learn More', '2022-04-15 04:30:58', '2022-04-15 04:30:58'),
(9, 1, 'Recently Joined New Team Members Us', 'Recently Joined New Team Members Us', '2022-04-15 04:30:58', '2022-04-15 04:30:58'),
(10, 1, 'We are offering, you can take service from our new team member, hope they will provide to you best services.', 'We are offering, you can take service from our new team member, hope they will provide to you best services.', '2022-04-15 04:30:58', '2022-04-15 04:30:58'),
(11, 1, 'Book Now', 'Book Now', '2022-04-15 04:30:58', '2022-04-15 04:30:58'),
(12, 1, 'Valuable Clients Testimonials', 'Valuable Clients Testimonials', '2022-04-15 04:30:58', '2022-04-15 04:30:58'),
(13, 1, 'We got testimonials from our valued clients both online and offline and they are very much happy.', 'We got testimonials from our valued clients both online and offline and they are very much happy.', '2022-04-15 04:30:58', '2022-04-15 04:30:58'),
(14, 1, 'Sign Up', 'Sign Up', '2022-04-15 04:30:59', '2022-04-15 04:30:59'),
(15, 1, 'Sign In', 'Sign In', '2022-04-15 04:30:59', '2022-04-15 04:30:59'),
(16, 1, 'Home', 'Home', '2022-04-15 04:30:59', '2022-04-15 04:30:59'),
(17, 1, 'Service', 'Service', '2022-04-15 04:30:59', '2022-04-15 04:30:59'),
(18, 1, 'Our Team', 'Our Team', '2022-04-15 04:30:59', '2022-04-15 04:30:59'),
(19, 1, 'Photo Galley', 'Photo Galley', '2022-04-15 04:30:59', '2022-04-15 04:30:59'),
(20, 1, 'FAQ', 'FAQ', '2022-04-15 04:30:59', '2022-04-15 04:30:59'),
(21, 1, 'About Us', 'About Us', '2022-04-15 04:30:59', '2022-04-15 04:30:59'),
(22, 1, 'Contact Us', 'Contact Us', '2022-04-15 04:30:59', '2022-04-15 04:30:59'),
(23, 1, 'About Service', 'About Service', '2022-04-15 04:30:59', '2022-04-15 04:30:59'),
(24, 1, 'Website Navigation Links', 'Website Navigation Links', '2022-04-15 04:30:59', '2022-04-15 04:30:59'),
(25, 1, 'Terms & Conditions', 'Terms & Conditions', '2022-04-15 04:30:59', '2022-04-15 04:30:59'),
(26, 1, 'Contact Information', 'Contact Information', '2022-04-15 04:30:59', '2022-04-15 04:30:59'),
(27, 1, 'Phone', 'Phone', '2022-04-15 04:30:59', '2022-04-15 04:30:59'),
(28, 1, 'Email to', 'Email to', '2022-04-15 04:30:59', '2022-04-15 04:30:59'),
(29, 1, 'Website', 'Website', '2022-04-15 04:30:59', '2022-04-15 04:30:59'),
(30, 1, 'Address', 'Address', '2022-04-15 04:30:59', '2022-04-15 04:30:59'),
(31, 1, 'Payment Method', 'Payment Method', '2022-04-15 04:30:59', '2022-04-15 04:30:59'),
(32, 1, 'Email', 'Email', '2022-04-15 04:31:44', '2022-04-15 04:31:44'),
(33, 1, 'Send Password Reset Link', 'Send Password Reset Link', '2022-04-15 04:31:44', '2022-04-15 04:31:44'),
(34, 1, 'Sign in existing account', 'Sign in existing account', '2022-04-15 04:31:44', '2022-04-15 04:31:44'),
(35, 1, 'Welcome back', 'Welcome back', '2022-04-15 04:37:38', '2022-04-15 04:37:38'),
(36, 1, 'Please sign in to your account.', 'Please sign in to your account.', '2022-04-15 04:37:38', '2022-04-15 04:37:38'),
(37, 1, 'No account', 'No account', '2022-04-15 04:37:38', '2022-04-15 04:37:38'),
(38, 1, 'now', 'now', '2022-04-15 04:37:38', '2022-04-15 04:37:38'),
(39, 1, 'Eamil Or Username', 'Eamil Or Username', '2022-04-15 04:37:38', '2022-04-15 04:37:38'),
(40, 1, 'Password', 'Password', '2022-04-15 04:37:38', '2022-04-15 04:37:38'),
(41, 1, 'Remember Me', 'Remember Me', '2022-04-15 04:37:38', '2022-04-15 04:37:38'),
(42, 1, 'Click to Login', 'Click to Login', '2022-04-15 04:37:38', '2022-04-15 04:37:38'),
(43, 1, 'Forgot Your Password?', 'Forgot Your Password?', '2022-04-15 04:37:38', '2022-04-15 04:37:38'),
(44, 1, 'Go to Website', 'Go to Website', '2022-04-15 04:37:38', '2022-04-15 04:37:38'),
(45, 1, 'Welcome to', 'Welcome to', '2022-04-15 04:38:32', '2022-04-15 04:38:32'),
(46, 1, 'It only takes a few seconds to create your account', 'It only takes a few seconds to create your account', '2022-04-15 04:38:32', '2022-04-15 04:38:32'),
(47, 1, 'Email address', 'Email address', '2022-04-15 04:38:32', '2022-04-15 04:38:32'),
(48, 1, 'User Name', 'User Name', '2022-04-15 04:38:32', '2022-04-15 04:38:32'),
(49, 1, 'Name', 'Name', '2022-04-15 04:38:32', '2022-04-15 04:38:32'),
(50, 1, 'Name here', 'Name here', '2022-04-15 04:38:32', '2022-04-15 04:38:32'),
(51, 1, 'Password here', 'Password here', '2022-04-15 04:38:32', '2022-04-15 04:38:32'),
(52, 1, 'Repeat Password', 'Repeat Password', '2022-04-15 04:38:32', '2022-04-15 04:38:32'),
(53, 1, 'Repeat Password here', 'Repeat Password here', '2022-04-15 04:38:32', '2022-04-15 04:38:32'),
(54, 1, 'Terms and Conditions', 'Terms and Conditions', '2022-04-15 04:38:32', '2022-04-15 04:38:32'),
(55, 1, 'Already have an account', 'Already have an account', '2022-04-15 04:38:32', '2022-04-15 04:38:32'),
(56, 1, 'Create Account', 'Create Account', '2022-04-15 04:38:32', '2022-04-15 04:38:32'),
(57, 1, 'Booking Info', 'Booking Info', '2022-04-15 05:42:06', '2022-04-15 05:42:06'),
(58, 1, 'Date From', 'Date From', '2022-04-15 05:42:06', '2022-04-15 05:42:06'),
(59, 1, 'Date To', 'Date To', '2022-04-15 05:42:06', '2022-04-15 05:42:06'),
(60, 1, 'Employee', 'Employee', '2022-04-15 05:42:06', '2022-04-15 05:42:06'),
(61, 1, 'Customer', 'Customer', '2022-04-15 05:42:06', '2022-04-15 05:42:06'),
(62, 1, 'Service Status', 'Service Status', '2022-04-15 05:42:06', '2022-04-15 05:42:06'),
(63, 1, 'Booking No', 'Booking No', '2022-04-15 05:42:06', '2022-04-15 05:42:06'),
(64, 1, 'Filter', 'Filter', '2022-04-15 05:42:06', '2022-04-15 05:42:06'),
(65, 1, 'Booking No#', 'Booking No#', '2022-04-15 05:42:06', '2022-04-15 05:42:06'),
(66, 1, 'Send notification by email', 'Send notification by email', '2022-04-15 05:42:06', '2022-04-15 05:42:06'),
(67, 1, 'Close', 'Close', '2022-04-15 05:42:06', '2022-04-15 05:42:06'),
(68, 1, 'Save Change', 'Save Change', '2022-04-15 05:42:06', '2022-04-15 05:42:06'),
(69, 1, 'Add mutiple:', 'Add mutiple:', '2022-04-15 05:42:35', '2022-04-15 05:42:35'),
(70, 1, 'Yes', 'Yes', '2022-04-15 05:42:35', '2022-04-15 05:42:35'),
(71, 1, 'No', 'No', '2022-04-15 05:42:35', '2022-04-15 05:42:35'),
(72, 1, 'Date', 'Date', '2022-04-15 05:42:35', '2022-04-15 05:42:35'),
(73, 1, 'Previous day', 'Previous day', '2022-04-15 05:42:35', '2022-04-15 05:42:35'),
(74, 1, 'Next day', 'Next day', '2022-04-15 05:42:35', '2022-04-15 05:42:35'),
(75, 1, 'Load', 'Load', '2022-04-15 05:42:35', '2022-04-15 05:42:35'),
(76, 1, 'Total Booking', 'Total Booking', '2022-04-15 05:42:35', '2022-04-15 05:42:35'),
(77, 1, 'Done', 'Done', '2022-04-15 05:42:35', '2022-04-15 05:42:35'),
(78, 1, 'Cancel', 'Cancel', '2022-04-15 05:42:35', '2022-04-15 05:42:35'),
(79, 1, 'Approved', 'Approved', '2022-04-15 05:42:35', '2022-04-15 05:42:35'),
(80, 1, 'Processing', 'Processing', '2022-04-15 05:42:35', '2022-04-15 05:42:35'),
(81, 1, 'Pending', 'Pending', '2022-04-15 05:42:35', '2022-04-15 05:42:35'),
(82, 1, 'Add Schedule', 'Add Schedule', '2022-04-15 05:42:35', '2022-04-15 05:42:35'),
(83, 1, 'Add/Edit Service', 'Add/Edit Service', '2022-04-15 05:42:35', '2022-04-15 05:42:35'),
(84, 1, 'Branch', 'Branch', '2022-04-15 05:42:35', '2022-04-15 05:42:35'),
(85, 1, 'Category', 'Category', '2022-04-15 05:42:35', '2022-04-15 05:42:35'),
(86, 1, 'Select One', 'Select One', '2022-04-15 05:42:35', '2022-04-15 05:42:35'),
(87, 1, 'Staff', 'Staff', '2022-04-15 05:42:35', '2022-04-15 05:42:35'),
(88, 1, 'Service Date', 'Service Date', '2022-04-15 05:42:36', '2022-04-15 05:42:36'),
(89, 1, 'Add Customer', 'Add Customer', '2022-04-15 05:42:36', '2022-04-15 05:42:36'),
(90, 1, 'Payment By', 'Payment By', '2022-04-15 05:42:36', '2022-04-15 05:42:36'),
(91, 1, 'Paid Amount', 'Paid Amount', '2022-04-15 05:42:36', '2022-04-15 05:42:36'),
(92, 1, 'Paid/Unpaid', 'Paid/Unpaid', '2022-04-15 05:42:36', '2022-04-15 05:42:36'),
(93, 1, 'Application Status', 'Application Status', '2022-04-15 05:42:36', '2022-04-15 05:42:36'),
(94, 1, 'Remarks', 'Remarks', '2022-04-15 05:42:36', '2022-04-15 05:42:36'),
(95, 1, 'Send booking notification by email', 'Send booking notification by email', '2022-04-15 05:42:36', '2022-04-15 05:42:36'),
(96, 1, 'Customer Info', 'Customer Info', '2022-04-15 05:44:27', '2022-04-15 05:44:27'),
(97, 1, 'Customer Name', 'Customer Name', '2022-04-15 05:44:27', '2022-04-15 05:44:27'),
(98, 1, 'Full name', 'Full name', '2022-04-15 05:44:27', '2022-04-15 05:44:27'),
(99, 1, 'System User', 'System User', '2022-04-15 05:44:27', '2022-04-15 05:44:27'),
(100, 1, 'Customer Phone', 'Customer Phone', '2022-04-15 05:44:27', '2022-04-15 05:44:27'),
(101, 1, 'Phone Number', 'Phone Number', '2022-04-15 05:44:27', '2022-04-15 05:44:27'),
(102, 1, 'Date of Birth', 'Date of Birth', '2022-04-15 05:44:27', '2022-04-15 05:44:27'),
(103, 1, 'Street Address', 'Street Address', '2022-04-15 05:44:27', '2022-04-15 05:44:27'),
(104, 1, 'Country', 'Country', '2022-04-15 05:44:27', '2022-04-15 05:44:27'),
(105, 1, 'City', 'City', '2022-04-15 05:44:27', '2022-04-15 05:44:27'),
(106, 1, 'State Name', 'State Name', '2022-04-15 05:44:27', '2022-04-15 05:44:27'),
(107, 1, 'Postal Code', 'Postal Code', '2022-04-15 05:44:27', '2022-04-15 05:44:27'),
(108, 1, 'Customer Information', 'Customer Information', '2022-04-15 05:44:27', '2022-04-15 05:44:27'),
(109, 1, 'Add New Customer', 'Add New Customer', '2022-04-15 05:44:28', '2022-04-15 05:44:28'),
(110, 1, 'Appointment Booking Dashboard', 'Appointment Booking Dashboard', '2022-04-15 05:45:13', '2022-04-15 05:45:13'),
(111, 1, 'Add New Booking', 'Add New Booking', '2022-04-15 05:45:13', '2022-04-15 05:45:13'),
(112, 1, 'Total Done', 'Total Done', '2022-04-15 05:45:13', '2022-04-15 05:45:13'),
(113, 1, 'Total Cancel', 'Total Cancel', '2022-04-15 05:45:13', '2022-04-15 05:45:13'),
(114, 1, 'Total Approved', 'Total Approved', '2022-04-15 05:45:13', '2022-04-15 05:45:13'),
(115, 1, 'Processing & Pending', 'Processing & Pending', '2022-04-15 05:45:13', '2022-04-15 05:45:13'),
(116, 1, 'Today\'s Service statistics', 'Today\'s Service statistics', '2022-04-15 05:45:13', '2022-04-15 05:45:13'),
(117, 1, 'Show all service statistics based on user branch permission.', 'Show all service statistics based on user branch permission.', '2022-04-15 05:45:13', '2022-04-15 05:45:13'),
(118, 1, 'Total', 'Total', '2022-04-15 05:45:13', '2022-04-15 05:45:13'),
(119, 1, 'Today\'s Income & Other Statistics', 'Today\'s Income & Other Statistics', '2022-04-15 05:45:13', '2022-04-15 05:45:13'),
(120, 1, 'Total Income', 'Total Income', '2022-04-15 05:45:13', '2022-04-15 05:45:13'),
(121, 1, 'Total Due', 'Total Due', '2022-04-15 05:45:13', '2022-04-15 05:45:13'),
(122, 1, 'Total Cash Payment', 'Total Cash Payment', '2022-04-15 05:45:13', '2022-04-15 05:45:13'),
(123, 1, 'Total Online Payment', 'Total Online Payment', '2022-04-15 05:45:13', '2022-04-15 05:45:13'),
(124, 1, 'Today', 'Today', '2022-04-15 05:45:13', '2022-04-15 05:45:13'),
(125, 1, 'Month', 'Month', '2022-04-15 05:45:13', '2022-04-15 05:45:13'),
(126, 1, 'Top Booking Service', 'Top Booking Service', '2022-04-15 05:45:13', '2022-04-15 05:45:13'),
(127, 1, 'Add or update off day', 'Add or update off day', '2022-04-15 05:47:09', '2022-04-15 05:47:09'),
(128, 1, 'Subject', 'Subject', '2022-04-15 05:47:09', '2022-04-15 05:47:09'),
(129, 1, 'Start date', 'Start date', '2022-04-15 05:47:09', '2022-04-15 05:47:09'),
(130, 1, 'End date', 'End date', '2022-04-15 05:47:09', '2022-04-15 05:47:09'),
(131, 1, 'Edit', 'Edit', '2022-04-15 05:47:09', '2022-04-15 05:47:09'),
(132, 1, 'Delete', 'Delete', '2022-04-15 05:47:09', '2022-04-15 05:47:09'),
(133, 1, 'Staff / Employee Info', 'Staff / Employee Info', '2022-04-15 05:47:09', '2022-04-15 05:47:09'),
(134, 1, 'Basic Profile', 'Basic Profile', '2022-04-15 05:47:10', '2022-04-15 05:47:10'),
(135, 1, 'Available Service', 'Available Service', '2022-04-15 05:47:10', '2022-04-15 05:47:10'),
(136, 1, 'Service Time', 'Service Time', '2022-04-15 05:47:10', '2022-04-15 05:47:10'),
(137, 1, 'Day Off', 'Day Off', '2022-04-15 05:47:10', '2022-04-15 05:47:10'),
(138, 1, 'Image', 'Image', '2022-04-15 05:47:10', '2022-04-15 05:47:10'),
(139, 1, 'Staff Name', 'Staff Name', '2022-04-15 05:47:10', '2022-04-15 05:47:10'),
(140, 1, 'Staff/Employee Name', 'Staff/Employee Name', '2022-04-15 05:47:10', '2022-04-15 05:47:10'),
(141, 1, 'Staff ID', 'Staff ID', '2022-04-15 05:47:10', '2022-04-15 05:47:10'),
(142, 1, 'Staff/Employee ID', 'Staff/Employee ID', '2022-04-15 05:47:10', '2022-04-15 05:47:10'),
(143, 1, 'Phone No', 'Phone No', '2022-04-15 05:47:10', '2022-04-15 05:47:10'),
(144, 1, 'Department', 'Department', '2022-04-15 05:47:10', '2022-04-15 05:47:10'),
(145, 1, 'Designation', 'Designation', '2022-04-15 05:47:10', '2022-04-15 05:47:10'),
(146, 1, 'Gender', 'Gender', '2022-04-15 05:47:10', '2022-04-15 05:47:10'),
(147, 1, 'Specialist', 'Specialist', '2022-04-15 05:47:10', '2022-04-15 05:47:10'),
(148, 1, 'Present Address', 'Present Address', '2022-04-15 05:47:10', '2022-04-15 05:47:10'),
(149, 1, 'Permanent Address', 'Permanent Address', '2022-04-15 05:47:10', '2022-04-15 05:47:10'),
(150, 1, 'Note', 'Note', '2022-04-15 05:47:10', '2022-04-15 05:47:10'),
(151, 1, 'Visibility Status', 'Visibility Status', '2022-04-15 05:47:10', '2022-04-15 05:47:10'),
(152, 1, 'Day', 'Day', '2022-04-15 05:47:10', '2022-04-15 05:47:10'),
(153, 1, 'Start Time', 'Start Time', '2022-04-15 05:47:10', '2022-04-15 05:47:10'),
(154, 1, 'End Time', 'End Time', '2022-04-15 05:47:10', '2022-04-15 05:47:10'),
(155, 1, 'Break Start', 'Break Start', '2022-04-15 05:47:10', '2022-04-15 05:47:10'),
(156, 1, 'Break End', 'Break End', '2022-04-15 05:47:10', '2022-04-15 05:47:10'),
(157, 1, 'Weekly Holiday', 'Weekly Holiday', '2022-04-15 05:47:10', '2022-04-15 05:47:10'),
(158, 1, 'Monday', 'Monday', '2022-04-15 05:47:10', '2022-04-15 05:47:10'),
(159, 1, 'Tuesday', 'Tuesday', '2022-04-15 05:47:11', '2022-04-15 05:47:11'),
(160, 1, 'Wednesday', 'Wednesday', '2022-04-15 05:47:11', '2022-04-15 05:47:11'),
(161, 1, 'Thursday', 'Thursday', '2022-04-15 05:47:11', '2022-04-15 05:47:11'),
(162, 1, 'Friday', 'Friday', '2022-04-15 05:47:11', '2022-04-15 05:47:11'),
(163, 1, 'Saturday', 'Saturday', '2022-04-15 05:47:11', '2022-04-15 05:47:11'),
(164, 1, 'Staff Info', 'Staff Info', '2022-04-15 05:47:11', '2022-04-15 05:47:11'),
(165, 1, 'Add New Staff', 'Add New Staff', '2022-04-15 05:47:11', '2022-04-15 05:47:11'),
(166, 1, 'Search', 'Search', '2022-04-15 05:48:40', '2022-04-15 05:48:40'),
(167, 1, 'Messages', 'Messages', '2022-04-15 05:48:40', '2022-04-15 05:48:40'),
(168, 1, 'Mark all as read', 'Mark all as read', '2022-04-15 05:48:40', '2022-04-15 05:48:40'),
(169, 1, 'See all messages', 'See all messages', '2022-04-15 05:48:40', '2022-04-15 05:48:40'),
(170, 1, 'You have 4 new notification', 'You have 4 new notification', '2022-04-15 05:48:40', '2022-04-15 05:48:40'),
(171, 1, 'Notification 1', 'Notification 1', '2022-04-15 05:48:40', '2022-04-15 05:48:40'),
(172, 1, '5 minutes ago', '5 minutes ago', '2022-04-15 05:48:40', '2022-04-15 05:48:40'),
(173, 1, 'See all notifications', 'See all notifications', '2022-04-15 05:48:40', '2022-04-15 05:48:40'),
(174, 1, 'Quick Actions', 'Quick Actions', '2022-04-15 05:48:41', '2022-04-15 05:48:41'),
(175, 1, 'Shortcuts', 'Shortcuts', '2022-04-15 05:48:41', '2022-04-15 05:48:41'),
(176, 1, 'Booking Calendar', 'Booking Calendar', '2022-04-15 05:48:41', '2022-04-15 05:48:41'),
(177, 1, 'Booking Information', 'Booking Information', '2022-04-15 05:48:41', '2022-04-15 05:48:41'),
(178, 1, 'Create New Customer', 'Create New Customer', '2022-04-15 05:48:41', '2022-04-15 05:48:41'),
(179, 1, 'Change Photo', 'Change Photo', '2022-04-15 05:48:41', '2022-04-15 05:48:41'),
(180, 1, 'Change Password', 'Change Password', '2022-04-15 05:48:41', '2022-04-15 05:48:41'),
(181, 1, 'Logout', 'Logout', '2022-04-15 05:48:41', '2022-04-15 05:48:41'),
(182, 1, 'Currency Setup', 'Currency Setup', '2022-04-15 05:49:23', '2022-04-15 05:49:23'),
(183, 1, 'Local Payment', 'Local Payment', '2022-04-15 05:49:23', '2022-04-15 05:49:23'),
(184, 1, 'Paypal Payment', 'Paypal Payment', '2022-04-15 05:49:23', '2022-04-15 05:49:23'),
(185, 1, 'Paypal Config', 'Paypal Config', '2022-04-15 05:49:23', '2022-04-15 05:49:23'),
(186, 1, 'Client ID', 'Client ID', '2022-04-15 05:49:23', '2022-04-15 05:49:23'),
(187, 1, 'Client Secret', 'Client Secret', '2022-04-15 05:49:24', '2022-04-15 05:49:24'),
(188, 1, 'Charge Type', 'Charge Type', '2022-04-15 05:49:24', '2022-04-15 05:49:24'),
(189, 1, 'Charge Percentage', 'Charge Percentage', '2022-04-15 05:49:24', '2022-04-15 05:49:24'),
(190, 1, 'Enable Sandbox', 'Enable Sandbox', '2022-04-15 05:49:24', '2022-04-15 05:49:24'),
(191, 1, 'Stripe Config', 'Stripe Config', '2022-04-15 05:49:24', '2022-04-15 05:49:24'),
(192, 1, 'Enable Stripe Payment', 'Enable Stripe Payment', '2022-04-15 05:49:24', '2022-04-15 05:49:24'),
(193, 1, 'API Key', 'API Key', '2022-04-15 05:49:24', '2022-04-15 05:49:24'),
(194, 1, 'API Secret', 'API Secret', '2022-04-15 05:49:24', '2022-04-15 05:49:24'),
(195, 1, 'Category Info', 'Category Info', '2022-04-15 05:49:48', '2022-04-15 05:49:48'),
(196, 1, 'Category name', 'Category name', '2022-04-15 05:49:48', '2022-04-15 05:49:48'),
(197, 1, 'Add New Category', 'Add New Category', '2022-04-15 05:49:48', '2022-04-15 05:49:48'),
(198, 1, 'Service Information', 'Service Information', '2022-04-15 05:50:30', '2022-04-15 05:50:30'),
(199, 1, 'Service Category', 'Service Category', '2022-04-15 05:50:30', '2022-04-15 05:50:30'),
(200, 1, 'Service Title', 'Service Title', '2022-04-15 05:50:30', '2022-04-15 05:50:30'),
(201, 1, 'Service Price', 'Service Price', '2022-04-15 05:50:30', '2022-04-15 05:50:30'),
(202, 1, 'Service Duration', 'Service Duration', '2022-04-15 05:50:31', '2022-04-15 05:50:31'),
(203, 1, 'Service Time Slot', 'Service Time Slot', '2022-04-15 05:50:31', '2022-04-15 05:50:31'),
(204, 1, 'Gap Time Before', 'Gap Time Before', '2022-04-15 05:50:31', '2022-04-15 05:50:31'),
(205, 1, 'Gap Time After', 'Gap Time After', '2022-04-15 05:50:31', '2022-04-15 05:50:31'),
(206, 1, 'Appointment Limit Type', 'Appointment Limit Type', '2022-04-15 05:50:31', '2022-04-15 05:50:31'),
(207, 1, 'No of Limit', 'No of Limit', '2022-04-15 05:50:31', '2022-04-15 05:50:31'),
(208, 1, 'Minimum Time Required to Service Booking', 'Minimum Time Required to Service Booking', '2022-04-15 05:50:31', '2022-04-15 05:50:31'),
(209, 1, 'Minimum Time Required to Cancel', 'Minimum Time Required to Cancel', '2022-04-15 05:50:31', '2022-04-15 05:50:31'),
(210, 1, 'Details', 'Details', '2022-04-15 05:50:31', '2022-04-15 05:50:31'),
(211, 1, 'Service Visibility', 'Service Visibility', '2022-04-15 05:50:31', '2022-04-15 05:50:31'),
(212, 1, 'Service Info', 'Service Info', '2022-04-15 05:50:31', '2022-04-15 05:50:31'),
(213, 1, 'Add New Service', 'Add New Service', '2022-04-15 05:50:31', '2022-04-15 05:50:31'),
(214, 1, 'Branch Info', 'Branch Info', '2022-04-15 05:50:55', '2022-04-15 05:50:55'),
(215, 1, 'Branch name', 'Branch name', '2022-04-15 05:50:55', '2022-04-15 05:50:55'),
(216, 1, 'Email address number', 'Email address number', '2022-04-15 05:50:55', '2022-04-15 05:50:55'),
(217, 1, 'Order', 'Order', '2022-04-15 05:50:55', '2022-04-15 05:50:55'),
(218, 1, 'Order value', 'Order value', '2022-04-15 05:50:55', '2022-04-15 05:50:55'),
(219, 1, 'Status', 'Status', '2022-04-15 05:50:55', '2022-04-15 05:50:55'),
(220, 1, 'Active', 'Active', '2022-04-15 05:50:55', '2022-04-15 05:50:55'),
(221, 1, 'Inactive', 'Inactive', '2022-04-15 05:50:55', '2022-04-15 05:50:55'),
(222, 1, 'Add New Branch', 'Add New Branch', '2022-04-15 05:50:56', '2022-04-15 05:50:56'),
(223, 1, 'Business Holiday', 'Business Holiday', '2022-04-15 05:51:36', '2022-04-15 05:51:36'),
(224, 1, 'Business Hour Settings', 'Business Hour Settings', '2022-04-15 05:51:56', '2022-04-15 05:51:56'),
(225, 1, 'Sunday', 'Sunday', '2022-04-15 05:51:56', '2022-04-15 05:51:56'),
(226, 1, 'Is Weekly Holiday', 'Is Weekly Holiday', '2022-04-15 05:51:56', '2022-04-15 05:51:56'),
(227, 1, 'Company Settings', 'Company Settings', '2022-04-15 05:52:14', '2022-04-15 05:52:14'),
(228, 1, 'Company Name', 'Company Name', '2022-04-15 05:52:14', '2022-04-15 05:52:14'),
(229, 1, 'Mobile', 'Mobile', '2022-04-15 05:52:14', '2022-04-15 05:52:14'),
(230, 1, 'Web Address', 'Web Address', '2022-04-15 05:52:14', '2022-04-15 05:52:14'),
(231, 1, 'Department Info', 'Department Info', '2022-04-15 05:52:24', '2022-04-15 05:52:24'),
(232, 1, 'Department name', 'Department name', '2022-04-15 05:52:24', '2022-04-15 05:52:24'),
(233, 1, 'Add New Department', 'Add New Department', '2022-04-15 05:52:24', '2022-04-15 05:52:24'),
(234, 1, 'Add Designation', 'Add Designation', '2022-04-15 05:52:38', '2022-04-15 05:52:38'),
(235, 1, 'Designation name', 'Designation name', '2022-04-15 05:52:38', '2022-04-15 05:52:38'),
(236, 1, 'Designation Info', 'Designation Info', '2022-04-15 05:52:38', '2022-04-15 05:52:38'),
(237, 1, 'Add New Designation', 'Add New Designation', '2022-04-15 05:52:38', '2022-04-15 05:52:38'),
(238, 1, 'Language Information', 'Language Information', '2022-04-15 05:52:52', '2022-04-15 05:52:52'),
(239, 1, 'Code', 'Code', '2022-04-15 05:52:52', '2022-04-15 05:52:52'),
(240, 1, 'Language List', 'Language List', '2022-04-15 05:52:52', '2022-04-15 05:52:52'),
(241, 1, 'Translate', 'Translate', '2022-04-15 05:53:54', '2022-04-15 05:53:54'),
(242, 1, 'Complete Booking', 'Complete Booking', '2022-04-15 06:07:55', '2022-04-15 06:07:55'),
(243, 1, 'Cancel Booking', 'Cancel Booking', '2022-04-15 06:07:55', '2022-04-15 06:07:55'),
(244, 1, 'Pending & Other', 'Pending & Other', '2022-04-15 06:07:55', '2022-04-15 06:07:55'),
(245, 1, 'Last 10 booking info', 'Last 10 booking info', '2022-04-15 06:07:55', '2022-04-15 06:07:55'),
(246, 1, 'New Booking', 'New Booking', '2022-04-15 06:07:55', '2022-04-15 06:07:55'),
(247, 1, 'My Panel', 'My Panel', '2022-04-15 06:07:56', '2022-04-15 06:07:56'),
(248, 1, 'All pending & other booking info', 'All pending & other booking info', '2022-04-15 06:08:23', '2022-04-15 06:08:23'),
(249, 1, 'User Info', 'User Info', '2022-04-15 06:08:25', '2022-04-15 06:08:25'),
(250, 1, 'Your Name', 'Your Name', '2022-04-15 06:08:25', '2022-04-15 06:08:25'),
(251, 1, 'Street number', 'Street number', '2022-04-15 06:08:25', '2022-04-15 06:08:25'),
(252, 1, 'State', 'State', '2022-04-15 06:08:25', '2022-04-15 06:08:25'),
(253, 1, 'Current Password', 'Current Password', '2022-04-15 06:18:46', '2022-04-15 06:18:46'),
(254, 1, 'New Password', 'New Password', '2022-04-15 06:18:46', '2022-04-15 06:18:46'),
(255, 1, 'Confirm New Password', 'Confirm New Password', '2022-04-15 06:18:46', '2022-04-15 06:18:46'),
(256, 1, 'Role & Permission', 'Role & Permission', '2022-04-15 06:19:03', '2022-04-15 06:19:03'),
(257, 1, 'Add New Role', 'Add New Role', '2022-04-15 06:19:03', '2022-04-15 06:19:03'),
(258, 1, 'Role Name', 'Role Name', '2022-04-15 06:19:03', '2022-04-15 06:19:03'),
(259, 1, 'Save Role Permission', 'Save Role Permission', '2022-04-15 06:19:03', '2022-04-15 06:19:03'),
(260, 1, 'Menu List', 'Menu List', '2022-04-15 06:19:03', '2022-04-15 06:19:03'),
(261, 1, 'Select All', 'Select All', '2022-04-15 06:19:03', '2022-04-15 06:19:03'),
(262, 1, 'click for edit', 'click for edit', '2022-04-15 06:19:03', '2022-04-15 06:19:03'),
(263, 1, 'click to save', 'click to save', '2022-04-15 06:19:03', '2022-04-15 06:19:03'),
(264, 1, 'Role Info', 'Role Info', '2022-04-15 06:19:14', '2022-04-15 06:19:14'),
(265, 1, 'Is Default Role', 'Is Default Role', '2022-04-15 06:19:14', '2022-04-15 06:19:14'),
(266, 1, 'Role Information', 'Role Information', '2022-04-15 06:19:14', '2022-04-15 06:19:14'),
(267, 1, 'Confirm Password', 'Confirm Password', '2022-04-15 06:19:24', '2022-04-15 06:19:24'),
(268, 1, 'User Role', 'User Role', '2022-04-15 06:19:24', '2022-04-15 06:19:24'),
(269, 1, 'Staff/Employee', 'Staff/Employee', '2022-04-15 06:19:24', '2022-04-15 06:19:24'),
(270, 1, 'User Branch', 'User Branch', '2022-04-15 06:19:25', '2022-04-15 06:19:25'),
(271, 1, 'User Information', 'User Information', '2022-04-15 06:19:25', '2022-04-15 06:19:25'),
(272, 1, 'Add New User', 'Add New User', '2022-04-15 06:19:25', '2022-04-15 06:19:25'),
(273, 1, 'Image Size 658x542', 'Image Size 658x542', '2022-04-15 06:19:46', '2022-04-15 06:19:46'),
(274, 1, 'Title', 'Title', '2022-04-15 06:19:46', '2022-04-15 06:19:46'),
(275, 1, 'Is Active', 'Is Active', '2022-04-15 06:19:46', '2022-04-15 06:19:46'),
(276, 1, 'Add New', 'Add New', '2022-04-15 06:19:46', '2022-04-15 06:19:46'),
(277, 1, 'General Settings', 'General Settings', '2022-04-15 06:19:55', '2022-04-15 06:19:55'),
(278, 1, 'App Name', 'App Name', '2022-04-15 06:19:55', '2022-04-15 06:19:55'),
(279, 1, 'Example', 'Example', '2022-04-15 06:19:55', '2022-04-15 06:19:55'),
(280, 1, 'Website Motto', 'Website Motto', '2022-04-15 06:19:55', '2022-04-15 06:19:55'),
(281, 1, 'Theam Color', 'Theam Color', '2022-04-15 06:19:55', '2022-04-15 06:19:55'),
(282, 1, 'Page Menu Color', 'Page Menu Color', '2022-04-15 06:19:55', '2022-04-15 06:19:55'),
(283, 1, 'Theam Hover Color', 'Theam Hover Color', '2022-04-15 06:19:55', '2022-04-15 06:19:55'),
(284, 1, 'Theam Active Color', 'Theam Active Color', '2022-04-15 06:19:55', '2022-04-15 06:19:55'),
(285, 1, 'Icon 32x32', 'Icon 32x32', '2022-04-15 06:19:55', '2022-04-15 06:19:55'),
(286, 1, 'Logo 212x60', 'Logo 212x60', '2022-04-15 06:19:56', '2022-04-15 06:19:56'),
(287, 1, 'Background Image 1920x800', 'Background Image 1920x800', '2022-04-15 06:19:56', '2022-04-15 06:19:56'),
(288, 1, 'Login Background 1920x1080', 'Login Background 1920x1080', '2022-04-15 06:19:56', '2022-04-15 06:19:56'),
(289, 1, 'Contact Info', 'Contact Info', '2022-04-15 06:19:56', '2022-04-15 06:19:56'),
(290, 1, 'Social Media Link', 'Social Media Link', '2022-04-15 06:19:56', '2022-04-15 06:19:56'),
(291, 1, 'Facebook Link', 'Facebook Link', '2022-04-15 06:19:56', '2022-04-15 06:19:56'),
(292, 1, 'Youtube Link', 'Youtube Link', '2022-04-15 06:19:56', '2022-04-15 06:19:56'),
(293, 1, 'Twitter Link', 'Twitter Link', '2022-04-15 06:19:56', '2022-04-15 06:19:56'),
(294, 1, 'Instagram Link', 'Instagram Link', '2022-04-15 06:19:56', '2022-04-15 06:19:56'),
(295, 1, 'SEO Settings', 'SEO Settings', '2022-04-15 06:19:56', '2022-04-15 06:19:56'),
(296, 1, 'Meta Title', 'Meta Title', '2022-04-15 06:19:56', '2022-04-15 06:19:56'),
(297, 1, 'Meta Description', 'Meta Description', '2022-04-15 06:19:56', '2022-04-15 06:19:56'),
(298, 1, 'Meta keywords', 'Meta keywords', '2022-04-15 06:19:56', '2022-04-15 06:19:56'),
(299, 1, 'Client Testimonial', 'Client Testimonial', '2022-04-15 06:20:06', '2022-04-15 06:20:06'),
(300, 1, 'Image Size 80x80', 'Image Size 80x80', '2022-04-15 06:20:06', '2022-04-15 06:20:06'),
(301, 1, 'Client Name', 'Client Name', '2022-04-15 06:20:06', '2022-04-15 06:20:06'),
(302, 1, 'Description', 'Description', '2022-04-15 06:20:06', '2022-04-15 06:20:06'),
(303, 1, 'Rating', 'Rating', '2022-04-15 06:20:06', '2022-04-15 06:20:06'),
(304, 1, 'Email Settings', 'Email Settings', '2022-04-15 06:20:18', '2022-04-15 06:20:18'),
(305, 1, 'Mailer', 'Mailer', '2022-04-15 06:20:18', '2022-04-15 06:20:18'),
(306, 1, 'Host', 'Host', '2022-04-15 06:20:18', '2022-04-15 06:20:18'),
(307, 1, 'Port', 'Port', '2022-04-15 06:20:18', '2022-04-15 06:20:18'),
(308, 1, 'Username/email', 'Username/email', '2022-04-15 06:20:18', '2022-04-15 06:20:18'),
(309, 1, 'Force add new configuration', 'Force add new configuration', '2022-04-15 06:20:18', '2022-04-15 06:20:18'),
(310, 1, 'At first try to update, if not update then check force update. Don\'t try before update.', 'At first try to update, if not update then check force update. Don\'t try before update.', '2022-04-15 06:20:19', '2022-04-15 06:20:19'),
(311, 1, 'Question', 'Question', '2022-04-15 06:20:31', '2022-04-15 06:20:31'),
(312, 1, 'Answer', 'Answer', '2022-04-15 06:20:31', '2022-04-15 06:20:31'),
(313, 1, 'Order/Serial', 'Order/Serial', '2022-04-15 06:20:31', '2022-04-15 06:20:31'),
(314, 1, 'FAQ List', 'FAQ List', '2022-04-15 06:20:31', '2022-04-15 06:20:31'),
(315, 1, 'Add New FAQ', 'Add New FAQ', '2022-04-15 06:20:31', '2022-04-15 06:20:31'),
(316, 1, 'Google Map Settings', 'Google Map Settings', '2022-04-15 06:20:54', '2022-04-15 06:20:54'),
(317, 1, 'Lat', 'Lat', '2022-04-15 06:20:54', '2022-04-15 06:20:54'),
(318, 1, 'Long', 'Long', '2022-04-15 06:20:54', '2022-04-15 06:20:54'),
(319, 1, 'Map Key', 'Map Key', '2022-04-15 06:20:54', '2022-04-15 06:20:54'),
(320, 1, 'Photo Gallery', 'Photo Gallery', '2022-04-15 06:20:56', '2022-04-15 06:20:56'),
(321, 1, 'Photo Gallary', 'Photo Gallary', '2022-04-15 06:20:56', '2022-04-15 06:20:56'),
(322, 1, 'Active Terms & Conditions', 'Active Terms & Conditions', '2022-04-15 06:21:06', '2022-04-15 06:21:06'),
(323, 1, 'Website Menu', 'Website Menu', '2022-04-15 06:21:17', '2022-04-15 06:21:17'),
(324, 1, 'Menu Under', 'Menu Under', '2022-04-15 06:21:17', '2022-04-15 06:21:17'),
(325, 1, 'Menu Name', 'Menu Name', '2022-04-15 06:21:17', '2022-04-15 06:21:17'),
(326, 1, 'Route', 'Route', '2022-04-15 06:21:17', '2022-04-15 06:21:17'),
(327, 1, 'Route Name', 'Route Name', '2022-04-15 06:21:17', '2022-04-15 06:21:17'),
(328, 1, 'Add New Menu', 'Add New Menu', '2022-04-15 06:21:17', '2022-04-15 06:21:17'),
(329, 1, 'Dashboard', 'Dashboard', '2022-04-15 06:22:44', '2022-04-15 06:22:44'),
(330, 1, 'Main Dashboard', 'Main Dashboard', '2022-04-15 06:22:44', '2022-04-15 06:22:44'),
(331, 1, 'User Management', 'User Management', '2022-04-15 06:22:44', '2022-04-15 06:22:44'),
(332, 1, 'Role Permission', 'Role Permission', '2022-04-15 06:22:45', '2022-04-15 06:22:45'),
(333, 1, 'Settings', 'Settings', '2022-04-15 06:22:45', '2022-04-15 06:22:45'),
(334, 1, 'Deprtment', 'Deprtment', '2022-04-15 06:22:45', '2022-04-15 06:22:45'),
(335, 1, 'Company', 'Company', '2022-04-15 06:22:45', '2022-04-15 06:22:45'),
(336, 1, 'Business Hour', 'Business Hour', '2022-04-15 06:22:45', '2022-04-15 06:22:45'),
(337, 1, 'Language', 'Language', '2022-04-15 06:22:45', '2022-04-15 06:22:45'),
(338, 1, 'Staff / Employee', 'Staff / Employee', '2022-04-15 06:22:45', '2022-04-15 06:22:45'),
(339, 1, 'Staff Manage', 'Staff Manage', '2022-04-15 06:22:45', '2022-04-15 06:22:45'),
(340, 1, 'Service Booking', 'Service Booking', '2022-04-15 06:22:45', '2022-04-15 06:22:45'),
(341, 1, 'Payment', 'Payment', '2022-04-15 06:22:45', '2022-04-15 06:22:45'),
(342, 1, 'Payment Setup', 'Payment Setup', '2022-04-15 06:22:45', '2022-04-15 06:22:45'),
(343, 1, 'Appearance', 'Appearance', '2022-04-15 06:22:45', '2022-04-15 06:22:45'),
(344, 1, 'Email Configuration', 'Email Configuration', '2022-04-15 06:22:45', '2022-04-15 06:22:45'),
(345, 1, 'Google Map', 'Google Map', '2022-04-15 06:22:45', '2022-04-15 06:22:45'),
(346, 1, 'Terms & Condition', 'Terms & Condition', '2022-04-15 06:22:45', '2022-04-15 06:22:45'),
(347, 1, 'Appointment Booking', 'Appointment Booking', '2022-04-15 17:50:01', '2022-04-15 17:50:01'),
(348, 1, 'Call for any Emergency Support!', 'Call for any Emergency Support!', '2022-04-15 17:50:01', '2022-04-15 17:50:01'),
(349, 1, 'Service Remarks', 'Service Remarks', '2022-04-15 17:50:02', '2022-04-15 17:50:02'),
(350, 1, 'Your service booking is completed & service is under processing, Check your email.', 'Your service booking is completed & service is under processing, Check your email.', '2022-04-15 17:50:02', '2022-04-15 17:50:02'),
(351, 1, 'Vouchers', 'Vouchers', '2022-11-11 13:43:02', '2022-11-11 13:43:02'),
(352, 1, 'Add more service', 'Add more service', '2022-11-11 13:43:08', '2022-11-11 13:43:08'),
(353, 1, 'SL', 'SL', '2022-11-11 13:43:08', '2022-11-11 13:43:08'),
(354, 1, 'Time', 'Time', '2022-11-11 13:43:08', '2022-11-11 13:43:08'),
(355, 1, 'Fee', 'Fee', '2022-11-11 13:43:08', '2022-11-11 13:43:08'),
(356, 1, 'Opt', 'Opt', '2022-11-11 13:43:08', '2022-11-11 13:43:08'),
(357, 1, 'Order Summary', 'Order Summary', '2022-11-11 13:43:08', '2022-11-11 13:43:08'),
(358, 1, 'Email Or Username', 'Email Or Username', '2022-11-11 13:43:27', '2022-11-11 13:43:27'),
(359, 1, 'Salary', 'Salary', '2022-11-11 13:43:30', '2022-11-11 13:43:30'),
(360, 1, 'OTP', 'OTP', '2022-11-11 13:43:30', '2022-11-11 13:43:30'),
(361, 1, 'Twilio Configuration', 'Twilio Configuration', '2022-11-11 13:43:30', '2022-11-11 13:43:30'),
(362, 1, 'OTP Customization', 'OTP Customization', '2022-11-11 13:43:30', '2022-11-11 13:43:30'),
(363, 1, 'E-Commerce', 'E-Commerce', '2022-11-11 13:43:30', '2022-11-11 13:43:30'),
(364, 1, 'Coupon', 'Coupon', '2022-11-11 13:43:30', '2022-11-11 13:43:30'),
(365, 1, 'Order Info', 'Order Info', '2022-11-11 13:43:31', '2022-11-11 13:43:31'),
(366, 1, 'Product', 'Product', '2022-11-11 13:43:31', '2022-11-11 13:43:31'),
(367, 1, 'For any query contact us by email or phone', 'For any query contact us by email or phone', '2022-11-11 13:43:50', '2022-11-11 13:43:50'),
(368, 1, 'Call us in Office time only', 'Call us in Office time only', '2022-11-11 13:43:50', '2022-11-11 13:43:50'),
(369, 1, 'Send your query anytime!', 'Send your query anytime!', '2022-11-11 13:43:50', '2022-11-11 13:43:50'),
(370, 1, 'Your Full Name', 'Your Full Name', '2022-11-11 13:43:50', '2022-11-11 13:43:50'),
(371, 1, 'Your Email Address', 'Your Email Address', '2022-11-11 13:43:50', '2022-11-11 13:43:50'),
(372, 1, 'Your Query Topic/Subject', 'Your Query Topic/Subject', '2022-11-11 13:43:50', '2022-11-11 13:43:50'),
(373, 1, 'Your Message', 'Your Message', '2022-11-11 13:43:50', '2022-11-11 13:43:50'),
(374, 1, 'Send Mail', 'Send Mail', '2022-11-11 13:43:50', '2022-11-11 13:43:50'),
(375, 1, 'Our Map Location', 'Our Map Location', '2022-11-11 13:43:50', '2022-11-11 13:43:50'),
(376, 1, 'Our Services', 'Our Services', '2023-10-12 07:04:42', '2023-10-12 07:04:42'),
(377, 1, 'Available Our Services', 'Available Our Services', '2023-10-12 07:04:42', '2023-10-12 07:04:42'),
(378, 1, 'All available services of our all branches you can choose any service based on your need.', 'All available services of our all branches you can choose any service based on your need.', '2023-10-12 07:04:42', '2023-10-12 07:04:42'),
(379, 1, 'Total Service Time', 'Total Service Time', '2023-10-12 07:04:42', '2023-10-12 07:04:42'),
(380, 1, 'Service Limit', 'Service Limit', '2023-10-12 07:04:42', '2023-10-12 07:04:42'),
(381, 1, 'Price per service', 'Price per service', '2023-10-12 07:04:42', '2023-10-12 07:04:42'),
(382, 1, 'Our Teams', 'Our Teams', '2023-10-12 07:04:44', '2023-10-12 07:04:44'),
(383, 1, 'Our Skilled Team Members', 'Our Skilled Team Members', '2023-10-12 07:04:44', '2023-10-12 07:04:44'),
(384, 1, 'We always choose best team for your better services and better quality.', 'We always choose best team for your better services and better quality.', '2023-10-12 07:04:44', '2023-10-12 07:04:44'),
(385, 1, 'Our Photo Gallery', 'Our Photo Gallery', '2023-10-12 07:04:46', '2023-10-12 07:04:46'),
(386, 1, 'Frequently Asked Questions', 'Frequently Asked Questions', '2023-10-12 07:04:47', '2023-10-12 07:04:47'),
(387, 1, '24/7 ABOUT US', '24/7 ABOUT US', '2023-10-12 07:04:52', '2023-10-12 07:04:52'),
(388, 1, '24/7 Hours online booking', '24/7 Hours online booking', '2023-10-12 07:04:52', '2023-10-12 07:04:52'),
(389, 1, 'On time service delivery', 'On time service delivery', '2023-10-12 07:04:52', '2023-10-12 07:04:52'),
(390, 1, 'Top quality services', 'Top quality services', '2023-10-12 07:04:52', '2023-10-12 07:04:52'),
(391, 1, 'See our services', 'See our services', '2023-10-12 07:04:52', '2023-10-12 07:04:52'),
(392, 1, 'Contact with us', 'Contact with us', '2023-10-12 07:04:52', '2023-10-12 07:04:52'),
(393, 1, 'OUR SPECIALIST', 'OUR SPECIALIST', '2023-10-12 07:04:53', '2023-10-12 07:04:53'),
(394, 1, 'Meet Our Specialist', 'Meet Our Specialist', '2023-10-12 07:04:53', '2023-10-12 07:04:53'),
(395, 1, 'OUR CLIENTS', 'OUR CLIENTS', '2023-10-12 07:04:53', '2023-10-12 07:04:53'),
(396, 1, 'Valuable Clients Comments', 'Valuable Clients Comments', '2023-10-12 07:04:53', '2023-10-12 07:04:53'),
(397, 1, 'Profile', 'Profile', '2023-10-12 23:18:33', '2023-10-12 23:18:33'),
(398, 1, 'Pending Booking', 'Pending Booking', '2023-10-12 23:18:34', '2023-10-12 23:18:34'),
(399, 1, 'Done Booking', 'Done Booking', '2023-10-12 23:18:34', '2023-10-12 23:18:34'),
(400, 1, 'Orders', 'Orders', '2023-10-12 23:18:35', '2023-10-12 23:18:35'),
(401, 1, 'Sign Out', 'Sign Out', '2023-10-12 23:18:35', '2023-10-12 23:18:35'),
(402, 1, 'All done booking info', 'All done booking info', '2023-10-12 23:18:55', '2023-10-12 23:18:55'),
(403, 1, 'Your Orders', 'Your Orders', '2023-10-12 23:18:57', '2023-10-12 23:18:57'),
(404, 1, 'Staff Information', 'Staff Information', '2023-10-12 23:23:47', '2023-10-12 23:23:47'),
(405, 1, 'Available In Branch', 'Available In Branch', '2023-10-12 23:23:47', '2023-10-12 23:23:47'),
(406, 1, ' Provides below services', ' Provides below services', '2023-10-12 23:23:48', '2023-10-12 23:23:48'),
(407, 1, 'Razorpay Config', 'Razorpay Config', '2023-10-12 23:55:30', '2023-10-12 23:55:30'),
(408, 1, 'Enable Razorpay Payment', 'Enable Razorpay Payment', '2023-10-13 00:31:20', '2023-10-13 00:31:20'),
(409, 1, 'Key ID', 'Key ID', '2023-10-13 00:32:51', '2023-10-13 00:32:51'),
(410, 1, 'Secret Key', 'Secret Key', '2023-10-13 00:32:51', '2023-10-13 00:32:51'),
(411, 1, 'Footer Link', 'Footer Link', '2023-10-13 02:01:10', '2023-10-13 02:01:10'),
(412, 1, 'Verify Your Email Address', 'Verify Your Email Address', '2023-10-13 02:01:22', '2023-10-13 02:01:22'),
(413, 1, 'Before proceeding, please check your email for a verification link.', 'Before proceeding, please check your email for a verification link.', '2023-10-13 02:01:23', '2023-10-13 02:01:23'),
(414, 1, 'If you did not receive the email', 'If you did not receive the email', '2023-10-13 02:01:23', '2023-10-13 02:01:23'),
(415, 1, 'click here to request another', 'click here to request another', '2023-10-13 02:01:23', '2023-10-13 02:01:23'),
(416, 1, 'Today is weekly holiday', 'Today is weekly holiday', '2023-10-13 02:02:38', '2023-10-13 02:02:38'),
(423, 1, 'Monthly Salary', 'Monthly Salary', '2023-10-14 02:19:59', '2023-10-14 02:19:59'),
(424, 1, 'Commission per service', 'Commission per service', '2023-10-14 02:20:00', '2023-10-14 02:20:00'),
(425, 1, 'Commission based on', 'Commission based on', '2023-10-14 02:20:00', '2023-10-14 02:20:00'),
(426, 1, 'Target service amount', 'Target service amount', '2023-10-14 02:20:00', '2023-10-14 02:20:00'),
(427, 1, 'ID Card', 'ID Card', '2023-10-14 02:20:00', '2023-10-14 02:20:00'),
(428, 1, 'Passport', 'Passport', '2023-10-14 02:20:00', '2023-10-14 02:20:00'),
(429, 1, 'Salary Info', 'Salary Info', '2023-10-14 02:20:11', '2023-10-14 02:20:11'),
(430, 1, 'Year', 'Year', '2023-10-14 02:20:11', '2023-10-14 02:20:11'),
(431, 1, 'All Employees', 'All Employees', '2023-10-14 02:20:11', '2023-10-14 02:20:11'),
(432, 1, 'Download', 'Download', '2023-10-14 02:20:11', '2023-10-14 02:20:11'),
(433, 1, 'Preview Salary Sheet', 'Preview Salary Sheet', '2023-10-14 02:20:11', '2023-10-14 02:20:11'),
(434, 1, 'Save Changes', 'Save Changes', '2023-10-14 02:20:11', '2023-10-14 02:20:11'),
(436, 1, 'Total Amount:', 'Total Amount:', '2023-10-14 04:50:40', '2023-10-14 04:50:40'),
(437, 1, 'Discount Amount:', 'Discount Amount:', '2023-10-14 04:50:40', '2023-10-14 04:50:40'),
(438, 1, 'Apply Coupon Code', 'Apply Coupon Code', '2023-10-14 04:50:41', '2023-10-14 04:50:41'),
(439, 1, 'Apply Coupon', 'Apply Coupon', '2023-10-14 04:50:41', '2023-10-14 04:50:41'),
(440, 1, 'Payable Amount:', 'Payable Amount:', '2023-10-14 04:50:41', '2023-10-14 04:50:41'),
(441, 1, 'Counseller', 'Counseller', '2023-10-14 04:56:55', '2023-10-14 04:56:55'),
(442, 1, 'Counsellor', 'Counsellor', '2023-10-14 04:57:05', '2023-10-14 04:57:05'),
(443, 1, 'Service Type', 'Service Type', '2023-10-14 06:03:59', '2023-10-14 06:03:59'),
(444, 1, 'Service Mode', 'Service Mode', '2023-10-14 06:04:26', '2023-10-14 06:04:26'),
(445, 1, 'Services', 'Services', '2023-10-14 06:04:50', '2023-10-14 06:04:50'),
(446, 1, 'Counsellors', 'Counsellors', '2023-10-14 06:04:50', '2023-10-14 06:04:50'),
(447, 1, 'Mode', 'Mode', '2023-10-14 06:07:51', '2023-10-14 06:07:51'),
(448, 1, 'Type', 'Type', '2023-10-14 06:07:51', '2023-10-14 06:07:51'),
(449, 1, 'Item', 'Item', '2023-10-14 06:16:37', '2023-10-14 06:16:37'),
(450, 1, 'Quantity', 'Quantity', '2023-10-14 06:16:38', '2023-10-14 06:16:38'),
(451, 1, 'Unit Price', 'Unit Price', '2023-10-14 06:16:38', '2023-10-14 06:16:38'),
(452, 1, 'Total Price', 'Total Price', '2023-10-14 06:16:38', '2023-10-14 06:16:38'),
(453, 1, 'You have no item in your cart', 'You have no item in your cart', '2023-10-14 06:16:38', '2023-10-14 06:16:38'),
(454, 1, 'Procced To Checkout', 'Procced To Checkout', '2023-10-14 06:16:38', '2023-10-14 06:16:38'),
(455, 1, 'Default Language', 'Default Language', '2023-10-14 06:49:35', '2023-10-14 06:49:35'),
(457, 1, 'Service Details', 'Service Details', '2023-10-15 23:48:52', '2023-10-15 23:48:52'),
(458, 1, 'About', 'About', '2023-10-15 23:48:52', '2023-10-15 23:48:52'),
(459, 1, 'Available Our Popular Services', 'Available Our Popular Services', '2023-10-15 23:48:52', '2023-10-15 23:48:52'),
(460, 1, 'og:description', 'og:description', '2023-10-16 02:21:00', '2023-10-16 02:21:00'),
(461, 1, 'og:image', 'og:image', '2023-10-16 02:21:00', '2023-10-16 02:21:00'),
(462, 1, 'og:url', 'og:url', '2023-10-16 02:21:01', '2023-10-16 02:21:01'),
(463, 1, 'og:site_name', 'og:site_name', '2023-10-16 02:21:01', '2023-10-16 02:21:01'),
(464, 1, 'og:type', 'og:type', '2023-10-16 02:21:01', '2023-10-16 02:21:01'),
(467, 1, 'Counselling Mode', 'Counselling Mode', '2023-10-17 04:32:31', '2023-10-17 04:32:31'),
(469, 1, 'Error Page', 'Error Page', '2023-10-17 06:03:22', '2023-10-17 06:03:22'),
(470, 1, 'Go To Home', 'Go To Home', '2023-10-17 06:03:22', '2023-10-17 06:03:22'),
(471, 1, 'User Dashboard', 'User Dashboard', '2023-10-17 23:10:27', '2023-10-17 23:10:27'),
(472, 1, 'Add Service', 'Add Service', '2023-10-17 23:10:27', '2023-10-17 23:10:27'),
(473, 1, 'Choose your desired payment partner', 'Choose your desired payment partner', '2023-10-18 06:32:06', '2023-10-18 06:32:06'),
(474, 1, 'Process To Pay', 'Process To Pay', '2023-10-18 06:32:06', '2023-10-18 06:32:06'),
(476, 1, 'You do not have enough balance in your account', 'You do not have enough balance in your account', '2023-10-18 22:55:22', '2023-10-18 22:55:22'),
(478, 1, 'Education', 'Education', '2023-10-19 04:35:03', '2023-10-19 04:35:03'),
(479, 1, 'Problem Description', 'Problem Description', '2023-10-19 04:35:03', '2023-10-19 04:35:03'),
(480, 1, 'Life Stage', 'Life Stage', '2023-10-19 04:35:04', '2023-10-19 04:35:04'),
(481, 1, 'Relationship Stage', 'Relationship Stage', '2023-10-19 04:35:04', '2023-10-19 04:35:04'),
(482, 1, 'Service Available', 'Service Available', '2023-10-19 05:56:06', '2023-10-19 05:56:06'),
(483, 1, 'Life Coaches', 'Life Coaches', '2023-10-19 05:56:08', '2023-10-19 05:56:08'),
(484, 1, 'Happy Beneficiaries ', 'Happy Beneficiaries ', '2023-10-19 05:56:08', '2023-10-19 05:56:08'),
(485, 1, 'Issue Resolved', 'Issue Resolved', '2023-10-19 05:56:08', '2023-10-19 05:56:08'),
(486, 1, 'Most Demanding Services to Resolve the Issues', 'Most Demanding Services to Resolve the Issues', '2023-10-19 05:56:08', '2023-10-19 05:56:08'),
(487, 1, 'These are top services demanded by maximum people facing life issues and get resolved.', 'These are top services demanded by maximum people facing life issues and get resolved.', '2023-10-19 05:56:08', '2023-10-19 05:56:08'),
(488, 1, 'Words of Mental Relief', 'Words of Mental Relief', '2023-10-19 06:04:50', '2023-10-19 06:04:50'),
(489, 1, 'Blogs Settings', 'Blogs Settings', '2023-10-25 02:59:24', '2023-10-25 02:59:24'),
(490, 1, 'Categories', 'Categories', '2023-10-25 02:59:24', '2023-10-25 02:59:24'),
(491, 1, 'Tags', 'Tags', '2023-10-25 02:59:25', '2023-10-25 02:59:25'),
(492, 1, 'List', 'List', '2023-10-25 02:59:25', '2023-10-25 02:59:25'),
(493, 1, 'Tag Info', 'Tag Info', '2023-10-25 03:02:16', '2023-10-25 03:02:16'),
(494, 1, 'Blog Info', 'Blog Info', '2023-10-25 03:04:45', '2023-10-25 03:04:45'),
(495, 1, 'Tag', 'Tag', '2023-10-25 03:58:06', '2023-10-25 03:58:06'),
(496, 1, 'Categorie', 'Categorie', '2023-10-25 03:58:06', '2023-10-25 03:58:06'),
(497, 1, 'Select Tag', 'Select Tag', '2023-10-25 04:03:31', '2023-10-25 04:03:31'),
(498, 1, 'Select Category', 'Select Category', '2023-10-25 04:03:31', '2023-10-25 04:03:31'),
(499, 1, 'Our Blogs', 'Our Blogs', '2023-10-25 22:47:36', '2023-10-25 22:47:36'),
(500, 1, 'This our blogs.', 'This our blogs.', '2023-10-25 22:47:37', '2023-10-25 22:47:37'),
(501, 1, 'Add New Blog', 'Add New Blog', '2023-10-25 23:22:28', '2023-10-25 23:22:28'),
(502, 1, 'Blogs', 'Blogs', '2023-10-26 06:17:10', '2023-10-26 06:17:10'),
(503, 1, 'Our Office Time 9:30 to 6:00', 'Our Office Time 9:30 to 6:00', '2023-10-26 06:21:35', '2023-10-26 06:21:35'),
(504, 1, 'Our Office Time 9:30 to 9:00', 'Our Office Time 9:30 to 9:00', '2023-10-26 06:21:48', '2023-10-26 06:21:48'),
(505, 1, 'Enquiry Time 9:30 to 9:00', 'Enquiry Time 9:30 to 9:00', '2023-10-26 06:22:24', '2023-10-26 06:22:24'),
(506, 1, 'Google Login', 'Google Login', '2023-10-27 01:20:54', '2023-10-27 01:20:54'),
(507, 1, 'A fresh verification link has been sent to your email address.', 'A fresh verification link has been sent to your email address.', '2023-10-27 03:59:28', '2023-10-27 03:59:28'),
(508, 1, 'Years Journey ', 'Years Journey ', '2023-10-27 04:46:52', '2023-10-27 04:46:52'),
(509, 1, 'Years Journies ', 'Years Journies ', '2023-10-27 04:47:04', '2023-10-27 04:47:04'),
(510, 1, 'Order No', 'Order No', '2023-10-30 00:33:09', '2023-10-30 00:33:09'),
(511, 1, 'Order Date', 'Order Date', '2023-10-30 00:33:09', '2023-10-30 00:33:09'),
(512, 1, 'Shipping address', 'Shipping address', '2023-10-30 00:33:09', '2023-10-30 00:33:09'),
(513, 1, 'Date & Time', 'Date & Time', '2023-10-30 00:33:09', '2023-10-30 00:33:09'),
(514, 1, 'Price', 'Price', '2023-10-30 00:33:09', '2023-10-30 00:33:09'),
(515, 1, 'Paid', 'Paid', '2023-10-30 00:33:09', '2023-10-30 00:33:09'),
(516, 1, 'Due', 'Due', '2023-10-30 00:33:10', '2023-10-30 00:33:10'),
(517, 1, 'Total Amount', 'Total Amount', '2023-10-30 00:33:10', '2023-10-30 00:33:10'),
(518, 1, 'Discount', 'Discount', '2023-10-30 00:33:10', '2023-10-30 00:33:10'),
(519, 1, 'Payable Amount', 'Payable Amount', '2023-10-30 00:33:10', '2023-10-30 00:33:10'),
(520, 1, 'Due Amount', 'Due Amount', '2023-10-30 00:33:10', '2023-10-30 00:33:10'),
(521, 1, 'Counselling Support', 'Counselling Support', '2023-11-03 05:28:28', '2023-11-03 05:28:28'),
(522, 1, 'This is our blogs.', 'This is our blogs.', '2023-11-03 06:43:14', '2023-11-03 06:43:14'),
(523, 1, 'Call for Counseling Support!', 'Call for Counseling Support!', '2023-11-03 07:19:43', '2023-11-03 07:19:43'),
(524, 1, 'Change Profile Photo', 'Change Profile Photo', '2023-11-08 06:07:05', '2023-11-08 06:07:05'),
(525, 1, 'Profile Photo', 'Profile Photo', '2023-11-08 06:07:06', '2023-11-08 06:07:06'),
(526, 1, 'Read our blogs and know about the solutions of the life issues.', 'Read our blogs and know about the solutions of the life issues.', '2023-11-08 06:11:21', '2023-11-08 06:11:21'),
(527, 1, 'We got testimonials from our valued beneficiaries both online and offline and they are very much happy.', 'We got testimonials from our valued beneficiaries both online and offline and they are very much happy.', '2023-11-08 06:12:04', '2023-11-08 06:12:04'),
(528, 1, 'Read what our beneficiaries said about us.', 'Read what our beneficiaries said about us.', '2023-11-08 06:14:19', '2023-11-08 06:14:19'),
(529, 1, 'Years Experience', 'Years Experience', '2023-11-08 06:49:03', '2023-11-08 06:49:03'),
(530, 1, 'Meta Image', 'Meta Image', '2023-11-09 00:32:30', '2023-11-09 00:32:30'),
(531, 1, 'Select image', 'Select image', '2023-11-09 00:38:20', '2023-11-09 00:38:20'),
(533, 1, 'Call for Counselling Support!', 'Call for Counselling Support!', '2023-11-14 04:21:28', '2023-11-14 04:21:28'),
(549, 1, 'Session Booking Date', 'Session Booking Date', '2023-11-15 07:21:15', '2023-11-15 07:21:15'),
(550, 1, 'Contact', 'Contact', '2023-11-15 07:21:15', '2023-11-15 07:21:15'),
(551, 1, 'Service Feedback', 'Service Feedback', '2023-11-16 07:21:14', '2023-11-16 07:21:14'),
(552, 1, 'Feedback', 'Feedback', '2023-11-16 07:21:14', '2023-11-16 07:21:14'),
(553, 1, 'Submit', 'Submit', '2023-11-16 07:21:14', '2023-11-16 07:21:14'),
(554, 1, 'Your session booking for <b class=\"counselling-name\"></b> is completed & it is under processing, Check your email to know about booking status.', 'Your session booking for <b class=\"counselling-name\"></b> is completed & it is under processing, Check your email to know about booking status.', '2023-11-17 07:03:49', '2023-11-17 07:03:49'),
(555, 1, 'Your session booking for <b class=\"counselling-name\">sdasd</b> is completed & it is under processing, Check your email to know about booking status.', 'Your session booking for <b class=\"counselling-name\">sdasd</b> is completed & it is under processing, Check your email to know about booking status.', '2023-11-17 07:15:38', '2023-11-17 07:15:38'),
(556, 1, 'Your session booking for <b><span class=\"counselling-name\">sdasd</span></b> is completed & it is under processing, Check your email to know about booking status.', 'Your session booking for <b><span class=\"counselling-name\">sdasd</span></b> is completed & it is under processing, Check your email to know about booking status.', '2023-11-17 07:16:12', '2023-11-17 07:16:12'),
(558, 1, '100 % Money-Back Guarantee', '100 % Money-Back Guarantee', '2023-12-22 07:07:48', '2023-12-22 07:07:48'),
(559, 1, '100% Money-Back Guarantee', '100% Money-Back Guarantee', '2023-12-22 07:10:11', '2023-12-22 07:10:11');

-- --------------------------------------------------------

--
-- Table structure for table `cmn_twilio_configs`
--

DROP TABLE IF EXISTS `cmn_twilio_configs`;
CREATE TABLE IF NOT EXISTS `cmn_twilio_configs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `sid` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cmn_types`
--

DROP TABLE IF EXISTS `cmn_types`;
CREATE TABLE IF NOT EXISTS `cmn_types` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cmn_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cmn_types`
--

INSERT INTO `cmn_types` (`id`, `name`, `slug`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Product', 'product', 1, NULL, NULL, NULL, NULL),
(2, 'Voucher', 'voucher', 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cmn_user_balances`
--

DROP TABLE IF EXISTS `cmn_user_balances`;
CREATE TABLE IF NOT EXISTS `cmn_user_balances` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `balanceable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `balanceable_id` bigint UNSIGNED NOT NULL,
  `amount` decimal(12,2) NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `balance_type` tinyint NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cmn_user_balances_balanceable_type_balanceable_id_index` (`balanceable_type`,`balanceable_id`),
  KEY `cmn_user_balances_user_id_foreign` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hrm_departments`
--

DROP TABLE IF EXISTS `hrm_departments`;
CREATE TABLE IF NOT EXISTS `hrm_departments` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '0',
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hrm_departments_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hrm_departments`
--

INSERT INTO `hrm_departments` (`id`, `name`, `order`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(2, 'Counselling', 2, 1, 1, '2023-10-14 04:30:45', '2023-10-14 04:52:17');

-- --------------------------------------------------------

--
-- Table structure for table `hrm_designations`
--

DROP TABLE IF EXISTS `hrm_designations`;
CREATE TABLE IF NOT EXISTS `hrm_designations` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '0',
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hrm_designations_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hrm_designations`
--

INSERT INTO `hrm_designations` (`id`, `name`, `order`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(2, 'Senior Counsellor', 2, 1, 1, '2023-10-14 04:33:45', '2023-10-14 04:38:21');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_11_27_184012_create_sec_resources_table', 1),
(5, '2020_11_27_184157_create_sec_roles_table', 1),
(6, '2020_11_27_184348_create_sec_user_roles_table', 1),
(7, '2020_11_27_184630_create_sec_role_permission_infos_table', 1),
(8, '2020_11_27_184730_create_sec_resource_permissions_table', 1),
(9, '2020_11_27_184902_create_sec_role_permissions_table', 1),
(10, '2020_12_01_193358_add_new_column_users_table', 1),
(11, '2020_12_23_165116_add_new_columns_to_users', 1),
(12, '2021_01_05_163345_add_new_column_to_sec_role', 1),
(13, '2021_01_08_190858_add_new_column_sec_resources_and_sec_role_perm_info', 1),
(14, '2021_10_12_155950_create_hrm_departments_table', 1),
(15, '2021_10_13_092517_create_sch_service_categories_table', 1),
(16, '2021_10_13_175830_create_hrm_designations_table', 1),
(17, '2021_10_14_181034_create_cmn_companies_table', 1),
(18, '2021_10_15_063004_create_cmn_payment_types_table', 1),
(19, '2021_10_15_065043_create_cmn_branches_table', 1),
(20, '2021_10_17_045856_create_cmn_business_hours_table', 1),
(21, '2021_10_20_033418_create_cmn_paypal_api_configs_table', 1),
(22, '2021_10_20_033452_create_cmn_currency_setups_table', 1),
(23, '2021_10_20_101650_create_sch_employees_table', 1),
(24, '2021_10_20_143659_create_sch_services_table', 1),
(25, '2021_10_20_152840_create_sch_employee_schedules_table', 1),
(26, '2021_10_20_162746_create_sch_employee_services_table', 1),
(27, '2021_10_20_163303_create_sch_employee_offdays_table', 1),
(28, '2021_10_25_152303_alter_cmn_business_hours_table', 1),
(29, '2021_10_30_161513_create_cmn_customers_table', 1),
(30, '2021_10_30_182258_create_cmn_business_holidays_table', 1),
(31, '2021_11_10_150621_create_sch_service_bookings_table', 1),
(32, '2021_11_21_192012_create_cmn_payment_infos_table', 1),
(33, '2021_11_24_173750_create_site_menus_table', 1),
(34, '2021_11_25_175550_create_site_appearances_table', 1),
(35, '2021_11_27_034130_create_site_client_testimonials_table', 1),
(36, '2021_11_28_174549_create_site_photo_galleries_table', 1),
(37, '2021_11_29_150423_create_site_about_us_table', 1),
(38, '2021_11_29_150856_create_site_frequently_asked_questions_table', 1),
(39, '2021_11_29_173145_create_site_google_maps', 1),
(40, '2021_11_29_175219_create_site_terms_and_conditions_table', 1),
(41, '2021_11_30_174221_create_sec_user_branches_table', 1),
(42, '2022_01_03_150114_add_new_column_sch_employee_id_users_table', 1),
(43, '2022_01_22_085920_insert_or_update_user_role_other_init_info', 1),
(44, '2022_03_11_183147_update_site_frequently_asked_questions_table', 1),
(45, '2022_03_22_143034_create_cmn_stripe_api_configs_table', 1),
(46, '2022_03_22_180651_create_cmn_languages_table', 1),
(47, '2022_03_22_181433_create_cmn_translations_table', 1),
(48, '2022_04_15_153024_insert_update_version_updated_data_dependency', 1),
(49, '2022_04_16_091624_insert_translation_default_en_language', 1),
(50, '2022_04_25_182944_create_cmn_coupons_table', 1),
(51, '2022_05_07_184510_add_new_column_sch_employee_table', 1),
(52, '2022_05_07_185540_modify_column_sch_service_table', 1),
(53, '2022_05_09_163614_modify_column_sch_employee_table', 1),
(54, '2022_05_10_183751_change_table_sch_services_add_cupon_id', 1),
(55, '2022_05_12_172137_create_cmn_twillo_config_table', 1),
(56, '2022_05_12_232836_create_sch_salaries_table', 1),
(57, '2022_05_13_041333_add_column_sch_employee_table', 1),
(58, '2022_05_13_174511_change_sch_salaries_table_based_on', 1),
(59, '2022_05_14_183851_modify_cmn_twillo_config_table', 1),
(60, '2022_05_14_194151_create_st_otp_configurations_table', 1),
(61, '2022_05_14_200151_create_st_otp_messages_table', 1),
(62, '2022_05_14_201332_rename_table_twillo_to_twilio_config_table', 1),
(63, '2022_05_15_082549_add_column_st_otp_configuration_table', 1),
(64, '2022_05_15_095852_insert_data_otp_message_table', 1),
(65, '2022_05_15_180518_rename_table_cmn_twillo_config_to_cmn_twillo_configs', 1),
(66, '2022_05_17_174129_create_sch_service_booking_infos_table', 1),
(67, '2022_05_22_152017_create_categories_table', 1),
(68, '2022_05_22_152055_create_types_table', 1),
(69, '2022_05_22_191248_create_products_table', 1),
(70, '2022_05_22_191416_create_orders_table', 1),
(71, '2022_05_22_201437_create_cmn_order_details_table', 1),
(72, '2022_05_27_191340_insert_user_balance_in_payment_type_table', 1),
(73, '2022_05_28_223614_create_user_balances_table', 1),
(74, '2022_05_31_153222_add_new_column_sec_service_booking_info_table', 1),
(75, '2022_05_31_185949_insert_data_otp_message1_table', 1),
(76, '2022_06_08_172755_change_cmn_coupons_table_add_extra', 1),
(77, '2022_06_08_174255_create_sch_service_booking_feedback_table', 1),
(78, '2022_06_13_190935_insert_update_version_updated_data_dependency1', 1),
(79, '2022_06_28_082059_add_new_column_language_table', 1),
(80, '2022_07_12_092027_insert_update_version_updated_data_dependency2', 1),
(81, '2023_10_13_061624_create_cmn_razorpay_configs_table', 2),
(84, '2023_10_16_084140_add_new_column_in_site_menus', 3),
(90, '2023_10_17_082935_add_session_mode_in_sch_service_booking_infos', 5),
(94, '2023_10_18_081714_add_meeting_data_in_sch_service_booking_infos', 6),
(95, '2023_10_19_104841_add_gender_in_cmn_customers', 7),
(96, '2023_10_19_110047_add_education_in_sch_service_booking_infos', 8),
(98, '2023_10_19_110108_add_life_stage_in_sch_service_booking_infos', 9),
(99, '2023_10_19_110126_add_relationship_stage_in_sch_service_booking_infos', 10),
(109, '2023_10_20_060752_create_blog_categories_table', 11),
(110, '2023_10_20_060806_create_blog_tags_table', 11),
(111, '2023_10_20_075238_create_blogs_table', 11),
(112, '2023_10_27_062947_add_google_id_column_in_users', 12),
(113, '2023_11_03_120145_add_title_column_in__site_menu', 13),
(114, '2023_11_09_063019_add_meta_description_in_blog_categories', 14),
(115, '2023_11_09_063446_add_meta_image_in_blog_categories', 14),
(116, '2023_11_09_063604_add_meta_title_in_blog_categories', 14),
(117, '2023_11_09_063848_add_meta_keywords_in_blog_categories', 14),
(118, '2023_11_09_074021_add_meta_description_in_blog_tags', 15),
(119, '2023_11_09_074108_add_meta_image_in_blog_tags', 15),
(120, '2023_11_09_074146_add_meta_title_in_blog_tags', 15),
(121, '2023_11_09_074231_add_meta_keywords_in_blog_tags', 15),
(122, '2023_11_14_065430_add_slug_column_in_sch_services_table', 16),
(123, '2023_12_21_154524_edit_id_column_in_sch_service_booking_infos_table', 17),
(124, '2023_12_21_154636_edit_id_column_in_sch_service_bookings_table', 17);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sch_employees`
--

DROP TABLE IF EXISTS `sch_employees`;
CREATE TABLE IF NOT EXISTS `sch_employees` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `full_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cmn_branch_id` bigint UNSIGNED NOT NULL,
  `email_address` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_no` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hrm_department_id` bigint UNSIGNED DEFAULT NULL,
  `hrm_designation_id` bigint UNSIGNED DEFAULT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `gender` tinyint NOT NULL,
  `dob` date DEFAULT NULL,
  `specialist` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `present_address` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permanent_address` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pay_commission_based_on` tinyint NOT NULL DEFAULT '1',
  `target_service_amount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `passport` varchar(1500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_card` varchar(1500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commission` decimal(5,2) NOT NULL DEFAULT '0.00',
  `salary` decimal(9,2) NOT NULL DEFAULT '0.00',
  `status` tinyint NOT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sch_employees_employee_id_unique` (`employee_id`),
  KEY `sch_employees_user_id_foreign` (`user_id`),
  KEY `sch_employees_cmn_branch_id_foreign` (`cmn_branch_id`),
  KEY `sch_employees_hrm_department_id_foreign` (`hrm_department_id`),
  KEY `sch_employees_hrm_designation_id_foreign` (`hrm_designation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sch_employees`
--

INSERT INTO `sch_employees` (`id`, `full_name`, `image_url`, `employee_id`, `cmn_branch_id`, `email_address`, `country_code`, `contact_no`, `hrm_department_id`, `hrm_designation_id`, `user_id`, `gender`, `dob`, `specialist`, `present_address`, `permanent_address`, `note`, `pay_commission_based_on`, `target_service_amount`, `passport`, `id_card`, `commission`, `salary`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Demo Staff', 'uploadfiles/wdyGp9ndxy9J0J5kM0XYmKQReeP6q3GhRuiMM2Xv.jpg', '00001', 2, 'demo@example.com', NULL, '+8801111111111', 2, 2, NULL, 1, '2022-04-20', 'Example Specialist', '', '', '', 1, '0.00', NULL, NULL, '0.00', '0.00', 3, NULL, 1, NULL, '2023-10-17 23:09:40'),
(2, 'Mr. Sawan Chandra', 'uploadfiles/YQTReIMUZTKyaiW4yExbhaOTuPndkG0uZc56lt47.webp', '001', 2, 'enquiry@heycounsellor.com', NULL, '+911111117300999433', 2, 2, NULL, 1, '2024-03-25', 'Life Coaching, Academic Consultant, Motivational Speaker', '', '', '', 1, '0.00', NULL, NULL, '0.00', '0.00', 1, 1, 1, '2023-10-14 04:47:09', '2023-11-16 04:50:45');

-- --------------------------------------------------------

--
-- Table structure for table `sch_employee_offdays`
--

DROP TABLE IF EXISTS `sch_employee_offdays`;
CREATE TABLE IF NOT EXISTS `sch_employee_offdays` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `sch_employee_id` bigint UNSIGNED NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sch_employee_offdays_sch_employee_id_foreign` (`sch_employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sch_employee_schedules`
--

DROP TABLE IF EXISTS `sch_employee_schedules`;
CREATE TABLE IF NOT EXISTS `sch_employee_schedules` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `sch_employee_id` bigint UNSIGNED NOT NULL,
  `day` int NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `break_start_time` time NOT NULL,
  `break_end_time` time NOT NULL,
  `is_off_day` tinyint NOT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sch_employee_schedules_sch_employee_id_foreign` (`sch_employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sch_employee_schedules`
--

INSERT INTO `sch_employee_schedules` (`id`, `sch_employee_id`, `day`, `start_time`, `end_time`, `break_start_time`, `break_end_time`, `is_off_day`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(15, 1, 0, '07:00:00', '23:55:00', '01:50:00', '02:10:00', 0, 1, 1, '2021-12-20 07:40:25', '2021-12-20 07:41:15'),
(16, 1, 1, '07:00:00', '23:45:00', '01:50:00', '01:50:00', 0, 1, 1, '2021-12-20 07:40:25', '2021-12-20 07:41:15'),
(17, 1, 2, '07:00:00', '23:55:00', '01:50:00', '01:50:00', 0, 1, 1, '2021-12-20 07:40:25', '2021-12-20 07:41:15'),
(18, 1, 3, '07:00:00', '23:55:00', '01:50:00', '01:50:00', 0, 1, 1, '2021-12-20 07:40:25', '2021-12-20 07:41:15'),
(19, 1, 4, '07:00:00', '23:45:00', '01:50:00', '01:50:00', 0, 1, 1, '2021-12-20 07:40:25', '2021-12-20 07:41:15'),
(20, 1, 5, '07:00:00', '23:55:00', '01:50:00', '01:50:00', 1, 1, 1, '2021-12-20 07:40:25', '2021-12-20 07:41:15'),
(21, 1, 6, '07:00:00', '23:45:00', '01:50:00', '01:50:00', 0, 1, 1, '2021-12-20 07:40:25', '2021-12-20 07:41:15'),
(22, 2, 0, '09:30:00', '21:00:00', '13:30:00', '14:00:00', 1, 1, 1, '2023-10-14 04:47:09', '2023-10-14 05:36:08'),
(23, 2, 1, '09:30:00', '21:00:00', '13:30:00', '14:00:00', 0, 1, 1, '2023-10-14 04:47:09', '2023-10-14 05:36:08'),
(24, 2, 2, '09:30:00', '21:00:00', '13:30:00', '14:00:00', 0, 1, 1, '2023-10-14 04:47:09', '2023-10-14 05:36:08'),
(25, 2, 3, '09:30:00', '21:00:00', '13:30:00', '14:00:00', 0, 1, 1, '2023-10-14 04:47:09', '2023-10-14 05:36:08'),
(26, 2, 4, '09:30:00', '21:00:00', '13:30:00', '14:00:00', 0, 1, 1, '2023-10-14 04:47:09', '2023-10-14 05:36:08'),
(27, 2, 5, '09:30:00', '21:00:00', '13:30:00', '14:00:00', 0, 1, 1, '2023-10-14 04:47:09', '2023-10-14 05:36:08'),
(28, 2, 6, '09:30:00', '21:00:00', '13:30:00', '14:00:00', 0, 1, 1, '2023-10-14 04:47:09', '2023-10-14 05:36:08');

-- --------------------------------------------------------

--
-- Table structure for table `sch_employee_services`
--

DROP TABLE IF EXISTS `sch_employee_services`;
CREATE TABLE IF NOT EXISTS `sch_employee_services` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `sch_employee_id` bigint UNSIGNED NOT NULL,
  `sch_service_id` bigint UNSIGNED NOT NULL,
  `fees` decimal(18,2) NOT NULL DEFAULT '0.00',
  `status` tinyint NOT NULL DEFAULT '0',
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sch_employee_services_sch_employee_id_sch_service_id_unique` (`sch_employee_id`,`sch_service_id`),
  KEY `sch_employee_services_sch_service_id_foreign` (`sch_service_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sch_employee_services`
--

INSERT INTO `sch_employee_services` (`id`, `sch_employee_id`, `sch_service_id`, `fees`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(2, 2, 2, '1000.00', 1, 1, 1, '2023-10-14 04:47:09', '2023-11-16 04:50:45'),
(3, 2, 3, '2000.00', 1, 1, 1, '2023-10-14 04:47:09', '2023-11-16 04:50:45'),
(4, 2, 4, '10.00', 1, 1, 1, '2023-10-14 04:47:09', '2023-11-16 07:43:58'),
(5, 2, 5, '3000.00', 1, 1, 1, '2023-10-14 04:47:09', '2023-11-16 04:50:45'),
(6, 2, 6, '3500.00', 1, 1, 1, '2023-10-14 04:47:09', '2023-11-16 04:50:45'),
(7, 2, 7, '4500.00', 1, 1, 1, '2023-10-14 04:47:09', '2023-11-16 04:50:45'),
(8, 1, 2, '1000.00', 1, 1, NULL, '2023-10-17 23:09:40', '2023-10-17 23:09:40'),
(9, 1, 3, '2000.00', 1, 1, NULL, '2023-10-17 23:09:40', '2023-10-17 23:09:40'),
(10, 1, 4, '10.00', 1, 1, NULL, '2023-10-17 23:09:40', '2023-11-16 07:43:58'),
(11, 1, 5, '3000.00', 1, 1, NULL, '2023-10-17 23:09:40', '2023-10-17 23:09:40'),
(12, 1, 6, '3500.00', 1, 1, NULL, '2023-10-17 23:09:40', '2023-10-17 23:09:40'),
(13, 1, 7, '4500.00', 1, 1, NULL, '2023-10-17 23:09:40', '2023-10-17 23:09:40');

-- --------------------------------------------------------

--
-- Table structure for table `sch_salaries`
--

DROP TABLE IF EXISTS `sch_salaries`;
CREATE TABLE IF NOT EXISTS `sch_salaries` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `sch_employee_id` bigint UNSIGNED NOT NULL,
  `year` int NOT NULL,
  `month` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `basic_salary` decimal(12,2) NOT NULL,
  `total_service` int NOT NULL,
  `total_service_amount` decimal(8,2) NOT NULL,
  `commission` decimal(12,2) NOT NULL,
  `commission_amount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `pay_commission_based_on` tinyint NOT NULL,
  `addition` decimal(12,2) NOT NULL,
  `total_salary` decimal(8,2) NOT NULL,
  `deduction` decimal(12,2) NOT NULL,
  `netpay` decimal(8,2) NOT NULL,
  `is_paid` tinyint NOT NULL DEFAULT '0',
  `paid_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sch_services`
--

DROP TABLE IF EXISTS `sch_services`;
CREATE TABLE IF NOT EXISTS `sch_services` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(1500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sch_service_category_id` bigint UNSIGNED NOT NULL,
  `visibility` tinyint NOT NULL DEFAULT '1',
  `price` decimal(18,2) NOT NULL,
  `cmn_coupon_id` bigint UNSIGNED DEFAULT NULL,
  `cmn_coupon_amount` bigint UNSIGNED DEFAULT NULL,
  `duration_in_days` int NOT NULL DEFAULT '0',
  `duration_in_time` time NOT NULL DEFAULT '00:00:00',
  `time_slot_in_time` time NOT NULL,
  `padding_time_before` time NOT NULL DEFAULT '00:00:00',
  `padding_time_after` time NOT NULL DEFAULT '00:00:00',
  `appoinntment_limit_type` int NOT NULL DEFAULT '0',
  `appoinntment_limit` int NOT NULL DEFAULT '0',
  `minimum_time_required_to_booking_in_days` int NOT NULL DEFAULT '0',
  `minimum_time_required_to_booking_in_time` time NOT NULL DEFAULT '00:00:00',
  `minimum_time_required_to_cancel_in_days` int NOT NULL DEFAULT '0',
  `minimum_time_required_to_cancel_in_time` time NOT NULL DEFAULT '00:00:00',
  `remarks` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sch_services_sch_service_category_id_foreign` (`sch_service_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sch_services`
--

INSERT INTO `sch_services` (`id`, `title`, `image`, `sch_service_category_id`, `visibility`, `price`, `cmn_coupon_id`, `cmn_coupon_amount`, `duration_in_days`, `duration_in_time`, `time_slot_in_time`, `padding_time_before`, `padding_time_after`, `appoinntment_limit_type`, `appoinntment_limit`, `minimum_time_required_to_booking_in_days`, `minimum_time_required_to_booking_in_time`, `minimum_time_required_to_cancel_in_days`, `minimum_time_required_to_cancel_in_time`, `remarks`, `created_by`, `updated_by`, `created_at`, `updated_at`, `slug`) VALUES
(2, 'Counselling for Relationship Issues', 'uploadfiles/qnk9kQP9xWRcKqgAOsCRXauuASkVtfjsDW41vsdn.jpg', 1, 1, '1000.00', NULL, NULL, 0, '01:00:00', '01:01:00', '00:15:00', '00:15:00', 0, 0, 0, '01:00:00', 0, '00:30:00', 'If you are facing complications in your relationship and not able to fix the issues which is killing your mental peace and making you uncomfortable to lead a happy life, Connect us to get relationship counselling from our expert life coaches who will help you to resolve your relationship issues and bring back the sparks of the relationship that is highly required for mental well-being. Don&#039;t hesitate to connect us and get relationship issues resolved.', NULL, NULL, '2023-10-14 04:10:01', '2023-11-14 01:32:56', 'counselling-for-relationship-issues'),
(3, 'Counselling for Love-Related Issues', 'uploadfiles/dIBoa0SZ9Ge7MZifgNWBuponLGnXiGj79FcQWhYr.jpg', 1, 1, '2000.00', NULL, NULL, 0, '01:00:00', '01:01:00', '00:15:00', '00:15:00', 0, 0, 0, '01:00:00', 0, '00:30:00', 'Are you struggling in your love-life or your love has become toxic for you while making your social and personal life uncomfortable. Do you want to resolve this issue to get mental peace or want to move on to get a better life. Hey Counsellor&rsquo;s life coaches have resolved many love-related issues and make their life happier. If you also want to resolve your love-related issues, don&#039;t think much and resolve it now. Book your session now and connect Hey counsellor now.', NULL, NULL, '2023-10-14 04:12:05', '2023-11-14 01:32:52', 'counselling-for-love-related-issues'),
(4, 'Counselling for Personal Life Issues', 'uploadfiles/A3FbYaJQ1WPfMFwSu7l1g9z9BZcvf1LJVm7zAuvl.jpg', 1, 1, '10.00', NULL, NULL, 0, '01:00:00', '01:01:00', '00:15:00', '00:15:00', 0, 0, 0, '01:00:00', 0, '00:30:00', 'If you&#039;re facing personal life issues and feeling uncomfortable, and not able to resolve these personal life issues yourself, A counselling session with our professional life coach can help you to resolve your issues and develop a positive habit while removing the negativity from life. Remember, seeking help is a sign of strength, and taking the first step towards resolving your personal life issues can lead to a brighter future.', NULL, NULL, '2023-10-14 04:13:21', '2023-11-16 07:43:58', 'counselling-for-personal-life-issues'),
(5, 'Counselling for Emotional Balance', 'uploadfiles/eUz5lpCKEXqR2FoRgme1ejZOZs2vEV0Gm7hE55wZ.jpg', 1, 1, '3000.00', NULL, NULL, 0, '01:00:00', '01:01:00', '00:15:00', '00:15:00', 0, 0, 0, '01:00:00', 0, '00:30:00', 'Are you feeling uncomfortable, depressed, or anxious for a long time, and not able to get back the positivity of life? If you want to make yourself emotionally strong and don&#039;t want to waste your life due to emotional imbalance, Talk to our life coach who will help you to identify the root causes of your emotions and develop strategies to manage them. Seeking consultation for emotional balance is a positive step towards taking care of your mental health and improving your overall well-being.', NULL, NULL, '2023-10-14 04:14:49', '2023-11-16 07:39:39', 'counselling-for-emotional-balance'),
(6, 'Counselling for Decision Making', 'uploadfiles/9ADTCM82v4pQd1dJl9xs1SrXJ5ja26E0pYrry1Rs.jpg', 1, 1, '3500.00', NULL, NULL, 0, '01:00:00', '01:01:00', '00:15:00', '00:15:00', 0, 0, 0, '00:59:00', 0, '00:30:00', 'Having confusion in life is completely normal But making decisions about important aspects of life can lead to problems in life .It may lead to experiencing a range of emotions, but sometimes they can become difficult to handle on our own. Consulting with expert psychologists can provide valuable insights and perspectives, which can help in making the right decision of life. Additionally, consultation can help in reducing risk and increasing the chances of success.', NULL, NULL, '2023-10-14 04:16:18', '2023-11-15 05:03:24', 'counselling-for-decision-making'),
(7, 'Counselling  for Bullying or Ragging', 'uploadfiles/CNrvPbpuHPBiNm27DaDPQ3ov3E6V1NXl2jY6UyNe.jpg', 1, 1, '4500.00', NULL, NULL, 0, '01:00:00', '01:01:00', '00:15:00', '00:15:00', 0, 0, 0, '01:00:00', 0, '00:30:00', 'If you are experiencing bullying in your workplace, it is important to seek help, During a consultation, you will have the opportunity to discuss your situation in a safe and confidential environment. A trained and trusted professional can help you identify your options and develop a plan for addressing the issue. Remember, you have the right to work in an environment free from bullying and harassment. Don&#039;t suffer in silence. Seek a consultation today.', NULL, NULL, '2023-10-14 04:17:26', '2023-11-14 01:32:25', 'counselling-for-bullying-or-ragging');

-- --------------------------------------------------------

--
-- Table structure for table `sch_service_bookings`
--

DROP TABLE IF EXISTS `sch_service_bookings`;
CREATE TABLE IF NOT EXISTS `sch_service_bookings` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `cmn_branch_id` bigint UNSIGNED NOT NULL,
  `cmn_customer_id` bigint UNSIGNED NOT NULL,
  `sch_employee_id` bigint UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `sch_service_id` bigint UNSIGNED NOT NULL,
  `status` tinyint NOT NULL,
  `service_amount` decimal(18,2) NOT NULL,
  `paid_amount` decimal(18,2) NOT NULL DEFAULT '0.00',
  `payment_status` tinyint NOT NULL,
  `cmn_payment_type_id` bigint UNSIGNED NOT NULL,
  `canceled_paid_amount` decimal(18,2) NOT NULL DEFAULT '0.00',
  `cancel_paid_status` tinyint NOT NULL,
  `cancel_cmn_payment_type_id` bigint UNSIGNED DEFAULT NULL,
  `remarks` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sch_service_booking_info_id` bigint UNSIGNED NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sch_service_bookings_cmn_branch_id_foreign` (`cmn_branch_id`),
  KEY `sch_service_bookings_cmn_customer_id_foreign` (`cmn_customer_id`),
  KEY `sch_service_bookings_sch_employee_id_foreign` (`sch_employee_id`),
  KEY `sch_service_bookings_sch_service_id_foreign` (`sch_service_id`),
  KEY `sch_service_bookings_cmn_payment_type_id_foreign` (`cmn_payment_type_id`),
  KEY `sch_service_bookings_cancel_cmn_payment_type_id_foreign` (`cancel_cmn_payment_type_id`),
  KEY `fk_sch_service_booking_sch_service_booking_info_id` (`sch_service_booking_info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1375 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sch_service_booking_feedback`
--

DROP TABLE IF EXISTS `sch_service_booking_feedback`;
CREATE TABLE IF NOT EXISTS `sch_service_booking_feedback` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `sch_service_booking_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `hash_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` decimal(3,1) NOT NULL DEFAULT '0.0',
  `feedback` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sch_sb_id` (`sch_service_booking_id`),
  KEY `sch_service_booking_feedback_user_id_foreign` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sch_service_booking_infos`
--

DROP TABLE IF EXISTS `sch_service_booking_infos`;
CREATE TABLE IF NOT EXISTS `sch_service_booking_infos` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `booking_date` date NOT NULL,
  `total_amount` decimal(18,2) NOT NULL,
  `paid_amount` decimal(18,2) NOT NULL,
  `due_amount` decimal(18,2) NOT NULL DEFAULT '0.00',
  `coupon_code` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_discount` decimal(18,2) NOT NULL DEFAULT '0.00',
  `is_due_paid` tinyint NOT NULL DEFAULT '0',
  `remarks` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cmn_customer_id` bigint UNSIGNED DEFAULT NULL,
  `payable_amount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `session_mode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `meeting_data` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `education` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `life_stage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `relationship_stage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sch_service_booking_infos_cmn_customer_id_foreign` (`cmn_customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1375 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sch_service_categories`
--

DROP TABLE IF EXISTS `sch_service_categories`;
CREATE TABLE IF NOT EXISTS `sch_service_categories` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int DEFAULT NULL,
  `modified_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sch_service_categories_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sch_service_categories`
--

INSERT INTO `sch_service_categories` (`id`, `name`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(1, 'Counselling Category', NULL, NULL, '2021-10-26 02:38:20', '2023-11-14 04:23:20');

-- --------------------------------------------------------

--
-- Table structure for table `sec_resources`
--

DROP TABLE IF EXISTS `sec_resources`;
CREATE TABLE IF NOT EXISTS `sec_resources` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sec_resource_id` int DEFAULT NULL,
  `sec_module_id` int DEFAULT NULL,
  `status` tinyint NOT NULL,
  `serial` int NOT NULL,
  `level` int DEFAULT NULL,
  `method` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sec_resources`
--

INSERT INTO `sec_resources` (`id`, `name`, `display_name`, `sec_resource_id`, `sec_module_id`, `status`, `serial`, `level`, `method`, `icon`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Dashboard', 'Dashboard', NULL, 1, 1, 0, 1, '', 'fas fa-tachometer-alt', 1, NULL, NULL, NULL),
(2, 'dashboard.blade.php', 'Main Dashboard', 1, 1, 1, 1, 2, 'home', NULL, 1, NULL, NULL, NULL),
(3, 'User Management', 'User Management', NULL, 1, 1, 1, 1, '', 'fas fa-user-shield', 1, 1, NULL, '2021-10-11 05:22:17'),
(4, 'user.blade.php', 'User Info', 3, 1, 1, 0, 2, 'user.info', NULL, 1, NULL, NULL, NULL),
(5, 'role.blade.php', 'Role Info', 3, 1, 1, 1, 2, 'role', NULL, 1, NULL, NULL, NULL),
(6, 'role_permission.blade.php', 'Role Permission', 3, 1, 1, 2, 2, 'role.permission', NULL, 1, NULL, NULL, NULL),
(7, 'Top Menu Settings', 'Settings', NULL, 1, 1, 3, 1, '', 'fas fa-cogs', 1, 1, '2021-10-12 03:48:55', '2021-10-19 21:12:03'),
(8, 'department.blade.php', 'Department', 7, 1, 1, 1, 2, 'department', NULL, 1, NULL, '2021-10-12 03:51:03', '2021-10-12 03:51:03'),
(9, 'designation.blade.php', 'Designation', 7, 1, 1, 2, 2, 'designation', NULL, 1, NULL, '2021-10-13 04:59:45', '2021-10-13 04:59:45'),
(10, 'company.blade.php', 'Company', 7, 1, 1, 3, 2, 'company', NULL, 1, NULL, '2021-10-18 03:29:57', '2021-10-18 03:29:57'),
(11, 'business-hour.blade.php', 'Business Hour', 7, 1, 1, 3, 2, 'business.hour', NULL, 1, NULL, '2021-10-18 03:35:29', '2021-10-18 03:35:29'),
(12, 'Top Menu Service', 'Service', NULL, 1, 1, 4, 1, '', 'fas fa-briefcase', 1, 1, '2021-10-18 03:39:17', '2021-10-19 21:12:17'),
(13, 'category.blade.php', 'Category', 12, 1, 1, 1, 2, 'category', NULL, 1, NULL, '2021-10-18 05:30:39', '2021-10-18 05:30:39'),
(14, 'service.blade.php', 'Add Service', 12, 1, 1, 2, 2, 'service', '', 1, 1, '2021-10-18 06:56:25', '2021-10-30 04:41:24'),
(15, 'Top Menu Employee', 'Staff / Employee', NULL, 1, 1, 5, 1, '', 'fas fa-user-tie', 1, 1, '2021-10-19 21:10:40', '2021-10-19 21:12:29'),
(16, 'employee.blade.php', 'Staff Manage', 15, 1, 1, 1, 2, 'employee', NULL, 1, NULL, '2021-10-19 21:13:39', '2021-10-19 21:13:39'),
(17, 'business-holiday.blade.php', 'Business Holiday', 7, 1, 1, 4, 2, 'business.holiday', '', 1, 1, '2021-10-30 06:49:01', '2021-10-30 06:51:42'),
(18, 'branch.blade.php', 'Branch', 7, 1, 1, 1, 2, 'branch', NULL, 1, NULL, '2021-10-31 05:41:05', '2021-10-31 05:41:05'),
(19, 'Top Menu Service Booking', 'Service Booking', NULL, 1, 1, 6, 1, 'service.booking', 'far fa-calendar-alt', 1, 1, '2021-11-10 05:18:04', '2021-11-10 05:23:34'),
(20, 'booking-calendar.blade.php', 'Booking Calendar', 19, 1, 1, 1, 2, 'booking.calendar', '', 1, 1, '2021-11-10 05:18:58', '2021-11-10 05:23:24'),
(22, 'customer.blade.php', 'Add Customer', 23, 1, 1, 1, 2, 'customer', '', 1, 1, '2021-11-14 06:37:21', '2021-11-14 06:43:38'),
(23, 'Top Menu Customer', 'Customer', NULL, 1, 1, 5, 1, 'top.customer', 'fas fa-hands-helping', 1, NULL, '2021-11-14 06:42:53', '2021-11-14 06:42:53'),
(24, 'Top Menu Website', 'Website', NULL, 1, 1, 8, 1, 'website', 'fas fa-globe-africa', 1, NULL, '2021-12-12 06:57:30', '2021-12-12 06:57:30'),
(25, 'appearance.blade.php', 'Appearance', 24, 1, 1, 1, 2, 'website.appearance', NULL, 1, NULL, '2021-12-12 07:01:26', '2021-12-12 07:01:26'),
(26, 'about-us.blade.php', 'About Us', 24, 1, 1, 2, 2, 'website.aboutus', NULL, 1, NULL, '2021-12-18 02:18:52', '2021-12-18 02:18:52'),
(27, 'client-testimonial.blade.php', 'Client Testimonial', 24, 1, 1, 3, 2, 'website.client.testimonial', NULL, 1, NULL, '2021-12-19 04:23:07', '2021-12-19 04:23:07'),
(28, 'frequently-asked-question.blade.php', 'FAQ', 24, 1, 1, 4, 2, 'website.frequently.asked.question', '', 1, 1, '2021-12-21 07:31:47', '2021-12-21 07:53:33'),
(29, 'google-map.blade.php', 'Google Map', 24, 1, 1, 5, 2, 'website.google.map', '', 1, 1, '2021-12-21 17:40:11', '2021-12-21 17:44:03'),
(30, 'photo-gallery.blade.php', 'Photo Gallery', 24, 1, 1, 6, 2, 'website.photo.gallery', '', 1, 1, '2021-12-21 18:30:30', '2021-12-21 18:33:37'),
(31, 'terms-and-condition.blade.php', 'Terms & Condition', 24, 1, 1, 6, 2, 'website.terms.and.condition', '', 1, 1, '2021-12-22 04:34:22', '2021-12-22 04:35:04'),
(32, 'website.menu.blade.php', 'Website Menu', 24, 1, 1, 0, 2, 'website.menu', NULL, 1, NULL, '2021-12-23 03:40:46', '2021-12-23 03:40:46'),
(33, 'Top Menu Payment', 'Payment', NULL, 1, 1, 7, 1, '', 'fas fa-dollar-sign', 1, NULL, '2021-12-23 20:43:20', '2021-12-23 20:43:20'),
(34, 'payment-config.blade.php', 'Payment Setup', 33, 1, 1, 1, 2, 'payment.config', NULL, 1, NULL, '2021-12-23 20:49:55', '2021-12-23 20:49:55'),
(36, 'service-booking-info.blade.php', 'Booking Info', 19, 1, 1, 2, 2, 'service.booking.info', NULL, 1, NULL, '2022-01-04 02:56:26', '2022-01-04 02:56:26'),
(37, 'email.configuration.blade.php', 'Email Configuration', 24, 1, 1, 3, 2, 'email.configuration', '', 1, 1, '2022-01-08 06:20:44', '2022-01-08 06:21:31'),
(38, 'language.blade.php', 'Language', 7, 1, 1, 7, 2, 'language', '', 1, 1, '2022-03-23 05:09:59', '2022-03-23 05:12:34'),
(39, 'E-Commerce', 'E-Commerce', NULL, 1, 1, 8, 1, '', 'fas fa-cart-arrow-down', 1, NULL, '2022-06-03 07:24:07', '2022-06-03 07:24:07'),
(40, 'coupon.blade.php', 'Coupon', 39, 1, 1, 1, 2, 'coupons', '', 1, NULL, '2022-06-03 07:26:22', '2022-06-03 07:26:22'),
(41, 'order.blade.php', 'Order Info', 39, 1, 1, 2, 2, 'orders.index', '', 1, 1, '2022-06-03 07:31:52', '2022-06-11 05:52:50'),
(42, 'salaries.blade.php', 'Salary', 15, 1, 1, 2, 2, 'employee.salaries', '', 1, NULL, '2022-06-03 08:00:39', '2022-06-03 08:00:39'),
(43, 'product.blade.php', 'Product', 39, 1, 1, 3, 2, 'products.index', '', 1, NULL, '2022-06-11 05:53:34', '2022-06-11 05:53:34'),
(44, 'OTP', 'OTP', NULL, 1, 1, 8, 1, '', 'far fa-envelope', 1, 1, '2022-07-11 21:00:16', '2022-07-11 21:17:21'),
(45, 'index.blade.php', 'Twilio Configuration', 44, 1, 1, 1, 2, 'sms.index', '', 1, NULL, '2022-07-11 21:05:41', '2022-07-11 21:05:41'),
(46, 'otp.blade.php', 'OTP Customization', 44, 1, 1, 2, 2, 'sms.otp', '', 1, 1, '2022-07-11 21:11:19', '2022-07-11 21:13:57');

-- --------------------------------------------------------

--
-- Table structure for table `sec_resource_permissions`
--

DROP TABLE IF EXISTS `sec_resource_permissions`;
CREATE TABLE IF NOT EXISTS `sec_resource_permissions` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `display_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sec_resource_id` bigint UNSIGNED DEFAULT NULL,
  `sec_role_id` bigint UNSIGNED DEFAULT NULL,
  `status` tinyint NOT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sec_resource_permissions_sec_role_id_foreign` (`sec_role_id`),
  KEY `sec_resource_permissions_sec_resource_id_foreign` (`sec_resource_id`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sec_resource_permissions`
--

INSERT INTO `sec_resource_permissions` (`id`, `display_name`, `sec_resource_id`, `sec_role_id`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Dashboard', 1, 1, 1, 1, NULL, NULL, NULL),
(2, 'Main Dashboard', 2, 1, 1, 1, NULL, NULL, '2021-12-24 19:21:20'),
(3, 'User Management', 3, 1, 1, 1, NULL, NULL, NULL),
(4, 'User Info', 4, 1, 1, 1, NULL, NULL, NULL),
(5, 'Role Info', 5, 1, 1, 1, NULL, NULL, NULL),
(6, 'Role Permission', 6, 1, 1, 1, NULL, NULL, NULL),
(7, 'Dashboard', 1, 3, 1, 1, 1, NULL, '2022-01-14 06:52:00'),
(8, 'User Dashboard', 2, 3, 1, 1, 1, NULL, '2022-01-14 06:52:00'),
(9, 'User Management', 3, 3, 0, 1, 1, NULL, '2022-01-14 06:57:37'),
(10, 'User Info', 4, 3, 0, 1, 1, NULL, '2022-01-14 06:57:37'),
(11, 'Role Info', 5, 3, 0, 1, 1, NULL, '2022-01-14 06:57:37'),
(12, 'Role Permission', 6, 3, 0, 1, 1, NULL, '2022-01-14 06:57:37'),
(13, 'Dashboard', 1, 2, 1, 1, NULL, NULL, NULL),
(14, 'Main Dashboard', 2, 2, 1, 1, NULL, NULL, '2021-12-24 19:18:34'),
(15, 'User Management', 3, 2, 0, 1, 1, NULL, '2022-01-14 06:56:16'),
(16, 'User Info', 4, 2, 0, 1, 1, NULL, '2022-01-14 06:56:16'),
(17, 'Role Info', 5, 2, 0, 1, 1, NULL, '2022-01-14 06:56:16'),
(18, 'Role Permission', 6, 2, 0, 1, 1, NULL, '2022-01-14 06:56:16'),
(19, 'Settings', 7, 1, 1, 1, NULL, '2021-10-12 03:49:38', NULL),
(20, 'Department', 8, 1, 1, 1, NULL, '2021-10-12 03:53:39', NULL),
(21, 'Designation', 9, 1, 1, 1, NULL, '2021-10-13 05:00:07', NULL),
(22, 'Company', 10, 1, 1, 1, NULL, '2021-10-18 04:04:23', NULL),
(23, 'Business Hour', 11, 1, 1, 1, NULL, '2021-10-18 04:04:23', NULL),
(24, 'Service', 12, 1, 1, 1, NULL, '2021-10-18 04:04:23', NULL),
(25, 'Category', 13, 1, 1, 1, NULL, '2021-10-19 21:17:07', NULL),
(26, 'Service', 14, 1, 1, 1, 1, '2021-10-19 21:17:07', '2021-10-30 04:42:00'),
(27, 'Staff / Employee', 15, 1, 1, 1, NULL, '2021-10-19 21:17:07', NULL),
(28, 'Staff Manage', 16, 1, 1, 1, NULL, '2021-10-19 21:17:07', NULL),
(29, 'Business Holiday', 17, 1, 1, 1, NULL, '2021-10-30 06:52:02', NULL),
(30, 'Branch', 18, 1, 1, 1, NULL, '2021-10-31 05:44:48', NULL),
(31, 'Service Booking', 19, 1, 1, 1, NULL, '2021-11-10 05:20:42', NULL),
(32, 'Booking Calendar', 20, 1, 1, 1, NULL, '2021-11-10 05:20:42', NULL),
(33, 'Customer', 23, 1, 1, 1, NULL, '2021-11-14 06:43:50', NULL),
(34, 'Add Customer', 22, 1, 1, 1, NULL, '2021-11-14 06:43:50', NULL),
(35, 'Website', 24, 1, 1, 1, NULL, '2021-12-12 06:58:01', NULL),
(36, 'Appearance', 25, 1, 1, 1, NULL, '2021-12-12 07:05:19', NULL),
(37, 'About Us', 26, 1, 1, 1, NULL, '2021-12-18 02:19:11', NULL),
(38, 'Client Testimonial', 27, 1, 1, 1, NULL, '2021-12-19 04:23:30', NULL),
(39, 'FAQ', 28, 1, 1, 1, NULL, '2021-12-21 07:53:53', NULL),
(40, 'Google Map', 29, 1, 1, 1, NULL, '2021-12-21 17:41:05', NULL),
(41, 'Photo Gallery', 30, 1, 1, 1, NULL, '2021-12-21 18:31:33', NULL),
(42, 'Terms & Condition', 31, 1, 1, 1, NULL, '2021-12-22 04:35:42', NULL),
(43, 'Website Menu', 32, 1, 1, 1, NULL, '2021-12-23 03:41:02', NULL),
(44, 'Payment', 33, 1, 1, 1, NULL, '2021-12-23 20:43:49', NULL),
(45, 'Payment Setup', 34, 1, 1, 1, NULL, '2021-12-24 02:52:54', NULL),
(46, 'Settings', 7, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(47, 'Department', 8, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(48, 'Branch', 18, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(49, 'Designation', 9, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(50, 'Company', 10, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(51, 'Business Hour', 11, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(52, 'Business Holiday', 17, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(53, 'Service', 12, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(54, 'Category', 13, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(55, 'Add Service', 14, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(56, 'Staff / Employee', 15, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(57, 'Staff Manage', 16, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(58, 'Customer', 23, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(59, 'Add Customer', 22, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(60, 'Service Booking', 19, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(61, 'Booking Calendar', 20, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(62, 'Payment', 33, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(63, 'Payment Setup', 34, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(64, 'Website', 24, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(65, 'Website Menu', 32, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(66, 'Appearance', 25, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(67, 'About Us', 26, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(68, 'Client Testimonial', 27, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(69, 'FAQ', 28, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(70, 'Google Map', 29, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(71, 'Photo Gallery', 30, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(72, 'Terms & Condition', 31, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(74, 'Booking Info', 36, 1, 1, 1, NULL, '2022-01-04 03:44:41', NULL),
(75, 'Email Configuration', 37, 1, 1, 1, NULL, '2022-01-08 06:22:14', NULL),
(76, 'Settings', 7, 3, 1, 1, NULL, '2022-01-14 06:51:34', NULL),
(77, 'Department', 8, 3, 1, 1, NULL, '2022-01-14 06:51:34', NULL),
(78, 'Branch', 18, 3, 1, 1, NULL, '2022-01-14 06:51:34', NULL),
(79, 'Designation', 9, 3, 1, 1, NULL, '2022-01-14 06:51:34', NULL),
(80, 'Company', 10, 3, 1, 1, NULL, '2022-01-14 06:51:34', NULL),
(81, 'Business Hour', 11, 3, 1, 1, NULL, '2022-01-14 06:51:34', NULL),
(82, 'Business Holiday', 17, 3, 1, 1, NULL, '2022-01-14 06:51:34', NULL),
(83, 'Service', 12, 3, 1, 1, NULL, '2022-01-14 06:51:34', NULL),
(84, 'Category', 13, 3, 1, 1, NULL, '2022-01-14 06:51:34', NULL),
(85, 'Add Service', 14, 3, 1, 1, NULL, '2022-01-14 06:51:34', NULL),
(86, 'Staff / Employee', 15, 3, 1, 1, NULL, '2022-01-14 06:51:34', NULL),
(87, 'Staff Manage', 16, 3, 1, 1, NULL, '2022-01-14 06:51:34', NULL),
(88, 'Customer', 23, 3, 1, 1, NULL, '2022-01-14 06:51:34', NULL),
(89, 'Add Customer', 22, 3, 1, 1, NULL, '2022-01-14 06:51:34', NULL),
(90, 'Service Booking', 19, 3, 1, 1, NULL, '2022-01-14 06:51:34', NULL),
(91, 'Booking Calendar', 20, 3, 1, 1, NULL, '2022-01-14 06:51:34', NULL),
(92, 'Booking Info', 36, 3, 1, 1, NULL, '2022-01-14 06:51:34', NULL),
(93, 'Payment', 33, 3, 0, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:57:37'),
(94, 'Payment Setup', 34, 3, 0, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:57:37'),
(95, 'Website', 24, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:56:43'),
(96, 'Website Menu', 32, 3, 0, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:57:37'),
(97, 'Appearance', 25, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:56:43'),
(98, 'About Us', 26, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:56:43'),
(99, 'Client Testimonial', 27, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:56:43'),
(100, 'Email Configuration', 37, 3, 0, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:57:37'),
(101, 'FAQ', 28, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:56:43'),
(102, 'Google Map', 29, 3, 0, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:57:37'),
(103, 'Photo Gallery', 30, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:56:43'),
(104, 'Terms & Condition', 31, 3, 0, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:57:37'),
(105, 'Booking Info', 36, 2, 1, 1, NULL, '2022-01-14 06:56:16', NULL),
(106, 'Email Configuration', 37, 2, 1, 1, NULL, '2022-01-14 06:56:16', NULL),
(107, 'Dashboard', 1, 4, 1, 1, NULL, '2022-01-14 06:58:41', NULL),
(108, 'Main Dashboard', 2, 4, 1, 1, NULL, '2022-01-14 06:58:41', NULL),
(109, 'User Management', 3, 4, 0, 1, 1, '2022-01-14 06:58:41', '2022-01-14 07:10:16'),
(110, 'User Info', 4, 4, 0, 1, 1, '2022-01-14 06:58:41', '2022-01-14 07:10:16'),
(111, 'Role Info', 5, 4, 0, 1, 1, '2022-01-14 06:58:41', '2022-01-14 07:10:16'),
(112, 'Role Permission', 6, 4, 0, 1, 1, '2022-01-14 06:58:41', '2022-01-14 07:10:16'),
(113, 'Settings', 7, 4, 0, 1, 1, '2022-01-14 06:58:41', '2022-01-14 07:10:16'),
(114, 'Department', 8, 4, 0, 1, 1, '2022-01-14 06:58:41', '2022-01-14 07:10:16'),
(115, 'Branch', 18, 4, 0, 1, 1, '2022-01-14 06:58:41', '2022-01-14 07:10:16'),
(116, 'Designation', 9, 4, 0, 1, 1, '2022-01-14 06:58:41', '2022-01-14 07:10:16'),
(117, 'Company', 10, 4, 0, 1, 1, '2022-01-14 06:58:41', '2022-01-14 07:10:16'),
(118, 'Business Hour', 11, 4, 0, 1, 1, '2022-01-14 06:58:41', '2022-01-14 07:10:16'),
(119, 'Business Holiday', 17, 4, 0, 1, 1, '2022-01-14 06:58:41', '2022-01-14 07:10:16'),
(120, 'Service', 12, 4, 0, 1, 1, '2022-01-14 06:58:41', '2022-01-14 07:10:16'),
(121, 'Category', 13, 4, 0, 1, 1, '2022-01-14 06:58:41', '2022-01-14 07:10:16'),
(122, 'Add Service', 14, 4, 0, 1, 1, '2022-01-14 06:58:41', '2022-01-14 07:10:16'),
(123, 'Staff / Employee', 15, 4, 0, 1, 1, '2022-01-14 06:58:41', '2022-01-14 07:10:16'),
(124, 'Staff Manage', 16, 4, 0, 1, 1, '2022-01-14 06:58:41', '2022-01-14 07:10:16'),
(125, 'Customer', 23, 4, 0, 1, 1, '2022-01-14 06:58:41', '2022-01-14 07:10:16'),
(126, 'Add Customer', 22, 4, 0, 1, 1, '2022-01-14 06:58:41', '2022-01-14 07:10:16'),
(127, 'Service Booking', 19, 4, 1, 1, NULL, '2022-01-14 06:58:41', NULL),
(128, 'Booking Calendar', 20, 4, 1, 1, NULL, '2022-01-14 06:58:41', NULL),
(129, 'Booking Info', 36, 4, 1, 1, NULL, '2022-01-14 06:58:41', NULL),
(130, 'Payment', 33, 4, 0, 1, 1, '2022-01-14 06:58:41', '2022-01-14 07:10:16'),
(131, 'Payment Setup', 34, 4, 0, 1, 1, '2022-01-14 06:58:41', '2022-01-14 07:10:16'),
(132, 'Website', 24, 4, 0, 1, 1, '2022-01-14 06:58:41', '2022-01-14 07:10:16'),
(133, 'Website Menu', 32, 4, 0, 1, 1, '2022-01-14 06:58:41', '2022-01-14 07:10:16'),
(134, 'Appearance', 25, 4, 0, 1, 1, '2022-01-14 06:58:41', '2022-01-14 07:10:16'),
(135, 'About Us', 26, 4, 0, 1, 1, '2022-01-14 06:58:41', '2022-01-14 07:10:16'),
(136, 'Client Testimonial', 27, 4, 0, 1, 1, '2022-01-14 06:58:41', '2022-01-14 07:10:16'),
(137, 'Email Configuration', 37, 4, 0, 1, 1, '2022-01-14 06:58:41', '2022-01-14 07:10:16'),
(138, 'FAQ', 28, 4, 0, 1, 1, '2022-01-14 06:58:41', '2022-01-14 07:10:16'),
(139, 'Google Map', 29, 4, 0, 1, 1, '2022-01-14 06:58:41', '2022-01-14 07:10:16'),
(140, 'Photo Gallery', 30, 4, 0, 1, 1, '2022-01-14 06:58:41', '2022-01-14 07:10:16'),
(141, 'Terms & Condition', 31, 4, 0, 1, 1, '2022-01-14 06:58:41', '2022-01-14 07:10:16'),
(142, 'Language', 38, 1, 1, 1, NULL, '2022-03-23 05:13:11', NULL),
(143, 'E-Commerce', 39, 1, 1, 1, NULL, '2022-06-03 07:50:36', NULL),
(144, 'Coupon', 40, 1, 1, 1, NULL, '2022-06-03 07:50:36', NULL),
(145, 'Order Info', 41, 1, 1, 1, NULL, '2022-06-03 07:50:36', NULL),
(146, 'Salary', 42, 1, 1, 1, NULL, '2022-06-03 08:00:53', NULL),
(147, 'Product', 43, 1, 1, 1, NULL, '2022-06-11 05:54:10', NULL),
(148, 'OTP', 44, 1, 1, 1, NULL, '2022-07-11 21:15:50', NULL),
(149, 'Twilio Configuration', 45, 1, 1, 1, NULL, '2022-07-11 21:15:50', NULL),
(150, 'OTP Customization', 46, 1, 1, 1, NULL, '2022-07-11 21:15:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sec_roles`
--

DROP TABLE IF EXISTS `sec_roles`;
CREATE TABLE IF NOT EXISTS `sec_roles` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default_user_role` tinyint NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL,
  `created_by` int NOT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sec_roles`
--

INSERT INTO `sec_roles` (`id`, `name`, `is_default_user_role`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Admin Role', 0, 1, 1, NULL, NULL, NULL),
(2, 'Default Role', 1, 1, 1, 1, NULL, '2022-01-01 07:08:09'),
(3, 'Operator', 0, 1, 1, NULL, NULL, NULL),
(4, 'Staff Role', 0, 1, 1, NULL, '2022-01-14 06:58:11', '2022-01-14 06:58:11');

-- --------------------------------------------------------

--
-- Table structure for table `sec_role_permissions`
--

DROP TABLE IF EXISTS `sec_role_permissions`;
CREATE TABLE IF NOT EXISTS `sec_role_permissions` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `sec_role_permission_info_id` bigint UNSIGNED NOT NULL,
  `sec_role_id` bigint UNSIGNED NOT NULL,
  `status` tinyint NOT NULL,
  `created_by` int NOT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sec_role_permissions_sec_role_permission_info_id_foreign` (`sec_role_permission_info_id`),
  KEY `sec_role_permissions_sec_role_id_foreign` (`sec_role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=292 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sec_role_permissions`
--

INSERT INTO `sec_role_permissions` (`id`, `sec_role_permission_info_id`, `sec_role_id`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, NULL, NULL, NULL),
(2, 2, 1, 1, 1, NULL, NULL, NULL),
(3, 3, 1, 1, 1, NULL, NULL, NULL),
(4, 4, 1, 1, 1, NULL, NULL, NULL),
(5, 5, 1, 1, 1, NULL, NULL, NULL),
(6, 6, 1, 1, 1, NULL, NULL, NULL),
(7, 7, 1, 1, 1, NULL, NULL, NULL),
(8, 8, 1, 1, 1, 1, NULL, '2021-10-11 05:27:44'),
(9, 9, 1, 1, 1, NULL, NULL, NULL),
(10, 1, 3, 0, 1, 1, NULL, '2022-01-14 06:57:37'),
(11, 2, 3, 0, 1, 1, NULL, '2022-01-14 06:57:37'),
(12, 3, 3, 0, 1, 1, NULL, '2022-01-14 06:57:37'),
(13, 4, 3, 0, 1, 1, NULL, '2022-01-14 06:57:37'),
(14, 5, 3, 0, 1, 1, NULL, '2022-01-14 06:57:37'),
(15, 6, 3, 0, 1, 1, NULL, '2022-01-14 06:57:37'),
(16, 7, 3, 0, 1, 1, NULL, '2022-01-14 06:57:37'),
(17, 8, 3, 0, 1, 1, NULL, '2022-01-14 06:57:37'),
(18, 9, 3, 0, 1, 1, NULL, '2022-01-14 06:57:37'),
(19, 1, 2, 1, 1, NULL, NULL, NULL),
(20, 2, 2, 0, 1, 1, NULL, '2022-01-14 06:56:16'),
(21, 3, 2, 0, 1, 1, NULL, '2022-01-14 06:56:16'),
(22, 4, 2, 0, 1, 1, NULL, '2022-01-14 06:56:16'),
(23, 5, 2, 0, 1, 1, NULL, '2022-01-14 06:56:16'),
(24, 6, 2, 0, 1, 1, NULL, '2022-01-14 06:56:16'),
(25, 7, 2, 0, 1, 1, NULL, '2022-01-14 06:56:16'),
(26, 8, 2, 0, 1, 1, NULL, '2022-01-14 06:56:16'),
(27, 9, 2, 0, 1, 1, NULL, '2022-01-14 06:56:16'),
(28, 10, 1, 1, 1, NULL, '2021-10-12 03:53:39', NULL),
(29, 11, 1, 1, 1, NULL, '2021-10-12 03:53:39', NULL),
(30, 12, 1, 1, 1, NULL, '2021-10-12 03:53:39', NULL),
(31, 13, 1, 1, 1, 1, '2021-10-18 04:04:23', '2021-10-18 04:04:28'),
(32, 14, 1, 1, 1, 1, '2021-10-18 04:04:23', '2021-10-18 04:04:28'),
(33, 15, 1, 1, 1, 1, '2021-10-18 04:04:23', '2021-10-18 04:04:28'),
(34, 16, 1, 1, 1, NULL, '2021-10-18 04:04:23', NULL),
(35, 17, 1, 1, 1, NULL, '2021-10-18 04:04:23', NULL),
(36, 18, 1, 1, 1, NULL, '2021-10-18 04:04:23', NULL),
(37, 19, 1, 1, 1, NULL, '2021-10-18 04:04:23', NULL),
(38, 20, 1, 1, 1, 1, '2021-10-19 21:17:07', '2021-10-30 04:42:00'),
(39, 21, 1, 1, 1, 1, '2021-10-19 21:17:07', '2021-10-30 04:42:00'),
(40, 22, 1, 1, 1, 1, '2021-10-19 21:17:07', '2021-10-30 04:42:00'),
(41, 23, 1, 1, 1, NULL, '2021-10-19 21:17:07', NULL),
(42, 24, 1, 1, 1, NULL, '2021-10-19 21:17:07', NULL),
(43, 25, 1, 1, 1, 1, '2021-10-30 04:42:00', '2021-12-12 06:58:01'),
(44, 26, 1, 1, 1, 1, '2021-10-30 04:42:00', '2021-12-12 06:58:01'),
(45, 27, 1, 1, 1, 1, '2021-10-30 04:42:00', '2021-12-12 06:58:01'),
(46, 28, 1, 1, 1, NULL, '2021-10-31 05:44:48', NULL),
(47, 29, 1, 1, 1, NULL, '2021-10-31 05:44:48', NULL),
(48, 30, 1, 1, 1, NULL, '2021-10-31 05:44:48', NULL),
(49, 31, 1, 1, 1, 1, '2021-10-31 05:44:48', '2021-12-12 06:58:01'),
(50, 32, 1, 1, 1, 1, '2021-10-31 05:44:48', '2021-12-12 06:58:01'),
(51, 33, 1, 1, 1, 1, '2021-10-31 05:44:48', '2021-12-12 06:58:01'),
(52, 34, 1, 1, 1, NULL, '2021-12-07 04:07:06', NULL),
(53, 35, 1, 1, 1, NULL, '2021-12-11 05:14:24', NULL),
(54, 36, 1, 1, 1, NULL, '2021-12-12 06:58:01', NULL),
(55, 37, 1, 1, 1, NULL, '2021-12-12 06:58:01', NULL),
(56, 38, 1, 1, 1, NULL, '2021-12-18 02:19:11', NULL),
(57, 42, 1, 1, 1, 1, '2021-12-21 07:53:53', '2021-12-21 17:41:05'),
(58, 43, 1, 1, 1, 1, '2021-12-21 07:53:53', '2021-12-21 17:41:05'),
(59, 44, 1, 1, 1, 1, '2021-12-21 07:53:53', '2021-12-21 17:41:05'),
(60, 39, 1, 1, 1, 1, '2021-12-21 07:53:53', '2021-12-21 17:41:05'),
(61, 40, 1, 1, 1, 1, '2021-12-21 07:53:53', '2021-12-21 17:41:05'),
(62, 41, 1, 1, 1, 1, '2021-12-21 07:53:53', '2021-12-21 17:41:05'),
(63, 45, 1, 1, 1, NULL, '2021-12-21 17:41:05', NULL),
(64, 46, 1, 1, 1, NULL, '2021-12-21 17:41:05', NULL),
(65, 47, 1, 1, 1, NULL, '2021-12-21 17:41:05', NULL),
(66, 48, 1, 1, 1, NULL, '2021-12-21 17:41:05', NULL),
(67, 49, 1, 1, 1, NULL, '2021-12-21 18:31:33', NULL),
(68, 50, 1, 1, 1, NULL, '2021-12-21 18:31:33', NULL),
(69, 51, 1, 1, 1, NULL, '2021-12-21 18:31:33', NULL),
(70, 52, 1, 1, 1, 1, '2021-12-23 03:41:02', '2021-12-23 20:43:49'),
(71, 53, 1, 1, 1, 1, '2021-12-24 02:52:54', '2021-12-24 07:15:43'),
(72, 54, 1, 1, 1, 1, '2021-12-24 02:52:54', '2021-12-24 07:15:43'),
(73, 55, 1, 1, 1, 1, '2021-12-24 02:52:54', '2021-12-24 07:15:44'),
(74, 56, 1, 1, 1, NULL, '2021-12-24 07:15:43', NULL),
(75, 57, 1, 1, 1, NULL, '2021-12-24 07:15:43', NULL),
(76, 58, 1, 1, 1, NULL, '2021-12-24 07:15:43', NULL),
(77, 59, 1, 1, 1, NULL, '2021-12-24 07:15:43', NULL),
(78, 10, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(79, 11, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(80, 12, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(81, 28, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(82, 29, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(83, 30, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(84, 13, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(85, 14, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(86, 15, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(87, 16, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(88, 17, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(89, 18, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(90, 19, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(91, 31, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(92, 32, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(93, 33, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(94, 20, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(95, 21, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(96, 22, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(97, 23, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(98, 24, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(99, 25, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(100, 26, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(101, 27, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(102, 34, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(103, 35, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(104, 36, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(105, 37, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(106, 56, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(107, 57, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(108, 58, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(109, 59, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(110, 53, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(111, 54, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(112, 55, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(113, 38, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(114, 42, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(115, 43, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(116, 44, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(117, 39, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(118, 40, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(119, 41, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(120, 45, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(121, 46, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(122, 47, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(123, 48, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(124, 49, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(125, 50, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(126, 51, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(127, 52, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(128, 60, 1, 1, 1, NULL, '2022-01-01 07:08:33', NULL),
(131, 63, 1, 1, 1, 1, '2022-01-04 03:44:41', '2022-01-10 07:27:45'),
(132, 64, 1, 1, 1, 1, '2022-01-04 03:44:41', '2022-01-10 07:27:45'),
(133, 65, 1, 1, 1, 1, '2022-01-04 03:44:41', '2022-01-10 07:27:45'),
(134, 66, 1, 1, 1, NULL, '2022-01-10 07:26:22', NULL),
(135, 67, 1, 1, 1, NULL, '2022-01-10 07:27:45', NULL),
(136, 68, 1, 1, 1, NULL, '2022-01-14 06:32:41', NULL),
(137, 69, 1, 1, 1, NULL, '2022-01-14 06:32:41', NULL),
(138, 70, 1, 1, 1, NULL, '2022-01-14 06:32:41', NULL),
(139, 10, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:52:27'),
(140, 11, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:52:27'),
(141, 12, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:52:27'),
(142, 28, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:52:27'),
(143, 29, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:52:27'),
(144, 30, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:52:27'),
(145, 13, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:52:27'),
(146, 14, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:52:27'),
(147, 15, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:52:28'),
(148, 16, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:52:28'),
(149, 17, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:52:28'),
(150, 18, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:52:28'),
(151, 19, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:52:28'),
(152, 31, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:52:28'),
(153, 32, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:52:28'),
(154, 33, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:52:28'),
(155, 68, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:56:43'),
(156, 69, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:56:43'),
(157, 70, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:56:43'),
(158, 20, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:56:43'),
(159, 21, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:56:43'),
(160, 22, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:56:43'),
(161, 23, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:56:43'),
(162, 24, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:56:43'),
(163, 25, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:56:43'),
(164, 26, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:56:43'),
(165, 27, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:56:43'),
(166, 63, 3, 1, 1, NULL, '2022-01-14 06:51:34', NULL),
(167, 64, 3, 1, 1, NULL, '2022-01-14 06:51:34', NULL),
(168, 65, 3, 1, 1, NULL, '2022-01-14 06:51:34', NULL),
(169, 34, 3, 1, 1, NULL, '2022-01-14 06:51:34', NULL),
(170, 35, 3, 1, 1, NULL, '2022-01-14 06:51:34', NULL),
(171, 36, 3, 1, 1, NULL, '2022-01-14 06:51:34', NULL),
(172, 37, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:56:43'),
(173, 60, 3, 1, 1, NULL, '2022-01-14 06:51:34', NULL),
(174, 67, 3, 1, 1, NULL, '2022-01-14 06:51:34', NULL),
(175, 56, 3, 0, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:57:37'),
(176, 57, 3, 0, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:57:37'),
(177, 58, 3, 0, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:57:37'),
(178, 59, 3, 0, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:57:37'),
(179, 53, 3, 0, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:57:37'),
(180, 54, 3, 0, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:57:37'),
(181, 55, 3, 0, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:57:37'),
(182, 38, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:56:43'),
(183, 42, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:56:43'),
(184, 43, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:56:43'),
(185, 44, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:56:43'),
(186, 39, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:56:43'),
(187, 40, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:56:43'),
(188, 41, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:56:43'),
(189, 66, 3, 0, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:57:37'),
(190, 45, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:56:43'),
(191, 46, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:56:43'),
(192, 47, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:56:43'),
(193, 48, 3, 0, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:57:37'),
(194, 49, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:56:43'),
(195, 50, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:56:43'),
(196, 51, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:56:43'),
(197, 52, 3, 0, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:57:37'),
(198, 68, 2, 0, 1, NULL, '2022-01-14 06:56:16', NULL),
(199, 69, 2, 0, 1, NULL, '2022-01-14 06:56:16', NULL),
(200, 70, 2, 0, 1, NULL, '2022-01-14 06:56:16', NULL),
(201, 63, 2, 0, 1, NULL, '2022-01-14 06:56:16', NULL),
(202, 64, 2, 0, 1, NULL, '2022-01-14 06:56:16', NULL),
(203, 65, 2, 0, 1, NULL, '2022-01-14 06:56:16', NULL),
(204, 60, 2, 0, 1, NULL, '2022-01-14 06:56:16', NULL),
(205, 67, 2, 0, 1, NULL, '2022-01-14 06:56:16', NULL),
(206, 66, 2, 1, 1, NULL, '2022-01-14 06:56:17', NULL),
(207, 1, 4, 1, 1, NULL, '2022-01-14 06:58:41', NULL),
(208, 2, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(209, 3, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(210, 4, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(211, 5, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(212, 6, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(213, 7, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(214, 8, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(215, 9, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(216, 10, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(217, 11, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(218, 12, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(219, 28, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(220, 29, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(221, 30, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(222, 13, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(223, 14, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(224, 15, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(225, 16, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(226, 17, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(227, 18, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(228, 19, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(229, 31, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(230, 32, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(231, 33, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(232, 68, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(233, 69, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(234, 70, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(235, 20, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(236, 21, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(237, 22, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(238, 23, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(239, 24, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(240, 25, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(241, 26, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(242, 27, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(243, 63, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(244, 64, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(245, 65, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(246, 34, 4, 1, 1, NULL, '2022-01-14 06:58:41', NULL),
(247, 35, 4, 1, 1, NULL, '2022-01-14 06:58:41', NULL),
(248, 36, 4, 1, 1, NULL, '2022-01-14 06:58:41', NULL),
(249, 37, 4, 1, 1, NULL, '2022-01-14 06:58:41', NULL),
(250, 60, 4, 1, 1, NULL, '2022-01-14 06:58:41', NULL),
(251, 67, 4, 1, 1, NULL, '2022-01-14 06:58:41', NULL),
(252, 56, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(253, 57, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(254, 58, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(255, 59, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(256, 53, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(257, 54, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(258, 55, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(259, 38, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(260, 42, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(261, 43, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(262, 44, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(263, 39, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(264, 40, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(265, 41, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(266, 66, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(267, 45, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(268, 46, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(269, 47, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(270, 48, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(271, 49, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(272, 50, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(273, 51, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(274, 52, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(275, 71, 1, 1, 1, NULL, '2022-03-24 17:30:52', NULL),
(276, 72, 1, 1, 1, NULL, '2022-03-24 17:30:52', NULL),
(277, 73, 1, 1, 1, NULL, '2022-03-24 17:30:52', NULL),
(278, 74, 1, 1, 1, NULL, '2022-03-24 17:30:52', NULL),
(279, 75, 1, 1, 1, NULL, '2022-03-24 18:30:54', NULL),
(280, 76, 1, 1, 1, NULL, '2022-04-13 19:04:39', NULL),
(281, 77, 1, 1, 1, NULL, '2022-04-13 20:04:15', NULL),
(282, 78, 1, 1, 1, NULL, '2022-03-24 17:30:52', NULL),
(283, 79, 1, 1, 1, NULL, '2022-03-24 17:30:52', NULL),
(284, 80, 1, 1, 1, NULL, '2022-03-24 17:30:52', NULL),
(285, 81, 1, 1, 1, NULL, '2022-03-24 17:30:52', NULL),
(286, 82, 1, 1, 1, NULL, '2022-03-24 18:30:54', NULL),
(287, 83, 1, 1, 1, NULL, '2022-04-13 19:04:39', NULL),
(288, 84, 1, 1, 1, NULL, '2022-04-13 20:04:15', NULL),
(289, 85, 1, 1, 1, NULL, '2022-04-13 20:04:15', NULL),
(290, 86, 1, 1, 1, NULL, '2022-03-24 17:30:52', NULL),
(291, 87, 1, 1, 1, NULL, '2022-03-24 17:30:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sec_role_permission_infos`
--

DROP TABLE IF EXISTS `sec_role_permission_infos`;
CREATE TABLE IF NOT EXISTS `sec_role_permission_infos` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `sec_resource_id` bigint UNSIGNED NOT NULL,
  `permission_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `route_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sec_role_permission_infos_sec_resource_id_foreign` (`sec_resource_id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sec_role_permission_infos`
--

INSERT INTO `sec_role_permission_infos` (`id`, `sec_resource_id`, `permission_name`, `route_name`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 2, 'Booking Status', 'dashboard.booking.status', 1, 1, NULL, '2021-12-24 21:34:40'),
(2, 4, 'Add', 'add.new.user', 1, 1, NULL, NULL),
(3, 4, 'Edit', 'edit.user.info', 1, 1, NULL, NULL),
(4, 4, 'Delete', 'delete.user.info', 1, 1, NULL, NULL),
(5, 5, 'Add', 'add.new.role', 1, 1, NULL, NULL),
(6, 5, 'Edit', 'edit.role.info', 1, 1, NULL, NULL),
(7, 5, 'Delete', 'delete.role.info', 1, 1, NULL, NULL),
(8, 6, 'Save Permission', 'save.or.update.permission', 1, 1, NULL, NULL),
(9, 6, 'Edit Menu Name', 'update.resource.display.name', 1, 1, NULL, NULL),
(10, 8, 'Update', 'department.update', 1, 1, '2021-10-12 03:51:58', '2021-10-12 03:52:25'),
(11, 8, 'Add', 'department.add', 1, 1, '2021-10-12 03:53:02', '2021-10-12 03:53:02'),
(12, 8, 'Delete', 'department.delete', 1, 1, '2021-10-12 03:53:18', '2021-10-12 03:53:18'),
(13, 9, 'Add', 'designation.store', 1, 1, '2021-10-13 05:01:56', '2021-10-13 05:01:56'),
(14, 9, 'Update', 'designation.update', 1, 1, '2021-10-13 05:03:21', '2021-10-13 05:03:21'),
(15, 9, 'Delete', 'designation.delete', 1, 1, '2021-10-13 05:03:37', '2021-10-13 05:03:37'),
(16, 10, 'Add', 'company.add', 1, 1, '2021-10-18 03:32:18', '2021-10-18 03:32:18'),
(17, 10, 'Update', 'company.update', 1, 1, '2021-10-18 03:32:49', '2021-10-18 03:32:49'),
(18, 11, 'Add', 'business.hour.add', 1, 1, '2021-10-18 03:35:59', '2021-10-18 03:35:59'),
(19, 11, 'Update', 'business.hour.update', 1, 1, '2021-10-18 03:36:30', '2021-10-18 03:36:30'),
(20, 14, 'Add', 'service.add', 1, 1, '2021-10-18 06:57:28', '2021-10-30 04:47:35'),
(21, 14, 'Update', 'service.update', 1, 1, '2021-10-18 06:57:46', '2021-10-30 04:47:54'),
(22, 14, 'Delete', 'service.delete', 1, 1, '2021-10-18 06:58:00', '2021-10-30 04:48:07'),
(23, 16, 'Add', 'employee.add', 1, 1, '2021-10-19 21:13:59', '2021-10-19 21:13:59'),
(24, 16, 'Update', 'employee.update', 1, 1, '2021-10-19 21:14:13', '2021-10-19 21:14:13'),
(25, 16, 'Save Change Off Day', 'save.update.offday', 1, 1, '2021-10-29 05:21:35', '2021-10-29 05:21:35'),
(26, 16, 'Delete Off day', 'delete.employee.offday', 1, 1, '2021-10-29 17:58:05', '2021-10-29 17:58:05'),
(27, 16, 'Move Off day', 'update.offday.by.move', 1, 1, '2021-10-29 19:09:56', '2021-10-29 19:09:56'),
(28, 18, 'Add', 'branch.add', 1, 1, '2021-10-31 05:42:22', '2021-10-31 05:42:22'),
(29, 18, 'Update', 'branch.update', 1, 1, '2021-10-31 05:42:36', '2021-10-31 05:42:36'),
(30, 18, 'Delete', 'branch.delete', 1, 1, '2021-10-31 05:43:05', '2021-10-31 05:43:05'),
(31, 17, 'Save Change', 'save.update.business.holiday', 1, 1, '2021-10-31 05:43:37', '2021-10-31 05:43:37'),
(32, 17, 'Move', 'update.business.holiday.by.move', 1, 1, '2021-10-31 05:44:11', '2021-10-31 05:44:11'),
(33, 17, 'Delete', 'delete.business.holiday', 1, 1, '2021-10-31 05:44:27', '2021-10-31 05:44:27'),
(34, 20, 'Save Booking', 'save.service.booking', 1, 1, '2021-12-07 04:06:46', '2021-12-07 04:06:46'),
(35, 20, 'Update Booking', 'update.service.booking', 1, 1, '2021-12-11 05:14:10', '2021-12-11 05:14:10'),
(36, 20, 'Cancel Booking', 'cancel.service.booking', 1, 1, '2021-12-12 06:53:43', '2021-12-27 02:49:08'),
(37, 20, 'Delete Booking', 'delete.service.booking', 1, 1, '2021-12-12 06:54:02', '2021-12-12 06:54:02'),
(38, 25, 'Save Change', 'save.or.update.appearance', 1, 1, '2021-12-18 02:17:31', '2021-12-18 02:17:31'),
(39, 27, 'Save', 'website.save.client.testimonial', 1, 1, '2021-12-21 07:28:52', '2021-12-21 07:28:52'),
(40, 27, 'Update', 'website.update.client.testimonial', 1, 1, '2021-12-21 07:29:08', '2021-12-21 07:29:08'),
(41, 27, 'Delete', 'website.delete.client.testimonial', 1, 1, '2021-12-21 07:29:22', '2021-12-21 07:29:22'),
(42, 26, 'Save', 'website.save.aboutus', 1, 1, '2021-12-21 07:29:37', '2021-12-21 07:29:37'),
(43, 26, 'Update', 'website.update.aboutus', 1, 1, '2021-12-21 07:29:55', '2021-12-21 07:29:55'),
(44, 26, 'Delete', 'website.delete.aboutus', 1, 1, '2021-12-21 07:30:09', '2021-12-21 07:30:09'),
(45, 28, 'Save', 'website.save.frequently.asked.question', 1, 1, '2021-12-21 07:54:32', '2021-12-21 07:54:32'),
(46, 28, 'Update', 'website.update.frequently.asked.question', 1, 1, '2021-12-21 07:54:44', '2021-12-21 07:54:44'),
(47, 28, 'Delete', 'website.delete.frequently.asked.Question', 1, 1, '2021-12-21 07:55:05', '2021-12-21 07:55:05'),
(48, 29, 'Save Change', 'website.save.or.update.google.map', 1, 1, '2021-12-21 17:40:48', '2021-12-21 17:40:48'),
(49, 30, 'Save', 'website.save.photo.gallery', 1, 1, '2021-12-21 18:30:49', '2021-12-21 18:30:49'),
(50, 30, 'Update', 'website.update.photo.gallery', 1, 1, '2021-12-21 18:31:08', '2021-12-21 18:31:08'),
(51, 30, 'Delete', 'website.delete.photo.gallery', 1, 1, '2021-12-21 18:31:20', '2021-12-21 18:31:20'),
(52, 31, 'Save Change', 'website.save.or.update.terms.condition', 1, 1, '2021-12-22 06:49:07', '2021-12-22 06:49:07'),
(53, 32, 'Save', 'website.save.menu', 1, 1, '2021-12-24 02:52:04', '2021-12-24 02:52:04'),
(54, 32, 'Update', 'website.update.menu', 1, 1, '2021-12-24 02:52:23', '2021-12-24 02:52:23'),
(55, 32, 'Delete', 'website.delete.menu', 1, 1, '2021-12-24 02:52:40', '2021-12-24 02:52:40'),
(56, 34, 'Save Change Currency', 'save.or.update.currency', 1, 1, '2021-12-24 07:14:02', '2022-01-23 07:50:46'),
(57, 34, 'Enable Local Payment', 'currency.update', 1, 1, '2021-12-24 07:14:19', '2022-01-23 07:50:19'),
(58, 34, 'Enable Paypal Payment', 'enable.or.disable.paypa.payment', 1, 1, '2021-12-24 07:14:38', '2022-01-23 07:49:48'),
(59, 34, 'Save Paypal API', 'save.or.update.paypal.config', 1, 1, '2021-12-24 07:15:23', '2022-01-23 07:49:25'),
(60, 20, 'Done Booking', 'done.service.booking', 1, 1, '2021-12-27 02:49:29', '2021-12-27 02:49:29'),
(63, 22, 'Save', 'customer.store', 1, 1, '2022-01-04 02:57:54', '2022-01-04 02:57:54'),
(64, 22, 'Update', 'customer.update', 1, 1, '2022-01-04 02:58:14', '2022-01-04 02:58:14'),
(65, 22, 'Delete', 'customer.delete', 1, 1, '2022-01-04 02:58:31', '2022-01-04 02:58:31'),
(66, 37, 'Save Change', 'save.email.configuration', 1, 1, '2022-01-10 07:25:56', '2022-01-10 07:25:56'),
(67, 36, 'Change Service Status', 'change.service.booking.status', 1, 1, '2022-01-10 07:27:32', '2022-01-10 07:27:32'),
(68, 13, 'Add', 'category.add', 1, 1, '2022-01-14 06:31:24', '2022-01-14 06:31:24'),
(69, 13, 'Update', 'category.update', 1, 1, '2022-01-14 06:31:38', '2022-01-14 06:31:38'),
(70, 13, 'Delete', 'category.delete', 1, 1, '2022-01-14 06:31:53', '2022-01-14 06:31:53'),
(71, 38, 'Save Change', 'save.language', 1, 1, '2022-03-24 17:12:28', '2022-03-24 17:12:28'),
(72, 38, 'Update', 'update.language', 1, 1, '2022-03-24 17:13:03', '2022-03-24 17:13:03'),
(73, 38, 'Delete', 'delete.language', 1, 1, '2022-03-24 17:13:19', '2022-03-24 17:13:19'),
(74, 38, 'Save Translated Language', 'save.translated.language', 1, 1, '2022-03-24 17:14:17', '2022-03-24 17:14:17'),
(75, 38, 'Update RTL', 'update.rtl.status', 1, 1, '2022-03-24 18:30:34', '2022-03-24 18:30:34'),
(76, 34, 'Enable Stripe Payment', 'enable.or.disable.stripe.payment', 1, 1, '2022-04-13 19:04:14', '2022-04-13 19:04:14'),
(77, 34, 'Save Stripe API', 'save.or.update.stripe.config', 1, 1, '2022-04-13 20:00:41', '2022-04-13 20:00:41'),
(78, 43, 'Add', 'products.store', 1, 1, '2022-06-11 05:56:56', '2022-06-13 07:22:45'),
(79, 41, 'Details', 'orders.show', 1, 1, '2022-06-11 06:03:49', '2022-06-11 06:08:10'),
(80, 41, 'Update', 'orders.update', 1, 1, '2022-06-11 06:10:03', '2022-06-11 06:10:03'),
(81, 40, 'Add', 'coupons.store', 1, 1, '2022-06-13 07:17:19', '2022-06-13 07:17:19'),
(82, 40, 'Update', 'coupons.update', 1, 1, '2022-06-13 07:17:44', '2022-06-13 07:17:44'),
(83, 40, 'Delete', 'coupons.destroy', 1, 1, '2022-06-13 07:17:59', '2022-06-13 07:17:59'),
(84, 43, 'Delete', 'products.destroy', 1, 1, '2022-06-13 07:22:59', '2022-06-13 07:22:59'),
(85, 43, 'Update', 'products.update', 1, 1, '2022-06-13 07:23:19', '2022-06-13 07:23:19'),
(86, 45, 'Save Change', 'sms.twilio', 1, 1, '2022-07-11 21:14:56', '2022-07-11 21:14:56'),
(87, 46, 'Save Change', 'sms.otp.update', 1, 1, '2022-07-11 21:15:14', '2022-07-11 21:15:14');

-- --------------------------------------------------------

--
-- Table structure for table `sec_user_branches`
--

DROP TABLE IF EXISTS `sec_user_branches`;
CREATE TABLE IF NOT EXISTS `sec_user_branches` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL,
  `cmn_branch_id` bigint UNSIGNED NOT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sec_user_branches_user_id_foreign` (`user_id`),
  KEY `sec_user_branches_cmn_branch_id_foreign` (`cmn_branch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sec_user_branches`
--

INSERT INTO `sec_user_branches` (`id`, `user_id`, `cmn_branch_id`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(46, 30, 2, 1, NULL, NULL, NULL),
(47, 33, 2, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sec_user_roles`
--

DROP TABLE IF EXISTS `sec_user_roles`;
CREATE TABLE IF NOT EXISTS `sec_user_roles` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `sec_user_id` bigint UNSIGNED NOT NULL,
  `sec_role_id` bigint UNSIGNED NOT NULL,
  `status` tinyint NOT NULL,
  `created_by` int NOT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sec_user_roles_sec_user_id_foreign` (`sec_user_id`),
  KEY `sec_user_roles_sec_role_id_foreign` (`sec_role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sec_user_roles`
--

INSERT INTO `sec_user_roles` (`id`, `sec_user_id`, `sec_role_id`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, NULL, NULL, '2022-01-24 06:27:27'),
(12, 30, 4, 1, 1, NULL, '2022-01-14 07:05:43', '2022-01-14 07:05:43'),
(13, 33, 3, 1, 1, NULL, '2023-10-17 23:05:18', '2023-10-17 23:10:23');

-- --------------------------------------------------------

--
-- Table structure for table `site_about_us`
--

DROP TABLE IF EXISTS `site_about_us`;
CREATE TABLE IF NOT EXISTS `site_about_us` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(1500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `order` int NOT NULL DEFAULT '0',
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_about_us`
--

INSERT INTO `site_about_us` (`id`, `title`, `details`, `image_url`, `status`, `order`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'A Life Coaching Plateform', 'Hey Counsellor is a life coaching platform that offers emotional balance, healthier relationships, and improved personal well-being counselling services. We believe that everyone deserves the opportunity to live a life filled with happiness and calmness. Our team of trusted life coaches and expert psychologists is here to help you on your journey towards achieving these goals. We are dedicated to providing a safe, confidential, and supportive space where you can openly discuss your concerns and receive guidance from qualified professionals. Our mission is to provide you with the support and guidance you need to overcome these challenges and lead a happier life.', 'uploadfiles/wKrd6bpnK6E1VKkI5yeDUimqyfjvss2JXCwzG5Hd.png', 1, 0, NULL, 1, NULL, '2023-11-09 03:47:21');

-- --------------------------------------------------------

--
-- Table structure for table `site_appearances`
--

DROP TABLE IF EXISTS `site_appearances`;
CREATE TABLE IF NOT EXISTS `site_appearances` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `app_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `motto` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theam_color` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `theam_menu_color2` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `theam_hover_color` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `theam_active_color` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook_link` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube_link` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_link` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram_link` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_service` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_email` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_phone` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_web` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_image` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `login_background_image` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_appearances`
--

INSERT INTO `site_appearances` (`id`, `app_name`, `logo`, `icon`, `motto`, `theam_color`, `theam_menu_color2`, `theam_hover_color`, `theam_active_color`, `facebook_link`, `youtube_link`, `twitter_link`, `instagram_link`, `about_service`, `contact_email`, `contact_phone`, `contact_web`, `address`, `background_image`, `login_background_image`, `meta_title`, `meta_description`, `meta_keywords`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Hey Counsellor', 'uploadfiles/hyvamIws97q3UntYOcB3DiAEzcDYXXBnOY2ARFR5.png', 'uploadfiles/d99ay9MQ7067HzQxdxtAjY9lEbi4BbBlJNmpWAoF.png', 'Trusted Life Coaches and Professional Psychologists Can Resolve You Life Issues Better', '#570861', '#ffffff', '#aba9ab', '#570861', 'https://www.facebook.com/heycounsellor/', 'https://www.youtube.com/@heycounsellor/', 'https://www.linkedin.com/company/hey-counsellor/', 'https://www.instagram.com/heycounsellor_/', 'A life coaching platform to resolve  relationship challenges, love-related dilemmas, personal life issues, emotional imbalance, confusion in decision-making, workplace bullying, Personality issues.', 'enquiry@heycounsellor.com', '+91 7300 999 433', 'www.heycounsellor.com', 'Sadei Digital Pvt. Ltd.\r\nABC Business Club, 16-Tagore Villa,\r\nChakrata Road, Dehradun, Uttarakhand', 'uploadfiles/fd53HS9gZ3QOEqdIinEPzuLs7psvpRfTcWW6gIWo.jpg', 'uploadfiles/5Tk38igG3wGoubxaoCxO63QbglWRTaNErLCMSaPB.png', 'Hey Counsellor | A Online Life Coaching Platform', 'Get consultations for managing relationship, love, personal life, emotions, decision making, and bullying/ragging. Our experts are here to help you with any issues.', 'Example', NULL, 1, NULL, '2023-11-08 06:31:42');

-- --------------------------------------------------------

--
-- Table structure for table `site_client_testimonials`
--

DROP TABLE IF EXISTS `site_client_testimonials`;
CREATE TABLE IF NOT EXISTS `site_client_testimonials` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int NOT NULL,
  `image` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_email` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_ref` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_client_testimonials`
--

INSERT INTO `site_client_testimonials` (`id`, `name`, `description`, `rating`, `image`, `contact_phone`, `contact_email`, `client_ref`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'John Doe', 'The best counseling service I have ever seen.', 5, 'uploadfiles/A67OhPaVjkOxeg10pIT9eG5k4WTUtI5IhMUlskAl.jpg', '0123456789', 'a@gmail.com', NULL, 0, NULL, 1, NULL, '2023-10-19 05:57:31'),
(2, 'Madhu Meeta Koul', 'I would definitely recommend HEY Counsellor to everyone who is looking for a positive mindset by resolving their life issues or work-place issues.', 4, 'uploadfiles/XqEqjTKAsM2qYCBeib9uttHtXTB5AofjYpDXYACV.png', '', '', NULL, 1, 1, NULL, '2023-10-19 06:02:02', '2023-10-19 06:02:02'),
(3, 'Ekta daniel', 'Very helpful for my mental state', 5, 'uploadfiles/hItVhve4UXESLTIBZLFQoQPp6VhQY9Re9oWolVMn.png', '', '', NULL, 1, 1, NULL, '2023-10-19 06:02:12', '2023-10-19 06:02:12'),
(4, 'Surbhi Verma', 'Thank you so much Dr.Chandra sir, you are awesome', 5, 'uploadfiles/MTTIwgoU61kzg0p6mFHIgN4uMvKYRXfjF1KCGzWD.png', '', '', NULL, 1, 1, 1, '2023-11-07 06:20:01', '2023-11-07 06:21:20'),
(5, 'Khyati', 'All counsellors and their counselling services are so good and very informative Thank you so much for guidance. Highly recommend for the needed one.', 5, 'uploadfiles/Xx6zqGQn93hKl0oxUMMobtMmPhJE3pw8LCgT9T07.png', '', '', NULL, 1, 1, 1, '2023-11-07 06:20:55', '2023-11-07 06:21:25'),
(6, 'Praveen Chaturvedi', 'Had a very fruitful and goal orientated session....\r\nMust visit if you are having any sort of issues.....', 5, 'uploadfiles/WUe88ZIAazksnZzUCbuKzsoD0MI4UOAeUy1tPq2h.png', '', '', NULL, 1, 1, NULL, '2023-11-07 06:56:13', '2023-11-07 06:56:13'),
(7, 'Debangi Ghosh', 'It was very helpful he is really great 😊 Chandra sir ur an amazing personality ❤️', 5, 'uploadfiles/AHR0nRwCnkiR5Ew3BEkxsZd9zERLNmfwjX1LwXNi.png', '', '', NULL, 1, 1, NULL, '2023-11-07 06:57:22', '2023-11-07 06:57:22');

-- --------------------------------------------------------

--
-- Table structure for table `site_frequently_asked_questions`
--

DROP TABLE IF EXISTS `site_frequently_asked_questions`;
CREATE TABLE IF NOT EXISTS `site_frequently_asked_questions` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `question` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `order` int NOT NULL DEFAULT '0',
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_frequently_asked_questions`
--

INSERT INTO `site_frequently_asked_questions` (`id`, `question`, `answer`, `status`, `order`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Example FAQ?', 'Example FAQ', 0, 1, NULL, 1, NULL, '2023-11-01 05:48:34'),
(2, 'What is relationship counselling?', 'Relationship counselling is a therapeutic process that helps individuals or couples address and resolve conflicts, communication problems, and other issues in their relationships.', 1, 0, 1, 1, '2023-11-01 05:38:32', '2023-11-01 05:48:12'),
(3, 'When should I consider relationship counselling?', 'You should consider relationship counselling when you&#039;re facing persistent conflicts, communication breakdowns, trust issues, or when you feel your relationship is struggling and needs help to improve.', 1, 0, 1, 1, '2023-11-01 05:38:44', '2023-11-01 05:48:19'),
(4, 'What should I expect during a relationship counselling session?', 'During a relationship counselling session, you can expect open and honest discussions, guidance on communication, conflict resolution strategies, and support to improve your relationship.', 1, 0, 1, 1, '2023-11-01 05:38:53', '2023-11-01 05:48:51'),
(5, 'How long does relationship counselling typically last?', 'The duration of relationship counselling varies but often ranges from a few weeks to several months, depending on the complexity of the issues and the progress made.', 1, 0, 1, 1, '2023-11-01 05:39:02', '2023-11-01 05:49:02'),
(6, 'Can I attend relationship counselling individually, or is it only for couples?', 'Relationship counselling can be for individuals or couples. It&#039;s possible to work on personal issues that affect your relationships in individual counselling.', 1, 0, 1, 1, '2023-11-01 05:39:12', '2023-11-01 05:49:08'),
(7, 'Is relationship counselling confidential?', 'Yes, relationship counselling is typically confidential, with the counsellor abiding by professional ethics and legal requirements regarding client confidentiality.', 1, 0, 1, 1, '2023-11-01 05:39:24', '2023-11-01 05:49:16'),
(8, 'What if my partner is unwilling to attend relationship counselling?', 'Individual counselling can still be beneficial, as it helps you work on personal aspects that can positively influence your relationship. You can also discuss strategies for encouraging your partner to participate.', 1, 0, 1, 1, '2023-11-01 05:39:32', '2023-11-01 05:49:31'),
(9, 'What are love-related issues?', 'Love-related issues can include problems like heartbreak, unrequited love, jealousy, or difficulties in maintaining a healthy and fulfilling romantic relationship.', 1, 0, 1, 1, '2023-11-01 05:39:44', '2023-11-01 05:49:41'),
(10, 'Can counselling help with heartbreak or unrequited love?', 'Yes, counselling can help you process your emotions, cope with heartbreak, and explore strategies for moving on or finding closure.', 1, 0, 1, 1, '2023-11-01 05:39:57', '2023-11-01 05:49:50'),
(11, 'Can counselling help me heal after a breakup or divorce?', 'Yes, counselling can provide support and coping strategies to help you process your emotions and move forward after a breakup or divorce.', 1, 0, 1, 1, '2023-11-01 05:40:08', '2023-11-01 05:49:58'),
(12, 'How can counselling help with jealousy and insecurity in relationships?', 'Counselling can address the underlying causes of jealousy and insecurity, helping you build self-esteem and develop trust in your relationship.', 1, 0, 1, NULL, '2023-11-01 05:51:46', '2023-11-01 05:51:46'),
(13, 'What if I&#039;m struggling with unrequited/unreturned love?', 'Counselling can help you understand your feelings, find closure, and explore ways to redirect your emotions and focus on self-care.', 1, 0, 1, NULL, '2023-11-01 05:51:58', '2023-11-01 05:51:58'),
(14, 'How long does it take to see progress in love-related counselling?', 'The time to see progress varies, but counselling can provide immediate emotional relief and lead to long-term healing and personal growth.', 1, 0, 1, NULL, '2023-11-01 05:52:08', '2023-11-01 05:52:08'),
(15, 'Can love-related counselling help me improve my dating and relationship skills?', 'Yes, counselling can offer guidance on healthy dating, communication, and conflict resolution, which can improve your future relationships.', 1, 0, 1, NULL, '2023-11-01 05:52:19', '2023-11-01 05:52:19'),
(16, 'What are personal life issues?', 'Personal life issues can encompass a wide range of challenges, including stress, anxiety, depression, self-esteem, and other personal struggles.', 1, 0, 1, NULL, '2023-11-01 05:54:03', '2023-11-01 05:54:03'),
(17, 'How can counselling help with personal life issues?', 'Counselling can provide support, coping strategies, and tools to manage personal issues, improve mental health, and work towards personal growth and well-being.', 1, 0, 1, NULL, '2023-11-01 05:54:14', '2023-11-01 05:54:14'),
(18, 'What types of personal life issues can counselling address?', 'Counselling can address a wide range of issues, including stress, anxiety, depression, grief, family conflicts, and personal growth challenges.', 1, 0, 1, NULL, '2023-11-01 05:54:27', '2023-11-01 05:54:27'),
(19, 'Is counselling suitable for managing work-related stress and burnout?', 'Yes, counselling can help individuals develop strategies to manage work-related stress, find work-life balance, and prevent burnout.', 0, 0, 1, NULL, '2023-11-01 05:54:39', '2023-11-01 05:54:39'),
(20, 'How do I know if I need counselling for my personal issues?', 'If your personal issues are affecting your daily life, relationships, or well-being, counselling may be beneficial. It&#039;s a positive step to seek help.', 1, 0, 1, NULL, '2023-11-01 05:54:49', '2023-11-01 05:54:49'),
(21, 'Can counselling help with improving self-esteem and self-confidence?', 'Yes, counselling can focus on enhancing self-esteem, self-confidence, and self-awareness, fostering personal growth.', 1, 0, 1, NULL, '2023-11-01 05:55:01', '2023-11-01 05:55:01'),
(22, 'What is the difference between counselling and therapy for personal life issues?', 'Counselling typically focuses on providing support, guidance, and practical strategies for addressing specific personal issues, while therapy may delve deeper into underlying psychological factors.', 1, 0, 1, NULL, '2023-11-01 05:55:11', '2023-11-01 05:55:11'),
(23, 'What does emotional balance counselling involve?', 'Emotional balance counselling helps individuals understand, manage, and regulate their emotions, fostering emotional well-being.', 1, 0, 1, NULL, '2023-11-01 05:55:22', '2023-11-01 05:55:22'),
(24, 'Is counselling a suitable option for emotional issues like anger or anxiety?', 'Yes, counselling can be highly effective in addressing emotional challenges such as anger, anxiety, and stress by providing strategies for emotional regulation.', 1, 0, 1, NULL, '2023-11-01 05:55:32', '2023-11-01 05:55:32'),
(25, 'What techniques are used in emotional balance counselling?', 'Emotional balance counselling may incorporate techniques like mindfulness, emotional regulation strategies, and cognitive-behavioural techniques.', 1, 0, 1, NULL, '2023-11-01 05:55:42', '2023-11-01 05:55:42'),
(26, 'How can emotional balance counselling help with anger management?', 'Counselling can provide tools and coping strategies to manage and control anger, preventing it from negatively impacting your life.', 1, 0, 1, NULL, '2023-11-01 05:55:53', '2023-11-01 05:55:53'),
(27, 'Is emotional balance counselling suitable for individuals with mood disorders like depression or bipolar disorder?', 'Yes, emotional balance counselling can complement other treatments for mood disorders and help individuals manage their emotions.', 1, 0, 1, NULL, '2023-11-01 05:56:02', '2023-11-01 05:56:02'),
(28, 'Can I learn to better handle stress through emotional balance counselling?', 'Yes, emotional balance counselling can teach stress management techniques and enhance your ability to handle stressors effectively.', 1, 0, 1, NULL, '2023-11-01 05:56:14', '2023-11-01 05:56:14'),
(29, 'How long does it take to achieve emotional balance through counselling?', 'The duration varies, but emotional balance counselling can lead to immediate relief and gradual improvement over several sessions.', 1, 0, 1, NULL, '2023-11-01 05:56:24', '2023-11-01 05:56:24'),
(30, 'How can counselling assist with decision making?', 'Decision-making counselling helps individuals clarify their goals, values, and options to make more informed, confident, and satisfying decisions.', 1, 0, 1, NULL, '2023-11-01 05:56:40', '2023-11-01 05:56:40'),
(31, 'What types of decisions can counselling help with?', 'Counselling can assist with various decisions, including career choices, major life transitions, relationship decisions, and more.', 1, 0, 1, NULL, '2023-11-01 05:56:49', '2023-11-01 05:56:49'),
(32, 'What can I expect in a decision-making counselling session?', 'Decision-making counselling involves discussing your options, values, and goals to make informed choices. The counsellor provides guidance and support.', 1, 0, 1, NULL, '2023-11-01 05:56:59', '2023-11-01 05:56:59'),
(33, 'Can decision-making counselling help with career choices and major life decisions?', 'Yes, it&#039;s particularly valuable for career decisions, major life transitions, and complex choices that require a structured approach.', 1, 0, 1, NULL, '2023-11-01 05:57:12', '2023-11-01 05:57:12'),
(34, 'How do I know if I need counselling for decision making?', 'You might consider counselling if you&#039;re feeling overwhelmed, unsure, or need assistance navigating a significant decision.', 1, 0, 1, NULL, '2023-11-01 05:57:20', '2023-11-01 05:57:20'),
(35, 'Is decision-making counselling suitable for young adults making college or career choices?', 'Yes, decision-making counselling can be especially helpful for young adults facing important decisions about their education and careers.', 1, 0, 1, NULL, '2023-11-01 05:57:32', '2023-11-01 05:57:32'),
(36, 'Can counselling help with relationship decisions like marriage or divorce?', 'Yes, relationship decision-making counselling can provide insights and guidance for making decisions about marriage, separation, or divorce.', 1, 0, 1, NULL, '2023-11-01 05:57:39', '2023-11-01 05:57:39'),
(37, 'What is counselling for bullying or ragging?', 'This type of counselling provides support and coping strategies to individuals who have experienced bullying or ragging, helping them heal and regain their confidence.', 1, 0, 1, NULL, '2023-11-01 05:57:50', '2023-11-01 05:57:50'),
(38, 'Can counselling help with the effects of bullying or ragging?', 'Yes, counselling can assist individuals in dealing with the emotional and psychological impact of bullying or ragging, such as trauma, low self-esteem or confidence, or anxiety.', 1, 0, 1, NULL, '2023-11-01 05:57:58', '2023-11-01 05:57:58'),
(39, 'What is the purpose of counselling for bullying or ragging victims?', 'Counselling for bullying or ragging victims aims to provide emotional support, help individuals cope with the trauma, and develop strategies for healing and rebuilding self-esteem.', 1, 0, 1, NULL, '2023-11-01 05:58:10', '2023-11-01 05:58:10'),
(40, 'Can counselling for bullying or ragging be effective even if the incidents occurred in the past?', 'Yes, counselling can be effective in addressing the emotional and psychological impact of past bullying or ragging, regardless of when it occurred.', 1, 0, 1, NULL, '2023-11-01 05:58:21', '2023-11-01 05:58:21'),
(41, 'How can counselling help individuals deal with the effects of bullying or ragging, such as anxiety and low self-esteem?', 'Counselling can offer techniques to manage anxiety, build self-esteem, and process the trauma, allowing individuals to regain their confidence and emotional well-being.', 1, 0, 1, NULL, '2023-11-01 05:58:31', '2023-11-01 05:58:31'),
(42, 'Is counselling for bullying or ragging confidential?', 'Yes, counselling sessions are typically confidential, and counsellors are bound by professional ethics and legal requirements to maintain client confidentiality.', 1, 0, 1, NULL, '2023-11-01 05:58:46', '2023-11-01 05:58:46'),
(43, 'Can counselling also help address the issues of bullies or those involved in ragging?', 'Yes, counselling can be valuable for individuals who have engaged in bullying or ragging, aiming to understand the underlying causes and provide strategies for personal growth and change in behaviour.', 1, 0, 1, NULL, '2023-11-01 05:58:54', '2023-11-01 05:58:54');

-- --------------------------------------------------------

--
-- Table structure for table `site_google_maps`
--

DROP TABLE IF EXISTS `site_google_maps`;
CREATE TABLE IF NOT EXISTS `site_google_maps` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `lat` decimal(18,6) NOT NULL,
  `long` decimal(18,6) NOT NULL,
  `map_key` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_google_maps`
--

INSERT INTO `site_google_maps` (`id`, `lat`, `long`, `map_key`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(2, '30.326670', '78.035100', 'AIzaSyDwRZb6VdsCVE5gFMtR3X6Dik1Tx9bxhq0', 1, 1, '2021-12-21 17:50:08', '2023-10-26 06:35:56');

-- --------------------------------------------------------

--
-- Table structure for table `site_menus`
--

DROP TABLE IF EXISTS `site_menus`;
CREATE TABLE IF NOT EXISTS `site_menus` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_menu_id` int NOT NULL,
  `order` int NOT NULL DEFAULT '0',
  `route` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remarks` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `og_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `og_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_menus`
--

INSERT INTO `site_menus` (`id`, `name`, `site_menu_id`, `order`, `route`, `remarks`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `og_description`, `og_image`, `image`, `title`) VALUES
(1, 'Services', 0, 1, 'site.menu.services', '', 1, NULL, 1, NULL, '2023-11-18 12:12:09', 'Unlock solutions for life&#039;s challenges with our expert counselling services. From relationships to emotional balance, we&#039;re here to guide you. Contact us today!', 'C:\\wamp64\\tmp\\phpBA10.tmp', 'uploadfiles/K9JIfncUPoPf2Oh2A4eJttRlEfxv8blITbaonvZp.jpg', 'Know About Us And Get the Confidence On Us'),
(2, 'Our Team', 0, 2, 'site.menu.team', '', 0, NULL, 1, NULL, '2023-11-16 09:45:16', 'Our Team', '', '', 'Our Team'),
(3, 'Home', 0, 0, 'site.home', '', 1, NULL, 1, NULL, '2023-11-08 06:33:26', 'A Online Life Coaching Platform', 'uploadfiles/A99bRWhRi9CDBNn7YCIEZyU8HKiRrhXDyZUf2FFl.jpg', 'uploadfiles/E8g3tm0GEnb8sZiR22FUz9Oe7MACKNAJq2htDh8b.jpg', 'A Online Life Coaching Platform'),
(4, 'About Us', 0, 5, 'site.about.us', '', 1, NULL, 1, NULL, '2023-11-18 04:49:59', 'Discover emotional balance and healthier relationships with trusted life coaches and psychologists at Hey Counsellor. Your journey to a happier life begins here.', 'uploadfiles/OvPfDy6PEFgMisgOo8WDxQJLioaNQWy0jvdIvcdR.png', 'uploadfiles/ucihtzi62iFhFvFNNhC3nZrRWeAVv1RVxpBF3NUz.jpg', 'Know About Us And Get the Confidence On Us'),
(5, 'Contact Us', 0, 6, 'site.contact', '', 1, NULL, 1, NULL, '2023-11-03 07:04:53', 'Get in touch with Hey Counsellor&#039;s dedicated team. We&#039;re here to assist you on your journey to happiness and well-being. Contact us now .', 'uploadfiles/iIJbhVXkAKvF1u4OFi67bNQ7QTDAqzItycls9dJp.jpg', 'uploadfiles/RKnaS1s7jcSZOvwy7OOzH311sZ4cP1MkmULIH8fb.jpg', 'Reach Out Today And Get Resolved Life Issues'),
(7, 'Photo Gallery', 0, 3, 'site.photo.gallery', '', 1, NULL, 1, NULL, '2023-11-18 04:50:11', 'Explore our gallery and relive the moments that define our mission and commitment to making lives happier and healthier. check out now!', 'uploadfiles/ovEM8LmKLMDQfscgn0fZnVllkpIMJsrGYKBd5t6V.png', 'uploadfiles/KesoG89qasUsC3FfLocJlV4MFycy3uax36HMGhTg.jpg', 'Check Out Our Journey in Pictures of Gallery'),
(8, 'FAQ', 0, 4, 'site.faq', '', 1, NULL, 1, NULL, '2023-11-18 04:49:47', 'Find answers to common questions about life issues that come to mind. If you have some questions in your mind, check out our faq where you might get answered.', 'uploadfiles/9HbLA3IHqne8KGLzYgzcU31z125BTpqC6LKzl0TA.png', 'uploadfiles/y0MvOcASflfNNxxKyHoGON3NzeMyRby9fQQMfsmI.jpg', 'Your Thought of Questions We Answered Them'),
(9, 'Vouchers', 0, 4, 'site.vouchers', '', 0, 1, 1, '2022-06-11 06:00:06', '2023-10-17 01:42:08', 'Vouchers', '', '', NULL),
(18, 'Blogs', 0, 7, 'blogs.list', '', 1, 1, 1, '2023-10-26 06:16:41', '2023-11-03 07:05:10', 'Discover our blog for expert insights and guidance on improving your life. Explore topics that lead to happiness and well-being. Read the blogs now!', 'uploadfiles/v4GItrheIAhmrEsKL4F5EZ2wqgf8tozXSR8DzO2s.jpg', 'uploadfiles/SAjwbKgcCw4EbbOHxnYFAVWvA7DcpgJTdd5YXcZm.jpg', 'Read Blogs And Get Insights for a Better Life'),
(19, 'AAA', 0, 0, 'site.home', 'sdfsdf', 0, 1, 1, '2023-11-08 05:14:38', '2023-11-08 05:38:14', 'asdfsdfsdf', 'uploadfiles/bwRseAT0fePOorFYlDnyn8s492xqJI7kIh1kaNRv.png', 'uploadfiles/RqQmDlbrJ1TMHStEP7L2mAeTpLKIsqAgqJph0aWX.png', 'sfsdfsdf');

-- --------------------------------------------------------

--
-- Table structure for table `site_photo_galleries`
--

DROP TABLE IF EXISTS `site_photo_galleries`;
CREATE TABLE IF NOT EXISTS `site_photo_galleries` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_url` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL DEFAULT '0',
  `description` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_photo_galleries`
--

INSERT INTO `site_photo_galleries` (`id`, `name`, `image_url`, `order`, `status`, `description`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(2, 'Example Name', 'uploadfiles/fQLn6wrjdOzDq3SVHNdpN9XciNQIPDW9tMSF2Utg.jpg', 0, 0, NULL, NULL, 1, NULL, '2023-10-30 04:59:21'),
(3, 'A', 'uploadfiles/hIQzhOftYVivKGAJjczV3TS4pn5rteGpGtG4C8pN.jpg', 1, 1, NULL, 1, NULL, '2023-10-30 04:56:42', '2023-10-30 04:56:42'),
(4, 'B', 'uploadfiles/vYf4TGowc4X2O5gLBFRZrGQFT2pmQ4QafMm7VKl7.jpg', 2, 1, NULL, 1, NULL, '2023-10-30 04:56:54', '2023-10-30 04:56:54'),
(5, 'C', 'uploadfiles/se1EoHmWXAOCUYUCq3vzRuqW5IK6FOgM2UD86KVD.jpg', 3, 0, NULL, 1, 1, '2023-10-30 04:57:09', '2023-11-03 06:44:24'),
(6, 'D', 'uploadfiles/9nzfn87tmR4U5kcXLgYIqzA9cv1MvNk0l2WaXZmA.jpg', 4, 1, NULL, 1, 1, '2023-10-30 04:57:19', '2023-10-30 04:59:09'),
(7, 'E', 'uploadfiles/vjxR9ltOdxENC5b2Kfqxmtjh0Wl1x7PdUBHQDTtn.jpg', 5, 1, NULL, 1, 1, '2023-10-30 04:57:28', '2023-10-30 04:59:15'),
(8, 'F', 'uploadfiles/P3uwabHTYg0P23hn3fvJHc5n3csZmwkMfSTBnIM3.jpg', 0, 0, NULL, 1, NULL, '2023-11-03 23:06:26', '2023-11-03 23:06:26');

-- --------------------------------------------------------

--
-- Table structure for table `site_terms_and_conditions`
--

DROP TABLE IF EXISTS `site_terms_and_conditions`;
CREATE TABLE IF NOT EXISTS `site_terms_and_conditions` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_terms_and_conditions`
--

INSERT INTO `site_terms_and_conditions` (`id`, `details`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '<p>This document represents the legally binding terms and conditions (\"Terms\") governing your use of the \"<strong>Hey Counsellor</strong>\" website (\"Website\"), a life coaching platform owned and operated by <strong>Sadei Digital Pvt. Ltd</strong>. (\"Hey Counsellor,\" \"we,\" \"us,\" or \"our\"). By accessing or using our Website, you agree to be bound by these Terms. Please read this document carefully before using our services. If you do not agree to these Terms, please refrain from using our platform.</p>\r\n<p><strong>1. User Agreement</strong><br>\r\n&nbsp;&nbsp;&nbsp;&nbsp;By using our Website, you agree that you are at least 18 years of age or have obtained parental or legal guardian consent to use our services. You also acknowledge that these Terms constitute a legally binding agreement between you and Hey Counsellor.</p>\r\n<p><strong>2. Services Provided</strong><br>\r\n&nbsp;&nbsp;&nbsp;&nbsp;Hey Counsellor offers an online life coaching and counselling platform that connects users with certified life coaches and counsellors. The services include but are not limited to one-on-one sessions, group sessions, and access to a variety of digital resources and content.</p>\r\n<p><strong>3. User Responsibilities</strong><br>\r\nYou are solely responsible for maintaining the confidentiality of your account and password.<br>\r\nYou agree to provide accurate and up-to-date information during registration and for any information requested by your counsellor.<br>\r\nYou agree to use Hey Counsellor for lawful purposes only and not for any illegal or unethical activities.</p>\r\n<p><strong>4. Payment and Billing</strong><br>\r\n&nbsp;&nbsp;&nbsp;&nbsp;Some services on Hey Counsellor may be subject to fees. You agree to pay all fees associated with the use of such services, as outlined on the platform. All payments are processed through secure payment gateways.</p>\r\n<p><strong>5. Privacy and Data Security</strong><br>\r\n&nbsp;&nbsp;&nbsp;&nbsp;Hey Counsellor takes the privacy and security of your personal information seriously. Our Privacy Policy outlines how your data is collected, used, and protected.</p>\r\n<p><strong>6. Intellectual Property</strong><br>\r\n&nbsp;&nbsp;&nbsp;&nbsp;All content, materials, and resources on the Hey Counsellor platform are protected by intellectual property rights. You may use the materials only for your personal, non-commercial purposes and shall not copy, distribute, or modify them without our written consent.</p>\r\n<p><strong>7. Code of Conduct</strong><br>\r\n&nbsp;&nbsp;&nbsp;&nbsp;You agree to abide by a code of conduct that promotes respectful and appropriate behaviour when using Hey Counsellor. This includes refraining from abusive language, harassment, or any form of discrimination.</p>\r\n<p><strong>8. Termination</strong><br>\r\n&nbsp;&nbsp;&nbsp;&nbsp;We reserve the right to terminate or suspend your account, without notice, if you violate these Terms or for any other reason deemed appropriate by Hey Counsellor.</p>\r\n<p><strong>9.&nbsp;Disclaimers and Limitations of Liability</strong></p>\r\n<ul>\r\n<li>Hey Counsellor is a platform for connecting users with counsellors, and we do not provide medical, legal, or financial advice.</li>\r\n<li>We are not responsible for the content provided by counsellors or users.</li>\r\n<li>We are not liable for any damages or losses resulting from your use of Hey Counsellor.</li>\r\n</ul>\r\n<p><br data-tomark-pass=\"\"><br>\r\n<strong>10. Changes to Terms</strong><br>\r\n&nbsp;&nbsp;&nbsp;&nbsp;We may update or revise these Terms at any time without notice. It is your responsibility to review the Terms periodically to stay informed of any changes.</p>\r\n<p><strong>11. Governing Law</strong><br>\r\n&nbsp;&nbsp;&nbsp;&nbsp;These Terms are governed by and constructed in accordance with the laws of Dehradun, and any disputes will be subject to the exclusive jurisdiction of the courts in that jurisdiction.</p>\r\n<p><strong>12. Contact Information</strong><br>\r\n&nbsp;&nbsp;&nbsp;&nbsp;If you have any questions or concerns about these Terms, you can contact Hey Counsellor at <a href=\"mailto:enquiry@heycounsellor.com\"><strong>enquiry@heycounsellor.com</strong></a>&nbsp;or <strong>+91 7300 999 433</strong><br>\r\n&nbsp;&nbsp;&nbsp;&nbsp;By using Hey Counsellor, you acknowledge that you have read, understood, and agreed to these Terms &amp; Conditions. If you do not agree to these Terms, please do not use our platform.</p>', 1, NULL, 1, NULL, '2023-11-02 07:13:16');

-- --------------------------------------------------------

--
-- Table structure for table `st_otp_configurations`
--

DROP TABLE IF EXISTS `st_otp_configurations`;
CREATE TABLE IF NOT EXISTS `st_otp_configurations` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sms_gateway` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `st_otp_configurations_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `st_otp_configurations`
--

INSERT INTO `st_otp_configurations` (`id`, `name`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `sms_gateway`) VALUES
(1, 'Twilio', 0, NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `st_otp_messages`
--

DROP TABLE IF EXISTS `st_otp_messages`;
CREATE TABLE IF NOT EXISTS `st_otp_messages` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `message_type` int NOT NULL,
  `message_for` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `st_otp_messages`
--

INSERT INTO `st_otp_messages` (`id`, `message_type`, `message_for`, `tags`, `message`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 3, 'Service Cancel', '{booking_number}', 'Your booking has been cancelled booking no is: {booking_number}', 0, NULL, NULL, NULL, NULL),
(2, 4, 'Service Status', '{booking_number},{service_status},{service_date},{service_start},{service_end}', 'Your service request is {service_status}, booking no# {booking_number}, booking date# {service_date} and service start# {service_start} - {service_end}', 0, NULL, NULL, NULL, NULL),
(3, 5, 'Service Confirm', '{booking_number},{service_date},{service_start},{service_end}', 'Your booking is confirmed, booking no# {booking_number}, booking date# {service_date} and service start# {service_start} - {service_end}', 0, NULL, NULL, NULL, NULL),
(4, 6, 'Order Place', '{order_number}', 'Your order has been placed: {order_number}', 0, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_sys_adm` int NOT NULL DEFAULT '0',
  `user_type` tinyint NOT NULL DEFAULT '2',
  `photo` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sch_employee_id` bigint UNSIGNED DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `email` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `google_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`),
  KEY `users_sch_employee_id_foreign` (`sch_employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `is_sys_adm`, `user_type`, `photo`, `sch_employee_id`, `status`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `google_id`) VALUES
(1, 'admin User', 'admin', 1, 1, 'uploadfiles/BBz6g3ChuPBjqSRTTzgBvCX6oJsCqZTps4yboslK.png', NULL, 1, 'admin@example.com', '2021-10-11 04:59:29', '$2y$10$wFbgB1MILINZZQFzh5MXPe.kk4NqZWVnmHItKZSego9rnA1F2Uuhy', 'jvejPgKzLU2Fto8dSYuiOsQUq0YTu8wcHzW6xaoCBoJK4UDOfCX6nJ4ZrcPl', NULL, '2023-11-17 08:37:57', NULL),
(29, 'Web User', 'webuser', 0, 2, NULL, NULL, 1, 'webuser@example.com', '2022-01-07 06:54:59', '$2y$10$yL5GQDpdgJOrEZJiCqIB6O.KoTGa3c.BUnFU28DJ0ZPPQuYPKOa/G', 'IbVWADnPppN1DTIsGgrRs5JwhJmlmxvMXUryJGMZeLyJZf9u7JKJ1WsTwq02', '2022-01-07 06:54:59', '2022-01-14 07:25:15', NULL),
(30, 'Staff Employee', 'staff', 0, 1, NULL, 1, 1, 'staff@gmail.com', '2022-01-14 07:05:43', '$2y$10$yL5GQDpdgJOrEZJiCqIB6O.KoTGa3c.BUnFU28DJ0ZPPQuYPKOa/G', NULL, '2022-01-14 07:05:43', '2022-01-14 07:05:43', NULL),
(31, 'A', 'user1', 0, 2, NULL, NULL, 1, 'hevadej571@czilou.com', '2023-10-13 02:01:54', '$2y$10$12GoO.NvFawRAyJfC4MEN.kSBlJm0yrCypsp2Wk0W8Vn20BYWUwru', NULL, '2023-10-13 02:01:15', '2023-10-13 02:01:54', NULL),
(32, 'B', 'user2', 0, 2, NULL, NULL, 1, 'developmenttesting.hodu+1@gmail.com', '2023-10-13 22:55:13', '$2y$10$arObSoCSdf2iKQm/1RvOPO6PQmBkTjbnd5unkvusIhDvXLA7QNjqK', NULL, '2023-10-13 22:54:04', '2023-10-13 22:55:13', NULL),
(33, 'Sawan Chandra', 'sawanchandra', 0, 1, NULL, 2, 1, 'chandra@thestudylamp.in', '2023-10-17 23:05:18', '$2y$10$7xlEMYTuSjjm2XDKfGu1eOFQgx/bLhucYPABqusIDPB7u0Zjua48m', NULL, '2023-10-17 23:05:18', '2023-10-17 23:05:18', NULL),
(36, 'Arvind Negi', 'ArvindNegi34', 0, 2, 'uploadfiles/UkjxICpLZG3bqjOduCBjNcXcE9jBsSwE83iezFIe.jpg', NULL, 1, 'arvindsinghnegi.hodu@gmail.com', '2023-10-27 03:59:33', '$2y$10$d2ji8RHJkKqXuKrPHyxh3.KXSSdyTwEEVjgd4FWn6wiQRJ2SAgDaK', '1XeUJJn2iQ0y2OFjP9z3Bh4WPf33MmEEzbWgpNL5om4GB8LFhyqBIhHLjrYq', '2023-10-27 02:07:22', '2023-11-16 07:17:49', '104299706432757217596'),
(49, 'Testing Account', 'TestingAccount37', 0, 2, NULL, NULL, 1, 'developmenttesting.hodu@gmail.com', '2023-10-29 23:31:11', '$2y$10$jbXFswP9HBKAG6MMbvhorON4MQ6A8t9mp4kg7cwJEXGXfgeqxFfxm', NULL, '2023-10-29 23:30:50', '2023-10-29 23:31:11', '112994953433905302309'),
(50, 'arvindsinghnegi', 'arvindsinghnegihoduaa', 0, 2, NULL, NULL, 1, 'arvindsinghnegi.hodu+aa@gmail.com', '2023-11-16 06:56:20', '$2y$10$5XalyIZLuuueuzUFAvSK5.Jt3NdUq8lk/84TgL6D.exb8.4BlYFh2', NULL, '2023-11-16 06:52:51', '2023-11-16 06:56:20', NULL);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_blog_categorie_id_foreign` FOREIGN KEY (`blog_categorie_id`) REFERENCES `blog_categories` (`id`),
  ADD CONSTRAINT `blogs_blog_tag_id_foreign` FOREIGN KEY (`blog_tag_id`) REFERENCES `blog_tags` (`id`);

--
-- Constraints for table `cmn_business_holidays`
--
ALTER TABLE `cmn_business_holidays`
  ADD CONSTRAINT `cmn_business_holidays_cmn_branch_id_foreign` FOREIGN KEY (`cmn_branch_id`) REFERENCES `cmn_branches` (`id`);

--
-- Constraints for table `cmn_business_hours`
--
ALTER TABLE `cmn_business_hours`
  ADD CONSTRAINT `cmn_business_hours_cmn_branch_id_foreign` FOREIGN KEY (`cmn_branch_id`) REFERENCES `cmn_branches` (`id`);

--
-- Constraints for table `cmn_categories`
--
ALTER TABLE `cmn_categories`
  ADD CONSTRAINT `cmn_categories_cmn_category_id_foreign` FOREIGN KEY (`cmn_category_id`) REFERENCES `cmn_categories` (`id`);

--
-- Constraints for table `cmn_customers`
--
ALTER TABLE `cmn_customers`
  ADD CONSTRAINT `cmn_customers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `cmn_orders`
--
ALTER TABLE `cmn_orders`
  ADD CONSTRAINT `cmn_orders_cmn_coupon_id_foreign` FOREIGN KEY (`cmn_coupon_id`) REFERENCES `cmn_coupons` (`id`),
  ADD CONSTRAINT `cmn_orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `cmn_order_details`
--
ALTER TABLE `cmn_order_details`
  ADD CONSTRAINT `cmn_order_details_cmn_order_id_foreign` FOREIGN KEY (`cmn_order_id`) REFERENCES `cmn_orders` (`id`),
  ADD CONSTRAINT `cmn_order_details_cmn_product_id_foreign` FOREIGN KEY (`cmn_product_id`) REFERENCES `cmn_products` (`id`);

--
-- Constraints for table `cmn_paypal_api_configs`
--
ALTER TABLE `cmn_paypal_api_configs`
  ADD CONSTRAINT `cmn_paypal_api_configs_cmn_payment_type_id_foreign` FOREIGN KEY (`cmn_payment_type_id`) REFERENCES `cmn_payment_types` (`id`);

--
-- Constraints for table `cmn_products`
--
ALTER TABLE `cmn_products`
  ADD CONSTRAINT `cmn_products_cmn_category_id_foreign` FOREIGN KEY (`cmn_category_id`) REFERENCES `cmn_categories` (`id`),
  ADD CONSTRAINT `cmn_products_cmn_type_id_foreign` FOREIGN KEY (`cmn_type_id`) REFERENCES `cmn_types` (`id`);

--
-- Constraints for table `cmn_razorpay_configs`
--
ALTER TABLE `cmn_razorpay_configs`
  ADD CONSTRAINT `cmn_razorpay_configs_cmn_payment_type_id_foreign` FOREIGN KEY (`cmn_payment_type_id`) REFERENCES `cmn_payment_types` (`id`);

--
-- Constraints for table `cmn_stripe_api_configs`
--
ALTER TABLE `cmn_stripe_api_configs`
  ADD CONSTRAINT `cmn_stripe_api_configs_cmn_payment_type_id_foreign` FOREIGN KEY (`cmn_payment_type_id`) REFERENCES `cmn_payment_types` (`id`);

--
-- Constraints for table `cmn_translations`
--
ALTER TABLE `cmn_translations`
  ADD CONSTRAINT `cmn_translations_cmn_language_id_foreign` FOREIGN KEY (`cmn_language_id`) REFERENCES `cmn_languages` (`id`);

--
-- Constraints for table `cmn_user_balances`
--
ALTER TABLE `cmn_user_balances`
  ADD CONSTRAINT `cmn_user_balances_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `sch_employees`
--
ALTER TABLE `sch_employees`
  ADD CONSTRAINT `sch_employees_cmn_branch_id_foreign` FOREIGN KEY (`cmn_branch_id`) REFERENCES `cmn_branches` (`id`),
  ADD CONSTRAINT `sch_employees_hrm_department_id_foreign` FOREIGN KEY (`hrm_department_id`) REFERENCES `hrm_departments` (`id`),
  ADD CONSTRAINT `sch_employees_hrm_designation_id_foreign` FOREIGN KEY (`hrm_designation_id`) REFERENCES `hrm_designations` (`id`),
  ADD CONSTRAINT `sch_employees_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `sch_employee_offdays`
--
ALTER TABLE `sch_employee_offdays`
  ADD CONSTRAINT `sch_employee_offdays_sch_employee_id_foreign` FOREIGN KEY (`sch_employee_id`) REFERENCES `sch_employees` (`id`);

--
-- Constraints for table `sch_employee_schedules`
--
ALTER TABLE `sch_employee_schedules`
  ADD CONSTRAINT `sch_employee_schedules_sch_employee_id_foreign` FOREIGN KEY (`sch_employee_id`) REFERENCES `sch_employees` (`id`);

--
-- Constraints for table `sch_employee_services`
--
ALTER TABLE `sch_employee_services`
  ADD CONSTRAINT `sch_employee_services_sch_employee_id_foreign` FOREIGN KEY (`sch_employee_id`) REFERENCES `sch_employees` (`id`),
  ADD CONSTRAINT `sch_employee_services_sch_service_id_foreign` FOREIGN KEY (`sch_service_id`) REFERENCES `sch_services` (`id`);

--
-- Constraints for table `sch_services`
--
ALTER TABLE `sch_services`
  ADD CONSTRAINT `sch_services_sch_service_category_id_foreign` FOREIGN KEY (`sch_service_category_id`) REFERENCES `sch_service_categories` (`id`);

--
-- Constraints for table `sch_service_bookings`
--
ALTER TABLE `sch_service_bookings`
  ADD CONSTRAINT `fk_sch_service_booking_sch_service_booking_info_id` FOREIGN KEY (`sch_service_booking_info_id`) REFERENCES `sch_service_booking_infos` (`id`),
  ADD CONSTRAINT `sch_service_bookings_cancel_cmn_payment_type_id_foreign` FOREIGN KEY (`cancel_cmn_payment_type_id`) REFERENCES `cmn_payment_types` (`id`),
  ADD CONSTRAINT `sch_service_bookings_cmn_branch_id_foreign` FOREIGN KEY (`cmn_branch_id`) REFERENCES `cmn_branches` (`id`),
  ADD CONSTRAINT `sch_service_bookings_cmn_customer_id_foreign` FOREIGN KEY (`cmn_customer_id`) REFERENCES `cmn_customers` (`id`),
  ADD CONSTRAINT `sch_service_bookings_cmn_payment_type_id_foreign` FOREIGN KEY (`cmn_payment_type_id`) REFERENCES `cmn_payment_types` (`id`),
  ADD CONSTRAINT `sch_service_bookings_sch_employee_id_foreign` FOREIGN KEY (`sch_employee_id`) REFERENCES `sch_employees` (`id`),
  ADD CONSTRAINT `sch_service_bookings_sch_service_id_foreign` FOREIGN KEY (`sch_service_id`) REFERENCES `sch_services` (`id`);

--
-- Constraints for table `sch_service_booking_feedback`
--
ALTER TABLE `sch_service_booking_feedback`
  ADD CONSTRAINT `sch_sb_id` FOREIGN KEY (`sch_service_booking_id`) REFERENCES `sch_service_bookings` (`id`),
  ADD CONSTRAINT `sch_service_booking_feedback_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `sch_service_booking_infos`
--
ALTER TABLE `sch_service_booking_infos`
  ADD CONSTRAINT `sch_service_booking_infos_cmn_customer_id_foreign` FOREIGN KEY (`cmn_customer_id`) REFERENCES `cmn_customers` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `sec_resource_permissions`
--
ALTER TABLE `sec_resource_permissions`
  ADD CONSTRAINT `sec_resource_permissions_sec_resource_id_foreign` FOREIGN KEY (`sec_resource_id`) REFERENCES `sec_resources` (`id`),
  ADD CONSTRAINT `sec_resource_permissions_sec_role_id_foreign` FOREIGN KEY (`sec_role_id`) REFERENCES `sec_roles` (`id`);

--
-- Constraints for table `sec_role_permissions`
--
ALTER TABLE `sec_role_permissions`
  ADD CONSTRAINT `sec_role_permissions_sec_role_id_foreign` FOREIGN KEY (`sec_role_id`) REFERENCES `sec_roles` (`id`),
  ADD CONSTRAINT `sec_role_permissions_sec_role_permission_info_id_foreign` FOREIGN KEY (`sec_role_permission_info_id`) REFERENCES `sec_role_permission_infos` (`id`);

--
-- Constraints for table `sec_role_permission_infos`
--
ALTER TABLE `sec_role_permission_infos`
  ADD CONSTRAINT `sec_role_permission_infos_sec_resource_id_foreign` FOREIGN KEY (`sec_resource_id`) REFERENCES `sec_resources` (`id`);

--
-- Constraints for table `sec_user_branches`
--
ALTER TABLE `sec_user_branches`
  ADD CONSTRAINT `sec_user_branches_cmn_branch_id_foreign` FOREIGN KEY (`cmn_branch_id`) REFERENCES `cmn_branches` (`id`),
  ADD CONSTRAINT `sec_user_branches_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `sec_user_roles`
--
ALTER TABLE `sec_user_roles`
  ADD CONSTRAINT `sec_user_roles_sec_role_id_foreign` FOREIGN KEY (`sec_role_id`) REFERENCES `sec_roles` (`id`),
  ADD CONSTRAINT `sec_user_roles_sec_user_id_foreign` FOREIGN KEY (`sec_user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_sch_employee_id_foreign` FOREIGN KEY (`sch_employee_id`) REFERENCES `sch_employees` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
