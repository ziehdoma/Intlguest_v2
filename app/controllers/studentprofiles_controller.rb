class StudentprofilesController < ApplicationController
	before_action :authenticate_student!, except: [:new, :show]
	def index
	end 
	def new
		@studentprofile = Studentprofile.new
	end 

	def create
		@studentprofile = current_student.studentprofile.new(student_params)
		
		if @studentprofile.save

			redirect_to 'studentprofilepage'
		else 
			render 'new'
		end 
	end 
	def show
		@studentprofile = current_student.studentprofile.find_by(:student => params[:student_id])
	end 

	def edit

	end 



	private

	def studentprofile_params 
		params.require(:studentprofile).permit(:fname, :lname, :bio, :university, :zipcode, :planguage, :slanguage, :smoker, :allergies, :all_desc, :startduration, :endduration, :phone, :image_file_name, :image_content_type, :image_file_size, :image_updated_at).merge(student: current_student)
	end 

	def set_params
		@studentprofile = Studentprofile.find(params[:id])
	end 
end
