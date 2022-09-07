# 🐾 Wanpo

A marketplace website to help connect people with dog walkers around Tokyo

![Hero Page](https://i.postimg.cc/15qkYfpW/Screen-Shot-2022-09-07-at-14-03-17.png)
![Dogsitters Page](https://i.postimg.cc/8kJkNkRv/Screen-Shot-2022-09-07-at-14-03-42.png)
![Dog Cards](https://i.postimg.cc/KYpFhC4Q/Screen-Shot-2022-09-07-at-14-04-00.png)
<br>
App home: https://wanpo.herokuapp.com/
   

## Getting Started
### Setup

Install gems
```
bundle install
```
Install JS packages
```
yarn install
```

### ENV Variables
Create `.env` file
```
touch .env
```
Inside `.env`, set these variables. For any APIs, see group Slack channel.
```
CLOUDINARY_URL=your_own_cloudinary_url_key
```

### DB Setup
```
rails db:create
rails db:migrate
rails db:seed
```

### Run a server
```
rails s
```

## Built With
- [Rails 7](https://guides.rubyonrails.org/) - Backend / Front-end
- [Stimulus JS](https://stimulus.hotwired.dev/) - Front-end JS
- [Heroku](https://heroku.com/) - Deployment
- [PostgreSQL](https://www.postgresql.org/) - Database
- [Bootstrap](https://getbootstrap.com/) — Styling
- [Figma](https://www.figma.com) — Prototyping

## Team Members
- Sara Jessome
- [Louise Leigh Capala](https://www.linkedin.com/in/louiseleighhh/)
- [Rajan Ladwa](https://www.linkedin.com/in/rajan-ladwa-95716742/)
- Michelle Barrie

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## License
This project is licensed under the MIT License
