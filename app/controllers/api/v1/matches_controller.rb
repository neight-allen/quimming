class Api::V1::MatchesController < Api::V1::ApiController
  skip_before_action :verify_authenticity_token

  def create
    return head :unauthorized unless user_signed_in?
    @match = current_user.matches.new match_params
    raise unless @match.save
    head :no_content
  end

  private
    def match_params
      params.permit(:winner_id, :loser_id)
    end
end
