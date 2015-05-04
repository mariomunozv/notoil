
scaffold:
	# Your scaffold here
	rails g scaffold product \
		barcode:integer \
		brand:string \
		name:string \
		description: \
		price:integer \
		price_net:integer \
		family:references;

	rails g scaffold family \
		name:string \
		description:string;

	rails g scaffold discount \
		name:string \
		quantity:integer \
		product:references \
		user:references;

	rails g scaffold sale \
		name:string \
		description:string \
		total:integer;

	rails g scaffold detail_sale \
		name:string \
		quantity:integer \
		valor:integer \
		sale:references \
		product:references;


	

destroy:
	# Your destroy here
		rails destroy scaffold product
		rails destroy scaffold family
		rails destroy scaffold discount
		rails destroy scaffold sale
		rails destroy scaffold detail_sale

migrate:
	rake db:drop:all
	rake db:create
	rake db:migrate
	rake db:seed

redo: destroy scaffold migrate
	rails s
