<center><img src="https://github.com/alexcalaca/market_place_api/assets/22925257/bc7ceca7-da97-4ffa-9a83-9c6e78363142" width="300" height="150" align="center"></center>

# Title
> Market place api application  by AC Alexandre Calaça
<br/>

___

## Features
It's a market place app written in Rails 6, it's based on the book [**API on Rails 6**](https://leanpub.com/apionrails6). It uses:

- Git for version control
- JSON for responses
- unit and funcional tests test end-points
- JSON Web Tokens (JWT) to set up authentication
- JSON:API specification
- Optimization and caching the API

___

## Setup
### Requirements
- Ruby 
- Rails 
- Node 
- Postgresql


### Usage
1. Create the database
> rails db:create

2. Perform migrations
> rails db:migrate

3. Install gems and dependencies
> bundle install
> yarn install

4. Populate the database
> rails db:seed

___
### Comments
FastJSON API uses serializers. Serializers represent Ruby classes that
will be responsible for converting a model into a Hash or a JSON.



___


## License

It's available under the terms of the [MIT License](http://opensource.org/licenses/MIT).
