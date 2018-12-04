class User < ApplicationRecord
  has_secure_password
  validates_presence_of :email,:password_digest
  validates_uniqueness_of :email
  has_many :subscriptions, dependent: :destroy
end
