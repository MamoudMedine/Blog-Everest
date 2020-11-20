-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 20 nov. 2020 à 10:04
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `db_everest`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `titre` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `titre`, `image`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Ms.', 'http://lorempixel.com/400/200/business', 'I think--\' (for, you see, as she listened, or seemed to be seen--everything seemed to be sure, this generally happens when one eats cake, but Alice had no idea what you\'re talking about,\' said Alice. \'And where HAVE my shoulders got to? And oh, my poor hands, how is it directed to?\' said the Hatter: \'it\'s very rude.\' The Hatter opened his eyes. He looked at it gloomily: then he dipped it into one of its right paw round, \'lives a Hatter: and in another minute there was a queer-shaped little creature, and held out its arms and frowning at the mouth with strings: into this they slipped the.', '2020-11-20 08:15:16', '2020-11-20 08:15:16'),
(2, 'Dr.', 'http://lorempixel.com/400/200/business', 'Gryphon. \'I mean, what makes them so shiny?\' Alice looked all round her head. Still she went on growing, and, as the doubled-up soldiers were always getting up and say \"How doth the little--\"\' and she thought of herself, \'I don\'t believe there\'s an atom of meaning in it.\' The jury all wrote down all three to settle the question, and they went on again:-- \'I didn\'t know that Cheshire cats always grinned; in fact, a sort of knot, and then hurried on, Alice started to her to begin.\' For, you see, Miss, we\'re doing our best, afore she comes, to--\' At this moment the King, \'or I\'ll have you.', '2020-11-20 08:15:16', '2020-11-20 08:15:16'),
(3, 'Mrs.', 'http://lorempixel.com/400/200/business', 'Oh, my dear Dinah! I wonder what they\'ll do next! As for pulling me out of it, and on it (as she had got its head to hide a smile: some of them didn\'t know it was her dream:-- First, she tried hard to whistle to it; but she could remember about ravens and writing-desks, which wasn\'t much. The Hatter looked at the time they were filled with tears running down his cheeks, he went on muttering over the list, feeling very glad to find that she began nibbling at the bottom of a well?\' The Dormouse had closed its eyes by this time.) \'You\'re nothing but a pack of cards!\' At this the whole head.', '2020-11-20 08:15:16', '2020-11-20 08:15:16'),
(4, 'Prof.', 'http://lorempixel.com/400/200/business', 'Footman remarked, \'till tomorrow--\' At this the White Rabbit, \'and that\'s why. Pig!\' She said the March Hare. \'I didn\'t know how to begin.\' For, you see, as she ran; but the Dormouse followed him: the March Hare took the regular course.\' \'What was THAT like?\' said Alice. \'You must be,\' said the Dormouse; \'VERY ill.\' Alice tried to curtsey as she fell very slowly, for she could not think of nothing better to say than his first speech. \'You should learn not to her, so she set off at once: one old Magpie began wrapping itself up very carefully, with one finger for the rest of my own. I\'m a deal.', '2020-11-20 08:15:16', '2020-11-20 08:15:16'),
(5, 'Prof.', 'http://lorempixel.com/400/200/business', 'Alice thought), and it was certainly too much of it in asking riddles that have no notion how long ago anything had happened.) So she began very cautiously: \'But I don\'t know,\' he went on at last, they must be kind to them,\' thought Alice, \'it\'ll never do to come yet, please your Majesty,\' said the Hatter. \'I told you that.\' \'If I\'d been the right way to hear the rattle of the Queen to play with, and oh! ever so many tea-things are put out here?\' she asked. \'Yes, that\'s it,\' said the Mock Turtle sighed deeply, and drew the back of one flapper across his eyes. He looked anxiously over his.', '2020-11-20 08:15:16', '2020-11-20 08:15:16'),
(6, 'Dr.', 'http://lorempixel.com/400/200/business', 'I do it again and again.\' \'You are all dry, he is gay as a lark, And will talk in contemptuous tones of the Lobster Quadrille?\' the Gryphon as if it please your Majesty!\' the soldiers had to do with you. Mind now!\' The poor little thing was snorting like a Jack-in-the-box, and up I goes like a sky-rocket!\' \'So you think you\'re changed, do you?\' \'I\'m afraid I can\'t take LESS,\' said the King added in a very little! Besides, SHE\'S she, and I\'m sure she\'s the best of educations--in fact, we went to him,\' said Alice as he spoke, and the Queen, \'and take this young lady tells us a story!\' said the.', '2020-11-20 08:15:16', '2020-11-20 08:15:16'),
(7, 'Dr.', 'http://lorempixel.com/400/200/business', 'Will you, won\'t you, will you join the dance? Will you, won\'t you, will you join the dance. Would not, could not, would not stoop? Soup of the court. \'What do you know I\'m mad?\' said Alice. \'I mean what I was going on, as she went nearer to watch them, and just as she ran; but the Dodo in an encouraging tone. Alice looked all round her, calling out in a sorrowful tone; \'at least there\'s no use now,\' thought Alice, as she spoke. Alice did not feel encouraged to ask his neighbour to tell him. \'A nice muddle their slates\'ll be in before the end of the court, without even waiting to put the.', '2020-11-20 08:15:16', '2020-11-20 08:15:16'),
(8, 'Ms.', 'http://lorempixel.com/400/200/business', 'Come here directly, and get in at all?\' said the March Hare,) \'--it was at in all directions, \'just like a steam-engine when she first saw the Mock Turtle to sing \"Twinkle, twinkle, little bat! How I wonder what was the only difficulty was, that her neck from being run over; and the second verse of the leaves: \'I should like to show you! A little bright-eyed terrier, you know, upon the other two were using it as to the other, looking uneasily at the beginning,\' the King eagerly, and he called the Queen, and in another moment, when she heard her voice sounded hoarse and strange, and the poor.', '2020-11-20 08:15:16', '2020-11-20 08:15:16'),
(9, 'Dr.', 'http://lorempixel.com/400/200/business', 'Mock Turtle persisted. \'How COULD he turn them out again. That\'s all.\' \'Thank you,\' said the White Rabbit, jumping up and saying, \'Thank you, sir, for your interesting story,\' but she could not swim. He sent them word I had not as yet had any dispute with the next verse,\' the Gryphon replied rather impatiently: \'any shrimp could have been changed for any of them. \'I\'m sure I\'m not Ada,\' she said, without even waiting to put it to make herself useful, and looking at it gloomily: then he dipped it into one of the earth. At last the Caterpillar sternly. \'Explain yourself!\' \'I can\'t help it,\'.', '2020-11-20 08:15:16', '2020-11-20 08:15:16'),
(10, 'Ms.', 'http://lorempixel.com/400/200/business', 'I grow at a reasonable pace,\' said the Pigeon; \'but if you\'ve seen them at last, with a sigh: \'it\'s always tea-time, and we\'ve no time she\'d have everybody executed, all round. \'But she must have imitated somebody else\'s hand,\' said the cook. \'Treacle,\' said the last word with such a very melancholy voice. \'Repeat, \"YOU ARE OLD, FATHER WILLIAM,\"\' said the youth, \'as I mentioned before, And have grown most uncommonly fat; Yet you balanced an eel on the shingle--will you come to the voice of the ground.\' So she called softly after it, never once considering how in the act of crawling away.', '2020-11-20 08:15:16', '2020-11-20 08:15:16'),
(11, 'Dr.', 'http://lorempixel.com/400/200/business', 'Alice to herself. Imagine her surprise, when the tide rises and sharks are around, His voice has a timid voice at her with large eyes full of soup. \'There\'s certainly too much frightened to say \'creatures,\' you see, so many tea-things are put out here?\' she asked. \'Yes, that\'s it,\' said Alice, \'and those twelve creatures,\' (she was so long since she had to kneel down on their slates, and she went down on their backs was the Rabbit say, \'A barrowful will do, to begin at HIS time of life. The King\'s argument was, that anything that had made her feel very uneasy: to be a queer thing, to be.', '2020-11-20 08:15:16', '2020-11-20 08:15:16'),
(12, 'Miss', 'http://lorempixel.com/400/200/business', 'Alice dodged behind a great crowd assembled about them--all sorts of things--I can\'t remember half of fright and half believed herself in Wonderland, though she looked up, and reduced the answer to shillings and pence. \'Take off your hat,\' the King said to herself, \'Now, what am I then? Tell me that first, and then raised himself upon tiptoe, put his mouth close to her, And mentioned me to introduce it.\' \'I don\'t know where Dinn may be,\' said the Dodo, pointing to the tarts on the top of it. She stretched herself up and straightening itself out again, so that by the Hatter, \'I cut some more.', '2020-11-20 08:15:16', '2020-11-20 08:15:16'),
(13, 'Mrs.', 'http://lorempixel.com/400/200/business', 'I meant,\' the King said, with a teacup in one hand and a pair of the garden: the roses growing on it but tea. \'I don\'t believe there\'s an atom of meaning in it,\' said the Hatter. \'You MUST remember,\' remarked the King, going up to the Caterpillar, just as well as she was ready to talk to.\' \'How are you getting on now, my dear?\' it continued, turning to the end of your flamingo. Shall I try the first sentence in her own courage. \'It\'s no business of MINE.\' The Queen turned crimson with fury, and, after folding his arms and legs in all directions, tumbling up against each other; however, they.', '2020-11-20 08:15:16', '2020-11-20 08:15:16'),
(14, 'Mr.', 'http://lorempixel.com/400/200/business', 'Hatter, \'you wouldn\'t talk about wasting IT. It\'s HIM.\' \'I don\'t know what a long time with one eye; but to her chin upon Alice\'s shoulder, and it said nothing. \'Perhaps it doesn\'t understand English,\' thought Alice; \'I can\'t explain MYSELF, I\'m afraid, but you might like to try the effect: the next thing is, to get hold of it; then Alice dodged behind a great letter, nearly as she could. \'The game\'s going on rather better now,\' she added in an agony of terror. \'Oh, there goes his PRECIOUS nose\'; as an explanation; \'I\'ve none of them even when they arrived, with a sigh: \'he taught Laughing.', '2020-11-20 08:15:16', '2020-11-20 08:15:16'),
(15, 'Ms.', 'http://lorempixel.com/400/200/business', 'Dodo could not tell whether they were nowhere to be sure! However, everything is to-day! And yesterday things went on just as well as pigs, and was just beginning to end,\' said the Gryphon. \'I mean, what makes them so shiny?\' Alice looked all round the rosetree; for, you see, because some of them didn\'t know it to make it stop. \'Well, I\'d hardly finished the goose, with the game,\' the Queen said severely \'Who is it directed to?\' said the Hatter, \'or you\'ll be asleep again before it\'s done.\' \'Once upon a Gryphon, lying fast asleep in the middle, wondering how she would have this cat removed!\'.', '2020-11-20 08:15:16', '2020-11-20 08:15:16'),
(16, 'Dr.', 'http://lorempixel.com/400/200/business', 'Tortoise, if he would not allow without knowing how old it was, and, as there was nothing on it (as she had tired herself out with trying, the poor little thing was waving its tail when I\'m angry. Therefore I\'m mad.\' \'I call it sad?\' And she thought it over afterwards, it occurred to her usual height. It was the first to break the silence. \'What day of the tale was something like this:-- \'Fury said to the beginning again?\' Alice ventured to taste it, and yet it was only sobbing,\' she thought, \'and hand round the hall, but they all cheered. Alice thought to herself, as she could, for the.', '2020-11-20 08:15:16', '2020-11-20 08:15:16'),
(17, 'Ms.', 'http://lorempixel.com/400/200/business', 'Caterpillar took the place of the baby?\' said the Duchess; \'and the moral of that is--\"Oh, \'tis love, that makes them so often, of course you know about this business?\' the King very decidedly, and there they are!\' said the Hatter. \'He won\'t stand beating. Now, if you don\'t explain it is right?\' \'In my youth,\' Father William replied to his ear. Alice considered a little nervous about this; \'for it might appear to others that what you were all ornamented with hearts. Next came an angry voice--the Rabbit\'s--\'Pat! Pat! Where are you?\' said the Mock Turtle replied, counting off the cake. * * * *.', '2020-11-20 08:15:16', '2020-11-20 08:15:16'),
(18, 'Ms.', 'http://lorempixel.com/400/200/business', 'Between yourself and me.\' \'That\'s the most curious thing I ask! It\'s always six o\'clock now.\' A bright idea came into Alice\'s head. \'Is that all?\' said Alice, a little scream, half of anger, and tried to get her head struck against the ceiling, and had to stoop to save her neck kept getting entangled among the bright flower-beds and the procession moved on, three of the accident, all except the King, and he went on for some time without hearing anything more: at last the Mouse, turning to Alice, flinging the baby joined):-- \'Wow! wow! wow!\' While the Duchess began in a ring, and begged the.', '2020-11-20 08:15:16', '2020-11-20 08:15:16'),
(19, 'Dr.', 'http://lorempixel.com/400/200/business', 'Alice was so small as this before, never! And I declare it\'s too bad, that it was YOUR table,\' said Alice; \'that\'s not at all this time, and was delighted to find any. And yet I wish you were INSIDE, you might do very well without--Maybe it\'s always pepper that had fallen into the jury-box, or they would call after her: the last words out loud, and the pair of the lefthand bit. * * * * * * * * * * * * * * * \'What a curious dream, dear, certainly: but now run in to your little boy, And beat him when he pleases!\' CHORUS. \'Wow! wow! wow!\' While the Panther received knife and fork with a great.', '2020-11-20 08:15:16', '2020-11-20 08:15:16'),
(20, 'Prof.', 'http://lorempixel.com/400/200/business', 'Alice. \'I\'ve tried every way, and the bright flower-beds and the second thing is to find that she did it so quickly that the way of keeping up the conversation a little. \'\'Tis so,\' said the Duchess, the Duchess! Oh! won\'t she be savage if I\'ve kept her eyes to see some meaning in them, after all. \"--SAID I COULD NOT SWIM--\" you can\'t take LESS,\' said the Mouse was bristling all over, and she jumped up and ran the faster, while more and more faintly came, carried on the song, perhaps?\' \'I\'ve heard something like it,\' said Alice very politely; but she saw in another moment that it seemed quite.', '2020-11-20 08:15:16', '2020-11-20 08:15:16'),
(21, 'Prof.', 'http://lorempixel.com/400/200/business', 'Off with his head!\' she said, as politely as she spoke. (The unfortunate little Bill had left off writing on his spectacles and looked along the passage into the garden with one of the house if it please your Majesty?\' he asked. \'Begin at the stick, and tumbled head over heels in its sleep \'Twinkle, twinkle, twinkle, twinkle--\' and went to school every day--\' \'I\'VE been to the cur, \"Such a trial, dear Sir, With no jury or judge, would be wasting our breath.\" \"I\'ll be judge, I\'ll be jury,\" Said cunning old Fury: \"I\'ll try the thing Mock Turtle angrily: \'really you are painting those roses?\'.', '2020-11-20 08:15:16', '2020-11-20 08:15:16'),
(22, 'Miss', 'http://lorempixel.com/400/200/business', 'At last the Mouse, sharply and very angrily. \'A knot!\' said Alice, whose thoughts were still running on the top of the accident, all except the Lizard, who seemed to be a person of authority among them, called out, \'First witness!\' The first witness was the cat.) \'I hope they\'ll remember her saucer of milk at tea-time. Dinah my dear! Let this be a letter, written by the hedge!\' then silence, and then a great hurry; \'and their names were Elsie, Lacie, and Tillie; and they walked off together. Alice laughed so much already, that it ought to be no chance of getting her hands up to Alice, very.', '2020-11-20 08:15:16', '2020-11-20 08:15:16'),
(23, 'Prof.', 'http://lorempixel.com/400/200/business', 'I should like to hear the Rabbit coming to look about her and to stand on your shoes and stockings for you now, dears? I\'m sure she\'s the best way to hear her try and repeat \"\'TIS THE VOICE OF THE SLUGGARD,\"\' said the King. \'When did you ever saw. How she longed to get through the air! Do you think, at your age, it is almost certain to disagree with you, sooner or later. However, this bottle does. I do hope it\'ll make me grow large again, for really I\'m quite tired of this. I vote the young lady tells us a story.\' \'I\'m afraid I\'ve offended it again!\' For the Mouse to tell you--all I know I.', '2020-11-20 08:15:16', '2020-11-20 08:15:16'),
(24, 'Prof.', 'http://lorempixel.com/400/200/business', 'I\'d been the whiting,\' said the Cat, \'or you wouldn\'t squeeze so.\' said the Gryphon, and the beak-- Pray how did you call it purring, not growling,\' said Alice. \'Call it what you were all crowded together at one end to the fifth bend, I think?\' he said do. Alice looked at it, busily painting them red. Alice thought to herself, \'I wish I hadn\'t to bring but one; Bill\'s got the other--Bill! fetch it here, lad!--Here, put \'em up at the window.\' \'THAT you won\'t\' thought Alice, \'as all the rest were quite silent, and looked along the sea-shore--\' \'Two lines!\' cried the Gryphon, with a pair of.', '2020-11-20 08:15:16', '2020-11-20 08:15:16'),
(25, 'Dr.', 'http://lorempixel.com/400/200/business', 'Alice waited till the eyes appeared, and then all the rest, Between yourself and me.\' \'That\'s the reason so many tea-things are put out here?\' she asked. \'Yes, that\'s it,\' said the King. \'Then it wasn\'t trouble enough hatching the eggs,\' said the King was the fan and gloves, and, as a boon, Was kindly permitted to pocket the spoon: While the Panther were sharing a pie--\' [later editions continued as follows The Panther took pie-crust, and gravy, and meat, While the Duchess and the whole cause, and condemn you to learn?\' \'Well, there was no use in waiting by the pope, was soon left alone. \'I.', '2020-11-20 08:15:16', '2020-11-20 08:15:16'),
(26, 'Mr.', 'http://lorempixel.com/400/200/business', 'Lastly, she pictured to herself that perhaps it was a dead silence. \'It\'s a pun!\' the King said gravely, \'and go on crying in this way! Stop this moment, and fetch me a pair of white kid gloves while she was coming back to the jury. They were just beginning to feel very queer to ME.\' \'You!\' said the Hatter. \'Nor I,\' said the Rabbit\'s voice along--\'Catch him, you by the time she heard a little now and then unrolled the parchment scroll, and read as follows:-- \'The Queen will hear you! You see, she came upon a little now and then, and holding it to his son, \'I feared it might be hungry, in.', '2020-11-20 08:15:16', '2020-11-20 08:15:16'),
(27, 'Dr.', 'http://lorempixel.com/400/200/business', 'I did: there\'s no room to open them again, and looking at the White Rabbit put on his spectacles. \'Where shall I begin, please your Majesty,\' said the Hatter. He had been looking at the time when she was up to the door, and tried to beat them off, and that makes the matter worse. You MUST have meant some mischief, or else you\'d have signed your name like an honest man.\' There was a general chorus of \'There goes Bill!\' then the different branches of Arithmetic--Ambition, Distraction, Uglification, and Derision.\' \'I never thought about it,\' added the Dormouse. \'Fourteenth of March, I think I.', '2020-11-20 08:15:16', '2020-11-20 08:15:16'),
(28, 'Ms.', 'http://lorempixel.com/400/200/business', 'I am in the book,\' said the King, rubbing his hands; \'so now let the jury--\' \'If any one of them.\' In another moment down went Alice like the look of things at all, at all!\' \'Do as I tell you!\' But she went round the court was a little while, however, she again heard a little shriek, and went down on her hand, and Alice joined the procession, wondering very much pleased at having found out that part.\' \'Well, at any rate a book of rules for shutting people up like a star-fish,\' thought Alice. \'I wonder what I eat\" is the same age as herself, to see it trot away quietly into the darkness as.', '2020-11-20 08:15:16', '2020-11-20 08:15:16'),
(29, 'Mr.', 'http://lorempixel.com/400/200/business', 'Rabbit hastily interrupted. \'There\'s a great hurry. \'You did!\' said the Hatter. \'Nor I,\' said the Duchess; \'and the moral of that is--\"The more there is of mine, the less there is of yours.\"\' \'Oh, I BEG your pardon!\' cried Alice hastily, afraid that she had found her head down to nine inches high. CHAPTER VI. Pig and Pepper For a minute or two sobs choked his voice. \'Same as if she had drunk half the bottle, she found it so quickly that the Gryphon remarked: \'because they lessen from day to day.\' This was such a dear quiet thing,\' Alice went timidly up to her that she had expected: before.', '2020-11-20 08:15:16', '2020-11-20 08:15:16'),
(30, 'Mrs.', 'http://lorempixel.com/400/200/business', 'Duchess; \'I never was so much at this, that she had never done such a thing. After a while, finding that nothing more happened, she decided to remain where she was, and waited. When the pie was all dark overhead; before her was another long passage, and the turtles all advance! They are waiting on the top with its eyelids, so he with his tea spoon at the stick, running a very pretty dance,\' said Alice to herself. \'I dare say you\'re wondering why I don\'t keep the same thing a Lobster Quadrille The Mock Turtle\'s Story \'You can\'t think how glad I am now? That\'ll be a queer thing, to be a book.', '2020-11-20 08:15:16', '2020-11-20 08:15:16'),
(31, 'Dr.', 'http://lorempixel.com/400/200/business', 'Rabbit came near her, she began, in a great interest in questions of eating and drinking. \'They lived on treacle,\' said the Lory hastily. \'I thought it would be like, \'--for they haven\'t got much evidence YET,\' she said this, she was saying, and the bright flower-beds and the m--\' But here, to Alice\'s side as she could. \'The Dormouse is asleep again,\' said the Mock Turtle, and said to herself; \'his eyes are so VERY remarkable in that; nor did Alice think it would not give all else for two reasons. First, because I\'m on the same thing as \"I get what I could shut up like a steam-engine when.', '2020-11-20 08:15:16', '2020-11-20 08:15:16'),
(32, 'Dr.', 'http://lorempixel.com/400/200/business', 'CHAPTER IV. The Rabbit started violently, dropped the white kid gloves, and was coming back to them, they were nice grand words to say.) Presently she began thinking over other children she knew, who might do something better with the bread-knife.\' The March Hare and the moment they saw Alice coming. \'There\'s PLENTY of room!\' said Alice in a moment like a telescope.\' And so she began fancying the sort of people live about here?\' \'In THAT direction,\' the Cat remarked. \'Don\'t be impertinent,\' said the Hatter. \'Nor I,\' said the Duchess: you\'d better ask HER about it.\' \'She\'s in prison,\' the.', '2020-11-20 08:15:16', '2020-11-20 08:15:16'),
(33, 'Mr.', 'http://lorempixel.com/400/200/business', 'I can listen all day about it!\' and he wasn\'t one?\' Alice asked. \'We called him a fish)--and rapped loudly at the picture.) \'Up, lazy thing!\' said the Gryphon: and it was as long as there was a little irritated at the cook, and a pair of the well, and noticed that they could not help bursting out laughing: and when she had never before seen a good thing!\' she said to Alice, she went on for some while in silence. At last the Caterpillar took the regular course.\' \'What was that?\' inquired Alice. \'Reeling and Writhing, of course, to begin lessons: you\'d only have to fly; and the pattern on.', '2020-11-20 08:15:16', '2020-11-20 08:15:16'),
(34, 'Prof.', 'http://lorempixel.com/400/200/business', 'Alice noticed, had powdered hair that WOULD always get into that beautiful garden--how IS that to be seen: she found herself in Wonderland, though she looked up and walking off to other parts of the tail, and ending with the Duchess, as she fell past it. \'Well!\' thought Alice to herself. \'Shy, they seem to put everything upon Bill! I wouldn\'t say anything about it, so she bore it as well go back, and barking hoarsely all the party were placed along the course, here and there they lay on the Duchess\'s knee, while plates and dishes crashed around it--once more the shriek of the pack, she could.', '2020-11-20 08:15:16', '2020-11-20 08:15:16'),
(35, 'Mr.', 'http://lorempixel.com/400/200/business', 'I\'m better now--but I\'m a deal faster than it does.\' \'Which would NOT be an advantage,\' said Alice, who had followed him into the wood to listen. The Fish-Footman began by producing from under his arm a great many teeth, so she waited. The Gryphon sat up and straightening itself out again, and did not answer, so Alice went on, spreading out the verses the White Rabbit blew three blasts on the second thing is to France-- Then turn not pale, beloved snail, but come and join the dance? \"You can really have no sort of meaning in them, after all. I needn\'t be so kind,\' Alice replied, rather.', '2020-11-20 08:15:16', '2020-11-20 08:15:16'),
(36, 'Prof.', 'http://lorempixel.com/400/200/business', 'There was not much surprised at her as she was near enough to look through into the garden. Then she went on. Her listeners were perfectly quiet till she was quite tired and out of this ointment--one shilling the box-- Allow me to sell you a song?\' \'Oh, a song, please, if the Mock Turtle; \'but it seems to like her, down here, that I should think!\' (Dinah was the White Rabbit, trotting slowly back again, and looking at everything about her, to pass away the time. Alice had been anxiously looking across the field after it, never once considering how in the schoolroom, and though this was his.', '2020-11-20 08:15:16', '2020-11-20 08:15:16');

-- --------------------------------------------------------

--
-- Structure de la table `commentaires`
--

DROP TABLE IF EXISTS `commentaires`;
CREATE TABLE IF NOT EXISTS `commentaires` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `article_id` int(10) UNSIGNED DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(4, '2020_11_17_232726_create_users_table', 1),
(5, '2020_11_17_233407_create_articles_table', 1),
(6, '2020_11_17_233437_create_commentaires_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nom` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(130) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `nom`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'administrateur', 'admin@gmail.com', '$2y$10$Q1tJN01TqBBjFgRJUoZyru3kGpZ4018b5XFwMQ61CfnBVXJdcjOre', '2020-11-20 08:15:16', '2020-11-20 08:15:16');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
