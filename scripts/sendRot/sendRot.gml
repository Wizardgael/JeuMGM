/// @function				sendRot();
/// @description			Send a key "event" to the server

// Move to start of buffer. Networking ALWAYS takes the data from the START of a buffer.
buffer_seek(buff, buffer_seek_start, 0);

// Write the command, the key and the UP/DOWN state into the buffer
buffer_write(buff, buffer_s16, KEY_ROT);
buffer_write(buff, buffer_s16, point_direction(x,y,mouse_x, mouse_y) + 90);

// Send this to the server
network_send_packet(client, buff, buffer_tell(buff));