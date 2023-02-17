class CreateBookmarks < ActiveRecord::Migration[7.0]
  def change
    create_table :bookmarks do |t|
      t.belongs_to :User, null: false, foreign_key: true
      t.belongs_to :Listing, null: false, foreign_key: true

      t.timestamps
    end
  end
end
