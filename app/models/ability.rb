class Ability
	include CanCan::Ability

	def initialize(user)
		user ||= User.new

		if user.admin?
			can :manage, :all
		else
			can :submit, Project
			can :read, :all
			can :create, Investment
			can :update, Investment do |investment|
				investment.try(:user) == user
			end

		end
	end
end

