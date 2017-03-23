class HumansController < ApplicationController
  before_action :set_human, only: [:show, :update]

  def create
    @human = Human.create!(human_params)
    json_response(@human, :created)
  end

  def show
    json_response(@human)
  end

  def update
    @human.update(human_params)
    head :no_content
  end

  private

  def human_params
    params.permit(:email, :first_name, :last_name, :smile_count)
  end

  def set_human
    @human = Human.find(params[:id])
  end
end
