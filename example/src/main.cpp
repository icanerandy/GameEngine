#include <iostream>

namespace GameEngine {
    __declspec(dllimport) void print();
};

int main() {
    GameEngine::print();

    return 0;
}
