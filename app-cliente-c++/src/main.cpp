#include <iostream>
#include <pqxx/pqxx>
#include <thread>
#include <chrono>
#include <cstdlib>
#include <ctime>

int main() {
    const std::string db_url = "postgresql://postgres:postgres@localhost:5433/postgres";
    std::srand(std::time(0));

    try {
        pqxx::connection conn(db_url);
        pqxx::work txn(conn);

        while (true) {
            int wait_time = std::rand() % 10 + 1; // Espera aleatoria entre 1 y 10 segundos
            std::this_thread::sleep_for(std::chrono::seconds(wait_time));

            // Corrige la consulta SQL
            pqxx::result r = txn.exec("SELECT id, name FROM dummy_table"); 

            for (auto row : r) {
                std::cout << " C++ Resultado: " << row["id"].c_str() << " " << row["name"].c_str() << std::endl;
            }
        }
    } catch (const std::exception &e) {
        std::cerr << e.what() << std::endl;
        return 1;
    }

    return 0;
}
