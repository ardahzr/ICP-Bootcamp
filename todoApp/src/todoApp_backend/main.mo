import Map "mo:base/HashMap"; // HashMap modülünü içe aktar
import Hash "mo:base/Hash"; // Hash modülünü içe aktar
import Nat "mo:base/Nat"; // Nat modülünü içe aktar
import Iter "mo:base/Iter"; // Iter modülünü içe aktar
import Text "mo:base/Text"; // Text modülünü içe aktar

actor { // Aktör tanımı başlangıcı

  type ToDo = { // ToDo tipini oluştur
    description : Text; // description alanı (metin türünde)
    completed : Bool; // completed alanı (Boolean türünde)
  };

  func natHash(n : Nat) : Hash.Hash { // natHash fonksiyonunu tanımla
    Text.hash(Nat.toText(n)); // Nat değerini metne dönüştürüp hashle
  };

  var todos = Map.HashMap<Nat, ToDo>(0, Nat.equal, natHash); // todos adında bir HashMap tanımla
  var nextId : Nat = 0; // nextId adında bir Nat değişkeni tanımla ve 0'a eşitle

  public query func getTodos() : async [ToDo] { // getTodos adında bir sorgu fonksiyonu tanımla
    Iter.toArray(todos.vals()); // todos'un değerlerini diziye dönüştür ve geri döndür
  };

  public func addTodo(description : Text) : async Nat { // addTodo adında bir fonksiyon tanımla
    let id = nextId; // id değişkenini nextId'e eşitle
    todos.put(id, { description = description; completed = false }); // todos'a yeni bir ToDo nesnesi ekle
    nextId += 1; // nextId değerini bir artır
    id // id değerini geri döndür
  };

  public func completeTodo(id : Nat) : async () { // completeTodo adında bir fonksiyon tanımla
    ignore do ? { // Hata durumunu göz ardı et
      let description = todos.get(id)!.description; // id ile eşleşen ToDo'nun description alanını al
      todos.put(id, { description; completed = true }); // ToDo'nun completed alanını true olarak güncelle
    };
  };

  public query func showTodos() : async Text { // showTodos adında bir sorgu fonksiyonu tanımla
    var output : Text = "\n_____TO-DOs___"; // output adında bir metin değişkeni tanımla ve başlık ekleyerek başlat
    for (todo : ToDo in todos.vals()) { // todos'un değerlerini döngüye al
      output #= "\n" # todo.description; // output'a ToDo'nun açıklamasını ekle
      if (todo.completed) { output #= "+" }; // ToDo tamamlanmışsa output'a "+" işareti ekle
    };
    output # "\n"; // output'a bir satır sonu ekle
  };

  public func clearCompleted() : async () { // clearCompleted adında bir fonksiyon tanımla
    todos := Map.mapFilter<Nat, ToDo, ToDo>( // todos'u dönüştürerek temizle
      todos, // dönüştürülecek HashMap
      Nat.equal, // anahtar karşılaştırma fonksiyonu
      natHash, // hash fonksiyonu
      func(_, todo) { if (todo.completed) null else ?todo }, // filtreleme fonksiyonu
    );
  };

};
