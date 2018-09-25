class HomeController < ApplicationController

  def index
	
		username = "o_3ciin9m2d1"
    api_key = "R_801deaa5a87049458a7e22e349d1d863"

		begin 
		
			if params[:url_short] 	
				bitly = Bitly.new(username, api_key)
				@url = bitly.shorten(params[:url_short][:name])
			end
		
		rescue
			flash[:notice] = 'Enter correct url to shorten'
			redirect_to root_path
		end
  
  end
   
end
