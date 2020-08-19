# -*- coding: utf-8 -*-
=begin
  --------------------------------------------------------------------------------------------------------------------
  <copyright company="Aspose" file="model_spec.rb">
  </copyright>
  Copyright (c) 2020 Aspose.HTML for Cloud
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

require_relative '../spec_helper'
require 'json'
require 'date'

describe 'Test models' do

  describe 'DiscUsage' do
    before(:all) do
      # run before all test
      @instance1 = AsposeHtml::DiscUsage.new({usedSize: 100, totalSize: 200})
      @instance2 = AsposeHtml::DiscUsage.new({usedSize: 100, totalSize: 200})
      @instance3 = AsposeHtml::DiscUsage.new({usedSize: 200, totalSize: 300})
    end

    it 'should create an instance of DiscUsage' do
      expect(@instance1).to be_instance_of(AsposeHtml::DiscUsage)
      expect(@instance2).to be_instance_of(AsposeHtml::DiscUsage)
      expect(@instance3).to be_instance_of(AsposeHtml::DiscUsage)
    end

    it 'check class names' do
      expect(@instance1.used_size).to be_instance_of(Integer)
      expect(@instance2.used_size).to be_instance_of(Integer)
      expect(@instance3.used_size).to be_instance_of(Integer)

      expect(@instance1.total_size).to be_instance_of(Integer)
      expect(@instance2.total_size).to be_instance_of(Integer)
      expect(@instance3.total_size).to be_instance_of(Integer)
    end

    it 'check compare and keys' do
      dictionary = @instance3.to_hash
      expect(dictionary.has_key?(:usedSize)).to be true
      expect(dictionary.has_key?(:totalSize)).to be true
      expect(@instance1).to eql(@instance2)
      expect(@instance1).not_to eql(@instance3)
    end
  end

  describe 'Error' do
    before(:all) do
      @time_now = DateTime.now
      @er_detail = AsposeHtml::ErrorDetails.new({request_id: '123456789', date: @time_now})
      @error1 = AsposeHtml::Error.new({code: '404', message: 'Access denied',
                                      description: 'description', inner_error: @er_detail})
      @error2 = AsposeHtml::Error.new({code: '404', message: 'Access denied',
                                      description: 'description', inner_error: @er_detail})
      @error3 = AsposeHtml::Error.new({code: '500', message: 'Server error',
                                      description: 'description', inner_error: @er_detail})
    end

    it 'should create an instance of Error' do
      expect(@error1).to be_instance_of(AsposeHtml::Error)
      expect(@error2).to be_instance_of(AsposeHtml::Error)
      expect(@error3).to be_instance_of(AsposeHtml::Error)
    end

    it 'check class names' do
      expect(@error1.code).to be_instance_of(String)
      expect(@error2.code).to be_instance_of(String)
      expect(@error3.code).to be_instance_of(String)

      expect(@error1.message).to be_instance_of(String)
      expect(@error2.message).to be_instance_of(String)
      expect(@error3.message).to be_instance_of(String)

      expect(@error1.description).to be_instance_of(String)
      expect(@error2.description).to be_instance_of(String)
      expect(@error3.description).to be_instance_of(String)

      expect(@error1.inner_error).to be_instance_of(AsposeHtml::ErrorDetails)
      expect(@error2.inner_error).to be_instance_of(AsposeHtml::ErrorDetails)
      expect(@error3.inner_error).to be_instance_of(AsposeHtml::ErrorDetails)
    end

    it 'check compare and keys' do
      dictionary = @error3.to_hash
      expect(dictionary.has_key?(:code)).to be true
      expect(dictionary.has_key?(:message)).to be true
      expect(dictionary.has_key?(:description)).to be true
      expect(dictionary.has_key?(:innerError)).to be true

      expect(@error1).to eql(@error2)
      expect(@error1).not_to eql(@error3)
    end
  end

  describe 'ErrorDetails' do
    before(:all) do
      @time_now = DateTime.now
      @er_detaill = AsposeHtml::ErrorDetails.new({request_id: '123456789', date: @time_now})
      @er_detail2 = AsposeHtml::ErrorDetails.new({request_id: '123456789', date: @time_now})
      @er_detail3 = AsposeHtml::ErrorDetails.new({request_id: '987654321', date: @time_now})
    end

    it 'should create an instance of ErrorDetails' do
      expect(@er_detaill).to be_instance_of(AsposeHtml::ErrorDetails)
      expect(@er_detail2).to be_instance_of(AsposeHtml::ErrorDetails)
      expect(@er_detail3).to be_instance_of(AsposeHtml::ErrorDetails)
    end

    it 'check class names' do
      expect(@er_detaill.request_id).to be_instance_of(String)
      expect(@er_detail2.request_id).to be_instance_of(String)
      expect(@er_detail3.request_id).to be_instance_of(String)

      expect(@er_detaill.date).to be_instance_of(DateTime)
      expect(@er_detail2.date).to be_instance_of(DateTime)
      expect(@er_detail3.date).to be_instance_of(DateTime)
    end

    it 'check compare and keys' do
      dictionary = @er_detaill.to_hash
      expect(dictionary.has_key?(:requestId)).to be true
      expect(dictionary.has_key?(:date)).to be true

      expect(@er_detaill).to eql(@er_detail2)
      expect(@er_detaill).not_to eql(@er_detail3)
    end
  end

  describe 'FileVersion' do
    before(:all) do
      # run before all test
      time_now = DateTime.now
      @instance1 = AsposeHtml::FileVersion.new({versionId: "1.0.1", isLatest: false, name: 'test',
                                                isFolder: false, modifiedDate: time_now, size: 100, path: '/'})
      @instance2 = AsposeHtml::FileVersion.new({versionId: "1.0.1", isLatest: false, name: 'test',
                                                isFolder: false, modifiedDate: time_now, size: 100, path: '/'})
      @instance3 = AsposeHtml::FileVersion.new({versionId: "1.0.1", isLatest: true, name: 'test',
                                                isFolder: true, modifiedDate: time_now, size: 100, path: '/'})
    end

    it 'should create an instance of FileVersion' do
      expect(@instance1).to be_instance_of(AsposeHtml::FileVersion)
      expect(@instance2).to be_instance_of(AsposeHtml::FileVersion)
      expect(@instance3).to be_instance_of(AsposeHtml::FileVersion)
    end

    it 'check class names' do
      expect(@instance1.version_id).to be_instance_of(String)
      expect(@instance2.version_id).to be_instance_of(String)
      expect(@instance3.version_id).to be_instance_of(String)

      expect(@instance1.is_latest).to be false
      expect(@instance2.is_latest).to be false
      expect(@instance3.is_latest).to be true

      expect(@instance1.name).to be_instance_of(String)
      expect(@instance2.name).to be_instance_of(String)
      expect(@instance3.name).to be_instance_of(String)

      expect(@instance1.is_folder).to be false
      expect(@instance2.is_folder).to be false
      expect(@instance3.is_folder).to be true

      expect(@instance1.modified_date).to be_instance_of(DateTime)
      expect(@instance2.modified_date).to be_instance_of(DateTime)
      expect(@instance3.modified_date).to be_instance_of(DateTime)

      expect(@instance1.size).to be_instance_of(Integer)
      expect(@instance2.size).to be_instance_of(Integer)
      expect(@instance3.size).to be_instance_of(Integer)

      expect(@instance1.path).to be_instance_of(String)
      expect(@instance2.path).to be_instance_of(String)
      expect(@instance3.path).to be_instance_of(String)
    end

    it 'check compare and keys' do
      dictionary = @instance3.to_hash
      expect(dictionary.has_key?(:versionId)).to be true
      expect(dictionary.has_key?(:isLatest)).to be true
      expect(dictionary.has_key?(:name)).to be true
      expect(dictionary.has_key?(:isFolder)).to be true
      expect(dictionary.has_key?(:modifiedDate)).to be true
      expect(dictionary.has_key?(:size)).to be true
      expect(dictionary.has_key?(:path)).to be true

      expect(@instance1).to eql(@instance2)
      expect(@instance1).not_to eql(@instance3)
    end
  end

  describe 'FileVersions' do
    before(:all) do
      time_now = DateTime.now
      @v1 = AsposeHtml::FileVersion.new({versionId: "1.0.1", isLatest: false, name: 'test',
                                                isFolder: false, modifiedDate: time_now, size: 100, path: '/'})
      @v2 = AsposeHtml::FileVersion.new({versionId: "1.0.1", isLatest: false, name: 'test',
                                                isFolder: false, modifiedDate: time_now, size: 100, path: '/'})
      @v3 = AsposeHtml::FileVersion.new({versionId: "1.0.1", isLatest: true, name: 'test',
                                                isFolder: true, modifiedDate: time_now, size: 100, path: '/'})

      @instance1 = AsposeHtml::FileVersions.new({value:[@v1, @v2, @v3] })
      @instance2 = AsposeHtml::FileVersions.new({value:[@v1, @v2, @v3] })
      @instance3 = AsposeHtml::FileVersions.new({value:[@v2, @v3] })
    end

    it 'should create an instance of FileVersions' do
      expect(@instance1).to be_instance_of(AsposeHtml::FileVersions)
      expect(@instance2).to be_instance_of(AsposeHtml::FileVersions)
      expect(@instance3).to be_instance_of(AsposeHtml::FileVersions)
    end

    it 'check class names' do
      expect(@instance1.value).to be_instance_of(Array)
      expect(@instance2.value).to be_instance_of(Array)
      expect(@instance3.value).to be_instance_of(Array)
    end

    it 'check compare and keys' do
      dictionary = @instance3.to_hash
      expect(dictionary.has_key?(:value)).to be true
      expect(@instance1).to eql(@instance2)
      expect(@instance1).not_to eql(@instance3)
    end
  end

  describe 'FilesList' do
    before(:all) do
      # run before all test
      time_now = DateTime.now
      @f1 = AsposeHtml::StorageFile.new({name: 'test', isFolder: false, modifiedDate: time_now,
                                                size: 100, path: '~/user/test_path'})
      @f2 = AsposeHtml::StorageFile.new({name: 'test', isFolder: false, modifiedDate: time_now,
                                                size: 100, path: '~/user/test_path'})
      @f3 = AsposeHtml::StorageFile.new({name: 'test', isFolder: true, modifiedDate: time_now,
                                                 size: 100, path: '~/user/test_path'})

      @instance1 = AsposeHtml::FilesList.new( { value:[@f1, @f2, @f3] } )
      @instance2 = AsposeHtml::FilesList.new( { value:[@f1, @f2, @f3] } )
      @instance3 = AsposeHtml::FilesList.new( { value:[@f2, @f3] } )
    end

    it 'should create an instance of FilesList' do
      expect(@instance1).to be_instance_of(AsposeHtml::FilesList)
      expect(@instance2).to be_instance_of(AsposeHtml::FilesList)
      expect(@instance3).to be_instance_of(AsposeHtml::FilesList)
    end

    it 'check class names' do
      expect(@instance1.value).to be_instance_of(Array)
      expect(@instance2.value).to be_instance_of(Array)
      expect(@instance3.value).to be_instance_of(Array)
    end

    it 'check compare and keys' do
      dictionary = @instance3.to_hash
      expect(dictionary.has_key?(:value)).to be true

      expect(@instance1).to eql(@instance2)
      expect(@instance1).not_to eql(@instance3)
    end
  end

  describe 'FileUploadResult' do
    before(:all) do
      @er_detail = AsposeHtml::ErrorDetails.new({request_id: '123456789', date: @time_now})
      @error1 = AsposeHtml::Error.new({code: '404', message: 'Access denied',
                                       description: 'description', inner_error: @er_detail})

      @instance1 = AsposeHtml::FilesUploadResult.new({uploaded:['file1', 'file2'], errors:[]})
      @instance2 = AsposeHtml::FilesUploadResult.new({uploaded:['file1', 'file2'], errors:[]})
      @instance3 = AsposeHtml::FilesUploadResult.new({uploaded:[], errors:[@error1]})
    end

    it 'should create an instance of FileUploadResult' do
      expect(@instance1).to be_instance_of(AsposeHtml::FilesUploadResult)
      expect(@instance2).to be_instance_of(AsposeHtml::FilesUploadResult)
      expect(@instance3).to be_instance_of(AsposeHtml::FilesUploadResult)
    end

    it 'check class names' do
      expect(@instance1.uploaded).to be_instance_of(Array)
      expect(@instance1.errors).to be_instance_of(Array)
    end

    it 'check compare and keys' do
      dictionary = @instance3.to_hash
      expect(dictionary.has_key?(:uploaded)).to be true
      expect(dictionary.has_key?(:errors)).to be true

      expect(@instance1).to eql(@instance2)
      expect(@instance1).not_to eql(@instance3)
    end
  end

  describe 'StorageExist' do
    before(:all) do
      @instance1 = AsposeHtml::StorageExist.new({exists: false})
      @instance2 = AsposeHtml::StorageExist.new({exists: false})
      @instance3 = AsposeHtml::StorageExist.new({exists: true})
    end

    it 'should create an instance of StorageExist' do
      expect(@instance1).to be_instance_of(AsposeHtml::StorageExist)
      expect(@instance2).to be_instance_of(AsposeHtml::StorageExist)
      expect(@instance3).to be_instance_of(AsposeHtml::StorageExist)
    end

    it 'check class names' do
      expect(@instance1.exists).to be false
      expect(@instance2.exists).to be false
      expect(@instance3.exists).to be true
    end

    it 'check compare and keys' do
      dictionary = @instance3.to_hash
      expect(dictionary.has_key?(:exists)).to be true

      expect(@instance1).to eql(@instance2)
      expect(@instance1).not_to eql(@instance3)
    end
  end

  describe 'ObjectExist' do
    before(:all) do
      # run before all test
      @instance1 = AsposeHtml::ObjectExist.new({exists: true, is_folder: false})
      @instance2 = AsposeHtml::ObjectExist.new({exists: true, is_folder: false})
      @instance3 = AsposeHtml::ObjectExist.new({exists: false, is_folder: false})
    end

    it 'should create an instance of ObjectExist' do
      expect(@instance1).to be_instance_of(AsposeHtml::ObjectExist)
      expect(@instance2).to be_instance_of(AsposeHtml::ObjectExist)
      expect(@instance3).to be_instance_of(AsposeHtml::ObjectExist)
    end

    it 'check class names' do
      expect(@instance1.exists).to be true
      expect(@instance2.exists).to be true
      expect(@instance3.exists).to be false

      expect(@instance1.is_folder).to be false
      expect(@instance2.is_folder).to be false
      expect(@instance3.is_folder).to be false
    end

    it 'check compare and keys' do
      dictionary = @instance1.to_hash
      expect(dictionary.has_key?(:exists)).to be true
      expect(dictionary.has_key?(:is_folder)).to be false
      expect(@instance1).to eql(@instance2)
      expect(@instance1).not_to eql(@instance3)
    end
  end

  describe 'StorageFile' do
    before(:all) do
      time_now = DateTime.now
      @instance1 = AsposeHtml::StorageFile.new({name: 'test', isFolder: false, modifiedDate: time_now,
                                                size: 100, path: '~/user/test_path'})
      @instance2 = AsposeHtml::StorageFile.new({name: 'test', isFolder: false, modifiedDate: time_now,
                                                size: 100, path: '~/user/test_path'})
      @instance3 = AsposeHtml::StorageFile.new({name: 'test', isFolder: true, modifiedDate: time_now,
                                                size: 100, path: '~/user/test_path'})
    end

    it 'should create an instance of FileDetail' do
      expect(@instance1).to be_instance_of(AsposeHtml::StorageFile)
      expect(@instance2).to be_instance_of(AsposeHtml::StorageFile)
      expect(@instance3).to be_instance_of(AsposeHtml::StorageFile)
    end

    it 'check class names' do
      expect(@instance1.name).to be_instance_of(String)
      expect(@instance2.name).to be_instance_of(String)
      expect(@instance3.name).to be_instance_of(String)

      expect(@instance1.is_folder).to be false
      expect(@instance2.is_folder).to be false
      expect(@instance3.is_folder).to be true

      expect(@instance1.modified_date).to be_instance_of(DateTime)
      expect(@instance2.modified_date).to be_instance_of(DateTime)
      expect(@instance3.modified_date).to be_instance_of(DateTime)

      expect(@instance1.size).to be_instance_of(Integer)
      expect(@instance2.size).to be_instance_of(Integer)
      expect(@instance3.size).to be_instance_of(Integer)

      expect(@instance1.path).to be_instance_of(String)
      expect(@instance2.path).to be_instance_of(String)
      expect(@instance3.path).to be_instance_of(String)
    end

    it 'check compare and keys' do
      dictionary = @instance3.to_hash
      expect(dictionary.has_key?(:name)).to be true
      expect(dictionary.has_key?(:isFolder)).to be true
      expect(dictionary.has_key?(:modifiedDate)).to be true
      expect(dictionary.has_key?(:size)).to be true
      expect(dictionary.has_key?(:path)).to be true

      expect(@instance1).to eql(@instance2)
      expect(@instance1).not_to eql(@instance3)
    end
  end

end