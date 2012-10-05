class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :timeoutable

  # Setup accessible (or protected) attributes for your model
attr_accessible :email, :password, :password_confirmation,:fname,:lname,:registration_type,:state,:sponserID,:jpin,:contactno,:address,:city,:pincode,:nameofbank,:accountno,:ifscno,:panno


  # attr_accessible :title, :body
end
