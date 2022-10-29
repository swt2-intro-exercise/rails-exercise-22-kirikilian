require 'rails_helper'

describe "new author", type: :model do
  it 'should have a first name, a last name and a homepage and the methode name should return the full name' do
    first_name = "Alan"
    last_name = "Turing"
    homepage = "http://wikipedia.org/Alan_Turing"
    author = Author.new(first_name: first_name, last_name: last_name, homepage: homepage)
    expect(author.first_name).to eq(first_name)
    expect(author.last_name).to eq(last_name)
    expect(author.name).to eq (first_name + " " + last_name)
    expect(author.homepage).to eq (homepage)
  end
end