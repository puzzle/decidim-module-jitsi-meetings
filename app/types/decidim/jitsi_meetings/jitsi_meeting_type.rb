# frozen_string_literal: true

module Decidim
  module JitsiMeetings 
    class JitsiMeetingType < GraphQL::Schema::Object
      graphql_name "JitsiMeeting"
      description "A jitsi meeting"

      field :id, GraphQL::Types::ID, null: false
      field :api, Decidim::Core::TranslatedFieldType, "The api of this jitsi meeting.", null: true
      field :domain, Decidim::Core::TranslatedFieldType, "The domain of this jitsi meeting.", null: true
      field :room_name, Decidim::Core::TranslatedFieldType, "The room_name of this jitsi meeting.", null: true
      field :createdAt, Decidim::Core::DateTimeType, "The time this jitsi meeting was created", method: :created_at, null: false
      field :updatedAt, Decidim::Core::DateTimeType, "The time this jitsi meeting was updated", method: :updated_at, null: false
    end
  end
end
