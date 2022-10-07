require 'faker'


module Factory
    class Dynamic
        def self.register_new_user
            {
                nome_faker: Faker::Internet.username,
                email_faker: Faker::Internet.email,
                senha_faker: Faker::Internet.password
                
            }
        end
    end
end
