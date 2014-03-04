class Project < ActiveRecord::Base
	def self.iron_find(id)
		find(id)
	end

	def self.last_created_projects(id)
	limit(10).order(created_at: :asc)
	end
end
