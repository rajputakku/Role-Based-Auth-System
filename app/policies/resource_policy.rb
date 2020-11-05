class ResourcePolicy < ApplicationPolicy
    def index?
      true
    end
   
    def create?
      user.present?
    end

    def show?
        user.present?
    end
   
    def update?
      return true if (user.present? && user == resource.user) || user.is_super_admin? || user.is_admin?
    end
   
    def destroy?
      return true if (user.present? && user == resource.user) || user.is_super_admin? 
    end
   
    private
   
      def resource
        record
      end
  end