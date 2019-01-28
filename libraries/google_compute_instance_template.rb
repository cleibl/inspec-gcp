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
require 'gcp_backend'
require 'google/compute/property/instancetemplate_disks'
require 'google/compute/property/instancetemplate_guest_accelerators'
require 'google/compute/property/instancetemplate_network_interfaces'
require 'google/compute/property/instancetemplate_properties'
require 'google/compute/property/instancetemplate_scheduling'
require 'google/compute/property/instancetemplate_service_accounts'
require 'google/compute/property/instancetemplate_tags'

# A provider to manage Google Compute Engine resources.
class InstanceTemplate < GcpResourceBase
  name 'google_compute_instance_template'
  desc 'InstanceTemplate'
  supports platform: 'gcp'

  attr_reader :creation_timestamp
  attr_reader :description
  attr_reader :id
  attr_reader :name
  attr_reader :properties
  def base
    'https://www.googleapis.com/compute/v1/'
  end

  def url
    'projects/{{project}}/global/instanceTemplates/{{name}}'
  end

  def initialize(params)
    super(params.merge({ use_http_transport: true }))
    @fetched = @connection.fetch(base, url, params)
    parse unless @fetched.nil?
  end

  def parse
    @creation_timestamp = parse_time_string(@fetched['creationTimestamp'])
    @description = @fetched['description']
    @id = @fetched['id']
    @name = @fetched['name']
    @properties = GoogleInSpec::Compute::Property::InstanceTemplateProperties.new(@fetched['properties'])
  end

  # Handles parsing RFC3339 time string
  def parse_time_string(time_string)
    time_string ? Time.parse(time_string) : nil
  end

  def exists?
    !@fetched.nil?
  end
end
