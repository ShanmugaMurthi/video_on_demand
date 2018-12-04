class Movie < ApplicationRecord
  validates_presence_of :title, :plot
  validates_uniqueness_of :title
  has_many :subscriptions, as: :subscribable, dependent: :destroy
end
