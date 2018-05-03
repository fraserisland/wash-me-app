class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  mount_uploader :avatar, AvatarUploader
  
  ratyrate_rater

  has_many :washers

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
