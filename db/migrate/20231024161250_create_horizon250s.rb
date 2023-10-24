class CreateHorizon250s < ActiveRecord::Migration[7.1]
  def change
    create_table :horizon250s do |t|
      t.string :nome
      t.string :marca
      t.string :ano
      t.string :img_moto

      t.timestamps
    end
  end
end
