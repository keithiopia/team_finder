require "team_finder"

describe TeamFinder do

  it "knows that UKVI belongs to Red Team" do
    team_finder = TeamFinder.new
    expect(team_finder.team_return("UKVI")).to match "Red Team"
  end

  it "knows that BIS belongs to Team 1" do
    team_finder = TeamFinder.new
    expect(team_finder.team_return("BIS")).to match "Team 1"
  end

end
