# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
    # user ||= User.new # guest user (not logged in)
      # Everyone:
      can :read, User
         #Users:
      return unless user.present?
      can :manage, User, user_id: user.id
 # Admins:
      return unless user.admin?
      can :manage, :all

      end




      # if user.admin?
      #   can :manage, :all
      #   can :access, :rails_admin       # only allow admin users to access Rails Admin
      #   can :manage, :dashboard
       #elsif user.present?
        #can :read, :all
        #can :manage, Improvement # additional permissions for logged in users (they can read their own posts)
       #else
        # can :read, :all




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
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
  end
