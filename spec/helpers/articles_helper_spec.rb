#coding:utf-8
require 'spec_helper'

# Specs in this file have access to a helper object that includes
# the ArticlesHelper. For example:
#
# describe ArticlesHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       helper.concat_strings("this","that").should == "this that"
#     end
#   end
# end
describe ArticlesHelper do
  
  describe "#posted_on" do
    before do
      @now = Time.now
      @article = Article.create(
        :title => "First Post",
        :body => "Hello"
      )
    end

    it {
      helper.posted_on(@article).should == 
      "#{@now.year}/#{@now.month}/#{@now.day}"
    }
  end





end
