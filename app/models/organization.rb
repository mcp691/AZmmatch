class Organization < ApplicationRecord
  belongs_to :user_org, :optional => true
  validates :name, presence: true
  validates :issues, presence: true
  validates :user_org, presence: true

  def issues_clean
    self.issues.delete('""').delete('[]').sub(',', '')
  end

  def skills_clean
    self.skills.delete('""').delete('[]').sub(',', '')
  end

end
