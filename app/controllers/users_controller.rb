class UsersController < ApplicationController
  def new
  
  end

  def delete

  end
  
  def edit
  	  	 @user= User.new  	  	 
  end

  def update
  	
  	@update_user =User.new(params[:user])
  	@id = current_user.id
  	@cuser = User.find(@id)

  	if @update_user.password == @update_user.password_confirmation
  		@cuser.update_attributes(:password => @update_user.password,:panno => @update_user.panno, :fname => @update_user.fname, :lname => @update_user.lname, :contactno => @update_user.contactno, :email => @update_user.email, :address => @update_user.address, :city => @update_user.city, :pincode => @update_user.pincode, :nameofbank => @update_user.nameofbank, :ifscno => @update_user.ifscno, :accountno => @update_user.accountno)
  	end	

  end



end
