require "application_system_test_case"

class BookShelvesTest < ApplicationSystemTestCase
  setup do
    @book_shelf = book_shelves(:one)
  end

  test "visiting the index" do
    visit book_shelves_url
    assert_selector "h1", text: "Book shelves"
  end

  test "should create book shelf" do
    visit book_shelves_url
    click_on "New book shelf"

    fill_in "Book", with: @book_shelf.book_id
    fill_in "User", with: @book_shelf.user_id
    click_on "Create Book shelf"

    assert_text "Book shelf was successfully created"
    click_on "Back"
  end

  test "should update Book shelf" do
    visit book_shelf_url(@book_shelf)
    click_on "Edit this book shelf", match: :first

    fill_in "Book", with: @book_shelf.book_id
    fill_in "User", with: @book_shelf.user_id
    click_on "Update Book shelf"

    assert_text "Book shelf was successfully updated"
    click_on "Back"
  end

  test "should destroy Book shelf" do
    visit book_shelf_url(@book_shelf)
    click_on "Destroy this book shelf", match: :first

    assert_text "Book shelf was successfully destroyed"
  end
end
