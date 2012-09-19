#coding: utf-8
require 'spec_helper'

#modelテストを行う。
describe Article do

  context "titleとbodyを指定した場合" do
    before do
      @article = Article.new
      @article.title = "初めてのブログ"
      @article.body = "最新の記事"
    end

    it "titleがセットされている" do
      @article.title.should == "初めてのブログ"
      
    end
 
    it "bodyがセットされている" do
      @article.body.should == "最新の記事"

    end
  end

  context "titleが設定されていない場合" do
    before do
      @article =Article.new
    end

    it "titleがnilの場合" do
      @article.should_not be_valid
    end
  end


  context "titleが設定されている場合" do
    before do 
      @article = Article.new(:title => "はじめてのブログ")
    end

    it {@article.should be_valid }

  end

  #subjectを利用した場合。subjectはテスト対象を明確にする。
  context "titleが設定されていない場合" do
    subject { Article.new }
    it {subject.should_not be_valid}
  end

  context "titleとbodyを指定した場合" do
    before do
      @article = Article.new(
        :title => "初めてのブログ",
        :body => "最近の記事です"
      )
    end
    subject {@article }
    
    it {subject.title.should == "初めてのブログ"}
    it {subject.body.should == "最近の記事です"}
  end

  #FactorGirlをつかったテストコード。かなりコードがきれいになった
  context "titleが設定されていない場合" do
    before do
      @article = build_article(:title => nil)
    end

    it { @article.should_not be_valid }
  end









end
