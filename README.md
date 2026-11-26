# FUL GST Quiz

FUL GST Quiz is a web-based practice and CBT application for Federal University Lokoja GST-style courses. It provides account registration and login, free quiz trials, course selection, timed multiple-choice questions, answer review, score tracking, and course purchase flows.

## Features

- Student account creation and login
- Password hashing and PHP session-based authentication
- Randomized, multiple-choice quiz questions
- 15-minute timed quizzes with 30 questions
- Course selection and trial attempt limits
- Answer review and score/progress display
- User profile and account information
- Enrolled-course and purchased-course tracking
- Course payment and checkout interface
- Responsive landing page and quiz screens

The SQL dump currently includes question sets for:

- GST 101 - Communication in English and Use of Library
- GST 102 - Communication in English
- GST 103 - Nigerian Peoples and Cultures
- GST 104 Arabic
- GST 110 - History and Philosophy of Science
- GST 202 - Peace and Conflict Resolution
- EDS 204 - Entrepreneurial Skills

## Technology Stack

- **Frontend:** HTML5, CSS3, vanilla JavaScript
- **Backend:** PHP 8+
- **Database:** MariaDB or MySQL
- **Web server:** Apache with `mod_rewrite`
- **Database access:** PHP MySQLi

No package manager or build step is required.

## Project Structure

```text
.
|-- index.php                 # Main entry/router file
|-- home.php                  # Landing page
|-- createAccount.php         # Registration page
|-- logIn.php                 # Login page
|-- courseselection.php       # Trial course selection
|-- questions.php             # Active quiz
|-- review.php                # Answer review
|-- score.php                 # Scoreboard
|-- myCourses.php             # Enrolled/purchased courses
|-- payment.php               # Course purchase interface
|-- checkout.php              # Checkout page
|-- profile.php               # User profile
|-- php/                      # Authentication and AJAX endpoints
|-- Js/                       # Browser-side behavior
|-- css/                      # Stylesheets
|-- images/                   # Landing page and profile images
|-- icons/                    # Icons and logos
|-- includes/                 # Shared PHP fragments
|-- db/                       # MariaDB/MySQL database dumps
`-- .htaccess                 # Extension-free URL rewrites
```

## Requirements

- PHP 8.0 or newer
- PHP MySQLi extension
- Apache 2 with `mod_rewrite` enabled
- MariaDB 10.4+ or MySQL 8+
- A local or hosted web server environment such as XAMPP, WAMP, LAMP, or Laragon

## Local Setup

### 1. Start Apache and MySQL

Create a local PHP environment and start both Apache and MySQL.

For XAMPP, WAMP, or Laragon, place the project in your web root, for example:

```text
C:\xampp\htdocs\FUL-GST-QUIZ
```

On a Linux Apache installation, a typical location is:

```text
/var/www/html/FUL-GST-QUIZ
```

### 2. Create the database

Open phpMyAdmin or use the MySQL CLI. Create a database named `thegstquizapp`, then import:

```text
db/thegstquizapp.sql
```

The dump creates the database schema and includes course and question seed data.

From the MySQL CLI:

```sql
CREATE DATABASE thegstquizapp
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_general_ci;
```

Then import the file:

```bash
mysql -u root -p thegstquizapp < db/thegstquizapp.sql
```

### 3. Configure the database connection

Update [php/config.php](php/config.php) with the database credentials for your environment:

```php
$Localhost = "localhost";
$user = "root";
$password = "";
$db = "thegstquizapp";
```

The current configuration is intended for a local MySQL setup and should not contain production credentials.

### 4. Enable Apache rewrites

The project uses [`.htaccess`](.htaccess) to allow URLs such as `/login` and `/questions` instead of `/login.php` and `/questions.php`.

For Apache, enable `mod_rewrite` and allow the project directory to use `.htaccess` overrides.

Example virtual-host or directory configuration:

```apache
<Directory "/var/www/html/FUL-GST-QUIZ">
    AllowOverride All
    Require all granted
</Directory>
```

For XAMPP and WAMP, Apache usually needs no additional rewrite-module configuration beyond enabling `mod_rewrite`. Restart Apache after changing Apache configuration.

### 5. Open the application

Visit:

```text
http://localhost/FUL-GST-QUIZ/
```

The public entry point is normally [home.php](home.php).

## User Flow

1. Create an account or log in.
2. Select a GST course for the free quiz trial.
3. Answer up to 30 randomized questions within the timed session.
4. Submit or complete the quiz to view the scoreboard.
5. Review answers and results.
6. Purchase additional course access from the payment page.
7. Use the course list in **My quizzes** to start enrolled quizzes.

Trial usage is stored in the `users.trials` field and is updated through PHP sessions and database records.

## Database Overview

The database dump includes the following main tables:

| Table | Purpose |
|---|---|
| `users` | Student credentials and profile details |
| `courses` | Available course codes, IDs, and titles |
| `gst_*` and `eds_204` | Multiple-choice question banks |
| `quiz_enrollment` | Quiz scores and course progress |
| `payment_table` | Course purchase records |

Course question tables correspond to the `course_id` values in the `courses` table.

## Development Notes

- Frontend JavaScript communicates with PHP files under `php/` using `XMLHttpRequest`.
- PHP sessions control authentication and current quiz state.
- Correct answers are worth 10 points in the quiz scoring logic.
- Profile and question assets are stored locally in `images/` and `icons/`.
- The `db/` directory contains SQL dumps with sample data. Review or sanitize these dumps before publishing or sharing a production database.
- Database and payment flows should be tested against a fresh database rather than production records.

## Running Without URL Rewriting

If Apache rewrites are unavailable, PHP pages can usually still be accessed directly with `.php` filenames, for example:

```text
http://localhost/FUL-GST-QUIZ/login.php
http://localhost/FUL-GST-QUIZ/courseselection.php
```

Some links in the application use extension-free paths, so enabling `.htaccess` support is recommended.

## Troubleshooting

### Database connection error

- Confirm that MySQL/MariaDB is running.
- Confirm that `thegstquizapp` exists.
- Verify the host, username, password, and database name in `php/config.php`.
- Confirm that PHP has the MySQLi extension enabled.

### 404 or rewritten page errors

- Confirm that Apache `mod_rewrite` is enabled.
- Confirm that `AllowOverride All` is configured for the project directory.
- Restart Apache after changing rewrite or virtual-host settings.

### Session or login loops

- Confirm PHP session support is enabled.
- Use the same local hostname for the entire session.
- Clear browser cookies for the local project URL.

### Missing images or styles

- Confirm the project is in the correct web root.
- Confirm asset URLs are relative to the project directory.
- Confirm file and folder names match their references exactly; some systems are case-sensitive.

## Security Before Production

This project is suitable for local development and demonstration, but production deployment requires additional hardening:

- Move database credentials to environment variables or a secure configuration outside the web root.
- Review and parameterize database queries to prevent SQL injection.
- Use prepared statements for every query that accepts user input.
- Add server-side validation, CSRF protection, secure payment verification, and stronger session cookie settings.
- Remove or replace sample users and credentials from the SQL dump.
- Serve the application over HTTPS.
- Configure restricted database permissions and regular backups.
