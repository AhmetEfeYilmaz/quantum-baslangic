// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract EtkinlikKayitV3 {
    string public etkinlikAdi = "Erciyes Blockchain Atolyesi";
    uint256 public constant KAPASITE = 3;
    uint256 public toplamKayit;
    address public gorevli;

    mapping(address => string) public katilimcilar;
    mapping(address => bool) public kayitliMi;
    mapping(address => bool) public girisYaptiMi;

    event KayitYapildi(address indexed katilimci, string takmaAd);
    event GirisYapildi(address indexed katilimci);

    constructor() {
        gorevli = msg.sender;
    }

    modifier sadeceGorevli() {
        require(msg.sender == gorevli, "Sadece gorevli bu islemi yapabilir");
        _;
    }

    function kayitOl(string calldata takmaAd) external {
        require(bytes(takmaAd).length > 0, "Takma ad bos olamaz");
        require(!kayitliMi[msg.sender], "Bu adres zaten kayitli");
        require(toplamKayit < KAPASITE, "Etkinlik kapasitesi doldu");

        katilimcilar[msg.sender] = takmaAd;
        kayitliMi[msg.sender] = true;
        toplamKayit++;

        emit KayitYapildi(msg.sender, takmaAd);
    }

    function girisOnayla(address katilimci) external sadeceGorevli {
        require(kayitliMi[katilimci], "Bu adres kayitli degil");
        require(!girisYaptiMi[katilimci], "Bu katilimci zaten giris yapti");

        girisYaptiMi[katilimci] = true;

        emit GirisYapildi(katilimci);
    }

    function kayitGetir(address kullanici) external view returns (string memory) {
        return katilimcilar[kullanici];
    }
}