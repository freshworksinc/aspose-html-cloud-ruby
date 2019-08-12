# -*- coding: utf-8 -*-
=begin
  --------------------------------------------------------------------------------------------------------------------
  <copyright company="Aspose" file="file_version.rb">
  </copyright>
   Copyright (c) 2019 Aspose.HTML for Cloud
  <summary>
   Permission is hereby granted, free of charge, to any person obtaining a copy
   of this software and associated documentation files (the "Software"), to deal
   in the Software without restriction, including without limitation the rights
   to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
   copies of the Software, and to permit persons to whom the Software is
   furnished to do so, subject to the following conditions:
 
   The above copyright notice and this permission notice shall be included in all
   copies or substantial portions of the Software.
 
   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
   IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
   FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
   AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
   LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
   OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
   SOFTWARE.
  </summary>
  --------------------------------------------------------------------------------------------------------------------
=end

require_relative 'base_model'

module AsposeHtml
  # File Version
  class FileVersion < BaseModel
    # File or folder name.
    attr_accessor :name

    # True if it is a folder.
    attr_accessor :is_folder

    # File or folder last modified DateTime.
    attr_accessor :modified_date

    # File or folder size.
    attr_accessor :size

    # File or folder path.
    attr_accessor :path

    # File Version ID.
    attr_accessor :version_id

    # Specifies whether the file is (true) or is not (false) the latest version of an file.
    attr_accessor :is_latest

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'name' => :'name',
        :'is_folder' => :'isFolder',
        :'modified_date' => :'modifiedDate',
        :'size' => :'size',
        :'path' => :'path',
        :'version_id' => :'versionId',
        :'is_latest' => :'isLatest'
      }
    end

    # Attribute type mapping.
    def self.model_types
      {
        :'name' => :'String',
        :'is_folder' => :'BOOLEAN',
        :'modified_date' => :'DateTime',
        :'size' => :'Integer',
        :'path' => :'String',
        :'version_id' => :'String',
        :'is_latest' => :'BOOLEAN'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'isFolder')
        self.is_folder = attributes[:'isFolder']
      end

      if attributes.has_key?(:'modifiedDate')
        self.modified_date = attributes[:'modifiedDate']
      end

      if attributes.has_key?(:'size')
        self.size = attributes[:'size']
      end

      if attributes.has_key?(:'path')
        self.path = attributes[:'path']
      end

      if attributes.has_key?(:'versionId')
        self.version_id = attributes[:'versionId']
      end

      if attributes.has_key?(:'isLatest')
        self.is_latest = attributes[:'isLatest']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @is_folder.nil?
        invalid_properties.push('invalid value for "is_folder", is_folder cannot be nil.')
      end

      if @size.nil?
        invalid_properties.push('invalid value for "size", size cannot be nil.')
      end

      if @is_latest.nil?
        invalid_properties.push('invalid value for "is_latest", is_latest cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @is_folder.nil?
      return false if @size.nil?
      return false if @is_latest.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          name == o.name &&
          is_folder == o.is_folder &&
          modified_date == o.modified_date &&
          size == o.size &&
          path == o.path &&
          version_id == o.version_id &&
          is_latest == o.is_latest
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [name, is_folder, modified_date, size, path, version_id, is_latest].hash
    end

  end
end
