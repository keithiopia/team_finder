require "team_matcher"

describe TeamMatcher do

  it "knows that UKVI belongs to Red Team" do
    team_matcher = TeamMatcher.new
    expect(team_matcher.team_return("UKVI")).to eq({"UKVI" => ["Red Team"]})
  end

  it "knows that BIS belongs to Team 1 and BIS jobs belongs to team 4" do
    team_matcher = TeamMatcher.new
    expect(team_matcher.team_return("BIS")).to eq({"BIS" => ["Team 1"], "BIS jobs" => ["Team 4"]})
  end

  it "returns team 2, red team and team 4 when you search for HO" do
    team_matcher = TeamMatcher.new
    expect(team_matcher.team_return("HO")).to eq({"HO births and deaths" => ["Team 2"], "HO immigration" => ["Red Team"], "HO crime and security" => ["Red Team"], "HO citizenship" => ["Team 4"], "HO passports" => ["Team 4"]})
  end

  it "returns an error message if no departments are found" do
    team_matcher = TeamMatcher.new
    expect(team_matcher.team_return("errordept")).to eq({"Error"=>["That department can't be found, try again (or tell Keith)."]})
  end

  it "returns a list of departments when you search for a team" do
    team_matcher = TeamMatcher.new
    expect(team_matcher.department_return("Team 5")).to eq({"Team 5"=>["Fake dept 1 of 4", "Fake dept 2 of 4", "Fake dept 3 of 4", "Fake dept 4 of 4"]})
  end

  it "isn't so strict about always having department names in capitals" do
    team_matcher = TeamMatcher.new
    expect(team_matcher.team_return("gds")).to eq({"GDS" => ["Team 4"]})
  end

  it "returns an error message if no teams are found" do
    team_matcher = TeamMatcher.new
    expect(team_matcher.department_return("noteam")).to eq({"Error"=>["That team can't be found, try again (or tell Keith)."]})
  end
end
