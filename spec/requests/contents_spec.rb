require 'rails_helper'

RSpec.describe 'Content API', type: :request do
  let!(:movies) { create_list(:movie, 1) }
  let!(:seasons) { create_list(:season, 1) }

  describe 'GET /contents' do
    before { get '/contents' }

    it 'returns contents' do
      expect(json).not_to be_empty
      expect(json.size).to eq(2)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

end
