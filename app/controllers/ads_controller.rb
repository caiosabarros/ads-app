class AdsController < ApplicationController 
before_action :require_logged_user


  def create
    @ad = current_user.ads.build(ad_params)
    if @ad.save
      redirect_to root_path, notice: "UHU! Ad ADDED!"
    end
  end

  def new
    @ad = Ad.new
  end

  private

  def ad_params
    params.require(:ad).permit(:title, :description, :price)
  end


end