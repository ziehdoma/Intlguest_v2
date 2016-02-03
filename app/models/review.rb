class Review < ActiveRecord::Base
	belongs_to :studentprofile, dependent: :destroy
	belongs_to :familyprofile, dependent: :destroy
end
