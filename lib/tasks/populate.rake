namespace :db do
  desc "Erase and fill pin database"
  task :populate => :environment do
    require 'populator'
    #require 'faker'
    
    [Ads,Pin].each(&:delete_all)

    Pin.populate 10 do |pin|
      pin.jpin=Populator.words(1..1).titleize
      pin.packagetype=["Silver", "Gold","Platinum"]
      pin.registration_type=["Associate"]
      pin.used=false
    end

    Pin.populate 3 do |pin|
      pin.jpin=Populator.words(1..1).titleize
      pin.packagetype=["Platinum"]
      pin.registration_type=["Franchise"]
      pin.used=false
    end

    Ads.populate 10 do |ads|
      ads.que=Populator.sentences(1..1)
      ads.ans=Populate.words(1..1)
      ads.totalclicks=[1000,1200,1500,2000]
      ads.orgname=Populate.words(1..1)
      ads.category=["Cards and printers", "paint","Education","hardware"]
    end   
    
  end
end