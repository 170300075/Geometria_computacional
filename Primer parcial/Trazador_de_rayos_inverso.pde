int eye_x = width/2;
int eye_y = (height/6) * 5;
int eye_diameter = 20;

int light_x = 0;
int light_y = height/2;
int light_diameter = 20;


int object_begin_x = width/3;
int object_begin_y = 5;
int object_end_x = 2*width/3;
int object_end_y = 5;

int screen_begin_x = 0;
int screen_begin_y = height/2;
int screen_end_x = width;
int screen_end_y = height/2;
  
float m;

void setup()
{
  // Ventana redimensionable
  surface.setResizable(true);
  
  // 800 x 800 pixeles; con FX2D como render
  size(800, 800, FX2D);
  
  // Configurando un framerate chido
  frameRate(60);
}


void draw()
{
  actualizarDatos();
  
  // Dibujar el ojo
  noStroke();
  fill(#4079F2);
  ellipse(eye_x, eye_y, eye_diameter, eye_diameter);
  
  // Dibujar la fuente de luz
  fill(#F2DE20);
  ellipse(light_x, light_y, light_diameter, light_diameter);
  stroke(1);
  
  // Se dibujar la pantalla
  for(int i=screen_begin_x;i<=screen_end_x;i++)
  {
    point(i, screen_end_y);
  }
  
  // Dibujar el objeto
  line(object_begin_x, object_begin_y, object_end_x, object_end_y);
  
  
  
  m = (screen_begin_x - eye_x) / (screen_end_x - eye_x);
  
}

void actualizarDatos()
{
  eye_x = width/2;
  eye_y = (height/6) * 5;
  light_y = height/2;
  object_begin_x = width/3;
  object_end_x = 2*width/3;
  screen_begin_y = height/2;
  screen_end_x = width;
  screen_end_y = height/2;
}