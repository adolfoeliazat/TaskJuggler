#!/usr/bin/env ruby -w
# encoding: UTF-8
#
# = XMLDocument.rb -- The TaskJuggler III Project Management Software
#
# Copyright (c) 2006, 2007, 2008, 2009, 2010, 2011
#               by Chris Schlaeger <chris@linux.com>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of version 2 of the GNU General Public License as
# published by the Free Software Foundation.
#

require 'XMLElement'

class TaskJuggler

  # This class provides a rather simple XML document generator. It provides
  # basic features to create a tree of XMLElements and to generate a XML String
  # or file. It's much less powerful than REXML but provides a more efficient
  # API to create XMLDocuments with lots of attributes.
  class XMLDocument

    # Create an empty XML document.
    def initialize
      @elements = []
    end

    # Add a top-level XMLElement.
    def <<(element)
      @elements << element
    end

    # Produce the XMLDocument as String.
    def to_s
      str = ''
      @elements.each do |element|
        str << element.to_s(0)
      end

      str
    end

    # Write the XMLDocument to the specified file.
    def write(filename)
      f = filename == '.' ? $stdout : File.new(filename.untaint, 'w')
      @elements.each do |element|
        f.puts element.to_s(0)
      end
      f.close unless f == $stdout
    end

  end

end

