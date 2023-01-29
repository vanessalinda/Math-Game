# Planning for Math Game

## Game flow

- Game is initialized with two players having three lives each
- Game generates new questions by randonly selecting two numbers between one and 20
- Game prompts player whose turn it is to answer the question
  - If answer is incorrect:
    - Prints message:
    - Subtracts life from total lives (lose life method)
  - If answer is correct:
    - Prints message:
- Changes turns/ calls change turns method
- Prints NEW TURN
- Game loop continues until one player has 0 lives (while total lives of both players > 0, run the game)
- print winner of game

## Classes

### Math Game

State:

- player 1
- player 2
- current player
- winner

Methods:

- Play game
- play turn
- Check answer
- print message (lose, win, new turn, winner)
- Output scores
- Change turns

### Player

State:

- number of lives
- names

Methods:

- Lose life
- check live

### Question

State:

- random number 1
- random number 2
- question
- answer

Method:

- check correct answer
