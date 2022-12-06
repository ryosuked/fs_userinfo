# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)

    if user
      can :read, :all

      if user.grants.exists?(name: :manage_admin_user_grant)
        can :manage, AdminUser
      end

      if user.grants.exists?(name: :manage_personal)
        can :manage, UserPersonal
      end

      if user.grants.exists?(name: :read_personal_grant)
        can :read, UserPersonal
      end

      if user.grants.exists?(name: :manage_user_identification)
        can :manage, User
      end
    end

    # Define abilities for the user here. For example:
    #
    #   return unless user.present?
    #   can :read, :all
    #   return unless user.admin?
    #   can :manage, :all
    #
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, published: true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/blob/develop/docs/define_check_abilities.md
  end
end
