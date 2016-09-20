class Robot
  attr_reader :name
  def initialize
    @name = Name.new
    @name.save!
  end

  def reset
    initialize
  end
end

class Name
  def initialize
    @value = unique_name
  end

  def save!
    repository << @value
  end

  def to_str
    @value
  end

  private

    def unique_name
      loop do
        template.tap do |name|
          next if repository.include?(name)
          return name
        end
      end
    end

    def template
      random_character + random_character + random_number_string
    end

    def random_character
      ('A'..'Z').to_a.sample
    end

    def random_number_string
      sprintf('%03d', rand(1000))
    end

    def repository
      @@name_repository ||= []
    end
end

module BookKeeping
  VERSION = 2
end
