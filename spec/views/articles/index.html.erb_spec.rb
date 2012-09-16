#coding:utf-8
require 'spec_helper'

describe "articles/index.html.erb" do
 before do
  assign(
    :articles,[
      Article.new(
        :title => "はじめてのブログ", 
        :body => "こんにちわ" 
      )  
    ]
  )
  render
 end
  
 it "記事のタイトルが表示されてること" do
    rendered.should =~ /はじめてのブログ/
 end

 it "記事の本文が表示されている。" do
    render.should =~ /こんにちわ/
 end





end
