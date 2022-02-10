#include <string>

class Block
{

public:
    Block(std::string previousHash,
          std::string data,
          std::string timestamp,
          std::string hash);

    std::string calculate_hash();

    void mine(unsigned int difficulty);


private:
    std::string hash;
    std::string previousHash;
    std::string data;
    std::string timestamp;
    size_t pow;

    bool is_hash_valid(unsigned int difficulty, std::string hash);
};
