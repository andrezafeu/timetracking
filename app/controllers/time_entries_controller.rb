class TimeEntriesController < ApplicationController
	def index
		@my_project = Project.find(params[:id])
		@my_entries = @my_project.time_entries
	end
end
