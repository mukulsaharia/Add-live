class CreateAds < ActiveRecord::Migration
  def change
    create_table :ads do |t|
      t.string :que
      t.string :ans
      t.integer :client_id
      t.integer :totalclicks
      t.integer :usedclicks
      t.string :amount
      t.string :orgname
      t.string :category
      t.string :photo_file_name
      t.string :photo_content_type
      t.string :photo_file_size
      t.datetime :photo_updated_at

      t.timestamps
    end
  end
end
