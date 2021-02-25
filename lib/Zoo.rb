class Zoo

    attr_reader :name, :location

    @@all_zoos = []

    def initialize(name_arg, location_arg)
        @name = name_arg
        @location = location_arg
        @@all_zoos << self
    end

    def self.all
        return @@all_zoos
    end
    
    def animals
        Animal.all.select{|animal| animal.zoo == self}
    end 

    def animal_species
        self.animals.map{|animal| animal.species}.uniq
    end

    def find_by_species(species_arg)
        self.animals.select{|animal| animal.species == species_arg}
    end 

    def animal_nicknames
        self.animals.map{|animal| animal.nickname}
    end

end
