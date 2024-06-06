require 'csv'
require 'yaml'

#activerecord:
#    attributes:
#        user:
#              email: Email
#      name: Name
#            password: Password
#                  password_confirmation: Confirmation
#
@k={"fr" => {
  "models"=>{},
  "activerecord" => {
  "attributes" => {
    "user" => {
      "password" => "Mot de passe",
      "password_confirmation" => "Confirmation du mot de passe"
    }
  }
}
}
}
ActiveRecord::Base.connection.tables.each do |x|
  z=x
  if x[-1] == "s"
    z=x[0..-2]
  end
  if z[0] == "_"
    z=z[1..]
  end
  @k["fr"]["activerecord"]["attributes"][z] ||= {}
  @k["fr"]["models"][z] = ""
  ActiveRecord::Base.connection.columns(x).map(&:name).each do |y|
    @k["fr"]["activerecord"]["attributes"][z][y]=y.titleize
  end
end

File.write("config/locales/fr.yml",@k.to_yaml)
