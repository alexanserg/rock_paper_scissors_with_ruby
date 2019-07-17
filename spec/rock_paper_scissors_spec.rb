require ('rspec')
require ('pry')
require ('rock_paper_scissors')

describe ('#rock_paper_scissors') do
  it ("should generate a hand for the computer") do
    game = ROCK_PAPER_SCISSORS.new('rock')
    game.generate_hand()
    expect(game.computer_hand.class).to(eq(String))
  end
  it ("rock should beat scissors") do
    game = ROCK_PAPER_SCISSORS.new('rock')
    game.generate_hand()
    expect(game.wins()).to(eq("you win"))
  end
  it ("scissors should beat paper") do
    game = ROCK_PAPER_SCISSORS.new('scissors')
    game.generate_hand()
    expect(game.wins()).to(eq("you win"))
  end
  it ("paper should beat rock") do
    game = ROCK_PAPER_SCISSORS.new('paper')
    game.generate_hand()
    expect(game.wins()).to(eq("you win"))
  end
  it ("if players have the same hand") do
    game = ROCK_PAPER_SCISSORS.new('rock')
    game.generate_hand()
    expect(game.wins()).to(eq("it's a tie"))
  end
  it ("player two should be able to win") do
    game = ROCK_PAPER_SCISSORS.new('scissors')
    game.generate_hand()
    expect(game.wins()).to(eq("computer wins"))
  end
end
