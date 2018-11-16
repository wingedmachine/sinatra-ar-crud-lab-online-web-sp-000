class Post < ActiveRecord::Base
  attr_reader :name, :content
  
  def initialize(options)
    @name = options[:name]
    @content = options[:content]
    save
  end
end
