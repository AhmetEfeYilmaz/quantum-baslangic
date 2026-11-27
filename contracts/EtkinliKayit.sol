// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract EtkinlikKayit {
    // Tek bir etkinliğin adını tutan durum değişkeni (storage)
    string public etkinlikAdi = "Erciyes Blockchain Atolyesi";

    // Her cüzdan adresine karşılık bir takma ad tutan eşleme (storage)
    mapping(address => string) public katilimcilar;

 
    function kayitOl(string calldata takmaAd) external {
        katilimcilar[msg.sender] = takmaAd;
    }

    // Bir adresin kayıt bilgisini dışarıdan okumak için
    function kayitGetir(address kullanici) external view returns (string memory) {
        return katilimcilar[kullanici];
    }
}