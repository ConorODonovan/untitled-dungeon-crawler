maxSpeed = 2;
speedRight = 0;
speedLeft = 0;
speedUp = 0;
speedDown = 0;

facing = 270;
animationFrame = 0;
animationFrameChange = 0;
animationSpeed = 8;

tilemap = layer_tilemap_get_id("Collision");

playerInventory = instance_create(x, y, obj_inventory);


// Zooming in and out camera

viewZoomed = false;