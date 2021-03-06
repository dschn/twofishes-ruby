#
# Autogenerated by Thrift Compiler (0.9.2)
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#

module Geocoder
  class Client
    include ::Thrift::Client

    def geocode(r)
      send_geocode(r)
      return recv_geocode()
    end

    def send_geocode(r)
      send_message('geocode', Geocode_args, :r => r)
    end

    def recv_geocode()
      result = receive_message(Geocode_result)
      return result.success unless result.success.nil?
      raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'geocode failed: unknown result')
    end

    def reverseGeocode(r)
      send_reverseGeocode(r)
      return recv_reverseGeocode()
    end

    def send_reverseGeocode(r)
      send_message('reverseGeocode', ReverseGeocode_args, :r => r)
    end

    def recv_reverseGeocode()
      result = receive_message(ReverseGeocode_result)
      return result.success unless result.success.nil?
      raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'reverseGeocode failed: unknown result')
    end

    def bulkReverseGeocode(r)
      send_bulkReverseGeocode(r)
      return recv_bulkReverseGeocode()
    end

    def send_bulkReverseGeocode(r)
      send_message('bulkReverseGeocode', BulkReverseGeocode_args, :r => r)
    end

    def recv_bulkReverseGeocode()
      result = receive_message(BulkReverseGeocode_result)
      return result.success unless result.success.nil?
      raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'bulkReverseGeocode failed: unknown result')
    end

    def bulkSlugLookup(r)
      send_bulkSlugLookup(r)
      return recv_bulkSlugLookup()
    end

    def send_bulkSlugLookup(r)
      send_message('bulkSlugLookup', BulkSlugLookup_args, :r => r)
    end

    def recv_bulkSlugLookup()
      result = receive_message(BulkSlugLookup_result)
      return result.success unless result.success.nil?
      raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'bulkSlugLookup failed: unknown result')
    end

    def refreshStore(r)
      send_refreshStore(r)
      return recv_refreshStore()
    end

    def send_refreshStore(r)
      send_message('refreshStore', RefreshStore_args, :r => r)
    end

    def recv_refreshStore()
      result = receive_message(RefreshStore_result)
      return result.success unless result.success.nil?
      raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'refreshStore failed: unknown result')
    end

    def getS2CellInfos(r)
      send_getS2CellInfos(r)
      return recv_getS2CellInfos()
    end

    def send_getS2CellInfos(r)
      send_message('getS2CellInfos', GetS2CellInfos_args, :r => r)
    end

    def recv_getS2CellInfos()
      result = receive_message(GetS2CellInfos_result)
      return result.success unless result.success.nil?
      raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'getS2CellInfos failed: unknown result')
    end

  end

  class Processor
    include ::Thrift::Processor

    def process_geocode(seqid, iprot, oprot)
      args = read_args(iprot, Geocode_args)
      result = Geocode_result.new()
      result.success = @handler.geocode(args.r)
      write_result(result, oprot, 'geocode', seqid)
    end

    def process_reverseGeocode(seqid, iprot, oprot)
      args = read_args(iprot, ReverseGeocode_args)
      result = ReverseGeocode_result.new()
      result.success = @handler.reverseGeocode(args.r)
      write_result(result, oprot, 'reverseGeocode', seqid)
    end

    def process_bulkReverseGeocode(seqid, iprot, oprot)
      args = read_args(iprot, BulkReverseGeocode_args)
      result = BulkReverseGeocode_result.new()
      result.success = @handler.bulkReverseGeocode(args.r)
      write_result(result, oprot, 'bulkReverseGeocode', seqid)
    end

    def process_bulkSlugLookup(seqid, iprot, oprot)
      args = read_args(iprot, BulkSlugLookup_args)
      result = BulkSlugLookup_result.new()
      result.success = @handler.bulkSlugLookup(args.r)
      write_result(result, oprot, 'bulkSlugLookup', seqid)
    end

    def process_refreshStore(seqid, iprot, oprot)
      args = read_args(iprot, RefreshStore_args)
      result = RefreshStore_result.new()
      result.success = @handler.refreshStore(args.r)
      write_result(result, oprot, 'refreshStore', seqid)
    end

    def process_getS2CellInfos(seqid, iprot, oprot)
      args = read_args(iprot, GetS2CellInfos_args)
      result = GetS2CellInfos_result.new()
      result.success = @handler.getS2CellInfos(args.r)
      write_result(result, oprot, 'getS2CellInfos', seqid)
    end

  end

  # HELPER FUNCTIONS AND STRUCTURES

  class Geocode_args
    include ::Thrift::Struct, ::Thrift::Struct_Union
    R = 1

    FIELDS = {
      R => {:type => ::Thrift::Types::STRUCT, :name => 'r', :class => ::GeocodeRequest}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class Geocode_result
    include ::Thrift::Struct, ::Thrift::Struct_Union
    SUCCESS = 0

    FIELDS = {
      SUCCESS => {:type => ::Thrift::Types::STRUCT, :name => 'success', :class => ::GeocodeResponse}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class ReverseGeocode_args
    include ::Thrift::Struct, ::Thrift::Struct_Union
    R = 1

    FIELDS = {
      R => {:type => ::Thrift::Types::STRUCT, :name => 'r', :class => ::GeocodeRequest}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class ReverseGeocode_result
    include ::Thrift::Struct, ::Thrift::Struct_Union
    SUCCESS = 0

    FIELDS = {
      SUCCESS => {:type => ::Thrift::Types::STRUCT, :name => 'success', :class => ::GeocodeResponse}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class BulkReverseGeocode_args
    include ::Thrift::Struct, ::Thrift::Struct_Union
    R = 1

    FIELDS = {
      R => {:type => ::Thrift::Types::STRUCT, :name => 'r', :class => ::BulkReverseGeocodeRequest}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class BulkReverseGeocode_result
    include ::Thrift::Struct, ::Thrift::Struct_Union
    SUCCESS = 0

    FIELDS = {
      SUCCESS => {:type => ::Thrift::Types::STRUCT, :name => 'success', :class => ::BulkReverseGeocodeResponse}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class BulkSlugLookup_args
    include ::Thrift::Struct, ::Thrift::Struct_Union
    R = 1

    FIELDS = {
      R => {:type => ::Thrift::Types::STRUCT, :name => 'r', :class => ::BulkSlugLookupRequest}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class BulkSlugLookup_result
    include ::Thrift::Struct, ::Thrift::Struct_Union
    SUCCESS = 0

    FIELDS = {
      SUCCESS => {:type => ::Thrift::Types::STRUCT, :name => 'success', :class => ::BulkSlugLookupResponse}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class RefreshStore_args
    include ::Thrift::Struct, ::Thrift::Struct_Union
    R = 1

    FIELDS = {
      R => {:type => ::Thrift::Types::STRUCT, :name => 'r', :class => ::RefreshStoreRequest}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class RefreshStore_result
    include ::Thrift::Struct, ::Thrift::Struct_Union
    SUCCESS = 0

    FIELDS = {
      SUCCESS => {:type => ::Thrift::Types::STRUCT, :name => 'success', :class => ::RefreshStoreResponse}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class GetS2CellInfos_args
    include ::Thrift::Struct, ::Thrift::Struct_Union
    R = 1

    FIELDS = {
      R => {:type => ::Thrift::Types::STRUCT, :name => 'r', :class => ::S2CellInfoRequest}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class GetS2CellInfos_result
    include ::Thrift::Struct, ::Thrift::Struct_Union
    SUCCESS = 0

    FIELDS = {
      SUCCESS => {:type => ::Thrift::Types::STRUCT, :name => 'success', :class => ::S2CellInfoResponse}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

end
