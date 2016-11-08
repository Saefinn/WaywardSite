class NewsPolicy < ApplicationPolicy
    attr_reader :user, :news
    
    
    def initialize(user, post)
        @user = user
        @news = news
    end
    
    
    def update?
        user.admin? or not post.published?
    end



end