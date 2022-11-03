require 'rails_helper'

describe "Edit author page", type: :feature do
  it "should update the author" do
    @alan = FactoryBot.create :author
    visit edit_author_path(@alan)
    expect(page).to have_text("Edit")
    page.fill_in('author[first_name]', with: 'AlanJr')
    page.fill_in('author[last_name]', with: 'TuringJr')
    find('input[type="submit"]').click
    @alan.reload
    expect(@alan.name).to eq("AlanJr TuringJr")
  end
end
