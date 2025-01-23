class GoPay {
  purchase(item) {
    console.log(`Purchasing ${item}`);
  }
}
class OVO {
  purchase(item) {
    console.log(`Purchasing ${item}`);
  }
}

class Store {
  constructor(paymentMethod) {
    this.paymentMethod = paymentMethod;
  }

  buyComputer() {
    this.paymentMethod.purchase("Computer");
  }

  buyLaptop() {
    this.paymentMethod.purchase("Laptop");
  }
}

new Store(new OVO()).buyComputer()
