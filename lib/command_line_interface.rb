# require_relative '../config/environment'
<<<<<<< HEAD

# require_relative '../config/environment'
=======
require_relative '../config/environment'
>>>>>>> 098fe253cbc2201016f22495cc7047110ff9b6c9

def greet
    puts "***************************************************"
    puts    "********  + Welcome_to_the_VoTiNg_MaChIne + *********"
    puts "***************************************************"
  puts "Please type in your full name?"
end

def get_voter_name
  user_answer = gets.strip
    downcased = user_answer.downcase
  full_name = Voter.find_by(full_name: downcased)
    if full_name
        puts "Alright alright alright, " +user_answer+".\r\nYou ready for this d0e?"
        puts "'1' for YEE"
        puts "'2' for NAH HOLD UP"
        answer = gets.chomp
        if  answer == "1"
        menu_option(downcased)
        else answer == "2"
        greet
        get_voter_name
      end

    else
        puts "Sorry! New vote, who dis?"
          greet
          get_voter_name
    end
  full_name !=nil
end

def menu_option(user_name)
  puts "1. List of Candidates"
  puts "2. Check your registered party"
  puts "3. Vote Now!"
  answer = gets.chomp
    if answer == "1"
      list_candidates(user_name)
  elsif answer == "2"
      check_party(user_name)
  elsif answer == "3"
  	 if check_if_position_already_voted_for(user_name)
  		  puts "You already voted you cray cray!"
  	 else
  		  vote_now(user_name)
  	end
  end
end

def list_candidates(user_name)
   Candidate.all.select do |candidate|
    puts "#{candidate.name}, Position: #{candidate.position}, Party: #{candidate.party}"
  end
    puts "press b to go back to the menu option"

      answer = gets.chomp
      if answer == "b" 
        
       end
   menu_option(user_name)
end

def check_party(voter_name)
  voter_instance = Voter.find_by(full_name: voter_name)
  voter_party = voter_instance.party 
  puts "You are in the "+voter_party+" party."

  puts "press b to go back to the menu option"

      answer = gets.chomp
      if answer == "b"
        
       end
   menu_option(voter_name)
 end


def check_if_position_already_voted_for(voter_name)
	voter_instance = Voter.find_by(full_name: voter_name)
	my_id = voter_instance.id
	if Vote.find_by(voter_id: my_id)
  		true
  	else 
  		false
  	end
end

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

def vote_now(voter_name)
my_hash = {}
  ["boss", "vice boss", "office manager"].each do |position|

	    puts "Candidates for #{position}"
	    show_candidate(candidates_for(position))
	    #putting out actual list of candidates w/position
	    candidate_ids = candidates_for(position).map{ |candidate| candidate.id }
	    #here we have an array of candidate ids
	    candidate = next_page(candidate_ids)
	    until candidate do
			candidate = next_page(candidate_ids)
		end
			build_hash(candidate,voter_name,my_hash)
  end
  submit_method(my_hash) 
end

#return value of next_page is the answer
def next_page(cand_ids)
  puts "Type the number of the candidate you want to vote for"
  if cand_ids.include? answer.to_i
    answer
  else
    false
  end
end

#helper method for the submit method
def build_hash(candidate_id,voter_id,hash)
  hash[candidate_id] = voter_id
  hash
end
 
def manipulate_final_hash(final_hash)
	cand_array = final_hash.map do |candidate, voter|
		can_num = candidate.to_i
		new_cand = Candidate.find_by(id: can_num)
		new_cand.name
	end
	cand_array.to_s
	
end

def store(final_hash)
	name_string = final_hash.values[0]
	voter_instance  = Voter.find_by(full_name: name_string)
	 id_voter = voter_instance.id
	candidate_array = final_hash.map do |candidate, voter|
		candidate.to_s
	end
	candidate_array.map do |id_candidate|
		Vote.create(voter_id: id_voter, candidate_id: id_candidate)
	end
end

def submit_method(final_hash)
<<<<<<< HEAD
	puts "These are the list of people that will change your life:"
	puts manipulate_final_hash(final_hash)
	puts "Are you sure about that?\r\n
	 'y' for TOTES SURE, 'n' for I WANNA CHANGE MY MIND"
=======
	puts "Your votes are the following: \n #{manipulate_final_hash(final_hash)} \n Would you like to submit? \n 'y' to submit, 'n' to start again"
>>>>>>> 098fe253cbc2201016f22495cc7047110ff9b6c9
	answer = gets.chomp
	if answer == 'y'
		puts "Congrats! You just rigged the election! JK"
		store(final_hash) 
	else answer == 'n'
		menu_option(final_hash.values[0])
	end
 end