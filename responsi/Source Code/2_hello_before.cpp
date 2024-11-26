#include <iostream>
#include <thread>
#include <unistd.h>

void threadFunction() {
    sleep(1); // Tidur selama 1 detik
    printf("hello\n");
}

int main() {
    // Membuat thread
    std::thread t(threadFunction);
    
    // Kembali dari main tanpa menunggu thread selesai
    return 0;
}