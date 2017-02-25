/// CreatePauseSurface()
surf = surface_create(window_get_width(), window_get_height());
surface_copy(surf, 0, 0, application_surface);
instance_deactivate_all(true);
