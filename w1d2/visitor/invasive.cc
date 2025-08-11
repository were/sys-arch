#include <iostream>
#include <string>

class Visitor;
class Node;
class Const;
class Variable;
class Declare;

// Some lightweighted AST node example
struct Node {
  Node() {}
  virtual ~Node() = default;
  virtual void print(std::ostream &os) = 0;
};

struct Const : Node {
  Const(int value) : Node(), v(value) {}

  ~Const() = default;

  int v;
  void print(std::ostream &os) override { os << "Const(" << v << ")"; }
};

struct Variable : Node {
  Variable(const std::string &id) : Node(), id(id) {}

  ~Variable() = default;

  const std::string id;
  void print(std::ostream &os) override { os << "Variable(" << id << ")"; }
};

struct Declare : Node {
  Declare(Variable *var, Node *init = nullptr) : Node(), var(var), init(init) {}

  virtual ~Declare() {
    delete this->var;
    if (init)
      delete this->init;
  }

  Variable *var;
  Node *init;
  void print(std::ostream &os) override {
    os << "Declare(";
    var->print(os);
    os << ", ";
    if (init) {
      init->print(os);
    } else {
      os << "null";
    }
    os << ")";
  }
};

int main() {
  Declare *d = new Declare(new Variable(std::string("x")), new Const(42));
  d->print(std::cout);
  std::cout << std::endl;
  delete d;
}
