# Setup

Require the gem in your `Gemfile` like so:
```
gem 'giant-bomber'
```

Create an instance of the client using your API key from GiantBomb

```
agent = Agent.new(your_key)
```

Note: you may find properties of the content of GiantBomb's database [here](https://www.giantbomb.com/api/documentation)
# Useful Methods

Now that you have your client set up, you can call useful methods like so:

## Grab a game

```
#get a game based on its unique GiantBomb id. Game is a hash with properties
game = agent.game(id)
```


## Generate a lookup hash relating platform name to id

```
#hash contains Strings of platform names as keys, their unique GiantBomb id's as values. The id's are natively Strings in the hash
hash = agent.platform_id_hash
```

## Get a platform
Now that you have a relationship between platform names and ids, you can look up platforms by name
```
#Search for info about a platform, based on its id
gamecube = agent.platform(hash["GameCube"])
```

## Get games by platform

You know the id of the platform you want, so you may get games for just that platform

```
#gamecube_games is an array of hashes with info about gamecube games
gamecube_games = agent.platform_games(hash["GameCube"])
```
