# frozen_string_literal: true

module CKB
  module Indexer
    class API
      attr_reader :rpc

      DEFAULT_LIMIT = 1000

      def initialize(indexer_host = CKB::RPC::DEFAULT_URL, timeout_config = {})
        @rpc = CKB::RPC.new(host: indexer_host, timeout_config: timeout_config)
      end

      def get_cells(search_key:, order: "asc", limit: DEFAULT_LIMIT, after_cursor: nil)
        result = rpc.get_cells(search_key.to_h, order, Utils.to_hex(limit), after_cursor)
        CKB::Indexer::Types::LiveCells.from_h(result)
      end

      def get_cells_capacity(search_key)
        result = rpc.get_cells_capacity(search_key.to_h)
        CKB::Indexer::Types::CellsCapacity.from_h(result)
      end
    end
  end
end
