class DetailSale < ActiveRecord::Base
	include Filterable
	include Importable
	include Exportable

	self.per_page = 10

	  		belongs_to :sale
	  		belongs_to :product
		
	# Validations
			# validates :name, <validations>
			# validates :quantity, <validations>
			# validates :valor, <validations>
			# validates :sale, <validations>
			# validates :product, <validations>
	
	# Scopes (used for search form)
	#   To search by full text use { where("attribute like ?", "%#{attribute}%") }
	#   To search by string use { where attribute: attribute }
		scope :byname, -> (name) { where("name like ?", "%#{name}%") }
		scope :quantity, -> (quantity) { where quantity: quantity }
		scope :valor, -> (valor) { where valor: valor }
		scope :sale, -> (sale_name) { where("sale.name like ?", "%#{sale_name}%") }
		scope :product, -> (product_name) { where("product.name like ?", "%#{product_name}%") }
	
end
