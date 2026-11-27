**İP 01:Blokzincir ve Ortak Kayıt**

• Blokzincir, tipik bir veritabanından farklı olarak verileri merkezi bir depo yerine verileri kriptografi yoluyla birbirine bağlanan bloklar halinde depolar. İşlem blokzincir ağındaki bir varlığın bir cüzdandan başka bie cüzdana aktarılmasıdır. Blok gerçekleşen işlemlerin bir araya getirilip paketlendiği bir veri yığınıdır, her blok kendinden önceki bloğun kriptografik hashini tutar. Dağıtık defter verilerin tek bir merkezde toplanması yerine ağdaki her bir bağımsız bilgisayar üzerinde bağımsız olarak tutulan ve güncellenen bir kayıt sistemidir.

Birbirleriyle İlişkisi:

• Ağa gönderilen işlemler doğrulanarak bir araya getirilir ve bir blok içine yazılır, her blok kendinden önceki bloğun şifrelenmiş izini taşıdığı için bu bloklar birleşerek kesintisiz olarak blokzinciri oluşturur. Bu zincirin ağdaki bütün bilgisayarlarda tutulmasına da bu yapıyı bir dağınık defter haline getirir.

• Merkezi veritabanında kayıtları ekleme, silme veya değiştirme yetkisi tek bir yöneticiye ya da kuruma aittir, bu yüzden kullanıcı o merkezin dürüstlüğüne ve güvenliğine güvenmek zorundadır. Blokzincirde ise kayıtlar ağdaki düğümler arasında dağıtık tutulur, geçmiş veriler kriptografik olarak kilitlendiği için tek taraflı değiştirilemez ve güven tek bir kuruma değil protokol kurallarına dayanır.

• Geçmiş işlemin kaydı bir kez bloğa girip kesinleştikten sonra zincir tarihçesinde silinmeden ve değiştirilmeden kalır. Sözleşmede tutulan güncel değer (state) ise yeni işlemler geldikçe kuralına uygun şekilde güncellenebilir; yani eski kayıt tarihçede dururken mevcut son durum değişmiş olur.

• Etkinlik kayıt sisteminde blokzincir kullanmanın yararı kayıtların herkesçe şeffaf biçimde doğrulanabilmesi, sonradan kimsenin müdahale edememesi ve tek bir merkeze bağımlı kalınmamasıdır. Ek maliyeti ise her kayıt/güncelleme için işlem ücreti (gas) ödenmesi, işlemin ağda onaylanma süresinin normal veritabanına göre yavaş olması ve cüzdan yönetimi gerektirmesidir.

• Benim yorumum: Verilerin çok hızlı işlenmesi gereken, sık sık güncelleme veya silme yapılan, yüksek gizlilik gerektiren ve tek bir kurumun yönetiminde olup dış taraflara merkeziyetsiz güven kanıtı sunma ihtiyacı olmayan durumlarda normal veritabanını tercih ederdim.


**İP O2:Node ve Konsensüs**

• Node bir blokzincirin protokol yazılımını çalıştıran kayıtların kopyasını tutan bir bilgisayar veya yazılımdır. Gelen işlemleri kontrol ederek diğer nodelara iletir.

• Validatör genel olarak bir şeyin kurallara ve protokollere uygun olup olmadığını denetleyen bir yazılımdır. Blokzincirde Proof of Stake ve hisse kanıtı gibi konsensüs mekanizmalarda ağ üzerindeki işlemleri doğrulayan ve yeni bloklar üreten nodelara denir.

• Konsensüs nodeların hangi protokollerin geçerli olduğu ve blokzincirin güncel durumu üzerinden bir anlaşmaya varmasını sağlar. PoW işlem gücüne ve fiziksel enerjiye dayanır, yeni bir bloğun onaylanması için bilgisayar donanımları kullanılır. PuS'ta validatorler kendi kripto varlıklarını ağa kilitlerler ve bu miktara göre blok üretme hakkı kazanırlar.

• Public/Private ağın gizli veya açık olduğunu gösterir (Topluluk ağı veya kurumsal ağ). Permissionless / Permissioned ağa katılım için önceden bir kimlik onayı gerekip gerekmediğini belirtir. Okuma izni ağdaki ağdaki işlemlerin, blokların görüntülenebilmesi, işlem gönderme ağdaki durumu güncelleyebilecek işlemler yayınlama, doğrulayıcı olma işlemleri doğrulama, onaylama,blok onaylama ve consensus mekanizmasına katılma.

• Bloğa alınma işlemin bir ağdaki bloğa girdiğini ve zincirin bloğa eklendiğini garanti eder ama sözleşmeye uygun olup olmadığını veya zincirde kalıcı olup olmadığını garanti etmez. Başarılı çalışma işlem bloğa alındıktan sonra akıllı sözleşmeye uygun bir şekilde hata vermeden çalışmasıdır ama işlemin blokta asla geri alınamayacağını garanti etmez blok tekrar havuza düşebilir veya sonraki bloklarda farklı koşullarda çalışmak zorunda kalabilir. Kesinleşme ise işlemin yer aldığı bloğun ve durum değişikliğinin geri döndürülemez hale gelmesidir.

• Çoklu düğümlü bir yapıda bulunan blokzincirde tek bir düğümün çökmesi bence ağı durdurmaz ama o düğüm kritik bir rolü tek başına üstleniyorsa o düğümün çökmesi bütün bir ağı çökertebilir.

 **İP O3:Kriptografi ve Cüzdan**

• Hash tek yönlüdür geri döndürülemez verinin bütünlüğünü ve parmak izini üretir. Şifreleme verinin gizliliğini sağlar anahtarla geri döndürülebilir,okunmasını engeller. Dijital imza kimlik doğrulamasıdır verinin kimden geldiğini doğrular.

• Private key, public key, adres, mnemonic ve seed hiyerarşik türetme zincirinin farklı katmanlarıdır. Her katman bir öncekinden aynı girdiden her zaman aynı sonuç çıkacak şekilde üretilir. Cüzdan çnce rastgele bir bit dizisi üretir ve bunu standart bir kelime listesiyle mnemonice dönüştürür. Mnemonic kelimeleri bir anahtar türetme fonksiyonundan geçirilerek seed üretilir, seed çok sayıda hesabı türeten bir kök malzemedir. BIP-32 BIP-44  ile seed'den belirli türetme yollarına göre birden fazla private key üretilir. Her özel anahtardan belirli matematiksel fonksiyonlarla karşılık gelen public keyler üretilir. Hash fonksiyonları ve kodlama kurallarıyla public key kısaltılıp bir adres haline getirilir.

• Entropi Özel anahtarların ve mnemonic ifadelerin tahmin edilemez olması için oluşturulan rastgele bit dizileridir. Checksum entropinin hash değerlerinin başından alınan ve entropinin en sonuna eklenen değerlerdir. BIP39 entropi ve checksum bitlerini 11-bitlik bölümlere ayırıp mnemonic kelimelere çevirir. BIP32 BIP 39'dan çıkan seed'leri kök olarak alıp private ve public keyler oluşturur. BIP44 BIP32 ağacında hangi dalın hangi amaçla kullanılacağını belirtir.  

• Cüzdan uygulamasıyla hesap aynı şey değildir. Cüzdan uygulaması hesapları oluşturan, bakiyeyi tutan, işlemleri onaylayıp ağa gönderen yazılımdır. Hesap ise bakiyeyi, özel anahtarı,yetkileri tutan kriptografik kimliktir. Adres paylaşımı bir güvenlik zaafiyeti oluşturmasa da bir mahremiyet etkileri vardır. Özel anahtarların paylaşılması ise güvenlik açısından sıkıntılıdır cüzdandaki bakiyelerin kaybına sebep olabilir. 

• Cüzdan uygulanmasının silinmesi tek başına bir sorun teşkil etmez varlıklar hala aynı yerinde duruyor olur, kurtarma bilgisinin kaybında ise varlıklar zincirde gözükmeye devam etse bile onlar üstünde işlem yapma yetkisi kaybolur.

 **İP O4:Bitcoin Ethereum ve Token**

• Bitcoinin temel amacı eşler arası merkeziyetsiz bir para saklama aracı sunmak. Programlanabilirliği bilerek sınırlı ve odaklıdır örnek olarak çoklu imza, zaman kuralları kullanılarak parasal güvenliği öncelemek üzere tasarlanmıştır. Ethereumun temel amacı programlanabilir bir dağıtık durum makinesi sunmaktır. Akıllı sözleşmeler ve sanal makinesi sayesinde karmaşık uygulamaların, protokollerin zincir üzerinde doğrudan çalışmasını hedeflemiştir.

• Native varlık ağ protokolünün kendisinde tanımlı olan ve ağın işleyişini destekleyen temel varlıktır. ETH ethereumun temel varlığıdır ağdaki ücretleri ödemek için kullanılır ve protokol seviyesinde bir temel varlıktır. Token ise ağ protokolünde gömülü olmayan ağın üstünde çalışan bir varlıktır ve bir akıllı sözleşme tarafından yönetilir. USDC ethereum ve ağında akıllı sözleşme aracılığıyla işlem gören bir tokendir. Transfer edilirken ağın native varlığı olan ETH ile gas ödenir.

• Stablecoin fiyat dalgalanmalarını engellemek amacıyla belli bir mekanizmaya veya dolar gibi birimlere endekslenen varlık türüdür. NFT ise her birinin benzersiz ve birbirinin yerini tutamaz olduğu token türüdür. Dijital veya fiziksel bir varlığa ait sahiplik veyahut kimlik kaydını ifade eder. ERC-20 ise ethereum üzerinde birbirinin yerine geçebilen, bölünebilir standart birim tokenler oluşturmak için kullanılan bir arayüzdür. Cüzdanların, borsaların ve uygulamaların bakiyelerini ve transferlerini belirlenmiş ortak kurallarla tanımasını sağlar.

• Gerçek fonların ve canlı kullanıcıların bulundupu mainnet'i kod hatalarından, protokol denemelerinden ve başarısız denemelerden korumak için testnet ayrılır. Test ETH ve Test USDC gerçek varlıklarla aynı değeri taşımaz. Testnet varlıkları test amacıyla dağıtılmakta oluğ gerçek dünyada maddi bir değerleri bulunmaz.

• Etkinliğe giriş için token gerekmez erişim hakkı doğrudan bir akıllı sözleşmedeki izin listesi kriptografik imza veya o anki bir şartın sağlanmasıyla da kontrol edilebilir. Her erişim kuralının alınıp satılan bir token olması zorunlu değildir. Bunlara ek olarak zincir dışı olarak merkezi veri tabanı kaydı, dacet listesi veya kimlik ve e posta doğrulaması gibi işlemler de token olmadan iş görür.

 **İP O5:Akıllı Sözleşme ve ABI**

• Akıllı sözleşme blokzincirinin üzerinde çalışan kuralları önceden belirlenmiş ve bu kurallara göre işlem mantığını yürüten ve kendi statetini yönetebilen programdır. EVM(Ethereum Virtual Machine) tüm nodeların işlemlerini aynı sonuçla çalıştırabilmesini sağlayan izole bir sanal makinedir. Kaynak kodu bytecode komutlarını gas sınırları içinde yürütür. State ağdaki hesapların ve sözleşmelerin güncel verilerinin anlık toplamıdır. Her geçerli işlem eskisinden yeni state bir geçiş üretir.

• Geliştirici tarafından geliştirilen insanların okuyabileceği kod derleyici tarafından ile EVM'nin anlayabileceği ikili bir bytecode'a çevrilir. Derlenen bytecodeunu özel bir dağıtım işlemiyle ağa gönderilmesine deploy denir.

• ABI bir çeviri uygulamasıdır. Dış uygulamaların bytetaki olaylarla ve fonksiyonlarla nasıl iletişim kuracağını belirler. Kaynak kod derlendiği anda derleyici çıktısı olarak elde edilir. Ağ/Chain bilgileri ve istemci/bağlam bilgileri gerekir.

• Veri okumada ağ durumu değişmez ama statede güncellenir. Veri okumada ağ mutabakatı veya blok üretirimi gerekmez çoğunluk olarak yerel düğümden okunur. State'te ise işlem havuzuna girer ve bloğa alındıktan sonra ağda yürütülüp kesinleşir. Gas konusunda ise veri okumada normal bir kullanıcı ücret ödemezken state de yapılan işlemin ağda yayılması ve işlenmesi için gas ödenir. Veri okuma imza gerektirmezken state de gönderen hesabın özel anahtarıyla imzalanır.

• Kaynak kodu verify etmek bytecode'un sizin sundupunuz kaynak kodun ve belirtilen derleyici ayarlarının derlenmesiyle aynı çıktıyı çıkardığı doğrulanır. Güvenlik denetimiyle aynı şey değildir sadece bytecode'un eşlendiğini doğrular güvenlik zaafiyeti vb. içerip içermediğini belirtmez.

• Kod şablonu aynı olsa bile her dağıtım kendine has izole bir state alanına sahip bağımsız bir sözleşme oluşturduğundan kayıtları ayrı olabilir.

 **İP O6:RPC Explorer ve Event**

 • RPC(Remote Procedure Call) dış bir uygulama veya web arayüzü,cüzdan betik gibi istemcilerin, ağdaki bir düğümee sanki lokal bir fonksiyon çağırıyor gibi istek göndermesini sağlayan iletişim protokolüne denir. RPC endpoint bu isteklerin gönderildiği somut adrestir http:// gibi. Node blokzincirin verisini tutan ve protokol kurallarını çalıştıran birimdir kendi düğümünü kurmak isteyen kullanıcılar ise RPC hizmet sağlayıcısını kullanır.

 • Block explorer zincirdeki blokları, işlemleri, adres bakiyelerini, akıllı sözleşme kodlarını ve log/event kayıtlarını daha kullanışlı bir arayüzle arayıp görüntülemeyi sağlayan web uygulamasıdır. Explorerin kapanması ağın durdurmasını göstermez explorer bir arama aracı gibidir kapansa bile düğümler çalışmaya devam eder. Bir RPC endpointin kapanması ise yalbızca o adresle bağlı olan isteklerin başarısız olmasına yol açar.

 • Güncel state sözleşmenin deposunda tutulan o anki güncel değerlerdir. Akıllı sözleşme fonksiyonları depolamayı doğrudan okuyabilir. Event log ise geçmişe dönük olay kayıtlarıdır akıllı sözleşmeler doğrudan ulaşamaz. Indexer ise blokları ve logları dinleyip çözer ardından filtreler ve hızlı sorgulanabilir bir arayüze ekler çünkü ham blokları tek tek taramak çok zordur.

 • Explorer yoksa doğrudan düğüm RPC sorgulama hattını araştırırım. Güvenilir bir RPC üzerinden doğrudan düğüm sorguları yapıp veriyi ABI ile çözümleyerek kayıt doğrulanır.

  **İP O7:Bir İşlemin Yolculuğu** 

  • Cüzdan bağlamak web veya uygulama arayüzü üzerinden cüzdan eklentisi veya bir sağlayıcı kullanarak kullanıcının aktif hesapını,adresini ve ağ bilgisini okutmasıdır. Mesaj imzalama kullanıcının özel anahtarıyla belirli bir metni veya herhangi bir yapılandırılmış veriyi imzalamasıdır. Genellikle state'i değiştirmez gas ücreti kullanılmaz. İşlem göndermek ise state'i değiştirecek imzalı olan bir veri paketinin ağa yayınlanmasıdır. Mempoola girer, bloğa alınır ve ağdaki düğümler tarafından işlenir, gas ücreti alınır.

  • Gas limiti işlemin yürütülmesi sırasında harcanmasına izin verilen hesaplama/depolama birimi olan gas'ın maksimumunu belirtir. Gas used işlem sırasında harcanan gasdır. İşlem ücreti yapılan işlemin işlenmesi karşılığında ödenen toplam ücret. Nonce hesaptaki işlemlerin sırasını belirtir, işlemlerin sıralı bir biçimde işlenmesini sağlar. Chain ID işlemin hangi blokzincir ağı için imzalandığını belirten bir ağ kimliği. Başka bir ağda tekrar yayınlanmasını engeller.

   • Txid/Transaction Hash işlem verisinin kriptografik hashidir ve o işlemi benzersiz olarak tanımlar. Sözleşme adresi bir akıllı sözleşmenin ağda deploy edildiği konumdur. Sözleşmenin kodu ve kendi state alanı burada bulunur. Block hash bir bloğun başlık verilerinin hash'lenmesinden elde edilen benzersiz bir blok kimliğidir. Her blok kendinden önceki bloğun hashini tutarak zincir yapısını oluşturur.

  • Pending işlemin havuza ulaştığı ve mempoolda beklediği daha bir bloğa eklenmediği aşamadır. Receipt işlemin bir bloğa alındıktan sonra yürütülen kayıt özetine denir. Hangi blokta işlendiğini, gas used değerini logları ve statusu içerir. Status işlemin EVM içinde başarılı mı yoksa başarısız mı olduğunu belirtir, genellikle 1 başarılı 0 başarısız kabul edilir. Hash yalnızca işlemin kimliğini gösterir işlemin pending olabileceğini başarısız olabileceğini veya diğer durumları ortaya koymaz. Kesin bir sonuç için receipt ile statuse baklılır.

• İşlem Akış Şeması:
İmzalama (İşlem verisi hazırlanıp private key ile imzalanır) → Gönderme (İmzalı işlem RPC üzerinden ağa iletilir ve txHash oluşur(0xe9b7505e0c33d0b48957661e6af4f10ba0d879183f607b9f8b7ea09c125242ac)) → Bekleme / Pending (İşlem mempool havuzunda bloğa girmeyi bekler) → Bloğa Alınma (Doğrulayıcılar işlemi bloğa alıp EVM üzerinde çalıştırır ve receipt/status üretir) → Sonuç Kontrolü (Receipt üzerinden status değerinin 1 mi 0 mı olduğu kontrol edilir).

• Sonucunu öğrenemedim henüz netleşmemiş veya ağ/RPC kaynaklı ulaşılamamış bir durumu gösterirken, işlem başarısız (status = 0) işlemin çalışıp hata nedeniyle geri alındığı kesin olumsuz sonucu ifade eder.


  **İP O8:Ekosistemi Tanı** 

• Web3 merkezi platformlar ve aracılar yerine kullanıcıların cüzdan ve akıllı sözleşmelerle veri ve varlık yönetimini doğrudan yapabildiği internet yapısıdır. L1 güvenliği ve mutabakatı kendi üzerinde sağlayan ana blokzincir (Ethereum gibi), L2 ise ana zincirdeki yoğunluğu ve ücretleri azaltmak için işlemleri üst katmanda toplayıp güvenliği L1'e dayandıran ölçekleme katmanıdır. DeFi aracılar olmadan akıllı sözleşmelerle takas, borç verme gibi finansal işlemlerin yapıldığı sistemdir. DAO kuralları ve yönetim kararları akıllı sözleşmeler ve oylamalarla yürütülen topluluk yapısıdır. Oracle akıllı sözleşmelerin zincir dışındaki fiyat, hava durumu gibi gerçek dünya verilerine ulaşmasını sağlayan veri köprüsüdür. Bridge farklı blokzincir ağları arasında varlık veya veri aktarımını sağlayan köprü sistemidir. Zero-Knowledge Proof (ZK) ise bir bilginin veya hesaplamanın doğruluğunu, gizli olan asıl veriyi karşı tarafa açmadan matematiksel olarak kanıtlayan 
yöntemdir.   

• Kullanım Örnekleri: Dijital kimlik için kişinin açık kimlik bilgilerini vermeden sadece 18 yaşından büyük olduğunu kanıtladığı cüzdan tabanlı doğrulama sistemi örnek verilebilir. RWA için gayrimenkul hissesinin veya hazine bonosunun zincir üzerinde token haline getirilmesi örnek gösterilebilir. DePIN için ise bireylerin kendi internet erişim noktalarını veya depolama cihazlarını ağa bağlayıp hizmet karşılığı ödül kazandığı altyapı ağları örnek verilebilir.   

• ZK ile bir koşulun veya hesaplamanın kurallara uygun doğru olduğu kanıtlanır, doğum tarihi veya bakiye gibi gizli girdiler ise karşı tarafa gösterilmeden saklanır. Örneğin sisteme tam doğum tarihini vermeden sadece 18 yaşından büyük olunduğu kanıtlanabilir. "ZK kullanılıyor" ifadesi bütün işlemlerin gizli olduğu anlamına gelmez; ZK-rollup gibi sistemlerde ZK kanıtı sadece işlem doğruluğu ve ölçekleme için kullanılırken adres ve işlem bilgileri açık kalabilir. 

• DAO'yu en son öğrenmek istiyorum; çünkü önce blokzincir altyapısını, akıllı sözleşmelerin çalışmasını ve temel ağ/ölçekleme mekanizmalarını oturtup, yönetişim ve karar süreçlerini bu teknik temelin üzerine inşa etmek daha mantıklı geliyor.

**İP09:Gerçek Bir Blokzincir Projesini İncele**

• Seçilen Proje: Safe (eski adıyla Gnosis Safe). Resmî sitesi: safe.global | Resmî dokümantasyonu: docs.safe.global.   

• Tek bir özel anahtarın kaybolması, çalınması veya tek kişinin hatalı/kötü niyetli işlem yapması riskine karşı hesap kontrolünü birden fazla imzalayıcıya (M-of-N eşik mantığı) ve kurallara paylaştırır; ekipler, hazine yöneten projeler ve kurumlar için uygundur. Zincirde yapılan işlemler Safe akıllı sözleşme hesabının oluşturulması, sahip/eşik kurallarının tutulması ve yeterli imza toplandığında asıl işlemin yürütülmesidir. Zincir dışında yapılan hizmetler ise web arayüzü, imzalayıcıların işlemleri görüp onayladığı koordinasyon servisi (Transaction Service) ve geçmiş verileri hızlı sorgulayan indeksleme altyapılarıdır.  

• Varlıkların ve yetkilendirme kurallarının tek bir sunucu yerine herkesçe doğrulanabilen akıllı sözleşmelerde ve kriptografik imzalarda tutulmasını sağlamak için blokzincir kullanır. Normal bir veritabanıyla yapılsaydı veritabanı yöneticisi onay kayıtlarını veya bakiyeleri tek taraflı değiştirebilir, işlemleri sansürleyebilir ve sistem kapandığında kullanıcılar varlıklarına kendi anahtarlarıyla erişemezdi.   

• Safe'te asıl güvenlik akıllı sözleşmedeki kurallarda durur. Yönetici/diğer imzalayıcılara işlem onay aşamasında anahtarlarını koruyacakları ve kötü niyetli onay vermeyecekleri konusunda güvenilir (ancak tek başlarına fon kaçıramazlar). İşletmeciye (arayüz ve Transaction Service) işlemlerin toplanması ve ekranda doğru gösterilmesi aşamasında güvenilir (çökse bile fonlar sözleşmede güvendedir). Veri sağlayıcısına (RPC ve indexer) ise cüzdan bakiyesi ve onay durumunu okurken doğru bilgi sunduğu konusunda güvenilir. 

• Benim yorumum: Safe'in en güçlü tarafı tek anahtar bağımlılığını ortadan kaldırıp ekip ve hazine yönetiminde yüksek güvenlik sunmasıdır. Sınırlaması ise her işlem için birden fazla kişinin onay vermesi gerektiğinden işlem hızının tek anahtarlı cüzdana göre yavaş olması ve onay/yürütme adımlarında gas maliyeti oluşmasıdır. 

**İP 10: Blokzincir Yarışması Şartnamesini İncele**

• İncelenen Resmî Şartname: TEKNOFEST 2026 Havacılık, Uzay ve Teknoloji Festivali Blokzincir Yarışması Teknik Şartnamesi (Versiyon 1.1). Takımlar danışman hariç 2-5 kişiden oluşur, en fazla 1 danışman eklenebilir ve süreçler KYS sistemi üzerinden yürütülür. 

• Yarışma merkeziyetsizlik, şeffaflık ve değiştirilemezlik ilkeleriyle kamu yönetimi, eğitim, finans, sağlık ve tedarik zinciri gibi güven gerektiren alanlardaki gerçek dünya problemlerine çözüm üretmeyi amaçlar. Yarışmanın kabul ettiği 7 ana kapsam: Yüksek Başarımlı ve Ölçeklenebilir DLT Altyapıları, DLT Sistemlerinde Mahremiyet, Dijital Cüzdanlar, Blokzincir Kriptolojisi, Blokzincir Güvenliği, Kripto Varlık Regülasyon Altyapıları ve Seçilmiş DLT Uygulama Alanları (Dijital Kimlik, Orijin Takibi, DeFi, Tokenizasyon, Web3/DAO).   

• Beklenen Çıktılar ve Değerlendirme: Süreç 4 aşamalıdır ve puanlama ağırlıkları şöyledir: Proje Ön Değerlendirme Raporu (%10), Proje Sunum Raporu (%15 - varsa kaynak kodlar da incelenir), Özet Proje Sunum Puanlaması / Çevrim İçi Sunum (%15) ve Final Sunum Puanlaması (%60). Projeler katma değer/yenilikçilik, teknoloji kullanımı, uygulanabilirlik, yaygın etki ve sürdürülebilirlik kriterlerine göre puanlanır.   

• Kavram Açıklamaları: DLT (Dağıtık Defter Teknolojisi), verilerin merkezi bir sunucu yerine ağdaki katılımcılar arasında senkronize ve değiştirilemez biçimde tutulduğu sistemlerin genel adıdır. MPC (Çok Taraflı Hesaplama), özel anahtarı parçalara bölerek anahtarı birleştirmeden ortak imza atmayı sağlayan yöntemdir. Proof of Reserve (PoR), bir kurumun beyan ettiği varlıkların gerçekten rezervde bulunduğunu kriptografik olarak kanıtlamasıdır. Travel Rule, belirli tutar üstü transferlerde gönderici-alıcı bilgisinin paylaşılmasını gerektiren regülasyon kuralıdır. Homomorfik Şifreleme, verinin şifresini çözmeden şifreli hali üzerinde işlem yapabilmeyi sağlayan şifreleme yöntemidir. Sharding/Sidechain/Rollup ise ana zincirin işlem kapasitesini artırmak için ağı parçalama, yan zincir kurma veya işlemleri dışarıda toplayıp ana zincire özetleme ölçekleme yaklaşımlarıdır. 

• Benim yorumum: Bu programda öğrendiğim akıllı sözleşme mimarisi, zincir içi (on-chain) ile zincir dışı (off-chain) veri ayrımı, cüzdan güvenliği ve RPC/event tabanlı uygulama geliştirme konularının yarışmada en çok işe yarayacağını düşünüyorum. Şartnamede teknolojinin etkin kullanımı, uygulanabilirlik ve kaynak kod incelemesi öne çıktığı için hangi verinin zincirde tutulup hangisinin dışarıda işleneceğini doğru kurgulamak prototip geliştirirken belirleyici olacaktır.   

**İP11:Çalışma Ortamını Hazırla**

• Git: Dosyalarda yapılan değişiklikleri adım adım takip etmeyi, geçmiş sürümlere dönmeyi ve ekip halinde çakışma olmadan kod geliştirmeyi sağlayan dağıtık bir versiyon kontrol sistemidir.

• GitHub: Git ile yönetilen projelerin ve depoların internet üzerinde barındırılmasını, yedeklenmesini, paylaşılmasını ve takım çalışması yapılmasını sağlayan bulut tabanlı platformdur.   

• README: Bir projenin veya GitHub deposunun ana sayfasında görünen, projenin amacını, içeriğini, kurulum adımlarını ve nasıl kullanılacağını özetleyen tanıtım dosyasıdır (genellikle README.md).   

• Commit: Proje klasöründe yapılan değişikliklerin, ne yapıldığını anlatan kısa bir açıklama mesajıyla birlikte yerel Git geçmişine kalıcı bir kayıt noktası olarak işlenmesidir.   

• Push: Yerel bilgisayarda commit ile kaydedilmiş değişikliklerin, uzak sunucudaki (örneğin GitHub üzerindeki) depoya gönderilip eşitlenmesi işlemidir.

• Solidity, Ethereum ve EVM uyumlu blokzincirlerde çalışacak akıllı sözleşmeleri yazmak için kullanılan programlama dilidir. Remix IDE ise herhangi bir kurulum gerektirmeden doğrudan tarayıcı üzerinden Solidity kodu yazmayı, derlemeyi, test etmeyi ve ağa deploy etmeyi sağlayan geliştirme ortamıdır.

• Bu kurulum sürecinde Remix IDE ve MetaMask'in doğrudan tarayıcı üzerinden akıllı sözleşme ve test ağıyla iletişim kurma yapısı benim için yeniydi.

**İP12: Kendi Cüzdan Oluşturucunu Yaz**

• Kullanılan Dönüşümler ve Kütüphane Çağrıları:

• Entropi: Tarayıcının yerleşik crypto.getRandomValues(new Uint8Array(16)) fonksiyonu ile tahmin edilemez 128-bit (16 bayt) rastgele veri üretildi.

• Mnemonic (BIP39): ethers.Mnemonic.fromEntropy(entropyBytes, "") çağrısı ile entropiye checksum bitleri eklenip 12 İngilizce kelimeye dönüştürüldü (ek passphrase boş bırakıldı).

• Seed: mnemonicObj.computeSeed() ile 12 kelimeden PBKDF2 tabanlı 512-bit kök seed üretildi.

• Private Key (BIP32/BIP44): ethers.HDNodeWallet.fromSeed(seedHex).derivePath("m/44'/60'/0'/0/0") ile Ethereum'un standart ilk hesap yolundaki 32 baytlık private key türetildi.

• Public Key: new ethers.SigningKey(privateKey).publicKey ile eliptik eğri (secp256k1) çarpımı yapılarak public key elde edildi.

• Ethereum Adresi: ethers.computeAddress(publicKey) ile sıkıştırılmamış public key'in Keccak-256 özetinin son 20 baytı alınıp EIP-55 formatında adres oluşturuldu.

• Uygulamamda gördüğüm üzere mnemonic (12 kelime) bütün cüzdan ağacının kökünü oluşturan ve birden fazla hesabı geri getirebilen bir yedekleme anahtarıdır, private key ise o mnemonic'ten belirli bir türetme yoluyla (m/44'/60'/0'/0/0) çıkarılan ve yalnızca tek bir Ethereum hesabının işlemlerini imzalamaya yarayan 32 baytlık gizli anahtardır.
 
**İP13: MetaMask ile Karşılaştır ve Checksum Deneyi Yap**

• İstenilen görevler ve karşılaştırmalar yapıldı ekran görüntüleri alındı.

• Geçerli mnemonic ile güvenli biçimde üretilmiş mnemonic aynı şey değildir. Bir mnemonic'in geçerli sayılması için sadece BIP39 kelime listesindeki kelimelerden oluşması ve sonundaki 4 bitlik checksum kontrolünden geçmesi yeterlidir

![IP 13 ekran görüntüleri](images/1.png)

![IP 13 ekran görüntüleri](images/2.png)

![IP 13 ekran görüntüleri](images/3.png)

**İP14: Test ETH Kaynağını Kendin Bul**

• Kullanılan Faucet: Google Cloud Web3 Ethereum Sepolia Faucet https://cloud.google.com/application/web3/faucet/ethereum/sepolia

• Transaction Hash: 
0xe7fb346db7d704d409041e483212cdd14c081536c227008c5e89c5ba904eaad3

• Adres yalnızca bakiye almak ve sorgulamak için kullanılır. Harcamayı yalnızca kullanıcıda bulunan private keyle yapabiliriz. Bu yüzden adres paylaşmak bir harcama yetkisi vermez.

**İP 15: Test USDC Edin ve İki Transferi Karşılaştır**

 • Transaction Hash: 0x5edac242b2eb3c745e100b5459aea97239264593a6b996ffb4556f7cf72a25fa

• Kullanılan Faucet: Circle Testnet Faucet https://faucet.circle.com

• Sepolia USDC Sözleşme Adresi: 0x1c7D4B196Cb0C7B01d743Fbc6116a902379C7238

Hesaplar ve Kaynaklar:

Account 1 (Gönderici): `0x137E28988321C83Dd273345D691f9CE683a921Ff`
Account 2 (Alıcı):`0xBcF24Bfb837b328D9128C472C6e44b2Be31D6551`


Yapılan Transferler:
ETH Transferi (0.00001 ETH): 0xf82935083ff1436f365da1863a7be9cfb994ae0cdb8b413f859d6a2e4f68bff9 — Blok: `12218894`
USDC Transferi (1 USDC): 0x83ce513270e0c45aa0fa0c4e29ed90a6827263dd8dcccc03bf3889fcf55a6aef — Blok: `12218895`

**İki İşlemin Karşılaştırması:**

| Alan | ETH Transferi (`0.00001 ETH`) | USDC Transferi (`1 USDC`) |
| :--- | :--- | :--- |
| **To (Alıcı)** | Doğrudan Account 2 adresi (`0xBcF24B...6551`) | USDC sözleşme adresi (`0x1c7D4B...7238`) |
| **Value** | `0.00001 ETH` | `0 ETH` (native ETH gönderilmediği için) |
| **Input Data** | Boş (`0x`) | `transfer(address,uint256)` fonksiyon çağrısı ve parametreleri |
| **Ücret (Fee)** | 0.000306900003069 ETH (Normalde standart ETH transferi 21.000 gas harcar; bu işlemde akıllı hesap yapısı nedeniyle daha yüksek çıktı) | 0.000227668502276685 ETH (Akıllı sözleşme çağrısı ücreti ETH olarak ödendi) |
| **Token Transferi / Log** | Log yok (doğrudan native transfer) | `Logs` sekmesinde ERC-20 `Transfer` olayı (event) kayıtlı |

• Circle faucet üzerinden 20 Test USDC istenildiğinde transfer blokzincirdeki USDC akıllı sözleşmesine işlenir ve varlık zincir üzerinde hesaba aktarılmış olur. MetaMask'te Tokenları içe aktar işlemi ise zincire herhangi bir veri yazmaz yalnızca cüzdan arayüzünün ilgili sözleşme adresini okuyup bakiyeyi ekranda göstermesini sağlar.


• USDC transferini onaylarken MetaMask ekranında tahmini ağ ücretinin USDC değil SepoliaETH cinsinden hesaplandığını gördüm. İşlem onaylandıktan sonra Etherscan'deki Transaction Fee alanında ücretin ETH olarak ödendiğini cüzdanımdaki USDC bakiyesinin yalnızca gönderdiğim 1 USDC kadar azalırken işlem ücretinin doğrudan SepoliaETH bakiyemden düştüğünü doğruladım.

**İP 16: Remix ile Gerçek İsmini Kaydet**


• Sözleşme ve Hesap Bilgileri:
Takım Sözleşmesi Adresi:0x81Dd700C459BF2806A1B5F2a349c89f0106A9036


• Kayıt Yapılan Cüzdan (Account 2)0xBcF24Bfb837b328D9128C472C6e44b2Be31D6551


•Gönderilen İsim Formatı:ahmetefeyilmaz


• İşlem Özeti (Tx Hash)0xe9b7505e0c33d0b48957661e6af4f10ba0d879183f607b9f8b7ea09c125242ac


• İşlem Sonucu:Başarılı (Success) — Kontrol sitesinde (haloclineblockchain.vercel.app) göründü.


•Not: İlk denemede Account 1 0x137E28988321C83Dd273345D691f9CE683a921Ff ile boşluklu olarak Ahmet Efe Yılmaz kaydettim zincire işlendi ancak site formatına uymadığı için kontrol siteside gözükmedi. İstenen küçük harf/boşluksuz formatta kayıt Account 2 ile tamamlandım.


• Aynı Cüzdanla İkinci Kayıt Denemesi:
Aynı cüzdanla ikinci kez register çağrısı yapılmak istendiğinde, sözleşmedeki require(!kayitliMi[msg.sender], "Bu cuzdan zaten kayitli") kuralı nedeniyle cüzdan işlemi simüle ederken daha işlem zincire gönderilmeden önce gas tahmini aşamasında hata verdi. Gönderim engellendiği için uyarıyı zorla geçmedim dolayısıyla yeni bir tx hash oluşmadı.


• Benim yorumum:
İsmin kontrol sitesinde görünmesi ile zincirde kaydedilmiş olması aynı kontrol değildir. Sözleşme yalnızca adresin daha önce kayıt olup olmadığını denetler ve gönderilen metni (isim biçimine bakmaksızın) blokzincire kalıcı olarak yazar. Kontrol sitesi ise zincirdeki kayıtları okuyup yalnızca kendi belirlediği liste ve isim biçimiyle eşleşenleri ekranda filtreleyerek gösterir. Dolayısıyla bir kayıt zincirde başarılı olsa bile format uymazsa sitede görünmeyebilir ilk denemede yazdığımda görünmemesi gibi dolayısıyla kesin veri kaynağı blokzincirin kendisidir.

**İP17:Explorer ile Kaydı Doğrula**

İncelenen İşlem (Tx Hash):0xe9b7505e0c33d0b48957661e6af4f10ba0d879183f607b9f8b7ea09c125242ac

• İşlem Alanlarının Açıklaması:
• From: 0xBcF24Bfb837b328D9128C472C6e44b2Be31D6551 — İşlemi imzalayıp gönderen ve gas ücretini ödeyen cüzdan adresim (Account 2).
• To: 0xdb9B1e94B5b69Df7e401DDbedE43491141047dB3 — İşlem MetaMask Akıllı Hesap (EIP-7702 / Delegation) üzerinden paketlendiği için dış hedef olarak bu sözleşme görünmektedir; içerideki çağrı doğrudan takımın QuantumKayit sözleşmesine (0x81Dd700C459BF2806A1B5F2a349c89f0106A9036) iletilmiştir.
• Status: Success — İşlemin EVM tarafından hatasız yürütülüp 12219061 numaralı bloğa kesin olarak eklendiğini gösterir.
• Gas Used / Ücret:806,023 gas Limit: 920,695, kullanım oranı %87.55 / 0.001209034512090345 ETH — Sözleşme fonksiyonunu çalıştırmak ve veriyi blokzincire yazmak için harcanan hesaplama miktarı ve ödenen toplam ağ ücreti.
• Nonce: 0 — Bu cüzdan adresinden (Account 2) gönderilen ilk giden işlem olduğunu ve işlemlerin sırasını takip eden sayacı gösterir.
• Input Data: Dış çağrıda MetaMask Delegation (redeemDelegations) parametreleri (_permissionContexts, _modes, _executionCallDatas) yer alır. _executionCallDatas alanında hedef sözleşme adresi (0x81dd...9036), register(string) fonksiyon seçicisi (f2c298be) ve parametre olarak gönderdiğim ahmetefeyilmaz metninin hex karşılığı 61686d657465666579696c6d617a bulunur.

• Ekran Görüntüleri:
• *Input Data (UTF-8 / Decode):![IP 17 ekran görüntüleri](images/4.png)  Gönderilen ahmetefeyilmaz verisi `View Input As → UTF-8 görünümünde doğrulandı.
• *Logs (Registered Event):* ![IP 17 ekran görüntüleri](images/5.png) — Takım sözleşmesi 0x81dd700c459bf2806a1b5f2a349c89f0106a9036 tarafından üretilen Registered olayında adresim 0xBcF2...6551, ismim ahmetefeyilmaz ve sıram sira: 21 doğrulandı.

• Read Contract (State) Kontrolü:
kayitliMi(0xBcF24Bfb837b328D9128C472C6e44b2Be31D6551) true döndü.
tumKayitlar → Listede adresimin karşısında ahmetefeyilmaz isminin ve 21 numaralı kayıt sırasının saklandığı doğrulandı.

İkinci Kayıt Denemesi:
Aynı cüzdanla yapılan ikinci register denemesinde kayıt zaten olduğu için işlem oluşmamıştır.

Benim yorumum:

• Input data sözleşmeye ne gönderildi sorusunun cevabını verir. Event işlem gerçekleşirken tarihsel olarak ne oldu sorusuna cevap verir. Mevcut state ise sözleşmenin şuanki güncel durumu nedir sorusunu cevaplar.

**İP 18: Takım Sözleşmesinin Kopyasını Deploy Et ve Verify Et**

• Kaynak Kod ve Lisans:
Takımın QuantumKayit.sol sözleşme kodu, MIT lisans bilgisi korunarak ve kaynak adresi (0x81Dd700C459BF2806A1B5F2a349c89f0106A9036) belirtilerek repoya eklendi.

• Derleme ve Doğrulama (Verify) Ayarları:

•Compiler Type: Solidity (Single file)

• Compiler Version:v0.8.24+commit.e11b9ed9

• Optimization: No (200 runs)

• EVM Version: default

• License: MIT License (MIT)

• Constructor Arguments: Yok (boş)

• Yeni Sözleşme ve Deploy Bilgileri:

• Kendi Sözleşme Adresim: 0x7c72f96b0496ff006d1093e7dc1c9cee05caab90

•Deploy tx Hash: 0xa02d3a5595f388d15b7e25617b025ab23001818fdc6ed8fb654ec47c7e78bf4f

Durum: Sepolia ağına başarıyla yayınlandı ve Etherscan üzerinde doğrulandı (Verified).

• State (Durum) Bağımsızlığı Kontrolü:
Aynı kaynak koddan yeni bir kopya yayınlandığında blokzincirde tamamen yeni ve boş bir bellek (state) oluşur. Takım sözleşmesindeki 21 kayıt ve benim kaydım bu yeni kopyaya aktarılmaz; her sözleşme adresi kendi bağımsız durumunu tutar.

• Deploy blokzincirde yeni bir işlem göndererek sözleşme örneğini sıfırdan yayınlar at address ise yeni bir sözleşme oluşturmaz mevcut bir sözleşmeyi remixe bağlar ve o sözleşmeyle etkileşim kurmasını sağlar.

• Ethereum'da veriler kaynak kodunun içinde değil direkt olarak sözleşmenin yayınlandığı adrese bağlı olan bağımsız bir depolama alanında tutulur. Aynı kaynak kodu tekrar Deploy edildiğinde blokzincirde tamamen yeni bir sözleşme adresi ve tamamen sıfırdan boş bir depolama alanı oluşturulur. Yani kod aynı olsa bile iki adres birbirinden tamamen birbirinden ayrı bir şekilde çalışır ve eski adresteki kayıtlar yeni adrese otomatik olarak taşınmaz.

**İP 19: Etherscan Write Contract ile Kendi Sözleşmene Kaydol**

• Kendi Sözleşmemde Kayıt İşlemi:

• Kendi Sözleşme Adresim: 0x7c72f96b0496ff006d1093e7dc1c9cee05caab90

• Kayıt Yapılan Cüzdan (Account 2):0xBcF24Bfb837b328D9128C472C6e44b2Be31D6551

•Gönderilen İsim: ahmetefeyilmaz

• Tx Hash: 0x40d345abd2dd1daa30f74a9f4dbc353c581cf153945fdc7be2074131d0329d19


• Read Contract ve Event Kontrolü (Takım vs. Kendi Sözleşmem):
Kendi Sözleşmem 0x7c72...ab90: kayitliMi → true, tumKayitlar ve Registered event logunda sira: 1, isim: ahmetefeyilmaz, zaman: 1795729116` olarak doğrulandı.

• Takım Sözleşmesi 0x81Dd...9036: Aynı cüzdan 0xBcF2...6551 takım sözleşmesinde 0xe9b7505e0c33d0b48957661e6af4f10ba0d879183f607b9f8b7ea09c125242ac işlemiyle sira: 21 olarak kayıtlıdır. İki sözleşmenin adresleri, işlem hash'leri ve kayıt sıraları birbirinden tamamen bağımsızdır.

• Remix ve Etherscan'in Aynı Ağdaki Sözleşmelere İşlem Göndermesi (README Açıklaması):

• Remix de Etherscan de blokzincirin kendisi değil, yalnızca birer arayüzdür. İkisi de sözleşmenin ABI fonksiyon tanımları bilgisini kullanarak çağrıyı Input hex formatına çevirir ve MetaMask cüzdanına işlemesi için iletir. MetaMask işlemi kullanıcının özel anahtarıyla imzalayıp Sepolia RPC düğümü üzerinden aynı blokzincir ağına yayınlar. Bu sayede farklı arayüzler kullansak da işlemler aynı ağdaki aynı sözleşmelere ulaşır.

• Sözleşmedeki require(!kayitliMi[msg.sender]) kontrolü tüm blokzincir genelinde değil, yalnızca çağrılan sözleşme adresinin kendi depolama alanında (storage) çalışır. Cüzdanım takım sözleşmesinin kayitliMi tablosunda true olduğu için oraya ikinci kez kaydolamadı ancak kendi yayınladığım kopya farklı bir adreste ve sıfırdan boş bir depolama alanıyla başladığı için kayitliMi değeri false idi ve aynı cüzdanla sorunsuz şekilde ilk kayıt sira: 1 olarak eklenebildi.

**İP20: İlk Etkinlik Kaydını Oluştur**

• Sözleşme Özeti:
• Dosya: contracts/EtkinlikKayit.sol
• Etkinlik Adı: Erciyes Blockchain Atolyesi
• Ortam: Remix VM (yerel test ağı — Sepolia'ya henüz gönderilmedi).

• Yerel Hesap Testleri:

• 1. Yerel Hesap (0x137E28988321C83Dd273345D691f9CE683a921Ff): kayitOl "ahmet" çağrıldı kayitGetir sonucu: "ahmet"

• 2. Yerel Hesap (0xBcF24Bfb837b328D9128C472C6e44b2Be31D6551): kayitOl "trabzon_61" çağrıldı kayitGetir sonucu: "trabzon_61"

• Verinin Nerede Tutulduğu ve msg.sender'ın Görevi:
 etkinlikAdi ve katilimcilar (mapping(address => string)) değişkenleri sözleşmenin kalıcı depolama alanında storage de tutulmaktadır. Her adresin kaydı o adresin anahtarı kullanılarak anahtarın altında saklanır. Msg sender fonksiyonu o an çağıran cüzdanın adresini otomatik olarak verir. Fonksiyon dışarıdan hedef adres parametresi almayıp doğrudan katilimcilar[msg.sender] yazdığı için bir kullanıcı başkasının adresi adına kayıt yapamaz veya başkasının kaydını değiştiremez.

• Bu ilk sürüm henüz temel veri kaydını yapıyor ancak şu yanlış kullanımları engellemiyor: Boş veya sadece boşluktan oluşan takma ad. Tekrar kayıt / üzerine yazma: Aynı cüzdan kayitOl fonksiyonunu tekrar çağırarak mevcut kaydını sınırsızca değiştirebilir kısaca tek bir kayıt kuralu bulunmamakta.


**İP21:Kapasite ve Kayıt Kurallarını Ekle**

• Eklenen Kurallar:

• Dosya: contracts/EtkinlikKayitV2.sol 

• Boş ad kontrolü: require(bytes(takmaAd).length > 0, "Takma ad bos olamaz") kuralı eklendi.

• Tekrar kayıt kontrolü: require(!kayitliMi[msg.sender], "Bu adres zaten kayitli") kuralı eklendi.

• Kapasite kontrolü: KAPASITE = 3 olarak belirlendi, toplamKayit dışarıdan okunabilir yapıldı ve require(toplamKayit < KAPASITE, "Etkinlik kapasitesi doldu") kuralı eklendi.

• Yerel Ortam (Remix VM) Test Sonuçları:

• 1. Deneme (İlk geçerli kayıt - 1. hesap): Beklenen sonuç kabul ve toplam 1. Gözlemlenen sonuç işlem başarılı, toplamKayit = 1.

• 2. Deneme (Aynı hesaptan tekrar kayıt - 1. hesap): Beklenen sonuç ret ve toplam 1. Gözlemlenen sonuç revert (Bu adres zaten kayitli), toplamKayit = 1.

• 3. Deneme (Yeni hesaptan boş ad - 2. hesap): Beklenen sonuç ret ve toplam 1. Gözlemlenen sonuç revert (Takma ad bos olamaz), toplamKayit = 1.

• 4. Deneme (İkinci ve üçüncü geçerli kayıt - 2. ve 3. hesap): Beklenen sonuç kabul ve toplam 3. Gözlemlenen sonuç iki işlem de başarılı, toplamKayit = 3.

• 5. Deneme (Dördüncü farklı hesabın kaydı - 4. hesap): Beklenen sonuç ret ve toplam 3. Gözlemlenen sonuç revert (Etkinlik kapasitesi doldu), toplamKayit = 3.

• Reddedilen hiçbir işlem toplamKayit sayacını artırmadı ve state'i değiştirmedi.

• Blokzincirde cüzdan adresleri gerçek dünya kimliklerine bağlı değildir. Tek bir kişi kendi isteğine göre istediği kadar cüzdan oluşturabilir. Bu yüzden sözleşmedeki adres başına 1 kayıt kuralı yalnızca cüzdan başına bir sınır koyar tek bir kişinin 3 farklı cüzdan açıp tüm 3 kişilik kontenjanı tek başına doldurmasını engelleyemez.

**İP22:Görevli ve Giriş Kontrolünü Ekle**

• Eklenen Özellikler:
• Dosya: contracts/EtkinlikKayitV3.sol (Önceki sürümler korunarak yeni sürüm eklendi.)
• Görevli yetkisi: constructor içinde gorevli = msg.sender olarak belirlendi ve sadeceGorevli modifier'ı ile giriş onaylama yetkisi yalnızca görevliye verildi.
• Giriş kontrolleri: girisYaptiMi mapping'i eklendi. Kayıtsız adrese giriş verilmesi ve aynı adresin ikinci kez giriş yapması require kontrolleriyle engellendi.
• Event'ler: Başarılı kayıtta KayitYapildi(katilimci, takmaAd) ve başarılı girişte GirisYapildi(katilimci) event'leri yayımlandı.

• Yerel Ortam (Remix VM) Test Sonuçları:

• 1. Deneme (Görevli kayıtlı kişiye giriş verir): girisYaptiMi = true oldu ve GirisYapildi event'i oluştu.

• 2. Deneme (Görevli olmayan hesap giriş verir):Gözlemlenen sonuç revert durum değişmedi.

• 3. Deneme (Görevli kayıtsız adrese giriş verir): Gözlemlenen sonuç revert.

• 4. Deneme (Aynı katılımcıya ikinci giriş):Gözlemlenen sonuç revert ilk giriş kaydı korundu.

• Önceki kapasite (3 kişi), boş ad ve tekrar kayıt kuralları da yeni sürümde tekrar test edilip doğrulandı.

• Web arayüzü yalnızca kullanıcının tarayıcısında çalışır görsel katmandır ve düğmeyi gizlemek gerçek bir güvenlik sağlamaz. Akıllı sözleşmeler blokzincirde herkese açıktır herhangi bir kullanıcı arayüzü tamamen atlayıp Etherscan, Remix veya kendi yazdığı bir script üzerinden doğrudan sözleşme fonksiyonunu çağırabilir yani yetki denetiminin arayüzde değil doğrudan sözleşme kodunun içinde (msg.sender == gorevli) yapılması zorunludur.

**İP23:Etkinlik Sözleşmeni Sepolia'ya Taşı**

• Sözleşme ve Deploy Bilgileri:

• Dosya: contracts/EtkinlikKayitV3_abi.json

• ABI Dosyası: abi/EtkinlikKayitV3.json 
• Ağ: Sepolia Testnet (Chain ID: 11155111)

• Derleme Ayarları: Solidity v0.8.24, Optimization: No, EVM Version: default

• Görevli Hesap (1. Eğitim Hesabı): [0x137E28988321C83Dd273345D691f9CE683a921Ff]

• Yeni Sözleşme Adresi: [0x70dfe845e6bdb3917e8efe5fdb4c29c2361da074]

• Deploy Tx Hash: 
[0xb56b95159b272eb8a892b2d25ef08f6c7b1eb5bdc2d4d2f92f35de493d4548bf]

• Sepolia İşlem ve Durum Kontrolleri:
• 2. Eğitim Hesabı (0xBcF24Bfb837b328D9128C472C6e44b2Be31D6551) ile kayıt: kayitOl("trabzon61") çağrıldı. Tx Hash: 0xa4b5c1d7354d1c870d4cfadfff34a1f3776aacf774470982359b245e9687928c

• 1. Eğitim Hesabı (Görevli) ile giriş onayı: girisOnayla(0xBcF2...d6551) çağrıldı. Tx Hash: 0x425b0872551eecee2359bb675ec2185f10578f01f11a6c99f4b370543c2ee9de

• Okuma sonuçları: toplamKayit = 1, kayitGetir(2. hesap) = "trabzon61", girisYaptiMi(2. hesap) = true olarak doğrulandı.

• Aynı projenin yerel ve Sepolia sürümlerini karıştırmamak için öncelikle bağlı olunan ağı ve Chain ID bilgisini sözleşmenin yayınlandığı adresi, işlemi gönderen cüzdan adresini (yerel 100 ETH'lik test hesabı mı yoksa MetaMask eğitim hesabı mı) ve işlem hash'inin Sepolia Etherscan üzerinde görünüp görünmediğini kontrol ederim.
