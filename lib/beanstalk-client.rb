# beanstalk-client.rb - client library for beanstalk

# Copyright (C) 2007 Philotic Inc.

# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

$:.unshift(File.dirname(__FILE__))

module Beanstalk
  extend self

  attr_accessor :select
end

require 'beanstalk-client/connection'
require 'beanstalk-client/errors'
require 'beanstalk-client/job'

# overrides for IronMQ

module Beanstalk
  class Connection

    def auth(token)
      interact("auth #{token}\r\n",
               %w(OK))
    end

    def read_job(word)
      id, bytes = check_resp(word) #.map { |s| s.to_i }
      bytes = bytes.to_i
      body = read_bytes(bytes)
      raise 'bad trailer' if read_bytes(2) != "\r\n"
      [id, body, word == 'RESERVED']
    end
  end
end
