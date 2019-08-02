class Client < ApplicationRecord

  validates :name, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true, format:{:with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/}
  
  def self.search(search)
    where("name LIKE ? OR email LIKE ?", "%#{search}%", "%#{search}%")
  end

end
