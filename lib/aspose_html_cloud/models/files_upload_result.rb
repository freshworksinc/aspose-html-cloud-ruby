# -*- coding: utf-8 -*-
=begin
  --------------------------------------------------------------------------------------------------------------------
  <copyright company="Aspose" file="files_upload_result.rb">
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
  # File upload result
  class FilesUploadResult < BaseModel
    # List of uploaded file names
    attr_accessor :uploaded

    # List of errors.
    attr_accessor :errors

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'uploaded' => :'uploaded',
        :'errors' => :'errors'
      }
    end

    # Attribute type mapping.
    def self.model_types
      {
        :'uploaded' => :'Array<String>',
        :'errors' => :'Array<Error>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'uploaded')
        if (value = attributes[:'uploaded']).is_a?(Array)
          self.uploaded = value
        end
      end

      if attributes.has_key?(:'errors')
        if (value = attributes[:'errors']).is_a?(Array)
          self.errors = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          uploaded == o.uploaded &&
          errors == o.errors
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [uploaded, errors].hash
    end

  end
end
