#include <block.hpp>
#include "openssl/sha.h"
#include <string.h>
#include <memory>

void sha256(const char *string, char outputBuffer[65])
{
    unsigned char hash[SHA256_DIGEST_LENGTH];
    SHA256_CTX sha256;
    SHA256_Init(&sha256);
    SHA256_Update(&sha256, string, strlen(string));
    SHA256_Final(hash, &sha256);
    int i = 0;
    for (i = 0; i < SHA256_DIGEST_LENGTH; i++)
    {
        sprintf(outputBuffer + (i * 2), "%02x", hash[i]);
    }
    outputBuffer[64] = 0;
}

Block::Block(
    std::string previousHash,
    std::string data,
    std::string timestamp,
    std::string hash = "0") : hash(hash), previousHash(previousHash), data(data), timestamp(timestamp)
{
    this->pow = 0;
}

std::string Block::calculate_hash()
{
    std::string block_data = this->data + this->timestamp + this->pow;
    char hash[65];
    sha256(block_data.c_str(), hash);
    return std::string(hash);
}

void Block::mine(size_t difficulty)
{
    while (!is_hash_valid(difficulty, this->hash))
    {
        this->pow++;

        this->hash = calculate_hash();
    }
}

bool is_hash_valid(size_t difficulty, std::string hash)
{
    for (unsigned short i = hash.length() - 1; i < difficulty; --i)
    {
        if (hash[i] != '0')
        {
            return false;
        }
    }

    return true;
}