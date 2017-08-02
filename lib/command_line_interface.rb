# require_relative '../config/environment'

def greet
  puts "Welcome to the VoTiNg MaChIne! :)"
  puts "What is your full name?"
end

def get_voter_name
  user_answer = gets.chomp
    downcased = user_answer.downcase
  full_name = Voter.find_by(full_name: downcased)
  if full_name
    menu_option(downcased)
  else
      puts "please enter a valid name"
  end
  return full_name !=nil
end

def menu_option(user_name)
  puts "1. List Candidates"
  puts "2. Check your registered party"
  puts "3. Vote Now!"
  answer = gets.chomp
  if answer == "1"
    list_candidates(user_name)
  elsif answer == "2"
    check_party(user_name)
  elsif answer == "3"
    vote_now
  end
end

def list_candidates(user_name)
   Candidate.all.select do |candidate|
    puts "#{candidate.name}, Position: #{candidate.position}, Party: #{candidate.party}"
      #make sure to number the candidates
  end
  menu_option(user_name)
end

def check_party(voter_name)
  voter_instance = Voter.find_by(full_name: voter_name)
  puts voter_instance.party 
  menu_option(voter_name)
end

  # we need a function that passes in an array of candidates will allow us to vote

# helper method inside of vote_now
def show_candidate(candidates)
  # we get this array from ____
  candidates.each do |candidate|
     puts "#{candidate.id}. #{candidate.name}, party:#{candidate.party}" 
  end
end

#helper method inside of vote_now
def candidates_for(position)
  candidates = Candidate.all.select do |candidate|
     candidate.position == position
  end
end
# returns an array of instances of candidate that match position

def vote_now
  ["boss", "vice boss", "office manager"].each do |position|
    puts "Candidates for #{position}"
    show_candidate(candidates_for(position))
    #putting out actual list of candidates w/position
    candidate_ids = candidates_for(position).map{ |candidate| candidate.id }
    #here we have an array of candidate ids
    # binding.pry
    if !next_page(candidate_ids) 
      next_page(candidate_ids)
    else
      #loop until true
      #store in hash
     # get vote + next page  
    end

  end
  #this is where we call the submit method

end


def next_page(cand_ids)
  puts "Choose your candidate"
  answer = gets.chomp

  if cand_ids.include? answer.to_i
    # Vote.create()
    # do some voting 
    get_votes(answer)
    true

  else
    false
  end
# ANSWER NEEDS TO CHECK IF THOSE VOTES ARE VALID
# IF NOT WHAT SHOULD HAPPEN
end

hash = {}
#helper method for the submit method
def get_votes(candidate_idee,voter_id,hash)
  hash[voter_id] = candidate_idee
  # create a hash on the fly with votes to positions
  # pull votes from db? <--------------
end





# WHEN A USER HITS VOTE NOW  (Y) 
# THEY SHOULD SEE THE CANDIDATES UP FOR VOTING 
# THEY SHOULD BE ABLE TO VOTE
# VOTE SHOULD BE STORED 


# WASH RINSE REPEAT FOR ALL CANDIDATES
# REVIEW VOTES
# SAVE OR CHANGE 
# IF CHANGE RE RUN PROGRAM 


# Stacey Astoveza