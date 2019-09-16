RSpec.describe CKB::Types::CellInfo do
  let(:cell_info_with_data_h) do
    {
      "data": {
        "content": "0x7f454c460201010000000000000000000200f3000100000078000100000000004000000000000000980000000000000005000000400038000100400003000200010000000500000000000000000000000000010000000000000001000000000082000000000000008200000000000000001000000000000001459308d00573000000002e7368737472746162002e74657874000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b000000010000000600000000000000780001000000000078000000000000000a0000000000000000000000000000000200000000000000000000000000000001000000030000000000000000000000000000000000000082000000000000001100000000000000000000000000000001000000000000000000000000000000",
        "hash": "0x28e83a1277d48add8e72fadaa9248559e1b632bab2bd60b27955ebc4c03800a5"
      },
      "output": {
          "capacity": "0x802665800",
          "lock": {
              "args": [],
              "code_hash": "0x0000000000000000000000000000000000000000000000000000000000000000",
              "hash_type": "data"
          },
          "type": nil
      }
    }
  end

  let(:cell_info_without_data_h) do
    {
      "output": {
        "capacity": "0x802665800",
        "lock": {
            "args": [],
            "code_hash": "0x0000000000000000000000000000000000000000000000000000000000000000",
            "hash_type": "data"
        },
        "type": nil
      },
      "data": nil
    }
  end

  it "from_h_with_data" do
    cell_info = CKB::Types::CellInfo.from_h(cell_info_with_data_h)
    expect(cell_info).to be_a(CKB::Types::CellInfo)
    expect(cell_info.output).to be_a(CKB::Types::Output)
  end

  it "from_h_without_data" do
    cell_info = CKB::Types::CellInfo.from_h(cell_info_without_data_h)
    expect(cell_info).to be_a(CKB::Types::CellInfo)
  end
end
