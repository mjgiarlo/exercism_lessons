class Robot
  @@used_names = []

  attr_reader :name
  def initialize
    @name = factory_name
    register_name!
  end

  def reset
    initialize
  end

  private

    def factory_name
      loop do
        (random_letter + random_letter + random_number).tap do |name|
          next if @@used_names.include?(name)
          return name
        end
      end
    end

    def random_letter
      ('A'..'Z').to_a.sample
    end

    def random_number
      sprintf('%03d', rand(1000))
    end

    def register_name!
      @@used_names << name
    end
end

module BookKeeping
  VERSION = 2
end
