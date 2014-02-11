class Questionnaire < ActiveRecord::Base
	belongs_to :deck
	has_many :lessonrelationships, dependent: :destroy
	has_many :learners, through: :cardrelationships, source: :user
	has_many :questionnaire_answers
	validates :deck_id, presence: true
	validates :question, presence: true
end
