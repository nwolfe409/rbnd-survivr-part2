require 'colorizr'

class Tribe

  attr_reader :name, :members

  def initialize(options = [])
    @name = options[:name]
    @members = options[:members]
    puts "#{@name.red} tribe created."
  end

  def to_s
    @name
  end
  
  def tribal_council(options = {})
    immune = options[:immune]
    member_voted_out = @members.select { |member| member != immune }.sample
    @members.delete(member_voted_out)
    puts "#{member_voted_out.to_s.blue} was asked to leave the tribe."
    return member_voted_out
  end

end
