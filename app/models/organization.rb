class Organization < ApplicationRecord
  belongs_to :user_org, :optional => true
  validates :name, presence: true
  validates :issues, presence: true
  validates :user_org, presence: true

=begin
  Use this code for when Quiz has been optimized for multiple selections

  before_save do
    self.issues.gsub!(/[\[\]\"]/, "") if attribute_present?("issues")
    self.skills.gsub!(/[\[\]\"]/, "") if attribute_present?("skills")
  end

  def issues_clean
    self.issues.delete('""').sub(',', '').strip
  end

  def skills_clean
    self.skills.delete('""').sub(',', '').strip
  end
=end

end
