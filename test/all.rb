#!/usr/bin/env ruby -w
# encoding: UTF-8
#
# = all.rb -- The TaskJuggler III Project Management Software
#
# Copyright (c) 2006, 2007, 2008, 2009, 2010, 2011
#               by Chris Schlaeger <chris@linux.com>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of version 2 of the GNU General Public License as
# published by the Free Software Foundation.
#

Dir.glob(File.dirname(__FILE__) + '/test_*.rb').each { |f| require f }
