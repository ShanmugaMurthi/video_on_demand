require 'rails_helper'

RSpec.describe Season, type: :model do
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:plot) }
  it { should have_many(:episodes).dependent(:destroy) }
  it { should have_many(:subscriptions).dependent(:destroy) }
end
