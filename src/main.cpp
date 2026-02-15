
#include <SFML/Window.hpp>
#include <SFML/Graphics.hpp>


int main() {

    sf::RenderWindow window(sf::VideoMode({800, 600}), "Game");

    while (window.isOpen())
    {
        while(const std::optional event = window.pollEvent()) {
            if(event->is<sf::Event::Closed>()) window.close();
        }
    }
    


}