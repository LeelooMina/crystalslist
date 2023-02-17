require "test_helper"

class CategoriesListingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @categories_listing = categories_listings(:one)
  end

  test "should get index" do
    get categories_listings_url
    assert_response :success
  end

  test "should get new" do
    get new_categories_listing_url
    assert_response :success
  end

  test "should create categories_listing" do
    assert_difference("CategoriesListing.count") do
      post categories_listings_url, params: { categories_listing: { Category_id: @categories_listing.Category_id, Listing_id: @categories_listing.Listing_id } }
    end

    assert_redirected_to categories_listing_url(CategoriesListing.last)
  end

  test "should show categories_listing" do
    get categories_listing_url(@categories_listing)
    assert_response :success
  end

  test "should get edit" do
    get edit_categories_listing_url(@categories_listing)
    assert_response :success
  end

  test "should update categories_listing" do
    patch categories_listing_url(@categories_listing), params: { categories_listing: { Category_id: @categories_listing.Category_id, Listing_id: @categories_listing.Listing_id } }
    assert_redirected_to categories_listing_url(@categories_listing)
  end

  test "should destroy categories_listing" do
    assert_difference("CategoriesListing.count", -1) do
      delete categories_listing_url(@categories_listing)
    end

    assert_redirected_to categories_listings_url
  end
end
