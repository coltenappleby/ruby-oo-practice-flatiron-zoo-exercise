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
    



end
