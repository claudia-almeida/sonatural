class Place < ActiveRecord::Base
	belongs_to :user
	has_many :comments
	has_many :photos

	geocoded_by :address
	after_validation :geocode
	
	#validadtes fields in form (check if for all forms though yo!)
	validates :name, presence: true, :length => {:within => 3..100}
	validates :category, presence: true, :length => {:within => 3..100}
	validates :address, presence: true, :length => {:within => 20..100}
	validates :description, presence: true, :length => {:within => 100..1500}
end
