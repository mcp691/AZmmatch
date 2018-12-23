class Quiz < ApplicationRecord

=begin
  Use this code for when Quiz has been optimized for multiple selections

  before_save do
    self.issues.gsub!(/[\[\]\"]/, "") if attribute_present?("issues")
    self.skills.gsub!(/[\[\]\"]/, "") if attribute_present?("skills")
  end
=end

  def organizations
    @organizations ||= find_organizations
  end

private

  # TODO Make Users able to select multiple choices for one parameter (issues, skills) and match it with the Orgnaization

  def find_organizations # Parameters of Quiz answers and Organization matches
    organizations = Organization.where("issues LIKE ? OR gender LIKE ? OR skills LIKE ? OR race LIKE ? OR ability LIKE ? OR age LIKE ? OR religion LIKE ? OR class_background LIKE ? OR occupation LIKE ? OR immigration_status LIKE ? OR incarceration_status LIKE ? OR housing_status LIKE ? OR commitment LIKE ?",

    "%#{issues}%", "%#{gender}%", "%#{skills}%", "%#{race}%", "%#{ability}%", "%#{age}%", "%#{religion}%", "%#{class_background}%", "%#{occupation}%", "%#{immigration_status}%", "%#{incarceration_status}%", "%#{housing_status}%", "%#{commitment}%")

    organizations
  end

end
