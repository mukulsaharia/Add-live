ActiveAdmin.register Ads do
  form :html => { :enctype => "multipart/form-data" }do |f|
    f.inputs "Ads Details" do
      f.input :amount
      f.input :ans
      f.input :que
      f.input :client_id
      f.input :totalclicks
      f.input :usedclicks
      f.input :orgname
      f.input :category
      f.input :photo, :as => :file
      f.input :city
      f.input :Active
      f.input :Imageslide
    end
    f.buttons
  end
end

