class CreateProductCategories < ActiveRecord::Migration[7.2]
  def change
    create_table :product_categories do |t|
      t.string :product_type
      t.string :product_category

      t.timestamps
    end
  end
end
