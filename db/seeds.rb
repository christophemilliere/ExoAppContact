# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Tag.destroy_all
Contact.destroy_all

tags = %w('Famille Pro Amis autre')
tag_familly = Tag.create!(name: 'Famille')
tag_pro = Tag.create!(name: 'pro')
tag_friend = Tag.create!(name: 'Ami')
tag_other = Tag.create!(name: 'autre')

Contact.create!(lastname: Faker::Name.last_name, firstname: Faker::Name.first_name, phone: Faker::PhoneNumber.subscriber_number(10))
Contact.create!(
                lastname: Faker::Name.last_name,
                firstname: Faker::Name.first_name,
                phone: Faker::PhoneNumber.subscriber_number(10),
                address: Faker::Address.street_address,
                cp: Faker::Address.zip_code,
                city: Faker::Address.state,
                tag: tag_familly
              )

Contact.create!(
                lastname: Faker::Name.last_name,
                firstname: Faker::Name.first_name,
                phone: Faker::PhoneNumber.subscriber_number(10),
                address: Faker::Address.street_address,
                cp: Faker::Address.zip_code,
                city: Faker::Address.state,
                tag: tag_pro
              )

Contact.create!(
                lastname: Faker::Name.last_name,
                firstname: Faker::Name.first_name,
                phone: Faker::PhoneNumber.subscriber_number(10),
                address: Faker::Address.street_address,
                cp: Faker::Address.zip_code,
                city: Faker::Address.state,
                tag: tag_friend
              )

Contact.create!(
                lastname: Faker::Name.last_name,
                firstname: Faker::Name.first_name,
                phone: Faker::PhoneNumber.subscriber_number(10),
                address: Faker::Address.street_address,
                cp: Faker::Address.zip_code,
                city: Faker::Address.state,
                tag: tag_other
              )
