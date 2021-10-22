require "csv"

namespace :import do
  desc "Import users from csv"
  task users: :environment do
    filename = File.join Rails.root, "people.csv"
    CSV.read(filename) do |row|
      p row
    end
  end
end