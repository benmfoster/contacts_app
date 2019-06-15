json.id contact.id
json.first_name contact.first_name
json.last_name contact.last_name
json.phone_number contact.phone_number
json.email contact.email
json.address contact.address

json.user do 
	contact.user.id
	contact.user.email
	contact.user.password_digest
end
