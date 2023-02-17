class CategoriesListing < ApplicationRecord
  belongs_to :Category
  belongs_to :Listing
end
