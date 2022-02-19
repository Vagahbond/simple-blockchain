#include <block.hpp>
// #include <memory>

class Blockchain
{

public:
    Blockchain(size_t difficulty);
    ~Blockchain();

    void make_transaction(std::string &from, std::string &to, size_t amount);
    void mine();

private:
    std::shared_ptr<Block> genesis_block;
    std::weak_ptr<Block> last_block;
    std::shared_ptr<Block> current_block;

    size_t difficulty;
};