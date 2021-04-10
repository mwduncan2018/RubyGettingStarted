class User
    def fullname
        "Charlie Smith"
    end

    alias username fullname
    alias name username
end

u = User.new

p u.fullname
p u.username
p u.name