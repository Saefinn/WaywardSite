class Item < ActiveRecord::Base

  belongs_to :character

  validates :name, presence: true, length: { minimum: 2 }


  #validates :character_id, pressence: true
end
