class Api::V1::CandidatesController < ApplicationController
  

  def index
    render json: Candidate.all
  end

  def show
    @candidate = Candidate.find(candidate_params)
    render json: @candidate
  end


  private def candidate_params
    params.require(:candidate).permit(:name, :party)
  end
end