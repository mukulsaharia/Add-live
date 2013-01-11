class CreateNeeds < ActiveRecord::Migration
  def change
    create_table :needs do |t|
      t.string :category
      t.string :orgname
      t.string :address
      t.string :contactno
      t.string :city

      t.timestamps
    end
  end
end
