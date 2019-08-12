
# -*- coding: utf-8 -*-
=begin
  --------------------------------------------------------------------------------------------------------------------
  <copyright company="Aspose" file="storage_api_spec.rb">
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

require 'spec_helper'
require 'json'

describe 'Test Storage API' do
  before(:all) do
    # run before all tests
    @api = AsposeHtml::StorageApi.new CONFIG
  end

  describe 'test an instance of StorageApi' do
    it 'should create an instance of StorageApi' do
      expect(@api).to be_instance_of(AsposeHtml::StorageApi)
    end
  end

  #################################################
  #            Storage API
  #################################################

  # Get disc usage
  # @param [Hash] opts the optional parameters
  # @option opts [String] :storage_name Storage name
  # @return [DiscUsage]
  describe 'get_disc_usage test' do
    it "must be DiscUsage:{usedSize: num, totalSize: num}" do
      opts = {storage_name: nil}
      res = @api.get_disc_usage(opts)

      expect(res).to be_an_instance_of AsposeHtml::DiscUsage
      expect(res.used_size).to be_an_instance_of Integer
      expect(res.total_size).to be_an_instance_of Integer
      puts(res)
    end
  end

  # Check if file or folder exists
  # @param path File or folder path e.g. &#39;/file.ext&#39; or &#39;/folder&#39;
  # @param [Hash] opts the optional parameters
  # @option opts [String] :storage_name Storage name
  # @option opts [String] :version_id File version ID
  # @return [ObjectExist]
  describe 'object_exists test' do
    it "must be ObjectExist:{isExist: true, isFolder: false}" do

      name = "test3.html.zip"

      # Upload file to server
      res = upload_file_helper(name)
      expect(res.uploaded.length).to eql(1)
      expect(res.errors.length).to eql(0)

      path = "HtmlTestDoc/" + name
      opts = {storage_name: nil, version_id: nil}

      res = @api.object_exists(path, opts)
      expect(res).to be_an_instance_of AsposeHtml::ObjectExist
      expect(res.exists).to be true
      expect(res.is_folder).to be false
    end

    it "must be ObjectExist:{isExist: false, isFolder: false}" do

      path = "/non_exist_file.ext"
      opts = {storageName: nil, versionId: nil}

      res = @api.object_exists(path, opts)
      expect(res).to be_an_instance_of AsposeHtml::ObjectExist
      expect(res.exists).to be false
      expect(res.is_folder).to be false
    end
 end

  # Check if storage exists
  # @param storage_name Storage name
  # @param [Hash] opts the optional parameters
  # @return [StorageExist]
  describe 'storage_exists test' do
    it "must be {'exists':false}" do

      res = @api.storage_exists('non_exist_storage')
      expect(res).to be_an_instance_of AsposeHtml::StorageExist
      expect(res.exists).to be false
    end
  end

  # Get file versions
  # @param path File path e.g. &#39;/file.ext&#39;
  # @param [Hash] opts the optional parameters
  # @option opts [String] :storage_name Storage name
  # @return [Array<(FileVersions, Fixnum, Hash)>] FileVersions data, response status code and response headers
  describe 'get_file_versions test' do
    it "must be {'value':[...]}" do

      name = "test1.html"

      # Upload file to server
      res = upload_file_helper(name)
      expect(res.uploaded.length).to eql(1)
      expect(res.errors.length).to eql(0)

      # Upload file to server
      res = upload_file_helper(name)
      expect(res.uploaded.length).to eql(1)
      expect(res.errors.length).to eql(0)

      # Upload file to server
      res = upload_file_helper(name)
      expect(res.uploaded.length).to eql(1)
      expect(res.errors.length).to eql(0)

      path = "HtmlTestDoc/" + name
      opts = {storage_name: nil}

      res = @api.get_file_versions(path, opts)

      expect(res).to be_an_instance_of AsposeHtml::FileVersions
      expect(res.value).to be_an_instance_of Array
      expect(res.value[0]).to be_an_instance_of AsposeHtml::FileVersion
      puts(res)
    end
  end

  #################################################
  #            File API
  #################################################

  # unit tests for delete_file
  # Remove a specific file
  #
  # Delete file
  # @param path File path e.g. &#39;/folder/file.ext&#39;
  # @param [Hash] opts the optional parameters
  # @option opts [String] :storage_name Storage name
  # @option opts [String] :version_id File version ID to delete
  # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
  describe 'delete_file test' do
    it "return void, check if file not exist" do
      name = "test_for_delete.html"

      # Upload files to server
      res = upload_file_helper(name)
      expect(res.uploaded.length).to eql(1)
      expect(res.errors.length).to eql(0)

      path = "HtmlTestDoc/" + name
      opts = {storage_name: nil, version_id: nil}

      @api.delete_file(path, opts)

      # Check result
      res = @api.object_exists(path, opts)
      expect(res).to be_an_instance_of AsposeHtml::ObjectExist
      expect(res.exists).to be false
      expect(res.is_folder).to be false
    end
  end

  # Download file
  # @param path File path e.g. &#39;/folder/file.ext&#39;
  # @param [Hash] opts the optional parameters
  # @option opts [String] :storage_name Storage name
  # @option opts [String] :version_id File version ID to download
  # @return [File]
  describe 'download_file test' do
    it "must be file: path_to_tmp_file" do
      name = "test_download.jpg"

      # Upload files to server
      res = upload_file_helper(name)
      expect(res.uploaded.length).to eql(1)
      expect(res.errors.length).to eql(0)

      path = "HtmlTestDoc/" + name
      opts = {storage_name: nil, version_id: nil}

      size_src = get_file_size(name)

      res = @api.download_file(path, opts)
      expect(res).to be_an_instance_of File

      expect(File.size(res.to_path)).to eql size_src

      #Move to test folder
      save_to_test_dir(res, name)

      # clear
      @api.delete_file(path, opts)

      # Check result
      res = @api.object_exists(path, opts)
      expect(res).to be_an_instance_of AsposeHtml::ObjectExist
      expect(res.exists).to be false
      expect(res.is_folder).to be false
    end
  end

  # Copy file
  # @param src_path Source file path e.g. &#39;/folder/file.ext&#39;
  # @param dest_path Destination file path
  # @param [Hash] opts the optional parameters
  # @option opts [String] :src_storage_name Source storage name
  # @option opts [String] :dest_storage_name Destination storage name
  # @option opts [String] :version_id File version ID to copy
  # @return nil
  describe 'copy_file test' do
    it "must be throw if error" do
      name = "test_for_copy.html"

      # Upload files to server
      res = upload_file_helper(name)
      expect(res.uploaded.length).to eql(1)
      expect(res.errors.length).to eql(0)

      src_path = "HtmlTestDoc/" + name
      dest_path = "HtmlTestDoc/test_copied.html"

      opts = {src_storage: nil, dest_storage: nil, version_id: nil}

      @api.copy_file(src_path, dest_path, opts)

      # Check result destination
      res = @api.object_exists(dest_path)
      expect(res).to be_an_instance_of AsposeHtml::ObjectExist
      expect(res.exists).to be true
      expect(res.is_folder).to be false

      # Check result source
      res = @api.object_exists(src_path)
      expect(res).to be_an_instance_of AsposeHtml::ObjectExist
      expect(res.exists).to be true
      expect(res.is_folder).to be false

      # Clear
      @api.delete_file(src_path)
      @api.delete_file(dest_path)
    end
  end

  # unit tests for move_file
  # Move a specific file
  #
  # @param src_path Source file path e.g. &#39;/src.ext&#39;
  # @param dest_path Destination file path e.g. &#39;/dest.ext&#39;
  # @param [Hash] opts the optional parameters
  # @option opts [String] :src_storage_name Source storage name
  # @option opts [String] :dest_storage_name Destination storage name
  # @option opts [String] :version_id File version ID to move
  # @return [nil]
  describe 'move_file test' do
    it "must be throw if error" do
      name = "test_for_move.html"

      # Upload files to server
      res = upload_file_helper(name)
      expect(res.uploaded.length).to eql(1)
      expect(res.errors.length).to eql(0)

      src_path = "HtmlTestDoc/" + name
      dest_path = "HtmlTestDoc/test_moved.html"

      opts = {src_storage: nil, dest_storage: nil, version_id: nil}

      @api.move_file(src_path, dest_path, opts)

      # Check result destination
      res = @api.object_exists(dest_path)
      expect(res).to be_an_instance_of AsposeHtml::ObjectExist
      expect(res.exists).to be true
      expect(res.is_folder).to be false

      # Check result source
      res = @api.object_exists(src_path)
      expect(res).to be_an_instance_of AsposeHtml::ObjectExist
      expect(res.exists).to be false
      expect(res.is_folder).to be false

      # Clear
      @api.delete_file(dest_path)
    end
  end

  # Upload file
  # @param path Path where to upload including filename and extension e.g. /file.ext or /Folder 1/file.ext             If the content is multipart and path does not contains the file name it tries to get them from filename parameter             from Content-Disposition header.
  # @param file File to upload
  # @param [Hash] opts the optional parameters
  # @option opts [String] :storage_name Storage name
  # @return [FilesUploadResult]
  describe 'upload_file test' do
    it "must be FilesUploadResult" do
      name = "test_upload_file.html"

      path = "HtmlTestDoc/" + name
      file = File.realpath(__dir__ + '/../../testdata/' + name)

      opts = {storage_name: nil, version_id: nil}

      res = @api.upload_file(path, file, opts)
      expect(res.uploaded.length).to eql(1)
      expect(res.errors.length).to eql(0)

      # clear
      @api.delete_file(path)
    end
  end

  #################################################
  #            Folder API
  #################################################

  # Create the folder
  # @param path Folder path to create e.g. &#39;folder_1/folder_2/&#39;
  # @param [Hash] opts the optional parameters
  # @option opts [String] :storage_name Storage name
  # @return [nil]
  describe 'create_folder test' do
    it "must be throw if error" do

      path = "HtmlTestDoc/testFolder1/testFolder2/testFolder3"

      opts_exist = {storage_name: nil, version_id: nil}

      # Check before
      res = @api.object_exists(path, opts_exist)
      expect(res).to be_an_instance_of AsposeHtml::ObjectExist
      expect(res.exists).to be false
      expect(res.is_folder).to be false

      opts_folder = {storage_name: nil}

      @api.create_folder(path, opts_folder)

      # Check after
      res = @api.object_exists(path, opts_exist)
      expect(res).to be_an_instance_of AsposeHtml::ObjectExist
      expect(res.exists).to be true
      expect(res.is_folder).to be true

      # clear
      path = "HtmlTestDoc/testFolder1"
      opts_delete = {storage_name: nil, recursive: true}

      @api.delete_folder(path, opts_delete)

      # Check after clear
      res = @api.object_exists(path, opts_exist)
      expect(res).to be_an_instance_of AsposeHtml::ObjectExist
      expect(res.exists).to be false
      expect(res.is_folder).to be false
    end
  end

  # Copy folder
  # @param src_path Source folder path e.g. &#39;/src&#39;
  # @param dest_path Destination folder path e.g. &#39;/dst&#39;
  # @param [Hash] opts the optional parameters
  # @option opts [String] :src_storage_name Source storage name
  # @option opts [String] :dest_storage_name Destination storage name
  # @return [nil]
  describe 'copy_folder test' do
    it "must be throw if error" do

      src_path = "HtmlTestDoc/testSourceFolder"
      opts_exist = {storage_name: nil, version_id: nil}

      # Check before
      res = @api.object_exists(src_path, opts_exist)
      expect(res).to be_an_instance_of AsposeHtml::ObjectExist
      expect(res.exists).to be false
      expect(res.is_folder).to be false

      # create folder
      opts_folder = {storage_name: nil}
      @api.create_folder(src_path, opts_folder)

      # Check creating
      res = @api.object_exists(src_path, opts_exist)
      expect(res).to be_an_instance_of AsposeHtml::ObjectExist
      expect(res.exists).to be true
      expect(res.is_folder).to be true

      # Test copy folder
      dest_path = "HtmlTestDoc/CopiedFolder"
      opts_copy = {src_storage_name: nil, dest_storage_name: nil}

      @api.copy_folder(src_path, dest_path, opts_copy)

      # Check src after copy
      res = @api.object_exists(src_path, opts_exist)
      expect(res).to be_an_instance_of AsposeHtml::ObjectExist
      expect(res.exists).to be true
      expect(res.is_folder).to be true

      # Check dst after copy
      res = @api.object_exists(dest_path, opts_exist)
      expect(res).to be_an_instance_of AsposeHtml::ObjectExist
      expect(res.exists).to be true
      expect(res.is_folder).to be true

      # Clear test folder
      opts_delete = {storage_name: nil, recursive: true}
      @api.delete_folder(src_path, opts_delete)
      @api.delete_folder(dest_path, opts_delete)
    end
  end

  # Move folder
  # @param src_path Folder path to move e.g. &#39;/folder&#39;
  # @param dest_path Destination folder path to move to e.g &#39;/dst&#39;
  # @param [Hash] opts the optional parameters
  # @option opts [String] :src_storage_name Source storage name
  # @option opts [String] :dest_storage_name Destination storage name
  # @return [nil]
  describe 'move_folder test' do
    it "must be throw if error" do

      src_path = "HtmlTestDoc/testSourceFolder"
      opts_exist = {storage_name: nil, version_id: nil}

      # Check before
      res = @api.object_exists(src_path, opts_exist)
      expect(res).to be_an_instance_of AsposeHtml::ObjectExist
      expect(res.exists).to be false
      expect(res.is_folder).to be false

      # create folder
      opts_folder = {storage_name: nil}
      @api.create_folder(src_path, opts_folder)

      # Check creating
      res = @api.object_exists(src_path, opts_exist)
      expect(res).to be_an_instance_of AsposeHtml::ObjectExist
      expect(res.exists).to be true
      expect(res.is_folder).to be true

      # Test move folder
      dest_path = "HtmlTestDoc/MovedFolder"
      opts_copy = {src_storage_name: nil, dest_storage_name: nil}

      @api.move_folder(src_path, dest_path, opts_copy)

      # Check src after copy
      res = @api.object_exists(src_path, opts_exist)
      expect(res).to be_an_instance_of AsposeHtml::ObjectExist
      expect(res.exists).to be false
      expect(res.is_folder).to be false

      # Check dst after copy
      res = @api.object_exists(dest_path, opts_exist)
      expect(res).to be_an_instance_of AsposeHtml::ObjectExist
      expect(res.exists).to be true
      expect(res.is_folder).to be true

      # Clear test folder
      opts_delete = {storage_name: nil, recursive: true}
      @api.delete_folder(src_path, opts_delete)
      @api.delete_folder(dest_path, opts_delete)
    end
  end

  # Delete folder
  # @param path Folder path e.g. &#39;/folder&#39;
  # @param [Hash] opts the optional parameters
  # @option opts [String] :storage_name Storage name
  # @option opts [BOOLEAN] :recursive Enable to delete folders, subfolders and files (default to false)
  # @return [nil]
  describe 'delete_folder test' do
    it "must be throw if error" do

      path = "HtmlTestDoc/testDeketeFolder"
      opts_exist = {storage_name: nil, version_id: nil}

      # Check before
      res = @api.object_exists(path, opts_exist)
      expect(res).to be_an_instance_of AsposeHtml::ObjectExist
      expect(res.exists).to be false
      expect(res.is_folder).to be false

      # create folder
      opts_folder = {storage_name: nil}
      @api.create_folder(path, opts_folder)

      # Check creating
      res = @api.object_exists(path, opts_exist)
      expect(res).to be_an_instance_of AsposeHtml::ObjectExist
      expect(res.exists).to be true
      expect(res.is_folder).to be true

      # Test delete folder
      opts_delete = {storage_name: nil, recursive: true}
      @api.delete_folder(path, opts_delete)

      # Check after delete
      res = @api.object_exists(path, opts_exist)
      expect(res).to be_an_instance_of AsposeHtml::ObjectExist
      expect(res.exists).to be false
      expect(res.is_folder).to be false
    end
  end

  # Get all files and folders within a folder
  # @param path Folder path e.g. &#39;/folder&#39;
  # @param [Hash] opts the optional parameters
  # @option opts [String] :storage_name Storage name
  # @return [FilesList]
  describe 'get_files_list test' do
    it "should work" do
      path = "HtmlTestDoc"
      opts = {storage_name: nil}
      res = @api.get_files_list(path, opts)
      puts(res)
    end
  end
end