class Character < ActiveRecord::Base
  belongs_to :user
  has_many :items

  validates :first_name, presence: true, length: { minimum: 2 }
  validates :last_name, presence: true, length: { minimum: 2}

  def full_name
    first_name + " " + last_name
  end

end
