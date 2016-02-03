class PhotosController < ApplicationController
	def create
		@photo = current_user.photos.create(photo_params)
		if @photo.valid?
			redirect_to place_path
		else	
			render :new, status: :unprocessable_entity 
		end		                 
	end
end
