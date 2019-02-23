class RestaurantPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      #record
      #user
      scope.all
    end
  end

  def show?
    true

    # record = @restaurant
    # user = current_user

    # only show individual record that was owned by user
    # user.admin
  end

  def create?
    # record
    # user
    user.nil? == false
  end

  def destroy?
    # only destroy restaurant that i owned
    record.user == user
  end

  def update?
    destroy?
  end
end
