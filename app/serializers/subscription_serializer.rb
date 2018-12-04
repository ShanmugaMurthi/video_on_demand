class SubscriptionSerializer < ApplicationSerializer
  attributes :time_left 
  attribute :subscribable_type, key: :content_type
  attribute :subscribable, key: :subscribed_content
  attribute :logged_user, if: :current_user
end
