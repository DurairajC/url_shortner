class Api::V1::HomesController < ::HomeController
    
def index

    params[:url_short] = {}
    params[:url_short][:name] = params[:name]
    super
	
    render json: @url

end 

end