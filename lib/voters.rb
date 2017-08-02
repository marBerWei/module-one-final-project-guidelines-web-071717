class Voter < ActiveRecord::Base
	has_many :votes
	has_many :candidates, through: :votes




	# def positions_votes
	# 	positions = self.candidates.map { |c| c.position }
	# end


	# def voted_for?(position)

	# 	if positions_votes.include? position
	# 		true
	# 	else
	# 		puts "Vote for"
	# 		false
	# 	end

	# end
end