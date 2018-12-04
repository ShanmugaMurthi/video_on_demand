require 'rails_helper'

RSpec.describe Subscription, type: :model do

   it { should belong_to(:user) }
   it { should belong_to(:subscribable) }

   describe "default_scope" do
     before do 
       create(:subscription, created_at: Time.now.utc - 3.days) 
       create(:subscription, created_at: Time.now.utc)
     end

    it "returns records in default scope" do
      expect(Subscription.all.size).to eq(1)
    end

    it "returns records without default scope" do
      expect(Subscription.unscoped.all.size).to eq(2)
    end
  end
end
