class StudentprofilesController < ApplicationController
	before_action :authenticate_student!, except: [:show]
	def index
	end 
	def studentprofile
		
	end

	def new
		@studentprofile = Studentprofile.new
	end 

	def create
		@studentprofile = Studentprofile.new(studentprofile_params)	
		if @studentprofile.save
			
			redirect_to studentprofile_path
		else 
			render 'new'
		end 
	end 

	def show
		@studentprofile = Studentprofile.find(params[:id])
	end 

	def edit

	end 



	private

	def studentprofile_params 
		params.require(:studentprofile).permit(:fname, :lname, :bio, :university, :zipcode, :planguage, :slanguage, :smoker, :allergies, :all_desc, :startduration, :endduration, :phone, :image_file_name, :image_content_type, :image_file_size, :image_updated_at).merge(student: current_student)
	end 

	
end
