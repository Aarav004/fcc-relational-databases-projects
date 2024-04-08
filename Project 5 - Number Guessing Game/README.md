# This Project is part of freecodecamp's Relational Database Developer Certification

- **𝐃𝐞𝐯𝐞𝐥𝐨𝐩𝐞𝐝 𝐚 𝐧𝐮𝐦𝐛𝐞𝐫 𝐠𝐮𝐞𝐬𝐬𝐢𝐧𝐠 𝐠𝐚𝐦𝐞**: Users attempt to guess a randomly generated number between 1 and 1000.
- **𝐈𝐦𝐩𝐥𝐞𝐦𝐞𝐧𝐭𝐞𝐝 𝐮𝐬𝐞𝐫 𝐢𝐧𝐭𝐞𝐫𝐚𝐜𝐭𝐢𝐨𝐧**: Players input their username and guesses through the command line.
- **𝐈𝐧𝐭𝐞𝐠𝐫𝐚𝐭𝐞𝐝 𝐰𝐢𝐭𝐡 𝐚 𝐝𝐚𝐭𝐚𝐛𝐚𝐬𝐞**: Usernames, game counts, and best scores are stored in a PostgreSQL database.
- **𝐏𝐫𝐨𝐯𝐢𝐝𝐞𝐝 𝐟𝐞𝐞𝐝𝐛𝐚𝐜𝐤**: The game hints if the guess is higher or lower than the secret number, and congratulates the player upon winning.
- **𝐔𝐭𝐢𝐥𝐢𝐳𝐞𝐝 𝐠𝐢𝐭 𝐯𝐞𝐫𝐬𝐢𝐨𝐧 𝐜𝐨𝐧𝐭𝐫𝐨𝐥**: The project was developed and managed within a git repository, allowing for version tracking and commit history. This demonstrates familiarity with version control practices.

### This project demonstrates my skills in:

- **𝐁𝐚𝐬𝐡 𝐬𝐜𝐫𝐢𝐩𝐭𝐢𝐧𝐠**: User input handling, conditional statements, loops, and database interaction.
- **𝐃𝐚𝐭𝐚𝐛𝐚𝐬𝐞 𝐦𝐚𝐧𝐚𝐠𝐞𝐦𝐞𝐧𝐭**: Designing and creating a schema, storing and retrieving data.
- **𝐏𝐫𝐨𝐛𝐥𝐞𝐦-𝐬𝐨𝐥𝐯𝐢𝐧𝐠**: Handling various scenarios like invalid input and game logic.
- **𝐕𝐞𝐫𝐬𝐢𝐨𝐧 𝐜𝐨𝐧𝐭𝐫𝐨𝐥**: Utilizing git for version tracking and collaboration.

  # Number Guessing Game
  Complete the tasks below

Create a number_guessing_game folder in the project folder for your program

Create number_guess.sh in your number_guessing_game folder and give it executable permissions

Your script should have a shebang at the top of the file that uses #!/bin/bash

Turn the number_guessing_game folder into a git repository

Your git repository should have at least five commits

Your script should randomly generate a number that users have to guess

When you run your script, you should prompt the user for a username with Enter your username:, and take a username as input. Your database should allow usernames that are 22 characters

If that username has been used before, it should print Welcome back, <username>! You have played <games_played> games, and your best game took <best_game> guesses., with <username> being a users name from the database, <games_played> being the total number of games that user has played, and <best_game> being the fewest number of guesses it took that user to win the game

If the username has not been used before, you should print Welcome, <username>! It looks like this is your first time here.

The next line printed should be Guess the secret number between 1 and 1000: and input from the user should be read

Until they guess the secret number, it should print It's lower than that, guess again: if the previous input was higher than the secret number, and It's higher than that, guess again: if the previous input was lower than the secret number. Asking for input each time until they input the secret number.

If anything other than an integer is input as a guess, it should print That is not an integer, guess again:

When the secret number is guessed, your script should print You guessed it in <number_of_guesses> tries. The secret number was <secret_number>. Nice job! and finish running

The message for the first commit should be Initial commit

The rest of the commit messages should start with fix:, feat:, refactor:, chore:, or test:

You should finish your project while on the main branch, your working tree should be clean, and you should not have any uncommitted changes
