class PictsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_pict, only:[:edit, :update, :destroy]

  def index
    @picts = Pict.all
  end

  def new
    @pict = Pict.new
  end

  def edit
  end

  def update
    @pict.update(picts_params)
    redirect_to picts_path, notice: "投稿を更新しました"
  end

  def destroy
    @pict.destroy
    redirect_to picts_path, notice: "投稿を削除しました"
  end

  def create
    @pict = Pict.new(picts_params)
    @pict.user_id = current_user.id
    if @pict.save
    redirect_to picts_path, notice: "写真を投稿しました"
    NoticeMailer.sendmail_pict(@pict).deliver
  else
    render 'new'
  end
end

  private
   def picts_params
     params.require(:pict).permit(:comment, :photo)
   end

   def set_pict
     @pict = Pict.find(params[:id])
   end
end
