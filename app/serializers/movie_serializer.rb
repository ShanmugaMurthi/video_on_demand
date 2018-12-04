class MovieSerializer < ApplicationSerializer
  attributes :id, :content_type, :title, :plot, :price, :quality, :created_at
  attribute :logged_user, if: :current_user
end
