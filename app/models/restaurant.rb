class Restaurant
    attr_accessor :name, :star_rating
    attr_reader :owner

    @@all = []
    
    def initialize(owner, name, star_rating)
        @owner = owner
        @name = name
        @star_rating = star_rating
        @@all << self
    end

    def self.all
        @@all
    end

    def menu_items
        MenuItem.all.select do |item|
            item.restaurant == self
        end
    end

    def recipes
        Recipe.all.select do |recipe|
            recipe.restaurant == self
        end
    end

    def has_dish?(recipe) #<=== include? <argument>
        menu_items.include?(recipe)
    end



end