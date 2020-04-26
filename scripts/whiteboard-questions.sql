DROP TABLE IF EXISTS `question_setting`;
DROP TABLE IF EXISTS `question_history`;
DROP TABLE IF EXISTS `questions_text`;
DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `user` varchar(255),
  `password` varchar(255)
);

CREATE TABLE `question_setting` (
  `user_id` int,
  `id_question_text` int,
  `bookmarked` CHAR,
  `comfort_level` int,
  PRIMARY KEY (`user_id`, `id_question_text`)
);

CREATE TABLE `question_history` (
  `user_id` int,
  `id_question_text` int,
  `user` varchar(255),
  `start_time` TIMESTAMP,
  `end_time` TIMESTAMP,
  `completed` CHAR,
  PRIMARY KEY (`user_id`, `id_question_text`)
);

CREATE TABLE `questions_text` (
  `id` int PRIMARY KEY,
  `difficulty` varchar(255),
  `type` varchar(255),
  `question` text
);

ALTER TABLE `question_setting` ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `question_setting` ADD FOREIGN KEY (`id_question_text`) REFERENCES `questions_text` (`id`);

ALTER TABLE `question_history` ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `question_history` ADD FOREIGN KEY (`id_question_text`) REFERENCES `questions_text` (`id`);

INSERT INTO questions_text(id,difficulty,type,question)VALUES(1,'Medium','General','Find the most frequent integer in an array.');
INSERT INTO questions_text(id,difficulty,type,question)VALUES(2,'Medium','General','Find pairs in an integer array whose sum is equal to 10 (bonus: do it in linear time).');
INSERT INTO questions_text(id,difficulty,type,question)VALUES(3,'Medium','General','Given 2 integer arrays, determine of the 2nd array is a rotated version of the 1st array. Ex. Original Array A={1,2,3,5,6,7,8} Rotated Array B={5,6,7,8,1,2,3}.');
INSERT INTO questions_text(id,difficulty,type,question)VALUES(4,'Medium','General','Write fibbonaci iteratively and recursively (bonus: use dynamic programming).');
INSERT INTO questions_text(id,difficulty,type,question)VALUES(5,'Medium','General','Find the only element in an array that only occurs once..');
INSERT INTO questions_text(id,difficulty,type,question)VALUES(6,'Medium','General','Find the common elements of 2 int arrays.');
INSERT INTO questions_text(id,difficulty,type,question)VALUES(7,'Medium','General','Implement binary search of a sorted array of integers.');
INSERT INTO questions_text(id,difficulty,type,question)VALUES(8,'Medium','General','Implement binary search in a rotated array (ex. {5,6,7,8,1,2,3}).');
INSERT INTO questions_text(id,difficulty,type,question)VALUES(9,'Medium','General','Use dynamic programming to find the first X prime numbers.');
INSERT INTO questions_text(id,difficulty,type,question)VALUES(10,'Medium','General','Write a function that prints out the binary form of an int.');
INSERT INTO questions_text(id,difficulty,type,question)VALUES(11,'Medium','General','Implement parseInt.');
INSERT INTO questions_text(id,difficulty,type,question)VALUES(12,'Medium','General','Implement squareroot function.');
INSERT INTO questions_text(id,difficulty,type,question)VALUES(13,'Medium','General','Implement an exponent function (bonus: now try in log(n) time).');
INSERT INTO questions_text(id,difficulty,type,question)VALUES(14,'Medium','General','Write a multiply function that multiples 2 integers without using *.');
INSERT INTO questions_text(id,difficulty,type,question)VALUES(15,'Hard','General','Given a function rand5() that returns a random int between 0 and 5, implement rand7().');
INSERT INTO questions_text(id,difficulty,type,question)VALUES(16,'Hard','General','Given a 2D array of 1s and 0s, count the number of "islands of 1s" (e.g. groups of connecting 1s).');
INSERT INTO questions_text(id,difficulty,type,question)VALUES(17,'Medium','Strings','Find the first non-repeated character in a String.');
INSERT INTO questions_text(id,difficulty,type,question)VALUES(18,'Medium','Strings','Reverse a String iteratively and recursively.');
INSERT INTO questions_text(id,difficulty,type,question)VALUES(19,'Medium','Strings','Determine if 2 Strings are anagrams.');
INSERT INTO questions_text(id,difficulty,type,question)VALUES(20,'Medium','Strings','Check if String is a palindrome.');
INSERT INTO questions_text(id,difficulty,type,question)VALUES(21,'Medium','Strings','Check if a String is composed of all unique characters.');
INSERT INTO questions_text(id,difficulty,type,question)VALUES(22,'Medium','Strings','Determine if a String is an int or a double.');
INSERT INTO questions_text(id,difficulty,type,question)VALUES(23,'Hard','Strings','Find the shortest palindrome in a String.');
INSERT INTO questions_text(id,difficulty,type,question)VALUES(24,'Hard','Strings','Print all permutations of a String.');
INSERT INTO questions_text(id,difficulty,type,question)VALUES(25,'Hard','Strings','Given a single-line text String and a maximum width value, write the function \'String justify(String text, int maxWidth)\' that formats the input text using full-justification, i.e., extra spaces on each line are equally distributed between the words; the first word on each line is flushed left and the last word on each line is flushed right.');
INSERT INTO questions_text(id,difficulty,type,question)VALUES(26,'Medium','Trees','Implement a BST with insert and delete functions.');
INSERT INTO questions_text(id,difficulty,type,question)VALUES(27,'Medium','Trees','Print a tree using BFS and DFS.');
INSERT INTO questions_text(id,difficulty,type,question)VALUES(28,'Medium','Trees','Write a function that determines if a tree is a BST.');
INSERT INTO questions_text(id,difficulty,type,question)VALUES(29,'Medium','Trees','Find the smallest element in a BST.');
INSERT INTO questions_text(id,difficulty,type,question)VALUES(30,'Medium','Trees','Find the 2nd largest number in a BST.');
INSERT INTO questions_text(id,difficulty,type,question)VALUES(31,'Medium','Trees','Given a binary tree which is a sum tree (child nodes add to parent), write an algorithm to determine whether the tree is a valid sum tree.');
INSERT INTO questions_text(id,difficulty,type,question)VALUES(32,'Medium','Trees','Find the distance between 2 nodes in a BST and a normal binary tree.');
INSERT INTO questions_text(id,difficulty,type,question)VALUES(33,'Medium','Trees','Print the coordinates of every node in a binary tree, where root is 0,0.');
INSERT INTO questions_text(id,difficulty,type,question)VALUES(34,'Medium','Trees','Print a tree by levels.');
INSERT INTO questions_text(id,difficulty,type,question)VALUES(35,'Medium','Trees','Given a binary tree which is a sum tree, write an algorithm to determine whether the tree is a valid sum tree.');
INSERT INTO questions_text(id,difficulty,type,question)VALUES(36,'Medium','Trees','Given a tree, verify that it contains a subtree..');
INSERT INTO questions_text(id,difficulty,type,question)VALUES(37,'Hard','Trees','Find the max distance between 2 nodes in a BST..');
INSERT INTO questions_text(id,difficulty,type,question)VALUES(38,'Hard','Trees','Construct a BST given the pre-order and in-order traversal Strings.');
INSERT INTO questions_text(id,difficulty,type,question)VALUES(39,'Medium','Stacks, Queues, and Heaps','Implement a stack with push and pop functions.');
INSERT INTO questions_text(id,difficulty,type,question)VALUES(40,'Medium','Stacks, Queues, and Heaps','Implement a queue with queue and dequeue functions.');
INSERT INTO questions_text(id,difficulty,type,question)VALUES(41,'Medium','Stacks, Queues, and Heaps','Find the minimum element in a stack in O(1) time.');
INSERT INTO questions_text(id,difficulty,type,question)VALUES(42,'Medium','Stacks, Queues, and Heaps','Write a function that sorts a stack (bonus: sort the stack in place without extra memory).');
INSERT INTO questions_text(id,difficulty,type,question)VALUES(43,'Medium','Stacks, Queues, and Heaps','Implement a binary min heap. Turn it into a binary max heap.');
INSERT INTO questions_text(id,difficulty,type,question)VALUES(44,'Hard','Stacks, Queues, and Heaps','Implement a queue using 2 stacks.');
INSERT INTO questions_text(id,difficulty,type,question)VALUES(45,'Medium','Linked Lists','Implement a linked list (with insert and delete functions).');
INSERT INTO questions_text(id,difficulty,type,question)VALUES(46,'Medium','Linked Lists','Find the Nth element in a linked list.');
INSERT INTO questions_text(id,difficulty,type,question)VALUES(47,'Medium','Linked Lists','Remove the Nth element of a linked list.');
INSERT INTO questions_text(id,difficulty,type,question)VALUES(48,'Medium','Linked Lists','Check if a linked list has cycles.');
INSERT INTO questions_text(id,difficulty,type,question)VALUES(49,'Medium','Linked Lists','Given a circular linked list, find the node at the beginning of the loop. Example: A-->B-->C --> D-->E -->C, C is the node that begins the loop.');
INSERT INTO questions_text(id,difficulty,type,question)VALUES(50,'Medium','Linked Lists','Check whether a link list is a palindrome.');
INSERT INTO questions_text(id,difficulty,type,question)VALUES(51,'Medium','Linked Lists','Reverse a linked list iteratively and recursively.');
INSERT INTO questions_text(id,difficulty,type,question)VALUES(52,'Medium','Sorting','Implement bubble sort.');
INSERT INTO questions_text(id,difficulty,type,question)VALUES(53,'Medium','Sorting','Implement selection sort.');
INSERT INTO questions_text(id,difficulty,type,question)VALUES(54,'Medium','Sorting','Implement insertion sort.');
INSERT INTO questions_text(id,difficulty,type,question)VALUES(55,'Medium','Sorting','Implement merge sort.');
INSERT INTO questions_text(id,difficulty,type,question)VALUES(56,'Medium','Sorting','Implement quick sort.');