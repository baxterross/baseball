# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
team_locations = [
	'Los Angeles',
	'San Diego',
	'San Francisco',
	'Oakland',
	'Lancaster',
	'Inland Empire',
	'Stockton',
	'San Jose',
	'Rancho Cucamonga',
	'Lake Elsinore',
	'Modesto'
]
team_names = [
	'Padres',
	'Dodgers',
	'Giants',
	'Athletics',
	'Jethawks',
	'66ers',
	'Ports',
	'Giants',
	'Quakes',
	'Storm',
	'Nuts'
]

teams = []
10.times do
	teams.push Team.create(
		{name:  [team_locations.sample, team_names.sample].join(' ')},
	)
end

players_first_names = [
	'Hank',
	'Luis',
	'Yogi',
	'Joe',
	'Bobby',
	'David',
	'Madison',
	'Alex',
	'Jackie'
]
players_last_names = [
	'Bumgarner',
	'Ortiz',
	'Rodriguez',
	'Robinson',
	'Canseco',
	'Bonds',
	'Ruth',
	'Bautista',
	'Jeter'
]

players = []
200.times do 
	players.push Player.create(
		{name: [players_first_names.sample	, players_last_names.sample].join(' '), team_id: teams.sample.id}
	)
end

games = []
game_participations = []
200.times do
	game = Game.create(
		{title: '', date: rand(1..1000).days.ago}
	)
		game_participations.push GameParticipation.create([
		{game_id: game.id, team_id: teams.sample.id},
		{game_id: game.id, team_id: teams.sample.id}
	])
	games.push game
end
