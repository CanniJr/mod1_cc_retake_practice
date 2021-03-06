class RestaurantOwner
    attr_accessor :name, :age
    
    @@all = []

    def initialize(name, age)
        @name = name
        @age = age
        @@all << self

    end

    def self.all
        @@all
    end

    def restaurants
        Restaurant.all.select do |restaurant|
            restaurant.owner == self
        end
    end

    def menu_items
        restaurants.map do |restaurant|
            restaurant.menu_items
        end
    end

    
        
end