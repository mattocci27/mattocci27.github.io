require 'liquid'

# Get initial for first and middle names
module Jekyll

  module Moge
    def ini(string)
      temp = string.split
      temp2 = temp.map{|str|str[0]}.join(". ")
      [temp2, ".,"].join
    end

    def ini_last(string)
      temp = string.split
      temp2 = temp.map{|str|str[0]}.join(". ")
      [temp2, "."].join
    end

    def ini_short(string)
      temp = string.split
      temp2 = temp.map{|str|str[0]}.join("")
      [temp2, ","].join
    end

    def ini2(string)
      temp = string.split
      temp2 = temp.map{|str|str[0]}.join("")
      [temp2, ","].join
    end

    def ini_last2(string)
      temp = string.split
      temp2 = temp.map{|str|str[0]}.join("")
      [temp2, "."].join
    end

  end
end

Liquid::Template.register_filter(Jekyll::Moge)
