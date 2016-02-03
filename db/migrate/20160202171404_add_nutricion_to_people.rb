class AddNutricionToPeople < ActiveRecord::Migration
  def change
    add_column :people, :factor_nutricion, :integer
  end
end
