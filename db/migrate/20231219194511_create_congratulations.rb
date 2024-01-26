class CreateCongratulations < ActiveRecord::Migration[7.1]
  def change
    create_table :congratulations do |t|
      t.string :congratulation_descript

      t.timestamps
    end
  end
end
