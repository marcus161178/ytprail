class CustomController < ApplicationController
  
    layout "homelayout"
  def home
    
    
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @images }
    end
  end


  def photogallery
    
    @images = Image.paginate( page: params[:page],  :per_page => 40)
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @images }
    end
  end
  

  def clienthome
  end
end
