class TransfersController < ApplicationController
  before_action :set_human
  before_action :set_transfer, only: [:show]

  def index
    json_response(@human.transfers)
  end

  def show
    json_response(@tranfer)
  end

  def create
    transfer = @human.transfers.create(transfer_params)
    @human.update!(smile_count: (transfer.smile_count + @human.smile_count))
  end

  private

  def transfer_params
    params.permit(:human_id, :smile_count)
  end

  def set_human
    @human = Human.find(params[:human_id])
  end

  def set_transfer
    @transfer = @human.transfers.find_by!(id: params[:id]) if @human
  end
end
