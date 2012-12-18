class AddFrenchisenameColumnToPins < ActiveRecord::Migration
  def change
    add_column :pins, :frenchisename, :string
  end
end
