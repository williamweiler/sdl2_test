program sdl2_test;

uses SDL2, SDL2_image;

var
sdlWindow1 : PSDL_Window;
sdlRenderer : PSDL_Renderer;
sdlTexture1 : PSDL_Texture;

begin

  //initilization of video subsystem
if SDL_Init( SDL_INIT_VIDEO ) < 0 then HALT;

sdlWindow1 := SDL_CreateWindow( 'Window1',  50, 50, 800, 800, SDL_WINDOW_SHOWN );
if sdlWindow1 = nil then HALT;

sdlRenderer := SDL_CreateRenderer( sdlWindow1, -1, 0 );
if sdlRenderer = nil then HALT;

sdlTexture1 := IMG_LoadTexture( sdlRenderer, 'C:\FPC\3.0.0\bin\i386-win32\images\futurama.bmp' );
if sdlTexture1 = nil then HALT;
SDL_RenderCopy( sdlRenderer, sdlTexture1, nil, nil );
SDL_RenderPresent (sdlRenderer);
SDL_Delay( 2000 );

SDL_DestroyTexture( sdlTexture1 );
SDL_DestroyRenderer( sdlRenderer );
SDL_DestroyWindow ( sdlWindow1 );


writeln ('voici mon premiere essai');
  //shutting down video subsystem
SDL_Quit;

end.
