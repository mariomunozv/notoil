class Product < ActiveRecord::Base
	include Filterable
	include Importable
	include Exportable

	self.per_page = 10

	  		belongs_to :family
		
	# Validations
			# validates :barcode, <validations>
			# validates :brand, <validations>
			# validates :name, <validations>
			# validates :description, <validations>
			# validates :price, <validations>
			# validates :price_net, <validations>
			# validates :family, <validations>
	
	# Scopes (used for search form)
	#   To search by full text use { where("attribute like ?", "%#{attribute}%") }
	#   To search by string use { where attribute: attribute }
		scope :barcode, -> (barcode) { where barcode: barcode }
		scope :brand, -> (brand) { where brand: brand }
		scope :byname, -> (name) { where("name like ?", "%#{name}%") }
		scope :description, -> (description) { where description: description }
		scope :price, -> (price) { where price: price }
		scope :price_net, -> (price_net) { where price_net: price_net }
		scope :family, -> (family_name) { where("family.name like ?", "%#{family_name}%") }
	
end
