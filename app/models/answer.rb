class Answer < ActiveRecord::Base
  belongs_to :question
  
  validates_presence_of :question
  validates_presence_of :body 
end
