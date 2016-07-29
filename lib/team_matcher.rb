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
      "HMRC business" => "Team 1",
      "BIS" => "Team 1",
      "CC" => "Team 1",
      "CH" => "Team 1",
      "OME self employed" => "Team 1",
      "DVSA business" => "Team 1",
      "DFT business" => "Team 1",
      "RPA" => "Team 1",
      "DEFRA" => "Team 1",
      "DECC" => "Team 1",
      "EA" => "Team 1",
      "UKTI" => "Team 1",
      "CMA" => "Team 1",
      "IPO" => "Team 1",
      "UKEF" => "Team 1",
      "MOD" => "Team 1",
      "SPVA" => "Team 1",
      "HMRC personal" => "Team 2",
      "IS" => "Team 2",
      "DWP benefits" => "Team 2",
      "DFE" => "Team 2",
      "Ofsted" => "Team 2",
      "EFA" => "Team 2",
      "SFA" => "Team 2",
      "SLA" => "Team 2",
      "LR" => "Team 2",
      "VOA" => "Team 2",
      "DCLG" => "Team 2",
      "DWP disability" => "Team 2",
      "DFT disability" => "Team 2",
      "FCO" => "Team 2",
      "HO births and deaths" => "Team 2",
      "GRO" => "Team 2",
      "DFID" => "Team 2",
      "DCMS" => "Team 2",
      "UKVI" => "Red Team",
      "HO immigration" => "Red Team",
      "DVLA" => "Red Team",
      "DVSA" => "Red Team",
      "HE" => "Red Team",
      "MHRA" => "Red Team",
      "DH" => "Red Team",
      "PHE" => "Red Team",
      "YJB" => "Red Team",
      "HMCTS" => "Red Team",
      "MOJ" => "Red Team",
      "AGO" => "Red Team",
      "HO crime and security" => "Red Team",
      "Scotland" => "Red Team",
      "Wales" => "Red Team",
      "NI" => "Red Team",
      "ONS" => "Red Team",
      "ESIF" => "Red Team",
      "OME work and pensions" => "Team 4",
      "HMRC pensions" => "Team 4",
      "BIS jobs" => "Team 4",
      "DWP pensions" => "Team 4",
      "CO" => "Team 4",
      "HO citizenship" => "Team 4",
      "G-Cloud" => "Team 4",
      "CESG" => "Team 4",
      "GCHQ" => "Team 4",
      "GDS" => "Team 4",
      "FCO abroad" => "Team 4",
      "HO passports" => "Team 4",
      "HMPO" => "Team 4",
      "DWP abroad" => "Team 4",
      "HMT" => "Team 4",
      "Number 10" => "Team 4",
      "Deputy PM" => "Team 4",
      "GEO" => "Team 4",
      "Fake dept 1 of 4" => "Team 5",
      "Fake dept 2 of 4" => "Team 5",
      "Fake dept 3 of 4" => "Team 5",
      "Fake dept 4 of 4" => "Team 5"
    }
  end

end
