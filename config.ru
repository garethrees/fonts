require 'rubygems'
require 'sinatra'
require 'bundler'
require 'erb'
require 'fistface'

Bundler.require

require './fonts'
$stdout.sync = true

run Fonts.new