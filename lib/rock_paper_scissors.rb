class ROCK_PAPER_SCISSORS
  def initialize(player)
    @@player_hand = player
    @@computer_hand = ""
  end

  def generate_hand
    @@hand_array = ["rock", "paper", "scissors"]
    @@computer_hand = @@hand_array[rand(0..2)]
  end

  def computer_hand
    @@computer_hand
  end

  def wins
    if @@player_hand == @@computer_hand
      return "it's a tie"
    elsif @@player_hand == "rock" && @@computer_hand == "scissors"
      return "you win"
    elsif @@player_hand == "scissors" && @@computer_hand == "paper"
      return "you win"
    elsif @@player_hand == "paper" && @@computer_hand == "rock"
      return "you win"
    else
      return "computer wins"
    end
  end
  game = ROCK_PAPER_SCISSORS.new('rock')
  game.generate_hand()
  p @@computer_hand
end



# def rules = {
#   "rock" => "scissors",
#   "scissors" => "paper",
#   "paper" => "rock"
# }
# end
