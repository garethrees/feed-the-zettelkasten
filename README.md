# Feed The Zettelkasten

Command Line Seinfeld calendar for The Archive Zettelkasten notes.

## Installation

    $ gem install feed-the-zettelkasten

## Usage

```
$ feed-the-zettelkasten ~/notes
2020-09-25: ❌
2020-09-26: ✅
2020-09-27: ❌
2020-09-28: ❌
2020-09-29: ❌
2020-09-30: ❌
2020-10-01: ❌
2020-10-02: ✅
2020-10-03: ✅
2020-10-04: ❌

$ feed-the-zettelkasten --help
Usage: feed-the-zettelkasten [options] NOTES_DIR
        --from[=DATE]                Include notes after DATE (default: 30 days ago)
        --to[=DATE]                  Include notes before DATE (default: today)
        --target[=INTEGER]           Number of notes required to meet daily goal (default: 3)
        --ext[=STRING]               Note extension (default: md)
    -v, --version                    Print version
    -h, --help                       Prints this help
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/garethrees/feed-the-zettelkasten.
