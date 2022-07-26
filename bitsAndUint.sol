pragma solidity >=0.7.0 <0.9.0;

contract learnConversion{
    uint32 a = 0x12345678;
    uint16 b = 0x1234;

    // cara 1 konversi lansung
    uint16 public c = uint16(a);

    // Melalui Fungsi
    function convert32To16() public view returns(uint16){
        return uint16(a);
    }

    function convert16to32() public view returns(uint32){
        return uint32(b);
    }

    // Bytes
    bytes2 e = 0x1234;
    bytes1 public f = bytes1(e);

    bytes2 g = 0x1234;
    bytes4 public h = bytes4(g); 
}