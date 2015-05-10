class Item < ActiveRecord::Base

  belongs_to :character

  validates :name, presence: true, length: { minimum: 2 }
  validates :character_id, presence: true
  validates :quantity, presence: true


  #validates :character_id, pressence: true
end
