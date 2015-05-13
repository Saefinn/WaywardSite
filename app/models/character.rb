class Character < ActiveRecord::Base
  #Create the relationships with other tables
  belongs_to :user
  has_many :items

  #Makes sure validation requirements are met.
  validates :first_name, presence: true, length: { minimum: 2 }
  validates :last_name, presence: true, length: { minimum: 2}

  def full_name
    first_name + " " + last_name
  end

end
