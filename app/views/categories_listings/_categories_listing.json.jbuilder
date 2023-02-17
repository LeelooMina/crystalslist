json.extract! categories_listing, :id, :Category_id, :Listing_id, :created_at, :updated_at
json.url categories_listing_url(categories_listing, format: :json)
