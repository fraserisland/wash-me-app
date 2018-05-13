class Washer < ApplicationRecord
  validates_presence_of :cost, :numericality => { :greater_than_or_equal_to => 0 }
  validates_presence_of :address, :delivery

  resourcify

  belongs_to :user
  ratyrate_rateable "experience"

  geocoded_by :full_address
  after_validation :geocode, :if => :address_changed?
 
  mount_uploader :image, ImageUploader

  def full_address
    "#{address}"
  end

end
