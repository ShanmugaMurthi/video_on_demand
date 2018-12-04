require 'rails_helper'

RSpec.describe SubscriptionsController, type: :controller do
  let(:headers) { { 'Authorization' => token_generator(user.id) } }
  let(:invalid_headers) { { 'Authorization' => nil } }

	context "when auth token is not passed" do
    before do
      allow(request).to receive(:headers).and_return(invalid_headers)
    end

    it "raises MissingToken error" do
      expect { subject.instance_eval { authorize_request } }.
      to raise_error(ExceptionHandler::MissingToken, /Missing token/)
    end
  end

end
