#include <blockchain.hpp>


Blockchain::Blockchain(size_t difficulty)
{
    this->genesis_block = std::make_shared<Block>();
    this->difficulty = difficulty;
}

void Blockchain::make_transaction(std::string &from, std::string &to, size_t amount)
{
    this->current_block->add_transaction(from, to, amount);
}

void Blockchain::mine()
{
    this->current_block->mine(this->difficulty);
    this->last_block.lock()->set_next_block(this->current_block);
    this->last_block = std::weak_ptr<Block>(current_block);
    this->current_block = std::make_unique<Block>();
}