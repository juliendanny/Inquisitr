class Question < ActiveRecord::Base
  has_many :answers
  
  validates_presence_of :title

  before_validation :adds_question_mark

  protected

  def adds_question_mark
    self.title << "?" unless self.title =~ /\?$/
  end
end
