class User < ActiveRecord::Base
  # extend Geocoder::Model::ActiveRecord

  has_many :books, dependent: :destroy
  has_many :lends
  has_many :reviews

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true

  validates :email, uniqueness: true, format: {with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i}


  # geocoded_by :address
  # reverse_geocoded_by :latitude, :longitude
  # after_validation :geocode, :if => :address_changed?
end
