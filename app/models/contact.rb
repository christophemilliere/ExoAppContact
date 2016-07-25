class Contact < ActiveRecord::Base
  belongs_to :tag

  validates :lastname, presence: true
  validates :phone, presence: true

  before_save :capitalize_firstname_lastname
  
  scope :search_contact, -> (letter ) { where(" lastname LIKE ?", "#{letter}%") }

  mount_uploader :avatar, AvatarUploader

  def capitalize_firstname_lastname
    self.lastname = lastname.capitalize
    self.firstname = firstname.capitalize
  end

  def fullname
    "#{lastname} #{firstname}"
  end

  def full_address
    return false if address.nil? && cp.nil? && city.nil?
    "#{address} #{cp} #{city}"
  end
end
