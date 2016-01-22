class StudentprofilesController < ApplicationController
	def index
	end 
	def new
		@studentprofile = Studentprofile.new
	end 
end
