require 'rails_helper'

RSpec.describe Member, type: :model do
  before { @member = FactoryGirl.create(:member) }

  subject { @member }

  it { should respond_to(:name) }
  it { should respond_to(:age) }
  it { should respond_to(:company) }
  it { should respond_to(:money) }

  it { should be_valid }

  describe "when name is not present" do
  	before { @member.name = "     " }
  	it { should_not be_valid }
  end

end
