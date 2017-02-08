# Assignment2

[![Video](http://img.youtube.com/vi/J7p0G8RDGdc/0.jpg)](http://www.youtube.com/watch?v=J7p0G8RDGdc)



# Concept
The idea of my game is that you are the controller of a rocket-ship in outer space and you must navigate your way through space avoiding barriers. I intended the barriers to look like asteroids but found it easier to use rectangular-shaped objects as they could scroll with ease. If your rocket-ship collides with either the top/bottom walls or else with the barriers that appear to be coming at the rocket-ship, you loose a life (i.e. you loose the game). For each barrier that you pass, your score increases by +1. After you achieve a score of 3 or more, when the game ends, it tells you you have achieved a new high score and confetti decends down the screen. At this stage 
, you can either restart or exit the game. If you exit the game, the program ends, else, you are returned to the beginning of the original game. I tried to create a loop where after every +5 of a score, that you would gain an extra life but was unable to figure this out and ended up incrementing for every score and eventually took the loop out.

# Features

* Loading screen
  - Contains an arc that appears to be loading with text 
  
* Home screen
  - Contains an image as a background and an ellipse and triangle that appear as a play button
  
* Game screen
  - Displays a screen with a black background where stars are created at random to appear that the rocket is travelling at speed.
  
* Rocket ship
  - Has the ability to move up and down the y axis of the left hand side of the screen
  
* Barriers
  - Scroll from the right hand side of the screen to the left to make it appear the rocket ship is travelling
  
* Particles
  - Circular and square shaped objects that appear as confetti when a new record is achieved at the end of the game
  
 # Controls
 - When at the home screen, click on the play button to enter the game
 - UP and DOWN control the rocketShip
 - r restarts the game after you die
 - e exits the game after you die
 
# Functionality
* Loading screen
  - uses an if statement in conjunction with frameCount so that it is only displayed for a certain period of time
* Home screen
  - uses a delay() function after the mouse is clicked
  
 # Running of the Game
 
 When you enter the program, you see a loading screen with text to make it seem like whoever is piloting the rocket is preparing before take off. The loading screen uses frameCount so when it exceeds its limit it enters the home screen.

The home screen is an image with an elipse and triangle that appear in the shape of a play button. I used the mousePressed() function so that when you click on the button, it enters the game. If you click anywhere else, it has no effect.

When you click the mouse, it sets a variable (enter) equal to 1 so that a constraint is met and the game can begin.

When you enter the game itself, a rocket, that was created from several shapes, will appear on the left hand side of the screen. The background is a black colour with random ellipses or circles appearing all over the screen to make it seem as if the rocket is travelling at speed.
Using the UP and DOWN buttons to scroll up and down the screen, the player must avoid the oncoming barriers.
Rectangular shaped barriers scroll from the right hand side to the left hand side at random heights. Two barriers are used but the same barrier cannot appear on screen more than once at a time.
The user has one life. If the users rocket ship touches either the top, bottom or either of the two barriers, a life is taken away. If the rocket comes within close proximaty of some shapes it can also loose a life. 
The users score appears on the top left of the screen and will increment after every time the rocket ship passes a barrier. If the users score exceeds 3, after dying, it will let the user know that they have achieved a new high score. If the users score is below 3, only game over appears on screen. 
The user then has the option to restart the game and go again by hitting 'r' or to exit the game and end the program by hitting 'e'.
After dying, 'GAME OVER' appears on screen along with the text "Press r to restart else" and "Press e to exit" by default. 
If the user achieves a new record/high score, the text "New high score !" appears the GAME OVER text with confettin falling down the screen. 
 
 

