## Number-mapper
Map numbers to memorable words combination from provided dictionary

## Run

```shell
# build
docker build -t sfate/number-mapper:latest .

# run
docker run --rm -it sfate/number-mapper:latest bin/number-mapper 1234567890

# run tests
docker run --rm -it sfate/number-mapper:latest rake test
```

## Kudos: 
Test task for http://daxx.com.ua/ company

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Number::Mapper project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/sfate/number-mapper/blob/master/CODE_OF_CONDUCT.md).

## Version: 0.0.1
