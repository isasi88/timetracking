class Project < ActiveRecord::Base
	def self.iron_find(id)
		find(id)
	end
end
