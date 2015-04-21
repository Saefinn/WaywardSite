class Status < ActiveRecord::Base
  #Make sure each status has a user assigned to it. 
  belongs_to :user
end
