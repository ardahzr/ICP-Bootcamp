import Map "mo:base/HashMap"; // HashMap modülünü içe aktar
import Text "mo:base/Text"; // Text modülünü içe aktar

actor  {

  // Motoko'da kullanılacak tipleri tanımla
  type Name = Text; // Metin tipinde Name tanımla
  type Phone = Text; // Metin tipinde Phone tanımla

  // Entry tipini tanımla (desc ve phone alanları içerir)
  type Entry = {
    desc: Text; // desc alanı (metin türünde)
    phone: Phone; // phone alanı (Phone tipinde)
  };

  // phoneBook adında bir HashMap tanımla, anahtarları Name, değerleri Entry türünde
  let phoneBook = Map.HashMap<Name, Entry>(0, Text.equal, Text.hash);

  // insert fonksiyonu tanımı: name ve entry parametreleri alır, async olarak çalışır
  public func insert(name: Name, entry: Entry): async () {
    phoneBook.put(name, entry); // phoneBook'a name anahtarıyla entry değerini ekle
  };

  // lookup fonksiyonu tanımı: name parametresini alır, async olarak çalışır, ?Entry tipinde değer döndürebilir
  public query func lookup(name: Name): async ?Entry {
    phoneBook.get(name); // phoneBook'tan name anahtarına karşılık gelen değeri döndür (varsa)
  };

};
