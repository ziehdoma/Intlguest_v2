class FamilyprofilesController < ApplicationController
	# before_action :set_familyprofile

	def index
	end 

	def new
		@familyprofile = Familyprofile.new
	end 

	def create
		@family = current_family
		@familyprofile = Familyprofile.new(familyprofile_params)
		if @familyprofile.save
			redirect_to familyprofilepage_path(@familyprofile), notice: "New Profile Created"
		else 
			flash[:alert] = "There was a problem"
			render :new
		end 
	end 


	def show
		if current_family
			@familyprofile = current_family.familyprofile
		else 
			redirect_to root_path, notice: ' you are not logged in'
		end 
		@familyprofile = set_familyprofile

	end 

	def update
		redirect_to familyprofile_path
	end 

	def edit
		redirect_to familyprofile_path, alert: 'Profile edited'
	end 

	def destroy
		set_familyprofile
		@familyprofile.destroy
		redirect_to root_path, alert: 'Profile deleted.'
	end 

	private

	def set_familyprofile
		@familyprofile = Familyprofile.find(params[:id])
	end 

	def familyprofile_params 
		params.require(:familyprofile).permit(:fname, :lname, :town, :zipcode, :state, :bio, :pets, :pet_desc, :smoker, :smoking_allowed, :children, :room_type, :duration, :duration_value, :num_to_host, :meals, :family_id, :phone, :image).merge(family: current_family)
	end 


end
