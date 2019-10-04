require 'rails_helper'

RSpec.describe Organization, type: :model do

  before do
    @user = FactoryBot.create(:user_org)
  end

  it "is not valid without a name" do
    expect(Organization.new(issues: "This is an issue", user_org: @user, claimed: true)).not_to be_valid
  end

  it "is not valid without an issue" do
    expect(Organization.new(name: "Organization Name", user_org: @user, claimed: true)).not_to be_valid
  end

end
