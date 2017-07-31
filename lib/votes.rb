class Vote < ActiveRecord::Base
	belongs_to :voters
	belongs_to :candidates
end
