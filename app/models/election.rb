class Election < ActiveRecord::Base
	has_many :candidates
	has_many :votes
	has_many :people

	def valida?
		return Time.now >= dt_inicio && Time.now <= dt_fim
	end
end
