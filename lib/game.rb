class Game
  
  attr_reader :tribes
  
  def initialize (*tribes)
    @tribes = tribes
  end
  
  def add_tribe(new_tribe)
    @tribes << new_tribe
  end
  
  def immunity_challenge
    @tribes.sample
  end
  
  def clear_tribes
    @tribes.clear
  end
  
  def merge(new_tribe_name)
    combined_members = @tribes.map {|tribe| tribe.members}.flatten
    clear_tribes
    add_tribe Tribe.new(name:new_tribe_name, members: combined_members)
    @tribes[0]
  end
  
  def individual_immunity_challenge
    @tribes[0].members.sample
  end
  
end