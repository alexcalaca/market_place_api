Product.delete_all
User.delete_all

3.times do
	user = User.create! email: Faker::Internet.email, password:
	'default'
	puts "User #{user.email} ID #{user.id} created"

	2.times do
		product = Product.create!(
			title: Faker::Commerce.product_name,
			price: rand(1.0..100.0),
			published: true,
			user_id: user.id
		)
	puts "Product: #{product.title} assigned to #{product.user.email} id #{product.user.id}"
	end
	puts "#######################################################"
end
