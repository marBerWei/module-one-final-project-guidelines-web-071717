voter_data = [{:full_name=>"Stacey Astoveza", :party=>"wrong"},
 {:full_name=>"Martina Weidenbaum", :party=>"wrong"},
 {:full_name=>"Matt Thorry", :party=>"right"},
 {:full_name=>"Yamini Kumawat", :party=>"right"},
 {:full_name=>"Matthew Croak", :party=>"wrong"},
 {:full_name=>"Neil Steiner", :party=>"wrong"},
 {:full_name=>"Jen Volpe", :party=>"right"},
 {:full_name=>"Luke Glayat", :party=>"right"},
 {:full_name=>"James Miele", :party=>"wrong"},
 {:full_name=>"Brigit Rossbach", :party=>"right"}]

 voter_data.each do |voter_d|
 	Voter.create(voter_d)
 end

candidate_data = [{:name=>"Michael Scott", :position=>"Boss", :party=>"wrong"},
 {:name=>"Lindsey Wells", :position=>"Boss", :party=>"right"},
 {:name=>"Alex Griffith", :position=>"Vice Boss", :party=>"right"},
 {:name=>"Dwight Schrute", :position=>"Vice Boss", :party=>"wrong"},
 {:name=>"Johann Kerr", :position=>"Office Manager", :party=>"wrong"},
 {:name=>"Pam Beesly", :position=>"Office Manager", :party=>"right"}]

  candidate_data.each do |candidate_d|
 	Candidate.create(candidate_d)
 end
