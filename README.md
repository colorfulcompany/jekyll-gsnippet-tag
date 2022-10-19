# Jekyll Gsnippet Tag

Google snippet for Jekyll.

## Installation

Add this line to your application's Gemfile:

```ruby
gem "gsnippet", github: "colorfulcompany/gsnippet"

group :jekyll_plugins do
  gem "jekyll-gsnippet-tag", github: "colorfulcompany/jekyll-gsnippet-tag"
end
```

```
bundle
```

```yml
# _config.yml
plugins: [jekyll-gsnippet-tag]
```

## Usage

### Google Tag Manager
```bash
$ bundle exec gsnippet tagmanager extract "https://tagassistant.google.com/#source=TAG_MANAGER&id=GTM-1234567&gtm_auth=xxx&gtm_preview=env-1"
✔️ Extract GTM parameters from the specified URL!
GTM_CONTAINER=GTM-1234567
GTM_AUTH=xxx
GTM_PREVIEW=env-1
```

```html
<head>
    {% gtm_head_snippet %}
</head>
<body>
    {% gtm_body_snippet %}
</body>
<!-- ... -->
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).
