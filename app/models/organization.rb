class Organization < ApplicationRecord
  belongs_to :user_org, :optional => true
  validates :name, presence: true
  validates :issues, presence: true
  validates :user_org, presence: true


  def self.search(search_term)
    if Rails.env != "production"
      Organization.where(["name || issues || mission LIKE ?", "%#{search_term}%"])
    else
      Organization.where(["name || issues || mission iLIKE ?", "%#{search_term}%"])
    end
  end

  def issues_clean
    self.issues.delete('""').delete('[]').sub(',', '')
  end

end
