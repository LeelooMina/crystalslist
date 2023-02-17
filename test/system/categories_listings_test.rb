require "application_system_test_case"

class CategoriesListingsTest < ApplicationSystemTestCase
  setup do
    @categories_listing = categories_listings(:one)
  end

  test "visiting the index" do
    visit categories_listings_url
    assert_selector "h1", text: "Categories listings"
  end

  test "should create categories listing" do
    visit categories_listings_url
    click_on "New categories listing"

    fill_in "Category", with: @categories_listing.Category_id
    fill_in "Listing", with: @categories_listing.Listing_id
    click_on "Create Categories listing"

    assert_text "Categories listing was successfully created"
    click_on "Back"
  end

  test "should update Categories listing" do
    visit categories_listing_url(@categories_listing)
    click_on "Edit this categories listing", match: :first

    fill_in "Category", with: @categories_listing.Category_id
    fill_in "Listing", with: @categories_listing.Listing_id
    click_on "Update Categories listing"

    assert_text "Categories listing was successfully updated"
    click_on "Back"
  end

  test "should destroy Categories listing" do
    visit categories_listing_url(@categories_listing)
    click_on "Destroy this categories listing", match: :first

    assert_text "Categories listing was successfully destroyed"
  end
end
