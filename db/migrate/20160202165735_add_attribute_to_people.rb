class AddAttributeToPeople < ActiveRecord::Migration
  def change
    add_column :people, :da, :integer
    add_column :people, :sufres_da, :integer
    add_column :people, :humedad_y_ta, :integer
    add_column :people, :estres, :integer
    add_column :people, :dieta, :integer
    add_column :people, :lavas, :integer
    add_column :people, :fumar, :integer
    add_column :people, :expuesto_sol, :integer
    add_column :people, :antiacne, :integer
  end
end
