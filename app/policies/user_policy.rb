class UserPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end
  def show?
    return record.id == user.id
  end

  def calendar?
    return record.id == user.id
  end
end
