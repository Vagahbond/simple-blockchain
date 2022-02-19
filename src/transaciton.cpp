#include <transaction.hpp>

Transaction::Transaction(std::string from, std::string to, size_t amount)
    : from(from), to(to), amount(amount)
{
}

std::string Transaction::to_string()
{
    return "from: " + from + " to: " + to + " amount: " + std::to_string(amount);
}