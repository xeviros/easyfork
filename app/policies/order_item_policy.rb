class OrderItemPolicy < ApplicationPolicy
  class Scope < Scope
    # the resolve method defines the scope
    def resolve
      #scope refers to the rest class
      scope.all
    end
  end

  def create?
    !@user.nil?
  end

  def new?
    create?
  end

  def update?
   !@user.nil?
  end

  def edit?
    !@user.nil?
  end

  def destroy?
    !@user.nil?
  end

end
