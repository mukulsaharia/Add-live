class CreateAds < ActiveRecord::Migration
  def change
    create_table :ads do |t|
      t.string :que
      t.string :ans
      t.integer :client_id
      t.integer :totalclicks
      t.integer :usedclicks
      t.string :amount

      t.timestamps
    end
  end
end
