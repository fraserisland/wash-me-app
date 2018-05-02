class Washer < ApplicationRecord
  belongs_to :user
  ratyrate_rateable "cleanliness", "reliability"

  geocoded_by :full_address
  after_validation :geocode, :if => :address_changed?

  mount_uploader :image, ImageUploader

  def full_address
      "#{address}, #{zipcode}, #{city}, #{country}"
    end

end