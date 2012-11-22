require 'rubygems'
require 'bundler'
require './fonts'

Bundler.require :default, (ENV['RACK_ENV'] || 'development').to_sym

# Defined in ENV on Heroku. To try locally, start memcached and uncomment:
# ENV['MEMCACHE_SERVERS'] = 'localhost'
if memcache_servers = ENV['MEMCACHE_SERVERS']
  use Rack::Cache, verbose:     true,
                   metastore:   "memcached://#{ memcache_servers }",
                   entitystore: "memcached://#{ memcache_servers }"
end


run Fonts