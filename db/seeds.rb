User.create(email: "", password: 'password', username: '', type: "pro")


genres = %w(Horror Comedy Romance Thriller Action Adventure Drama)
genres.each do |g|
  Genre.create(data: g)
end

Project.create(user_id: 1, title: "The Deadly Hacker Attack", budget_size: 10_000_000)
Project.find(1).genres << Genre.find(1)
Project.find(1).genres << Genre.find(2)

Sale.create(project_id: 1)

Territory.create(sale_id: 1)

TerritoryHistory.create(territory_id: 1, data: "USA")

Bid.create(sale_id: 1)

BidHistory.create(bid_id: 1, data: 50)

Ask.create(sale_id: 1)

AskHistory.create(ask_id: 1, data: 100)

Close.create(sale_id: 1)

CloseHistory.create(close_id: 1, data: 75)

CloseDate.create(sale_id: 1)

CloseDateHistory.create(close_date_id: 1, data: DateTime.now)