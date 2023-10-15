-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 15, 2023 at 09:32 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thegstquizapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `course_code` varchar(255) NOT NULL,
  `course_id` varchar(255) NOT NULL,
  `course_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_code`, `course_id`, `course_title`) VALUES
(1, 'Gst 101', 'gst_101', 'Communication In English And Use Of Library'),
(2, 'Gst 102', 'gst_102', 'Communication In English'),
(3, 'Gst 103', 'gst_103', 'Nigerian Peoples And Cultures'),
(4, 'Gst 104', 'gst_104', 'Communication In French'),
(5, 'Gst 107', 'gst_107', 'Philosophy, Logic And Human Existence'),
(6, 'Gst 110', 'gst_110', 'History And Philosophy Of Science'),
(7, 'Gst 202', 'gst_202', 'Peace And Conflict Resolution'),
(8, 'Eds 204', 'eds_204', 'Entrepreneurial Skills'),
(9, 'Gst 205', 'gst_205', 'Environmental Health');

-- --------------------------------------------------------

--
-- Table structure for table `gst_103`
--

CREATE TABLE `gst_103` (
  `id` int(11) NOT NULL,
  `question` varchar(180) DEFAULT NULL,
  `option_a` varchar(74) DEFAULT NULL,
  `option_b` varchar(73) DEFAULT NULL,
  `option_c` varchar(71) DEFAULT NULL,
  `option_d` varchar(76) DEFAULT NULL,
  `answer` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `gst_103`
--

INSERT INTO `gst_103` (`id`, `question`, `option_a`, `option_b`, `option_c`, `option_d`, `answer`) VALUES
(1, 'What is the common definition of nationalism?', 'Love for one\'s religion', 'Love for one\'s family', 'Love for one\'s country', 'Love for one\'s culture', 'C'),
(2, 'What does autonomy mean in the context of nationalism?', 'Centralized governance', 'Independence', 'Subjugation', 'Globalization', 'B'),
(3, 'How has nationalism historically influenced nations?', 'By promoting global unity', 'By causing internal conflicts', 'By fostering cultural diversity', 'By advocating for a single world government', 'B'),
(4, 'Which of the following is NOT a form of nationalism mentioned?', 'Ethnic tension', 'Revolutions', 'Religious unity', 'Wars', 'C'),
(5, 'What can nationalism do to a nation according to the text?', 'Create social upheaval', 'Foster political chaos', 'Promote stability', 'Encourage globalization', 'D'),
(6, 'What is one possible outcome of nationalism tearing a nation apart?', 'Social upheaval and political chaos', 'Increased cultural unity and stability', 'Economic prosperity and growth', 'Improved diplomatic relations', 'C'),
(7, 'What is nationalism in terms of belief?', 'A political ideology', 'A form of patriotism', 'A personal attachment to religion', 'A romantic attachment to a partner', 'A'),
(8, 'How does nationalism differ from patriotism?', 'National identity', 'Personal behaviors', 'Attachment to a religion', 'Attachment to a romantic partner', 'B'),
(9, 'What distinguishes nationalism psychologically?', 'Attachment to a nation', 'Attachment to a religion or a romantic partner', 'The desire for interpersonal attachment', 'Dysfunctional attachments', 'C'),
(10, 'What can excessive attachment lead to?', 'Dysfunctional attachments', 'Nationalism', 'Patriotism', 'Evolutionary reflection of the nation', 'A'),
(11, 'What are the two main perspectives on nationalism?', 'Primordialist and evolutionary perspectives', 'Political and sociological perspectives', 'Attachment and motivation perspectives', 'Psychological and sociological perspectives', 'B'),
(12, 'What is the tendency of humans to form distinct groups based on birth affinity?', 'Affinity of nationality', 'Affinity of birth', 'Affinity of personal choice', 'Affinity of occupation', 'B'),
(13, 'What are the two main perspectives on the origins of nationalism?', 'Sociological and psychological perspectives', 'Historical and evolutionary perspectives', 'Traditional and modern perspectives', 'Primordialist and modernist perspectives', 'D'),
(14, 'What can define a nation, leading to different strands of nationalism?', 'Political, economic, social, or geographic factors', 'Ethnic, cultural, religious, or identity group', 'Historical events or international treaties', 'Language, cuisine, and customs', 'B'),
(15, 'What motivates the adoption of national identity?', 'Economic benefits and globalization', 'Inconsistency between defined social order and members\' experience', 'Traditional identities and cultural preservation', 'Anomie resulting from political unrest', 'C'),
(16, 'What is a common result of anomie in the context of nationalism?', 'Preservation of traditional identities', 'Increased cultural diversity and tolerance', 'Reinterpretation and redefinition of identity', 'Fragmentation of society', 'C'),
(17, 'What are considered important symbols of national identity?', 'National flags', 'National anthems', 'National currencies', 'National languages', 'A'),
(18, 'Why is it necessary to have knowledge of European nationalism before studying Nigerian nationalism?', 'European nationalism has no impact on Nigeria', 'European nationalism is identical to Nigerian nationalism', 'European nationalism laid the foundation for Nigerian nationalism', 'European nationalism is irrelevant to the study of Nigerian nationalism', 'C'),
(19, 'What were people generally loyal to in Europe before the development of nationalism?', 'Religion', 'National flags', 'Political parties', 'Family', 'A'),
(20, 'When did people in 18th century England start identifying with their country at large?', '17th century', '18th century', '19th century', '20th century', 'B'),
(21, 'Who actively promoted patriotic nationalism in 18th century England?', 'The clergy', 'The government', 'The aristocracy', 'The artists and intellectuals', 'B'),
(22, 'What was the national song composed in 1740 in England?', 'God Save the Queen', 'Rule, Britannia!', 'My Country, \'Tis of Thee', 'Ode to Joy', 'B'),
(23, 'Who created the character of John Bull as the personification of the national spirit in England?', 'Thomas Arne', 'John Arbuthnot', 'John Bull himself', 'William Shakespeare', 'B'),
(24, 'What political convulsions greatly increased the appeal of patriotic nationalism in Europe?', 'The Industrial Revolution', 'The Renaissance', 'The American and French Revolutions', 'The Age of Enlightenment', 'C'),
(25, 'In which country did ultra-nationalist parties emerge during the French Revolution?', 'England', 'France', 'Germany', 'Spain', 'B'),
(26, 'What greatly augmented the appeal of patriotic nationalism in the late 18th century?', 'Industrialization', 'Political convulsions', 'Religious movements', 'Cultural exchanges', 'B'),
(27, 'Who is credited with coining the term \"nationalism\"?', 'Thomas Arne', 'Johann Gottfried Herder', 'John Bull', 'Napoleon Bonaparte', 'B'),
(28, 'What message did Johann Gottfried Herder proclaim within the sphere of language?', 'The importance of global unity', 'The significance of personal identity', 'The determination of national thought and culture', 'The superiority of European culture', 'C'),
(29, 'According to Herder, what did the loss of patriotic spirit imply?', 'Loss of the whole world', 'Loss of language proficiency', 'Loss of national thought', 'Loss of personal identity', 'A'),
(30, 'How did Herder view the concept of nationality and patriotism?', 'He considered them irrelevant', 'He attached exceptional importance to them', 'He criticized their influence', 'He advocated for global citizenship', 'B'),
(31, 'According to Herder, what did he believe was \"national\" in a certain sense?', 'Every human perfection', 'Only language and culture', 'Personal identity and beliefs', 'Political ideologies and affiliations', 'A'),
(32, 'What were the American and French Revolutions known for in the late 18th century?', 'Cultural preservation', 'Political stability', 'Ultra-nationalist movements', 'Industrial advancements', 'C'),
(33, 'What did Herder teach about human perfection and nationality?', 'Human perfection is irrelevant to nationality', 'Human perfection is determined by language', 'Every human perfection is national', 'Nationality hinders human perfection', 'C'),
(34, 'What did Herder emphasize regarding the importance of patriotic spirit?', 'It is unnecessary for personal growth', 'It is the essence of human existence', 'It is detrimental to national unity', 'It is a sign of cultural inferiority', 'B'),
(35, 'What historical events marked the culmination of political nationalism and the push for popular sovereignty in Europe?', 'The American and French Revolutions', 'The ethnic/national revolutions of Europe', 'The rise of authoritarianism and fascism', 'The growth of global trade and colonization', 'B'),
(36, 'Which historical event is mentioned as an example of ethnic/national revolution in Europe?', 'The Greek War of Independence', 'The Russian Revolution', 'The Industrial Revolution', 'The Protestant Reformation', 'A'),
(37, 'What role did colonialism play in the growth of nationalism in Nigeria?', 'It supported the Nigerian Nationalists', 'It created a common enemy for the Nationalists', 'It served as a model for the Nigerian government', 'It promoted foreign rule in Nigeria', 'B'),
(38, 'How is colonialism defined in the text?', 'A situation where foreigners rule another territory', 'A form of international cooperation', 'A type of cultural exchange', 'A method of diplomatic negotiation', 'A'),
(39, 'When did Nigeria officially come under colonization by the British government?', '1800', '1899', '1900', '1950', 'C'),
(40, 'What did Benedict Anderson argue about the role of print language in nationalism?', 'Print language is irrelevant to nationalism', 'Print language is the sole determinant of nationalism', 'Print language is a byproduct of nationalism', 'Print language is the result of linguistic evolution', 'B'),
(41, 'What ideology does fascism represent?', 'Authoritarian nationalism', 'Global cooperation and diplomacy', 'Anarchism', 'Religious tolerance and diversity', 'A'),
(42, 'What is the primary purpose of fascism, as mentioned in the text?', 'To promote global unity', 'To serve the interests of the nation alone', 'To establish a world government', 'To encourage cultural diversity', 'B'),
(43, 'What is the term used to describe the struggle for independence by Nigerian Nationalists?', 'The Nigerian Revolution', 'The Colonial Resistance Movement', 'The African Freedom Struggle', 'The Nigerian Independence Movement', 'D'),
(44, 'What factor ignited the sense of nationalism in Nigeria, leading to agitations for independence?', 'The formation of political parties', 'The common ground created by the colonial government', 'The influence of foreign ideologies', 'Economic prosperity and stability', 'B'),
(45, 'Who founded the Nigeria National Democratic Party (NNDP) in 1923?', 'Herbert Macaulay', 'Nnamdi Azikiwe', 'Chief Obafemi Awolowo', 'Sir Ahmed Bello', 'A'),
(46, 'What political party was later known as the National Congress of Nigeria Citizens (NCNC)?', 'Action Group (AG)', 'The Northern People Congress (NPC)', 'The National Council for Nigeria and Cameroon (NCNC)', 'The Northern Element Progressive Union (NEPU)', 'C'),
(47, 'Who founded the Action Group (AG) in 1948?', 'Herbert Macaulay', 'Nnamdi Azikiwe', 'Chief Obafemi Awolowo', 'Sir Ahmed Bello', 'C'),
(48, 'What party was founded by Sir Ahmed Bello in 1949?', 'The Nigeria National Democratic Party (NNDP)', 'The Action Group (AG)', 'The National Congress of Nigeria Citizens (NCNC)', 'The Northern People Congress (NPC)', 'D'),
(49, 'When did Nigeria achieve its independence?', '1914', '1923', '1944', '1960', 'D'),
(50, 'What factor united these political parties in the fight for Nigeria\'s independence?', 'Economic interests', 'Nationalism', 'Foreign intervention', 'Religious beliefs', 'B'),
(51, 'What date is celebrated as Nigeria\'s Independence Day?', '1st October', '25th December', '4th July', '15th August', 'A'),
(52, 'Who played a significant role in the formation and mobilization of these political parties?', 'Sir Abubakar Tafawa Balewa', 'Nnamdi Azikiwe', 'Herbert Macaulay', 'Chief Obafemi Awolowo', 'C'),
(53, 'How is colonization defined in the text?', 'The imposition of a more developed culture over a less developed one', 'The act of establishing peaceful trade agreements', 'The process of seeking diplomatic relations with other nations', 'The practice of sharing natural resources', 'A'),
(54, 'What triggered the scramble and partition of Africa in the late 19th century?', 'The Industrial Revolution in Europe', 'The Berlin Conference of 1884-85', 'The World War 1', 'The emergence of new African leaders', 'B'),
(55, 'Who colonized Nigeria, according to the text?', 'France', 'Germany', 'Britain', 'Spain', 'C'),
(56, 'When did the amalgamation of the Northern and Southern protectorates in Nigeria occur?', 'In the 18th century', 'In 1914', 'After World War 1', 'In the 12th century', 'B'),
(57, 'What does decolonization refer to politically?', 'Attaining independence', 'Establishing colonial rule', 'Supporting the Axis powers during World War 11', 'Implementing economic adventurism', 'A'),
(58, 'What types of revolution can decolonization involve, as mentioned in the text?', 'Non-violent only', 'Violent only', 'Both violent and non-violent', 'Economic and social revolution', 'C'),
(59, 'What kind of decolonization process occurred in Nigeria, according to the text?', 'Violent', 'Non-violent', 'Economic', 'Social', 'B'),
(60, 'What was the League of Nations\' role in the decolonization process after World War 1?', 'It hindered the process of decolonization', 'It supported colonial rule', 'It advanced the cause of emancipation', 'It led to the partition of Africa', 'C'),
(61, 'What stages are typically involved in the process of emancipation, as mentioned in the text?', 'Introduction of autonomy, self-rule, and statehood', 'The promotion of colonial rule', 'The imposition of a more developed culture', 'The establishment of trade agreements', 'A'),
(62, 'What were the consequences of the growth of local institutions and urbanization in Africa?', 'Decreased literacy rates and economic stagnation', 'Creation of new towns and increased trade unions', 'Expansion of colonial rule and cultural assimilation', 'The decline of trade unions and urban communities', 'B'),
(63, 'What document emphasized the autonomy of imperial colonies and was sanctioned by US President Franklin D. Roosevelt and British Prime Minister Winston Churchill in 1941?', 'The Decolonization Manifesto', 'The African Independence Declaration', 'The Atlantic Charter', 'The Imperialism Agreement', 'C'),
(64, 'Who were some of the educated elites familiar with the idea of self-determination and leaders in the struggle for independence in various African nations, as mentioned in the text?', 'Jomo Kenyatta (Kenya) and Kwame Nkrumah (Ghana)', 'Thomas Edison (USA) and Albert Einstein (Germany)', 'William Shakespeare (UK) and Ludwig van Beethoven (Austria)', 'Mahatma Gandhi (India) and Nelson Mandela (South Africa)', 'A'),
(65, 'What role did the Labour Party in Britain play in relation to colonization policy?', 'Supported the conservative party\'s colonization policy', 'Opposed the conservative party\'s colonization policy', 'Advocated for greater colonial expansion', 'Encouraged cultural assimilation in colonies', 'B'),
(66, 'Which organizations, mentioned in the text, were instrumental in resisting colonial rule in Nigeria?', 'Nigeria Youth Movement (NYM) and Nigerian National Democratic Party (NNDP)', 'African National Congress (ANC) and National Liberation Army (NLA)', 'European Colonial Council (ECC) and African Unity Movement (AUM)', 'Imperialism Resistance League (IRL) and Global Decolonization Alliance (GDA)', 'A'),
(67, 'What was one of the consequences of urbanization in Africa mentioned in the text?', 'Decreased literacy rates', 'Growth of trade unions', 'Expansion of colonial rule', 'Increased cultural isolation', 'B'),
(68, 'Which US President and British Prime Minister sanctioned the Atlantic Charter in 1941?', 'John F. Kennedy and Winston Churchill', 'Franklin D. Roosevelt and Margaret Thatcher', 'Abraham Lincoln and Tony Blair', 'Woodrow Wilson and Clement Attlee', 'C'),
(69, 'Who is mentioned as a nationalist leader in Nigeria in the text?', 'Mahatma Gandhi', 'Nelson Mandela', 'Herbert Macaulay', 'Thomas Sankara', 'C'),
(70, 'What did the educated elites educated in Western European universities bring to the struggle for independence?', 'Familiarity with the idea of self-determination', 'Strong support for colonial rule', 'Advocacy for cultural assimilation', 'Resistance to urbanization', 'A'),
(71, 'What was the role of the Nigerian National Democratic Party (NNDP) in the resistance to colonial rule?', 'It supported colonial rule', 'It advocated for cultural assimilation', 'It was instrumental in resisting colonial rule', 'It encouraged the growth of trade unions', 'A'),
(72, 'What were some of the European imported finished goods exchanged for Nigeria\'s export products during colonial rule?', 'Electronics and machinery', 'Salt and candles', 'Raw materials and minerals', 'Cloth and soap', 'B'),
(73, 'What was the primary focus of the production during colonial rule, leading to the development of an export-oriented economy in Nigeria?', 'Food crops', 'Finished goods', 'Cash crops and minerals', 'Skilled labor and technology', 'C'),
(74, 'How were colonial taxes in Nigeria enforced and paid?', 'In local currency', 'In European currency', 'Through labor and barter trade', 'Through the exchange of goods and services', 'B'),
(75, 'What notable event in 1929 represented the people\'s resistance to colonial taxation in Nigeria?', 'The Lagos Uprising', 'The Aba Women Riot', 'The Zulu Rebellion', 'The Cape Town Protest', 'B'),
(76, 'What was one of the perverse impacts of colonialism on infrastructure development in Nigeria, as mentioned in the text?', 'The construction of advanced telecommunications systems', 'The development of evenly distributed railways', 'The enhancement of transportation for local goods', 'The creation of efficient transportation systems', 'B'),
(77, 'How did the colonial integration of Nigeria\'s economy impact its position in the world capitalist economy, according to the text?', 'It made Nigeria a strong and independent economic entity', 'It weakened Nigeria and made it dependent on Western capitalist economies', 'It had no significant impact on Nigeria\'s economy', 'It led to the complete isolation of Nigeria from the world economy', 'B'),
(78, 'What term is used to describe the economic situation in Africa where it is considered weak and dependent on Western capitalist economies?', 'Economic nationalism', 'Economic self-sufficiency', 'Neo-colonialism', 'Economic diversification', 'C'),
(79, 'What impact did colonialism have on the formation of the European nation-state system in Nigeria?', 'It had no impact on the formation of modern Nigerian state', 'It led to the creation of a sense of nationalism', 'It contributed to the equal distribution of resources', 'It resulted in the development of an egalitarian society', 'B'),
(80, 'What are some of the factors that stimulated the growth of nationalist movements in Nigeria during the 20th and 19th centuries, as mentioned in the text?', 'Technological advancement and access to resources', 'Limited opportunity, race relations, and economic exploitation', 'Religious diversity and cultural exchange', 'Political stability and foreign investment', 'B'),
(81, 'When did the angin of nationalism in Nigeria start to become full-blown, according to the text?', 'In the 19th century', 'In the 20th century', 'In the 18th century', 'In the 21st century', 'B'),
(82, 'What are the two types of politicians discussed in the text?', 'Democrats and Republicans', 'Statesmen and Demagogues', 'Nationalists and Patriots', 'Senators and Representatives', 'B'),
(83, 'How is a statesman different from a demagogue in terms of their contributions to the state?', 'A statesman makes negative contributions to the state', 'A demagogue makes selfless contributions to the state', 'A statesman focuses on personal interests only', 'A demagogue elevates the country\'s interests above personal interests', 'B'),
(84, 'What does a statesman\'s actions reflect in terms of the constitution and laws of the land?', 'A disregard for the constitution and laws', 'A willingness to change the constitution', 'A reverence for the constitution and laws', 'A promotion of anarchy and lawlessness', 'C'),
(85, 'What impact do the attributes of a statesman have on the people and their feelings towards the state, according to the text?', 'They promote negative feelings towards the state', 'They lead to indifference towards the state', 'They enhance positive feelings towards the state', 'They create distrust in the state', 'C'),
(86, 'According to the text, what profession does a statesman\'s role today approximate?', 'Lawyer', 'Philosopher Kings', 'Engineer', 'Economist', 'B'),
(87, 'Who is credited with the idea that governance should be left to the most intelligent and superfluously endowed members of society, as mentioned in the text?', 'Socrates', 'Aristotle', 'Plato', 'Confucius', 'C'),
(88, 'What did Plato consider the function of rulership required, according to the text?', 'Narrow intelligence and limited comprehension', 'Broad comprehension of life and meanings', 'Profound knowledge of the arts and humanities', 'Specialized skills in engineering and technology', 'B'),
(89, 'What is the ultimate goal of a statesman, as described in the text?', 'To accumulate wealth for personal comfort', 'To serve the interests of the state and its people', 'To gain personal recognition and fame', 'To exploit the state for personal gain', 'B'),
(90, 'How do the attributes of a statesman contribute to the promotion of nationalism, as stated in the text?', 'By promoting indifference towards the state', 'By fostering a sense of distrust in the state', 'By enhancing positive feelings and love for the nation', 'By advocating for anarchy and lawlessness', 'C'),
(91, 'What term is used in the text to describe those who focus on personal interests and negatively impact the state?', 'Philosopher Kings', 'Statesmen', 'Demagogues', 'Patriots', 'C'),
(92, 'presidency in South Africa, as highlighted in the text?', 'He served for multiple terms as allowed by the constitution', 'He served only one term despite the option for a second term', 'He served as president while not being incarcerated', 'He prioritized his personal interests over those of his country', 'B'),
(93, 'What term is used to describe a politician who maximizes material gains at the expense of the state and perpetuates corrupt practices, as mentioned in the text?', 'Statesman', 'Philosopher King', 'Demagogue', 'Patriot', 'C'),
(94, 'What are the characteristics of a demagogue, as described in the text?', 'Transparency, honesty, and service to the citizens', 'Prioritizing the well-being of the citizens', 'Manipulating political power for personal gain', 'Fostering the nation\'s interests above personal interests', 'C'),
(95, 'According to the text, how does a demagogue run the state and view the nation?', 'With a focus on the well-being of the citizens', 'With a desire to remain in power indefinitely', 'With a deep sense of patriotism and love for the nation', 'With a goal to serve transparently and honestly', 'B'),
(96, 'How does a demagogue use his skills, according to the text?', 'To foster national interests and uphold justice', 'To manipulate political power', 'To prioritize the well-being of the citizens', 'To enhance transparency and honesty in governance', 'B'),
(97, 'What term is used to describe the actions of a statesman in relation to the laws of the land, as mentioned in the text?', 'Impartiality and adherence to the laws', 'Manipulation of the laws', 'Disregard for the constitution and laws', 'Repression and suppression of the laws', 'A'),
(98, 'What type of politician does Plato\'s philosopher king closely resemble, as mentioned in the text?', 'Demagogue', 'Statesman', 'Patriot', 'Philosopher King', 'B'),
(99, 'What does the demagogue do with the concepts of ethnicity and religion, as mentioned in the text?', 'He consistently promotes them to strengthen his image', 'He condemns them when they serve his purpose', 'He invokes them strategically based on the situation', 'He ignores them completely regardless of the situation', 'C'),
(100, 'How does the demagogue treat the rights and principles he invokes, according to the text?', 'He consistently upholds them regardless of the situation', 'He repudiates them when it improves his image', 'He uses them to defraud the state and its people', 'He collaborates with the enemies of the state to protect them', 'B'),
(101, 'What is one of the most worrisome characteristics of a demagogue, as highlighted in the text?', 'Honesty and patriotism', 'Collaboration with the enemies of the state', 'Respect for the laws of the land', 'Adherence to the constitution and laws', 'B'),
(102, 'How does the demagogue use the emergency powers of the state, according to the text?', 'To protect the rights and freedoms of the citizens', 'To uphold justice and equity', 'To cow and suppress his opponents of the state', 'To promote transparency and honesty in governance', 'C'),
(103, 'According to the text, what impact do the attributes of the demagogue have on the citizenry?', 'They promote patriotic and nationalistic feelings', 'They create a deep sense of trust in the demagogue', 'They foster a strong adherence to the laws of the land', 'They encourage collaboration with the enemies of the state', 'A'),
(104, 'How does the demagogue collaborate with the enemies of the state, as mentioned in the text?', 'He collaborates with them to protect the state', 'He collaborates with them to defraud the state', 'He collaborates with them to uphold justice and equity', 'He collaborates with them to promote transparency and honesty', 'B'),
(105, 'What does the demagogue do with the constitution and laws of the land, according to the text?', 'He respects and upholds them at all times', 'He stretches them to breaking points', 'He disregards them completely', 'He manipulates them to promote justice and equity', 'B'),
(106, 'How does the demagogue use emergency powers to deal with his opponents, as mentioned in the text?', 'To promote an open dialogue and collaboration', 'To uphold the principles of democracy', 'To protect the rights and freedoms of the citizens', 'To suppress and cow his real and imaginary opponents', 'D'),
(107, 'What term is used in the text to describe the patriotic and nationalistic feelings promoted by the demagogue\'s attributes?', 'Apathy', 'Distrust', 'Compliance', 'Loyalty', 'D'),
(108, 'What does the demagogue prioritize when invoking the emergency powers of the state, as mentioned in the text?', 'Justice and equity', 'Collaboration with the state\'s enemies', 'Protection of the citizens\' rights and freedoms', 'Promotion of transparency and honesty in governance', 'B'),
(109, 'What is the underlying belief of Pan-Africanism, as described in the text?', 'African people share common bonds and objectives', 'African people have distinct and separate goals', 'African people should prioritize individual interests', 'African people should compete for resources', 'A'),
(110, 'How did the concept of Pan-Africanism initially develop, according to the text?', 'It developed as a reaction to European colonialism in Africa', 'It originated within Africa and spread globally', 'It emerged as a result of conflicts among African states', 'It emerged as a response to internal conflicts within Africa', 'A'),
(111, 'In the mid-20th century, why did activists in Africa adopt Pan-Africanism, as mentioned in the text?', 'As a means to promote economic cooperation within Africa', 'As a rallying point for independence from colonial rule', 'As a strategy to divide the continent into independent nations', 'As a way to strengthen European colonial influence in Africa', 'B'),
(112, 'What are the two basic forms of Pan-Africanism mentioned in the text?', 'Revolutionary and Evolutionary', 'Continental and Diaspora', 'National and International', 'Political and Economic', 'B'),
(113, 'What is the focus of Continental Pan-Africanism, according to the text?', 'Advocating for independence from colonial rule', 'Advocating for unity within Africa', 'Advocating for international cooperation among African states', 'Advocating for political union among African states', 'B'),
(114, 'How is Diaspora Pan-Africanism different from Continental Pan-Africanism, as stated in the text?', 'It focuses on the unity of states and peoples within Africa', 'It relates to solidarity among black Africans outside the continent', 'It advocates for political union among African states', 'It advocates for international cooperation among African states', 'B'),
(115, 'What is the significance of Pan-Africanism in global politics and thought, according to the text?', 'It is a dominant force in shaping global economic policies', 'It remains a significant force in global politics and thought', 'It has declined in relevance in recent years', 'It has primarily focused on cultural exchanges between nations', 'B'),
(116, 'What marked the beginning of European domination of African peoples, as mentioned in the text?', 'The establishment of thriving trade on Africa\'s western coast', 'The expansion of agricultural plantation economies in Europe', 'The European attempts to seize territory from African states', 'The increased demand for African slaves in the Caribbean', 'A'),
(117, 'What were the primary motivations behind European colonialism in Africa, as described in the text?', 'To secure control of the sources of goods being purchased', 'To establish political dominance over African states', 'To promote cultural exchanges and cooperation between Europe and Africa', 'To foster economic cooperation and development in African colonies', 'A'),
(118, 'What were the conditions under which African slaves laboured, according to the text?', 'They were paid high wages and provided with comfortable accommodations', 'They worked under cruel and dehumanizing conditions for little to no pay', 'They enjoyed a high level of autonomy and self-determination', 'They were given significant authority in the colonial administrations', 'B'),
(119, 'What percentage of Africans in the slave trade were taken to British territory that later became the United States, as mentioned in the text?', '6 percent', '17 percent', '40 percent', '38 percent', 'A'),
(120, 'What does the term \"Diaspora\" refer to in the context of African history, as described in the text?', 'The dispersion of African peoples to various European colonies', 'The cultural assimilation of Africans in Europe', 'The establishment of African schools by Europeans', 'The economic impact of colonialism on Africa', 'A'),
(121, 'How were Africans in the African colonies influenced by Europeans, as mentioned in the text?', 'They were largely shielded from European influence', 'They were Indoctrinated with the superiority of European culture', 'They were given autonomy to maintain their traditional systems', 'They were provided with comprehensive colonial education', 'B'),
(122, 'What major impact did colonialism have on the economic situation in African colonies, according to the text?', 'It significantly improved the economic conditions for Africans', 'It facilitated the development of local industries', 'It led to the exploitation of African resources for export', 'It focused on providing social services and education for Africans', 'C'),
(123, 'What were the main objectives of the Pan-African movement, as described in the text?', 'To promote European culture in Africa', 'To maintain traditional African rulers in power', 'To combat slavery and colonialism, and unify Africans worldwide', 'To export African commodities to Europe and the New World', 'C'),
(124, 'When did the development of a formal Pan-African movement begin, according to the text?', 'In the 16th century', 'At the end of the 19th century', 'At the dawn of the 20th century', 'In the early 21st century', 'C'),
(125, 'What was the original political objective of the 1900 Pan-African conference organized by Henry Sylvester Williams, as mentioned in the text?', 'To establish an African nation-state', 'To protest unequal treatment of blacks in British colonies', 'To celebrate traditional African culture and achievements', 'To promote the superiority of African culture', 'B'),
(126, 'Who was Edward Wilmot Blyden, and what was his contribution to Pan-Africanism, as stated in the text?', 'He was a British colonial administrator who opposed Pan-Africanism', 'He coined the term \"Pan-Africanism\" and promoted African achievements', 'He was a Caribbean-born Liberian educator who opposed African culture', 'He organized the first Pan-African conference in London in 1900', 'B'),
(127, 'What did the speakers at the 1900 Pan-African conference celebrate about African culture and history, as mentioned in the text?', 'They celebrated the superiority of European culture', 'They highlighted the need for more European education', 'They pointed out great historical achievements of African peoples', 'They advocated for the total assimilation of African culture', 'C'),
(128, 'How did Africans resist European domination from their earliest contacts with Europeans, according to the text?', 'They embraced European culture and values', 'They engaged in armed conflicts with Europeans', 'They supported European colonial rule', 'They cooperated fully with European colonialists', 'B'),
(129, 'Who organized the first Pan-African Congress in Paris in 1919, as mentioned in the text?', 'W. E. B. Du Bois', 'Henry Sylvester Williams', 'Marcus Garvey', 'Edward Wilmot Blyden', 'A'),
(130, 'What were the main concerns raised during the first Pan-African Congress held in Paris in 1919?', 'The economic development of African colonies', 'The status of former German colonial territories', 'The establishment of international labor movements', 'The promotion of black pride and political improvements', 'B'),
(131, 'What proposal was made regarding the conquered German colonial territories during the first Pan-African Congress in 1919?', 'They should be granted immediate self-determination', 'They should be placed under the League of Nations\' supervision', 'They should remain under the control of the Allied powers', 'They should be sold to the highest bidder', 'A'),
(132, 'What factors contributed to the growing popularity of the Pan-African congresses organized by Du Bois in the 1920s?', 'The decline of the black nationalist movement', 'The decrease in international labor movements', 'The lack of interest from African and Caribbean representatives', 'The sponsorship of delegates by international labor movements', 'D'),
(133, 'Who was the founder of the Universal Negro Improvement Association (UNIA) and the \"Back to Africa\" movement?', 'W. E. B. Du Bois', 'Henry Sylvester Williams', 'Marcus Garvey', 'Edward Wilmot Blyden', 'C'),
(134, 'What was the goal of Marcus Garvey\'s Black Star Line steamship company, as mentioned in the text?', 'To promote black pride and economic improvements', 'To facilitate international trade', 'To transport blacks to Africa and oversee repatriation', 'To provide shipping services within the United States', 'C'),
(135, 'What happened to the Garvey movement and its founder, Marcus Garvey, in 1925?', 'The movement declined due to a lack of followers', 'The movement was successful in repatriating blacks', 'Garvey was arrested and imprisoned on mail fraud charges', 'Garvey fulfilled his repatriation scheme', 'C'),
(136, 'What organization was founded by young Africans studying in London in the late 1920s, influenced by Garvey\'s ideas?', 'The Universal Negro Improvement Association (UNIA)', 'The West African Student Union (WASU)', 'The Pan-African Congress', 'The League of Nations', 'B'),
(137, 'How does nationalism affect the destinies of countries?', 'It leads to colonization', 'It shapes their histories', 'It encourages isolation', 'It has no impact', 'B'),
(138, 'Which of the following is NOT mentioned as a result of nationalism?', 'Economic prosperity', 'Ethnic tension', 'Wars', 'Revolutions', 'A'),
(139, 'What has nationalism historically driven people to do?', 'Seek global governance', 'Advocate for cultural diversity', 'Strive for autonomous self-rule', 'Promote international cooperation', 'C');

-- --------------------------------------------------------

--
-- Table structure for table `gst_110`
--

CREATE TABLE `gst_110` (
  `id` int(11) NOT NULL,
  `question` varchar(179) DEFAULT NULL,
  `option_a` varchar(112) DEFAULT NULL,
  `option_b` varchar(112) DEFAULT NULL,
  `option_c` varchar(99) DEFAULT NULL,
  `option_d` varchar(104) DEFAULT NULL,
  `answer` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `gst_110`
--

INSERT INTO `gst_110` (`id`, `question`, `option_a`, `option_b`, `option_c`, `option_d`, `answer`) VALUES
(1, 'According to Leopold Von Ranke, is history more of an art or science?', 'More of an art', 'More of a science', 'An equal blend of both', 'Neither, it stands alone as a separate discipline', 'A'),
(2, 'What is one reason history is considered an art?', 'It involves scientific experiments', 'It can control the material it uses', 'It deals with specific and unique events', 'It establishes general laws', 'C'),
(3, 'How does the subjectivity of historians affect the field of history?', 'It enhances objectivity', 'It introduces bias and prejudice', 'It reduces subjectivity to insignificant dimensions', 'It follows scientific laws', 'B'),
(4, 'What distinguishes natural sciences like biology from history?', 'The ability to predict future outcomes', 'The use of fragmentary evidences', 'The focus on general laws', 'The yield of useful inventions', 'C'),
(5, 'What is the main concern of historians, as opposed to scientists?', 'Predicting the future', 'Understanding the past and reconstructing it', 'Formulating scientific laws', 'Inventing useful technologies', 'B'),
(6, 'How do postmodernists view the nature of history?', 'As an objective representation of the past', 'As a field with the ability to predict the future', 'As a scientific discipline', 'As an artistic representation of the past', 'D'),
(7, 'According to the postmodernists, what does history reveal more about?', 'The objective nature of the past', 'The historian\'s personal views and perspective', 'The general laws of human behavior', 'The scientific laws governing history', 'B'),
(8, 'What are sources of historical knowledge?', 'Tangible and intangible things', 'Written documents and statistics', 'Artifacts and archaeological findings', 'Oral traditions and personal letters', 'A'),
(9, 'What is oral tradition in the context of historical sources?', 'Documents written on various materials', 'Information passed down orally', 'Artifacts used for historical research', 'Personal letters exchanged between individuals', 'B'),
(10, 'Why is oral tradition important for African history?', 'Because it is always reliable', 'Because it\'s free from exaggeration', 'Because it allows reconstruction of history', 'Because it is not prone to misinformation', 'C'),
(11, 'What are some challenges associated with oral tradition?', 'Susceptibility to exaggeration', 'Fading away and becoming illegible', 'Inability to access easily', 'Lack of cross-checking with other sources', 'A'),
(12, 'What are examples of written sources in history?', 'Artifacts and archaeological findings', 'Personal letters and diaries', 'Proclamations and laws', 'Folktales and legends', 'B'),
(13, 'Why are written sources accorded respect by historians?', 'Because they are always reliable', 'Because they are easier to use', 'Because they are immune to misrepresentation', 'Because they are stored easily', 'B'),
(14, 'What kind of information can be derived from archaeological findings?', 'Information about human societies', 'Information about political events', 'Information about written records', 'Information about oral traditions', 'A'),
(15, 'How does archaeology contribute to understanding historical epochs?', 'By studying human remains', 'By analyzing statistical data', 'By examining artifacts and material remains', 'By reading personal letters', 'C'),
(16, 'What complements archaeological discoveries in historical research?', 'Remote sensing and dendrochronology', 'Linguistic evidence and anthropology', 'Radio carbon dating and geophysical survey', 'Written documents and oral traditions', 'B'),
(17, 'What are some examples of large physical traces found by archaeologists?', 'Igbo Ukwu culture and Egyptian pyramids', 'Mosques and churches', 'Fortresses and clay pots', 'Bronze objects and utensils', 'A'),
(18, 'What does the study of artifacts in excavated sites provide information about?', 'Language and linguistic evidence', 'Cultural contact and change', 'Political institutions and governance', 'Prehistoric culture and material culture', 'B'),
(19, 'What scientific methods do archaeologists use to arrive at conclusions?', 'Linguistic analysis and anthropology', 'Remote sensing and radio carbon dating', 'Geophysical survey and dendrochronology', 'Oral traditions and written documents', 'C'),
(20, 'Why is archaeology important for understanding prehistoric culture?', 'Because it uncovers ancient languages', 'Because it studies linguistic evidence', 'Because it reveals material culture', 'Because it analyzes social institutions', 'C'),
(21, 'What does linguistic evidence in historical research provide information about?', 'Cultural contact and change', 'Geological formations and remote sensing', 'Economic institutions and geophysical survey', 'Written documents and political governance', 'A'),
(22, 'What is the main concern of anthropology in relation to history?', 'Understanding modern society', 'Understanding the past culture', 'Understanding physical development', 'Understanding linguistic evidence', 'B'),
(23, 'How does anthropology contribute to the reconstruction of history?', 'By analyzing written documents', 'By studying linguistic evidence', 'By examining geological formations', 'By focusing on modern society', 'B'),
(24, 'What is the main purpose of historical studies?', 'To predict the future', 'To uncover hidden mysteries of the past', 'To improve the present and future based on past lessons', 'To create fictional stories based on the past', 'C'),
(25, 'What is the origin of the word \"History\"?', 'Greek word \"Historia\"', 'Arabic word \"Ta\'arikh\"', 'Latin word \"Historicus\"', 'Sanskrit word \"Itihasa\"', 'A'),
(26, 'How does E. H. Carr define history?', 'As a process of inquiry into the past of man in society', 'As a set of facts about the past', 'As a fictional narrative about the past', 'As a method for predicting the future', 'A'),
(27, 'What criticism is often directed at E. H. Carr\'s definition of history?', 'Overemphasis on the role of oral tradition', 'Lack of emphasis on the process of inquiry', 'Overemphasis on the result of the inquiry', 'Lack of clarity and coherence in the definition', 'C'),
(28, 'According to Abubakar (2005), what does history deal with?', 'Artistic expressions within a society', 'The documentation, exposition, and analysis of events and development within a society', 'Fictional stories based on historical events', 'The interpretation of ancient artifacts', 'B'),
(29, 'How does Memeje (1988) define history?', 'As a body of knowledge about the future', 'The documentation of past acts of man in society', 'As a collection of fictional stories about the past', 'As a record of daily events in a society', 'B'),
(30, 'What distinguishes history from storytelling?', 'Inquiry and presentation of facts', 'Artistic expression and creativity', 'Mere concoction and fabrication of events', 'Detailed character development', 'A'),
(31, 'Why is knowledge of history considered important?', 'To create fictional narratives', 'To understand past events and illuminate the present', 'To predict the future based on past experiences', 'To fabricate historical events', 'B'),
(32, 'What does the scope of history encompass?', 'Only political events and leaders', 'A narrow range of topics within human endeavor', 'A wide spectrum of human activities in the past', 'Only military and warfare-related subjects', 'C'),
(33, 'Why do historians develop specialties within the discipline?', 'To focus on a single historical event', 'To exclude other historians from their work', 'To narrow the scope of historical studies', 'To study particular groups, events, or periods', 'D'),
(34, 'Is history commonly categorized as an art or science?', 'Neither, it stands alone as a separate discipline', 'Both, as it incorporates elements of both art and science', 'Exclusively as an art form', 'Exclusively as a science', 'B'),
(35, 'Who regarded history as \"science no more no less\"?', 'Commager', 'Ifemeje', 'Carr', 'Daignshill ove', 'C'),
(36, 'According to Commager, is history considered a science?', 'Yes, it is seen as a true science', 'No, it is viewed as an art form', 'Yes, but only in specific contexts', 'No, it is not a field of study', 'B'),
(37, 'According to scholars like Bury, why is history considered a science?', 'Because it deals with unknowns', 'Because it uses ulterior motives', 'Because it focuses on the future', 'Because it relies on fictional narratives', 'A'),
(38, 'What are the standards of proof and procedures in history compared to other sciences?', 'They are identical', 'They are simpler and more directed', 'They are complex and subjective', 'They are unrelated and arbitrary', 'B'),
(39, 'How do historians ensure factual accuracy in their work?', 'By using scientific methods', 'By relying on fictional narratives', 'By following ulterior motives', 'By avoiding simplicity and objectivity', 'A'),
(40, 'What is one similarity between the work of physical scientists and historians?', 'Both focus on the unknown', 'Both rely on ulterior motives', 'Both disregard objectivity', 'Both reject simplicity and directedness', 'A'),
(41, 'Why do positivists regard history as a science?', 'Because it relies on fictional narratives', 'Because it focuses on the unknown', 'Because it uncovers the law of human behavior', 'Because it claims truthfulness about the past', 'C'),
(42, 'Why is history considered both an art and a science?', 'Because it collects data from the past', 'Because it relies on ulterior motives', 'Because it has no relationship with other disciplines', 'Because it doesn\'t utilize other academic fields', 'A'),
(43, 'How does history relate to other academic disciplines?', 'It merges and utilizes them to ascertain historical facts', 'It isolates itself from other fields', 'It opposes and contradicts them', 'It disregards their contributions', 'A'),
(44, 'How does the study of history foster tolerance and kindness among different groups of people?', 'By emphasizing their differences', 'By highlighting their similarities', 'By encouraging conflict and war', 'By promoting bitterness and division', 'B'),
(45, 'What does history teach us about accumulated experiences?', 'It is only foolish to learn from one\'s own mistakes', 'Learning from the mistakes of others is wise', 'Neglecting past experiences is beneficial', 'The past has no relevance to the present generation', 'B'),
(46, 'How does history contribute to the cultivation of intellectual skills?', 'By discouraging the organization of materials', 'By emphasizing the importance of propaganda', 'By promoting fancy over truth', 'By teaching the skills of criticism and judgment', 'D'),
(47, 'What is the significance of differences in history?', 'They imply stagnation and lack of development', 'They hinder progress and continuity', 'They lead to better or worse outcomes', 'They are irrelevant to the process of development', 'C'),
(48, 'What does development imply in the context of history?', 'It implies maintaining the status quo', 'It implies avoiding change at all costs', 'It implies change, either for better or worse', 'It implies ignoring antecedents and consequences', 'C'),
(49, 'Why is it important for individuals to learn from the mistakes of others, as stated in the text?', 'Because it makes them appear wise and intelligent', 'Because it helps them avoid all forms of mistakes', 'Because it is a foolish approach to learning', 'Because it is irrelevant to personal growth and development', 'B'),
(50, 'What intellectual skills does the study of history provide individuals with?', 'Skills of criticism and judgment', 'Skills of ignoring evidence and truth', 'Skills of promoting propaganda and opinion', 'Skills of avoiding scrutiny and analysis', 'A'),
(51, 'How can learning about others in history benefit a country\'s development, according to the text?', 'By discouraging the drawing of lessons', 'By hindering the country\'s progress', 'By promoting selfless love for one\'s country', 'By preventing any advancement in the nation', 'C'),
(52, 'What role does history play in creating awareness about contemporary problems?', 'It exacerbates contemporary problems', 'It fosters ignorance about such problems', 'It helps develop mature judgments', 'It has no relevance to contemporary issues', 'C'),
(53, 'How does history prepare individuals to tackle controversial issues objectively?', 'By promoting biased perspectives', 'By ignoring the spirit of searching for truth', 'By providing vast knowledge for objective handling', 'By causing individuals to avoid controversial issues altogether', 'C'),
(54, 'What is the significance of patriotism in the context of national development?', 'Patriotism hinders a nation\'s progress', 'Patriotism is irrelevant to development', 'Patriotism encourages selfless love', 'Patriotism leads to a decline in national unity', 'C'),
(55, 'In summary, what aspects of history were discussed in the previous sections?', 'The role of history in promoting propaganda', 'Whether history is a science or an art', 'The impact of history on national development', 'The irrelevance of history in understanding a country', 'C'),
(56, 'What does the word \"science\" mean when derived from the Latin word \"Scientia\"?', 'A collection of isolated facts', 'A systematic process of observation and reasoning', 'A white lab coat', 'A body of knowledge', 'B'),
(57, 'How is science described as both a body of knowledge and a process?', 'It\'s only a process of discovery', 'It\'s solely a collection of isolated facts', 'It\'s a systematic process of investigation', 'It\'s a static body of facts', 'C'),
(58, 'What is the primary purpose of science, as mentioned in the text?', 'To make judgments about the natural world', 'To answer questions about terminal illnesses', 'To list isolated facts in a textbook', 'To discover the reasons behind natural phenomena', 'D'),
(59, 'What is the focus of science, as mentioned in the text?', 'Investigating and understanding how things work', 'Making judgments about the natural world', 'Collecting isolated facts in textbooks', 'Observing and experimenting with nature', 'A'),
(60, 'How is the power of science primarily described in the text?', 'As a collection of magical practices', 'As a method for linking isolated facts', 'As a way to predict future events', 'As a method for making moral judgments', 'B'),
(61, 'Which major classes broadly classify the pure or natural sciences?', 'Physical sciences and earth sciences', 'Life sciences and earth sciences', 'Physical sciences and life sciences', 'Geology and botany', 'C'),
(62, 'What is the primary focus of the life sciences?', 'The study of living organisms and their relationship with the environment', 'The study of the atmosphere and weather', 'The study of matter and energy', 'The study of the solar system and stars', 'A'),
(63, 'Which field of science focuses on the study of the Earth\'s history, structure, and composition?', 'Geography', 'Oceanography', 'Geology', 'Astronomy', 'C'),
(64, 'How is science defined in terms of its aim and capacity in the text?', 'The aim of providing a logical treatment of observed properties and phenomena', 'The aim of controlling natural phenomena', 'The aim of predicting future events', 'The aim of understanding human intellectual activities', 'A'),
(65, 'What role does science itself play in making ethical decisions, according to the text?', 'Science specifies what should be done with its discoveries', 'Science indicates how its discoveries should be used', 'Science doesn\'t provide guidance on how to use its discoveries', 'Science strictly controls the application of its knowledge', 'C'),
(66, 'What term is used to describe the study of the Earth\'s surface in the scope of science?', 'Astronomy', 'Meteorology', 'Geography', 'Oceanography', 'C'),
(67, 'How is the word \"science\" derived, according to the text?', 'From the Greek word \"Scientia,\" meaning knowledge', 'From the Latin word \"Scientia,\" meaning learning', 'From the French word \"Science,\" meaning discovery', 'From the German word \"Wissenschaft,\" meaning investigation', 'B'),
(68, 'What does science primarily aim to provide about nature?', 'A logical treatment of observed properties and phenomena', 'Control over the natural world', 'Predictions about future events', 'A deep understanding of human history', 'A'),
(69, 'In what way is science considered both a body of knowledge and a process?', 'It accumulates facts and never changes', 'It only involves experimentation and observation', 'It provides isolated facts with no coherent understanding', 'It links isolated facts into a coherent and comprehensive understanding', 'D'),
(70, 'What is the term for the study of living organisms and their internal processes?', 'Meteorology', 'Astronomy', 'Biology', 'Geology', 'C'),
(71, 'What is the purpose of conducting background research in the scientific inquiry process?', 'To start from scratch with no prior information', 'To repeat past mistakes', 'To find the best way to do things and avoid repeating past mistakes', 'To avoid using library and internet resources', 'C'),
(72, 'How is a hypothesis formatted in the scientific inquiry process?', 'Using a \"what if\" statement', 'Using a \"because\" statement', 'Using a \"who, what, when, where, why\" statement', 'Using a \"yes or no\" statement', 'A'),
(73, 'What is the purpose of conducting an experiment in the scientific inquiry process?', 'To confirm that the hypothesis is true', 'To reject the hypothesis', 'To ensure all factors are changed simultaneously', 'To avoid repeating the experiment multiple times', 'A'),
(74, 'How should experiments be conducted to ensure they are a fair test in the scientific inquiry process?', 'Change only one factor at a time and keep other conditions the same', 'Change all factors simultaneously', 'Avoid repeating the experiment multiple times', 'Reject the hypothesis if results are not accurate', 'A'),
(75, 'What should scientists do if they find that their hypothesis is false in the scientific inquiry process?', 'Construct a new hypothesis and repeat the experimentation', 'Accept the hypothesis and communicate results', 'Avoid repeating the experiment multiple times', 'Discontinue the scientific inquiry process', 'A'),
(76, 'How is the tenacity method of inquiry characterized?', 'Beliefs based on superstition or prior beliefs without question', 'Beliefs based on reliable research findings', 'Beliefs based on intuition and feelings', 'Beliefs based on authoritative figures\' statements', 'A'),
(77, 'What is the main characteristic of the authority method of inquiry?', 'Believing the word of a reputable figure without question', 'Believing in superstitions and prior beliefs', 'Believing in one\'s intuition and feelings', 'Believing in scientific research findings', 'A'),
(78, 'In the intuition method of inquiry, what is a common basis for beliefs?', 'Beliefs based on reliable research findings', 'Beliefs based on a single example', 'Beliefs based on authoritative figures\' statements', 'Beliefs based on prior superstitions and beliefs', 'B'),
(79, 'What is the primary goal of the scientific inquiry process when analyzing data?', 'To prove the hypothesis beyond a doubt', 'To confirm all prior beliefs', 'To determine if the hypothesis is true or false', 'To disregard the experiment\'s results', 'C'),
(80, 'Why is the scientific method considered a reliable approach to inquiry?', 'Because it is based solely on intuition and feelings', 'Because it relies on the authority of figures', 'Because it involves a systematic process of observation, experimentation, and reasoning', 'Because it avoids any form of experimentation', 'C'),
(81, 'What is the primary goal of the scientific method?', 'To prove preconceived beliefs', 'To ask as many questions as possible', 'To establish a hypothesis and conduct an experiment', 'To present observations in a biased manner', 'C'),
(82, 'What is the first step in the scientific method?', 'Analyze data from previous experiments', 'Formulate a hypothesis based on observations', 'Ask a question that cannot be measured', 'Collect evidence from a variety of sources', 'B'),
(83, 'Why is the scientific method considered a reliable approach to inquiry?', 'Because it relies on preconceived beliefs', 'Because it avoids skepticism and bias', 'Because it involves eliminating biases and presenting results objectively', 'Because it avoids experimentation', 'C'),
(84, 'What is a hypothesis in the scientific method?', 'A preconceived belief', 'An observation without any basis', 'A proposed explanation for a specific question based on evidence', 'A conclusion drawn without any basis', 'C'),
(85, 'What is the role of skepticism in the scientific method?', 'To eliminate all biases', 'To encourage preconceived beliefs', 'To ask as few questions as possible', 'To avoid presenting results objectively', 'A'),
(86, 'How do scientists conduct experiments in the scientific method?', 'By changing multiple variables at once', 'By randomly assigning groups and holding most variables constant', 'By conducting biased experiments based on preconceived beliefs', 'By using observations from previous experiments', 'B'),
(87, 'Which statement accurately describes the scientific method?', 'It begins with presenting observations in a biased manner', 'It involves asking unmeasurable questions', 'It involves forming a hypothesis, conducting experiments, and presenting objective results', 'It starts with avoiding skepticism and bias', 'C'),
(88, 'What makes a question suitable for the scientific method?', 'It is about something that cannot be measured', 'It is very broad and open-ended', 'It is specific and can be measured with a number', 'It avoids any form of measurement', 'C'),
(89, 'What does a scientist do after conducting an experiment in the scientific method?', 'They present the results in a biased manner', 'They form multiple hypotheses and abandon the experiment', 'They observe the results and either prove or disprove the hypothesis', 'They conduct additional experiments', 'C'),
(90, 'Which step of the scientific method involves asking questions like who, what, where, when, or how?', 'Formulating a hypothesis based on observations', 'Analyzing data from previous experiments', 'Asking a question that can be measured with a number', 'Presenting observations without any basis', 'C'),
(91, 'What is one potential limitation of using a single example, such as the child who built a treehouse, as a basis for belief?', 'It is always accurate and applicable to all cases', 'It may not represent a typical or general outcome', 'It eliminates the need for skepticism and inquiry', 'It can prove or disprove any hypothesis', 'B'),
(92, 'How can understanding non-scientific methods of inquiry benefit scientists?', 'It can help scientists disprove their own hypotheses', 'It is not relevant to scientific progress', 'It allows scientists to understand public beliefs and communicate new findings', 'It prevents scientists from using the scientific method', 'C'),
(93, 'What is the most reliable method of inquiry according to the text?', 'Tenacity method', 'Authority method', 'Intuition method', 'Scientific method', 'D'),
(94, 'How has science contributed to the development of countries like America, Japan, and China?', 'By inventing equipment and machines for industries', 'By promoting religious practices and beliefs', 'By increasing the gap in living standards between nations', 'By eliminating the need for scientific knowledge', 'A'),
(95, 'What does the text suggest is one major factor contributing to the gap in living standards between developed and developing countries?', 'Religion', 'Scientific knowledge', 'Natural herbs used as drugs', 'Availability of electricity and water', 'B'),
(96, 'What role has science played in transportation?', 'It has made transportation easier by providing various modes of travel', 'It has eliminated the need for transportation by improving living standards', 'It has reduced the use of automobiles and aircraft', 'It has had no impact on transportation', 'A'),
(97, 'What is one area where science has significantly contributed to the betterment of society?', 'Religion and spirituality', 'Medicine', 'Agricultural practices', 'Traditional beliefs and practices', 'B'),
(98, 'How has science transformed rural communities into urban settlements?', 'By promoting religious practices and beliefs', 'By providing social amenities such as electricity, water, schools, and hospitals', 'By discouraging population growth', 'By eliminating the need for urbanization', 'B'),
(99, 'What is one of the key advantages of using scientific knowledge in medicine?', 'It has led to the discovery of natural herbs as drugs', 'It has increased the need for traditional medicine', 'It has improved healthcare by converting natural herbs into modern drugs', 'It has no impact on the field of medicine', 'C'),
(100, 'What has science contributed to the field of industry and home life?', 'It has had no impact on industry and home life', 'It has improved industry by eliminating machines and equipment', 'It has eliminated the need for modern equipment and machines', 'It has led to the invention of equipment and machines', 'D'),
(101, 'What is the primary focus of philosophy, according to the text?', 'The systematic study of natural phenomena', 'The explanation of natural phenomena', 'The history of human achievements and inventions', 'The transformation of human existence', 'B'),
(102, 'How does the text describe the role of philosophers in changing the world?', 'Philosophers can only explain what to do and cannot change the world', 'Philosophers are capable of changing the world through their ideas and actions', 'Philosophers are known for their ability to invent new technologies that transform society', 'Philosophers can influence the world by providing historical insights', 'A'),
(103, 'What is science primarily concerned with, according to the text?', 'The explanation of natural phenomena', 'The systematic study of history', 'The transformation of human existence', 'The history of human achievements and inventions', 'A'),
(104, 'What is the common subject matter of history, philosophy, and science, as mentioned in the text?', 'The spiritual world of individuals and their interactions with the world', 'Natural phenomena and their relations', 'The history of human achievements and inventions', 'The systematic study of human attitudes towards the world', 'B'),
(105, 'How does the text describe the world in which humans live?', 'A primeval, pure world with no human influence', 'A known and transformed world with human influence', 'A world devoid of attitudes, needs, and ideals', 'A world where history, philosophy, and science have no relevance', 'B'),
(106, 'What is the relationship between history, philosophy, and science, according to archaeological findings?', 'They have no historical connection and evolved independently', 'They are closely related and have influenced each other throughout human history', 'They emerged as distinct disciplines with no influence on each other', 'They are solely responsible for the transformation of societies from prehistoric times to the modern age', 'B'),
(107, 'How has the knowledge of history, philosophy, and science influenced human life, according to the text?', 'They have had no impact on human life', 'They have played a significant role in the development and transformation of societies', 'They are responsible for the nomadic lifestyle of early humans', 'They have led to the deterioration of production techniques over the years', 'B'),
(108, 'During what time period did humans take steps toward civilization, according to the text?', 'Between 4,000BC and 5,000BC', 'Between 5,000BC and 4,000BC', 'Between 3,000BC and 2,000BC', 'Between 2,000BC and 1,000BC', 'B'),
(109, 'What changes occurred in human thinking capacity as a result of living together in towns, according to the text?', 'There was no significant change in thinking capacity', 'Tremendous changes occurred, leading to higher thinking capacity', 'Humans became more isolated and less cooperative', 'People started living in isolation with no impact on their thinking ability', 'B'),
(110, 'How have traces of ancient human activities and existence been preserved, according to the text?', 'In ancient books and manuscripts', 'In oral traditions passed down through generations', 'In soils and rocks that are thousands of years old', 'In modern scientific studies and laboratory experiments', 'C'),
(111, 'What does the text emphasize regarding the importance of philosophy in intellectual life?', 'Philosophy is not relevant to intellectual life', 'Philosophy is essential for a full intellectual life', 'Philosophy should be studied only by specialized scientists', 'Philosophy is useful for artists but not for scientifically thinking individuals', 'B'),
(112, 'According to the text, what is the consequence of rejecting history, philosophy, and science?', 'It leads to a narrowness of outlook and a less intellectually full life', 'It has no impact on one\'s intellectual development', 'It leads to a broader perspective and a more intellectually fulfilling life', 'It results in an emotionally developed and well-rounded individual', 'A'),
(113, 'What does the text suggest about the relationship between philosophy, history, and science?', 'They are entirely independent and have no influence on each other', 'They are interrelated and should be studied together for a complete understanding of human culture and knowledge', 'They are irrelevant to human culture and knowledge', 'They should be studied separately without considering their influence on each other', 'B'),
(114, 'What is the main message conveyed in the text regarding the significance of history, philosophy, and science?', 'They are only important for artists and scientists', 'They are essential for an intellectually full life and contribute to a broader perspective', 'They are unrelated to human culture and knowledge', 'They should be rejected in favor of more specialized fields of study', 'B'),
(115, 'Where did the Egyptian civilization primarily flourish?', 'In the Sahara desert', 'Along the bank of the Nile River', 'In the Gulf of Aquaba', 'In East Africa', 'B'),
(116, 'What method of farming did the Egyptians develop due to their reliance on the flood season of the Nile River?', 'Rain-fed agriculture', 'Terracing of hillsides', 'Irrigation system using the Nile River', 'Aquaponics', 'C'),
(117, 'What machine did Egyptian farmers invent to draw water from wells for irrigating distant fields?', 'Shaduff', 'Plough pulled by animals', 'Cotton gin', 'Windmill', 'A'),
(118, 'What type of writing did the Egyptians develop, which used picture signs to stand for sounds?', 'Cuneiform', 'Hieroglyphic', 'Sanskrit', 'Runes', 'B'),
(119, 'What material did the Egyptians use to make a type of whitish paper for writing, which was made from reeds?', 'Papyrus', 'Parchment', 'Vellum', 'Bamboo', 'A'),
(120, 'What method of writing did the Egyptians develop that resembled Arabic script?', 'Hieroglyphic', 'Cuneiform', 'Runes', 'Right-to-left writing', 'D'),
(121, 'What domestic animals did the Egyptians keep for various purposes?', 'Lions and giraffes', 'Cows and ducks', 'Horses and camels', 'Elephants and tigers', 'B'),
(122, 'What is considered the biggest building ever built by man in China, which was meant to protect the country from its enemies?', 'The Great Wall of China', 'The Forbidden City', 'The Temple of Heaven', 'The Terracotta Army', 'A'),
(123, 'What skill did the Chinese develop to manage the flooding of the Yellow River, similar to the efforts in Mesopotamia?', 'Building dams, dykes, and canals', 'Advanced agriculture methods', 'Importing sandbags to block the river', 'Constructing underground tunnels', 'A'),
(124, 'When is the earliest cultivation in China believed to have occurred, according to historians?', '1000 BC', '2000 BC', '3000 BC', '5000 BC', 'D'),
(125, 'What significant achievement did the Chinese make in writing that has not significantly changed up to today?', 'Development of the alphabet', 'Use of hieroglyphics', 'Use of alphabetic symbols for words', 'Use of Chinese characters', 'D'),
(126, 'Which river in China was known to flood from time to time, leading to the development of flood management skills?', 'Yangtze River', 'Mekong River', 'Yellow River', 'Pearl River', 'C'),
(127, 'What is the purpose of the Great Wall of China, according to historical records?', 'To provide a water supply for the region', 'To mark the border of China', 'To protect China from invading forces', 'To serve as a trade route for merchants', 'C'),
(128, 'What type of writing system did the Chinese develop that uses symbols for words rather than an alphabet?', 'Hieroglyphics', 'Alphabetic symbols', 'Chinese characters', 'Runes', 'C'),
(129, 'What period is regarded as the golden age of Greek civilization, during which significant advances in science, technology, and arts were made?', '4th century B.C.', '5th century B.C.', '6th century B.C.', '3rd century B.C.', 'B'),
(130, 'Who is credited with inventing abstract geometry and the belief that everything is formed from water as a basic substance?', 'Thales of Miletus', 'Pythagoras', 'Archimedes', 'Aristotle', 'A'),
(131, 'What important scientific discovery did Anaximander make, which contributed to early world mapping?', 'The spherical shape of the Earth and its rotation around the sun', 'The concept of longitude and latitude', 'The creation of a map of the known world', 'The existence of magnetic poles', 'C'),
(132, 'Which Greek scientist invented the Archimedes screw, a device used for lifting water from lower to higher elevations?', 'Thales of Miletus', 'Pythagoras', 'Archimedes', 'Aristotle', 'C'),
(133, 'What is the name of the famous Greek scientist who suggested that the Earth was round and travels around the sun?', 'Thales of Miletus', 'Pythagoras', 'Archimedes', 'Aristides of Samos', 'D'),
(134, 'Who is considered a pioneer in establishing medicine as a branch of science and is known for \"The Hippocratic oath\" taken by doctors?', 'Thales of Miletus', 'Pythagoras', 'Archimedes', 'Hippocrates', 'D'),
(135, 'Before Hippocrates, how were illnesses generally considered?', 'As naturally occurring phenomena with no divine influence', 'As resulting from a combination of natural factors and divine influence', 'As solely the result of divine actions', 'As purely scientific occurrences independent of any divine influence', 'C'),
(136, 'In which region did Islam originate in the 6th century A.D. and later spread to other parts of the world, leading to significant contributions to science and technology?', 'Europe', 'Africa', 'Asia', 'Arabia', 'D'),
(137, 'What important mathematical concept was introduced to the world by Muslims, which includes the use of Arabic numerals and the discovery of zero?', 'Roman numerals', 'Decimal notation', 'Algebra and geometry', 'Greek trigonometry', 'B'),
(138, 'What field of mathematics did Muslims significantly contribute to, including the development of spherical trigonometry and the concept of sine, tangent, and cotangent?', 'Geometry', 'Algebra', 'Calculus', 'Number theory', 'B'),
(139, 'In the field of physics, what important invention is attributed to Muslims, which involves a swinging weight used to regulate time?', 'Telescope', 'Pendulum', 'Microscope', 'Barometer', 'B'),
(140, 'What did Muslims contribute to the field of astronomy, which included the construction of observatories and astronomical instruments?', 'The invention of the telescope', 'The discovery of the heliocentric model', 'The development of modern physics', 'The construction of observatories and instruments', 'D'),
(141, 'Which Muslim scientist is known for writing \"De Gradibus,\" an important contribution to pharmacology?', 'Al-Razi (Rhazes)', 'Al-Kindi (Alkindus)', 'Abu-al-Qassim (Abu Casis)', 'Ibn Sina (Avicenna)', 'B'),
(142, 'Who was a famous Muslim physician known for recording clinical cases and providing valuable insights into various diseases based on his own experience?', 'Al-Razi (Rhazes)', 'Al-Kindi (Alkindus)', 'Abu-al-Qassim (Abu Casis)', 'Ibn Sina (Avicenna)', 'A'),
(143, 'During the Dark Age in Europe (500-1100 A.D.), where was science flourishing, with advancements in medical and scientific knowledge exceeding what was known in Europe at the time?', 'Asia', 'Africa', 'Europe', 'The Americas', 'A'),
(144, 'Which Muslim scientist made significant contributions to surgery by writing a medical encyclopedia that was used for centuries by both Muslims and Europeans?', 'Al-Razi (Rhazes)', 'Al-Kindi (Alkindus)', 'Ibn Zuhr (Avenzoar)', 'Ibn Sina (Avicenna)', 'C'),
(145, 'What important method did Ibn Zuhr (Avenzoar) employ in his medical experiments to improve surgical procedures before applying them to human patients?', 'Animal testing', 'Observational studies', 'Theoretical modeling', 'Computer simulations', 'A'),
(146, 'Around what time frame did Jabir succeed in discovering new chemical reactions and compounds, contributing to the advancement of chemistry?', '1000 A.D.', '750 A.D.', '500 B.C.', '1500 A.D.', 'B'),
(147, 'According to the conclusion, what is the lasting impact of the scientific achievements recorded by early civilizations on present-day scientists?', 'The achievements of early civilizations are no longer relevant to modern science.', 'Early civilizations laid the foundation for modern scientific achievements.', 'Modern science has completely surpassed the achievements of early civilizations.', 'Early civilizations hindered the progress of modern science.', 'B'),
(148, 'What was one of Galileo\'s major achievements in the field of astronomy that contributed to the scientific revolution?', 'Confirmation of the phases of Venus', 'Invention of the heliocentric model', 'Discovery of the tychonic system', 'Observation of lunar eclipses', 'A'),
(149, 'Which celestial body did Galileo observe, leading to his telescopic confirmation of its phases and supporting the heliocentric model?', 'Mars', 'Saturn', 'Venus', 'Jupiter', 'C'),
(150, 'What did Galileo discover in his observations of Jupiter that was named the \"Galilean moons\" in his honor?', 'New constellations in the night sky', 'Four of the largest moons of Jupiter', 'A comet with a long tail', 'The rings of Saturn', 'B'),
(151, 'What did the Roman inquisition conclude about Galileo\'s heliocentric views regarding the solar system?', 'They supported his views as an established fact', 'They rejected his views as false and heretical', 'They found no evidence to support or reject his views', 'They declared his views to be the only accepted truth', 'C'),
(152, 'Which work by Galileo is known for defending his heliocentric views and engaging in a dialogue concerning the two chief world systems?', '\"Phases of the Cosmos\"', '\"Astronomical Dialogues\"', '\"The Geocentric Universe\"', '\"The Solar System Debate\"', 'B'),
(153, 'Galileo was known for supporting heliocentrism, but what were the two main alternative models of the solar system that existed during his time?', 'Tychonic system and geocentrism', 'Copernican system and geocentrism', 'Heliocentrism and Ptolemaic system', 'Keplerian system and tychonic system', 'B'),
(154, 'What was a key challenge Galileo faced in supporting heliocentrism, which led to opposition from astronomers of his time?', 'Lack of an observer\'s tellar parallax', 'Lack of proper mathematical calculations', 'Lack of access to advanced telescopes', 'Lack of interest in his work from other scientists', 'A'),
(155, 'How did Galileo\'s defense of heliocentrism, particularly his publication \"Dialogue Concerning the Two Chief World Systems,\" affect his life?', 'It led to his appointment as an advisor to Pope Urban VIII', 'It caused his house arrest and trial for heresy', 'It earned him a prominent position in the Roman Inquisition', 'It resulted in his appointment as a professor at the Vatican Observatory', 'B'),
(156, 'In what work did Galileo summarize his earlier writings on kinematics and the strength of materials?', '\"The New Astronomy\"', '\"The Ebb and Flow of the Sea\"', '\"The Universe\"', '\"The Two New Sciences\"', 'D'),
(157, 'Why did Galileo consider his theory of tides important in providing physical proof of the Earth\'s motion?', 'Because it explained the phases of Venus', 'Because it demonstrated the existence of sunspots', 'Because it showed the Earth\'s gravitational pull on the moon', 'Because it confirmed the rotation of the Earth', 'D'),
(158, 'What was Galileo\'s approach to experiments and measurements that made his work distinct in the scientific community of his time?', 'He relied solely on qualitative observations', 'He used inductive reasoning to confirm mathematical laws', 'He refused to perform experiments and focused on theoretical work', 'He depended on religious authorities for scientific guidance', 'B'),
(159, 'What technological contributions did Galileo make, specifically in relation to Gunners and Surveyors?', 'He developed a new method for firing cannons', 'He improved the design of geometric and military compasses', 'He invented a new type of telescope for stargazing', 'He created a device for measuring the speed of projectiles', 'B'),
(160, 'Galileo\'s work on the motion of bodies, along with that of Kepler and Descartes, laid the groundwork for which later scientific development?', 'Quantum mechanics', 'Relativity theory', 'Classical mechanics', 'Electromagnetic theory', 'C'),
(161, 'How did Albert Einstein describe Galileo\'s impact on modern science?', 'As the inventor of the telescope', 'As the founder of the heliocentric model', 'As the father of modern science', 'As the author of \"The New Astronomy\"', 'C'),
(162, 'What major work by Sir Isaac Newton, published in 1687, laid the foundation for classical mechanics and described universal gravitation?', '\"The Newtonian Laws of Motion\"', '\"Principia Mathematica\"', '\"Astronomiae Naturalis Principia Mathematica\"', '\"The Laws of Celestial Mechanics\"', 'B'),
(163, 'How did Newton\'s work on gravitation contribute to the scientific view of the physical universe?', 'It provided evidence for geocentrism.', 'It introduced a new set of natural laws governing celestial bodies.', 'It rejected Kepler\'s laws of planetary motion.', 'It proved that the Earth was the center of the universe.', 'B'),
(164, 'What important instrument did Isaac Newton build, and what did he observe using it?', 'He built the first practical refracting telescope and observed the moon.', 'He built the first practical reflecting telescope and observed the spectrum of light.', 'He built the first microscope and observed bacteria.', 'He built the first practical barometer and observed changes in atmospheric pressure.', 'B'),
(165, 'In mathematics, what contributions did Newton make, including his work on calculus?', 'He invented algebra and trigonometry.', 'He introduced the concept of imaginary numbers.', 'He advanced differential and integral calculus and used coordinate geometry to solve equations.', 'He formulated the laws of probability and invented statistical analysis.', 'C'),
(166, 'What was Sir Isaac Newton\'s stance on religion, and what aspect of religious belief did he reject?', 'He was a devout Anglican who fully embraced Trinitarian beliefs.', 'He was an atheist who rejected all forms of religious belief.', 'He secretly rejected the idea of Trinitarian beliefs and refused holy orders.', 'He was a Catholic priest who defended the authority of the Pope.', 'C'),
(167, 'How did Isaac Newton view the relationship between science and the divine, particularly regarding the motion of celestial bodies?', 'He believed that science explained the motions of the planets without divine involvement.', 'He argued that God set the planets in motion and science merely described these motions.', 'He denied the existence of celestial bodies, viewing them as illusions.', 'He believed that celestial bodies were controlled by a council of ancient gods.', 'B'),
(168, 'What significant contributions did Isaac Newton make to religious and philosophical thought during the Enlightenment?', 'He was a leading figure in the Enlightenment, advocating for atheism and secularism.', 'He had no influence on Enlightenment thought, focusing solely on science.', 'His writings on divine intervention and the end of the world influenced Enlightenment philosophers.', 'He promoted the idea that reason alone could provide all answers to human questions.', 'C'),
(169, 'What scientific theory did Charles Robert Darwin propose, which explains the diversity of life on Earth?', 'Theory of Artificial Selection', 'Theory of Creationism', 'Theory of Catastrophic Evolution', 'Theory of Natural Selection', 'D'),
(170, 'In what year did Charles Darwin publish his theory of evolution with compelling evidence in his book \"On the Origin of Species\"?', '1860', '1870', '1859', '1845', 'C'),
(171, 'What early experiences in Charles Darwin\'s life contributed to his interest in natural science?', 'His medical education at the University of Edinburgh', 'His five-year voyage on HMS Beagle', 'His geological work at the University of Cambridge', 'His collaboration with Alfred Russel Wallace on the theory of evolution', 'B'),
(172, 'What famous naturalist sent Charles Darwin an essay in 1858 that described their joint theory of evolution, prompting Darwin to publish his work on natural selection?', 'Louis Pasteur', 'Albert Einstein', 'Alfred Russel Wallace', 'Gregor Mendel', 'C'),
(173, 'What did Charles Darwin\'s research in the 1870s include, after his groundbreaking work on the theory of evolution?', 'Human evolution and sexual selection', 'The formation of planetary bodies and celestial motion', 'The study of quantum mechanics and particle physics', 'The investigation of the geological history of Earth', 'A'),
(174, 'Which book by Charles Darwin is known for revolutionizing concepts about the origin and evolution of life on Earth?', '\"The Descent of Man, and Selection in Relation to Sex\"', '\"The Expression of the Emotions in Man and Animals\"', '\"The Voyage of the Beagle\"', '\"The Earthworm and Its Effects on Soil\"', 'A'),
(175, 'According to Darwin\'s theory of evolution, what is the basic mechanism responsible for the diversity of life?', 'Catastrophic events shaping species diversity', 'Human intervention and selective breeding', 'Variations that arise spontaneously and genetic mutations', 'Natural selection acting on slight, favorable variations and influenced by external conditions', 'D'),
(176, 'What scientific field is Gregor Johann Mendel known for and considered the \"father of modern\" in?', 'Geology', 'Chemistry', 'Genetics', 'Botany', 'C'),
(177, 'What did Gregor Mendel demonstrate through his experiments with pea plants, which led to the laws of Mendelian inheritance?', 'The concept of photosynthesis', 'The laws of thermodynamics', 'The inheritance of certain traits in plants following specific patterns', 'The process of cellular respiration', 'C'),
(178, 'In which garden did Gregor Mendel conduct his experiments with pea plants between 1856 and 1863?', 'A botanical garden', 'A monastery\'s garden', 'A university research garden', 'A royal palace garden', 'B'),
(179, 'How many pea plants did Gregor Mendel cultivate and test during his experiments between 1856 and 1863?', 'Approximately 2,000 pea plants', 'About 5,000 pea plants', 'Around 29,000 pea plants', 'Over 100,000 pea plants', 'C'),
(180, 'What are the two generalizations made by Gregor Mendel in his study of pea plants, which became known as Mendel\'s laws of inheritance?', 'The laws of motion and the law of gravitation', 'The laws of segregation and the law of independent assortment', 'The laws of supply and demand and the law of diminishing returns', 'The laws of reflection and the law of refraction', 'B'),
(181, 'After his initial study on pea plants, what did Gregor Mendel experiment with to extend his work to animals?', 'Birds', 'Mice', 'Honeybees', 'Frogs', 'C'),
(182, 'What term is commonly used to describe Gregor Mendel\'s posthumous recognition and the subsequent development of the modern science of genetics based on his work?', 'The Renaissance of Genetics', 'The Rebirth of Inheritance', 'The Rediscovery of Heredity', 'The Revolution of Evolution', 'C'),
(183, 'What is Albert Einstein often regarded as due to his development of the general theory of relativity?', 'The father of modern physics', 'The father of modern chemistry', 'The father of modern biology', 'The father of modern mathematics', 'A'),
(184, 'What famous equation is attributed to Albert Einstein, expressing the mass-energy equivalence?', 'E = M?', 'F = ma', 'E = mc?', 'P = mv', 'C'),
(185, 'What Nobel Prize did Albert Einstein receive in 1921 for his contributions to theoretical physics?', 'Nobel Prize in Chemistry', 'Nobel Prize in Medicine', 'Nobel Prize in Physics', 'Nobel Peace Prize', 'C'),
(186, 'In what year did Albert Einstein become a citizen of the United States after fleeing Nazi Germany?', '1921', '1933', '1940', '1955', 'C'),
(187, 'Which scientific theory developed by Albert Einstein was used to explain the laws of classical mechanics and the laws of the electromagnetic field?', 'Theory of Relativity', 'Quantum Theory', 'Theory of Evolution', 'Theory of Gravitation', 'A'),
(188, 'What prestigious academic institution in the United States was Albert Einstein affiliated with until his death in 1955?', 'Harvard University', 'University of California, Berkeley', 'Institute for Advanced Study in Princeton', 'Massachusetts Institute of Technology (MIT)', 'C'),
(189, 'How many scientific papers did Albert Einstein publish during his lifetime, along with over 150 non-scientific works?', 'More than 300 scientific papers and over 150 non-scientific works', 'About 100 scientific papers and over 200 non-scientific works', 'Approximately 500 scientific papers and 50 non-scientific works', 'Less than 50 scientific papers and over 500 non-scientific works', 'A');
INSERT INTO `gst_110` (`id`, `question`, `option_a`, `option_b`, `option_c`, `option_d`, `answer`) VALUES
(190, 'In which century did the Renaissance movement begin in Italy and gradually spread to the rest of Europe?', '15th century', '16th century', '14th century', '17th century', 'C'),
(191, 'What were Renaissance scholars searching for in Europe\'s monastic libraries, as part of their humanist approach to study?', 'Latin literary, historical, and oratorical texts of Antiquity', 'Medieval manuscripts', 'Arabic works of natural science', 'Modern scientific discoveries', 'A'),
(192, 'What significant event contributed to the revival of Greek scholarship in the Renaissance period?', 'The fall of Constantinople', 'The invention of the printing press', 'The discovery of the New World', 'The Protestant Reformation', 'A'),
(193, 'Who were some of the prominent figures associated with the Renaissance in Italy, including writers and painters?', 'Dante Alighieri, Francesco Petrarca, Giotto di Bondone', 'Leonardo da Vinci, Michelangelo, Raphael', 'Shakespeare, Galileo, Copernicus', 'Charlemagne, Joan of Arc, Machiavelli', 'A'),
(194, 'What was the relationship between artists and patrons during the Renaissance?', 'Artists depended on patrons for support, and patrons needed money to sustain art', 'Artists were financially independent and did not rely on patrons', 'Patrons provided art supplies to artists in exchange for artwork', 'Artists were exclusively supported by the church', 'A'),
(195, 'What played a significant role in bringing wealth to Italy during the Renaissance period?', 'Expanding trade into Asia and Europe', 'The discovery of gold mines', 'A surge in agricultural production', 'The rise of the banking system', 'A'),
(196, 'Why is there debate about why the Renaissance began in Italy and when it started?', 'Multiple theories have been proposed, but no consensus has been reached', 'The exact origins of the Renaissance are well-documented', 'The Renaissance began in Florence, Italy, in the year 1401', 'The Renaissance was a spontaneous cultural movement', 'A'),
(197, 'What historical events and changes swept Europe in the 16th and 17th centuries, significantly impacting various aspects of life?', 'The Renaissance and the Crusades', 'The Industrial Revolution and the Age of Exploration', 'The Enlightenment and the French Revolution', 'The Scientific Revolution and the Reformation', 'D'),
(198, 'What was the primary purpose of the crusades that occurred from 1095 to about 1200 A.D.?', 'To win back the holy land from Moslem forces', 'To establish trade routes in Asia and Africa', 'To spread Christianity to new territories', 'To explore the Americas and discover new lands', 'A'),
(199, 'What does the term \"Renaissance\" imply, and how was it applied to various aspects of European history?', 'Re-birth and renewal; applied to revival of ancient learning, religious reformation, and reception of Roman laws', 'Scientific discovery; applied to advancements in technology, astronomy, and medicine', 'Cultural exchange; applied to the blending of European and Asian traditions', 'Political reform; applied to the establishment of democratic governments', 'B'),
(200, 'Who are often regarded as the founders of Italian humanism and the initiators of the Italian Renaissance?', 'Petrarch and Boccaccio', 'Leonardo da Vinci and Michelangelo', 'Copernicus and Galileo', 'Columbus and Magellan', 'A'),
(201, 'What were the roots of the Italian Renaissance, and how did it naturally arise from ideas in medieval Italian cities?', 'It started with the flight of Greek scholars from Constantinople', 'It originated with the invention of the printing press', 'It was rooted in the Middle Ages and ideas common in Italian cities', 'It was influenced by the Reformation and religious dogmas', 'C'),
(202, 'In medieval Italian cities, which fields of study were more advanced than in the rest of Europe, contributing to the Renaissance?', 'Law and medicine', 'Theology and philosophy', 'Astronomy and alchemy', 'Literature and architecture', 'A'),
(203, 'What played a significant role in the circulation of Renaissance ideas throughout Europe?', 'The recently-invented printing press', 'The voyages of exploration', 'The establishment of universities', 'The rise of religious movements', 'A'),
(204, 'What fields of study were more advanced in medieval Italian cities compared to the rest of Europe?', 'Law and medicine', 'Theology and philosophy', 'Astronomy and alchemy', 'Literature and architecture', 'A'),
(205, 'Who were the groups of learned men in medieval Italian cities who showed interest in ancient Roman literature?', 'Theologians', 'Merchants', 'Lawyers', 'Artists', 'C'),
(206, 'What did the liberation from theological and dogmatic sanctions in Italian cities contribute to?', 'A decline in intellectual pursuits', 'Advancements in almost all branches of scientific knowledge', 'A shift towards religious studies', 'A decline in the study of ancient Roman literature', 'B'),
(207, 'What increased the flow of money in Tyrol during the Renaissance?', 'Silver mining', 'Trade with Asia', 'Inventions', 'Religious revival', 'A'),
(208, 'During the Renaissance, what did Latin scholars primarily focus on in their studies?', 'Greek and Arabic works of natural science', 'Latin and Greek literary texts', 'Religious texts', 'Mathematics and engineering', 'A'),
(209, 'In the early 15th century, what had been recovered by Renaissance scholars in terms of Latin literature?', 'The bulk of Latin literature', 'Ancient Greek texts', 'Medieval Islamic works', 'Religious manuscripts', 'A'),
(210, 'What class of Greek cultural works did Renaissance scholars bring back into Western Europe for the first time since late antiquity?', 'Science, math, and philosophy texts', 'Greek drama and oratory', 'Byzantine manuscripts', 'Religious texts', 'B'),
(211, 'What interest and skills did the Renaissance foster in people?', 'Interest in science and technology', 'Interest in art and books, as well as mechanical skills', 'Interest in politics and religion', 'Interest in trade and commerce', 'B'),
(212, 'Who were some of the great artists who lived and worked during the Renaissance?', 'Julius Caesar and Alexander the Great', 'Leonardo da Vinci and Michelangelo', 'William Shakespeare and Johann Gutenberg', 'Confucius and Laozi', 'B'),
(213, 'How did ideas and inventions spread during the Renaissance?', 'Through secret societies', 'By word of mouth', 'Through trade and exploration', 'Through religious institutions', 'C');

-- --------------------------------------------------------

--
-- Table structure for table `payment_table`
--

CREATE TABLE `payment_table` (
  `payment_id` int(11) NOT NULL,
  `unique_id` varchar(255) NOT NULL,
  `course` varchar(255) NOT NULL,
  `paid` tinyint(1) NOT NULL,
  `payment_date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment_table`
--

INSERT INTO `payment_table` (`payment_id`, `unique_id`, `course`, `paid`, `payment_date`) VALUES
(1, '669131707', 'gst_103', 1, '2023-10-14');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_enrollment`
--

CREATE TABLE `quiz_enrollment` (
  `enrollment_id` int(11) NOT NULL,
  `unique_id` varchar(255) NOT NULL,
  `course` varchar(255) NOT NULL,
  `present_score` int(11) NOT NULL,
  `HighScore` int(11) NOT NULL,
  `enrollment_date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quiz_enrollment`
--

INSERT INTO `quiz_enrollment` (`enrollment_id`, `unique_id`, `course`, `present_score`, `HighScore`, `enrollment_date`) VALUES
(1, '669131707', 'gst_103', 0, 340, '2023-09-29'),
(5, '119359390', 'gst_103', 195, 195, '2023-10-07'),
(6, '119359390', '', 70, 0, '2023-10-07'),
(7, '669131707', 'eds_204', 0, 0, '2023-10-08'),
(8, '', '', 0, 0, '2023-10-08'),
(9, '669131707', 'gst_110', 105, 235, '2023-10-10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `unique_id` varchar(32) NOT NULL,
  `user_session_id` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `level` varchar(32) NOT NULL,
  `password` varchar(255) NOT NULL,
  `trials` varchar(32) NOT NULL,
  `matric_number` varchar(32) NOT NULL,
  `reg_date` varchar(32) NOT NULL DEFAULT current_timestamp(),
  `profile_img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `unique_id`, `user_session_id`, `fname`, `lname`, `email`, `department`, `level`, `password`, `trials`, `matric_number`, `reg_date`, `profile_img`) VALUES
(1, '568393429', '', 'Ayokanmi', 'Akele', 'precimyte1122@gmail.com', 'science education', '300', '$2y$10$do9rpxsG8xlELWPDJGIa.ulE0cx4yfGD53K0UmIfOeNZrHSSsXN6G', '95', 'Edu19sed020', '2023-09-27 08:58:14', 'profile_30.png'),
(2, '669131707', 'buf83a6vrdkckvm94tkv5vh0mt', 'Destiny', 'Joseph', 'akojiflash2000@gmail.com', 'computer science education', '300', '$2y$10$F69SiayPj7vk5URpVpqwN.TTMOCxJM4O.qZDxsjZdEcG8n46B9uZa', '60', 'edu19sed904', '2023-09-27 09:41:11', 'profile_22.png'),
(3, '119359390', '', 'Jamiu', 'Jamiu', 'jamiuabdulrafiu2020@gmail.com', 'Biotechnology ', '100', '$2y$10$Auihsz1nqcBwTFDPrzdUG.fD5RUqcZZKWk1.mSCGMjS56keYBYGya', '-1', 'Sci22btc003', '2023-10-07 03:12:46', 'profile_3.png'),
(4, '319355563', '', 'David', 'James', 'amehdavid233@gmail.com', 'SCIENCE EDUCATION ', '300', '$2y$10$Fnrr6swk.XLQ3EEOeMP46ufVcsRYK.2Sw3ZNmgMWa3yoo.GAKWFy2', '1', 'edu20sed154', '2023-10-13 11:48:57', 'profile_9.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gst_103`
--
ALTER TABLE `gst_103`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gst_110`
--
ALTER TABLE `gst_110`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_table`
--
ALTER TABLE `payment_table`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `quiz_enrollment`
--
ALTER TABLE `quiz_enrollment`
  ADD PRIMARY KEY (`enrollment_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `gst_103`
--
ALTER TABLE `gst_103`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT for table `gst_110`
--
ALTER TABLE `gst_110`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=214;

--
-- AUTO_INCREMENT for table `payment_table`
--
ALTER TABLE `payment_table`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `quiz_enrollment`
--
ALTER TABLE `quiz_enrollment`
  MODIFY `enrollment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
