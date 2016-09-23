require "team_matcher"

describe TeamMatcher do

  it "knows that UKVI belongs to Red Team" do
    team_matcher = TeamMatcher.new
    expect(team_matcher.team_return("UKVI")).to eq({"UKVI" => ["Red Team (JS's team)"]})
  end

  it "knows that BEIS belongs to Team 1 and BEIS jobs belongs to team 4" do
    team_matcher = TeamMatcher.new
    expect(team_matcher.team_return("BEIS")).to eq({"BEIS" => ["Team 1 (AK's team)"], "BEIS jobs" => ["Team 4 (AW's team)"]})
  end

  it "returns team 2, red team and team 4 when you search for HO" do
    team_matcher = TeamMatcher.new
    expect(team_matcher.team_return("HO")).to eq({"HO births and deaths" => ["Team 2 (JT's team)"], "HO immigration" => ["Red Team (JS's team)"], "HO crime and security" => ["Red Team (JS's team)"], "HO citizenship" => ["Team 4 (AW's team)"], "HO passports" => ["Team 4 (AW's team)"]})
  end

  it "returns an error message if no departments are found" do
    team_matcher = TeamMatcher.new
    expect(team_matcher.team_return("errordept")).to eq({"Error"=>["That department can't be found, try again (or tell Keith)."]})
  end

  it "returns a list of departments when you search for a team" do
    team_matcher = TeamMatcher.new
    expect(team_matcher.department_return("Team 5")).to eq({"Team 5"=>["Fake dept 1 of 4", "Fake dept 2 of 4", "Fake dept 3 of 4", "Fake dept 4 of 4"]})
  end

  it "returns a list of Red Team's departments when you search for Red Team" do
    team_matcher = TeamMatcher.new
    expect(team_matcher.department_return("Red Team")).to include({"Red Team" => ["UKVI", "HO immigration", "DVLA", "DVSA", "HE", "MHRA", "DH", "PHE", "YJB", "HMCTS", "MOJ", "AGO", "HO crime and security", "Scotland", "Wales", "NI", "ONS", "ESIF"]})
  end

  it "isn't so strict about always having department names in capitals" do
    team_matcher = TeamMatcher.new
    expect(team_matcher.team_return("gds")).to eq({"GDS" => ["Team 4 (AW's team)"]})
  end

  it "returns an error message if no teams are found" do
    team_matcher = TeamMatcher.new
    expect(team_matcher.department_return("noteam")).to eq({"Error"=>["That team can't be found, try again (or tell Keith)."]})
  end
end
