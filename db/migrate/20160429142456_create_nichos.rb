class CreateNichos < ActiveRecord::Migration
  def change
    create_table :nichos do |t|
      t.string :nicho
      t.boolean :ativo

      t.timestamps
    end
  end
end
