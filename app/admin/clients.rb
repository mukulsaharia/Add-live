ActiveAdmin.register Client do

	form do |f|
    f.inputs "Client Details" do
      f.input :email
      f.input :username
      f.input :password
      f.input :fname
      f.input :lname
      f.input :address
      f.input :city
      f.input :state
      f.input :category
      f.input :adscount
    end
    f.buttons
  end
  
end
