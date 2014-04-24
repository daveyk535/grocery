class CreateGrocerylists < ActiveRecord::Migration
  def change
    create_table :grocerylists do |t|
      t.string :description
      t.string :qty
      t.string :mfg

      t.timestamps
    end
  end
end
