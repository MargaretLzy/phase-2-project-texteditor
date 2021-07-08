class Destination < ApplicationRecord
    has_many :posts
    has_many :bloggers, through: :posts 

    def most_recent
        self.posts.last(5)
    end

    def featured_post
        post = self.posts.max_by { |post| post.likes }
   end

   def average_age
    sum = self.bloggers.sum {|blogger| blogger.age}
    self.bloggers.map {|blogger|sum/bloggers.count}
   end


end
