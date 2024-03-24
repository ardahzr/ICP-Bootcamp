import Icrc1Ledger "canister:icrc1_ledger_canister";
// Icrc1Ledger, hesaplar arası token transferi gibi finansal işlemleri yöneten bir hesap defteri canister'ıdır.
import Debug "mo:base/Debug"; // hata ayıklama işlemleri için kullanılır.
import Result "mo:base/Result";// işlevlerin başarılı veya başarısız olma durumunu döndürmek için kullanılır.
import Option "mo:base/Option"; //işlevlerin opsiyonel değerleri döndürmek için kullanılır.
import Blob "mo:base/Blob"; //işlevlerin veri bloklarını manipüle etmek için kullanılır.
import Error "mo:base/Error"; //işlevlerin hata durumlarını yönetmek için kullanılır.

// Ana aktör tanımlanıyor.

actor {

  // Hesap türü tanımlanıyor. Her hesap, sahibini ve opsiyonel olarak alt hesaplarını içerir.
  type Account = {
    owner : Principal;
    subaccount : ?[Nat8];
  };

  // Transfer işlemi için gerekli argümanlar tanımlanıyor.
  type TransferArgs = {
    amount : Nat;          // Transfer edilecek miktar
    toAccount : Account;   // Hedef hesap bilgileri
  };

  // Transfer fonksiyonu tanımlanıyor. Transfer işlemini gerçekleştirir.
  public shared ({ caller }) func transfer(args : TransferArgs) : async Result.Result<Icrc1Ledger.BlockIndex, Text> {
    // Debug çıktısı, transfer işleminin ne yaptığını gösterir.
    Debug.print(
      "Transferring "
      # debug_show (args.amount)
      # " tokens to account"
      # debug_show (args.toAccount)
    );

    // Icrc1Ledger canister'ından transfer için gereken argümanlar oluşturuluyor.
    let transferArgs : Icrc1Ledger.TransferArg = {
      memo = null;                  // Not: Henüz belirtilmemiş
      amount = args.amount;         // Transfer edilecek miktar
      from_subaccount = null;       // Kaynak alt hesap: Henüz belirtilmemiş
      fee = null;                   // Ücret: Henüz belirtilmemiş
      to = args.toAccount;          // Hedef hesap
      created_at_time = null;       // İşlem oluşturulma zamanı: Henüz belirtilmemiş
    };

    // Transfer işlemi yapılıyor.
    try {
      let transferResult = await Icrc1Ledger.icrc1_transfer(transferArgs);

      // Transfer sonucuna göre işlem yapılıyor.
      switch (transferResult) {
        case (#Err(transferError)) {
          // Transfer başarısız olursa hata döndürülüyor.
          return #err("Couldn't transfer funds:\n" # debug_show (transferError));
        };
        case (#Ok(blockIndex)) { 
          // Transfer başarılı olursa blok indeksi döndürülüyor.
          return #ok blockIndex 
        };
      };
    } catch (error : Error) {
      // Transfer sırasında hata oluşursa hata döndürülüyor.
      return #err("Reject message: " # Error.message(error));
    };
  };
};

