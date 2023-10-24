class CreateHorizon250pecas < ActiveRecord::Migration[7.1]
  def change
    create_table :horizon250pecas do |t|
      t.string :nomepeca
      t.string :motocompativel
      t.string :ano
      t.string :compatibilidade
      t.string :img_motocompativel

      t.timestamps
    end
  end
end
