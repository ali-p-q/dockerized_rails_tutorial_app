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
#     include ActiveRecord::Callbacks::ClassMethods
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
#     extend ActiveModel::ValidationError
#     extend ActiveModel::Validator
#     require 'abbrev'
#     require 'base64'
#     require 'benchmark'
#     require 'bigdecimal'
#     require 'bundler'
#     require 'cgi'
#     require 'coverage'
#     require 'csv'
#     require 'date'
#     require 'delegate'
#     require 'did_you_mean'
#     require 'digest'
#     require 'drb'
#     require 'English'
#     require 'erb'
#     require 'error_highlight'
#     require 'expect'
#     require 'fiddle'
#     require 'fileutils'
#     require 'find'
#     require 'forwardable'
#     require 'getoptlong'
#     require 'ipaddr'
#     require 'irb'
#     require 'json'
#     require 'kconv'
#     require 'logger'
#     require 'mkmf'
#     require 'monitor'
#     require 'mutex_m'
#     require 'objspace'
#     require 'observer'
#     require 'open3'
#     require 'openssl'
#     require 'open-uri'
#     require 'optionparser'
#     require 'optparse'
#     require 'ostruct'
#     require 'pathname'
#     require 'pp'
#     require 'prettyprint'
#     require 'pstore'
#     require 'psych'
#     require 'racc'
#     require 'rdoc'
#     require 'readline'
#     require 'reline'
#     require 'resolv'
#     require 'resolv-replace'
#     require 'ripper'
#     require 'rubygems'
#     require 'securerandom'
#     require 'set'
#     require 'shellwords'
#     require 'singleton'
#     require 'socket'
#     require 'tempfile'
#     require 'timeout'
#     require 'time'
#     require 'tmpdir'
#     require 'tsort'
#     require 'un'
#     require 'uri'
#     require 'weakref'
#     require 'yaml'
#   end
#   class ApplicationRecord
#     extend ActiveRecord::Base
#     extend ActiveRecord::QueryMethods
#     extend ActiveRecord::FinderMethods
#     extend ActiveRecord::Associations::ClassMethods
#     extend ActiveRecord::Inheritance::ClassMethods
#     include ActiveRecord::Persistence
#     include ActiveModel::Model
#     require 'abbrev'
#     require 'base64'
#     require 'benchmark'
#     require 'bigdecimal'
#     require 'bundler'
#     require 'cgi'
#     require 'coverage'
#     require 'csv'
#     require 'date'
#     require 'delegate'
#     require 'did_you_mean'
#     require 'digest'
#     require 'drb'
#     require 'English'
#     require 'erb'
#     require 'error_highlight'
#     require 'expect'
#     require 'fiddle'
#     require 'fileutils'
#     require 'find'
#     require 'forwardable'
#     require 'getoptlong'
#     require 'ipaddr'
#     require 'irb'
#     require 'json'
#     require 'kconv'
#     require 'logger'
#     require 'mkmf'
#     require 'monitor'
#     require 'mutex_m'
#     require 'objspace'
#     require 'observer'
#     require 'open3'
#     require 'openssl'
#     require 'open-uri'
#     require 'optionparser'
#     require 'optparse'
#     require 'ostruct'
#     require 'pathname'
#     require 'pp'
#     require 'prettyprint'
#     require 'pstore'
#     require 'psych'
#     require 'racc'
#     require 'rdoc'
#     require 'readline'
#     require 'reline'
#     require 'resolv'
#     require 'resolv-replace'
#     require 'ripper'
#     require 'rubygems'
#     require 'securerandom'
#     require 'set'
#     require 'shellwords'
#     require 'singleton'
#     require 'socket'
#     require 'tempfile'
#     require 'timeout'
#     require 'time'
#     require 'tmpdir'
#     require 'tsort'
#     require 'un'
#     require 'uri'
#     require 'weakref'
#     require 'yaml'
#   end
#   class User
#     extend ActiveRecord::Base
#     extend ActiveRecord::QueryMethods
#     extend ActiveRecord::FinderMethods
#     extend ActiveRecord::Associations::ClassMethods
#     extend ActiveRecord::Inheritance::ClassMethods
#     include ActiveRecord::Persistence
#     include ActiveModel::Model
#     require 'abbrev'
#     require 'base64'
#     require 'benchmark'
#     require 'bigdecimal'
#     require 'bundler'
#     require 'cgi'
#     require 'coverage'
#     require 'csv'
#     require 'date'
#     require 'delegate'
#     require 'did_you_mean'
#     require 'digest'
#     require 'drb'
#     require 'English'
#     require 'erb'
#     require 'error_highlight'
#     require 'expect'
#     require 'fiddle'
#     require 'fileutils'
#     require 'find'
#     require 'forwardable'
#     require 'getoptlong'
#     require 'ipaddr'
#     require 'irb'
#     require 'json'
#     require 'kconv'
#     require 'logger'
#     require 'mkmf'
#     require 'monitor'
#     require 'mutex_m'
#     require 'objspace'
#     require 'observer'
#     require 'open3'
#     require 'openssl'
#     require 'open-uri'
#     require 'optionparser'
#     require 'optparse'
#     require 'ostruct'
#     require 'pathname'
#     require 'pp'
#     require 'prettyprint'
#     require 'pstore'
#     require 'psych'
#     require 'racc'
#     require 'rdoc'
#     require 'readline'
#     require 'reline'
#     require 'resolv'
#     require 'resolv-replace'
#     require 'ripper'
#     require 'rubygems'
#     require 'securerandom'
#     require 'set'
#     require 'shellwords'
#     require 'singleton'
#     require 'socket'
#     require 'tempfile'
#     require 'timeout'
#     require 'time'
#     require 'tmpdir'
#     require 'tsort'
#     require 'un'
#     require 'uri'
#     require 'weakref'
#     require 'yaml'
#   end
#   class ApplicationController
#     include ActiveRecord::Callbacks
#   end
#   class SessionController
#     include ActiveRecord::Callbacks
#   end
#   module SessionsHelper
#     include ActionController::Cookies
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
