# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

product = Product.new(product_name: "2024 Subaru Crosstrek", product_price: 24000, image_url: "https://di-uploads-pod46.dealerinspire.com/southernteamsubaru/uploads/2023/02/2024-subaru-crosstrek-front-three-quarters.jpg", product_description: "Gray")
product.save
product = Product.new(product_name: "2024 Toyota RAV4", product_price: 34000, image_url: "https://cdn.motor1.com/images/mgl/RqnKe3/s1/toyota-rav4-gr-sport.webp", product_description: "Red")
product.save
