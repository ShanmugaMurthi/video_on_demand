class Season < ApplicationRecord
	validates_presence_of :title, :plot
	has_many :episodes, dependent: :destroy
	has_many :subscriptions, as: :subscribable, dependent: :destroy
end
