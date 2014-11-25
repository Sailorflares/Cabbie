require 'csv'

namespace :csv do

  desc "Import CSV Data"
  task :import_summonses => :environment do

    csv_file_path = 'db/fixtures/fhv_summonses.csv'

    CSV.foreach(csv_file_path) do |row|
      v = Violation.new({
        :license_number => row[0],
        :date => row[2],
        :charge => row[3],
        :description => row[4]       
      })
      found_driver = Driver.find_by(:medallion_number => row[0])
      v.driver_id = found_driver.id if found_driver != nil
      v.save
      puts "Dirver violation added!"
    end
  end
end