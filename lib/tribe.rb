class Tribe

  attr_reader :name, :members

  def initialize(options = [])
    @name = options[:name]
    @members = options[:members]
    puts "#{@name} tribe created."
  end

  def to_s
    @name
  end
  
  def tribal_council(options = {})
    immune = options[:immune]
    @members.select { |member| member != immune }.first
  end

end
