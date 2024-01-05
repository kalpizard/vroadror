class User < ApplicationRecord
 
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
    has_one :rating, dependent: :destroy
   
    has_many :user_notifications
end
