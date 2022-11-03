require 'rails_helper'

RSpec.describe Paper, type: :model do
  it "is valid with valid attributes" do
    paper = Paper.new(title: "title", venue: "venue", year: 2000)
    expect(paper.title).to eq("title")
    expect(paper.venue).to eq("venue")
    expect(paper.year).to eq(2000)
    expect(paper).to be_valid
  end
end