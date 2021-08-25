class Flat < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  validates :name, :address, presence: true

  # Caso tenha endereço em vários atributos
  # def address
  #   "#{street}, #{number}"
  # end
end
