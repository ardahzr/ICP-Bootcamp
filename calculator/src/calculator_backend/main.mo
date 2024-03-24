actor calculator {
  // Hesap makinesi için bir aktör tanımlanıyor.

  var cell: Int = 0;
  // 'cell' adında bir değişken tanımlanıyor ve başlangıç değeri olarak 0 atanıyor.

  // Toplama işlemi için bir fonksiyon tanımlanıyor.
  public func addition(s: Int): async Int {
    cell += s;
    // 'cell' değişkenine 's' değeri ekleniyor.
    return cell;
    // 'cell' değişkeninin güncel değeri döndürülüyor.
  };

  // Çıkarma işlemi için bir fonksiyon tanımlanıyor.
  public func subtraction(s: Int): async Int {
    cell -= s;
    // 'cell' değişkeninden 's' değeri çıkarılıyor.
    return cell;
    // 'cell' değişkeninin güncel değeri döndürülüyor.
  };

  // Çarpma işlemi için bir fonksiyon tanımlanıyor.
  public func multiplication(s: Int): async Int {
    cell *= s;
    // 'cell' değişkeni 's' değeri ile çarpılıyor.
    return cell;
    // 'cell' değişkeninin güncel değeri döndürülüyor.
  };

  // Bölme işlemi için bir fonksiyon tanımlanıyor.
  public func division(s: Int): async ?Int {
    if (s == 0) { 
      return null;
      // Eğer 's' değeri 0 ise, bölme işlemi tanımsızdır, dolayısıyla null döndürülüyor.
    }
    else {
      cell /= s;
      // 'cell' değişkeni 's' değeri ile bölünüyor.
      return ?cell;
      // 'cell' değişkeninin güncel değeri döndürülüyor.
    }
  };

  // Hesap makinesinin belleğini temizlemek için bir fonksiyon tanımlanıyor.
  public func clear(): async () {
    cell := 0;
    // 'cell' değişkeninin değeri sıfırlanıyor.
  };
};
