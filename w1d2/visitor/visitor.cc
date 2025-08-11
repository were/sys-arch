#include <iostream>
#include <sstream>
#include <string>

class Visitor;
class Node;
class Const;
class Variable;
class Declare;

// Visitor
struct Visitor {
  virtual void visit(Const *c);
  virtual void visit(Variable *v);
  virtual void visit(Declare *d);
  virtual ~Visitor() = default;
};

// Some lightweighted AST node example
struct Node {
  Node() {}
  virtual ~Node() = default;
  virtual void accept(Visitor *v) = 0;
};

struct Const : Node {
  Const(int value) : Node(), v(value) {}

  ~Const() = default;

  int v;
  // Visitor will be dispatched naturally through overloading
  void accept(Visitor *v) override { v->visit(this); }
};

struct Variable : Node {
  Variable(const std::string &id) : Node(), id(id) {}

  ~Variable() = default;

  const std::string id;
  void accept(Visitor *v) override { v->visit(this); }
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
  void accept(Visitor *v) override { v->visit(this); }
};

// Visitor implementation
void Visitor::visit(Const *c) { /*Const is a leaf*/ }
void Visitor::visit(Variable *v) { /*Variable is a leaf*/ }
void Visitor::visit(Declare *d) {
  d->var->accept(this);
  if (d->init) {
    d->init->accept(this);
  }
}

// Implement a overridden visitor that prints the AST

struct Dumper : Visitor {

  std::ostringstream oss;

  void visit(Const *c) override { this->oss << "Const: " << c->v << std::endl; }

  void visit(Variable *v) override {
    this->oss << "Variable: " << v->id << std::endl;
  }

  void visit(Declare *d) override {
    oss << "Declare:\n";
    oss << "  |- ";
    d->var->accept(this);
    if (d->init) {
      this->oss << "  `- Init: ";
      d->init->accept(this);
    } else {
      this->oss << " [no init]";
    }
    this->oss << std::endl;
  }
};

std::string printVisitor(Node *v) {
  Dumper dumper;
  v->accept(&dumper);
  return dumper.oss.str();
}

int main() {
  Declare *d = new Declare(new Variable(std::string("x")), new Const(42));
  std::cout << printVisitor(d) << std::endl;
  std::cout << std::endl;
  delete d;
}
