

class Advance < ApplicationRecord
    belongs_to :goal
  
    validates :description, presence: true
    validates :death_line, presence: true
    validates :current_progress, presence: true
  end
  

















# class Advance < ApplicationRecord
    
    
#     belongs_to :goal
# end
