class AddInformacionToHidratantes < ActiveRecord::Migration
  def change
    add_column :hidratantes, :aplicar, :text
    add_column :hidratantes, :recomendacion, :text
  end
end
