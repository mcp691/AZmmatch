class Organization < ApplicationRecord
  belongs_to :user_org, :optional => true
  validates :name, presence: true
  validates :user_org, presence: true
end
