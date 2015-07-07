#!/usr/bin/env ruby

require 'json'
require 'open-uri'

GITHUB_EMOJI_JSON = 'https://raw.githubusercontent.com/github/gemoji/master/db/emoji.json'

src_json_path = ARGV[1] || GITHUB_EMOJI_JSON

open(src_json_path) do |file|
  out = {}
  src = JSON.load(file)
  src.each do |entry|
    next unless (emoji = entry['emoji'])
    code = emoji.ord
    entry['aliases'].each do |name|
      out[name] = code
    end
  end
  open('emoji.json', 'w') do |out_file|
    out_file << JSON.pretty_generate(out)
    out_file << "\n"
  end
end
