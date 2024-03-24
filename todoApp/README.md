# Motoko todoApp

## Tanıtım

Bu proje, Internet Computer Protocol (ICP) üzerinde Motoko programlama dilini kullanarak oluşturulmuş basit bir yapılacaklar listesi akıllı sözleşmesidir (aktör). Bu sözleşme kullanıcıların yapılacakları isimlerine göre eklemeler yapmalarını, tamamlamalarını ve listeden silmelerini sağlar.

## Proje Yapısı

Proje, Motoko'nun tip sistemini ve HashMap, Hash, Nat, Iter ve Text modüllerini kullanarak işlevsel bir yapılacaklar listesi uygulaması oluşturur.

## Kullanılan Modüller ve Fonksiyonlar

- **HashMap Modülü:** Görev isimlerini karşılık gelen bilgileriyle eşleyen değiştirilebilir bir koleksiyon oluşturmak için kullanılır.
- **Hash Modülü:** Metin verilerini hashlemek için kullanılır.
- **Nat Modülü:** Doğal sayılarla çalışmak için kullanılır.
- **Iter Modülü:** Döngü ve iterasyon işlemleri için kullanılır.
- **Text Modülü:** Metin verileriyle çalışmak için kullanılır.

## Tanımlanan Veri Tipleri

- **ToDo:** Bir yapılacak görevi için tanımlanan bir kayıt tipidir. Bu kayıt, bir açıklama ve tamamlanma durumu alanlarına sahiptir.

## Akıllı Sözleşme İşlevleri

- **getTodos():** Tüm yapılacak görevlerin listesini almak için kullanılır.
- **addTodo(description):** Yeni bir yapılacak görev eklemek için kullanılır.
- **completeTodo(id):** Belirli bir yapılacak görevi tamamlanmış olarak işaretlemek için kullanılır.
- **showTodos():** Tüm yapılacak görevleri göstermek için kullanılır.
- **clearCompleted():** Tamamlanmış olan tüm görevleri temizlemek için kullanılır.

## Nasıl Kullanılır?

1. Akıllı sözleşmeyi başlatmak için gerekli olan modülleri içe aktarın.
2. Yapılacaklar listesi için bir HashMap oluşturun.
3. İstenirse yapılacak görevleri ekleyin, işaretleyin veya temizleyin.

Bu proje, Motoko dilini kullanarak akıllı sözleşmeler oluşturmayı ve kullanmayı öğrenmek için harika bir örnek olabilir. Daha fazla bilgi için [Motoko Dökümantasyonu](https://internetcomputer.org/docs/current/motoko/main/motoko)'na göz atabilirsiniz.
