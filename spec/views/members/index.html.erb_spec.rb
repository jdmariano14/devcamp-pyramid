require 'rails_helper'

RSpec.describe "members/index", type: :view do
  before(:each) do
    assign(:members, [
      Member.create!(
        :name => "Name",
        :age => 1,
        :company => "Company",
        :money => "9.99"
      ),
      Member.create!(
        :name => "Name",
        :age => 1,
        :company => "Company",
        :money => "9.99"
      )
    ])
  end

  it "renders a list of members" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Company".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
