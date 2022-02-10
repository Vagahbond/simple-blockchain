#include <block.hpp>
#include <memory>

class Blockchain
{

public:
    Blockchain(size_t difficulty);
    ~Blockchain();

private:
    Block *genesis_block;
    Block *last_block;
    size_t difficulty;
};