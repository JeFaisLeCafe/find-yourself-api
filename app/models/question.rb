class Question < ApplicationRecord
    has_many :Answers, dependent: :destroy
end
