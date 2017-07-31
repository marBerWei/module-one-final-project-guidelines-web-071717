require_relative '../config/environment'

def greet
  puts "Welcome to the VoTiNg MaChIne! :)"
end

# greet


def get_voter_name
  puts "What is your full name?"
  answer = gets.chomp.downcase
  if answer == Voter.find_by(name: answer)
  	puts "found ya!"
  else
  	puts "please enter valid name"
  end
  "end of command"
  # later we will need to accomodate our full_name with a .downcase
end

# get_voter_name

# find_voter_in_db


