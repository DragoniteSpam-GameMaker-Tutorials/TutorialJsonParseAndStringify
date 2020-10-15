draw_text(32, 32, "Name: " + the_struct.name);
draw_text(32, 64, "Address: " + the_struct.address);
draw_text(32, 96, "Kids: ");
draw_text(32, 128, "   " + the_struct.kids[0].name);
draw_text(32, 160, "   " + the_struct.kids[1].name);

if (keyboard_check_pressed(vk_space)) {
    var json_string = json_stringify(the_struct);
    show_debug_message(json_string);
    var fn = get_save_filename("", "");
    if (fn != "") {
        var file = file_text_open_write(fn);
        file_text_write_string(file, json_string);
        file_text_close(file);
    }
}