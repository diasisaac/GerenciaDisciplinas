class CreateTurmas < ActiveRecord::Migration[7.0]
  def change
    create_table :turmas do |t|
      t.string :nome
      t.integer :ano_letivo

      t.timestamps
    end
  end
end
