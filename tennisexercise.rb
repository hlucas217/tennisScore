
 # You can never remember how to say the score in tennis
 # So now you are writing yourself a program that will
 # tell you how to say a tennis score.
 
 # You will enter the score for player 1 and player 2
 # Then the program will output how to say the score
 # ex 2, 0 = "thirty love"
 # ex 5, 4 = "advantage player 1"
 
 # Here are the exact rules for tennis scoring:
 # Scores from zero to three points are described as “love”, 
 # “fifteen”, “thirty”, and “forty” respectively.
 
 # If at least three points have been scored by each side and a player 
 # has one more point than his opponent, the score of the game is 
 # “advantage” for the player in the lead.
 
 # If at least three points have been scored by each player, 
 # and the scores are equal, the score is “deuce”.
 # * 
 # A game is won by the first player to have won at least four points 
 # in total and at least two points more than the opponent. 
class Tennis          

attr_accessor :score1
attr_accessor :score2

      def say_score 
            
            if @score1 != 4 && @score2 != 4
                  if @score1 == 0
                        puts "Player 1 is Love"
                  end

                  if @score1 == 1 
                        puts "Player 1 is 15"
                  end

                  if @score1 == 2
                        puts "Player 1 is 30"
                  end

                  if @score1 == 3 && @score2 < 3
                        puts "Player 1 is 40"
                  end

                  if @score2 == 0
                        puts "Player 2 is Love"
                  end

                  if @score2 == 1
                        puts "Player 2 is 15"
                  end

                  if @score2 == 2
                        puts "Player 2 is 30"
                  end

                  if @score2 == 3 && @score1 < 3
                        puts "Player 2 is 40"
                  end
            end
            
            if @score1 == 3 && @score2 == 3
                  puts "Deuce"
            end

            if @score1 == 4 && @score2 == 3
                  puts "Advantage Player 1"
            end

            if @score1 == 3 && @score2 == 4
                  puts "Advantage Player 2"
            end

            if @score1 == 5
                  puts "Player 1 wins!"
            end

            if @score2 == 5
                  puts "Player 2 wins!"
            end

            if @score1 == 4 && @score2 < 3
                  puts "Player 1 wins!"
            end

            if @score2 == 4 && @score1 < 3
                  puts "Player 2 wins!"
            end
      end

      def obtain_score(num1, num2)
            num1 = num1.to_i
            @score1 = num1

            num2 = num2.to_i
            @score2 = num2
      end
end

letsplay = Tennis.new
letsplay.obtain_score(3, 4)
letsplay.say_score
