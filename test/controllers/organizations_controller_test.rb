require 'test_helper'

class OrganizationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @organization = organizations(:one)
  end

  test "should get index" do
    get organizations_url
    assert_response :success
  end

  test "should get new" do
    get new_organization_url
    assert_response :success
  end

  test "should create organization" do
    assert_difference('Organization.count') do
      post organizations_url, params: { organization: { user_org: @organization.user_org, city: @organization.city, gender: @organization.gender, issues: @organization.issues, memberlink: @organization.memberlink, mission: @organization.mission, name: @organization.name, race: @organization.race, website: @organization.website } }
    end

    assert_redirected_to organization_url(Organization.last)
    assert_equal 'Organization was successfully created.', flash[:notice]
  end

  test "should show organization" do
    get organization_url(@organization)
    assert_response :success
  end

  test "should get edit" do
    get edit_organization_url(@organization)
    assert_response :success
  end

  test "should update organization" do
    patch organization_url(@organization), params: { organization: { user_org: @organization.user_org, city: @organization.city, gender: @organization.gender, issues: @organization.issues, memberlink: @organization.memberlink, mission: @organization.mission, name: @organization.name, race: @organization.race, website: @organization.website } }
    @organization.reload
  end

  test "should destroy organization" do
    assert_difference('Organization.count', -1) do
      delete organization_url(@organization)
    end

    assert_redirected_to organizations_url
  end
end
