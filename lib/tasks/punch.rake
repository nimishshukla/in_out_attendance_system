desc "Time in out"
task :punch => :environment do
  if Attendence.exists?(:today => Date.today)
    att = Attendence.find_by_today(Date.today)
    att.timeout = Time.now
    att.save    
  else
    if Date.today.at_end_of_week-2 == Date.today
       Backup.create(:data => Attendence.all.collect{ |a| [a.today, a.timein, a.timeout]})
    end
    Attendence.create(:today => Date.today, :timein => Time.now, :timeout => Time.now)
  end
end
