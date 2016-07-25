class Tag < ActiveRecord::Base
  has_many :contacts

  validates :name, presence: true

  before_save :capitalize_name

  def capitalize_name
    self.name = name.capitalize
  end
end
