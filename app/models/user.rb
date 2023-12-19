class User < ApplicationRecord
    #
    has_one :rating, dependent: :destroy
    has_many :tokens
    has_many :tasks
    has_many :user_notifications
end
