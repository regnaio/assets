import os

import bpy
from bpy.app.handlers import persistent

os.system("clear")


def set_drivers():
    drivers_on = bpy.context.scene["drivers_on"]
    print(f"drivers_on: {drivers_on}")

    for mesh in bpy.data.meshes:
        animation_data = mesh.animation_data
        if animation_data is None:
            continue

        drivers = animation_data.drivers
        for fcurve in drivers:
            fcurve.mute = not drivers_on


"""
https://blender.stackexchange.com/questions/258355/despgraph-update-handler-is-never-called
"""


@persistent
def depsgraph_callback(scene, depsgraph):
    set_drivers()


def register():
    bpy.app.handlers.depsgraph_update_post.append(depsgraph_callback)


register()
