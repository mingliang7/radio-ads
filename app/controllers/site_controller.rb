class SiteController < ApplicationController
  before_action :set_ads, only:[:index, :show, :news, :about]
  def index
    
  	@thumbnails = Thumbnail.order("created_at DESC").paginate(page: params[:page],per_page: 4)
  	
  end
  def set_ads
    @advertisments = Advertisment.all
  end
  def about
  end


  def show
  	@thumbnail = Thumbnail.find(params[:thumbnail_id])
  	@news = Thumbnail.last(5)
  end

  def news
    @thumbnails = Thumbnail.order("created_at DESC").paginate(page: params[:page],per_page: 15)
  end
end
