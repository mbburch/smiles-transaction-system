require 'rails_helper'

RSpec.describe 'Transfers API' do
  let!(:human) { create(:human) }
  let!(:human_id) { human.id }
  let!(:transfer) { create(:transfer, human_id: human_id) }

  describe 'GET humans/:human_id/transfers' do
    before { get "/humans/#{human_id}/transfers" }

    context 'when human exists' do
      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end
  end
end