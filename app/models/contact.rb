class Contact

  include ActiveModel::Model
  include ActiveModel::Conversion
  include ActiveModel::Validations

  attr_accessor :name, :phone, :email, :content, :honey

  validates :name,
    presence: true

  validates :phone,
    presence: true

  validates :email,
    presence: true

  validates :content,
    presence: true

end
