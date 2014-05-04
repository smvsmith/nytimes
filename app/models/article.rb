class Article < ActiveRecord::Base
  has_many :comments

  validates_presence_of :title, :body
  validates_length_of :title, :body, minimum: 5

  def comments?
    !comments.nil?
  end
end
