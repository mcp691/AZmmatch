class Quiz < ApplicationRecord

  def organizations
    @organizations ||= find_organizations
  end

private

  def find_organizations # Parameters of Quiz answers and Organization matches
    organizations = Organization.where("name like ? OR issues like ? OR gender like ? OR skills like ? OR race like ? OR ability like ? OR age like ? OR religion like ? OR class_background like ? OR occupation like ? OR immigration_status like ? OR incarceration_status like ? OR housing_status like ? OR commitment like ?",

    "%#{name}%", "%#{issues}%", "%#{gender}%", "%#{skills}%", "%#{race}%", "%#{ability}%", "%#{age}%", "%#{religion}%", "%#{class_background}%", "%#{occupation}%", "%#{immigration_status}%", "%#{incarceration_status}%", "%#{housing_status}%", "%#{commitment}%")

    organizations
  end

end
