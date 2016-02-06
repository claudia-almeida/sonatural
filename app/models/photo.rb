class Photo < ActiveRecord::Base
	mount_uploader :picture, PictureUploader
	belongs_to :user
	belongs_to :place
	has_many :photos
end
