class Subscription < ApplicationRecord
  belongs_to :user
  belongs_to :subscribable, polymorphic: true
  default_scope { where('created_at > ?', 2.days.ago) }
  validate :custom_validation
  
  def time_left
  	sec = ((created_at + 2.days) - Time.now.utc).to_i
    convert_time_format(sec)
  end

  def custom_validation
    if Subscription.exists?(subscribable_type: subscribable_type, subscribable_id: subscribable_id, user_id: user_id)
      errors.add(:base,'Subscription already exists')
    end
  end

  def convert_time_format(sec)
  	[sec / 3600, sec / 60 % 60, sec % 60].map{|t| t.to_s.rjust(2,'0')}.join(':')
  end
end
