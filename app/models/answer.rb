class Answer < ApplicationRecord
    has_many :AnswersPole, dependent: :destroy
    has_many :Poles, through: :AnswersPole
    belongs_to :Question
end
