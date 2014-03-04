class ProjectsController < ApplicationController
	def index
		#@projects =  Project.limit(10).order(created_at: :asc)
		@projects = Project.last_created_projects(10)

		if @projects.empty?
			render 'empty_projects'
		else
			render 'index'
		end
	end

	def show 
		@project = Project.find params[:id]
	rescue ActiveRecord::RecordNotFound
		render 'no_projects_found'
	end
end
