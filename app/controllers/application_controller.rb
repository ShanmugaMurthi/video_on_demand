require 'actionpack/action_caching'
class ApplicationController < ActionController::API
  include Response
  include ExceptionHandler
  include ActionController::Caching

  before_action :authorize_request
  caches_action :index

  attr_reader :current_user

  private

  def authorize_request
    if request.headers['Authorization'].present? or request.controller_class == SubscriptionsController
      @current_user = (AuthorizeApiRequest.new(request.headers).call)[:user]
    end
  end
end