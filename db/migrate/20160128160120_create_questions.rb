class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :pregunta
      t.text :respuesta1
      t.integer :valor1
      t.integer :next1
      t.text :respuesta2
      t.integer :valor2
      t.integer :next2
      t.text :respuesta3
      t.integer :valor3
      t.integer :next3
      t.text :respuesta4
      t.integer :valor4
      t.integer :next4
      t.text :respuesta5
      t.integer :valor5
      t.integer :next5
      t.text :respuesta6
      t.integer :valor6
      t.integer :next6
      t.string :nombre_preg
      t.integer :prev

      t.timestamps null: false
    end
  end
end
