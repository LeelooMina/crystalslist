class CreateListings < ActiveRecord::Migration[7.0]
  def change
    create_table :listings do |t|
      t.string :title
      t.string :content
      t.string :img_path
      t.belongs_to :User, null: false, foreign_key: true

      t.timestamps
    end
  end
end
