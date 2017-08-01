require_relative '../config/environment'

# cli = CommandLineInterface.new

# cli.greet
# cli.get_voter_name
greet
loop do
    found = get_voter_name
    if found == true
    	break
	end
end
# menu_option
