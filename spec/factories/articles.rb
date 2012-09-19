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



end














