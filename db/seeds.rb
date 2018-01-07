user = User.create!(
    [{
         email: 'peter@test.com',
         password: '12345678',
         password_confirmation: '12345678',
         first_name: 'Pastor',
         last_name: 'Peter',
         role: 0
     }, {
         email: 'unyime@test.com',
         password: '12345678',
         password_confirmation: '12345678',
         first_name: 'Tutu',
         last_name: 'Adigwe',
         role: 0
     }, {
         email: 'o.dania@icloud.com',
         password: '12345678',
         password_confirmation: '12345678',
         first_name: 'Danny',
         last_name: 'Boy',
         role: 0
     }, {
         email: 'o.dania@aol.com',
         password: '12345678',
         password_confirmation: '12345678',
         first_name: 'OJ',
         last_name: 'Dania',
         role: 1
     }, {
         email: 'tobias@gmail.com',
         password: '12345678',
         password_confirmation: '12345678',
         first_name: 'Toby',
         last_name: 'Dania',
         role: 2
     }]
)

