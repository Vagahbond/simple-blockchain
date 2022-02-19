#include <string>

class Transaction
{
public:
    Transaction(std::string from, std::string to, size_t amount);
    std::string get_from();
    std::string get_to();
    size_t get_amount();

    std::string to_string();

private:
    std::string from;
    std::string to;
    size_t amount;
};
