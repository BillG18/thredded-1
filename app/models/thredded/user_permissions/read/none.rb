# frozen_string_literal: true

module Thredded
  module UserPermissions
    module Read
      module None
        extend ActiveSupport::Concern
        included { extend ClassMethods }

        # @return [ActiveRecord::Relation<Thredded::Messageboard>] messageboards that the user can read
        def thredded_can_read_messageboards
          Thredded::Messageboard.none
        end

        module ClassMethods
          # Users that can read some of the given messageboards.
          #
          # @param _messageboards [Array<Thredded::Messageboard>]
          # @return [ActiveRecord::Relation<Thredded.user_class>] users that can read the given messageboards
          def thredded_messageboards_readers(_messageboards)
            none
          end
        end
      end
    end
  end
end
