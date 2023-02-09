class Ability
  include CanCan::Ability
  def initialize(user)
    user ||= User.new
    if user.is?(:admin)
      can :manage, :all
    else
      can :read, :all
      can :destroy, Post, author: user
      can :destroy, Comment, author: user
    end
  end
end

# if user.is?(:admin)
#   can :manage, :all
# else
#   can :destroy, Post, author_id: user.id
#   can :destroy, Comment, author_id: user.id
# end