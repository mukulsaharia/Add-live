class CreatePins < ActiveRecord::Migration
  def change
    create_table :pins do |t|
      t.string :jpin
      t.boolean :used, :default => false
      t.integer :user_id
      t.string :packagetype
      t.string :registration_type
      
      t.timestamps
      
    end
  end
end
