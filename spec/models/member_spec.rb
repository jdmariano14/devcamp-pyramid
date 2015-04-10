require 'rails_helper'

RSpec.describe Member, type: :model do
  before { @member = FactoryGirl.create(:member) }

  subject { @member }

  it { should respond_to(:name) }
  it { should respond_to(:age) }
  it { should respond_to(:company) }
  it { should respond_to(:money) }
  it { should respond_to(:recruiter) }
  it { should respond_to(:recruits) }

  it { should be_valid }

  describe "when name is not present" do
  	before { @member.name = "     " }
  	it { should_not be_valid }
  end

  describe "when name is too long" do
  	before { @member.name = "a" * (Member::NAME_MAX_LENGTH + 1) }
  	it { should_not be_valid }
  end

  describe "when money is negative" do
  	before { @member.money = -1.1 }
  	it { should_not be_valid }
  end

  describe "when adding a new recruit" do
    before { @recruit = @member.recruits.build }
    subject { @recruit }

    it "should not be nil" do
      expect(@recruit).not_to be(nil)
    end
  end

end
