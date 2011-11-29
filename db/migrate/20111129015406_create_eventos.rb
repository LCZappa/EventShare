class CreateEventos < ActiveRecord::Migration
  def change
    create_table :eventos do |t|
      t.string :nome
      t.text :descricao
      t.datetime :data
      t.string :local
      t.boolean :publico, :default => true
      t.integer :usuario_id

      t.timestamps
    end
  end
end
