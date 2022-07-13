class Comment < ApplicationRecord
  belongs_to :author, class_name: 'User'
  belongs_to :post
  
  after_save :update_comments_counter

  def self.update_comments_counter(post)
    post.increment!(:comments_counter)
  end
end
