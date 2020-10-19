# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: router/router.proto for package 'router'

require 'grpc'
require 'router/router_pb'

module Router
  module Router
    # Router service is used by the proxy to lookup routes
    class Service

      include GRPC::GenericService

      self.marshal_class_method = :encode
      self.unmarshal_class_method = :decode
      self.service_name = 'router.Router'

      rpc :Lookup, ::Router::LookupRequest, ::Router::LookupResponse
      rpc :Watch, ::Router::WatchRequest, stream(::Router::Event)
    end

    Stub = Service.rpc_stub_class
  end
  module Table
    class Service

      include GRPC::GenericService

      self.marshal_class_method = :encode
      self.unmarshal_class_method = :decode
      self.service_name = 'router.Table'

      rpc :Create, ::Router::Route, ::Router::CreateResponse
      rpc :Delete, ::Router::Route, ::Router::DeleteResponse
      rpc :Update, ::Router::Route, ::Router::UpdateResponse
      rpc :Read, ::Router::ReadRequest, ::Router::ReadResponse
    end

    Stub = Service.rpc_stub_class
  end
end
