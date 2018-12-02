user = User.create!(
    [ {
         email: 'niyi@elektrint.com',
         password: '12345678',
         password_confirmation: '12345678',
         first_name: 'Niyi',
         last_name: 'Ojo',
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
     }]
)

