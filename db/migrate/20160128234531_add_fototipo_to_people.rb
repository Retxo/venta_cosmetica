class AddFototipoToPeople < ActiveRecord::Migration
  def change
    add_column :people, :fototipo1, :integer
    add_column :people, :fototipo2, :integer
    add_column :people, :fototipo3, :integer
    add_column :people, :fototipo4, :integer
    add_column :people, :fototipo5, :integer
    add_column :people, :fototipo6, :integer
    add_column :people, :fototipo7, :integer
    add_column :people, :fototipo, :integer
  end
end
