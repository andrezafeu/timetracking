class SiteController < ApplicationController
	def home
		render 'home' #name of views template. if the name of views template is the same of 
					  #the method, you don't need this line
	end
	def contact
		render 'contact'
	end
	def say_name
		@name = params[:name]
		render 'say_name'
	end
end
