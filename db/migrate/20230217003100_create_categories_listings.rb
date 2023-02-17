class CreateCategoriesListings < ActiveRecord::Migration[7.0]
  def change
    create_table :categories_listings do |t|
      t.belongs_to :Category, null: false, foreign_key: true
      t.belongs_to :Listing, null: false, foreign_key: true

      t.timestamps
    end
  end
end
