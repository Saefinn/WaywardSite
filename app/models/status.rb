class Status < ActiveRecord::Base
  #Make sure each status has a user assigned to it. 
  belongs_to :user
  
  validates :content, presence: true, length: { minimum: 2 }
  validates :user_id, presence: true
  
end
