class Family < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
   devise :omniauthable, :omniauth_providers => [:facebook]

         has_one :familyprofile, dependent: :destroy
     
   def self.from_omniauth(auth)
  where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
    family.email = auth.info.email
    family.password = Devise.friendly_token[0,20]
    family.name = auth.info.name   # assuming the user model has a name
    family.image = auth.info.image # assuming the user model has an image
  end
end    
end








