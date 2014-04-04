class USerSerializer < Parapets::Service::Serializer
  version 20140404 do
    attributes :first_name, :last_name, :full_name, :email

    def full_name
      "#{object.first_name} #{object.last_name}"
    end
  end
end
