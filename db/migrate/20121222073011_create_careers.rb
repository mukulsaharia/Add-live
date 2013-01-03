class CreateCareers < ActiveRecord::Migration
  def change
    create_table :careers do |t|
      t.string :company
      t.string :jobprofile
      t.string :eligbility
      t.string :contactperson
      t.string :address
      t.string :contactno

      t.timestamps
    end
  end
end
