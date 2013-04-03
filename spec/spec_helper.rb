require 'rubygems'
require 'bundler'

Bundler.require :default, :test

$:<<File.expand_path("../../lib",__FILE__)

Combustion.initialize! :active_record, :action_controller, :action_view, :sprockets

require 'minitest/spec'
require "minitest/autorun"
