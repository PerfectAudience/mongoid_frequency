mongoid_frequency
=================

`mongoid_frequency` adds syntactic sugar for generating frequency maps using the mongodb aggregation framework.

# Installation

Install directly from rubygems:

```ruby
gem install mongoid_frequency
```

Or if you are using a Gemfile, place this in your Gemfile:

```ruby
gem 'mongoid_frequency'
```

# Demo

```ruby
> Book.all.frequency :genre
=> {"Adventure" => 12,
"Sci-fi" => 8,
"Romance" => 4,
"Non-Fiction" => 7}

> Book.collection.freq :genre
=> {"Adventure" => 12,
"Sci-fi" => 8,
"Romance" => 4,
"Non-Fiction" => 7}

> Book.collection.freq :genre, :published.lt => 40.years.ago
=> {"Sci-fi" => 2,
"Romance" => 1}

> author.books.freq :genre
=> {"Romance" => 2,
"Non-Fiction" => 1}
```

# Contributing

1. Fork it
2. Make your changes
3. Write/update tests. Run with `rake`.
4. Issue a Pull Request

# License

MIT. Go nuts.
