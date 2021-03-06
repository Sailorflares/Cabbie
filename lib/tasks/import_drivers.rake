require 'csv'

namespace :csv do

  desc "Import CSV Data"
  task :import_drivers => :environment do

    csv_file_path = 'db/fixtures/drivers.csv'

    CSV.foreach(csv_file_path) do |row|
      Driver.create!({
        :medallion_number => row[0],
        :driver_name => row[1]       
      })
      puts "Dirver added!"
    end
  end
end

# 'rake csv:import_drivers' => to run this rake task