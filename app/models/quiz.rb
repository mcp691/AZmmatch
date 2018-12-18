class Quiz < ApplicationRecord

  def organizations
    @organizations ||= find_organizations
  end

private

  def find_organizations
    organizations = Organization.order(:name)
    organizations = Organization.where("name like ?", "%#{name}%") if name.present?
    organizations = Organization.where(gender: gender) if gender.present?
    organizations = Organization.where(age: age) if age.present?
    organizations
  end

end
