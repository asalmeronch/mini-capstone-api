class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :product_name
      t.integer :product_price
      t.string :image_url
      t.string :product_description

      t.timestamps
    end
  end
end
