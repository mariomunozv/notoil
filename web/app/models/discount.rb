class Discount < ActiveRecord::Base
	include Filterable
	include Importable
	include Exportable

	self.per_page = 10

	  		belongs_to :product
	  		belongs_to :user
		
	# Validations
			# validates :name, <validations>
			# validates :quantity, <validations>
			# validates :product, <validations>
			# validates :user, <validations>
	
	# Scopes (used for search form)
	#   To search by full text use { where("attribute like ?", "%#{attribute}%") }
	#   To search by string use { where attribute: attribute }
		scope :byname, -> (name) { where("name like ?", "%#{name}%") }
		scope :quantity, -> (quantity) { where quantity: quantity }
		scope :product, -> (product_name) { where("product.name like ?", "%#{product_name}%") }
		scope :user, -> (user_name) { where("user.name like ?", "%#{user_name}%") }
	
end
