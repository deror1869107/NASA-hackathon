class CreateInfoMarkets < ActiveRecord::Migration[5.1]
  def change
    create_table :info_markets do |t|
      t.string :near
      t.integer :forNum
      t.integer :againstNum
      t.string :token
      t.timestamps
    end
  end
end
