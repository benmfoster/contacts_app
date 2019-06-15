class Group < ApplicationRecord
	has_many :contacts :through :contact_groups
end
