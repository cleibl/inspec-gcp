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
require 'google/compute/property/instancetemplate_access_configs'
require 'google/compute/property/instancetemplate_alias_ip_ranges'
module GoogleInSpec
  module Compute
    module Property
      class InstanceTemplateNetworkinterfaces
        attr_reader :access_configs

        attr_reader :alias_ip_ranges

        attr_reader :name

        attr_reader :network

        attr_reader :network_ip

        attr_reader :subnetwork

        def initialize(args = nil)
          return if args.nil?
          @access_configs = GoogleInSpec::Compute::Property::InstanceTemplateAccessconfigsArray.parse(args['accessConfigs'])
          @alias_ip_ranges = GoogleInSpec::Compute::Property::InstanceTemplateAliasiprangesArray.parse(args['aliasIpRanges'])
          @name = args['name']
          @network = args['network']
          @network_ip = args['networkIP']
          @subnetwork = args['subnetwork']
        end
      end

      class InstanceTemplateNetworkinterfacesArray
        def self.parse(value)
          return if value.nil?
          return InstanceTemplateNetworkinterfaces.new(value) unless value.is_a?(::Array)
          value.map { |v| InstanceTemplateNetworkinterfaces.new(v) }
        end
      end
    end
  end
end
