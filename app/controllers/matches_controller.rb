class MatchesController < ApplicationController
  
  def index
    @matches = Match.all
  end

  def new
    redirect_to new_user_registration_path unless user_signed_in?

    clipA, clipB = Clip.sample 2
    
    @props = {
      clipAUrl: clipA.file.url,
      clipAId: clipA.id,
      clipBUrl: clipB.file.url,
      clipBId: clipB.id,
    }
  end
end
