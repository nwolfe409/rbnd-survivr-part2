class Jury
  attr_accessor :members
  
  def initialize
    @members = []
  end
  
  def add_member(name)
    @members << name
  end
  
  def cast_votes(finalists)
    votes ={}
    finalists.each do |finalist|
      votes[finalist] = 0
    end
    @members.each do |member|
      finalist_mark = finalists.sample
      votes[finalist_mark] += 1
      puts "#{member} voted for #{finalist_mark}"
    end
    votes
  end
  
  def report_votes(final_votes)
    final_votes.each do |finalist, vote_count|
 			puts "#{finalist} received #{vote_count} vote(s)."
 		end
  end
  
  def announce_winner(final_votes)
    winner = final_votes.max_by{ |k,v| v }[0]
    puts "#{winner} has won Survivr!"
  end

end