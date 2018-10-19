=begin
#SignRequest API

#API for SignRequest.com

OpenAPI spec version: v1
Contact: tech-support@signrequest.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'date'

module SignRequestClient

  class DocumentSearch
    # `co`: converting, `ne`: new, `se`: sent, `vi`: viewed, `si`: signed, `do`: downloaded, `sd`: signed and downloaded, `ca`: cancelled, `de`: declined, `ec`: error converting, `es`: error sending, `xp`: expired
    attr_accessor :status

    # Defaults to filename
    attr_accessor :name

    attr_accessor :who

    attr_accessor :nr_extra_docs

    attr_accessor :from_email

    attr_accessor :uuid

    attr_accessor :created

    attr_accessor :autocomplete

    attr_accessor :signer_emails

    attr_accessor :status_display

    attr_accessor :created_timestamp

    attr_accessor :finished_on_timestamp

    attr_accessor :parent_doc

    attr_accessor :finished_on

    attr_accessor :subdomain


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'status' => :'status',
        :'name' => :'name',
        :'who' => :'who',
        :'nr_extra_docs' => :'nr_extra_docs',
        :'from_email' => :'from_email',
        :'uuid' => :'uuid',
        :'created' => :'created',
        :'autocomplete' => :'autocomplete',
        :'signer_emails' => :'signer_emails',
        :'status_display' => :'status_display',
        :'created_timestamp' => :'created_timestamp',
        :'finished_on_timestamp' => :'finished_on_timestamp',
        :'parent_doc' => :'parent_doc',
        :'finished_on' => :'finished_on',
        :'subdomain' => :'subdomain'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'status' => :'String',
        :'name' => :'String',
        :'who' => :'String',
        :'nr_extra_docs' => :'Integer',
        :'from_email' => :'String',
        :'uuid' => :'String',
        :'created' => :'DateTime',
        :'autocomplete' => :'String',
        :'signer_emails' => :'Array<String>',
        :'status_display' => :'String',
        :'created_timestamp' => :'Integer',
        :'finished_on_timestamp' => :'Integer',
        :'parent_doc' => :'String',
        :'finished_on' => :'DateTime',
        :'subdomain' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'who')
        self.who = attributes[:'who']
      end

      if attributes.has_key?(:'nr_extra_docs')
        self.nr_extra_docs = attributes[:'nr_extra_docs']
      end

      if attributes.has_key?(:'from_email')
        self.from_email = attributes[:'from_email']
      end

      if attributes.has_key?(:'uuid')
        self.uuid = attributes[:'uuid']
      end

      if attributes.has_key?(:'created')
        self.created = attributes[:'created']
      end

      if attributes.has_key?(:'autocomplete')
        self.autocomplete = attributes[:'autocomplete']
      end

      if attributes.has_key?(:'signer_emails')
        if (value = attributes[:'signer_emails']).is_a?(Array)
          self.signer_emails = value
        end
      end

      if attributes.has_key?(:'status_display')
        self.status_display = attributes[:'status_display']
      end

      if attributes.has_key?(:'created_timestamp')
        self.created_timestamp = attributes[:'created_timestamp']
      end

      if attributes.has_key?(:'finished_on_timestamp')
        self.finished_on_timestamp = attributes[:'finished_on_timestamp']
      end

      if attributes.has_key?(:'parent_doc')
        self.parent_doc = attributes[:'parent_doc']
      end

      if attributes.has_key?(:'finished_on')
        self.finished_on = attributes[:'finished_on']
      end

      if attributes.has_key?(:'subdomain')
        self.subdomain = attributes[:'subdomain']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@status.nil? && @status.to_s.length > 2
        invalid_properties.push("invalid value for 'status', the character length must be smaller than or equal to 2.")
      end

      if !@status.nil? && @status.to_s.length < 1
        invalid_properties.push("invalid value for 'status', the character length must be great than or equal to 1.")
      end

      if !@name.nil? && @name.to_s.length < 1
        invalid_properties.push("invalid value for 'name', the character length must be great than or equal to 1.")
      end

      if @who.nil?
        invalid_properties.push("invalid value for 'who', who cannot be nil.")
      end

      if @who.to_s.length < 1
        invalid_properties.push("invalid value for 'who', the character length must be great than or equal to 1.")
      end

      if @nr_extra_docs.nil?
        invalid_properties.push("invalid value for 'nr_extra_docs', nr_extra_docs cannot be nil.")
      end

      if @from_email.nil?
        invalid_properties.push("invalid value for 'from_email', from_email cannot be nil.")
      end

      if @from_email.to_s.length < 1
        invalid_properties.push("invalid value for 'from_email', the character length must be great than or equal to 1.")
      end

      if !@uuid.nil? && @uuid.to_s.length < 1
        invalid_properties.push("invalid value for 'uuid', the character length must be great than or equal to 1.")
      end

      if @autocomplete.nil?
        invalid_properties.push("invalid value for 'autocomplete', autocomplete cannot be nil.")
      end

      if @autocomplete.to_s.length < 1
        invalid_properties.push("invalid value for 'autocomplete', the character length must be great than or equal to 1.")
      end

      if !@status_display.nil? && @status_display.to_s.length < 1
        invalid_properties.push("invalid value for 'status_display', the character length must be great than or equal to 1.")
      end

      if !@parent_doc.nil? && @parent_doc.to_s.length < 1
        invalid_properties.push("invalid value for 'parent_doc', the character length must be great than or equal to 1.")
      end

      if !@subdomain.nil? && @subdomain.to_s.length < 1
        invalid_properties.push("invalid value for 'subdomain', the character length must be great than or equal to 1.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@status.nil? && @status.to_s.length > 2
      return false if !@status.nil? && @status.to_s.length < 1
      return false if !@name.nil? && @name.to_s.length < 1
      return false if @who.nil?
      return false if @who.to_s.length < 1
      return false if @nr_extra_docs.nil?
      return false if @from_email.nil?
      return false if @from_email.to_s.length < 1
      return false if !@uuid.nil? && @uuid.to_s.length < 1
      return false if @autocomplete.nil?
      return false if @autocomplete.to_s.length < 1
      return false if !@status_display.nil? && @status_display.to_s.length < 1
      return false if !@parent_doc.nil? && @parent_doc.to_s.length < 1
      return false if !@subdomain.nil? && @subdomain.to_s.length < 1
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] status Value to be assigned
    def status=(status)

      if !status.nil? && status.to_s.length > 2
        fail ArgumentError, "invalid value for 'status', the character length must be smaller than or equal to 2."
      end

      if !status.nil? && status.to_s.length < 1
        fail ArgumentError, "invalid value for 'status', the character length must be great than or equal to 1."
      end

      @status = status
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)

      if !name.nil? && name.to_s.length < 1
        fail ArgumentError, "invalid value for 'name', the character length must be great than or equal to 1."
      end

      @name = name
    end

    # Custom attribute writer method with validation
    # @param [Object] who Value to be assigned
    def who=(who)
      if who.nil?
        fail ArgumentError, "who cannot be nil"
      end

      if who.to_s.length < 1
        fail ArgumentError, "invalid value for 'who', the character length must be great than or equal to 1."
      end

      @who = who
    end

    # Custom attribute writer method with validation
    # @param [Object] from_email Value to be assigned
    def from_email=(from_email)
      if from_email.nil?
        fail ArgumentError, "from_email cannot be nil"
      end

      if from_email.to_s.length < 1
        fail ArgumentError, "invalid value for 'from_email', the character length must be great than or equal to 1."
      end

      @from_email = from_email
    end

    # Custom attribute writer method with validation
    # @param [Object] uuid Value to be assigned
    def uuid=(uuid)

      if !uuid.nil? && uuid.to_s.length < 1
        fail ArgumentError, "invalid value for 'uuid', the character length must be great than or equal to 1."
      end

      @uuid = uuid
    end

    # Custom attribute writer method with validation
    # @param [Object] autocomplete Value to be assigned
    def autocomplete=(autocomplete)
      if autocomplete.nil?
        fail ArgumentError, "autocomplete cannot be nil"
      end

      if autocomplete.to_s.length < 1
        fail ArgumentError, "invalid value for 'autocomplete', the character length must be great than or equal to 1."
      end

      @autocomplete = autocomplete
    end

    # Custom attribute writer method with validation
    # @param [Object] status_display Value to be assigned
    def status_display=(status_display)

      if !status_display.nil? && status_display.to_s.length < 1
        fail ArgumentError, "invalid value for 'status_display', the character length must be great than or equal to 1."
      end

      @status_display = status_display
    end

    # Custom attribute writer method with validation
    # @param [Object] parent_doc Value to be assigned
    def parent_doc=(parent_doc)

      if !parent_doc.nil? && parent_doc.to_s.length < 1
        fail ArgumentError, "invalid value for 'parent_doc', the character length must be great than or equal to 1."
      end

      @parent_doc = parent_doc
    end

    # Custom attribute writer method with validation
    # @param [Object] subdomain Value to be assigned
    def subdomain=(subdomain)

      if !subdomain.nil? && subdomain.to_s.length < 1
        fail ArgumentError, "invalid value for 'subdomain', the character length must be great than or equal to 1."
      end

      @subdomain = subdomain
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          status == o.status &&
          name == o.name &&
          who == o.who &&
          nr_extra_docs == o.nr_extra_docs &&
          from_email == o.from_email &&
          uuid == o.uuid &&
          created == o.created &&
          autocomplete == o.autocomplete &&
          signer_emails == o.signer_emails &&
          status_display == o.status_display &&
          created_timestamp == o.created_timestamp &&
          finished_on_timestamp == o.finished_on_timestamp &&
          parent_doc == o.parent_doc &&
          finished_on == o.finished_on &&
          subdomain == o.subdomain
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [status, name, who, nr_extra_docs, from_email, uuid, created, autocomplete, signer_emails, status_display, created_timestamp, finished_on_timestamp, parent_doc, finished_on, subdomain].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = SignRequestClient.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
