// #include <string>
#include <memory>
#include <vector>
#include <transaction.hpp>

class Block
{

public:
    Block();

    std::string calculate_hash();


    void add_transaction(std::string &from,
                         std::string &to,
                         size_t amount);
    void mine(size_t difficulty);

    void set_next_block(std::shared_ptr<Block> next_block);


private:
    std::string hash;
    std::string timestamp;
    size_t pow;

    std::shared_ptr<Block> next_block;

    std::vector<std::unique_ptr<Transaction>> transactions;

    std::string transactions_as_string();

    bool is_hash_valid(size_t difficulty, std::string hash);
};
