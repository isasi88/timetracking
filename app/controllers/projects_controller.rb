class ProjectsController < ApplicationController
	def index
		#@projects =  Project.limit(10).order(created_at: :asc)
		@projects = Project.last_created_projects(10)

	end
end
