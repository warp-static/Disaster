#include <iostream>
#include <SDL2/SDL.h>

int main()
{
    SDL_Init(SDL_INIT_EVERYTHING);

    SDL_Window* window = NULL;

    window = SDL_CreateWindow("Disaster", SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED, 1187, 627, SDL_WINDOW_RESIZABLE /*| SDL_WINDOW_BORDERLESS*/);

    if(!window)
    {
        std::cout << "failed to create SDL window" << std::endl << SDL_GetError() << std::endl;
    }

    SDL_Surface* screen = SDL_GetWindowSurface(window);

    unsigned int red = SDL_MapRGB(screen->format, 100, 0, 0);

    SDL_FillRect( screen, NULL, red);

    SDL_UpdateWindowSurface(window);

    bool running = true;
    SDL_Event e;

    while(running)
    {
        while(SDL_PollEvent(&e))
        {
            if(e.type == SDL_QUIT)
            {
                running = false;
                break;
            }
        }
    }

    SDL_DestroyWindow(window);

    SDL_Quit();
}