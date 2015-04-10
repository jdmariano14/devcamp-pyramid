require 'rails_helper'

RSpec.describe "members/edit", type: :view do
  before(:each) do
    @member = assign(:member, Member.create!(
      :name => "MyString",
      :age => 1,
      :company => "MyString",
      :money => "9.99"
    ))
  end

  it "renders the edit member form" do
    render

    assert_select "form[action=?][method=?]", member_path(@member), "post" do

      assert_select "input#member_name[name=?]", "member[name]"

      assert_select "input#member_age[name=?]", "member[age]"

      assert_select "input#member_company[name=?]", "member[company]"

      assert_select "input#member_money[name=?]", "member[money]"
    end
  end
end
