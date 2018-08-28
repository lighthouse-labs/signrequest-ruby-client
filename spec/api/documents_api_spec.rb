=begin
#SignRequest API

#API for SignRequest.com

OpenAPI spec version: v1
Contact: tech-support@signrequest.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for SignRequestClient::DocumentsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'DocumentsApi' do
  before do
    # run before each test
    @instance = SignRequestClient::DocumentsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DocumentsApi' do
    it 'should create an instance of DocumentsApi' do
      expect(@instance).to be_instance_of(SignRequestClient::DocumentsApi)
    end
  end

  # unit tests for documents_create
  # 
  # 
  # @param data 
  # @param [Hash] opts the optional parameters
  # @return [Document]
  describe 'documents_create test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for documents_delete
  # 
  # 
  # @param uuid 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'documents_delete test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for documents_delete_files
  # 
  # This is only for integration partners
  # @param uuid 
  # @param data 
  # @param [Hash] opts the optional parameters
  # @return [Document]
  describe 'documents_delete_files test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for documents_list
  # 
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :external_id 
  # @option opts [String] :signrequest__who 
  # @option opts [String] :signrequest__from_email 
  # @option opts [String] :status 
  # @option opts [String] :user__email 
  # @option opts [String] :user__first_name 
  # @option opts [String] :user__last_name 
  # @option opts [String] :created 
  # @option opts [String] :modified 
  # @option opts [Integer] :page A page number within the paginated result set.
  # @option opts [Integer] :limit Number of results to return per page.
  # @return [InlineResponse2003]
  describe 'documents_list test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for documents_read
  # 
  # 
  # @param uuid 
  # @param [Hash] opts the optional parameters
  # @return [Document]
  describe 'documents_read test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end