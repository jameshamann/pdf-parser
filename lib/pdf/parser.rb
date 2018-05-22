require "pdf/parser/version"
require 'nokogiri'
require 'origami'

include Origami

class String
  def string_between_markers marker1, marker2
    self[/#{Regexp.escape(marker1)}(.*?)#{Regexp.escape(marker2)}/m, 1]
  end
end

module Pdf
  module Parser
    def self.parse(pdf, print_option = "")
      parsed = PDF.read(pdf)
      data = parsed.grep("><xfa:data")
      string = data.to_s
      val = string.string_between_markers('<xfa:data\n>', '</xfa:data\n>')
      encoded = val.encode("ASCII-8BIT").force_encoding("utf-8")
      final = encoded.gsub('\n','')
      xml = Nokogiri::XML(final).to_xml
      doc = Nokogiri::XML(xml)
      puts doc if print_option == true
      return doc
    end
  end
end
