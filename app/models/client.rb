class Client < ActiveRecord::Base
  has_many :adss
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :username, :contactno, :address, :city, :category, :adscount, :fname, :lname
  # attr_accessible :title, :body
  validates_uniqueness_of :username
  # attr_accessible :title, :body
  attr_accessor :login

   def self.find_first_by_auth_conditions(warden_conditions)
      conditions = warden_conditions.dup
      if login = conditions.delete(:login)
        where(conditions).where(["lower(username) = :value ", { :value => login.downcase }]).first
      else
        where(conditions).first
      end
    end
end
