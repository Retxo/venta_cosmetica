class AddCalculoSolToPeople < ActiveRecord::Migration
  def change
    add_column :people, :exposicion, :integer
    add_column :people, :riesgo, :integer
  end
end
