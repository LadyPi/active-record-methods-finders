class PizzaShop < Sinatra::Base

	#index
	get '/pizzas' do
		@pizza = Pizza.all
		erb :pizzas
end
# 	#create
# 	post '/pizzas' do
# 		params = {name: "Red Anchovy Delight", sauce: 'red', cheese:true, mushrooms:true, extra_toppings: "anchovies"}
# 		@pizza = Pizza.new(params)
# 		@pizza.save
# end

# 	#show
# 	get '/pizzas/:id' do
# 		@pizza = Pizza.find(params[:id])
# end

# 	update '/pizzas/:id' do
# 		params = {name: "Sloppy Joe", sauce: 'brown', cheese:true, mushrooms:true, extra_toppings: "olives"}
# 		@pizza = Pizza.find(params[:id])
# 		@pizza.upate_attributes(params)
# 		@pizza.save
# end

# # 	patch '/pizzas' do
# # 		# params = {name: "Red Anchovy Delight", sauce: 'red', cheese:true, mushrooms:true, extra_toppings: "anchovies"}
# # 		# @pizza = Pizza.new(params)
# # 		# @pizza.save
# # end

# 	delete '/pizzas/:id' do
# 		@pizza = Pizza.find(params[:id])
# 		@pizza.destroy
# end

	# new = render a new pizza from
		get "/pizzas/new" do
		erb :new
end

	# create new pizza
	post "/pizzas" do
		p params
		# params = {name: "Mrs Robinson", sauce: "red", cheese: true, mushrooms: true, extra_toppings: "virgin olive oil"}
		@pizza = Pizza.create(params[:pizza])
		# @pizza.save
		# "New Pizza Saved"
		redirect "/pizzas"
end

end
