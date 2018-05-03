class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  ratyrate_rater
  has_many :washers

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
