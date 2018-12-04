class Movie < ApplicationRecord
  validates_presence_of :title, :plot
  has_many :subscriptions, as: :subscribable, dependent: :destroy
end
