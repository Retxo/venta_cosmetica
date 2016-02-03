class AddFactorSolToPeople < ActiveRecord::Migration
  def change
    add_column :people, :exposicion1, :integer
    add_column :people, :exposicion2, :integer
    add_column :people, :embarazada, :integer
    add_column :people, :medicacion, :integer
  end
end
