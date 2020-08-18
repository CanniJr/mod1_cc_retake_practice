class Recipe
    attr_accessor :description
    attr_reader :name
    @@all = []

    def initialize(name, description)
        @name = name
        @description = description
        @@all << self
    end

    def self.all
        @@all
    end

    def menu_items
        MenuItem.all.select do |items|
            items.recipe == self
        end
    end

    def restaurants
        menu_items.map do |item|
            item.restaurant
        end
    end

    def average_price
        prices = []
        MenuItem.all.select do |item|
            item.recipe == self
            prices << item.price
            prices.sum / prices.size
        end
    end

    #not using average_price method because it counted average..?
    def highest_price
        MenuItem.all.select do |item|
            item.recipe == self
        end.max
    end

end