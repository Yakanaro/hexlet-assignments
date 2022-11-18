# frozen_string_literal: true

require 'uri'

# BEGIN
class Url
  include Comparable

  def <=>(other)
    @url <=> other
  end

  def initialize(url)
    @url = url
  end

  def host
    uri = URI(@url)
    uri.host
  end

  def scheme
    uri = URI(@url)
    uri.scheme
  end

  def query_params
    uri = URI(@url)
    uri_query = uri.query
    result = {}
    if uri_query.nil?
      {}
    else
      ary = Hash[URI.decode_www_form(uri_query)]
      result = ary.transform_keys(&:to_sym)
    end
    result
  end

  # def query_params
  # uri = URI(@url)
  # uri_query = uri.query
  # result = {}
  # if uri_query.nil?
  # {}
  # else
  # ary = Hash[URI.decode_www_form(uri_query)]
  # result = ary.symbolize_keys
  # end
  # result
  # end
  def query_param(keys, value = nil)
    new_url = Url.new(@url)
    obj = new_url.query_params
    return obj[keys] if obj.key?(keys)

    value
  end
end

# END
