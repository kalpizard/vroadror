class CreateDifficulties < ActiveRecord::Migration[7.1]
  def change
    create_table :difficulties do |t|
      t.integer :level

      t.timestamps
    end
  end
end
