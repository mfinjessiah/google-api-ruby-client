# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require 'date'
require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module IdeahubV1alpha
      
      # Represents locales that are available for a web property.
      class GoogleSearchIdeahubV1alphaAvailableLocale
        include Google::Apis::Core::Hashable
      
        # A string in BCP 47 format, without a resource prefix.
        # Corresponds to the JSON property `locale`
        # @return [String]
        attr_accessor :locale
      
        # A string in BCP 47 format, prefixed with the platform and property name, and "
        # locales/". Format: platforms/`platform`/properties/`property`/locales/`locale`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @locale = args[:locale] if args.key?(:locale)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # A single Idea that we want to show the end user.
      class GoogleSearchIdeahubV1alphaIdea
        include Google::Apis::Core::Hashable
      
        # Unique identifier for the idea. Format: ideas/`ideaId`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The idea’s text.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        # The Topics that match the idea.
        # Corresponds to the JSON property `topics`
        # @return [Array<Google::Apis::IdeahubV1alpha::GoogleSearchIdeahubV1alphaTopic>]
        attr_accessor :topics
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @text = args[:text] if args.key?(:text)
          @topics = args[:topics] if args.key?(:topics)
        end
      end
      
      # An idea activity entry.
      class GoogleSearchIdeahubV1alphaIdeaActivity
        include Google::Apis::Core::Hashable
      
        # The Idea IDs for this entry. If empty, topics should be set.
        # Corresponds to the JSON property `ideas`
        # @return [Array<String>]
        attr_accessor :ideas
      
        # Unique identifier for the idea activity. Format: platforms/`platform`/
        # properties/`property`/ideaActivities/`idea_activity`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The Topic IDs for this entry. If empty, ideas should be set.
        # Corresponds to the JSON property `topics`
        # @return [Array<String>]
        attr_accessor :topics
      
        # The type of activity performed.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # The uri the activity relates to.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ideas = args[:ideas] if args.key?(:ideas)
          @name = args[:name] if args.key?(:name)
          @topics = args[:topics] if args.key?(:topics)
          @type = args[:type] if args.key?(:type)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # Represents idea state specific to a web property.
      class GoogleSearchIdeahubV1alphaIdeaState
        include Google::Apis::Core::Hashable
      
        # Whether the idea is dismissed.
        # Corresponds to the JSON property `dismissed`
        # @return [Boolean]
        attr_accessor :dismissed
        alias_method :dismissed?, :dismissed
      
        # Unique identifier for the idea state. Format: platforms/`platform`/properties/`
        # property`/ideaStates/`idea_state`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Whether the idea is saved.
        # Corresponds to the JSON property `saved`
        # @return [Boolean]
        attr_accessor :saved
        alias_method :saved?, :saved
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dismissed = args[:dismissed] if args.key?(:dismissed)
          @name = args[:name] if args.key?(:name)
          @saved = args[:saved] if args.key?(:saved)
        end
      end
      
      # Response for whether ideas are available for a given web property on a
      # platform, for the currently logged-in user.
      class GoogleSearchIdeahubV1alphaListAvailableLocalesResponse
        include Google::Apis::Core::Hashable
      
        # Locales for which ideas are available for the given Creator.
        # Corresponds to the JSON property `availableLocales`
        # @return [Array<Google::Apis::IdeahubV1alpha::GoogleSearchIdeahubV1alphaAvailableLocale>]
        attr_accessor :available_locales
      
        # A token that can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @available_locales = args[:available_locales] if args.key?(:available_locales)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class GoogleSearchIdeahubV1alphaListIdeasResponse
        include Google::Apis::Core::Hashable
      
        # Results for the ListIdeasRequest.
        # Corresponds to the JSON property `ideas`
        # @return [Array<Google::Apis::IdeahubV1alpha::GoogleSearchIdeahubV1alphaIdea>]
        attr_accessor :ideas
      
        # Used to fetch the next page in a subsequent request.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ideas = args[:ideas] if args.key?(:ideas)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Represents a Topic umbrella for a list of questions that a Creator may want to
      # respond to.
      class GoogleSearchIdeahubV1alphaTopic
        include Google::Apis::Core::Hashable
      
        # String displayed to the creator indicating the name of the Topic.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The mID of the topic.
        # Corresponds to the JSON property `mid`
        # @return [String]
        attr_accessor :mid
      
        # Unique identifier for the topic. Format: topics/`topic`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @mid = args[:mid] if args.key?(:mid)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Represents topic state specific to a web property.
      class GoogleSearchIdeahubV1alphaTopicState
        include Google::Apis::Core::Hashable
      
        # Whether the topic is dismissed.
        # Corresponds to the JSON property `dismissed`
        # @return [Boolean]
        attr_accessor :dismissed
        alias_method :dismissed?, :dismissed
      
        # Unique identifier for the topic state. Format: platforms/`platform`/properties/
        # `property`/topicStates/`topic_state`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Whether the topic is saved.
        # Corresponds to the JSON property `saved`
        # @return [Boolean]
        attr_accessor :saved
        alias_method :saved?, :saved
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dismissed = args[:dismissed] if args.key?(:dismissed)
          @name = args[:name] if args.key?(:name)
          @saved = args[:saved] if args.key?(:saved)
        end
      end
    end
  end
end
