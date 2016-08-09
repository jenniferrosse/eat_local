class Restaurant < ActiveRecord::Base
  validates :name, :address, :url, :presence => true
  validates :address, :uniqueness => true

  geocoded_by :address
  after_validation :geocode, :if => :address_changed?
end
