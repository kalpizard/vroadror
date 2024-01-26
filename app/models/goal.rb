class Goal < ApplicationRecord
    has_one :advance
    has_and_belongs_to_many :users
    has_many :tasks
    belongs_to :user
  end
  