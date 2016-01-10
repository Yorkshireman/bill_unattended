module TestDataHash
  def self.data
    {
      "statement"=>{
        "generated"=>"2015-01-11", 
        "due"=>"2015-01-25", 
        "period"=>{
          "from"=>"2015-01-26", 
          "to"=>"2015-02-25"}
      }, 
      "total"=>136.03, 
      "package"=>{
        "subscriptions"=>[
          {"type"=>"tv", "name"=>"Variety with Movies HD", "cost"=>50.0}, 
          {"type"=>"talk", "name"=>"Sky Talk Anytime", "cost"=>5.0}, 
          {"type"=>"broadband", "name"=>"Fibre Unlimited", "cost"=>16.4}
        ], 
        "total"=>71.4
      }, 
      "callCharges"=>{
        "calls"=>[
          {"called"=>"07716393769", "duration"=>"00:23:03", "cost"=>2.13}, 
          {"called"=>"07716393769", "duration"=>"00:23:03", "cost"=>2.13}, 
          {"called"=>"07716393769", "duration"=>"00:23:03", "cost"=>2.13}, 
          {"called"=>"07716393769", "duration"=>"00:23:03", "cost"=>2.13}, 
          {"called"=>"07716393769", "duration"=>"00:23:03", "cost"=>2.13}, 
          {"called"=>"07716393769", "duration"=>"00:23:03", "cost"=>2.13}, 
          {"called"=>"07716393769", "duration"=>"00:23:03", "cost"=>2.13}, 
          {"called"=>"07716393769", "duration"=>"00:23:03", "cost"=>2.13}, 
          {"called"=>"07716393769", "duration"=>"00:23:03", "cost"=>2.13}, 
          {"called"=>"07716393769", "duration"=>"00:23:03", "cost"=>2.13}, 
          {"called"=>"07716393769", "duration"=>"00:23:03", "cost"=>2.13}, 
          {"called"=>"07716393769", "duration"=>"00:23:03", "cost"=>2.13}, 
          {"called"=>"07716393769", "duration"=>"00:23:03", "cost"=>2.13}, 
          {"called"=>"07716393769", "duration"=>"00:23:03", "cost"=>2.13}, 
          {"called"=>"07716393769", "duration"=>"00:23:03", "cost"=>2.13}, 
          {"called"=>"07716393769", "duration"=>"00:23:03", "cost"=>2.13}, 
          {"called"=>"07716393769", "duration"=>"00:23:03", "cost"=>2.13}, 
          {"called"=>"07716393769", "duration"=>"00:23:03", "cost"=>2.13}, 
          {"called"=>"02074351359", "duration"=>"00:23:03", "cost"=>2.13}, 
          {"called"=>"02074351359", "duration"=>"00:23:03", "cost"=>2.13}, 
          {"called"=>"02074351359", "duration"=>"00:23:03", "cost"=>2.13}, 
          {"called"=>"02074351359", "duration"=>"00:23:03", "cost"=>2.13}, 
          {"called"=>"02074351359", "duration"=>"00:23:03", "cost"=>2.13}, 
          {"called"=>"02074351359", "duration"=>"00:23:03", "cost"=>2.13}, 
          {"called"=>"02074351359", "duration"=>"00:23:03", "cost"=>2.13}, 
          {"called"=>"02074351359", "duration"=>"00:23:03", "cost"=>2.13}, 
          {"called"=>"02074351359", "duration"=>"00:23:03", "cost"=>2.13}, 
          {"called"=>"02074351359", "duration"=>"00:23:03", "cost"=>2.13}
        ], 
        "total"=>59.64
      }, 
      "skyStore"=>{
        "rentals"=>[
          {"title"=>"50 Shades of Grey", "cost"=>4.99}
        ], 
        "buyAndKeep"=>[
          {"title"=>"That's what she said", "cost"=>9.99}, 
          {"title"=>"Broke back mountain", "cost"=>9.99}
        ], 
        "total"=>24.97
      }
    }
  end

  def self.subscriptions
    [
      {"name"=>"Variety with Movies HD", "cost"=>50.0}, 
      {"name"=>"Sky Talk Anytime", "cost"=>5.0}, 
      {"name"=>"Fibre Unlimited", "cost"=>16.4}
    ]
  end
end