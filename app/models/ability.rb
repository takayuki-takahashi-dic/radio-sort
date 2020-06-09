# frozen_string_literal: true

class Ability
  include CanCan::Ability
  def initialize(user)
    if user.try(:admin?)
      can :access, :rails_admin
      can :manage, :all
    else
      can :access, :rails_admin
      can :read, :all
    end
  end
end
