require('minitest/autorun')
require('minitest/rg')
require_relative('../team.rb')

class TestTeam < MiniTest::Test

def setup
  @team = Team.new("Teamies", "Coach Dave")
end


def test_coach_name
  @team.coach = "Judy Murray"
  assert_equal("Judy Murray", @team.coach)
end

def test_add_player
  @team.add_player("Andy Murray")
assert_equal(1, @team.players.length)
end

def test_player_in_team
  @team.add_player("Andy Murray")
  result = @team.find_player("Andy Murray")
  assert_equal(true, result)
end

def test_add_points
  @team.add_points(10)
  assert_equal(10, @team.points.count)
end

#
# def test_team_win
#   result = @team.team_win(10)
#   assert_equal("win", result)
# end

end
