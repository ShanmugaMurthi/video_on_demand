require 'rails_helper'

RSpec.describe 'Movies API', type: :request do
  let!(:movies) { create_list(:movie, 1) }

  describe 'GET /movies' do
    before { get '/movies' }

    it 'returns movies' do
      expect(json).not_to be_empty
      expect(json.size).to eq(1)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

end
