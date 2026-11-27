// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract EtkinlikKayitV2 {
    string public etkinlikAdi = "Erciyes Blockchain Atolyesi";
    uint256 public constant KAPASITE = 3;
    uint256 public toplamKayit;

    mapping(address => string) public katilimcilar;
    mapping(address => bool) public kayitliMi;

    function kayitOl(string calldata takmaAd) external {
        require(bytes(takmaAd).length > 0, "Takma ad bos olamaz");
        require(!kayitliMi[msg.sender], "Bu adres zaten kayitli");
        require(toplamKayit < KAPASITE, "Etkinlik kapasitesi doldu");

        katilimcilar[msg.sender] = takmaAd;
        kayitliMi[msg.sender] = true;
        toplamKayit++;
    }

    function kayitGetir(address kullanici) external view returns (string memory) {
        return katilimcilar[kullanici];
    }
}