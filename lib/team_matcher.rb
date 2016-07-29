class TeamMatcher

  def department_return(team_name)
    departments_list={}
    departments_list[team_name]=[]
    assignments.each do | department, team |
      departments_list[team_name] = departments_list[team_name].push(department) if team == team_name
    end
    return departments_list unless departments_list[team_name].empty?
    { "Error" => ["That team can't be found, try again (or tell Keith)."]}
  end


  def team_return(department)
    teams_list={}
    assignments.each do | key, value |
      teams_list[key] = [value] if key.split.first == department
    end
    return teams_list unless teams_list.empty?
    { "Error" => ["That department can't be found, try again (or tell Keith)."]}
  end
#TODO: The department_return and team_return give the same thing. Change department_return so it gives all the departments back but the team once. Suggestions: Adding CSS, pushing it to Heroku

  def assignments
    {
      "HMRC business" => "Team 1 (AK's team)",
      "BIS" => "Team 1 (AK's team)",
      "CC" => "Team 1 (AK's team)",
      "CH" => "Team 1 (AK's team)",
      "OME self employed" => "Team 1 (AK's team)",
      "DVSA business" => "Team 1 (AK's team)",
      "DFT business" => "Team 1 (AK's team)",
      "RPA" => "Team 1 (AK's team)",
      "DEFRA" => "Team 1 (AK's team)",
      "DECC" => "Team 1 (AK's team)",
      "EA" => "Team 1 (AK's team)",
      "UKTI" => "Team 1 (AK's team)",
      "CMA" => "Team 1 (AK's team)",
      "IPO" => "Team 1 (AK's team)",
      "UKEF" => "Team 1 (AK's team)",
      "MOD" => "Team 1 (AK's team)",
      "SPVA" => "Team 1 (AK's team)",
      "HMRC personal" => "Team 2 (JT's team)",
      "IS" => "Team 2 (JT's team)",
      "DWP benefits" => "Team 2 (JT's team)",
      "DFE" => "Team 2 (JT's team)",
      "Ofsted" => "Team 2 (JT's team)",
      "EFA" => "Team 2 (JT's team)",
      "SFA" => "Team 2 (JT's team)",
      "SLA" => "Team 2 (JT's team)",
      "LR" => "Team 2 (JT's team)",
      "VOA" => "Team 2 (JT's team)",
      "DCLG" => "Team 2 (JT's team)",
      "DWP disability" => "Team 2 (JT's team)",
      "DFT disability" => "Team 2 (JT's team)",
      "FCO" => "Team 2 (JT's team)",
      "HO births and deaths" => "Team 2 (JT's team)",
      "GRO" => "Team 2 (JT's team)",
      "DFID" => "Team 2 (JT's team)",
      "DCMS" => "Team 2 (JT's team)",
      "UKVI" => "Red Team (JS's team)",
      "HO immigration" => "Red Team" (JS's team),
      "DVLA" => "Red Team" (JS's team),
      "DVSA" => "Red Team" (JS's team),
      "HE" => "Red Team" (JS's team),
      "MHRA" => "Red Team" (JS's team),
      "DH" => "Red Team" (JS's team),
      "PHE" => "Red Team" (JS's team),
      "YJB" => "Red Team" (JS's team),
      "HMCTS" => "Red Team" (JS's team),
      "MOJ" => "Red Team" (JS's team),
      "AGO" => "Red Team" (JS's team),
      "HO crime and security" => "Red Team" (JS's team),
      "Scotland" => "Red Team" (JS's team),
      "Wales" => "Red Team" (JS's team),
      "NI" => "Red Team" (JS's team),
      "ONS" => "Red Team" (JS's team),
      "ESIF" => "Red Team" (JS's team),
      "OME work and pensions" => "Team 4 (AW's team)",
      "HMRC pensions" => "Team 4 (AW's team)",
      "BIS jobs" => "Team 4 (AW's team)",
      "DWP pensions" => "Team 4 (AW's team)",
      "CO" => "Team 4 (AW's team)",
      "HO citizenship" => "Team 4 (AW's team)",
      "G-Cloud" => "Team 4 (AW's team)",
      "CESG" => "Team 4 (AW's team)",
      "GCHQ" => "Team 4 (AW's team)",
      "GDS" => "Team 4 (AW's team)",
      "FCO abroad" => "Team 4 (AW's team)",
      "HO passports" => "Team 4 (AW's team)",
      "HMPO" => "Team 4 (AW's team)",
      "DWP abroad" => "Team 4 (AW's team)",
      "HMT" => "Team 4 (AW's team)",
      "Number 10" => "Team 4 (AW's team)",
      "Deputy PM" => "Team 4 (AW's team)",
      "GEO" => "Team 4 (AW's team)",
      "Fake dept 1 of 4" => "Team 5",
      "Fake dept 2 of 4" => "Team 5",
      "Fake dept 3 of 4" => "Team 5",
      "Fake dept 4 of 4" => "Team 5"
    }
  end

end
