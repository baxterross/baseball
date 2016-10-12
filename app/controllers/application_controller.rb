class ApplicationController < ActionController::Base
	rescue_from ActiveRecord::RecordNotFound, :with => :not_found

	def not_found
	    head 404
	end

end
