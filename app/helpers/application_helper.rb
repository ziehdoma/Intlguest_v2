module ApplicationHelper
    # protect_from_forgery
	def resource_name
		:student
	end

	def resource
		@resource ||= Student.new
	end

	def devise_mapping
		@devise_mapping ||= Devise.mappings[:student]
	end

	def resource_name
		:family
	end

	def resource
		@resource ||= Family.new
	end

	def devise_mapping
		@devise_mapping ||= Devise.mappings[:family]
	end
end
