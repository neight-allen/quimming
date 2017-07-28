class MatchesController < ApplicationController
  def new
    clipA, clipB = Clip.sample 2
    
    @props = {
      clipAUrl: clipA.file.url,
      clipAId: clipA.id,
      clipBUrl: clipB.file.url,
      clipBId: clipB.id,
    }
  end
end
