class Question < ActiveRecord::Base
  belongs_to :user
  has_many :answers
  
  validates_presence_of :user
  validates_presence_of :title

  before_validation :adds_question_mark
  
  scope :ordered_by_latest_answer, order("updated_at DESC")

  protected

  def adds_question_mark
    self.title << "?" unless self.title =~ /\?$/
  end
end
