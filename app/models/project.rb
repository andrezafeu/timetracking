class Project < ActiveRecord::Base
	# set_table_name 'projects' #this is not neccessairy, because rails will
							#automatically create a table with this name
	has_many :time_entries
	validates :name, presence: true, 
	uniqueness: true, 
	length: { maximum: 30 }, 
	format: { with: /\s[a-zA-Z0-9]/}

	def self.clean_old
		old_projects = Project.where("created_at < ?", 7.days.ago)
		old_projects.destroy_all
	end
end
