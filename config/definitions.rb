# The following comments fill some of the gaps in Solargraph's understanding of
# Rails apps. Since they're all in YARD, they get mapped in Solargraph but
# ignored at runtime.
#
# You can put this file anywhere in the project, as long as it gets included in
# the workspace maps. It's recommended that you keep it in a standalone file
# instead of pasting it into an existing one.
#
# @!parse
#   class ActionController::Base
#     include ActionController::MimeResponds
#     extend ActiveSupport::Callbacks::ClassMethods
#     extend AbstractController::Callbacks::ClassMethods
#   end
#   class ActiveRecord::Base
#     extend ActiveRecord::QueryMethods
#     extend ActiveRecord::FinderMethods
#     extend ActiveRecord::Associations::ClassMethods
#     extend ActiveRecord::Inheritance::ClassMethods
#     include ActiveRecord::Persistence
#     include ActiveModel::API
#     include ActiveModel::AttributeAssignment
#     include ActiveModel::AttributeMethods
#     include ActiveModel::Attributes::ClassMethods
#     include ActiveModel::Callbacks
#     include ActiveModel::Conversion
#     include ActiveModel::Dirty
#     include ActiveModel::Lint::Tests
#     include ActiveModel::Model
#     include ActiveModel::Naming
#     include ActiveModel::SecurePassword::ClassMethods
#     include ActiveModel::Serialization
#     include ActiveModel::Serializers::JSON
#     include ActiveModel::Translation
#     include ActiveModel::Type::Helpers::Mutable
#     include ActiveModel::Type::Helpers::Numeric
#     include ActiveModel::Type::Helpers::TimeValue
#     include ActiveModel::Type::Helpers::Timezone
#     include ActiveModel::Validations
#     extend ActiveModel::EachValidator
#     extend ActiveModel::Validator
#     extend ActiveModel::Error
#     extend ActiveModel::Errors
#     extend ActiveModel::Name
#     extend ActiveModel::NestedError
#     extend ActiveRecord::UnknownAttributeError
#     extend ActiveModel::ValidationError
#     extend ActiveModel::Validator
#   end
#   class ApplicationRecord
#     extend ActiveRecord::Base
#     extend ActiveRecord::QueryMethods
#     extend ActiveRecord::FinderMethods
#     extend ActiveRecord::Associations::ClassMethods
#     extend ActiveRecord::Inheritance::ClassMethods
#     include ActiveRecord::Persistence
#     include ActiveModel::Model
#   end
#   class User
#     extend ActiveRecord::Base
#     extend ActiveRecord::QueryMethods
#     extend ActiveRecord::FinderMethods
#     extend ActiveRecord::Associations::ClassMethods
#     extend ActiveRecord::Inheritance::ClassMethods
#     include ActiveRecord::Persistence
#     include ActiveModel::Model
#   end
# @!override ActiveRecord::FinderMethods#find
#   @overload find(id)
#     @param id [Integer]
#     @return [self]
#   @overload find(list)
#     @param list [Array]
#     @return [Array<self>]
#   @overload find(*args)
#     @return [Array<self>]
#   @return [self, Array<self>]
