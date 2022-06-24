# frozen_string_literal: true

module Decidim
  module JitsiMeetings
    class JitsiMeetingsType < GraphQL::Schema::Object
      interfaces [-> { Decidim::Core::ComponentInterface }]

      graphql_name "JitsiMeetings"
      description "A jitsi meetings component of a participatory space."

      field :jitsi_meetings,
            JitsiMeetingType.connection_type,
            null: true,
            resolve: ->(component, _args, _ctx) {
              JitsiMeetingsTypeHelper.base_scope(component).includes(:component)
            }

      field :jitsi_meeting,
            JitsiMeetingType,
            null: false,
            resolve: ->(component, args, _ctx) {
              JitsiMeetingsTypeHelper.base_scope(component).find_by(id: args[:id])
            } do
        argument :id, GraphQL::Types::ID, required: true
      end
    end

    module JitsiMeetingsTypeHelper
      def self.base_scope(component)
        JitsiMeeting.where(component: component)
      end
    end
  end
end
