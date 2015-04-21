class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  #Make each user have many statuses assigned to them. This creates a relation between the user and multiple statuses         
  has_many :statuses
  #attr_accessible :email, :password, :password_confirmation, :remember_me, :first_name, :last_name, :profile_name
  
  
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :profile_name, presence: true, uniqueness: true, format: {
    with: /\A[a-zA-Z\-\_]+\Z/, message: 'Must be formatted correctly.'
  }
  
  
  
  #Combine the first and last name to give a full name
  def full_name
    first_name + " " + last_name
    #code
  end
end
