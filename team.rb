class Team

  attr_accessor :team_name, :coach, :players

  def initialize (team_name, coach)
    @team_name = team_name
    @coach = coach
    @players = []
    @points = [0]
  end


  def add_player(new_player)
    @players << new_player
  end

  def find_player(found_player)
    for player in @players
      if player == found_player
        return true
      end
    end
    return false
  end

def add_points(points)
  @points << points
end

  # def team_win(points)
  #   for points in @points
  #     if points > 1
  #       return "win"
  #     end
  #   end
  #   return "lose"
  # end

end
