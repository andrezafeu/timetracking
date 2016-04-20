class Project < ActiveRecord::Base
	# set_table_name 'projects' #this is not neccessairy, because rails will
							#automatically create a table with this name
	has_many :time_entries
	validates :name, presence: true
end
