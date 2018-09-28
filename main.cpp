#include <iostream>
#include <SDL2/SDL.h>
#include <GL/glew.h>

#define fps 60

int main()
{
    SDL_Init(SDL_INIT_EVERYTHING);

    SDL_Window* window = NULL;

    window = SDL_CreateWindow("Disaster", SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED, 1187, 627, SDL_WINDOW_RESIZABLE | SDL_WINDOW_OPENGL /*| SDL_WINDOW_BORDERLESS*/);

    if(!window)
    {
        std::cout << "failed to create SDL window" << std::endl << SDL_GetError() << std::endl;
    }

    GLenum res = glewInit();

    SDL_GLContext glcontext = SDL_GL_CreateContext(window);

    glClearColor(100, 0, 0, 1);

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
            glClear(GL_COLOR_BUFFER_BIT);
            SDL_GL_SwapWindow(window);
        }

        if((1000 / fps) > SDL_GetTicks() - starting_tick)
        {
            SDL_Delay(1000 / fps - (SDL_GetTicks() - starting_tick));
        }
    }

    SDL_GL_DeleteContext(glcontext);

    SDL_DestroyWindow(window);

    SDL_Quit();
}