class SubscriptionsController < ApplicationController
  caches_action :index
  def index
    subscriptions = current_user.subscriptions
    json_response(subscriptions)
  end

  def create
    subscription = current_user.subscriptions.create!(subscription_params)
    json_response(subscription, :created)
  end

  private

  def subscription_params
  	params.permit(:subscribable_id, :subscribable_type)
  end  
end
