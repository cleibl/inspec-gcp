# frozen_string_literal: false

# ----------------------------------------------------------------------------
#
#     ***     AUTO GENERATED CODE    ***    AUTO GENERATED CODE     ***
#
# ----------------------------------------------------------------------------
#
#     This file is automatically generated by Magic Modules and manual
#     changes will be clobbered when the file is regenerated.
#
#     Please read more about how to change this file in README.md and
#     CONTRIBUTING.md located at the root of this package.
#
# ----------------------------------------------------------------------------
require 'google/cloudbuild/property/trigger_build_steps'
module GoogleInSpec
  module CloudBuild
    module Property
      class TriggerBuild
        attr_reader :tags

        attr_reader :images

        attr_reader :steps

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @tags = args['tags']
          @images = args['images']
          @steps = GoogleInSpec::CloudBuild::Property::TriggerBuildStepsArray.parse(args['steps'], to_s)
        end

        def to_s
          "#{@parent_identifier} TriggerBuild"
        end
      end
    end
  end
end
