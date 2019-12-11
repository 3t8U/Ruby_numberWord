
# !/usr/bin/env ruby
require ('rspec')
require ('pry')
require ('numberWord.rb')



describe('NumberWord#number_2_word') do
  it ("converts single digit number to it's english counterpart") do
    numTest = NumberWord.new(0)
    expect(numTest.number_2_word()).to(eq('zero'))
  end
end

describe('NumberWord#number_2_word') do
  it ("converts Teen number to it's english counterpart") do
    numTest = NumberWord.new(13)
    expect(numTest.number_2_word()).to(eq('thirteen'))
  end
end

describe('NumberWord#number_2_word') do
  it ("converts double digit non teen number to it's english counterpart") do
    numTest = NumberWord.new(99)
    expect(numTest.number_2_word()).to(eq('ninety nine'))
  end
end
