class Bookmark < ApplicationRecord
  belongs_to :User
  belongs_to :Listing
end
