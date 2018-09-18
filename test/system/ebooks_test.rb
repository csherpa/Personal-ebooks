require "application_system_test_case"

class EbooksTest < ApplicationSystemTestCase
  setup do
    @ebook = ebooks(:one)
  end

  test "visiting the index" do
    visit ebooks_url
    assert_selector "h1", text: "Ebooks"
  end

  test "creating a Ebook" do
    visit ebooks_url
    click_on "New Ebook"

    fill_in "Author", with: @ebook.author
    fill_in "Description", with: @ebook.description
    fill_in "Title", with: @ebook.title
    click_on "Create Ebook"

    assert_text "Ebook was successfully created"
    click_on "Back"
  end

  test "updating a Ebook" do
    visit ebooks_url
    click_on "Edit", match: :first

    fill_in "Author", with: @ebook.author
    fill_in "Description", with: @ebook.description
    fill_in "Title", with: @ebook.title
    click_on "Update Ebook"

    assert_text "Ebook was successfully updated"
    click_on "Back"
  end

  test "destroying a Ebook" do
    visit ebooks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ebook was successfully destroyed"
  end
end
