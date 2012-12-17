ActiveAdmin.register User do
 form do |f|
    f.inputs "User Details" do
      f.input :email
      f.input :username
      f.input :password
      f.input :fname
      f.input :lname
      f.input :address
      f.input :city
      f.input :state
      f.input :registration_type
      f.input :frenchise
      f.input :sponserID
      f.input :contactno
      f.input :pincode
      f.input :nameofbank
      f.input :ifscno
      f.input :panno
      f.input :packagetype
    end
    f.buttons
  end 
end


