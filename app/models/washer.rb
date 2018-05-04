class Washer < ApplicationRecord
  
  resourcify

  belongs_to :user
  ratyrate_rateable "experience"

  geocoded_by :full_address
  after_validation :geocode, :if => :address_changed?

  mount_uploader :image, ImageUploader

  def full_address
      "#{address}, #{zipcode}, #{city}, #{country}"
    end

end
