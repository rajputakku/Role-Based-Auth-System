Prerequisites
The setups steps expect following tools installed on the system.

Github
Ruby [6.0.3]
Rails [2.5.3]

1. Check out the repository
   git clone https://github.com/rajputakku/Role-Based-Auth-System.git cd cd Role-Based-Auth-System

2. Install dependencies
   bundle install

3. Create and setup the database
   Run the following commands to create and setup the database.

rails db:create db:migrate db:seed

4. Start the Rails server
   You can start the rails server using the command given below.

rails s

5. Super Admin Credential
   email: super_admin@gmail.com
   password: 123456

6. Admin Credential
   email: admin@gmail.com
   password: 123456

And now you can visit the site with the URL http://localhost:3000
