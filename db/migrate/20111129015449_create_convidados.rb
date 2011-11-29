class CreateConvidados < ActiveRecord::Migration
  def change
    create_table :convidados do |t|
      t.integer :usuario_id
      t.integer :evento_id
      t.string :nome
      t.string :email

      t.timestamps
    end
  end
end
