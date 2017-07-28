class ClipsController < ApplicationController
  def index
    @clips = Clip.all
  end

  def new
    @clip = Clip.new
  end

  def create
    clip = Clip.new clip_params
    if clip.save
      redirect_to clips_path
    else
      flash[:error] = clip.errors.messages.join
      render :new
    end
  end

  def show
    @clip = Clip.find params[:id]
  end

  private

    def clip_params
      params.require(:clip).permit(:file)
    end
end
