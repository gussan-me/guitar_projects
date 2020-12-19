class PracticesController < ApplicationController
PER = 4

  def index
    @practices = Practice.page(params[:page]).per(PER).order(id: "DESC")
  end
  
end
