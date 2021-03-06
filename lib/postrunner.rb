#!/usr/bin/env ruby -w
# encoding: UTF-8
#
# = postrunner.rb -- PostRunner - Manage the data from your Garmin sport devices.
#
# Copyright (c) 2014 by Chris Schlaeger <cs@taskjuggler.org>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of version 2 of the GNU General Public License as
# published by the Free Software Foundation.
#

# Some dependencies may not be installed as Ruby Gems but as local sources.
# Add them to the LOAD_PATH.
%w( fit4ruby perobs ).each do |lib_dir|
  $:.unshift(File.join(File.dirname(__FILE__), '..', '..', lib_dir, 'lib'))
end
$:.unshift(File.dirname(__FILE__))

require 'postrunner/Main'

module PostRunner

  Main.new(ARGV)

end
