

# Telefon Rehberi

Bu proje, Motoko programlama dilini kullanarak Internet Computer Protocol (ICP) üzerinde çalışan basit bir telefon rehberi akıllı sözleşmesi (aktör) içerir. Bu akıllı sözleşme kullanıcıların isimlerine göre telefon girişlerini eklemelerine ve sorgulamalarına izin verir.

## Proje Yapısı

Proje, temel bir telefon rehberi oluşturmak için Motoko'nun tip sistemini ve HashMap modülünü kullanır. Telefon numaraları ve ilgili açıklamaları içeren girişlerin eklenip sorgulanabileceği bir yapı sunar.

## Kullanılan Modüller ve Fonksiyonlar

- **HashMap Modülü:** İsimleri telefon girişlerine eşleyen değiştirilebilir bir koleksiyon oluşturmak için kullanılır.
- **Text Modülü:** Metin türünde verileri işlemek için kullanılır. İsimler, açıklamalar ve telefon numaraları metin olarak saklanır ve işlenir.

## Tanımlanan Veri Tipleri

- **Name:** Metin türünde bir takma ad olan Name, telefon girişleriyle ilişkilendirilen isimleri temsil eder.
- **Phone:** Telefon numaralarını metin olarak saklamak için kullanılan Text tipi için bir takma ad olan Phone.
- **Entry:** Her bir giriş için bir açıklama (desc) ve bir telefon numarası (phone) içeren bir kayıttır.

## Akıllı Sözleşme İşlevleri

- **insert(name, entry):** Bu işlev, kullanıcıların telefon rehberine yeni bir giriş eklemesini sağlar. İsim ve giriş bilgileri parametre olarak alınır ve asenkron olarak çalışır.
- **lookup(name):** İsim parametresini kullanarak telefon rehberindeki bir girişi sorgulayan işlevdir. Eğer giriş bulunursa ?Entry tipinde bir değer döndürür.

## Nasıl Kullanılır?

1. Akıllı sözleşmeyi başlatmak için gerekli olan modülleri içe aktarın.
2. Telefon rehberi için bir HashMap oluşturun.
3. İstenirse insert işlevini kullanarak yeni girişler ekleyin.
4. lookup işlevini kullanarak telefon rehberindeki girişleri sorgulayın.

Bu proje, Motoko dilinin temellerini anlamak ve akıllı sözleşme geliştirmek için iyi bir başlangıç noktasıdır.

Daha fazla bilgi için [Motoko Dökümantasyonu](https://internetcomputer.org/docs/current/motoko/main/motoko)'nu inceleyebilirsiniz.
