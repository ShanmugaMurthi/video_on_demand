require 'rails_helper'

RSpec.describe 'Movies API', type: :request do
  let!(:seasons) { create_list(:season, 1) }

  describe 'GET /seasons' do
    before { get '/seasons' }

    it 'returns seasons' do
      expect(json).not_to be_empty
      expect(json.size).to eq(1)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

end
