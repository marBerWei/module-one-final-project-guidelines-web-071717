
Voter.delete_all
Vote.delete_all
Candidate.delete_all


voter_data = [{:full_name=>"stacey astoveza", :party=>"wrong"},
 {:full_name=>"martina weidenbaum", :party=>"wrong"},
 {:full_name=>"matt thorry", :party=>"right"},
 {:full_name=>"yamini kumawat", :party=>"right"},
 {:full_name=>"matthew croak", :party=>"wrong"},
 {:full_name=>"neil steiner", :party=>"wrong"},
 {:full_name=>"jen volpe", :party=>"right"},
 {:full_name=>"luke glayat", :party=>"right"},
 {:full_name=>"james miele", :party=>"wrong"},
 {:full_name=>"brigit rossbach", :party=>"right"},
<<<<<<< HEAD
 {:full_name=>"collen williams", :party=>"wrong"},
 {:full_name=>"isabelle letaconnoux", :party=>"right"},
 {:full_name=>"gabriela d'avila ferrera", :party=>"right"},
 {:full_name=>"joshua lacey", :party=>"wrong"},
 {:full_name=>"roman mulladzhanov", :party=>"right"},
 {:full_name=>"zali perlow", :party=>"wrong"},
 {:full_name=>"gianpaul rachiele", :party=>"right"},
 {:full_name=>"daniel kushel", :party=>"right"},
 {:full_name=>"kenny lin", :party=>"wrong"},
 {:full_name=>"dean banik", :party=>"right"},
 {:full_name=>"hui wang", :party=>"wrong"},
 {:full_name=>"tim freeman", :party=>"right"}]
=======
 {:full_name=>"kesean woodhouse", :party=>"right"},
{:full_name=>"david epstein", :party=>"wrong"}]
>>>>>>> 098fe253cbc2201016f22495cc7047110ff9b6c9

 voter_data.each do |voter_d|
 	Voter.create(voter_d)
 end

candidate_data = [{:name=>"michael scott", :position=>"boss", :party=>"wrong"},
 {:name=>"lindsey wells", :position=>"boss", :party=>"right"},
 {:name=>"alex griffith", :position=>"vice boss", :party=>"right"},
 {:name=>"dwight schrute", :position=>"vice boss", :party=>"wrong"},
 {:name=>"johann kerr", :position=>"office manager", :party=>"wrong"},
 {:name=>"pam beesly", :position=>"office manager", :party=>"right"}]

  candidate_data.each do |candidate_d|
 	Candidate.create(candidate_d)
 end


