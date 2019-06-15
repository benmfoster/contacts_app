class Contact < ApplicationRecord

   belongs_to :user
   has_many :groups, through: :contact_groups

	def friendly_updated_at
		created_at.strftime("%A, %b %d")
	end

	def full_name
		"#{first_name} #{last_name}"
	end

	def feeling_japanese
		"+81 #{phone_number}"
	end

	validates :first_name, :last_name, presence: true
	validates :email, uniqueness: true

end
