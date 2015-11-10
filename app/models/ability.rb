class Ability
  include CanCan::Ability

  def initialize(user)
    if user.andand.admin?
      can :manage, Post
    end

    if user.is_a?(Author)
      can :create, Post
      can :manage, Post, author_id => user.id
    end
  end
end
