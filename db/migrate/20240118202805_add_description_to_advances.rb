class AddDescriptionToAdvances < ActiveRecord::Migration[7.1]
  def change
    add_column :advances, :description, :string
  end
end
