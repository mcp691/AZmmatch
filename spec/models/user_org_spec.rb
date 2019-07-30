require 'rails_helper'

RSpec.describe UserOrg, type: :model do

  it "is not valid without an e-mail" do
    expect(UserOrg.new(password: "mypassword")).not_to be_valid
  end

  it "is not valid without a password" do
    expect(UserOrg.new(email: "user@email.com")).not_to be_valid
  end

end
