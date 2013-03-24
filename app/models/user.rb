class User < ActiveRecord::Base
  scope :frenchise, where(:frenchise =>true)
  has_one :pin
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :timeoutable, :authentication_keys => [:login]

  # Setup accessible (or protected) attributes for your model
attr_accessible :email, :password, :password_confirmation,:fname,:lname,:registration_type,:state,:sponserID,:jpin,:contactno,:address,:city,:pincode,:nameofbank,:accountno,:ifscno,:panno,:username,:login,:packagetype,:frenchise

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
