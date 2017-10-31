class AddingUsers < ActiveRecord::Migration[5.1]

  def change
    User.new(name: "Jonathan Granados", document: 1032459412, email: "jgranadosmendez@gmail.com", password_hash: "$2a$10$YwAdkTHPmoMbOb/qT8axT.aDWCgDXRtB5WlmpAA5Rli...", password_salt: "$2a$10$YwAdkTHPmoMbOb/qT8axT.").save
    User.new(name: "Test1", document: 123, email: "wea@gmail.com", password_hash: "$2a$10$YwAdkTHPmoMbOb/qT8axT.aDWCgDXRtB5WlmpAA5Rli...", password_salt: "$2a$10$YwAdkTHPmoMbOb/qT8axT.").save
    User.new(name: "Test2", document: 12132, email: "test@gmail.com", password_hash: "$2a$10$YwAdkTHPmoMbOb/qT8axT.aDWCgDXRtB5WlmpAA5Rli...", password_salt: "$2a$10$YwAdkTHPmoMbOb/qT8axT.").save
  end

end
