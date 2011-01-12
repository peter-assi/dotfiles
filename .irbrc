begin
  #rails logger
  if defined? Rails
     Rails.logger = Logger.new(STDOUT)
  end
  # load wirble
  require 'rubygems'
  require 'wirble'

  # start wirble (with color)
  Wirble.init
  Wirble.colorize
rescue LoadError => err
  warn "Couldn't load Wirble: #{err}"
  require 'irb/completion'
end
