require 'rails_helper'

RSpec.describe "members/show", type: :view do
  before(:each) do
    @member = assign(:member, Member.create!(
      :name => "Name",
      :age => 1,
      :company => "Company",
      :money => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Company/)
    expect(rendered).to match(/9.99/)
  end
end
