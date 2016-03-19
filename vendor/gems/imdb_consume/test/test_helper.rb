$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'imdb_consume'

require 'minitest/autorun'
require 'mocha/mini_test'
require 'json' # converting objects to and from json
require 'active_support/all' # need .present?
