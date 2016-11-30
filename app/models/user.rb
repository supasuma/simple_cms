class User < ApplicationRecord
    # this allows User class to find table it relates to, as we changed table from users to admin_users.
    # Could also change file to admin_user and class to AdminUser.
    self.table_name = 'admin_users'
end
