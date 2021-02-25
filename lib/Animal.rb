class Animal

    attr_reader :nickname, :species
    attr_accessor :weight, :zoo

    @@all_animals = [] #call variable

    def self.find_by_species(species_arg)
        @@all_animals.select{|animals|animals.species == species_arg}
    end

    def initialize(species_arg, weight_arg, nickname_arg)
        @species = species_arg
        @weight = weight_arg
        @nickname = nickname_arg
        @@all_animals << self
    end

    def self.all  #class method
        return @@all_animals
    end

end
