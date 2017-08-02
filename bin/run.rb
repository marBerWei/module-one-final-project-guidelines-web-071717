require_relative '../config/environment'
ActiveRecord::Base.logger = nil
greet
loop do
    found = get_voter_name
    if found == true
    	break
	end
end
