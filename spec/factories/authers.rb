#coding: utf-8
# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :auther do
    sequence(:title) { |n| "title_#{n}" }
    body "内容"
  end
end
