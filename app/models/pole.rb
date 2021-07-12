class Pole < ApplicationRecord
    has_many :PolesSpecialisation, dependent: :destroy
    has_many :Specialisations, through: :PolesSpecialisation
    has_many :AnswersPole, dependent: :destroy
    has_many :Answers, through: :AnswersPole
end
