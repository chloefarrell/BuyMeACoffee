pragma

contract BuyMeACoffee {
  event NewMemo(
    address indexed from,
    uint256 timestamp,
    string name,
    string message,
  );

  struct Memo {
    address from;
    uint256 timestamp;
    string name;
    string message;
  }

  Memo[] memos;

  address payable owner;

  constructor() {
    owner = payable(msg.sender);
  }
