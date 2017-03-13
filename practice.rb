db = {
  users: [
    {
      name: "Richard",
      gender: "male",
      age: 30,
      hair_color: "brown",
      eye_color: "green",
      address: {
        street: "8715 w hwy 71",
        city: "Austin",
        state: "TX",
        zipcode: 78735
      }
    },
    {
      name: "Nicole",
      gender: "female",
      age: 34,
      hair_color: "blonde",
      eye_color: "green",
      address: {
        street: "8715 w hwy 71",
        city: "Austin",
        state: "TX",
        zipcode: 78735
      }
    }
  ]
}

def print_names (users) #=> db[:users]
  users.each do |user| #=> db[:users][0]
    p user[:name]
  end
end

p print_names( db[:users] )

# p db[:users][0][:name]
# p db[:users][1][:gender]
# p db[:users][1][:address][:zipcode]

