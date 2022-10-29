require 'rails_helper'

describe "Author page", type: :feature do
  it "should show the authors first name, last name and homepage" do
    @alan = FactoryBot.create :author
    visit author_path(@alan)
    expect(page).to have_text("Alan Turing")
    expect(page).to have_text("http://wikipedia.de/Alan_Turing")
  end
end