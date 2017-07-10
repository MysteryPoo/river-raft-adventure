/// @description Properties
alarm[0] = room_speed;
m_Paused = false;
global.currentFlow = 2;
m_Score = 0;
m_MaxScore = 0;
m_Lives = 3;
m_Lane = [128, 224, 320, 416];
m_Difficulty = 0;
m_HTTP = -1;
// Window scale variables
base_width = 512;
base_height = 768;
width = base_width;
height = base_height;
// Game state
m_State = GAME.TUTORIAL_DWARF;
m_Obstacle = true;
randomize();
