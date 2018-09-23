#include <iostream>
#include <SDL2/SDL.h>

#define fps 60

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

    unsigned int starting_tick;
    bool running = true;
    SDL_Event e;

    while(running)
    {
        starting_tick = SDL_GetTicks();

        while(SDL_PollEvent(&e))
        {
            if(e.type == SDL_QUIT)
            {
                running = false;
                break;
            }
        }

        if((1000 / fps) > SDL_GetTicks() - starting_tick)
        {
            SDL_Delay(1000 / fps - (SDL_GetTicks() - starting_tick));
        }
    }

    SDL_DestroyWindow(window);

    SDL_Quit();
}