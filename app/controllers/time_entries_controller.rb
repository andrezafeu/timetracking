class TimeEntriesController < ApplicationController
	def index
		@my_project = Project.find(params[:project_id])
		@my_entries = @my_project.time_entries
	end
	def new
		@my_project = Project.find_by(id: params[:project_id])
		@my_entry = @my_project.time_entries.new
		render "new"
	end
	def create

	end
end
