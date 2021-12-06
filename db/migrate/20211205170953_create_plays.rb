class CreatePlays < ActiveRecord::Migration[6.1]
  def change
    create_table :plays do |t|
      t.string :name
      t.decimal :from_price
      t.text :description
      t.string :length

      t.timestamps
    end
  end
end
