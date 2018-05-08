class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  mount_uploader :avatar, AvatarUploader

  ratyrate_rater

  has_many :washers

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  acts_as_messageable

  after_create :set_role

  def can_create?
    self.has_role?(:admin) or self.has_role?(:customer)
  end

  def set_role
    add_role :customer
  end

  def can_update?(washer)
    self.has_role?(:admin) or (self.has_role?(:customer) && (washer.user == self))
  end

  def can_delete(washer)
    self.has_role?(:admin) or (self.has_role?(:customer) && washer.user == self)
  end

  def admin_only
    self.has_role?(:admin)
  end


end
