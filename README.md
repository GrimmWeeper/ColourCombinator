# ColourCombinator

### 50.002 1D Computation Structures Group 3-3

#### Wee Ping, Luo Qi, Aaron, Calvin, Jeslyn

Our game, “Colour Combinator”, is a fun play on colour mixing and reaction time. In this 2-player game, players are given 3 buttons (in primary colours - red, blue and yellow) to hit. As coloured LEDs (in rainbow colours) appear on the interface, users have to smash the corresponding button (or combination of) ahead of their opponent in order to score a point. 

Henceforth in this report, we refer to an LED light up as a “question” issued by our program. The issuance of each question signifies one round of play. 10 rounds of play constitute a single play cycle. In order words, to complete one game, players answer 10 questions in total. 

For example:
Red lights up, smash the red button 
Purple lights up, smash the red + blue button at the same time. 

The score system rewards players who consecutively get the correct answer ahead of their opponent by recording the streak of each player. If player A scores n times consecutively, A’s streak is n. The score for this nth round is 2n, and this score is added the player A’s current total. If player A unfortunately loses the n+1th round, his streak is reset to 0 and no points are earned for this round. 

If undisrupted, the game carries on for 10 rounds before the program compares players’ scores and declare a winner. If the reset button is pressed before 10 rounds is finished, the program similarly declares a winner. 

The game has 2 modes: 

2 Player Leisure Play
Like its name, the leisure play mode is untimed. The game only progresses to the next level when a correct input is given. The scoring system remains the same as above. 

Rapid Fire
Unlike the leisure play mode, rapid fire increases game difficulty by imposing a time limit on each game question. If neither players give the correct input before the time limit for that round, neither player is awarded points. The time limit for each question decreases (shorter answering period) as the game progresses. 
