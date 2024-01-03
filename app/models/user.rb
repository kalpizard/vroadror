# class User < ApplicationRecord
#   # Include default devise modules. Others available are:
#   # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
#   devise :database_authenticatable, :registerable,
#          :recoverable, :rememberable, :validatable
#     #
#     has_one :rating, dependent: :destroy
#     has_many :tokens
#     has_many :tasks
#     has_many :user_notifications
# end

class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  has_one :rating, dependent: :destroy
  has_many :tokens
  has_many :tasks
  has_many :user_notifications
end
