class User < ActiveRecord::Base
  include Clearance::User
  
  has_many :questions
  has_many :answers
  
  def to_s
    username
  end
end
