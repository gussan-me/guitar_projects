
class HmhrpracticesController < ApplicationController
    PER = 4

  def index
    @hmhrpractices = Hmhrpractice.page(params[:page]).per(PER).order(id: "DESC")
    @hmhrpractice = Hmhrpractice.new
  end
  
  def show
  end

  def edit
  end

  def create
    @hmhrpractice = Hmhrpractice.new(hmhrpractice_params)
    if @hmhrpractice.save
      redirect_to  hmhrpractices_path, notice: '投稿が完了しました！'
      #redirect_toは、〜に遷移するの意味。root_pathに遷移する。
    else
      flash[:alert] = 'Save error!'
    end
  end

  # def confirm
  # @hmhrpractices = Hmhrpractice.new(hmhrpractice_params)
  #   if @hmhrpractices.save
  #     redirect_to root_path,notice: 'Success!'
  #   else
  #     flash[:alert] = "SAVE ERROR!"
  #   end
  # end

  # def back
  # @hmhrpractices = Hmhrpractice.new(hmhrpractice_params)
  #   if params[:back]
  #     render("hmhrpractices/confirm")
  #   else
  #     MessageMailer.received_email(@hmhrpractices).deliver_now
  #     render :action => 'back'
  #   end
  # end
  
  private
  def hmhrpractice_params
    params.require(:hmhrpractice).permit(:name, :title, :content)
  end
end
