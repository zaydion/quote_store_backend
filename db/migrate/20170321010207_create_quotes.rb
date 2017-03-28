class CreateQuotes < ActiveRecord::Migration[5.0]
  def change
    create_table :quotes do |t|
      t.string :title
      t.text :body
      t.money :price
      t.string :size

      t.timestamps
    end
  end
end
