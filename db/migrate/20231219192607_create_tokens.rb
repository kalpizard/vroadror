class CreateTokens < ActiveRecord::Migration[7.1]
  def change
    create_table :tokens do |t|
      t.string :token
      t.datetime :expiration_day

      t.timestamps
    end
  end
end
