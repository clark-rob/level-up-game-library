class CreateConsoles < ActiveRecord::Migration[5.2]
  def change
    create_table :consoles do |t|
      t.string :brand
      t.string :name

      t.timestamps
    end
  end
end
