class PlacesController < ApplicationController
	def index
		@places = Place.paginate(:page => params[:page], :per_page => 5)
	end

	def new
		@place = Place.new	
	end

end

=begin
Restore this piece in case anything goes wrong!!!

class PlacesController < ApplicationController
	def index
		@places = Place.all
	end
end

=end

