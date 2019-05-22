namespace :sample do
    task :go => :environment do
        
            # head=%w(Time Count)
            # # csv<<head
            # CSV.foreach("cron_status.csv") do |row|
            #     CSV.open("#{Rails.root}/cron_status.csv","w") do |csv|
            #         # csv<<[Time.now]
            #         # attribute=%w(Time Count)
            #         csv<<row
            #         binding.pry
            #     time=Time.now
            #     #    count=i
            #     #    if csv
            #     binding.pry
            #     csv<<[time]
            #     end
            # end
            # binding.pry
            data=CSV.read("#{Rails.root}/cron_status.csv")
            length=data.length
            CSV.open("#{Rails.root}/cron_status.csv","w") do |csv|
               (0..length).each do |i|
               if data[i].present?
               csv<<data[i]
               else
                csv<<["#{Time.now}","#{length}"]
               end
            end
            end
    end
end
