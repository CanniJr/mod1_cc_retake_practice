class MenuItem
    attr_accessor :price, :restaurant, :recipe
    @@all = []

    def initialize(restaurant, recipe, price)
        @restaurant = restaurant
        @recipe = recipe
        @price = price
        @@all << self
    end

    def self.all
        @@all
    end

    def owner #call out owner on MenuItem instance
        self.restaurant.owner
    end

    # def self.most_expensive

    # end
end