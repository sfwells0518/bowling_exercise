# Decomposition Exercise:

# Write a ruby program that tracks the score for a bowling game.

# Look over the rules for bowling: https://www.wikihow.com/Score-Bowling

## Spend the next 5 minutes decomposing the following problem (just decompose the problem, do not write any code to actually solve the problem for now):

# # - input player names
# # - points per pin
# # - calculate strike score
# # - calculate spare score
# # - input bowler 1 points for turn 1 of frame 1
# # - input bowler 1 points for turn 2 of frame 1
# # - input bowler 2 points for turn 1 of frame 1
# # - input bowler 2 points for turn 2 of frame 1
# # - move on to next frame and with empty score

# Write code to keep track of the score of a game of bowling. It should have two methods: roll which takes in the number of pins knocked down, and score which is called at the end and returns the total game score.

player1 = []
player2 = []

10.times do
  player1 << [rand(1..5), rand(1..5)]
  player2 << [rand(1..5), rand(1..5)]
end

player1_score = 0
player1.each do |frame|
  player1_score += frame[0] + frame[1]
end

player2_score = 0
player2.each do |frame|
  player2_score += frame[0] + frame[1]
end

p "player1"
p player1_score
p "player2"
p player2_score

if player1_score > player2_score
  p "nice job, player 1, you beat player 2"
elsif player2_score > player1_score
  p "nice job, player 2, you beat player 1"
end
