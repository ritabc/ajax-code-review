class Seed

  def self.begin
    Product.destroy_all
    User.destroy_all
    seed = Seed.new
    seed.generate_products
    seed.generate_users
  end

  def generate_users
    User.create(name: 'name123', password: 'password123', email:  'test123@test.com', admin: true)
    User.create(name: 'name321', password: 'password321', email: 'test321@test.com', admin: false)
  end

  def generate_products
    20.times do
      Product.create!(name: Faker::Lorem.word, price: rand(10...100), description: Faker::Lorem.sentence(5, false, 0).chop, image: Faker::LoremFlickr.image)
    end
  end
end

Seed.begin
