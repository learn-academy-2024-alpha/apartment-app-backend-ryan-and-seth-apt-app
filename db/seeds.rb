user1 = User.where(email: "test1@example.com").first_or_create(password: "password", password_confirmation: "password")
user2 = User.where(email: "test2@example.com").first_or_create(password: "password", password_confirmation: "password")

apartments = [
  {
    street: '129 West 81st Street',
    unit: '5A',
    city: 'NY',
    state: 'NY',
    square_footage: '1,000',
    price: '2000',
    bedrooms: 1,
    bathrooms: 1.0,
    pets: 'no pets allowed',
    image: 'https://www.hollywoodreporter.com/wp-content/uploads/2015/06/seinfeld_apt.jpg',
    about: 'this is a fake about section for this house each of these will be different'
  },

  {
    street: '217 W 57th St',
    unit: 'PH',
    city: 'NY',
    state: 'NY',
    square_footage: '17,545',
    price: '20,000',
    bedrooms: 7,
    bathrooms: 11.0,
    pets: 'pets allowed',
    image: 'https://www.zillow.com/homedetails/217-W-57th-St-PH-New-York-NY-10019/2067603580_zpid/',
    about: 'this is a fake about section for this house each of these will be different. this is a different fake one so its not the same'
  }
]

apartments_two = [
  {
    street: '114 Calle Catalina',
    unit: 'PL',
    city: 'HTX',
    state: 'TX',
    square_footage: '4,954',
    price: '9,900',
    bedrooms: 4,
    bathrooms: 4,
    pets: 'pets allowed',
    image: 'https://www.zillow.com/homedetails/114-Calle-Catalina-Pl-Houston-TX-77007/123237523_zpid/',
    about: 'this is a fake about section for this house each of these will be different. this is a different fake one so its not the same. another different one'
  },

  {
    street: '622 Pink Azalea',
    unit: 'TRL',
    city: 'HTX',
    state: 'TX',
    square_footage: '4,722',
    price: '9,450',
    bedrooms: 4,
    bathrooms: 3.5,
    pets: 'pets allowed',
    image: 'https://www.zillow.com/homedetails/622-Pink-Azalea-Trl-Houston-TX-77079/118162425_zpid/',
    about: 'this is a fake about section for this house each of these will be different. this is a different fake one so its not the same. another different one. and another'
  }
]

apartments.each do |apartment|
  user1.apartments.create(apartment)
end

apartments_two.each do |apartment|
  user2.apartments.create(apartment)
end

