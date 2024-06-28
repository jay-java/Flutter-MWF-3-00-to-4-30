abstract class RBI {
  void SA();
  void HL();
  static void RepoRate() {
    print('reporate : +-4%');
  }
}

class SBI extends RBI {
  @override
  void HL() {
    print('SBI HL : 7%');
  }

  @override
  void SA() {
    print('SBI SA : 3.5%');
  }
}

class PNB extends RBI {
  void HL() {
    print('PNG HL : 8%');
  }

  void SA() {
    print('PNB SA 4%');
  }
}

class DART extends RBI {
  void HL() {
    print('DART HL : 9%');
  }

  void SA() {
    print('DART SA : 5%');
  }
}

void main(List<String> args) {
  SBI s = new SBI();
  s.HL();
  s.SA();
  RBI.RepoRate();
  PNB p = new PNB();
  p.HL();
  p.SA();
  DART d = new DART();
  d.HL();
  d.SA();
}
