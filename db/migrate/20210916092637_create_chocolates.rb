class CreateChocolates < ActiveRecord::Migration[6.1]
  def change
    create_table :chocolates do |t|
      t.string :name, null: false
      t.string :image_url
      t.decimal :ranking, default: 1500, null: false
      t.integer :match_count, default: 0, null: false

      t.timestamps
    end
  end
end
