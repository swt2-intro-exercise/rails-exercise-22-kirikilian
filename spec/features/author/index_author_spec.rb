require 'rails_helper'

describe "Author index page", type: :feature do
  it "should exist at 'author_path' and render without error " do
    visit authors_url
  end

  it "should link to 'new_author_path'" do
    visit authors_url
    expect(page).to have_link 'New', href: new_author_path
  end
end
