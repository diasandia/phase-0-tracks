# 9.1 How the Web Works

## Release 0

1. What are some common HTTP status codes?
* 1xx - Informational response [100]
* 2xx - Success [200]
* 3xx - Redirection [301]
* 4xx - Client error [404]
* 5xx - Server error [500]

2. What is the difference between a GET request and a POST request? When might each be used?
* The GET method retrieves remote data and POST submits data to be processed updating or inserting the remote data. You might use GET to show a question and POST to make a comment.

3. **Optional bonus question:** What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?
* A cookie is a small piece of data that a server sends to the user's web browsers. Browsers might store the cookie and send it back to the next server. This is done to tell if two requests came from the same browser.  Cookies are primarily used for session management, personalization, and tracking.