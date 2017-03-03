puts "Welcome to Moving Cross Country Helper!"
move= {
  "Rent new place"=>[
    'zillow.com',
    'rent.com',
    'amli.com',
    ],
  "Get a moving truck"=>[
    'bidget',
    'uhaul',
    'penske',
    ],
 "Change Address"=>[
   'banks',
   'electricity',
   'internet',
   'credit cards',
    ],
  "Pets"=>[
    'vet visit',
    'up to date on vaccinations',
    'certificate of wellness',
    'business card of old vet',
    ]
}

# puts move

p move["Pets"]
move["Get a moving truck"][0] = "budget"
p move["Get a moving truck"][0]
