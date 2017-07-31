class Candidate < ActiveRecord::Base
	has_many :votes
	has_many :voters, through: :votes
end