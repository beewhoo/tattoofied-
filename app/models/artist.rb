class Artist < ApplicationRecord
  has_one_attached :main_picture
  has_many_attached :uploads
  has_secure_password
  validates :email, uniqueness: true


end
