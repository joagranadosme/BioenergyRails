class AddingData < ActiveRecord::Migration[5.1]

  require 'faker'

  def up

    #area
    Area.new(name: "Gerencia").save
    Area.new(name: "Sistemas").save

    #charge
    Charge.new(name: "Gerente").save
    Charge.new(name: "Ingeniero").save

    #departament
    Departament.new(name: "Administración").save
    Departament.new(name: "Comunicaciones").save

    #role
    Role.new(name: "Evaluador").save
    Role.new(name: "Evaluado").save
    Role.new(name: "EvaluadorEvaluado").save

    User.new(name: "Jonathan Granados", email: "joagranadosmendez@unal.edu.co", document: 1032459412, step: 0, boss: nil, 
      area: Area.find(1), charge: Charge.find(2), departament: Departament.find(2), role: Role.find(2), password: "1234", password_confirmation: "1234").save

    User.new(name: "Alexander Forero", email: "alexander:forero@gmail.com", document: 1234, step: 0, boss: nil,
      area: Area.find(1), charge: Charge.find(1), departament: Departament.find(1), role: Role.find(1), password: "1234", password_confirmation: "1234").save

    User.new(name: "Jonathan Granados", email: "joagranadosmendez@unal.edu.co", document: 1032459412, step: 0, boss: nil,
      area: Area.find(1), charge: Charge.find(2), departament: Departament.find(1), role: Role.find(3), password: "1234", password_confirmation: "1234").save

    for i in 0..20
      User.new(name: Faker::Name.name, email: Faker::Internet.email, document: rand.to_s[2..10], step: 0, boss: nil,
        area: Area.find(1), charge: Charge.find(rand(1..2)), departament: Departament.find(rand(1..2)), role: Role.find(rand(1..3)), password: "1234", password_confirmation: "1234").save
    end
  end


end
