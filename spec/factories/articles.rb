#coding: utf-8
# Read about factories at https://github.com/thoughtbot/factory_girl

#FactoryGirlのデータを定義する。
FactoryGirl.define do

  factory :article do
    title "初めてのブログ"
    body "ブログはじめました"
  end

  #parentを利用して、articleのデータを引き継ぐ
  factory :copy,:parent => :article do
    title "ブログ"
  end

  #sequenceを使って、ユニークのデータをつくる場合
  #factory :article do
  #  sequence(:title) { |n| "初めてのブログ_#{n}" }   
  #  body "ブログはじめました"
  #end

end














