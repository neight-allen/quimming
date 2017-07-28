class Api::V1::MatchesController < Api::V1::ApiController
  def create
    @match = Match.new match_params
    # binding.pry
    raise unless @match.save
    head :no_content
  end

  private
    def match_params
      params.permit(:winner_id, :loser_id)
    end
end
