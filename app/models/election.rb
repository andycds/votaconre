class Election < ActiveRecord::Base
	has_many :candidates
	has_many :votes
	has_many :people
end
