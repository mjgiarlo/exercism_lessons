class Robot
  attr_reader :name
  def initialize
    @name = Name.new
    @name.save!
  end
  alias_method :reset, :initialize
  public :reset
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
      random_letters + random_number_string
    end

    def random_letters
      ('AA'..'ZZ').to_a.sample
    end

    def random_number_string
      ('000'..'999').to_a.sample
    end

    def repository
      @@name_repository ||= []
    end
end

module BookKeeping
  VERSION = 2
end
