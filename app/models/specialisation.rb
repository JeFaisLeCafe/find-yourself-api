class Specialisation < ApplicationRecord
    has_many :PolesSpecialisation, dependent: :destroy
    has_many :Poles, through: :PolesSpecialisation
end
