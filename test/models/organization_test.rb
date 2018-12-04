require 'test_helper'

class OrganizationTest < ActiveSupport::TestCase

  def setup
    @organization = Organization.new(name: "Test Organization")
  end

  test "name should be present" do
    @organization.name = nil
    assert_not @organization.valid?
  end
  # test "the truth" do
  #   assert true
  # end
end
