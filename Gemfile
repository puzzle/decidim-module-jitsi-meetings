# frozen_string_literal: true

source "https://rubygems.org"

base_path = ""
base_path = "../" if File.basename(__dir__) == "development_app"
require_relative "#{base_path}lib/decidim/jitsi_meetings/version"

ruby RUBY_VERSION
DECIDIM_VERSION = Decidim::JitsiMeetings.version

gem "decidim", DECIDIM_VERSION
gem "decidim-jitsi_meetings", path: "."

gem "bootsnap", "~> 1.9"

gem "puma", "~> 5.5"
gem "uglifier", "~> 4.2"

group :development, :test do
  gem "byebug", "~> 11.0", platform: :mri

  gem "decidim-dev", DECIDIM_VERSION
end

group :development do
  gem "faker", "~> 1.9"
  gem "letter_opener_web", "~> 1.4"
  gem "listen", "~> 3.7"
  gem "spring", "~> 2.1"
  gem "spring-watcher-listen", "~> 2.0"
  gem "web-console", "~> 3.7"
end
