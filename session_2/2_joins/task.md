# Task 2

## Exercises

1. List all posts that have been deleted.
SELECT u.username, p.content FROM users u JOIN posts p ON u.id = p.user_id WHERE p.deleted = 1;
2. List all users whose usernames begin with 'a'.
SELECT username FROM users WHERE username LIKE 'a%';
3. Find all posts and the usernames of those who posted them whose content contains the word "small".
SELECT u.username, p.content FROM users u JOIN posts p ON u.id = p.user_id WHERE p.content LIKE '%small%';
4. Return each non-deleted post and the username of the person who wrote in, in date order.
SELECT u.username, p.content, p.created_on FROM users u JOIN posts p ON u.id = p.user_id WHERE p.deleted = 0 ORDER BY p.created_on DESC;
5. For each user, return their username and the total number of posts they have made.
SELECT u.username, COUNT(p.content) FROM users u JOIN posts p ON u.id = p.user_id GROUP BY u.username;
6. Modify the previous query to return only users who have authored more than 3 posts.
SELECT u.username, COUNT(p.content) AS TotalPosts FROM users u JOIN posts p ON u.id = p.user_id GRO
UP BY u.username HAVING TotalPosts > 3;
7. For each user, return their username and the number of users they follow, including users who follow no one.
SELECT u.username, COUNT(f.following_user_id) FROM users u JOIN follows f ON u.id = f.following_user_id;
8. List the top 5 most-followed users.
SELECT u.username, COUNT(f.followed_user_id) AS Followers FROM users u JOIN follows f ON u.id = f.followed_user_id GROUP BY u.username ORDER BY Followers DESC LIMIT 5;
9. Return a list showing the username of the follower and the username of the followed user for each follow relationship.
SELECT u1.username, u2.username FROM follows f JOIN users u1 ON f.following_user_id = u1.id JOIN users u2 ON f.followed_user_id = u2.id;
10. For a given user (christopherprice), return all non-deleted posts written by users they follow, ordered from most recent to oldest.



## Diagram

![Database diagram of Social.](social.png)