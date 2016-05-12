class NewsPolicy < ApplicationPolicy
    attr_readr :user, :news
    
    
    def initialize(user, post)
        @user = user
        @news = news
    end
    
    
    def update?
        user.admin? or not post.published?
    end



end