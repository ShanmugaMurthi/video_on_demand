require 'rails_helper'

RSpec.describe 'Movies API', type: :request do
  let!(:subscriptions) { create_list(:subscription, 1) }
  let!(:user) { create(:user) }
  let!(:movie) { create(:movie) }
  let(:headers) { valid_headers }

  describe 'GET /subscriptions' do
    before { get '/subscriptions' }

    it 'returns subscriptions' do
      expect(json).not_to be_empty
      expect(json.size).to eq(1)
    end

  end

  describe 'POST /subscriptions' do
    let(:valid_attributes) { { subscribable_id: movie.id.to_s, subscribable_type: 'Movie' }.to_json }

    context 'when the request is valid' do
      before { post '/subscriptions', params: valid_attributes, headers: headers }

      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end

    context 'when the request is invalid' do
      before { post '/subscriptions', params: { title: 'Foobar' } }

      it 'returns status code 422' do
        expect(response).to have_http_status(422)
      end

    end
  end

end
