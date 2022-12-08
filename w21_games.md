#0. What is the purpose of the game?
	Eliminate all the bars using the ball, without the all passing the user-controlled bar.
	
#1. What element(s) are controlled by the player?
	The player controls the bar at the bottom of the screen with their mouse.
	
#2. What element(s) are controlled by the computer?
	The computer controls the ball, the score, and bars that need to be broken.
	
#3. How does the player control their element.
	The player uses their mouse to move the bar horizontally.
	
#4. How do the non-player controlled elements behave (movement, positions, randomness, etc)
	For balls, they bounce against the walls and the bars, unless it passes the user-controlled bar (then it resets).
	Every time the ball hits a computer controlled bar, the bar disappears and the score increases by 1.
	
#5. If you were to program this, what classes would you write?
	ball, userBar, bar
	
#6. If you were to program this, would you use an array for some parts? What kind of array? What would you be storing in it?
	We would use an array for the computer bars. It would store the computer controlled bars within an object array. 
