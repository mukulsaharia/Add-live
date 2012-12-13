class CreateClicks < ActiveRecord::Migration
  def change
    create_table :clicks do |t|
      t.string :ans
      t.integer :user_id
      t.integer :ads_id

      t.timestamps
    end
  end
end
