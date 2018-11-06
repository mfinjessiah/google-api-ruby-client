# Copyright 2015 Google Inc.
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
    module AlertcenterV1beta1
      
      # Alerts for user account warning events.
      class AccountWarning
        include Google::Apis::Core::Hashable
      
        # Required. Email of the user that this event belongs to.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # Details of the login action
        # Corresponds to the JSON property `loginDetails`
        # @return [Google::Apis::AlertcenterV1beta1::LoginDetails]
        attr_accessor :login_details
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email = args[:email] if args.key?(:email)
          @login_details = args[:login_details] if args.key?(:login_details)
        end
      end
      
      # An alert affecting a customer.
      # All fields are read-only once created.
      class Alert
        include Google::Apis::Core::Hashable
      
        # Output only. The unique identifier for the alert.
        # Corresponds to the JSON property `alertId`
        # @return [String]
        attr_accessor :alert_id
      
        # Output only. The time this alert was created. Assigned by the server.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The unique identifier of the Google account of the customer.
        # Corresponds to the JSON property `customerId`
        # @return [String]
        attr_accessor :customer_id
      
        # Optional. Specific data associated with this alert.
        # e.g. google.apps.alertcenter.type.DeviceCompromised.
        # Corresponds to the JSON property `data`
        # @return [Hash<String,Object>]
        attr_accessor :data
      
        # Output only. Whether this alert has been marked for deletion.
        # Corresponds to the JSON property `deleted`
        # @return [Boolean]
        attr_accessor :deleted
        alias_method :deleted?, :deleted
      
        # Optional. The time this alert was no longer active. If provided, the
        # end time must not be earlier than the start time. If not provided, the end
        # time will default to the start time.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. An optional Security Investigation Tool query for this
        # alert.
        # Corresponds to the JSON property `securityInvestigationToolLink`
        # @return [String]
        attr_accessor :security_investigation_tool_link
      
        # Required. A unique identifier for the system that is reported the alert.
        # Supported sources are any of the following:
        # * "Google Operations"
        # * "Mobile device management"
        # * "Gmail phishing"
        # * "Domain wide takeout"
        # * "Government attack warning"
        # * "Google identity"
        # Corresponds to the JSON property `source`
        # @return [String]
        attr_accessor :source
      
        # Required. The time this alert became active.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Required. The type of the alert.
        # Supported types are any of the following:
        # * "Google Operations"
        # * "Device compromised"
        # * "Suspicious activity"
        # * "User reported phishing"
        # * "Misconfigured whitelist"
        # * "Customer takeout initiated"
        # * "Government attack warning"
        # * "User reported spam spike"
        # * "Suspicious message reported"
        # * "Phishing reclassification"
        # * "Malware reclassification"
        # LINT.IfChange
        # * "Suspicious login"
        # * "Suspicious login (less secure app)"
        # * "User suspended"
        # * "Leaked password"
        # * "User suspended (suspicious activity)"
        # * "User suspended (spam)"
        # * "User suspended (spam through relay)"
        # LINT.ThenChange(//depot/google3/apps/albert/data/albert_enums.proto)
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alert_id = args[:alert_id] if args.key?(:alert_id)
          @create_time = args[:create_time] if args.key?(:create_time)
          @customer_id = args[:customer_id] if args.key?(:customer_id)
          @data = args[:data] if args.key?(:data)
          @deleted = args[:deleted] if args.key?(:deleted)
          @end_time = args[:end_time] if args.key?(:end_time)
          @security_investigation_tool_link = args[:security_investigation_tool_link] if args.key?(:security_investigation_tool_link)
          @source = args[:source] if args.key?(:source)
          @start_time = args[:start_time] if args.key?(:start_time)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # A customer feedback about an alert.
      class AlertFeedback
        include Google::Apis::Core::Hashable
      
        # Output only. The alert identifier.
        # Corresponds to the JSON property `alertId`
        # @return [String]
        attr_accessor :alert_id
      
        # Output only. The time this feedback was created. Assigned by the server.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The unique identifier of the Google account of the customer.
        # Corresponds to the JSON property `customerId`
        # @return [String]
        attr_accessor :customer_id
      
        # Output only. The email of the user that provided the feedback.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # Output only. A unique identifier for the feedback. When creating a new
        # feedback the system will assign one.
        # Corresponds to the JSON property `feedbackId`
        # @return [String]
        attr_accessor :feedback_id
      
        # Required. The type of the feedback.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alert_id = args[:alert_id] if args.key?(:alert_id)
          @create_time = args[:create_time] if args.key?(:create_time)
          @customer_id = args[:customer_id] if args.key?(:customer_id)
          @email = args[:email] if args.key?(:email)
          @feedback_id = args[:feedback_id] if args.key?(:feedback_id)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Attachment with application-specific information about an alert.
      class Attachment
        include Google::Apis::Core::Hashable
      
        # Representation of a CSV file attachment, as a list of column headers and
        # a list of data rows.
        # Corresponds to the JSON property `csv`
        # @return [Google::Apis::AlertcenterV1beta1::Csv]
        attr_accessor :csv
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @csv = args[:csv] if args.key?(:csv)
        end
      end
      
      # Alert for setting the domain or ip that malicious email comes from as
      # whitelisted domain or ip in Gmail advanced settings.
      class BadWhitelist
        include Google::Apis::Core::Hashable
      
        # Domain id of Gmail phishing alerts.
        # Corresponds to the JSON property `domainId`
        # @return [Google::Apis::AlertcenterV1beta1::DomainId]
        attr_accessor :domain_id
      
        # Entity whose actions triggered a Gmail phishing alert.
        # Corresponds to the JSON property `maliciousEntity`
        # @return [Google::Apis::AlertcenterV1beta1::MaliciousEntity]
        attr_accessor :malicious_entity
      
        # Every alert could contain multiple messages.
        # Corresponds to the JSON property `messages`
        # @return [Array<Google::Apis::AlertcenterV1beta1::GmailMessageInfo>]
        attr_accessor :messages
      
        # The source ip address of the malicious email. e.g. "127.0.0.1".
        # Corresponds to the JSON property `sourceIp`
        # @return [String]
        attr_accessor :source_ip
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @domain_id = args[:domain_id] if args.key?(:domain_id)
          @malicious_entity = args[:malicious_entity] if args.key?(:malicious_entity)
          @messages = args[:messages] if args.key?(:messages)
          @source_ip = args[:source_ip] if args.key?(:source_ip)
        end
      end
      
      # Representation of a CSV file attachment, as a list of column headers and
      # a list of data rows.
      class Csv
        include Google::Apis::Core::Hashable
      
        # List of data rows in a CSV file, as string arrays rather than as a
        # single comma-separated string.
        # Corresponds to the JSON property `dataRows`
        # @return [Array<Google::Apis::AlertcenterV1beta1::CsvRow>]
        attr_accessor :data_rows
      
        # List of headers for data columns in a CSV file.
        # Corresponds to the JSON property `headers`
        # @return [Array<String>]
        attr_accessor :headers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_rows = args[:data_rows] if args.key?(:data_rows)
          @headers = args[:headers] if args.key?(:headers)
        end
      end
      
      # Representation of a single data row in a CSV file.
      class CsvRow
        include Google::Apis::Core::Hashable
      
        # Data entries in a CSV file row, as a string array rather than a single
        # comma-separated string.
        # Corresponds to the JSON property `entries`
        # @return [Array<String>]
        attr_accessor :entries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] if args.key?(:entries)
        end
      end
      
      # A mobile device compromised alert. Derived from audit logs.
      class DeviceCompromised
        include Google::Apis::Core::Hashable
      
        # The email of the user this alert was created for.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # Required. List of security events.
        # Corresponds to the JSON property `events`
        # @return [Array<Google::Apis::AlertcenterV1beta1::DeviceCompromisedSecurityDetail>]
        attr_accessor :events
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email = args[:email] if args.key?(:email)
          @events = args[:events] if args.key?(:events)
        end
      end
      
      # Detailed information of a single MDM device compromised event.
      class DeviceCompromisedSecurityDetail
        include Google::Apis::Core::Hashable
      
        # Device compromised state includes: "Compromised" and "Not Compromised".
        # Corresponds to the JSON property `deviceCompromisedState`
        # @return [String]
        attr_accessor :device_compromised_state
      
        # Required. Device Info.
        # Corresponds to the JSON property `deviceId`
        # @return [String]
        attr_accessor :device_id
      
        # The model of the device.
        # Corresponds to the JSON property `deviceModel`
        # @return [String]
        attr_accessor :device_model
      
        # The type of the device.
        # Corresponds to the JSON property `deviceType`
        # @return [String]
        attr_accessor :device_type
      
        # Required for IOS, empty for others.
        # Corresponds to the JSON property `iosVendorId`
        # @return [String]
        attr_accessor :ios_vendor_id
      
        # The device resource id.
        # Corresponds to the JSON property `resourceId`
        # @return [String]
        attr_accessor :resource_id
      
        # The serial number of the device.
        # Corresponds to the JSON property `serialNumber`
        # @return [String]
        attr_accessor :serial_number
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device_compromised_state = args[:device_compromised_state] if args.key?(:device_compromised_state)
          @device_id = args[:device_id] if args.key?(:device_id)
          @device_model = args[:device_model] if args.key?(:device_model)
          @device_type = args[:device_type] if args.key?(:device_type)
          @ios_vendor_id = args[:ios_vendor_id] if args.key?(:ios_vendor_id)
          @resource_id = args[:resource_id] if args.key?(:resource_id)
          @serial_number = args[:serial_number] if args.key?(:serial_number)
        end
      end
      
      # Domain id of Gmail phishing alerts.
      class DomainId
        include Google::Apis::Core::Hashable
      
        # The primary domain for the customer.
        # Corresponds to the JSON property `customerPrimaryDomain`
        # @return [String]
        attr_accessor :customer_primary_domain
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @customer_primary_domain = args[:customer_primary_domain] if args.key?(:customer_primary_domain)
        end
      end
      
      # A takeout operation for the entire domain was initiated by an admin. Derived
      # from audit logs.
      class DomainWideTakeoutInitiated
        include Google::Apis::Core::Hashable
      
        # Email of the admin who initiated the takeout.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # takeout request id.
        # Corresponds to the JSON property `takeoutRequestId`
        # @return [String]
        attr_accessor :takeout_request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email = args[:email] if args.key?(:email)
          @takeout_request_id = args[:takeout_request_id] if args.key?(:takeout_request_id)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated
      # empty messages in your APIs. A typical example is to use it as the request
      # or the response type of an API method. For instance:
      # service Foo `
      # rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty);
      # `
      # The JSON representation for `Empty` is empty JSON object ````.
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Details of a message in phishing spike alert.
      class GmailMessageInfo
        include Google::Apis::Core::Hashable
      
        # SHA256 Hash of email's attachment and all MIME parts.
        # Corresponds to the JSON property `attachmentsSha256Hash`
        # @return [Array<String>]
        attr_accessor :attachments_sha256_hash
      
        # The date the malicious email was sent.
        # Corresponds to the JSON property `date`
        # @return [String]
        attr_accessor :date
      
        # Hash of message body text.
        # Corresponds to the JSON property `md5HashMessageBody`
        # @return [String]
        attr_accessor :md5_hash_message_body
      
        # MD5 Hash of email's subject. (Only available for reported emails).
        # Corresponds to the JSON property `md5HashSubject`
        # @return [String]
        attr_accessor :md5_hash_subject
      
        # Snippet of the message body text. (Only available for reported emails)
        # Corresponds to the JSON property `messageBodySnippet`
        # @return [String]
        attr_accessor :message_body_snippet
      
        # Message id.
        # Corresponds to the JSON property `messageId`
        # @return [String]
        attr_accessor :message_id
      
        # Recipient of this email.
        # Corresponds to the JSON property `recipient`
        # @return [String]
        attr_accessor :recipient
      
        # Email subject text. (Only available for reported emails).
        # Corresponds to the JSON property `subjectText`
        # @return [String]
        attr_accessor :subject_text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attachments_sha256_hash = args[:attachments_sha256_hash] if args.key?(:attachments_sha256_hash)
          @date = args[:date] if args.key?(:date)
          @md5_hash_message_body = args[:md5_hash_message_body] if args.key?(:md5_hash_message_body)
          @md5_hash_subject = args[:md5_hash_subject] if args.key?(:md5_hash_subject)
          @message_body_snippet = args[:message_body_snippet] if args.key?(:message_body_snippet)
          @message_id = args[:message_id] if args.key?(:message_id)
          @recipient = args[:recipient] if args.key?(:recipient)
          @subject_text = args[:subject_text] if args.key?(:subject_text)
        end
      end
      
      # An incident reported by Google Operations for a G Suite application.
      class GoogleOperations
        include Google::Apis::Core::Hashable
      
        # List of emails which correspond to the users directly affected by the
        # incident.
        # Corresponds to the JSON property `affectedUserEmails`
        # @return [Array<String>]
        attr_accessor :affected_user_emails
      
        # Attachment with application-specific information about an alert.
        # Corresponds to the JSON property `attachmentData`
        # @return [Google::Apis::AlertcenterV1beta1::Attachment]
        attr_accessor :attachment_data
      
        # Detailed, freeform incident description.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # One-line incident description.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @affected_user_emails = args[:affected_user_emails] if args.key?(:affected_user_emails)
          @attachment_data = args[:attachment_data] if args.key?(:attachment_data)
          @description = args[:description] if args.key?(:description)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # Response message for an alert feedback listing request.
      class ListAlertFeedbackResponse
        include Google::Apis::Core::Hashable
      
        # The list of alert feedback.
        # Result is ordered descending by creation time.
        # Corresponds to the JSON property `feedback`
        # @return [Array<Google::Apis::AlertcenterV1beta1::AlertFeedback>]
        attr_accessor :feedback
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @feedback = args[:feedback] if args.key?(:feedback)
        end
      end
      
      # Response message for an alert listing request.
      class ListAlertsResponse
        include Google::Apis::Core::Hashable
      
        # The list of alerts.
        # Corresponds to the JSON property `alerts`
        # @return [Array<Google::Apis::AlertcenterV1beta1::Alert>]
        attr_accessor :alerts
      
        # If not empty, indicates that there may be more alerts that match the
        # request; this value can be passed in a new ListAlertsRequest to get the
        # next page of values.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alerts = args[:alerts] if args.key?(:alerts)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Details of the login action
      class LoginDetails
        include Google::Apis::Core::Hashable
      
        # Optional. Human readable IP address (e.g., 11.22.33.44) that is
        # associated with the warning event.
        # Corresponds to the JSON property `ipAddress`
        # @return [String]
        attr_accessor :ip_address
      
        # Optional. Login time that is associated with the warning event.
        # Corresponds to the JSON property `loginTime`
        # @return [String]
        attr_accessor :login_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ip_address = args[:ip_address] if args.key?(:ip_address)
          @login_time = args[:login_time] if args.key?(:login_time)
        end
      end
      
      # Proto for all phishing alerts with common payload.
      # Supported types are any of the following:
      # User reported phishing
      # User reported spam spike
      # Suspicious message reported
      # Phishing reclassification
      # Malware reclassification
      class MailPhishing
        include Google::Apis::Core::Hashable
      
        # Domain id of Gmail phishing alerts.
        # Corresponds to the JSON property `domainId`
        # @return [Google::Apis::AlertcenterV1beta1::DomainId]
        attr_accessor :domain_id
      
        # If true, the email is originated from within the organization.
        # Corresponds to the JSON property `isInternal`
        # @return [Boolean]
        attr_accessor :is_internal
        alias_method :is_internal?, :is_internal
      
        # Entity whose actions triggered a Gmail phishing alert.
        # Corresponds to the JSON property `maliciousEntity`
        # @return [Google::Apis::AlertcenterV1beta1::MaliciousEntity]
        attr_accessor :malicious_entity
      
        # Every alert could contain multiple messages.
        # Corresponds to the JSON property `messages`
        # @return [Array<Google::Apis::AlertcenterV1beta1::GmailMessageInfo>]
        attr_accessor :messages
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @domain_id = args[:domain_id] if args.key?(:domain_id)
          @is_internal = args[:is_internal] if args.key?(:is_internal)
          @malicious_entity = args[:malicious_entity] if args.key?(:malicious_entity)
          @messages = args[:messages] if args.key?(:messages)
        end
      end
      
      # Entity whose actions triggered a Gmail phishing alert.
      class MaliciousEntity
        include Google::Apis::Core::Hashable
      
        # Sender email address.
        # Corresponds to the JSON property `fromHeader`
        # @return [String]
        attr_accessor :from_header
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @from_header = args[:from_header] if args.key?(:from_header)
        end
      end
      
      # Alert for a spike in user reported phishing.
      # This will be deprecated in favor of MailPhishing.
      class PhishingSpike
        include Google::Apis::Core::Hashable
      
        # Domain id of Gmail phishing alerts.
        # Corresponds to the JSON property `domainId`
        # @return [Google::Apis::AlertcenterV1beta1::DomainId]
        attr_accessor :domain_id
      
        # If true, the email is originated from within the organization.
        # Corresponds to the JSON property `isInternal`
        # @return [Boolean]
        attr_accessor :is_internal
        alias_method :is_internal?, :is_internal
      
        # Entity whose actions triggered a Gmail phishing alert.
        # Corresponds to the JSON property `maliciousEntity`
        # @return [Google::Apis::AlertcenterV1beta1::MaliciousEntity]
        attr_accessor :malicious_entity
      
        # Every alert could contain multiple messages.
        # Corresponds to the JSON property `messages`
        # @return [Array<Google::Apis::AlertcenterV1beta1::GmailMessageInfo>]
        attr_accessor :messages
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @domain_id = args[:domain_id] if args.key?(:domain_id)
          @is_internal = args[:is_internal] if args.key?(:is_internal)
          @malicious_entity = args[:malicious_entity] if args.key?(:malicious_entity)
          @messages = args[:messages] if args.key?(:messages)
        end
      end
      
      # A state sponsored attack alert. Derived from audit logs.
      class StateSponsoredAttack
        include Google::Apis::Core::Hashable
      
        # The email of the user this incident was created for.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email = args[:email] if args.key?(:email)
        end
      end
      
      # A mobile suspicious activity alert. Derived from audit logs.
      class SuspiciousActivity
        include Google::Apis::Core::Hashable
      
        # The email of the user this alert was created for.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # Required. List of security events.
        # Corresponds to the JSON property `events`
        # @return [Array<Google::Apis::AlertcenterV1beta1::SuspiciousActivitySecurityDetail>]
        attr_accessor :events
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email = args[:email] if args.key?(:email)
          @events = args[:events] if args.key?(:events)
        end
      end
      
      # Detailed information of a single MDM suspicious activity event.
      class SuspiciousActivitySecurityDetail
        include Google::Apis::Core::Hashable
      
        # Required. Device Info.
        # Corresponds to the JSON property `deviceId`
        # @return [String]
        attr_accessor :device_id
      
        # The model of the device.
        # Corresponds to the JSON property `deviceModel`
        # @return [String]
        attr_accessor :device_model
      
        # Device property which is changed.
        # Corresponds to the JSON property `deviceProperty`
        # @return [String]
        attr_accessor :device_property
      
        # The type of the device.
        # Corresponds to the JSON property `deviceType`
        # @return [String]
        attr_accessor :device_type
      
        # Required for IOS, empty for others.
        # Corresponds to the JSON property `iosVendorId`
        # @return [String]
        attr_accessor :ios_vendor_id
      
        # New value of the device property after change.
        # Corresponds to the JSON property `newValue`
        # @return [String]
        attr_accessor :new_value
      
        # Old value of the device property before change.
        # Corresponds to the JSON property `oldValue`
        # @return [String]
        attr_accessor :old_value
      
        # The device resource id.
        # Corresponds to the JSON property `resourceId`
        # @return [String]
        attr_accessor :resource_id
      
        # The serial number of the device.
        # Corresponds to the JSON property `serialNumber`
        # @return [String]
        attr_accessor :serial_number
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device_id = args[:device_id] if args.key?(:device_id)
          @device_model = args[:device_model] if args.key?(:device_model)
          @device_property = args[:device_property] if args.key?(:device_property)
          @device_type = args[:device_type] if args.key?(:device_type)
          @ios_vendor_id = args[:ios_vendor_id] if args.key?(:ios_vendor_id)
          @new_value = args[:new_value] if args.key?(:new_value)
          @old_value = args[:old_value] if args.key?(:old_value)
          @resource_id = args[:resource_id] if args.key?(:resource_id)
          @serial_number = args[:serial_number] if args.key?(:serial_number)
        end
      end
    end
  end
end
