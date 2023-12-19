class Task < ApplicationRecord
    #
    belongs_to :goal
    belongs_to :difficulty
    has_many :subtasks, dependent: :destroy
    has_and_belongs_to_many :categories, through: :preconfigurations
end
