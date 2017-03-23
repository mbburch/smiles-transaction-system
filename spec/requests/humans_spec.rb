require 'rails_helper'

RSpec.describe 'Humans API', type: :request do
  describe 'POST /humans' do
    let(:human) { create(:human) }

    context 'when the request is valid' do
      before { post '/humans', params: human }

      it 'creates a human' do
        expect(Human.count).to eq(1)
      end

      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end
  end
end