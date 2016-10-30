//Ultimate Creator by Nexius v1.0.0

#define FILTERSCRIPT

#include <a_samp>
#tryinclude <colandreas>

#define ONLY_FOR_ADMINS //Comment to disable
//#define CREATOR_DEBUG

#define CREATOR_VERSION				"1.0.0"

#define DEFAULT_COLOR				-1

#define MAX_MATCHES_COUNT			10
#define MAX_TEXTURES_PER_OBJECT		16
#define MAX_MAPICONS				100
#define MAX_MAPNAME_LENGTH			64
#define MAX_LABEL_TEXT_LENGTH		64
#define MAX_OBJECT_TEXT_LENGTH		128
#define MAX_FONT_NAME_LENGTH		32
#define MAX_OBJECT_NAME_LENGTH		20
#define MAX_TXD_NAME_LENGTH			20
#define MAX_TEXTURE_NAME_LENGTH		32
#define MAX_VEHICLE_NAME_LENGTH		18
#define MAX_ICON_NAME_LENGTH		22
#define MAX_SKIN_NAME_LENGTH		8

#define DIST_FROM_CAMERA			8.0

#define DELAY_AFTER_SPAWN			500
#define DELAY_DOUBLE_CLICK_RIGTH	500
#define DELAY_DOUBLE_CLICK_LEFT		500
#define DELAY_LAST_CAM_MOVE			100
#define DELAY_CALL_MAIN_MENU		300

#define MAP_DOES_NOT_EXIST_ERROR		"You need to create any map to save it!"
#define MAP_SAVED						"%s saved the map %s"
#define SAVE_MAP_ERROR					"An error occurred while saving the map!"
#define ENTER_MAP_NAME_FOR_SAVE			"Enter the name of the map you want to save:"
#define MAP_CREATED						"%s created a new map"
#define MAP_OPENED						"%s opened the map %s"
#define FILE_NOT_FOUND_ERROR			"File not found!"
#define INCORRECT_FILE_NAME_ERROR		"Enter the valid file name!"
#define MAP_DELETED						"%s removed the map %s"
#define COLANDREAS_COMPATIBILITY_ERROR	"This feature is only available after ColAndreas connection!"
#define SHOW_FOUNDED_MATCHES			"Displaying the first %d matches"
#define NO_MATCHES_FOUND				"No matches found"
#define ENTER_OBJECT_NAME				"Enter the ID or name of the object model:"
#define INCORRECT_OBJECT_ID_ERROR		"Enter the valid ID or name of the object model!"
#define OBJECT_CREATED					"Object id %d created"
#define LIMIT_ERROR						"You have reached the limit!"
#define ENTER_VEHICLE_NAME				"Enter the ID or the name of the vehicle model:"
#define INCORRECT_VEHICLE_ID_ERROR		"Enter the valid ID or name of the vehicle model!"
#define VEHICLE_CREATED					"Vehicle id %d created"
#define ENTER_SKIN_NAME					"Enter the ID or the name of the actor's skin:"
#define INCORRECT_SKIN_ID_ERROR			"Enter the valid ID or the name of the actor's skin!"
#define ACTOR_CREATED					"Actor id %d created"
#define ENTER_PICKUP_NAME				"Enter the ID or name of the pickup model:"
#define INCORRECT_PICKUP_ID_ERROR		"Enter the valid ID or the name of pickup model!"
#define PICKUP_CREATED					"Pickup id %d created"
#define CP_CREATED						"Checkpoint id %d created"
#define RCP_TYPE_NORMAL					"Normal"
#define RCP_TYPE_FINISH					"Finish"
#define RCP_TYPE_NOTHING				"Nothing"
#define RCP_TYPE_AIR_NORMAL				"Air normal"
#define RCP_TYPE_AIR_FINISH				"Air finish"
#define RCP_CREATED						"Race checkpoint id %d created"
#define ENTER_ICON_NAME					"Enter the ID or the name of the map icon:"
#define INVALID_MAP_ICONS_WARNING		"ID 1, 2, 4 and 56 can lead to crash of the game, if you have enabled the map legend!"
#define INCORRECT_ICON_ID_ERROR			"Enter the valid ID or name of the map icon!"
#define ICON_CREATED					"Map icon id %d created"
#define ZONE_CREATED					"Gang zone id %d created"
#define INCORRECT_LABEL_NAME_ERROR		"Enter the text that will display 3D text!"
#define ENTER_TEXT						"Enter the text:"
#define LABEL_CREATED					"3D text id %d created"
#define TELEPORTED_TO_OBJECT			"You moved to the object id %d"
#define TELEPORTED_OBJECT				"You moved the object id %d to itself"
#define OBJECT_COPIED					"Object id %d copied"
#define OBJECT_DELETED					"Object id %d deleted"
#define TEXTURE_RESET					"The texture of the object %d was reset (layer %d)"
#define ENTER_TEXTURE_NAME				"Enter the ID or the name of the texture:"
#define INCORRECT_TEXTURE_ID_ERROR		"Enter the valid ID or the name of the texture!"
#define TEXTURE_CHANGED					"The texture of the object %d changed to %d (layer %d)"
#define INCORRECT_OBJECT_COLOR_ERROR	"Enter the valid color of the object!"
#define ENTER_OBJECT_COLOR				"Enter the object color in ARGB format:"
#define OBJECT_COLOR_CHANGED			"You set the color %d to the object %d"
#define INCORRECT_LAYER_ID_ERROR		"Enter the valid layer ID (materialindex)!"
#define OBJECT_TEXT_RESET				"The text of the object %d was reset (layer %d)"
#define INCORRECT_OBJECT_TEXT_ERROR		"Enter the text to be displayed on the object!"
#define OBJECT_TEXT_CHANGED				"Text of the object %d changed"
#define OBJECT_TEXT_SIZE_CHANGED		"Text size of the object %d changed to %d"
#define INCORRECT_FONT_NAME_ERROR		"Enter the name of the font of text which will written on the object!"
#define ENTER_FONT_NAME					"Enter the font name:"
#define FONT_CHANGED					"Text font of the object %d changed"
#define INCORRECT_FONT_SIZE_ERROR		"Enter the valid font size!"
#define ENTER_FONT_SIZE					"Enter the font size from 0 to 255:"
#define FONT_SIZE_CHANGED				"Text font size of the object %d changed to %d"
#define OBJECT_TEXT_BOLD_CHANGED		"Text bold of the object %d set to %d"
#define INCORRECT_FONT_COLOR_ERROR		"Enter the valid font color of the object!"
#define ENTER_FONT_COLOR				"Enter the font color in ARGB format:"
#define FONT_COLOR_CHANGED				"You set the color %d to the text of the object %d"
#define INCORRECT_BACK_COLOR_ERROR		"Enter the valid background color of the object!"
#define ENTER_BACK_COLOR				"Enter the background color in ARGB format:"
#define BACK_COLOR_CHANGED				"You set the background color %d to the object %d"
#define ALIGNMENT_CHANGED				"Alignment of the text of the object %d changed to %d"
#define INCORRECT_COORD_X_ERROR			"Enter the valid X coordinate!"
#define OBJECT_TELEPORTED_TO_X			"You moved the object %d on the X coordinate: %.4f"
#define INCORRECT_COORD_Y_ERROR			"Enter the valid Y coordinate!"
#define OBJECT_TELEPORTED_TO_Y			"You moved the object %d on the Y coordinate: %.4f"
#define INCORRECT_COORD_Z_ERROR			"Enter the valid Z coordinate!"
#define OBJECT_TELEPORTED_TO_Z			"You moved the object %d on the Z coordinate: %.4f"
#define INCORRECT_ROT_X_ERROR			"Enter the valid rotation of the X coordinate!"
#define OBJECT_TELEPORTED_TO_ROT_X		"You moved the object %d on the X rotation coordinate: %.4f"
#define INCORRECT_ROT_Y_ERROR			"Enter the valid rotation of the Y coordinate!"
#define OBJECT_TELEPORTED_TO_ROT_Y		"You moved the object %d on the Y rotation coordinate: %.4f"
#define INCORRECT_ROT_Z_ERROR			"Enter the valid rotation of the Z coordinate!"
#define OBJECT_TELEPORTED_TO_ROT_Z		"You moved the object %d on the Z rotation coordinate: %.4f"
#define TELEPORTED_TO_VEHICLE			"You moved to the vehicle id %d"
#define TELEPORTED_VEHICLE				"You moved the vehicle id %d to itself"
#define VEHICLE_COPIED					"Vehicle id %d copied"
#define VEHICLE_DELETED					"Vehicle id %d deleted"
#define VEHICLE_REPAIRED				"Vehicle id %d repaired"
#define VEHICLE_TELEPORTED_TO_X			"You moved the vehicle %d on the X coordinate: %.4f"
#define VEHICLE_TELEPORTED_TO_Y			"You moved the vehicle %d on the Y coordinate: %.4f"
#define VEHICLE_TELEPORTED_TO_Z			"You moved the vehicle %d on the Z coordinate: %.4f"
#define VEHICLE_TELEPORTED_TO_ROT_Z		"You moved the vehicle %d on the Z rotation coordinate: %.4f"
#define INCORRECT_RESPAWN_TIME_ERROR	"Enter the valid respawn time!"
#define RESPAWN_TIME_CHANGED			"You set the respawn time %d ms to vehicle %d"
#define INCORRECT_COLOR_1_ERROR			"Enter the valid color 1!"
#define COLOR_1_CHANGED					"You set the vehicle %d color 1: %d"
#define INCORRECT_COLOR_2_ERROR			"Enter the valid color 2!"
#define COLOR_2_CHANGED					"You set the vehicle %d color 2: %d"
#define TELEPORTED_TO_ACTOR				"You moved to the actor id %d"
#define TELEPORTED_ACTOR				"You moved the actor id %d to itself"
#define ACTOR_COPIED					"Actor id %d copied"
#define ACTOR_DELETED					"Actor id %d deleted"
#define ACTOR_TELEPORTED_TO_X			"You moved the actor %d on the X coordinate: %.4f"
#define ACTOR_TELEPORTED_TO_Y			"You moved the actor %d on the Y coordinate: %.4f"
#define ACTOR_TELEPORTED_TO_Z			"You moved the actor %d on the Z coordinate: %.4f"
#define ACTOR_TELEPORTED_TO_ROT_Z		"You moved the actor %d on the Z rotation coordinate: %.4f"
#define TELEPORTED_TO_PICKUP			"You moved to the pickup id %d"
#define TELEPORTED_PICKUP				"You moved the pickup id %d to itself"
#define PICKUP_COPIED					"Pickup id %d copied"
#define PICKUP_DELETED					"Pickup id %d deleted"
#define INCORRECT_PICKUP_TYPE_ERROR		"Enter the valid type of pickup!"
#define PICKUP_TYPE_CHANGED				"You set the type %d to the pickup %d"
#define PICKUP_TELEPORTED_TO_X			"You moved the pickup %d on the X coordinate: %.4f"
#define PICKUP_TELEPORTED_TO_Y			"You moved the pickup %d on the Y coordinate: %.4f"
#define PICKUP_TELEPORTED_TO_Z			"You moved the pickup %d on the Z coordinate: %.4f"
#define INCORRECT_VW_ERROR				"Enter the valid ID of the virtual world!"
#define PICKUP_VW_CHANGED				"You set the virtual world %d to the pickup %d"
#define TELEPORTED_TO_CP				"You moved to the checkpoint id %d"
#define TELEPORTED_CP					"You moved the checkpoint id %d to itself"
#define CP_DELETED						"Checkpoint id %d deleted"
#define CP_TELEPORTED_TO_X				"You moved the checkpoint %d on the X coordinate: %.4f"
#define CP_TELEPORTED_TO_Y				"You moved the checkpoint %d on the Y coordinate: %.4f"
#define INCORRECT_SIZE_ERROR			"Enter the valid size!"
#define CP_SIZE_CHANGED					"You set the size %.1f to the checkpoint %d"
#define TELEPORTED_TO_RCP				"You moved to the race checkpoint id %d"
#define TELEPORTED_RCP					"You moved the race checkpoint id %d to itself"
#define RCP_DELETED						"Race checkpoint id %d deleted"
#define RCP_TYPE_CHANGED				"You set the type %d to the race checkpoint %d"
#define RCP_TELEPORTED_TO_X				"You moved the race checkpoint %d on the X coordinate: %.4f"
#define RCP_TELEPORTED_TO_Y				"You moved the race checkpoint %d on the Y coordinate: %.4f"
#define RCP_TELEPORTED_TO_Z				"You moved the race checkpoint %d on the Z coordinate: %.4f"
#define INCORRECT_NEXTX_ERROR			"Enter the valid X coordinate of the next point, to which will be rotated the pointer!"
#define RCP_NEXTX_CHANGED				"NextX for race checkpoint %d set to %.4f"
#define INCORRECT_NEXTY_ERROR			"Enter the valid Y coordinate of the next point, to which will be rotated the pointer!"
#define RCP_NEXTY_CHANGED				"NextY for race checkpoint %d set to %.4f"
#define INCORRECT_NEXTZ_ERROR			"Enter the valid Z coordinate of the next point, to which will be rotated the pointer!"
#define RCP_NEXTZ_CHANGED				"NextZ for race checkpoint %d set to %.4f"
#define RCP_SIZE_CHANGED				"You set the size %.1f to race checkpoint %d"
#define TELEPORTED_TO_MAPICON			"You moved to the map icon id %d"
#define TELEPORTED_MAPICON				"You moved the map icon id %d to itself"
#define MAPICON_COPIED					"Map icon id %d copied"
#define MAPICON_DELETED					"Map icon id %d deleted"
#define MAPICON_TELEPORTED_TO_X			"You moved the map icon %d on the X coordinate: %.4f"
#define MAPICON_TELEPORTED_TO_Y			"You moved the map icon %d on the Y coordinate: %.4f"
#define MAPICON_TELEPORTED_TO_Z			"You moved the map icon %d on the Z coordinate: %.4f"
#define INCORRECT_ICON_COLOR_ERROR		"Enter the valid color of the map icon!"
#define MAPICON_COLOR_CHANGED			"You set the color %d to the map icon %d"
#define MAPICON_STYLE_CHANGED			"You set the display style %d to the map icon %d"
#define TELEPORTED_TO_GANGZONE			"You moved to the gang zone id %d"
#define TELEPORTED_GANGZONE				"You moved the gang zone id %d to itself"
#define GANGZONE_COPIED					"Gang zone id %d copied"
#define GANGZONE_DELETED				"Gang zone id %d deleted"
#define INCORRECT_COORD_MINX_ERROR		"Enter the valid min X coordinate!"
#define GANGZONE_MINX_CHANGED			"You set the min X coordinate to the gang zone %d: %.4f"
#define INCORRECT_COORD_MINY_ERROR		"Enter the valid min Y coordinate!"
#define GANGZONE_MINY_CHANGED			"You set the min Y coordinate to the gang zone %d: %.4f"
#define INCORRECT_COORD_MAXX_ERROR		"Enter the valid max X coordinate!"
#define GANGZONE_MAXX_CHANGED			"You set the max X coordinate to the gang zone %d: %.4f"
#define INCORRECT_COORD_MAXY_ERROR		"Enter the valid max Y coordinate!"
#define GANGZONE_MAXY_CHANGED			"You set the max Y coordinate to the gang zone %d: %.4f"
#define INCORRECT_ZONE_COLOR_ERROR		"Enter the valid gangzone color!"
#define GANGZONE_COLOR_CHANGED			"You set the color %d to the gang zone %d"
#define TELEPORTED_TO_LABEL				"You moved to the 3D text id %d"
#define TELEPORTED_LABEL				"You moved the 3D text id %d to itself"
#define LABEL_COPIED					"3D text id %d copied"
#define LABEL_DELETED					"3D text id %d deleted"
#define LABEL_TEXT_CHANGED				"Text of the 3D text %d changed"
#define INCORRECT_LABEL_COLOR_ERROR		"Enter the valid 3D text color!"
#define LABEL_COLOR_CHANGED				"You set the color %d to the 3D text %d"
#define LABEL_TELEPORTED_TO_X			"You moved the 3D text %d on the X coordinate: %.4f"
#define LABEL_TELEPORTED_TO_Y			"You moved the 3D text %d on the Y coordinate: %.4f"
#define LABEL_TELEPORTED_TO_Z			"You moved the 3D text %d on the Z coordinate: %.4f"
#define INCORRECT_LABEL_DD_ERROR		"Enter the valid draw distance!"
#define LABEL_DD_CHANGED				"You set the draw distance %.4f to the 3D text %d"
#define LABEL_VW_CHANGED				"You set the virtual world %d to the 3D text %d"
#define LABEL_LOS_ENABLED				"Visibility through the walls enabled"
#define LABEL_LOS_DISABLED				"Visibility through the walls disabled"
#define INCORRECT_COORDS_ERROR			"Enter the valid coordinates!"
#define TELEPORTED_TO_COORDS			"You moved to the coordinates %.4f, %.4f, %.4f"
#define INCORRECT_INTERIOR_ID_ERROR		"Enter the valid ID of the interior!"
#define TELEPORTED_TO_INTERIOR			"You moved to the interior id %d"
#define TELEPORTED_TO_VW				"You moved to the virtual world id %d"
#define INCORRECT_WEATHER_ID_ERROR		"Enter the valid ID of weather!"
#define WEATHER_ID_CHANGED				"Weather id %d has been set"
#define TIME_CHANGED					"Time %d:00 has been set"
#define INCORRECT_GRAVITY_ERROR			"Enter the valid value of the gravity!"
#define GRAVITY_CHANGED					"Gravity value %f has been set"
#define NOT_RCON_ADMIN_ERROR			"You are not RCon admin!"
#define MAP_MANAGEMENT					"Map management"
#define OK_BUTTON						"Ok"
#define CANCEL_BUTTON					"Cancel"
#define NEW_MAP							"New map"
#define OPEN_MAP						"Open map"
#define SAVE_MAP						"Save map"
#define SAVE_MAP_AS						"Save map as"
#define DELETE_MAP						"Delete map"
#define BACK_BUTTON						"Back"
#define NEW_MAP_WARNING					"Are you sure you want to create a new map?"
#define NEW_MAP_WARNING_2				"All objects on the old map will be deleted."
#define OPEN_MAP_WARNING				"Are you sure you want to open the map?"
#define ENTER_MAP_NAME_FOR_OPEN			"Enter the name of the map you want to open:"
#define ENTER_MAP_NAME_FOR_DELETE		"Enter the name of the map you want to delete:"
#define CREATE							"Create"
#define EDIT							"Edit"
#define TELEPORT_INTO					"Move to"
#define COPY_DEFAULT_OBJECTS			"Copy default map objects"
#define MAP_SETTINGS					"Map settings"
#define CREATE_OBJECT					"Create object"
#define CREATE_VEHICLE					"Create vehicle"
#define CREATE_ACTOR					"Create actor"
#define CREATE_PICKUP					"Create pickup"
#define CREATE_CP						"Create checkpoint"
#define CREATE_RCP						"Create race checkpoint"
#define CREATE_ICON						"Create map icon"
#define CREATE_ZONE						"Create gang zone"
#define CREATE_LABEL					"Create 3D text"
#define OBJECT							"Object"
#define VEHICLE							"Vehicle"
#define ACTOR							"Actor"
#define PICKUP							"Pickup"
#define CHECKPOINT						"Checkpoint"
#define RACECP							"Race checkpoint"
#define MAPICON							"Map icon"
#define GANGZONE						"Gang zone"
#define LABEL							"3D text"
#define EMPTY_MAP_ERROR					"Currently anything is not created!"
#define EDIT_OBJECT						"Edit object"
#define SELECT_OBJECT					"Select object"
#define TELEPORT_TO_OBJECT				"Move to object"
#define TELEPORT_OBJECT					"Move object to itself"
#define COPY_OBJECT						"Copy object"
#define DELETE_OBJECT					"Delete object"
#define EDIT_MATERIAL					"Textures replacement"
#define EDIT_MATERIAL_TEXT				"Textures replacement with text"
#define COORD_X							"The coordinates on the X axis"
#define COORD_Y							"The coordinates on the Y axis"
#define COORD_Z							"The coordinates on the Z axis"
#define ROT_X							"Rotation X axis"
#define ROT_Y							"Rotation Y axis"
#define ROT_Z							"Rotation Z axis"
#define LAYER							"Layer"
#define RESET_TEXTURE					"Reset texture"
#define OBJECT_TEXTURE					"Object texture:"
#define OBJECT_COLOR					"Object color:"
#define EDIT_TEXTURE					"Change texture"
#define EDIT_OBJECT_COLOR				"Change object color"
#define ENTER_LAYER_ID					"Enter the number of the layer (materialindex) from 0 to 15:"
#define RESET_TEXT						"Reset text"
#define OBJECT_TEXT						"Object text:"
#define OBJECT_TEXT_SIZE				"Text size:"
#define TEXT_FONT						"Font:"
#define FONT_SIZE						"Font size:"
#define BOLD							"Bold:"
#define FONT_COLOR						"Font color:"
#define BACK_COLOR						"Background color:"
#define ALIGNMENT						"Alignment:"
#define EDIT_TEXT						"Change text"
#define EDIT_OBJECT_TEXT_SIZE			"Change text size"
#define EDIT_FONT						"Change font"
#define EDIT_FONT_SIZE					"Change font size"
#define EDIT_OBJECT_TEXT_BOLD			"Set/Unset font bold"
#define ENABLE_BOLD						"Make text bold"
#define DISABLE_BOLD					"Remove the bold from the text"
#define EDIT_OBJECT_FONT_COLOR			"Change font color"
#define EDIT_OBJECT_BACK_COLOR			"Change background color"
#define EDIT_OBJECT_TEXT_ALIGNMENT		"Change alignment"
#define ALIGNMENT_LEFT					"Left"
#define ALIGNMENT_CENTER				"Center"
#define ALIGNMENT_RIGHT					"Right"
#define COORDS_NOW						"Coordinates now:"
#define ENTER_COORD_X					"Enter the X coordinate:"
#define ENTER_COORD_Y					"Enter the Y coordinate:"
#define ENTER_COORD_Z					"Enter the Z coordinate:"
#define ENTER_ROT_X						"Enter the X coordinate of the rotation:"
#define ENTER_ROT_Y						"Enter the Y coordinate of the rotation:"
#define ENTER_ROT_Z						"Enter the Z coordinate of the rotation:"
#define COORD_NOW						"Coordinate now:"
#define EDIT_VEHICLE					"Edit vehicle"
#define SELECT_VEHICLE					"Select vehicle"
#define TELEPORT_TO_VEHICLE				"Move to vehicle"
#define TELEPORT_VEHICLE				"Move vehicle to itself"
#define COPY_VEHICLE					"Copy vehicle"
#define DELETE_VEHICLE					"Delete vehicle"
#define REPAIR_VEHICLE					"Repair vehicle"
#define RESPAWN_TIME					"Respawn time"
#define COLOR_1							"Color 1"
#define COLOR_2							"Color 2"
#define ENTER_RESPAWN_TIME				"Enter the respawn time (ms), through which vehicle will appear:"
#define RESPAWN_TIME_NOW				"Time now: %d ms"
#define ENTER_COLOR_1					"Enter the color 1:"
#define ENTER_COLOR_2					"Enter the color 2:"
#define COLOR_NOW						"Color now:"
#define EDIT_ACTOR						"Edit actor"
#define SELECT_ACTOR					"Select actor"
#define TELEPORT_TO_ACTOR				"Move to actor"
#define TELEPORT_ACTOR					"Move actor to itself"
#define COPY_ACTOR						"Copy actor"
#define DELETE_ACTOR					"Delete actor"
#define EDIT_PICKUP						"Edit pickup"
#define SELECT_PICKUP					"Select pickup"
#define TELEPORT_TO_PICKUP				"Move to pickup"
#define TELEPORT_PICKUP					"Move pickup to itself"
#define COPY_PICKUP						"Copy pickup"
#define DELETE_PICKUP					"Delete pickup"
#define EDIT_PICKUP_TYPE				"Change pickup type"
#define EDIT_VW							"Virtual world"
#define ENTER_PICKUP_TYPE				"Enter the type of the pickup:"
#define TYPE_NOW						"Type now:"
#define ENTER_VW_ID						"Enter the ID of the virtual world:"
#define VW_NOW							"Virtual world now:"
#define EDIT_CHECKPOINT					"Edit checkpoint"
#define SELECT_CHECKPOINT				"Select checkpoint"
#define TELEPORT_TO_CHECKPOINT			"Move to checkpoint"
#define TELEPORT_CHECKPOINT				"Move checkpoint to itself"
#define DELETE_CHECKPOINT				"Delete checkpoint"
#define EDIT_SIZE						"Change size"
#define ENTER_SIZE						"Enter the size:"
#define SIZE_NOW						"Size now:"
#define EDIT_RACECP						"Edit race checkpoint"
#define SELECT_RACECP					"Select race checkpoint"
#define TELEPORT_TO_RACECP				"Move to race checkpoint"
#define TELEPORT_RACECP					"Move race checkpoint to itself"
#define DELETE_RACECP					"Delete race checkpoint"
#define EDIT_TYPE						"Change type"
#define COORD_NEXTX						"NextX coordinate"
#define COORD_NEXTY						"NextY coordinate"
#define COORD_NEXTZ						"NextZ coordinate"
#define EDIT_MAPICON					"Edit map icon"
#define SELECT_MAPICON					"Select map icon"
#define TELEPORT_TO_MAPICON				"Move to map icon"
#define TELEPORT_MAPICON				"Move map icon to itself"
#define COPY_MAPICON					"Copy map icon"
#define DELETE_MAPICON					"Delete map icon"
#define EDIT_COLOR						"Change color"
#define EDIT_STYLE						"Display style"
#define ENTER_MAPICON_COLOR				"Enter the color of the map icon (only for ID 0):"
#define MAPICON_STYLE_NOW				"Display style now:"
#define MAPICON_STYLE_LOCAL				"Show only near"
#define MAPICON_STYLE_GLOBAL			"Show always"
#define MAPICON_STYLE_LOCAL_CP			"Show only near (with the checkpoint)"
#define MAPICON_STYLE_GLOBAL_CP			"Show always (with the checkpoint)"
#define EDIT_GANGZONE					"Edit gang zone"
#define SELECT_ZONE						"Select gang zone"
#define TELEPORT_TO_ZONE				"Move to gang zone"
#define TELEPORT_ZONE					"Move gang zone to itself"
#define COPY_ZONE						"Copy gang zone"
#define DELETE_ZONE						"Delete gang zone"
#define COORD_MINX						"Min X coordinate"
#define COORD_MINY						"Min Y coordinate"
#define COORD_MAXX						"Max X coordinate"
#define COORD_MAXY						"Max Y coordinate"
#define ENTER_COORD_MINX				"Enter the min X coordinate:"
#define ENTER_COORD_MINY				"Enter the min Y coordinate:"
#define ENTER_COORD_MAXX				"Enter the max X coordinate:"
#define ENTER_COORD_MAXY				"Enter the max Y coordinate:"
#define ENTER_GANGZONE_COLOR			"Enter the color of the gang zone:"
#define EDIT_LABEL						"Edit 3D text"
#define SELECT_LABEL					"Select 3D text"
#define TELEPORT_TO_LABEL				"Move to 3D text"
#define TELEPORT_LABEL					"Move 3D text to itself"
#define COPY_LABEL						"Copy 3D text"
#define DELETE_LABEL					"Delete 3D text"
#define LABEL_DD						"Draw distance"
#define LABEL_LOS						"Visibility through walls"
#define LABEL_TEXT_NOW					"Text of the 3D text now:"
#define ENTER_LABEL_COLOR				"Enter the color of the 3D text:"
#define ENTER_LABEL_DD					"Enter the draw distance, on which you can see the 3D text:"
#define LABEL_DD_NOW					"Draw distance now:"
#define LABEL_LOS_NOW					"Visibility now:"
#define ENABLE_LABEL_LOS				"Enable visibility through walls"
#define DISABLE_LABEL_LOS				"Disable visibility through walls"
#define ENABLED							"enabled"
#define DISABLED						"disabled"
#define TELEPORT_TO_COORDS				"Move to the coordinates"
#define TELEPORT_TO_INT					"Move into the interior"
#define TELEPORT_TO_VW					"Move into the virtual world"
#define ENTER_COORDS					"Enter the coordinates (X, Y, Z):"
#define ENTER_INTERIOR					"Enter the interior:"
#define INTERIOR_NOW					"Interior now:"
#define EDIT_WEATHER					"Set the weather"
#define EDIT_WORLDTIME					"Set the time"
#define EDIT_GRAVITY					"Set the gravity"
#define ENTER_WEATHER_ID				"Enter the id of the weather:"
#define WEATHER_NOW						"Current weather:"
#define WORLDTIME_NOW					"Current time:"
#define ENTER_GRAVITY_VALUE				"Enter the value of the gravity:"
#define GRAVITY_NOW						"Current gravity:"
#define EDIT_LON_IN_MSG					"%s entered the editing mode"
#define EDIT_LOG_OUT_MSG				"%s left the editing mode"

#define DIALOG_CHOOSE_MAP				16384
#define DIALOG_NEW_MAP					16385
#define DIALOG_OPEN_MAP					16386
#define DIALOG_OPEN_MAP_WARN			16387
#define DIALOG_SAVE_MAP_AS				16388
#define DIALOG_DELETE_MAP				16389
#define DIALOG_MAIN						16390
#define DIALOG_CREATE					16391
#define DIALOG_CREATE_OBJECT			16392
#define DIALOG_CREATE_VEHICLE			16393
#define DIALOG_CREATE_ACTOR				16394
#define DIALOG_CREATE_PICKUP			16395
#define DIALOG_CREATE_RCP				16396
#define DIALOG_CREATE_ICON				16397
#define DIALOG_CREATE_LABEL				16398
#define DIALOG_EDIT						16399
#define DIALOG_EDIT_OBJECT				16400
#define DIALOG_EDIT_OBJECT_TXD_MAIN		16401
#define DIALOG_EDIT_OBJECT_TXD			16402
#define DIALOG_EDIT_OBJECT_TXD_ID		16403
#define DIALOG_EDIT_OBJECT_TXD_COLOR	16404
#define DIALOG_EDIT_OBJECT_TXT_MAIN		16405
#define DIALOG_EDIT_OBJECT_TXT			16406
#define DIALOG_EDIT_OBJECT_TXT_TEXT		16407
#define DIALOG_EDIT_OBJECT_TXT_SIZE		16408
#define DIALOG_EDIT_OBJECT_TXT_FONT		16409
#define DIALOG_EDIT_OBJECT_TXT_FSIZE	16410
#define DIALOG_EDIT_OBJECT_TXT_BOLD		16411
#define DIALOG_EDIT_OBJECT_TXT_FCOLOR	16412
#define DIALOG_EDIT_OBJECT_TXT_BCOLOR	16413
#define DIALOG_EDIT_OBJECT_TXT_ALIGN	16414
#define DIALOG_EDIT_OBJECT_X			16415
#define DIALOG_EDIT_OBJECT_Y			16416
#define DIALOG_EDIT_OBJECT_Z			16417
#define DIALOG_EDIT_OBJECT_RX			16418
#define DIALOG_EDIT_OBJECT_RY			16419
#define DIALOG_EDIT_OBJECT_RZ			16420
#define DIALOG_EDIT_VEHICLE				16421
#define DIALOG_EDIT_VEHICLE_X			16422
#define DIALOG_EDIT_VEHICLE_Y			16423
#define DIALOG_EDIT_VEHICLE_Z			16424
#define DIALOG_EDIT_VEHICLE_RZ			16425
#define DIALOG_EDIT_VEHICLE_DELAY		16426
#define DIALOG_EDIT_VEHICLE_COLOR_1		16427
#define DIALOG_EDIT_VEHICLE_COLOR_2		16428
#define DIALOG_EDIT_ACTOR				16429
#define DIALOG_EDIT_ACTOR_X				16430
#define DIALOG_EDIT_ACTOR_Y				16431
#define DIALOG_EDIT_ACTOR_Z				16432
#define DIALOG_EDIT_ACTOR_RZ			16433
#define DIALOG_EDIT_PICKUP				16434
#define DIALOG_EDIT_PICKUP_TYPE			16435
#define DIALOG_EDIT_PICKUP_X			16436
#define DIALOG_EDIT_PICKUP_Y			16437
#define DIALOG_EDIT_PICKUP_Z			16438
#define DIALOG_EDIT_PICKUP_VW			16439
#define DIALOG_EDIT_CP					16440
#define DIALOG_EDIT_CP_X				16441
#define DIALOG_EDIT_CP_Y				16442
#define DIALOG_EDIT_CP_SIZE				16443
#define DIALOG_EDIT_RCP					16444
#define DIALOG_EDIT_RCP_TYPE			16445
#define DIALOG_EDIT_RCP_X				16446
#define DIALOG_EDIT_RCP_Y				16447
#define DIALOG_EDIT_RCP_Z				16448
#define DIALOG_EDIT_RCP_NEXTX			16449
#define DIALOG_EDIT_RCP_NEXTY			16450
#define DIALOG_EDIT_RCP_NEXTZ			16451
#define DIALOG_EDIT_RCP_SIZE			16452
#define DIALOG_EDIT_ICON				16453
#define DIALOG_EDIT_ICON_X				16454
#define DIALOG_EDIT_ICON_Y				16455
#define DIALOG_EDIT_ICON_Z				16456
#define DIALOG_EDIT_ICON_COLOR			16457
#define DIALOG_EDIT_ICON_STYLE			16458
#define DIALOG_EDIT_ZONE				16459
#define DIALOG_EDIT_ZONE_MINX			16460
#define DIALOG_EDIT_ZONE_MINY			16461
#define DIALOG_EDIT_ZONE_MAXX			16462
#define DIALOG_EDIT_ZONE_MAXY			16463
#define DIALOG_EDIT_ZONE_COLOR			16464
#define DIALOG_EDIT_LABEL				16465
#define DIALOG_EDIT_LABEL_TEXT			16466
#define DIALOG_EDIT_LABEL_COLOR			16467
#define DIALOG_EDIT_LABEL_X				16468
#define DIALOG_EDIT_LABEL_Y				16469
#define DIALOG_EDIT_LABEL_Z				16470
#define DIALOG_EDIT_LABEL_DD			16471
#define DIALOG_EDIT_LABEL_VW			16472
#define DIALOG_EDIT_LABEL_LOS			16473
#define DIALOG_TELEPORT_INTO			16474
#define DIALOG_TELEPORT_IN_POS			16475
#define DIALOG_TELEPORT_IN_INT			16476
#define DIALOG_TELEPORT_IN_VW			16477
#define DIALOG_SETTINGS					16478
#define DIALOG_SETTINGS_WEATHER			16479
#define DIALOG_SETTINGS_TIME			16480
#define DIALOG_SETTINGS_GRAVITY			16481

#define strcpy(%0,%1,%2) strcat((%0[0] = '\0', %0), %1, %2)
#define	dcmd2(%1,%2,%3) if(!strcmp((%3)[1], #%1, true, (%2)) && ((((%3)[(%2) + 1] == '\0') && (cmd_%1(playerid, ""))) || (((%3)[(%2) + 1] == ' ') && (cmd_%1(playerid, (%3)[(%2) + 2]))))) return 1
#define fpublic%0(%1) forward %0(%1); public %0(%1)

#if !defined GetGravity
	native GetGravity();
#endif

enum objEnum
{
	oID,
	oName[MAX_OBJECT_NAME_LENGTH]
}

enum txdEnum
{
	tModel,
	tTXDName[MAX_TXD_NAME_LENGTH],
	tTextureName[MAX_TEXTURE_NAME_LENGTH]
}

static const ObjectsArray[][objEnum] =
{
	{320, "airtrain_vlo"}, {321, "gun_dildo1"}, {322, "gun_dildo2"}, {323, "gun_vibe1"},
	{324, "gun_vibe2"}, {325, "flowera"}, {326, "gun_cane"}, {327, "gun_boxwee"},
	{328, "gun_boxbig"}, {330, "cellphone"}, {331, "brassknuckle"}, {333, "golfclub"},
	{334, "nitestick"}, {335, "knifecur"}, {336, "bat"}, {337, "shovel"},
	{338, "poolcue"}, {339, "katana"}, {341, "chnsaw"}, {342, "grenade"},
	{343, "teargas"}, {344, "molotov"}, {345, "missile"}, {346, "colt45"},
	{347, "silenced"}, {348, "desert_eagle"}, {349, "chromegun"}, {350, "sawnoff"},
	{351, "shotgspa"}, {352, "micro_uzi"}, {353, "mp5lng"}, {354, "flare"},
	{355, "ak47"}, {356, "m4"}, {357, "cuntgun"}, {358, "sniper"},
	{359, "rocketla"}, {360, "heatseek"}, {361, "flame"}, {362, "minigun"},
	{363, "satchel"}, {364, "bomb"}, {365, "spraycan"}, {366, "fire_ex"},
	{367, "camera"}, {368, "nvgoggles"}, {369, "irgoggles"}, {370, "jetpack"},
	{371, "gun_para"}, {372, "tec9"}, {373, "armour"}, {615, "veg_tree3"},
	{616, "veg_treea1"}, {617, "veg_treeb1"}, {618, "veg_treea3"}, {619, "veg_palwee03"},
	{620, "veg_palm04"}, {621, "veg_palm02"}, {622, "veg_palm03"}, {623, "veg_palwee01"},
	{624, "veg_palwee02"}, {625, "veg_palmkb1"}, {626, "veg_palmkb2"}, {627, "veg_palmkb3"},
	{628, "veg_palmkb4"}, {629, "veg_palmkb5"}, {630, "veg_palmkb8"}, {631, "veg_palmkb9"},
	{632, "veg_palmkb7"}, {633, "veg_palmkb10"}, {634, "veg_palmkbb11"}, {635, "veg_fern_balcny_kb1"},
	{636, "veg_fern_balcny_kb2"}, {637, "kb_planterbox"}, {638, "kb_planter+bush"}, {639, "veg_ivy_balcny_kb3"},
	{640, "kb_planter+bush2"}, {641, "veg_palmkb13"}, {642, "kb_canopy_test"}, {643, "kb_chr_tbl_test"},
	{644, "pot_02"}, {645, "veg_palmbig14"}, {646, "veg_palmkb14"}, {647, "new_bushsm"},
	{648, "veg_palm01"}, {649, "sjmpalm"}, {650, "sjmcacti2"}, {651, "sjmcacti1"},
	{652, "sjmpalmbig"}, {653, "sjmcacti03"}, {654, "pinetree08"}, {655, "pinetree06"},
	{656, "pinetree05"}, {657, "pinetree02"}, {658, "pinetree04"}, {659, "pinetree01"},
	{660, "pinetree03"}, {661, "pinetree07"}, {664, "firtree2"}, {669, "sm_veg_tree4"},
	{670, "sm_firtallded"}, {671, "sm_bushytree"}, {672, "sm_veg_tree5"}, {673, "sm_bevhiltree"},
	{674, "sm_des_josh_lrg1"}, {675, "josh_ball"}, {676, "sm_des_josh_sml1"}, {677, "sm_des_agave1"},
	{678, "sm_des_agave2"}, {679, "sm_des_cact_bsh"}, {680, "sm_des_josh_lrg2"}, {681, "sm_des_josh_sm2"},
	{682, "sm_des_cactflr"}, {683, "sm_fir_group"}, {684, "sm_fir_log02"}, {685, "sm_fir_scabby"},
	{686, "sm_fir_dead"}, {687, "sm_fir_"}, {688, "sm_fir_scabg"}, {689, "sm_fir_copse1"},
	{690, "sm_fir_copse2"}, {691, "sm_veg_tree4_big"}, {692, "sm_des_bush1"}, {693, "sm_redwood_"},
	{694, "sm_redwoodgrp"}, {695, "sm_fir_scabtg"}, {696, "sm_fir_scabt"}, {697, "sm_fir_tall"},
	{698, "sm_firtbshg"}, {700, "sm_veg_tree6"}, {701, "sm_tumblewd48p"}, {702, "sm_tumbleweed"},
	{703, "sm_veg_tree7_big"}, {704, "bg_fir_dead"}, {705, "sm_veg_tree7vbig"}, {706, "sm_vegvbbig"},
	{707, "sm_bushvbig"}, {708, "sm_veg_tree4_vbig"}, {709, "sm_vegvbbigbrn"}, {710, "vgs_palm01"},
	{711, "vgs_palm02"}, {712, "vgs_palm03"}, {713, "veg_bevtree1"}, {714, "veg_bevtree2"},
	{715, "veg_bevtree3"}, {716, "sjmpalmbigpv"}, {717, "sm_bevhiltreepv"}, {718, "vgs_palm04"},
	{719, "veg_largefurs07"}, {720, "veg_largefurs01"}, {721, "veg_largefurs02"}, {722, "veg_largefurs03"},
	{723, "veg_largefurs04"}, {724, "veg_largefurs05"}, {725, "veg_largefurs06"}, {726, "tree_hipoly19"},
	{727, "tree_hipoly04"}, {728, "tree_hipoly06"}, {729, "tree_hipoly07"}, {730, "tree_hipoly08"},
	{731, "tree_hipoly09"}, {732, "tree_hipoly10"}, {733, "tree_hipoly11"}, {734, "tree_hipoly14"},
	{735, "tree_hipoly09b"}, {736, "ceasertree01_lvs"}, {737, "aw_streettree3"}, {738, "aw_streettree2"},
	{739, "sjmpalmtall"}, {740, "vgs_palmvtall"}, {741, "pot_01"}, {742, "pot_03"},
	{743, "kb_pot_1"}, {744, "sm_scrub_rock4"}, {745, "sm_scrub_rock5"}, {746, "sm_scrub_rock2"},
	{747, "sm_scrub_rock3"}, {748, "sm_scrb_grp1"}, {749, "sm_scrb_column3"}, {750, "sm_scrb_column2"},
	{751, "sm_scrb_column1"}, {752, "sm_cunt_rock1"}, {753, "sm_descactiigrpb"}, {754, "sm_des_cactiigrp"},
	{755, "sm_des_pcklypr3"}, {756, "sm_des_pcklypr2"}, {757, "sm_des_pcklypr1"}, {758, "sm_scrub_rock6"},
	{759, "sm_bush_large_1"}, {760, "sm_bush_small_1"}, {761, "sm_drybrush_sm1"}, {762, "new_bushtest"},
	{763, "Ash1_hi"}, {764, "Cedar3_hi"}, {765, "Cedar2_hi"}, {766, "Cedar1_hi"},
	{767, "Elmtreegrn_hi"}, {768, "Elmtreegrn2_hi"}, {769, "Locust_hi"}, {770, "Pinebg_hi"},
	{771, "sprucetree_hi"}, {772, "Elmred_hi"}, {773, "Elmdead_hi"}, {774, "Elmsparse_hi"},
	{775, "Elmwee_hi"}, {776, "Hazelweetree_hi"}, {777, "Hazeltall_hi"}, {778, "Elmred_hism"},
	{779, "Pinebg_hism"}, {780, "Elmsparse_hism"}, {781, "Elmwee_hism"}, {782, "Elmtreegrn_hism"},
	{789, "hashburytree4sfs"}, {790, "sm_fir_tallgroup"}, {791, "vbg_fir_copse"}, {792, "aw_streettree1"},
	{800, "genVEG_bush07"}, {801, "genVEG_bush01"}, {802, "genVEG_bush08"}, {803, "genVEG_bush09"},
	{804, "genVEG_bush10"}, {805, "genVEG_bush11"}, {806, "genVEG_tallgrass"}, {807, "p_rubble"},
	{808, "genVEG_bush12"}, {809, "genVEG_bush13"}, {810, "genVEG_bush14"}, {811, "genVEG_bush15"},
	{812, "genVEG_bush16"}, {813, "genVEG_bush17"}, {814, "genVEG_bush18"}, {815, "genVEG_bush19"},
	{816, "p_rubble03"}, {817, "veg_Pflowers01"}, {818, "genVEG_tallgrass02"}, {819, "genVEG_tallgrass03"},
	{820, "genVEG_tallgrass04"}, {821, "genVEG_tallgrass05"}, {822, "genVEG_tallgrass06"}, {823, "genVEG_tallgrass07"},
	{824, "genVEG_tallgrass08"}, {825, "genVEG_bushy"}, {826, "genVEG_tallgrass10"}, {827, "genVEG_tallgrass11"},
	{828, "p_rubble2"}, {829, "DEAD_TREE_3"}, {830, "DEAD_TREE_2"}, {831, "DEAD_TREE_5"},
	{832, "DEAD_TREE_4"}, {833, "DEAD_TREE_6"}, {834, "DEAD_TREE_7"}, {835, "DEAD_TREE_8"},
	{836, "DEAD_TREE_10"}, {837, "DEAD_TREE_1"}, {838, "DEAD_TREE_9"}, {839, "DEAD_TREE_11"},
	{840, "DEAD_TREE_12"}, {841, "DEAD_TREE_13"}, {842, "DEAD_TREE_14"}, {843, "DEAD_TREE_15"},
	{844, "DEAD_TREE_16"}, {845, "DEAD_TREE_17"}, {846, "DEAD_TREE_18"}, {847, "DEAD_TREE_19"},
	{848, "DEAD_TREE_20"}, {849, "CJ_urb_rub_3"}, {850, "CJ_urb_rub_1"}, {851, "CJ_urb_rub_2"},
	{852, "CJ_urb_rub_4"}, {853, "CJ_urb_rub_5"}, {854, "CJ_urb_rub_3b"}, {855, "genVEG_tallgrass01"},
	{856, "genVEG_tallgrass12"}, {857, "procweegrs"}, {858, "sand_josh2"}, {859, "sand_plant04"},
	{860, "sand_plant01"}, {861, "sand_plant02"}, {862, "sand_plant05"}, {863, "sand_plant03"},
	{864, "sand_combush1"}, {865, "sand_combush02"}, {866, "sand_combush03"}, {867, "p_rubble04col"},
	{868, "p_rubble05col"}, {869, "veg_Pflowerswee"}, {870, "veg_Pflowers2wee"}, {871, "veg_procfpatchwee"},
	{872, "gen_tallgrsnew"}, {873, "veg_procfpatch"}, {874, "veg_procgrasspatch"}, {875, "veg_procfpatch01"},
	{876, "veg_Pflowers03"}, {877, "veg_Pflowers04"}, {878, "veg_Pflowers02"}, {879, "p_rubble04bcol"},
	{880, "p_rubble0bcol"}, {881, "sm_fir_scabg_PO"}, {882, "Ash_PO"}, {883, "Cedar3_PO"},
	{884, "Cedar2_PO"}, {885, "Cedar1_PO"}, {886, "Elmtreegrn_PO"}, {887, "Elmtreegrn2_PO"},
	{888, "Locust_PO"}, {889, "Pinebg_PO"}, {890, "Elmred_PO"}, {891, "Elmdead_PO"},
	{892, "Hazelweetree_PO"}, {893, "Elmredsm_PO"}, {894, "Elmsparsesm_PO"}, {895, "Elmweesm_PO"},
	{896, "searock06"}, {897, "searock01"}, {898, "searock02"}, {899, "searock03"},
	{900, "searock04"}, {901, "searock05"}, {902, "Starfish"}, {903, "seaweed"},
	{904, "sand_josh1"}, {905, "rockbrkq"}, {906, "p_rubblebig"}, {910, "BUST_CABINET_4"},
	{911, "BUST_CABINET_1"}, {912, "BUST_CABINET_2"}, {913, "BUST_CABINET_3"}, {914, "GRILL"},
	{915, "AIRCON_FAN"}, {916, "FRUITCRATE2"}, {917, "FRUITCRATE1"}, {918, "CJ_FLAME_Drum"},
	{919, "AIRCON"}, {920, "Y_GENERATOR"}, {921, "CJ_IND_LIGHT"}, {922, "Packing_carates1"},
	{923, "Packing_carates2"}, {924, "FRUITCRATE3"}, {925, "RACK2"}, {926, "RUBBISH_BOX2"},
	{927, "Piping_Detail"}, {928, "RUBBISH_BOX1"}, {929, "GENERATOR"}, {930, "O2_Bottles"},
	{931, "RACK3"}, {932, "H_WHEELCHAIR"}, {933, "CJ_CABLEROLL"}, {934, "GENERATOR_BIG"},
	{935, "CJ_Drum"}, {936, "CJ_DF_WORKTOP_2"}, {937, "CJ_DF_WORKTOP"}, {938, "CJ_DF_LIGHT"},
	{939, "CJ_DF_UNIT"}, {940, "CJ_DF_LIGHT_2"}, {941, "CJ_DF_WORKTOP_3"}, {942, "CJ_DF_UNIT_2"},
	{943, "GENERATOR_LOW"}, {944, "Packing_carates04"}, {945, "WS_CF_LAMPS"}, {946, "bskball_lax"},
	{947, "bskballhub_lax01"}, {948, "Plant_Pot_10"}, {949, "Plant_Pot_4"}, {950, "Plant_Pot_12"},
	{951, "CJ_VIEW_TELE2"}, {952, "GENERATOR_BIG_d"}, {953, "CJ_OYSTER"}, {954, "cj_horse_Shoe"},
	{955, "CJ_EXT_SPRUNK"}, {956, "CJ_EXT_CANDY"}, {957, "CJ_LIGHT_FIT_EXT"}, {958, "CJ_CHIP_MAKER"},
	{959, "CJ_CHIP_MAKER_BITS"}, {960, "CJ_ARM_CRATE"}, {961, "CJ_ARM_CRATE_top"}, {962, "CJ_T_TICKET_PED"},
	{963, "CJ_T_TICKET"}, {964, "CJ_METAL_CRATE"}, {966, "bar_gatebar01"}, {967, "bar_gatebox01"},
	{968, "barrierturn"}, {969, "Electricgate"}, {970, "fencesmallb"}, {971, "subwaygate"},
	{972, "tunnelentrance"}, {973, "sub_roadbarrier"}, {974, "tall_fence"}, {975, "Columbiangate"},
	{976, "phils_compnd_gate"}, {977, "newtowerdoor1"}, {978, "sub_roadright"}, {979, "sub_roadleft"},
	{980, "airportgate"}, {981, "helix_barrier"}, {982, "fenceshit"}, {983, "fenceshit3"},
	{984, "fenceshit2"}, {985, "gate_autoR"}, {986, "gate_autoL"}, {987, "elecfence_BAR"},
	{988, "ws_apgate"}, {989, "ac_apgate"}, {990, "bar_barrier12"}, {991, "bar_barriergate1"},
	{992, "bar_barrier10b"}, {993, "bar_barrier10"}, {994, "lhouse_barrier2"}, {995, "bar_barrier16"},
	{996, "lhouse_barrier1"}, {997, "lhouse_barrier3"}, {998, "Gdyn_barrier17"}, {1000, "spl_b_mar_m"},
	{1001, "spl_b_bab_m"}, {1002, "spl_b_bar_m"}, {1003, "spl_b_mab_m"}, {1004, "bnt_b_sc_m"},
	{1005, "bnt_b_sc_l"}, {1006, "rf_b_sc_r"}, {1007, "wg_l_b_ssk"}, {1008, "nto_b_l"},
	{1009, "nto_b_s"}, {1010, "nto_b_tw"}, {1011, "bnt_b_sc_p_m"}, {1012, "bnt_b_sc_p_l"},
	{1013, "lgt_b_rspt"}, {1014, "spl_b_bar_l"}, {1015, "spl_b_bbr_l"}, {1016, "spl_b_bbr_m"},
	{1017, "wg_r_b_ssk"}, {1018, "exh_b_ts"}, {1019, "exh_b_t"}, {1020, "exh_b_l"},
	{1021, "exh_b_m"}, {1022, "exh_b_s"}, {1023, "spl_b_bbb_m"}, {1024, "lgt_b_sspt"},
	{1025, "wheel_or1"}, {1026, "wg_l_a_s"}, {1027, "wg_r_a_s"}, {1028, "exh_a_s"},
	{1029, "exh_c_s"}, {1030, "wg_r_c_s"}, {1031, "wg_l_c_s"}, {1032, "rf_a_s"},
	{1033, "rf_c_s"}, {1034, "exh_a_l"}, {1035, "rf_c_l"}, {1036, "wg_l_a_l"},
	{1037, "exh_c_l"}, {1038, "rf_a_l"}, {1039, "wg_l_c_l"}, {1040, "wg_r_a_l"},
	{1041, "wg_r_c_l"}, {1042, "wg_l_lr_br1"}, {1043, "exh_lr_br2"}, {1044, "exh_lr_br1"},
	{1045, "exh_c_f"}, {1046, "exh_a_f"}, {1047, "wg_l_a_f"}, {1048, "wg_l_c_f"},
	{1049, "spl_a_f_r"}, {1050, "spl_c_f_r"}, {1051, "wg_r_a_f"}, {1052, "wg_r_c_f"},
	{1053, "rf_c_f"}, {1054, "rf_a_f"}, {1055, "rf_a_st"}, {1056, "wg_l_a_st"},
	{1057, "wg_l_c_st"}, {1058, "spl_a_st_r"}, {1059, "exh_c_st"}, {1060, "spl_c_st_r"},
	{1061, "rf_c_st"}, {1062, "wg_r_a_st"}, {1063, "wg_r_c_st"}, {1064, "exh_a_st"},
	{1065, "exh_a_j"}, {1066, "exh_c_j"}, {1067, "rf_a_j"}, {1068, "rf_c_j"},
	{1069, "wg_l_a_j"}, {1070, "wg_l_c_j"}, {1071, "wg_r_a_j"}, {1072, "wg_r_c_j"},
	{1073, "wheel_sr6"}, {1074, "wheel_sr3"}, {1075, "wheel_sr2"}, {1076, "wheel_lr4"},
	{1077, "wheel_lr1"}, {1078, "wheel_lr3"}, {1079, "wheel_sr1"}, {1080, "wheel_sr5"},
	{1081, "wheel_sr4"}, {1082, "wheel_gn1"}, {1083, "wheel_lr2"}, {1084, "wheel_lr5"},
	{1085, "wheel_gn2"}, {1086, "stereo"}, {1087, "hydralics"}, {1088, "rf_a_u"},
	{1089, "exh_c_u"}, {1090, "wg_l_a_u"}, {1091, "rf_c_u"}, {1092, "exh_a_u"},
	{1093, "wg_l_c_u"}, {1094, "wg_r_a_u"}, {1095, "wg_r_c_u"}, {1096, "wheel_gn3"},
	{1097, "wheel_gn4"}, {1098, "wheel_gn5"}, {1099, "wg_r_lr_br1"}, {1100, "misc_c_lr_rem1"},
	{1101, "wg_r_lr_rem1"}, {1102, "wg_r_lr_sv"}, {1103, "rf_lr_bl2"}, {1104, "exh_lr_bl1"},
	{1105, "exh_lr_bl2"}, {1106, "wg_l_lr_rem2"}, {1107, "wg_r_lr_bl1"}, {1108, "wg_l_lr_bl1"},
	{1109, "bbb_lr_slv1"}, {1110, "bbb_lr_slv2"}, {1111, "bnt_lr_slv1"}, {1112, "bnt_lr_slv2"},
	{1113, "exh_lr_slv1"}, {1114, "exh_lr_slv2"}, {1115, "fbb_lr_slv1"}, {1116, "fbb_lr_slv2"},
	{1117, "fbmp_lr_slv1"}, {1118, "wg_l_lr_slv1"}, {1119, "wg_l_lr_slv2"}, {1120, "wg_r_lr_slv1"},
	{1121, "wg_r_lr_slv2"}, {1122, "wg_l_lr_rem1"}, {1123, "misc_c_lr_rem2"}, {1124, "wg_r_lr_rem2"},
	{1125, "misc_c_lr_rem3"}, {1126, "exh_lr_rem1"}, {1127, "exh_lr_rem2"}, {1128, "rf_lr_bl1"},
	{1129, "exh_lr_sv1"}, {1130, "rf_lr_sv1"}, {1131, "rf_lr_sv2"}, {1132, "exh_lr_sv2"},
	{1133, "wg_l_lr_sv"}, {1134, "wg_l_lr_t1"}, {1135, "exh_lr_t2"}, {1136, "exh_lr_t1"},
	{1137, "wg_r_lr_t1"}, {1138, "spl_a_s_b"}, {1139, "spl_c_s_b"}, {1140, "rbmp_c_s"},
	{1141, "rbmp_a_s"}, {1142, "bntr_b_ov"}, {1143, "bntl_b_ov"}, {1144, "bntr_b_sq"},
	{1145, "bntl_b_sq"}, {1146, "spl_c_l_b"}, {1147, "spl_a_l_b"}, {1148, "rbmp_c_l"},
	{1149, "rbmp_a_l"}, {1150, "rbmp_a_f"}, {1151, "rbmp_c_f"}, {1152, "fbmp_c_f"},
	{1153, "fbmp_a_f"}, {1154, "rbmp_a_st"}, {1155, "fbmp_a_st"}, {1156, "rbmp_c_st"},
	{1157, "fbmp_c_st"}, {1158, "spl_c_j_b"}, {1159, "rbmp_a_j"}, {1160, "fbmp_a_j"},
	{1161, "rbmp_c_j"}, {1162, "spl_a_j_b"}, {1163, "spl_c_u_b"}, {1164, "spl_a_u_b"},
	{1165, "fbmp_c_u"}, {1166, "fbmp_a_u"}, {1167, "rbmp_c_u"}, {1168, "rbmp_a_u"},
	{1169, "fbmp_a_s"}, {1170, "fbmp_c_s"}, {1171, "fbmp_a_l"}, {1172, "fbmp_c_l"},
	{1173, "fbmp_c_j"}, {1174, "fbmp_lr_br1"}, {1175, "fbmp_lr_br2"}, {1176, "rbmp_lr_br1"},
	{1177, "rbmp_lr_br2"}, {1178, "rbmp_lr_rem2"}, {1179, "fbmp_lr_rem1"}, {1180, "rbmp_lr_rem1"},
	{1181, "fbmp_lr_bl2"}, {1182, "fbmp_lr_bl1"}, {1183, "rbmp_lr_bl2"}, {1184, "rbmp_lr_bl1"},
	{1185, "fbmp_lr_rem2"}, {1186, "rbmp_lr_sv2"}, {1187, "rbmp_lr_sv1"}, {1188, "fbmp_lr_sv2"},
	{1189, "fbmp_lr_sv1"}, {1190, "fbmp_lr_t2"}, {1191, "fbmp_lr_t1"}, {1192, "rbmp_lr_t1"},
	{1193, "rbmp_lr_t2"}, {1207, "tiny_rock"}, {1208, "washer"}, {1209, "vendmach"},
	{1210, "briefcase"}, {1211, "fire_hydrant"}, {1212, "Money"}, {1213, "mine"},
	{1214, "bollard"}, {1215, "bollardlight"}, {1216, "phonebooth1"}, {1217, "barrel2"},
	{1218, "barrel1"}, {1219, "palette"}, {1220, "cardboardbox2"}, {1221, "cardboardbox4"},
	{1222, "barrel3"}, {1223, "lampost_coast"}, {1224, "woodenbox"}, {1225, "barrel4"},
	{1226, "lamppost3"}, {1227, "dump1"}, {1228, "roadworkbarrier1"}, {1229, "bussign1"},
	{1230, "cardboardbox"}, {1231, "Streetlamp2"}, {1232, "Streetlamp1"}, {1233, "noparkingsign1"},
	{1234, "phonesign"}, {1235, "wastebin"}, {1236, "rcyclbank01"}, {1237, "strtbarrier01"},
	{1238, "trafficcone"}, {1239, "info"}, {1240, "health"}, {1241, "adrenaline"},
	{1242, "bodyarmour"}, {1243, "bouy"}, {1244, "petrolpump"}, {1245, "newramp"},
	{1246, "line"}, {1247, "bribe"}, {1248, "bonus"}, {1249, "faketarget"},
	{1250, "smashbarpost"}, {1251, "smashbar"}, {1252, "barrelexpos"}, {1253, "camerapickup"},
	{1254, "killfrenzy"}, {1255, "lounger"}, {1256, "Stonebench1"}, {1257, "bustopm"},
	{1258, "Mpostbox1"}, {1259, "BillBd1"}, {1260, "BillBd3"}, {1262, "MTraffic4"},
	{1263, "MTraffic3"}, {1264, "BlackBag1"}, {1265, "BlackBag2"}, {1267, "BillBd2"},
	{1269, "parkingmeter"}, {1270, "parkingmeterg"}, {1271, "gunbox"}, {1272, "property_locked"},
	{1273, "property_fsale"}, {1274, "bigdollar"}, {1275, "clothesp"}, {1276, "package1"},
	{1277, "pickupsave"}, {1278, "sub_floodlite"}, {1279, "craigpackage"}, {1280, "parkbench1"},
	{1281, "parktable1"}, {1282, "Barrierm"}, {1283, "MTraffic1"}, {1284, "MTraffic2"},
	{1285, "newstandnew5"}, {1286, "newstandnew4"}, {1287, "newstandnew3"}, {1288, "newstandnew2"},
	{1289, "newstandnew1"}, {1290, "lamppost2"}, {1291, "postbox1"}, {1292, "postbox1_d"},
	{1293, "papermachn01"}, {1294, "mlamppost"}, {1295, "doublestreetlght1"}, {1296, "doublestreetlght1_d"},
	{1297, "lamppost1"}, {1298, "lamppost1_d"}, {1299, "smashboxpile"}, {1300, "bin1"},
	{1301, "heli_magnet"}, {1302, "vendmachfd"}, {1303, "dyn_quarryrock03"}, {1304, "dyn_quarryrock02"},
	{1305, "dyn_quarryrock01"}, {1306, "tlgraphpolegen"}, {1307, "telgrphpoleall"}, {1308, "telgrphpole02"},
	{1309, "BigBillBrd"}, {1310, "pikupparachute"}, {1311, "gen_roadsign1"}, {1312, "gen_roadsign2"},
	{1313, "killfrenzy2plyr"}, {1314, "twoplayer"}, {1315, "trafficlight1"}, {1316, "hoop"},
	{1317, "Cylinder"}, {1318, "arrow"}, {1319, "ws_ref_bollard"}, {1320, "ws_roadwarning_05"},
	{1321, "ws_roadwarning_01"}, {1322, "ws_roadwarning_02"}, {1323, "ws_roadwarning_03"}, {1324, "ws_roadwarning_04"},
	{1327, "junk_tyre"}, {1328, "BinNt10_LA"}, {1329, "BinNt13_LA"}, {1330, "BinNt14_LA"},
	{1331, "BinNt01_LA"}, {1332, "BinNt02_LA"}, {1333, "BinNt03_LA"}, {1334, "BinNt04_LA"},
	{1335, "BinNt05_LA"}, {1336, "BinNt06_LA"}, {1337, "BinNt07_LA"}, {1338, "BinNt08_LA"},
	{1339, "BinNt09_LA"}, {1340, "chillidogcart"}, {1341, "icescart_prop"}, {1342, "noodlecart_prop"},
	{1343, "CJ_Dumpster3"}, {1344, "CJ_Dumpster2"}, {1345, "CJ_Dumpster"}, {1346, "CJ_PHONE_KIOSK2"},
	{1347, "CJ_WASTEBIN"}, {1348, "CJ_O2Tanks"}, {1349, "CJ_SHTROLLY"}, {1350, "CJ_TRAFFIC_LIGHT4"},
	{1351, "CJ_TRAFFIC_LIGHT5"}, {1352, "CJ_TRAFFIC_LIGHT3"}, {1353, "CJ_AIRCON"}, {1354, "CJ_AIRCON_FAN"},
	{1355, "CJ_FRUITCRATE1"}, {1356, "CJ_FRUITCRATE2"}, {1357, "CJ_FRUITCRATE3"}, {1358, "CJ_SKIP_Rubbish"},
	{1359, "CJ_BIN1"}, {1360, "CJ_BUSH_PROP3"}, {1361, "CJ_BUSH_PROP2"}, {1362, "CJ_FIREBIN_(L0)"},
	{1363, "CJ_PHONE_KIOSK"}, {1364, "CJ_BUSH_PROP"}, {1365, "CJ_BIG_SKIP1"}, {1366, "CJ_FIREHYDRANT"},
	{1367, "CJ_POSTBOX"}, {1368, "CJ_BLOCKER_BENCH"}, {1369, "CJ_WHEELCHAIR1"}, {1370, "CJ_FLAME_Drum_(F)"},
	{1371, "CJ_HIPPO_BIN"}, {1372, "CJ_Dump2_LOW"}, {1373, "traincross1"}, {1374, "traincross2"},
	{1375, "tramstop_SF"}, {1376, "ContainerCrane_03"}, {1377, "ContainerCrane_01"}, {1378, "ContainerCrane_04"},
	{1379, "MagnoCrane_02"}, {1380, "MagnoCrane_01"}, {1381, "MagnoCrane_04"}, {1382, "MagnoCrane_03"},
	{1383, "TwrCrane_M_04"}, {1384, "TwrCrane_M_01"}, {1385, "TwrCrane_M_02"}, {1386, "ContainerCrane_02"},
	{1387, "TwrCrane_M_03"}, {1388, "TwrCrane_S_04"}, {1389, "TwrCrane_S_01"}, {1390, "TwrCrane_S_02"},
	{1391, "TwrCrane_S_03"}, {1392, "TwrCrane_L_04"}, {1393, "TwrCrane_L_01"}, {1394, "TwrCrane_L_02"},
	{1395, "TwrCrane_L_03"}, {1407, "DYN_F_R_WOOD_1"}, {1408, "DYN_F_WOOD_2"}, {1409, "CJ_Dump1_LOW"},
	{1410, "DYN_F_R_WOOD_1b"}, {1411, "DYN_MESH_1"}, {1412, "DYN_MESH_2"}, {1413, "DYN_MESH_3"},
	{1414, "DYN_COR_SHEET"}, {1415, "DYN_DUMPSTER"}, {1416, "DYN_UNIT"}, {1417, "DYN_CUPBOARD"},
	{1418, "DYN_F_WOOD_3"}, {1419, "DYN_F_IRON_1"}, {1420, "DYN_AIRCON"}, {1421, "DYN_BOXES"},
	{1422, "DYN_ROADBARRIER_5"}, {1423, "DYN_ROADBARRIER_4"}, {1424, "DYN_ROADBARRIER_2"}, {1425, "DYN_ROADBARRIER_3"},
	{1426, "DYN_SCAFFOLD"}, {1427, "CJ_ROADBARRIER"}, {1428, "DYN_LADDER"}, {1429, "DYN_TV"},
	{1430, "CJ_Dump1_LOW01"}, {1431, "DYN_BOX_PILE"}, {1432, "DYN_TABLE_2"}, {1433, "DYN_TABLE_1"},
	{1434, "DYN_ROADBARRIER_5a"}, {1435, "DYN_ROADBARRIER_5b"}, {1436, "DYN_SCAFFOLD_2"}, {1437, "DYN_LADDER_2"},
	{1438, "DYN_BOX_PILE_2"}, {1439, "DYN_DUMPSTER_1"}, {1440, "DYN_BOX_PILE_3"}, {1441, "DYN_BOX_PILE_4"},
	{1442, "DYN_FIREBIN0"}, {1443, "DYN_STREET_SIGN_1"}, {1444, "DYN_STREET_SIGN_2"}, {1445, "DYN_FF_STAND"},
	{1446, "DYN_F_R_WOOD_4"}, {1447, "DYN_MESH_4"}, {1448, "DYN_CRATE_1"}, {1449, "DYN_CRATE_2"},
	{1450, "DYN_CRATE_3"}, {1451, "DYN_COUP"}, {1452, "DYN_OUTHOUSE"}, {1453, "DYN_H_BALE1"},
	{1454, "DYN_H_BALE2"}, {1455, "DYN_GLASS"}, {1456, "DYN_F_R_WOOD_2"}, {1457, "DYN_OUTHOUSE_2"},
	{1458, "DYN_CART"}, {1459, "DYN_ROADBARRIER_6"}, {1460, "DYN_F_R_WOOD_3"}, {1461, "DYN_LIFE_P"},
	{1462, "DYN_woodpile"}, {1463, "DYN_WOODPILE2"}, {1464, "DYN_SCAFFOLD_3"}, {1465, "DYN_SCAFFOLD_4"},
	{1466, "DYN_SCAFFOLD_5"}, {1467, "DYN_SCAFFOLD_3b"}, {1468, "DYN_MESH_05"}, {1469, "DYN_SCAFFOLD_4b"},
	{1470, "DYN_PORCH_3"}, {1471, "DYN_PORCH_2"}, {1472, "DYN_PORCH_1"}, {1473, "DYN_PORCH_1b"},
	{1474, "DYN_PORCH_2b"}, {1475, "DYN_PORCH_3b"}, {1476, "DYN_PORCH_4"}, {1477, "DYN_PORCH_4b"},
	{1478, "DYN_post_box"}, {1479, "DYN_GAZ_1"}, {1480, "DYN_GAZ_2"}, {1481, "DYN_BAR_B_Q"},
	{1482, "DYN_GARRAGE1"}, {1483, "DYN_GARRAGE2"}, {1484, "CJ_BEAR_BOTTLE"}, {1485, "CJ_CIGGY"},
	{1486, "DYN_BEER_1"}, {1487, "DYN_WINE_1"}, {1488, "DYN_SPIRIT_1"}, {1489, "DYN_SALE_POST"},
	{1490, "tag_01"}, {1491, "Gen_doorINT01"}, {1492, "Gen_doorINT02"}, {1493, "Gen_doorSHOP01"},
	{1494, "Gen_doorINT03"}, {1495, "Gen_doorEXT01"}, {1496, "Gen_doorSHOP02"}, {1497, "Gen_doorEXT02"},
	{1498, "Gen_doorEXT03"}, {1499, "Gen_doorINT05"}, {1500, "Gen_doorEXT05"}, {1501, "Gen_doorEXT04"},
	{1502, "Gen_doorINT04"}, {1503, "DYN_RAMP"}, {1504, "Gen_doorEXT06"}, {1505, "Gen_doorEXT07"},
	{1506, "Gen_doorEXT08"}, {1507, "Gen_doorEXT09"}, {1508, "DYN_GARAGE_DOOR"}, {1509, "DYN_WINE_3"},
	{1510, "DYN_ASHTRY"}, {1511, "DYN_SPIRIT_02"}, {1512, "DYN_WINE_03"}, {1513, "DYN_SWEETIE_TRAY"},
	{1514, "DYN_FF_TILL"}, {1515, "DYN_SLOT_PROP"}, {1516, "DYN_TABLE_03"}, {1517, "DYN_WINE_BREAK"},
	{1518, "DYN_TV_2"}, {1519, "DYN_SCAFF_cover"}, {1520, "DYN_WINE_BOUNCE"}, {1521, "DYN_SCAFF2_cover"},
	{1522, "Gen_doorSHOP3"}, {1523, "Gen_doorEXT10"}, {1524, "tag_front"}, {1525, "tag_kilo"},
	{1526, "tag_rifa"}, {1527, "tag_rollin"}, {1528, "tag_seville"}, {1529, "tag_temple"},
	{1530, "tag_vagos"}, {1531, "tag_azteca"}, {1532, "Gen_doorEXT11"}, {1533, "Gen_doorEXT12"},
	{1534, "CJ_WIN_POP2"}, {1535, "Gen_doorEXT14"}, {1536, "Gen_doorEXT15"}, {1537, "Gen_doorEXT16"},
	{1538, "sl_dtdoor1"}, {1539, "lamotsig1_LACJ"}, {1540, "vegasmotsignCJ"}, {1541, "CJ_BEER_TAPS_1"},
	{1542, "CJ_BEER_TAPS_2"}, {1543, "CJ_BEER_B_2"}, {1544, "CJ_BEER_B_1"}, {1545, "CJ_B_OPTIC1"},
	{1546, "CJ_PINT_GLASS"}, {1547, "CJ_B_PISH_T"}, {1548, "CJ_DRIP_TRAY"}, {1549, "CJ_ASHTRAY_b"},
	{1550, "CJ_MONEY_BAG"}, {1551, "DYN_WINE_BIG"}, {1552, "vegasmashfnce"}, {1553, "vegasmashfnce_Gate"},
	{1554, "CJ_WATER_BARRIER"}, {1555, "Gen_doorEXT17"}, {1556, "Gen_doorEXT18"}, {1557, "Gen_doorEXT19"},
	{1558, "CJ_CARDBRD_PICKUP"}, {1559, "diamond_3"}, {1560, "Gen_doorEXT7_11L"}, {1561, "Gen_doorEXT7_11R"},
	{1562, "ab_jetseat"}, {1563, "ab_jetseat_hrest"}, {1564, "ab_jetLiteGlass"}, {1565, "ab_jetLite"},
	{1566, "CJ_WS_DOOR"}, {1567, "Gen_wardrobe"}, {1568, "chinalamp_sf"}, {1569, "ADAM_V_DOOR"},
	{1570, "CJ_NOODLE_3"}, {1571, "CJ_NOODLE_1"}, {1572, "CJ_AIR_TROLLY"}, {1574, "trashcan"},
	{1575, "drug_white"}, {1576, "drug_orange"}, {1577, "drug_yellow"}, {1578, "drug_green"},
	{1579, "drug_blue"}, {1580, "drug_red"}, {1581, "keycard"}, {1582, "pizzabox"},
	{1583, "tar_gun2"}, {1584, "tar_gun1"}, {1585, "tar_civ2"}, {1586, "tar_civ1"},
	{1587, "tar_frame"}, {1588, "tar_top"}, {1589, "tar_upright"}, {1590, "tar_upleft"},
	{1591, "tar_downleft"}, {1592, "tar_downright"}, {1593, "plc_stinger"}, {1594, "chairsntable"},
	{1595, "satdishbig"}, {1596, "satdishsml"}, {1597, "cntrlrsac1"}, {1598, "beachball"},
	{1599, "fish1single"}, {1600, "fish2single"}, {1601, "fish3s"}, {1602, "jellyfish"},
	{1603, "jellyfish01"}, {1604, "fish3single"}, {1605, "fish1s"}, {1606, "fish2s"},
	{1607, "dolphin"}, {1608, "shark"}, {1609, "turtle"}, {1610, "sandcastle1"},
	{1611, "sandcastle2"}, {1612, "submarine"}, {1613, "nt_firehose_01"}, {1614, "nt_alarm1_01"},
	{1615, "nt_alarm2_01"}, {1616, "nt_securecam1_01"}, {1617, "nt_aircon1_01"}, {1618, "nt_aircon1_02"},
	{1619, "nt_vent1_01"}, {1620, "nt_vent2_01"}, {1621, "nt_vent3_01"}, {1622, "nt_securecam2_01"},
	{1623, "nt_aircon3_01"}, {1624, "nt_cablebox1_01"}, {1625, "nt_cablebox2_01"}, {1626, "nt_cablebox3_01"},
	{1627, "nt_alarm3_01"}, {1628, "nt_cablebox4_01"}, {1629, "nt_cablebox5_01"}, {1630, "nt_cablebox6_01"},
	{1631, "waterjump2"}, {1632, "waterjump1"}, {1633, "landjump"}, {1634, "landjump2"},
	{1635, "nt_aircon1dbl"}, {1636, "rcbomb"}, {1637, "od_pat_hutb"}, {1638, "od_pat_hut"},
	{1639, "od_vbnet"}, {1640, "beachtowel04"}, {1641, "beachtowel03"}, {1642, "beachtowel02"},
	{1643, "beachtowel01"}, {1644, "lotion"}, {1645, "lounge_wood_up"}, {1646, "lounge_towel_up"},
	{1647, "lounge_wood_dn"}, {1648, "od_groyne01"}, {1649, "wglasssmash"}, {1650, "petrolcanm"},
	{1651, "od_copwindows"}, {1652, "fencehaiti"}, {1653, "fencehaitism"}, {1654, "dynamite"},
	{1655, "waterjumpx2"}, {1656, "Esc_step"}, {1657, "htl_fan_rotate_nt"}, {1658, "htl_fan_static_nt"},
	{1659, "htl_fan_static_dy"}, {1660, "ramp"}, {1661, "htl_fan_rotate_dy"}, {1662, "nt_roadblockCI"},
	{1663, "swivelchair_B"}, {1664, "propwinebotl2"}, {1665, "propashtray1"}, {1666, "propbeerglass1"},
	{1667, "propwineglass1"}, {1668, "propvodkabotl1"}, {1669, "propwinebotl1"}, {1670, "propcollecttable"},
	{1671, "swivelchair_A"}, {1672, "Gasgrenade"}, {1673, "roadsign"}, {1675, "wshxrefhse1"},
	{1676, "washgaspump"}, {1677, "wshxrefhse2"}, {1679, "chairsntableml"}, {1681, "ap_learjet1_01"},
	{1682, "ap_radar1_01"}, {1683, "ap_jumbo_01"}, {1684, "portakabin"}, {1685, "blockpallet"},
	{1686, "petrolpumpnew"}, {1687, "gen_roofbit1"}, {1688, "gen_roofbit2"}, {1689, "gen_roofbit3"},
	{1690, "gen_roofbit4"}, {1691, "gen_roofbit5"}, {1692, "roofstuff18"}, {1693, "roofstuff12"},
	{1694, "roofstuff13"}, {1695, "roofstuff14"}, {1696, "roofstuff15"}, {1697, "roofstuff16"},
	{1698, "Esc_step8"}, {1700, "kb_bed_test1"}, {1701, "kb_bed_test2"}, {1702, "kb_couch06"},
	{1703, "kb_couch02"}, {1704, "kb_chair03"}, {1705, "kb_chair04"}, {1706, "kb_couch03"},
	{1707, "kb_couch01"}, {1708, "kb_chair02"}, {1709, "kb_couch08"}, {1710, "kb_couch07"},
	{1711, "kb_chair01"}, {1712, "kb_couch05"}, {1713, "kb_couch04"}, {1714, "kb_swivelchair1"},
	{1715, "kb_swivelchair2"}, {1716, "kb_slot_stool"}, {1717, "telly_low_test"}, {1718, "snesish"},
	{1719, "LOW_CONSOLE"}, {1720, "rest_chair"}, {1721, "est_chair1"}, {1722, "off_chairnu"},
	{1723, "mrk_seating1"}, {1724, "mrk_seating1b"}, {1725, "mrk_bed1"}, {1726, "mrk_seating2"},
	{1727, "mrk_seating2b"}, {1728, "mrk_seating3"}, {1729, "mrk_seating3b"}, {1730, "SWANK_CABINET_3"},
	{1731, "CJ_MLIGHT3"}, {1732, "CJ_Juke_Box"}, {1733, "CJ_WASHINGMAC"}, {1734, "CJ_MLIGHT2"},
	{1735, "CJ_EASYCHAIR1"}, {1736, "CJ_Stags_head"}, {1737, "MED_DINNING_5"}, {1738, "CJ_Radiator_old"},
	{1739, "SWANK_DIN_CHAIR_5"}, {1740, "LOW_CABINET_3"}, {1741, "LOW_CABINET_1"}, {1742, "Med_BOOKSHELF"},
	{1743, "MED_CABINET_3"}, {1744, "MED_SHELF"}, {1745, "MED_BED_3"}, {1746, "SWANK_1_FootStool"},
	{1747, "LOW_TV_2"}, {1748, "LOW_TV_3"}, {1749, "MED_TV_3"}, {1750, "MED_TV_2"},
	{1751, "MED_TV_4"}, {1752, "SWANK_TV_3"}, {1753, "SWANK_COUCH_1"}, {1754, "SWANK_SINGLE_1"},
	{1755, "MED_SINGLE_2"}, {1756, "LOW_COUCH_4"}, {1757, "LOW_COUCH_5"}, {1758, "LOW_SINGLE_4"},
	{1759, "LOW_SINGLE_1"}, {1760, "MED_COUCH_2"}, {1761, "SWANK_COUCH_2"}, {1762, "SWANK_SINGLE_2"},
	{1763, "LOW_COUCH_1"}, {1764, "LOW_COUCH_2"}, {1765, "LOW_SINGLE_2"}, {1766, "MED_COUCH_1"},
	{1767, "MED_SINGLE_1"}, {1768, "LOW_COUCH_3"}, {1769, "LOW_SINGLE_3"}, {1770, "LOW_DINNING_2"},
	{1771, "CJ_bunk_bed1"}, {1772, "CJ_HOT_DOG1"}, {1773, "CJ_COOKER2"}, {1774, "CJ_Monketshopsign"},
	{1775, "CJ_SPRUNK1"}, {1776, "CJ_CANDYVENDOR"}, {1777, "CJ_COOKER1"}, {1778, "CJ_MOP_PAIL"},
	{1779, "CJ_TICKETMACHINE"}, {1780, "CJ_THIN_FRIGE"}, {1781, "MED_TV_1"}, {1782, "MED_VIDEO_2"},
	{1783, "SWANK_VIDEO_2"}, {1784, "LOW_VIDEO_2"}, {1785, "LOW_VIDEO_1"}, {1786, "SWANK_TV_4"},
	{1787, "MED_VIDEO_1"}, {1788, "SWANK_VIDEO_1"}, {1789, "CJ_chambermaid"}, {1790, "SWANK_VIDEO_3"},
	{1791, "SWANK_TV_2"}, {1792, "SWANK_TV_1"}, {1793, "LOW_BED_2"}, {1794, "LOW_BED_3"},
	{1795, "SWANK_BED_2"}, {1796, "LOW_BED_4"}, {1797, "SWANK_BED_3"}, {1798, "SWANK_BED_1"},
	{1799, "MED_BED_4"}, {1800, "LOW_BED_1"}, {1801, "SWANK_BED_4"}, {1802, "MED_BED_2"},
	{1803, "MED_BED_7"}, {1804, "MED_BED_1"}, {1805, "CJ_BARSTOOL"}, {1806, "MED_OFFICE_CHAIR"},
	{1807, "CJ_MEDIUMPOTS1"}, {1808, "CJ_WATERCOOLER2"}, {1809, "MED_HI_FI"}, {1810, "CJ_FOLDCHAIR"},
	{1811, "MED_DIN_CHAIR_5"}, {1812, "LOW_BED_5"}, {1813, "COFFEE_LOW_5"}, {1814, "COFFEE_MED_1"},
	{1815, "COFFEE_LOW_2"}, {1816, "COFFEE_LOW_3"}, {1817, "COFFEE_MED_2"}, {1818, "COFFEE_SWANK_2"},
	{1819, "COFFEE_SWANK_4"}, {1820, "COFFEE_LOW_4"}, {1821, "COFFEE_LOW_1"}, {1822, "COFFEE_SWANK_6"},
	{1823, "COFFEE_MED_5"}, {1824, "craps_table"}, {1825, "kb_table_chairs1"}, {1826, "kb_table1"},
	{1827, "man_sdr_tables"}, {1828, "man_sdr_rug"}, {1829, "man_safenew"}, {1830, "kb_bandit1"},
	{1831, "kb_bandit2"}, {1832, "kb_bandit3"}, {1833, "kb_bandit4"}, {1834, "kb_bandit6"},
	{1835, "kb_bandit5"}, {1836, "kb_bandit7"}, {1837, "kb_bandit9"}, {1838, "kb_bandit11"},
	{1839, "k_hifi_1"}, {1840, "speaker_2"}, {1841, "speaker_1"}, {1842, "shop_shelf05"},
	{1843, "shop_shelf02"}, {1844, "shop_shelf03"}, {1845, "shop_shelf10"}, {1846, "shop_shelf04"},
	{1847, "shop_shelf06"}, {1848, "shop_shelf07"}, {1849, "shop_shelf09"}, {1850, "shop_shelf08"},
	{1851, "dice1"}, {1852, "dice02"}, {1853, "pkr_chp_hi04"}, {1854, "pkr_chp_hi05"},
	{1855, "pkr_chp_hi03"}, {1856, "pkr_chp_hi02"}, {1857, "pkr_chp_hi01"}, {1858, "pkr_chp_hi06"},
	{1859, "pkr_chp_med04"}, {1860, "pkr_chp_med06"}, {1861, "pkr_chp_med05"}, {1862, "pkr_chp_med03"},
	{1863, "pkr_chp_med02"}, {1864, "pkr_chp_med01"}, {1865, "pkr_chplo06"}, {1866, "pkr_chplo05"},
	{1867, "pkr_chplo04"}, {1868, "pkr_chplo03"}, {1869, "pkr_chplo02"}, {1870, "pkr_chplo01"},
	{1871, "pkr_chp_vlo04"}, {1872, "pkr_chp_vlo01"}, {1873, "pkr_chp_vlo02"}, {1874, "pkr_chp_vlo03"},
	{1875, "pkr_chp_vlo05"}, {1876, "pkr_chp_vlo06"}, {1877, "chip_stack02"}, {1878, "chip_stack03"},
	{1879, "chip_stack04"}, {1880, "chip_stack05"}, {1881, "chip_stack06"}, {1882, "chip_stack01"},
	{1883, "shop_shelf01"}, {1884, "shop_dblshlf"}, {1885, "shop_baskets"}, {1886, "shop_sec_cam"},
	{1887, "shop_shelf11"}, {1888, "shop_shelf12"}, {1889, "shop_dblshlf01"}, {1890, "shop_dblshlf02"},
	{1891, "shop_dblshlf03"}, {1892, "security_gatsh"}, {1893, "shoplight1"}, {1894, "garys_luv_ramp"},
	{1895, "wheel_o_fortune"}, {1896, "wheel_table"}, {1897, "wheel_support"}, {1898, "clicker"},
	{1899, "pkr_chp_vlo07"}, {1900, "pkr_chplo07"}, {1901, "chip_stack07"}, {1902, "chip_stack08"},
	{1903, "chip_stack09"}, {1904, "chip_stack10"}, {1905, "pkr_chplo08"}, {1906, "pkr_chplo09"},
	{1907, "pkr_chplo10"}, {1908, "pkr_chplo11"}, {1909, "pkr_chp_vlo08"}, {1910, "pkr_chp_vlo09"},
	{1911, "chip_stack11"}, {1912, "pkr_chp_vlo10"}, {1913, "pkr_chp_vlo11"}, {1914, "pkr_chp_vlo12"},
	{1915, "pkr_chp_med07"}, {1916, "pkr_chp_med08"}, {1917, "pkr_chp_med09"}, {1918, "pkr_chp_med10"},
	{1919, "pkr_chplo12"}, {1920, "pkr_chp_med11"}, {1921, "chip_stack12"}, {1922, "pkr_chp_med12"},
	{1923, "pkr_chp_hi07"}, {1924, "pkr_chp_hi08"}, {1925, "pkr_chp_hi09"}, {1926, "pkr_chp_hi10"},
	{1927, "pkr_chp_hi11"}, {1928, "pkr_chp_hi12"}, {1929, "wheel_wee01"}, {1930, "chip_stack13"},
	{1931, "chip_stack14"}, {1932, "chip_stack15"}, {1933, "chip_stack16"}, {1934, "pkr_chp_hi13"},
	{1935, "pkr_chp_hi14"}, {1936, "pkr_chp_hi15"}, {1937, "pkr_chp_hi16"}, {1938, "pkr_chp_hi17"},
	{1939, "pkr_chp_hi18"}, {1940, "chip_stack18"}, {1941, "chip_stack17"}, {1942, "kg50"},
	{1943, "kg20"}, {1944, "kg10"}, {1945, "kg5"}, {1946, "baskt_ball_hi"},
	{1947, "CHIPS_TEMP"}, {1948, "slot_4chris"}, {1949, "barrier_4andy"}, {1950, "kb_beer"},
	{1951, "kb_beer01"}, {1952, "turn_arm_R"}, {1953, "turn_plater_R"}, {1954, "turn_table_R"},
	{1955, "turn_armL"}, {1956, "turn_platerL"}, {1957, "turn_tableL"}, {1958, "mxr_mix_body"},
	{1959, "shop_till"}, {1960, "record2"}, {1961, "record3"}, {1962, "record1"},
	{1963, "est_desk"}, {1964, "est_dsk_stuf"}, {1965, "imcmptrkdrl_LAS"}, {1966, "imcompmovedr1_las"},
	{1967, "imcmptrkdrr_LAS"}, {1968, "dinerseat_2"}, {1969, "dinerseat_3"}, {1970, "dinerseat_1"},
	{1971, "kb_flykiller"}, {1972, "kb_cuntopdisp2"}, {1973, "kb_cuntopdisp1"}, {1974, "kb_golfball"},
	{1975, "e_test"}, {1976, "w_test"}, {1977, "vendin3"}, {1978, "roulette_tbl"},
	{1979, "wheel_wee"}, {1980, "wilshire7dr1_law"}, {1981, "shlf1_cab_mid"}, {1982, "shlf2_cab_mid"},
	{1983, "shlf4_cab_mid"}, {1984, "shlf5_till"}, {1985, "punchbagnu"}, {1986, "shlf2_cab_rt"},
	{1987, "shlf4_cablft"}, {1988, "shlf4_cab_rt"}, {1989, "kb_coolerlft2"}, {1990, "kb_coolerlft"},
	{1991, "shlf1_cablft1"}, {1992, "shlf2_cablft"}, {1993, "shlf3_cab_mid2"}, {1994, "shlf3_cablft"},
	{1995, "shlf3_cab_rt"}, {1996, "shlf1_cab_rt"}, {1997, "hos_trolley"}, {1998, "officedesk1l"},
	{1999, "officedesk2"}, {2000, "filing_cab_nu"}, {2001, "nu_plant_ofc"}, {2002, "water_coolnu"},
	{2003, "cr_safe_body"}, {2004, "cr_safe_door"}, {2005, "cr_safe_cash"}, {2006, "cr_safe_dial"},
	{2007, "filing_cab_nu01"}, {2008, "officedesk1"}, {2009, "officedesk2l"}, {2010, "nu_plant3_ofc"},
	{2011, "nu_plant2_ofc"}, {2012, "shop_shelf13"}, {2013, "kit_cab_sink"}, {2014, "kit_cab_mid"},
	{2015, "kit_cab_rght"}, {2016, "kit_cab_lft"}, {2017, "kit_cab_cookr"}, {2018, "kit_cab_washin"},
	{2019, "kit_cab_frdg"}, {2020, "mrk_sidebrd1"}, {2021, "mrk_bdsdecab1"}, {2022, "kit_cab_crnr"},
	{2023, "mrk_stnd_lmp"}, {2024, "mrk_liv_tble"}, {2025, "mrk_wrobe_tmp"}, {2026, "mrk_shade_tmp"},
	{2027, "dinerseat_4"}, {2028, "SWANK_CONSOLE"}, {2029, "SWANK_DINNING_1"}, {2030, "MED_DINNING_1"},
	{2031, "MED_DINNING_3"}, {2032, "MED_DINNING_2"}, {2033, "CJ_sawnoff2"}, {2034, "CJ_sawnoff"},
	{2035, "CJ_M16"}, {2036, "CJ_psg1"}, {2037, "CJ_PISTOL_AMMO"}, {2038, "AMMO_BOX_S2"},
	{2039, "AMMO_BOX_S1"}, {2040, "AMMO_BOX_M1"}, {2041, "AMMO_BOX_M2"}, {2042, "AMMO_BOX_M3"},
	{2043, "AMMO_BOX_M4"}, {2044, "CJ_MP5K"}, {2045, "CJ_BBAT_NAILS"}, {2046, "CJ_GUNCUPBOARD"},
	{2047, "CJ_FLAG1"}, {2048, "CJ_FLAG2"}, {2049, "CJ_TARGET1"}, {2050, "CJ_TARGET2"},
	{2051, "CJ_TARGET4"}, {2052, "CJ_TOMMY_HAT"}, {2053, "CJ_JERRY_HAT"}, {2054, "CJ_CAPT_HAT"},
	{2055, "CJ_TARGET5"}, {2056, "CJ_TARGET6"}, {2057, "Flame_tins"}, {2058, "CJ_Gun_docs"},
	{2059, "CJ_GUNSTUFF1"}, {2060, "CJ_SANDBAG"}, {2061, "CJ_SHELLS1"}, {2062, "CJ_OilDrum2"},
	{2063, "CJ_GREENSHELVES"}, {2064, "CJ_FEILDGUN"}, {2065, "CJ_M_FILEING1"}, {2066, "CJ_M_FILEING2"},
	{2067, "CJ_M_FILEING3"}, {2068, "CJ_cammo_NET"}, {2069, "CJ_MLIGHT7"}, {2070, "CJ_MLIGHT6"},
	{2071, "CJ_MLIGHT5"}, {2072, "CJ_MLIGHT4"}, {2073, "CJ_MLIGHT1"}, {2074, "CJ_MLIGHT8"},
	{2075, "CJ_MLIGHT9"}, {2076, "CJ_MLIGHT10"}, {2077, "CJ_MLIGHT11"}, {2078, "SWANK_CABINET_1"},
	{2079, "SWANK_DIN_CHAIR_2"}, {2080, "SWANK_DINNING_2"}, {2081, "COFFEE_SWANK_3"}, {2082, "COFFEE_MED_3"},
	{2083, "COFFEE_MED_4"}, {2084, "MED_CABINET_1"}, {2085, "SWANK_DINNING_3"}, {2086, "SWANK_DINNING_4"},
	{2087, "MED_CABINET_2"}, {2088, "LOW_CABINET_4"}, {2089, "SWANK_CABINET_2"}, {2090, "SWANK_BED_5"},
	{2091, "TV_WARD_Med_1"}, {2092, "SWANK_CABINET_5"}, {2093, "TV_WARD_Low"}, {2094, "SWANK_CABINET_4"},
	{2095, "LOW_CABINET_2"}, {2096, "CJ_RockingChair"}, {2097, "Bath_high"}, {2098, "CJ_SLOTCOVER1"},
	{2099, "MED_HI_FI_1"}, {2100, "MED_HI_FI_2"}, {2101, "MED_HI_FI_3"}, {2102, "LOW_HI_FI_2"},
	{2103, "LOW_HI_FI_1"}, {2104, "SWANK_HI_FI"}, {2105, "CJ_MLIGHT14"}, {2106, "CJ_MLIGHT15"},
	{2107, "CJ_MLIGHT12"}, {2108, "CJ_MLIGHT13"}, {2109, "LOW_DINNING_3"}, {2110, "LOW_DINNING_4"},
	{2111, "LOW_DINNING_5"}, {2112, "MED_DINNING_4"}, {2113, "baskgamenet"}, {2114, "basketball"},
	{2115, "LOW_DINNING_1"}, {2116, "LOW_DINNING_6"}, {2117, "SWANK_DINNING_5"}, {2118, "SWANK_DINNING_6"},
	{2119, "MED_DINNING_6"}, {2120, "MED_DIN_CHAIR_4"}, {2121, "LOW_DIN_CHAIR_2"}, {2122, "SWANK_DIN_CHAIR_3"},
	{2123, "SWANK_DIN_CHAIR_4"}, {2124, "SWANK_DIN_CHAIR_1"}, {2125, "MED_DIN_CHAIR_1"}, {2126, "COFFEE_SWANK_5"},
	{2127, "CJ_K1_FRIDGE_UNIT"}, {2128, "CJ_K1_TALL_UNIT"}, {2129, "CJ_K1_LOW_UNIT"}, {2130, "CJ_K1_SINK"},
	{2131, "CJ_KITCH2_FRIDGE"}, {2132, "CJ_KITCH2_SINK"}, {2133, "CJ_KITCH2_R"}, {2134, "CJ_KITCH2_M"},
	{2135, "CJ_K3_COOKER"}, {2136, "CJ_K3_SINK"}, {2137, "CJ_K3_LOW_UNIT3"}, {2138, "CJ_K3_LOW_UNIT1"},
	{2139, "CJ_K3_LOW_UNIT2"}, {2140, "CJ_K3_TALL_UNIT1"}, {2141, "CJ_KITCH2_L"}, {2142, "CJ_K4_LOW_UNIT2"},
	{2143, "CJ_K4_LOW_UNIT1"}, {2144, "CJ_COOKER3"}, {2145, "CJ_K3_UNIT06"}, {2146, "CJ_TROLLY1"},
	{2147, "CJ_KITCH1_FRIDGE"}, {2148, "CJ_K4_LOW_UNIT03"}, {2149, "CJ_MICROWAVE1"}, {2150, "CJ_SINK1"},
	{2151, "CJ_K5_LOW_UNIT2"}, {2152, "CJ_K5_LOW_UNIT3"}, {2153, "CJ_K5_UNIT1"}, {2154, "CJ_K5_LOW_UNIT1"},
	{2155, "CJ_K5_LOW_UNIT4"}, {2156, "CJ_K6_LOW_UNIT1"}, {2157, "CJ_K6_LOW_UNIT2"}, {2158, "CJ_KITCH1_L"},
	{2159, "CJ_K6_LOW_UNIT4"}, {2160, "CJ_K6_LOW_UNIT3"}, {2161, "MED_OFFICE_UNIT_4"}, {2162, "MED_OFFICE_UNIT_1"},
	{2163, "MED_OFFICE_UNIT_2"}, {2164, "MED_OFFICE_UNIT_5"}, {2165, "MED_OFFICE_DESK_1"}, {2166, "MED_OFFICE_DESK_2"},
	{2167, "MED_OFFICE_UNIT_7"}, {2168, "partition"}, {2169, "MED_OFFICE3_DESK_1"}, {2170, "CJ_KITCH1_COOKER"},
	{2171, "MED_OFFICE4_DESK_1"}, {2172, "MED_OFFICE2_DESK_1"}, {2173, "MED_OFFICE_DESK_3"}, {2174, "MED_OFFICE4_DESK_2"},
	{2175, "MED_OFFICE4_DESK_3"}, {2176, "Casino_light4"}, {2177, "Casino_light3"}, {2178, "Casino_light2"},
	{2179, "Casino_light1"}, {2180, "MED_OFFICE5_DESK_3"}, {2181, "MED_OFFICE5_DESK_2"}, {2182, "MED_OFFICE5_DESK_1"},
	{2183, "MED_OFFICE3_DESK_09"}, {2184, "MED_OFFICE6_DESK_2"}, {2185, "MED_OFFICE6_DESK_1"}, {2186, "PHOTOCOPIER_1"},
	{2187, "partition2"}, {2188, "blck_jack"}, {2189, "poker_tbl"}, {2190, "PC_1"},
	{2191, "MED_OFFICE2_CAB"}, {2192, "FAN_1"}, {2193, "MED_OFFICE2_DESK_2"}, {2194, "Plant_Pot_2"},
	{2195, "Plant_Pot_3"}, {2196, "WORK_LAMP1"}, {2197, "FILLING_CABINET"}, {2198, "MED_OFFICE2_DESK_3"},
	{2199, "MED_OFFICE6_MC_1"}, {2200, "MED_OFFICE5_UNIT_1"}, {2201, "PRINTER_1"}, {2202, "PHOTOCOPIER_2"},
	{2203, "Plant_Pot_1"}, {2204, "MED_OFFICE8_CABINET"}, {2205, "MED_OFFICE8_DESK_1"}, {2206, "MED_OFFICE8_DESK_02"},
	{2207, "MED_OFFICE7_DESK_1"}, {2208, "MED_OFFICE7_UNIT_1"}, {2209, "MED_OFFICE9_DESK_1"}, {2210, "MED_OFFICE9_UNIT_1"},
	{2211, "MED_OFFICE9_UNIT_2"}, {2212, "burgerhigh"}, {2213, "burgerlow"}, {2214, "burgermed"},
	{2215, "clucklow"}, {2216, "cluckmed"}, {2217, "cluckhigh"}, {2218, "pizzalow"},
	{2219, "pizzamed"}, {2220, "pizzahigh"}, {2221, "rustylow"}, {2222, "rustyhigh"},
	{2223, "rustymed"}, {2224, "CJ_Sphere_TV"}, {2225, "SWANK_HI_FI_2"}, {2226, "LOW_HI_FI_3"},
	{2227, "SWANK_HI_FI_3"}, {2228, "CJ_SHOVEL"}, {2229, "SWANK_SPEAKER"}, {2230, "SWANK_SPEAKER_2"},
	{2231, "SWANK_SPEAKER_3"}, {2232, "MED_SPEAKER_4"}, {2233, "SWANK_SPEAKER_4"}, {2234, "COFFEE_LOW_6"},
	{2235, "COFFEE_MED_6"}, {2236, "COFFEE_SWANK_1"}, {2237, "CJ_SHOVEL2"}, {2238, "CJ_LAVA_LAMP"},
	{2239, "CJ_MLIGHT16"}, {2240, "Plant_Pot_8"}, {2241, "Plant_Pot_5"}, {2242, "Plant_Pot_7"},
	{2243, "Plant_Pot_6"}, {2244, "Plant_Pot_9"}, {2245, "Plant_Pot_11"}, {2246, "Plant_Pot_14"},
	{2247, "Plant_Pot_15"}, {2248, "Plant_Pot_16"}, {2249, "Plant_Pot_18"}, {2250, "Plant_Pot_19"},
	{2251, "Plant_Pot_20"}, {2252, "Plant_Pot_21"}, {2253, "Plant_Pot_22"}, {2254, "Frame_Clip_1"},
	{2255, "Frame_Clip_2"}, {2256, "Frame_Clip_3"}, {2257, "Frame_Clip_4"}, {2258, "Frame_Clip_5"},
	{2259, "Frame_Clip_6"}, {2260, "Frame_SLIM_1"}, {2261, "Frame_SLIM_2"}, {2262, "Frame_SLIM_3"},
	{2263, "Frame_SLIM_4"}, {2264, "Frame_SLIM_5"}, {2265, "Frame_SLIM_6"}, {2266, "Frame_WOOD_5"},
	{2267, "Frame_WOOD_3"}, {2268, "Frame_WOOD_2"}, {2269, "Frame_WOOD_4"}, {2270, "Frame_WOOD_6"},
	{2271, "Frame_WOOD_1"}, {2272, "Frame_Fab_5"}, {2273, "Frame_Fab_1"}, {2274, "Frame_Fab_6"},
	{2275, "Frame_Fab_4"}, {2276, "Frame_Fab_3"}, {2277, "Frame_Fab_2"}, {2278, "Frame_Thick_2"},
	{2279, "Frame_Thick_6"}, {2280, "Frame_Thick_1"}, {2281, "Frame_Thick_5"}, {2282, "Frame_Thick_4"},
	{2283, "Frame_Thick_3"}, {2284, "Frame_6"}, {2285, "Frame_1"}, {2286, "Frame_5"},
	{2287, "Frame_4"}, {2288, "Frame_3"}, {2289, "Frame_2"}, {2290, "SWK_COUCH_1"},
	{2291, "SWK_SINGLE_1"}, {2292, "SWK_SINGLE_1b"}, {2293, "SWK_1_FStool"}, {2294, "CJ_K_COOKER1"},
	{2295, "CJ_BEANBAG"}, {2296, "TV_UNIT_1"}, {2297, "TV_UNIT_2"}, {2298, "SWANK_BED_7"},
	{2299, "SWANK_BED_6"}, {2300, "MED_BED_8"}, {2301, "MED_BED_9"}, {2302, "LOW_BED_06"},
	{2303, "CJ_K3_WASH_MAC"}, {2304, "CJ_K1_LOW_CORNER"}, {2305, "CJ_K3_C_UNIT"}, {2306, "SWANK_CABINET_4D"},
	{2307, "SWANK_CABINET_4b"}, {2308, "MED_OFFICE4_DESK_4"}, {2309, "MED_OFFICE_CHAIR2"}, {2310, "MIKE_DIN_CHAIR"},
	{2311, "CJ_TV_TABLE2"}, {2312, "CJ_TELE_2"}, {2313, "CJ_TV_TABLE1"}, {2314, "CJ_TV_TABLE3"},
	{2315, "CJ_TV_TABLE4"}, {2316, "CJ_TELE_4"}, {2317, "CJ_TELE_3"}, {2318, "CJ_TELE_1"},
	{2319, "CJ_TV_TABLE5"}, {2320, "CJ_TELE_5"}, {2321, "CJ_TV_TABLE6"}, {2322, "CJ_TELE_6"},
	{2323, "CJ_BEDROOM1"}, {2324, "reel2"}, {2325, "kb_bandit_U"}, {2326, "reel3"},
	{2327, "reel1"}, {2328, "LOW_CABINET_1_S"}, {2329, "LOW_CABINET_1_L"}, {2330, "CJ_BEDROOM1_W"},
	{2331, "CJ_BED_FURN_1"}, {2332, "KEV_SAFE"}, {2333, "CJ_BED_FURN_1b"}, {2334, "CJ_KITCH1_M"},
	{2335, "CJ_KITCH1_R"}, {2336, "CJ_KITCH1_SINK"}, {2337, "CJ_KITCH1_WASHER"}, {2338, "CJ_KITCH1_CORNER"},
	{2339, "CJ_KITCH2_COOKER"}, {2340, "CJ_KITCH2_WASHER"}, {2341, "CJ_KITCH2_CORNER"}, {2342, "donut_disp"},
	{2343, "CJ_BARB_CHAIR_2"}, {2344, "CJ_REMOTE"}, {2345, "Plant_Pot_23"}, {2346, "CJ_HIFI_TABLE"},
	{2347, "CJ_Wheel_1"}, {2348, "CJ_Wheel_02"}, {2349, "CJ_Wheel_03"}, {2350, "CJ_BARSTOOL_2"},
	{2351, "CJ_DYN_PLUNGE_1"}, {2352, "CJ_DYN_PLUNGE_2"}, {2353, "cluck_healthy"}, {2354, "burger_healthy"},
	{2355, "pizza_healthy"}, {2356, "police_OFF_CHAIR"}, {2357, "DUNC_DINNING"}, {2358, "AMMO_BOX_c2"},
	{2359, "AMMO_BOX_c5"}, {2360, "CJ_ICE_FRIDGE_2"}, {2361, "CJ_ICE_FRIDGE_1"}, {2362, "CJ_SWEETIE_TRAY_1"},
	{2363, "CJ_SHOP_SIGN_1"}, {2364, "CJ_SHOP_SIGN_2"}, {2365, "SHOPPING_BASKET"}, {2366, "CJ_DUDS_RAIL"},
	{2367, "Shop_counter_2"}, {2368, "Shop_counter_1"}, {2369, "CJ_Till"}, {2370, "Shop_set_1_Table"},
	{2371, "CLOTHES_RAIL"}, {2372, "CLOTHES_RAIL2"}, {2373, "CLOTHES_RAIL3"}, {2374, "CJ_Tshirt"},
	{2375, "Shop_set_2_Unit1"}, {2376, "Shop_set_2_Unit2"}, {2377, "CJ_jean_dark"}, {2378, "CJ_jean_light"},
	{2379, "Shop_set_2_Unit3"}, {2380, "CJ_Suits"}, {2381, "CJ_8_SWEATER"}, {2382, "CJ_8_JEANS_Light"},
	{2383, "CJ_6_SWEATER"}, {2384, "CJ_8_JEANS_DARK"}, {2385, "Shop_set_2_Unit4"}, {2386, "CJ_SWEATER_F_1"},
	{2387, "Shop_set_2_Unit5"}, {2388, "CJ_DUDS_RAIL_2"}, {2389, "CJ_4_SWEATERS"}, {2390, "CJ_4way_clothes"},
	{2391, "CJ_jean_CREAM"}, {2392, "CJ_8_JEANS_MED"}, {2393, "CJ_DUDS_RAIL_3"}, {2394, "CJ_CLOTHES_STEP_1"},
	{2395, "CJ_SPORTS_WALL"}, {2396, "CJ_4_S_SWEATER"}, {2397, "CJ_TRACKIES_dark"}, {2398, "CJ_TRACKIES_LIGHT"},
	{2399, "CJ_4_S_SWEATER_2"}, {2400, "CJ_SPORTS_WALL01"}, {2401, "CJ_TRACKIES_WHITE"}, {2402, "CJ_SPORTS_BAGS"},
	{2403, "Shop_set_2_SHOE"}, {2404, "CJ_SURF_BOARD"}, {2405, "CJ_SURF_BOARD2"}, {2406, "CJ_SURF_BOARD3"},
	{2407, "CJ_F_TORSO"}, {2408, "CJ_F_LEG_1"}, {2409, "CJ_F_LEG_2"}, {2410, "CJ_SURF_BOARD4"},
	{2411, "CJ_F_TORSO_1"}, {2412, "CJ_DETECTOR"}, {2413, "Shop_counter_3a"}, {2414, "Shop_counter_3b"},
	{2415, "CJ_FF_FRYER"}, {2416, "CJ_FF_DISP"}, {2417, "CJ_FF_COOKER"}, {2418, "CJ_FF_WORKTOP"},
	{2419, "CJ_FF_WORKTOP_2"}, {2420, "CJ_FF_BUCKET"}, {2421, "CJ_FF_MICROW"}, {2422, "CJ_FF_TILL"},
	{2423, "CJ_FF_CONTER_1b"}, {2424, "CJ_FF_CONTER_1"}, {2425, "CJ_FF_JUICE"}, {2426, "CJ_FF_PIZZA_OVEN"},
	{2427, "CJ_FF_JUICE_L"}, {2428, "CJ_FF_STAND1"}, {2429, "CJ_FF_CUP_DISP"}, {2430, "CJ_FF_LIST1"},
	{2431, "CJ_FF_LIST2"}, {2432, "CJ_FF_LIST3"}, {2433, "CJ_FF_DISP1"}, {2434, "CJ_FF_CONTER_2b"},
	{2435, "CJ_FF_CONTER_2"}, {2436, "CJ_FF_DISP2"}, {2437, "CJ_CUP_PILE"}, {2438, "CJ_SLUSH_MAC"},
	{2439, "CJ_FF_CONTER_3"}, {2440, "CJ_FF_CONTER_3b"}, {2441, "CJ_FF_CONTER_4"}, {2442, "CJ_FF_CONTER_4b"},
	{2443, "CJ_FF_FRIGE"}, {2444, "CJ_FF_CONTER_4c"}, {2445, "CJ_FF_CONTER_4d"}, {2446, "CJ_FF_CONTER_5"},
	{2447, "CJ_FF_CONTER_5c"}, {2448, "CJ_FF_CONTER_5d"}, {2449, "CJ_FF_CONTER_5e"}, {2450, "CJ_FF_CONTER_5b"},
	{2451, "CJ_FF_WORKTOP_3"}, {2452, "CJ_FF_FRIDGE2"}, {2453, "CJ_PIZZA_DISPf"}, {2454, "CJ_FF_CONTER_8b"},
	{2455, "CJ_FF_CONTER_8"}, {2456, "CJ_FF_STAND02"}, {2457, "CJ_FF_CONTER_8c"}, {2458, "CJ_HOBBY_C_3"},
	{2459, "CJ_HOBBY_C_4"}, {2460, "CJ_HOBBY_C_1"}, {2461, "CJ_HOBBY_C_2"}, {2462, "CJ_HOBBY_SHELF"},
	{2463, "CJ_HOBBY_SHELF_2"}, {2464, "MODEL_BOX1"}, {2465, "MODEL_BOX2"}, {2466, "MODEL_BOX3"},
	{2467, "CJ_HOBBY_C_5"}, {2468, "MODEL_BOX4"}, {2469, "MODEL_PLANES_3"}, {2470, "MODEL_PLANES_4"},
	{2471, "MODEL_TRAINS2"}, {2472, "MODEL_PLANES_1"}, {2473, "MODEL_PLANES_2"}, {2474, "MODEL_TRAINS1"},
	{2475, "CJ_HOBBY_SHELF_3"}, {2476, "MODEL_BOX11"}, {2477, "MODEL_BOX5"}, {2478, "MODEL_BOX6"},
	{2479, "MODEL_BOX8"}, {2480, "MODEL_BOX9"}, {2481, "MODEL_BOX10"}, {2482, "CJ_HOBBY_SHELF_4"},
	{2483, "MODEL_BOX13"}, {2484, "MODEL_YAUGHT"}, {2485, "MODEL_CAR_1"}, {2486, "MODEL_CAR"},
	{2487, "HOBBY_KITE"}, {2488, "MANHUNT_TOY_1"}, {2489, "MANHUNT_TOY_2"}, {2490, "VICE_TOY_1"},
	{2491, "MODEL_STAND"}, {2492, "MANHUNT_TOY2_1"}, {2493, "VICE_TOY2_1"}, {2494, "MANHUNT_TOY2_2"},
	{2495, "VICE_TOY_2"}, {2496, "VICE_TOY2_2"}, {2497, "HOBBY_KITE2"}, {2498, "HOBBY_KITE3"},
	{2499, "HOBBY_KITE4"}, {2500, "CJ_FF_COFFEE"}, {2501, "Train_toy_1"}, {2502, "CJ_HOBBY_SHELF_5"},
	{2503, "Train_toy_2"}, {2504, "Train_toy_3"}, {2505, "MODEL_toy_1"}, {2506, "MODEL_toy_2"},
	{2507, "MODEL_toy_3"}, {2508, "MODEL_toy_4"}, {2509, "CJ_HOBBY_SHELF_6"}, {2510, "MODEL_PLANE_BIG2"},
	{2511, "MODEL_PLANE_BIG1"}, {2512, "MODEL_PLANE_BIG3"}, {2513, "MODEL_TRAINS3"}, {2514, "CJ_TOILET1"},
	{2515, "CJ_BS_SINK"}, {2516, "CJ_BATH1"}, {2517, "CJ_SHOWER1"}, {2518, "CJ_B_SINK2"},
	{2519, "CJ_BATH2"}, {2520, "CJ_SHOWER2"}, {2521, "CJ_TOILET2"}, {2522, "CJ_BATH3"},
	{2523, "CJ_B_SINK3"}, {2524, "CJ_B_SINK4"}, {2525, "CJ_TOILET4"}, {2526, "CJ_BATH4"},
	{2527, "CJ_SHOWER4"}, {2528, "CJ_TOILET3"}, {2529, "CJ_OFF2_LIC_2_L"}, {2530, "CJ_OFF2_LIC_2_R"},
	{2531, "CJ_OFF2_LIC_1_M"}, {2532, "CJ_OFF2_LIC_1_R"}, {2533, "CJ_OFF2_LIC_1_L"}, {2534, "CJ_OFF2_LIC_2_M"},
	{2535, "CJ_SS_1_M"}, {2536, "CJ_SS_1_L"}, {2537, "CJ_SS_1_R"}, {2538, "CJ_SS_2_R"},
	{2539, "CJ_SS_2_M"}, {2540, "CJ_SS_2_L"}, {2541, "CJ_SS_3_M"}, {2542, "CJ_SS_3_L"},
	{2543, "CJ_SS_4_M"}, {2544, "CJ_SS_4_L"}, {2545, "CJ_SS_4_R"}, {2546, "CJ_SS_7_M"},
	{2547, "CJ_SS_6_R"}, {2548, "CJ_SS_6_M"}, {2549, "CJ_SS_6_L"}, {2550, "CJ_SS_7_R"},
	{2551, "CJ_SS_7_L"}, {2552, "CJ_SS_8_R"}, {2553, "CJ_SS_8_L"}, {2554, "CJ_SS_8_M"},
	{2555, "CJ_SS_5_M"}, {2556, "CJ_SS_5_L"}, {2557, "CJ_SS_5_R"}, {2558, "CURTAIN_1_CLOSED"},
	{2559, "CURTAIN_1_OPEN"}, {2560, "CURTAIN_2_OPEN"}, {2561, "CURTAIN_2_CLOSED"}, {2562, "Hotel_dresser_2"},
	{2563, "HOTEL_S_BEDSET_1"}, {2564, "HOTEL_D_BEDSET_1"}, {2565, "HOTEL_D_BEDSET_3"}, {2566, "HOTEL_S_BEDSET_3"},
	{2567, "ab_warehouseShelf"}, {2568, "Hotel_dresser_3"}, {2569, "Hotel_dresser_1"}, {2570, "Hotel_dresser_4"},
	{2571, "Hotel_SINGLE_1"}, {2572, "Hotel_SINGLE_2"}, {2573, "Hotel_dresser_6"}, {2574, "Hotel_dresser_5"},
	{2575, "HOTEL_S_BEDSET_8"}, {2576, "Hotel_dresser_8"}, {2577, "CJ_SEX_COUNTER"}, {2578, "CJ_SEX_SHELF_1"},
	{2579, "CJ_SEX_SHELF_2"}, {2580, "SEX_1"}, {2581, "CJ_SEX_V_RACK"}, {2582, "CJ_SEX_VIDEO_1"},
	{2583, "CJ_SEX_VIDEO_2"}, {2584, "CJ_sex_dildo"}, {2585, "CJ_SEX_SHELF_3"}, {2586, "CJ_SEX_COUNTER2"},
	{2587, "SEX_2"}, {2588, "SEX_3"}, {2589, "ab_carcass"}, {2590, "ab_hook"},
	{2591, "ab_partition1"}, {2592, "ab_slotTable"}, {2593, "roleplay_rack"}, {2594, "roleplay_outfits"},
	{2595, "CJ_SHOP_TV_VIDEO"}, {2596, "CJ_SEX_TV"}, {2597, "DILDO_rack1"}, {2598, "DILDO_rack2"},
	{2599, "CJ_SEX_SHOP_SIGN"}, {2600, "CJ_VIEW_TELE"}, {2601, "CJ_JUICE_CAN"}, {2602, "Police_cell_Toilet"},
	{2603, "Police_Cell_Bed"}, {2604, "CJ_POLICE_COUNTER"}, {2605, "POLCE_DESK1"}, {2606, "CJ_POLICE_COUNTER2"},
	{2607, "POLCE_DESK2"}, {2608, "POLCE_SHELF"}, {2609, "CJ_P_FILEING1"}, {2610, "CJ_P_FILEING2"},
	{2611, "POLICE_NB1"}, {2612, "POLICE_NB2"}, {2613, "POLICE_WASTEBIN"}, {2614, "CJ_US_FLAG"},
	{2615, "POLICE_NB3"}, {2616, "POLICE_NB04"}, {2617, "Hotel_SINGLE_3"}, {2618, "CJ_SLOT_PROPg"},
	{2619, "mp_ammoambient"}, {2620, "CJ_TRAINER_ERIS"}, {2621, "CJ_TRAINER_HEAT"}, {2622, "CJ_TRAINER_PRO"},
	{2623, "CJ_PRO_COUNTER"}, {2624, "CJ_SHOE_CORNER01"}, {2625, "CJ_SHOE_URBAN2"}, {2626, "CJ_URB_COUNTER"},
	{2627, "gym_treadmill"}, {2628, "gym_bench2"}, {2629, "gym_bench1"}, {2630, "gym_bike"},
	{2631, "gym_mat1"}, {2632, "gym_mat02"}, {2633, "crack_walkway1"}, {2634, "ab_vaultDoor"},
	{2635, "CJ_PIZZA_TABLE"}, {2636, "CJ_PIZZA_CHAIR"}, {2637, "CJ_PIZZA_TABLE2"}, {2638, "CJ_PIZZA_CHAIR2"},
	{2639, "CJ_PIZZA_CHAIR3"}, {2640, "NEIL_SLOT"}, {2641, "CJ_BURGER_POSTER"}, {2642, "CJ_BURGER_POSTER2"},
	{2643, "CJ_BURGER_POSTER3"}, {2644, "CJ_BURG_TABLE"}, {2645, "CJ_PIZZA_POSTER"}, {2646, "CJ_PIZZA_POSTER2"},
	{2647, "CJ_BS_CUP"}, {2648, "CJ_STEAL_TV"}, {2649, "CJ_aircon2"}, {2650, "CJ_Skate_wall2"},
	{2651, "CJ_Skate_wall1"}, {2652, "CJ_SKATE_CUBES"}, {2653, "CJ_aircon3"}, {2654, "CJ_shoe_box"},
	{2655, "CJ_BANNER1"}, {2656, "CJ_BANNER02"}, {2657, "CJ_BANNER03"}, {2658, "CJ_BANNER04"},
	{2659, "CJ_BANNER05"}, {2660, "CJ_BANNER06"}, {2661, "CJ_BANNER07"}, {2662, "CJ_BANNER08"},
	{2663, "CJ_BS_BAG"}, {2664, "CJ_SUBURB_DOOR"}, {2665, "CJ_FF_LIST04"}, {2666, "CJ_PIZ_POSTER2"},
	{2667, "CJ_PIZ_POSTER1"}, {2668, "CJ_PIZ_POSTER3"}, {2669, "CJ_CHRIS_CRATE"}, {2670, "PROC_RUBBISH_1"},
	{2671, "PROC_RUBBISH_3"}, {2672, "PROC_RUBBISH_4"}, {2673, "PROC_RUBBISH_5"}, {2674, "PROC_RUBBISH_2"},
	{2675, "PROC_RUBBISH_6"}, {2676, "PROC_RUBBISH_8"}, {2677, "PROC_RUBBISH_7"}, {2678, "CJ_CHRIS_CRATE_LD"},
	{2679, "CJ_CHRIS_CRATE_RD"}, {2680, "CJ_Padlock"}, {2681, "CJ_COIN_OP"}, {2682, "PIZZA_MENU"},
	{2683, "PIZZA_S_P"}, {2684, "CJ_food_post"}, {2685, "CJ_food_post1"}, {2686, "CJ_food_post2"},
	{2687, "CJ_food_post3"}, {2688, "CJ_food_post4"}, {2689, "CJ_HOODIE_2"}, {2690, "CJ_FIRE_EXT"},
	{2691, "CJ_BANNER09"}, {2692, "CJ_BANNER10"}, {2693, "CJ_BANNER11"}, {2694, "CJ_shoe_box2"},
	{2695, "CJ_BANNER12"}, {2696, "CJ_BANNER13"}, {2697, "CJ_BANNER14"}, {2698, "CJ_DUDS_RAIL01"},
	{2699, "CJ_DUDS_RAIL02"}, {2700, "CJ_SEX_TV2"}, {2701, "CJ_PRO_LIGHT"}, {2702, "CJ_PIZZA_1"},
	{2703, "CJ_BURG_1"}, {2704, "CJ_HOODIE_3"}, {2705, "CJ_HOODIE_04"}, {2706, "CJ_HOODIE_05"},
	{2707, "CJ_LIGHT_FIT"}, {2708, "ZIP_SHELF1"}, {2709, "Pain_Killer"}, {2710, "WATCH_PICKUP"},
	{2711, "Tatoo_needle"}, {2712, "CJ_MOP"}, {2713, "cj_bucket"}, {2714, "CJ_OPEN_SIGN_2"},
	{2715, "CJ_DON_POSTER"}, {2716, "CJ_DON_POSTER3"}, {2717, "CJ_DON_POSTER2"}, {2718, "CJ_FLY_KILLER"},
	{2719, "CJ_BANNER15"}, {2720, "CJ_BANNER16"}, {2721, "CJ_BANNER17"}, {2722, "CJ_BANNER18"},
	{2723, "LM_stripStool"}, {2724, "LM_stripChair"}, {2725, "LM_stripTable"}, {2726, "LM_stripLamp"},
	{2727, "DS_SIGN"}, {2728, "DS_BACKLIGHT"}, {2729, "CJ_BINC_POST3"}, {2730, "CJ_BINC_POST2"},
	{2731, "CJ_BINC_POST"}, {2732, "CJ_ZIP_POST_2"}, {2733, "CJ_ZIP_POST_1"}, {2734, "CJ_ZIP_POST_3"},
	{2735, "CJ_ZIP_POST_4"}, {2736, "CJ_ZIP_POST_05"}, {2737, "POLICE_NB_car"}, {2738, "CJ_TOILET_BS"},
	{2739, "CJ_B_SINK1"}, {2740, "cj_bs_light"}, {2741, "CJ_SOAP_DISP"}, {2742, "CJ_HANDDRIER"},
	{2743, "CJ_STAT_1"}, {2744, "CJ_STAT_2"}, {2745, "CJ_STAT_3"}, {2746, "CJ_DONUT_CHAIR"},
	{2747, "CJ_donut_TABLE"}, {2748, "CJ_DONUT_CHAIR2"}, {2749, "CJ_hairspray"}, {2750, "CJ_hair_dryer"},
	{2751, "CJ_hairsCREAM"}, {2752, "CJ_hairspray2"}, {2753, "CJ_FF_TILL_que"}, {2754, "OTB_machine"},
	{2755, "Dojo_Wall"}, {2756, "CJ_S1_base"}, {2757, "CJ_S1_Larm"}, {2758, "CJ_S1_Rarm"},
	{2759, "CJ_S1_Head"}, {2760, "CJ_S1_torso"}, {2761, "CJ_S1_legs"}, {2762, "CJ_CHICK_TABLE"},
	{2763, "CJ_CHICK_TABLE_2"}, {2764, "CJ_PIZZA_TABLE03"}, {2765, "CJ_CB_LIST1"}, {2766, "CJ_CB_LIST2"},
	{2767, "CJ_CB_TRAY"}, {2768, "CJ_CB_BURG"}, {2769, "CJ_CJ_BURG2"}, {2770, "CJ_CB_BIN"},
	{2771, "CJ_OTB_TILL_Q"}, {2772, "CJ_esculator"}, {2773, "CJ_AIRPRT_BAR"}, {2774, "CJ_AIRP_PILLARS"},
	{2775, "CJ_AIRPRT_MON"}, {2776, "LEE_stripCHAIR2"}, {2777, "LEE_stripCHAIR1"}, {2778, "CJ_COIN_OP_1"},
	{2779, "CJ_COIN_OP_2"}, {2780, "CJ_SMOKE_MACH"}, {2781, "CJ_AIR_TICKET"}, {2782, "CJ_OYSTER_2"},
	{2783, "cj_bandit_6"}, {2784, "ab_slotTable6"}, {2785, "CJ_SLOT_BANK"}, {2788, "CJ_BURG_CHAIR"},
	{2789, "CJ_DEPART_BOARD"}, {2790, "CJ_ARRIVE_BOARD"}, {2791, "CJ_index_BOARD"}, {2792, "CJ_AIR_D_1"},
	{2793, "CJ_AIR_D_2"}, {2794, "CJ_AIR_D_3"}, {2795, "CJ_AIR_D_4"}, {2796, "CJ_AIR_D_6"},
	{2797, "CJ_AIR_D_5"}, {2798, "CJ_EX_PEDALS"}, {2799, "castable2"}, {2800, "castable2top"},
	{2801, "castable1top"}, {2802, "castable1"}, {2803, "CJ_MEAT_BAG_1"}, {2804, "CJ_MEAT_1"},
	{2805, "CJ_MEAT_BAG_2"}, {2806, "CJ_MEAT_2"}, {2807, "CJ_BURG_CHAIR_NA"}, {2808, "CJ_PIZZA_CHAIR4"},
	{2809, "CJ_STAT_1_BIT"}, {2810, "CJ_STAT_2_bit"}, {2811, "GB_romanpot01"}, {2812, "GB_platedirty01"},
	{2813, "GB_novels01"}, {2814, "GB_takeaway01"}, {2815, "gb_livingrug01"}, {2816, "gb_bedmags01"},
	{2817, "gb_bedrug01"}, {2818, "gb_bedrug02"}, {2819, "gb_bedclothes01"}, {2820, "GB_kitchdirt01"},
	{2821, "gb_foodwrap01"}, {2822, "GB_kitchplatecln01"}, {2823, "gb_kitchtakeway01"}, {2824, "GB_novels02"},
	{2825, "GB_novels03"}, {2826, "GB_novels04"}, {2827, "GB_novels05"}, {2828, "gb_ornament02"},
	{2829, "GB_platedirty02"}, {2830, "GB_platedirty04"}, {2831, "GB_platedirty03"}, {2832, "GB_platedirty05"},
	{2833, "gb_livingrug02"}, {2834, "gb_livingrug03"}, {2835, "gb_livingrug04"}, {2836, "gb_livingrug05"},
	{2837, "GB_takeaway02"}, {2838, "GB_takeaway03"}, {2839, "GB_takeaway04"}, {2840, "GB_takeaway05"},
	{2841, "gb_bedrug03"}, {2842, "gb_bedrug04"}, {2843, "gb_bedclothes02"}, {2844, "gb_bedclothes03"},
	{2845, "gb_bedclothes04"}, {2846, "gb_bedclothes05"}, {2847, "gb_bedrug05"}, {2848, "GB_kitchdirt02"},
	{2849, "GB_kitchdirt03"}, {2850, "GB_kitchdirt04"}, {2851, "GB_kitchdirt05"}, {2852, "gb_bedmags02"},
	{2853, "gb_bedmags03"}, {2854, "gb_bedmags04"}, {2855, "gb_bedmags05"}, {2856, "gb_foodwrap02"},
	{2857, "gb_kitchtakeway02"}, {2858, "gb_kitchtakeway03"}, {2859, "gb_kitchtakeway04"}, {2860, "gb_kitchtakeway05"},
	{2861, "gb_foodwrap03"}, {2862, "GB_kitchplatecln02"}, {2863, "GB_kitchplatecln03"}, {2864, "GB_kitchplatecln04"},
	{2865, "GB_kitchplatecln05"}, {2866, "gb_foodwrap04"}, {2867, "gb_foodwrap05"}, {2868, "gb_ornament03"},
	{2869, "gb_ornament04"}, {2870, "gb_ornament05"}, {2871, "CJ_SS_3_R"}, {2872, "CJ_COIN_OP_3"},
	{2873, "CJ_SUBURB_DOOR_2"}, {2874, "CJ_SLUSH_CUPDUM"}, {2875, "CJ_GAP_DOOR_"}, {2876, "CJ_PRO_DOOR_01"},
	{2877, "CJ_BINCO_DOOR"}, {2878, "CJ_Victim_DOOR"}, {2879, "CJ_DS_DOOR"}, {2880, "CJ_BURG_2"},
	{2881, "CJ_PIZZA_2"}, {2882, "Object01"}, {2885, "xref_garagedoor"}, {2886, "sec_keypad"},
	{2887, "a51_spotbulb"}, {2888, "a51_spothousing"}, {2889, "a51_spotbase"}, {2890, "kmb_skip"},
	{2891, "kmb_packet"}, {2892, "temp_stinger"}, {2893, "kmb_ramp"}, {2894, "kmb_rhymesbook"},
	{2895, "fun_flower_law"}, {2896, "casket_law"}, {2897, "funtarp_law"}, {2898, "funturf_law"},
	{2899, "temp_stinger2"}, {2900, "temp_cardbox"}, {2901, "kmb_marijuana"}, {2902, "kmb_smokecan"},
	{2903, "kmb_parachute"}, {2904, "warehouse_door1"}, {2905, "kmb_deadleg"}, {2906, "kmb_deadarm"},
	{2907, "kmb_deadtorso"}, {2908, "kmb_deadhead"}, {2909, "kmb_frontgate"}, {2910, "temp_road"},
	{2911, "kmb_petroldoor"}, {2912, "temp_crate1"}, {2913, "kmb_bpress"}, {2914, "kmb_rcflag"},
	{2915, "kmb_dumbbell2"}, {2916, "kmb_dumbbell"}, {2917, "a51_crane"}, {2918, "kmb_mine"},
	{2919, "kmb_holdall"}, {2920, "police_barrier"}, {2921, "kmb_cam"}, {2922, "kmb_keypad"},
	{2923, "bottle_bank"}, {2924, "kmb_crash3door"}, {2925, "dyno_box_B"}, {2926, "dyno_box_A"},
	{2927, "a51_blastdoorR"}, {2928, "a51_intdoor"}, {2929, "a51_blastdoorL"}, {2930, "chinaTgate"},
	{2931, "kmb_jump1"}, {2932, "kmb_container_blue"}, {2933, "pol_comp_gate"}, {2934, "kmb_container_red"},
	{2935, "kmb_container_yel"}, {2936, "kmb_rock"}, {2937, "kmb_plank"}, {2938, "shutter_vegas"},
	{2939, "ramp_bot"}, {2940, "ramp_top"}, {2941, "temp_till"}, {2942, "kmb_atm1"},
	{2943, "kmb_atm2"}, {2944, "freight_SFW_door"}, {2945, "kmb_netting"}, {2946, "cr_door_03"},
	{2947, "cr_door_01"}, {2948, "cr_door_02"}, {2949, "kmb_lockeddoor"}, {2950, "BREAK_WALL_2A"},
	{2951, "a51_labdoor"}, {2952, "kmb_gimpdoor"}, {2953, "kmb_paper_code"}, {2954, "kmb_ot"},
	{2955, "imy_compin"}, {2956, "immmcran"}, {2957, "chinaTgarageDoor"}, {2958, "cutscene_beer"},
	{2959, "rider1_door"}, {2960, "kmb_beam"}, {2961, "fire_break"}, {2962, "fire_break_glass"},
	{2963, "freezer_door"}, {2964, "k_pooltablesm"}, {2965, "k_pooltriangle01"}, {2966, "mobile1993b"},
	{2967, "mobile1993a"}, {2968, "cm_box"}, {2969, "level_ammobox"}, {2970, "dts_bbdoor"},
	{2971, "k_smashboxes"}, {2972, "k_cargo4"}, {2973, "k_cargo2"}, {2974, "k_cargo1"},
	{2975, "k_cargo3"}, {2976, "green_gloop"}, {2977, "kmilitary_crate"}, {2978, "kmilitary_base"},
	{2979, "reel02"}, {2980, "kb_bandit10"}, {2981, "reel03"}, {2982, "reel01"},
	{2983, "will_valve"}, {2984, "portaloo"}, {2985, "minigun_base"}, {2986, "lxr_motelvent"},
	{2987, "lxr_motel_doorsim"}, {2988, "comp_wood_gate"}, {2989, "imy_skylight"}, {2990, "wongs_gate"},
	{2991, "imy_bbox"}, {2992, "roulette_marker"}, {2993, "kmb_goflag"}, {2994, "kmb_trolley"},
	{2995, "k_poolballstp01"}, {2996, "k_poolballstp02"}, {2997, "k_poolballstp03"}, {2998, "k_poolballstp04"},
	{2999, "k_poolballstp05"}, {3000, "k_poolballstp06"}, {3001, "k_poolballstp07"}, {3002, "k_poolballspt01"},
	{3003, "k_poolballcue"}, {3004, "k_poolq2"}, {3005, "smash_box_stay"}, {3006, "smash_box_brk"},
	{3007, "chopcop_torso"}, {3008, "chopcop_armR"}, {3009, "chopcop_armL"}, {3010, "chopcop_legR"},
	{3011, "chopcop_legL"}, {3012, "chopcop_head"}, {3013, "cr_ammobox"}, {3014, "cr_guncrate"},
	{3015, "cr_cratestack"}, {3016, "cr_ammobox_nonbrk"}, {3017, "arch_plans"}, {3018, "target_rleg"},
	{3019, "target_lleg"}, {3020, "target_ltorso"}, {3021, "target_rtorso"}, {3022, "target_rarm"},
	{3023, "target_larm"}, {3024, "target_head"}, {3025, "target_frame"}, {3026, "para_pack"},
	{3027, "ciggy"}, {3028, "Katana_LHand"}, {3029, "cr1_door"}, {3030, "wongs_erection"},
	{3031, "wong_dish"}, {3032, "bd_window_shatter"}, {3033, "md_lockdoor"}, {3034, "bd_window"},
	{3035, "tmp_bin"}, {3036, "ct_gatexr"}, {3037, "warehouse_door2b"}, {3038, "ct_lanterns"},
	{3039, "ct_stall1"}, {3040, "ct_stall2"}, {3041, "ct_table"}, {3042, "ct_vent"},
	{3043, "kmb_container_open"}, {3044, "CIGAR"}, {3045, "CIGAR_glow"}, {3046, "kb_barrel"},
	{3047, "jet_baggage_Door"}, {3048, "cement_in_hole"}, {3049, "des_quarrygate"}, {3050, "des_quarrygate2"},
	{3051, "lift_dr"}, {3052, "db_ammo"}, {3053, "INDUS_MAGNET"}, {3054, "DYN_WREKING_BALL"},
	{3055, "kmb_shutter"}, {3056, "mini_magnet"}, {3057, "kb_barrel_exp"}, {3058, "storm_drain_cover"},
	{3059, "imy_shash_wall"}, {3060, "para_collision"}, {3061, "ad_flatdoor"}, {3062, "container_door"},
	{3063, "BREAK_WALL_3A"}, {3064, "BREAK_WALL_1A"}, {3065, "BBALL_col"}, {3066, "ammotrn_obj"},
	{3067, "kmb_atm3"}, {3068, "cargo_rear"}, {3069, "d9_ramp"}, {3070, "kmb_goggles"},
	{3071, "kmb_dumbbell_R"}, {3072, "kmb_dumbbell_L"}, {3073, "kmb_container_broke"}, {3074, "d9_runway"},
	{3075, "impexp_door"}, {3076, "ad_roadmark1"}, {3077, "nf_blackboard"}, {3078, "ad_finish"},
	{3079, "ad_roadmark2"}, {3080, "ad_jump"}, {3081, "fake_mule_col"}, {3082, "ammo_capsule"},
	{3083, "md_poster"}, {3084, "trdcsgrgdoor_lvs"}, {3085, "nf_list_1"}, {3086, "wanted_cross_off"},
	{3087, "nf_list_2"}, {3088, "nf_list_3"}, {3089, "ab_casdorLok"}, {3090, "nf_ped_coll"},
	{3091, "imy_track_barrier"}, {3092, "dead_tied_cop"}, {3093, "cuntgirldoor"}, {3094, "k_pooltableb"},
	{3095, "a51_jetdoor"}, {3096, "bb_pickup"}, {3097, "BREAK_WALL_2B"}, {3098, "BREAK_WALL_1B"},
	{3099, "BREAK_WALL_3B"}, {3100, "k_poolballspt02"}, {3101, "k_poolballspt03"}, {3102, "k_poolballspt04"},
	{3103, "k_poolballspt05"}, {3104, "k_poolballspt06"}, {3105, "k_poolballspt07"}, {3106, "k_poolball8"},
	{3107, "wongs_erection2"}, {3108, "basejump_target"}, {3109, "imy_la_door"}, {3110, "md_billbolaeb"},
	{3111, "st_arch_plan"}, {3112, "TriMainLite"}, {3113, "CARRIER_DOOR_SFSE"}, {3114, "CARRIER_LIFT2_SFSE"},
	{3115, "CARRIER_LIFT1_SFSE"}, {3116, "acwinch1"}, {3117, "a51_ventcoverb"}, {3119, "cs_ry_props"},
	{3120, "BBALL_ingame"}, {3121, "munch_donut"}, {3122, "k_poolq"}, {3123, "Katana_Anim"},
	{3124, "Sniper_Anim"}, {3125, "Wd_Fence_Anim"}, {3126, "TATTOO_KIT"}, {3127, "BD_Fire1_o"},
	{3128, "BBALL_Net"}, {3129, "Smlplane_door"}, {3130, "MTSafe"}, {3131, "PARACHUTE"},
	{3132, "jet_door"}, {3133, "pedals"}, {3134, "quarry_barrel"}, {3135, "cat2_safe_col"},
	{3167, "trailer_large1_01"}, {3168, "trailer2_01"}, {3169, "trailer_large2_01"}, {3170, "trailer_large3_01"},
	{3171, "trailer5_01"}, {3172, "trailer6_01"}, {3173, "trailer_large4_01"}, {3174, "sm_airstrm_sml_"},
	{3175, "sm_airstrm_med_"}, {3178, "Shack02"}, {3187, "nt_gasstation"}, {3193, "st5base"},
	{3214, "quarry_crusher"}, {3221, "drv_in_spkrs"}, {3241, "conhoos2"}, {3242, "conhoos1"},
	{3243, "tepee_room_"}, {3244, "pylon_big1_"}, {3246, "des_westrn7_"}, {3249, "des_westsaloon_"},
	{3250, "des_westrn9_"}, {3252, "des_oldwattwr_"}, {3253, "des_westrn11_"}, {3255, "ref_oiltank01"},
	{3256, "refchimny01"}, {3257, "refinerybox1"}, {3258, "refthinchim1"}, {3259, "refcondens1"},
	{3260, "oldwoodpanel"}, {3261, "grasshouse"}, {3262, "privatesign1"}, {3263, "privatesign2"},
	{3264, "privatesign3"}, {3265, "privatesign4"}, {3267, "mil_samsite"}, {3268, "mil_hangar1_"},
	{3269, "bonyrd_block1_"}, {3270, "bonyrd_block2_"}, {3271, "bonyrd_block3_"}, {3272, "substa_transf1_"},
	{3273, "substa_transf2_"}, {3274, "substa_grid_"}, {3275, "cxreffence"}, {3276, "cxreffencesld"},
	{3277, "mil_sambase"}, {3278, "des_warewin"}, {3279, "a51_spottower"}, {3280, "a51_panel"},
	{3281, "mtb_banner1"}, {3282, "cxreffencemsh"}, {3283, "conhoos3"}, {3284, "conhoos5"},
	{3285, "conhoos4"}, {3286, "cxrf_watertwr"}, {3287, "cxrf_oiltank"}, {3292, "cxf_payspray_"},
	{3293, "des_payspint"}, {3294, "cxf_spraydoor1"}, {3302, "cxrf_corpanel"}, {3303, "des_bighus03"},
	{3304, "des_bighus02"}, {3305, "des_bighus01"}, {3306, "swburbhaus02"}, {3307, "swburbhaus01"},
	{3308, "swburbhaus03"}, {3309, "swburbhaus04"}, {3310, "sw_woodhaus04"}, {3311, "sw_woodhaus01a"},
	{3312, "sw_woodhaus02"}, {3313, "sw_woodhaus03"}, {3314, "sw_bigburb_04"}, {3315, "sw_bigburb_03"},
	{3316, "sw_bigburb_02"}, {3317, "sw_bigburb_01"}, {3330, "cxrf_brigleg"}, {3331, "cxrf_whitebrig"},
	{3334, "BIG_COCK_SIGN"}, {3335, "CE_roadsign1"}, {3336, "cxrf_frway1sig"}, {3337, "cxrf_desertsig"},
	{3350, "torino_mic"}, {3351, "sw_bigburbsave"}, {3352, "burbdoorRENAME_ME"}, {3353, "sw_bigburbsave2"},
	{3354, "burbdoor2REF"}, {3355, "cxrf_savhus1_"}, {3356, "cxrf_savhus2_"}, {3359, "cxrf_savhusgar1_"},
	{3361, "cxref_woodstair"}, {3362, "des_ruin2_"}, {3363, "des_ruin1_"}, {3364, "des_ruin3_"},
	{3374, "SW_haybreak02"}, {3375, "CE_dblbarn01"}, {3378, "CE_beerpile01"}, {3379, "CE_hairpinR"},
	{3380, "CE_hairpinL"}, {3381, "cxrf_redarch"}, {3383, "a51_labtable1_"}, {3384, "a51_halbox_"},
	{3385, "a51_light1_"}, {3386, "a51_srack2_"}, {3387, "a51_srack3_"}, {3388, "a51_srack4_"},
	{3389, "a51_srack1_"}, {3390, "a51_sdsk_ncol1_"}, {3391, "a51_sdsk_ncol2_"}, {3392, "a51_sdsk_ncol3_"},
	{3393, "a51_sdsk_ncol4_"}, {3394, "a51_sdsk_2_"}, {3395, "a51_sdsk_3_"}, {3396, "a51_sdsk_4_"},
	{3397, "a51_sdsk_1_"}, {3398, "cxrf_floodlite_"}, {3399, "cxrf_a51_stairs"}, {3400, "cxrf_a51sect"},
	{3401, "cxrf_a51sect2"}, {3402, "sw_tempbarn01"}, {3403, "sw_logcover"}, {3406, "cxref_woodjetty"},
	{3407, "CE_mailbox1"}, {3408, "CE_mailbox2"}, {3409, "grassplant"}, {3410, "cxrf_Aldea"},
	{3411, "cunteRB01"}, {3412, "cunteRB03"}, {3414, "CE_oldhut1"}, {3415, "CE_loghut1"},
	{3417, "CE_loghut02"}, {3418, "CE_oldhut02"}, {3419, "CE_logbarn02"}, {3425, "nt_windmill"},
	{3426, "nt_noddonkbase"}, {3427, "derrick01"}, {3428, "oilplodbitbase"}, {3430, "vegasbooth01"},
	{3431, "vgsclubox01"}, {3432, "htlcnpy02_lvs"}, {3433, "htlcnpy01_lvs"}, {3434, "skllsgn01_lvs"},
	{3435, "motel01sgn_lvs"}, {3436, "motel03_lvs"}, {3437, "ballypllr01_lvs"}, {3438, "ballyring01_lvs"},
	{3439, "aprtree01_lvs"}, {3440, "arptpillar01_lvs"}, {3441, "luxorpillar02_lvs"}, {3442, "vegasxrexhse1"},
	{3443, "vegasxrexhse2"}, {3444, "shabbyhouse02_lvs"}, {3445, "vegasxrexhse08"}, {3446, "vegasxrexhse10"},
	{3447, "vgstlgraphpole"}, {3448, "shamcprkin"}, {3449, "vegashsenew1"}, {3450, "vegashseplot1"},
	{3451, "vegashsenew2"}, {3452, "bballintvgn1"}, {3453, "bballintvgn2"}, {3454, "vgnhseing15"},
	{3455, "vgnhseblk1"}, {3456, "vgnhseblk3"}, {3457, "vgnhseblk2"}, {3458, "vgncarshade1"},
	{3459, "vgntelepole1"}, {3460, "vegaslampost"}, {3461, "tikitorch01_lvs"}, {3462, "csrangel_lvs"},
	{3463, "vegaslampost2"}, {3464, "shabbyhouse03_lvs"}, {3465, "vegspetrolpump"}, {3466, "shabbyhouse01_lvs"},
	{3467, "vegstreetsign1"}, {3468, "vegstreetsign2"}, {3469, "vegenmotel1"}, {3470, "vegasaircon1"},
	{3471, "vgschinalion1"}, {3472, "circuslampost03"}, {3473, "vegenmotel12"}, {3474, "Freightcrane1"},
	{3475, "vgsn_fncelec_pst"}, {3483, "vegasxrexhse09"}, {3484, "vegasxrexhse03"}, {3485, "vegasxrexhse04"},
	{3486, "vegasxrexhse05"}, {3487, "vegasxrexhse06"}, {3488, "vegasxrexhse07"}, {3489, "HANGAR1_08_LVS"},
	{3491, "vegasS_hanger2"}, {3493, "vgsn_carpark01"}, {3494, "luxorpillar04_lvs"}, {3496, "vgsxrefbballnet"},
	{3497, "vgsxrefbballnet2"}, {3498, "wdpillar01_lvs"}, {3499, "wdpillar02_lvs"}, {3501, "vgsxrefpartm1"},
	{3502, "vgsN_con_tube"}, {3503, "vgsNscffple"}, {3504, "vgsN_portaloo"}, {3505, "VgsN_nitree_y01"},
	{3506, "VgsN_nitree_y02"}, {3507, "VgsN_nitree_g01"}, {3508, "VgsN_nitree_g02"}, {3509, "VgsN_nitree_r01"},
	{3510, "VgsN_nitree_r02"}, {3511, "VgsN_nitree_b01"}, {3512, "VgsN_nitree_b02"}, {3513, "vgs_roadsign1"},
	{3514, "vgs_roadsign02"}, {3515, "vgsfountain"}, {3516, "vgsstriptlights1"}, {3517, "ceasertree02_lvs"},
	{3518, "vgsN_rooflity"}, {3519, "vgsN_rooflitb"}, {3520, "vgsN_flwrbdsm"}, {3521, "vgsn_RBStiff"},
	{3522, "vgsn_flwbdcrb"}, {3524, "skullpillar01_lvs"}, {3525, "exbrtorch01"}, {3526, "vegasairportlight"},
	{3528, "vgsEdragon"}, {3529, "vgsN_constrbeam"}, {3530, "vgsN_constrbeam2"}, {3531, "trdflwrbedq"},
	{3532, "triadbush"}, {3533, "trdpillar01"}, {3534, "trdlamp01"}, {3550, "vgsn_fncelec_msh"},
	{3554, "visagesign04"}, {3555, "compmedhos2_LAe"}, {3556, "compmedhos3_LAe"}, {3557, "compmedhos4_LAe"},
	{3558, "compmedhos5_LAe"}, {3564, "lastran1_LA01"}, {3565, "lasdkrt1_LA01"}, {3566, "lasntrk1"},
	{3567, "lasnfltrail"}, {3568, "lasntrk2"}, {3569, "lasntrk3"}, {3570, "lasdkrt2"},
	{3571, "lasdkrt3"}, {3572, "lasdkrt4"}, {3573, "lasdkrtgrp1"}, {3574, "lasdkrtgrp2"},
	{3575, "lasdkrt05"}, {3576, "DockCrates2_LA"}, {3577, "DockCrates1_LA"}, {3578, "DockBarr1_LA"},
	{3580, "compbigho2_LAe"}, {3582, "compmedhos1_LAe"}, {3583, "compbigho3_LAe"}, {3584, "compproj01_LA"},
	{3585, "lastran1_LA02"}, {3586, "escl_LA"}, {3587, "nwsnpedhus1_LAS"}, {3588, "sanped_hse1_LAs"},
	{3589, "compfukhouse3"}, {3590, "compfukhouse2"}, {3593, "la_fuckcar2"}, {3594, "la_fuckcar1"},
	{3595, "Dingbat01Aex_LA"}, {3596, "Dingbat02Aex_LA"}, {3597, "Dingbat01Bex_LA"}, {3598, "hillhouse01_LA"},
	{3599, "hillhouse02_LA"}, {3600, "hillhouse06_LA"}, {3601, "hillhouse04_LA"}, {3602, "hillhouse05_LA"},
	{3603, "bevman_LAW2"}, {3604, "bevmangar_LAW2"}, {3605, "bevman3_LAW2"}, {3606, "bevbrkhus1"},
	{3607, "bevman2_LAW2"}, {3608, "hillhouse08_LA"}, {3609, "hillhouse13_LA"}, {3612, "hillhouse12_LA"},
	{3613, "hillhouse10_LA"}, {3614, "hillhouse09_LA"}, {3615, "sanmonbhut1_LAW2"}, {3616, "midranhus2_LAS"},
	{3617, "midranhus_LAS"}, {3618, "nwlaw2husjm3_Law2"}, {3619, "nwlaw2husjm4_Law2"}, {3620, "redockrane_LAS"},
	{3621, "rbigcrate_LAS"}, {3622, "rdwarhus"}, {3623, "rdwarhus2"}, {3624, "nwwarhus"},
	{3625, "crgostntrmp"}, {3626, "dckwrkhut"}, {3627, "dckcanpy"}, {3628, "smallprosjmt_LAS"},
	{3629, "arhang_LAS"}, {3630, "crdboxes2_LAs"}, {3631, "oilcrat_LAS"}, {3632, "imoildrum_LAS"},
	{3633, "imoildrum4_LAS"}, {3634, "nwccumphus1_LAS"}, {3635, "nwccumphus2_LAS"}, {3636, "indust1las_LAS"},
	{3637, "indust1las2_LAS"}, {3638, "elecstionv_LAS"}, {3639, "GlenPHouse01_LAx"}, {3640, "GlenPHouse02_LAx"},
	{3641, "GlenPHouse04_LAx"}, {3642, "GlenPHouse03_LAx"}, {3643, "LA_chem_piping"}, {3644, "idlebuild01_LAx"},
	{3646, "ganghous05_LAx"}, {3648, "ganghous02_LAx"}, {3649, "ganghous01_LAx"}, {3651, "ganghous04_LAx"},
	{3653, "BeachApartA1_LAx"}, {3655, "ganghous03_LAx"}, {3657, "airseata_LAS"}, {3658, "airlastrola_LAS"},
	{3659, "airfinfoa_LAS"}, {3660, "lasairfbed_LAS"}, {3661, "projects01_LAx"}, {3663, "lasstepsa_LAS"},
	{3664, "lasblastde_LAS"}, {3665, "airyelrm_LAS"}, {3666, "airuntest_las"}, {3671, "centuBal01_LAx"},
	{3673, "laxrf_refinerybase"}, {3674, "laxrf_refineryalpha"}, {3675, "laxrf_refinerypipe"}, {3676, "lawnhouseredA"},
	{3677, "lawnhousegreyLS"}, {3678, "lawnhousegreyRS"}, {3684, "Lawnapartmnt"}, {3689, "rdwarhusbig"},
	{3694, "ryder_holes"}, {3697, "project2lae2"}, {3698, "barrio3B_LAe"}, {3700, "DrugDealHs1_LAe"},
	{3702, "barrio6B_LAe2"}, {3704, "barrio6a_LAe2"}, {3707, "rdwarhusmed"}, {3711, "BeachApartA5b"},
	{3713, "BeachApartA5a"}, {3715, "Arch_sign"}, {3717, "sanclifbal1_LAx"}, {3722, "laxrf_scrapbox"},
	{3724, "laxrf_cargotop"}, {3741, "CEhillhse14"}, {3743, "escl_SingleLA"}, {3749, "ClubGate01_LAx"},
	{3752, "ferseat01_LAx"}, {3753, "dockwall_LAS2"}, {3754, "lamotsig1_LA"}, {3755, "las2warhus_las2"},
	{3757, "lamotsig2_LA"}, {3759, "vencanhou01_LAx"}, {3761, "industshelves"}, {3762, "CEnwlaw4"},
	{3763, "CE_radarmast3"}, {3764, "TCEnewhillhus02"}, {3765, "TCEmulhouse04_Law01"}, {3771, "CEhillhse14_alpha"},
	{3776, "ci_bstage"}, {3781, "Lan2officeflrs"}, {3783, "LAs2Xref01_LAx"}, {3785, "bulkheadlight"},
	{3786, "missile_05_SFXR"}, {3787, "missile_02_SFXR"}, {3788, "missile_03_SFXR"}, {3789, "missile_09_SFXR"},
	{3790, "missile_01_SFXR"}, {3791, "missile_10_SFXR"}, {3792, "missile_08_SFXR"}, {3793, "missile_06_SFXR"},
	{3794, "missile_07_SFXR"}, {3795, "missile_04_SFXR"}, {3796, "acbox1_SFS"}, {3797, "missile_11_SFXR"},
	{3798, "acbox3_SFS"}, {3799, "acbox2_SFS"}, {3800, "acbox4_SFS"}, {3801, "sfx_lite04"},
	{3802, "sfx_plant03"}, {3803, "sfx_alarms03"}, {3804, "sfxref_aircon11"}, {3805, "sfxref_aircon12"},
	{3806, "sfx_winplant07"}, {3807, "sfx_flag02"}, {3808, "sfx_alarms04"}, {3809, "sfx_lite05"},
	{3810, "sfx_plant04"}, {3811, "sfx_winplant08"}, {3812, "sfxref_aircon13"}, {3813, "sfxref_aircon14"},
	{3814, "hangar1_SFXREF"}, {3816, "bighangar1_SFx"}, {3818, "sf_frwaysig"}, {3819, "bleacher_SFSx"},
	{3820, "box_hse_09_SFXRF"}, {3821, "box_hse_02_SFXRF"}, {3822, "box_hse_03_SFXRF"}, {3823, "box_hse_11_SFXRF"},
	{3824, "box_hse_10_SFXRF"}, {3825, "box_hse_01_SFXRF"}, {3826, "box_hse_06_SFXRF"}, {3827, "box_hse_07_SFXRF"},
	{3828, "box_hse_05_SFXRF"}, {3829, "box_hse_04_SFXRF"}, {3830, "box_hse_08_SFXRF"}, {3842, "box_hse_14_SFXRF"},
	{3843, "box_hse_12_SFXRF"}, {3844, "box_hse_15_SFXRF"}, {3845, "box_hse_13_SFXRF"}, {3850, "carshowbann_SFSX"},
	{3851, "carshowwin_SFSX"}, {3852, "sf_jump"}, {3853, "Gay_lamppost"}, {3854, "GAY_telgrphpole"},
	{3855, "GAY_TRAFFIC_LIGHT"}, {3856, "sf_frwaysig_half"}, {3857, "ottosmash3"}, {3858, "ottosmash1"},
	{3859, "ottosmash04"}, {3860, "marketstall04_SFXRF"}, {3861, "marketstall01_SFXRF"}, {3862, "marketstall02_SFXRF"},
	{3863, "marketstall03_SFXRF"}, {3864, "WS_floodlight"}, {3865, "concpipe_SFXRF"}, {3866, "demolish1_SFXRF"},
	{3867, "ws_scaffolding_SFX"}, {3872, "WS_floodbeams"}, {3873, "Silicon04_SFS"}, {3875, "SFtelepole"},
	{3876, "sf_roofmast"}, {3877, "sf_rooflite"}, {3878, "headstones_SFSx"}, {3879, "ws_jetty_SFX"},
	{3881, "airsecbooth_SFSe"}, {3882, "airsecboothint_SFSe"}, {3884, "samsite_SFXRF"}, {3885, "sambase_SFXRF"},
	{3886, "ws_jettynol_SFX"}, {3887, "demolish4_SFXRF"}, {3890, "lib_street09"}, {3891, "lib_street08"},
	{3892, "lib_street10"}, {3893, "lib_street05"}, {3894, "lib_street11"}, {3895, "lib_street14"},
	{3897, "lib_street03"}, {3898, "lib_street15"}, {3899, "lib_street04"}, {3900, "lib_street12"},
	{3902, "lib_street16"}, {3903, "lib_street07"}, {3905, "lib_street02"}, {3906, "lib_street01"},
	{3907, "lib_street06"}, {3910, "trackshad05"}, {3911, "lib_street13"}, {3914, "snowover02"},
	{3915, "snowover03"}, {3916, "snowover04"}, {3917, "lib_street17"}, {3918, "snowover01"},
	{3919, "lib_main_bistrotop"}, {3920, "lib_veg3"}, {3921, "lib_counchs"}, {3922, "rest_chair2"},
	{3923, "libstreetfar"}, {3924, "playroom"}, {3925, "bridge_1"}, {3926, "d_sign"},
	{3927, "d_sign01"}, {3928, "helipad"}, {3929, "d_rock"}, {3930, "d_rock01"},
	{3931, "d_rock02"}, {3932, "hanger"}, {3933, "fake_sky"}, {3934, "helipad01"},
	{3935, "statue"}, {3936, "bwire_fence"}, {3937, "bwire_fence01"}, {3938, "rczero4_base01"},
	{3939, "hanger01"}, {3940, "comms01"}, {3941, "comms02"}, {3942, "bistrobar"},
	{3943, "mid_staircase"}, {3944, "bistro_blok"}, {3945, "alpha_fence"}, {3946, "plants01"},
	{3947, "rc_track_a"}, {3948, "bistrogarden"}, {3949, "rc_track_b"}, {3950, "rc_zero_c"},
	{3951, "rc_water"}, {3952, "rc_track_d"}, {3953, "rc_track_e"}, {3954, "rc_track_f"},
	{3955, "rc_track_g"}, {3956, "rc_track_h"}, {3957, "rc_track_i"}, {3958, "warehooseboxes"},
	{3959, "rczero_alpha"}, {3960, "rczero4_base02"}, {3961, "Boxkitch"}, {3962, "lee_Plane07"},
	{3963, "lee_Plane08"}, {3964, "lee_Plane09"}, {3965, "lee_Object11"}, {3966, "lee_object01"},
	{3967, "AIRPORT_int2"}, {3968, "AIRPORT_FRONT"}, {3969, "BAG_BELT2"}, {3970, "CJ_CUSTOM_BAR"},
	{3971, "CJ_BAG_RECLAIM"}, {3972, "mon1"}, {3973, "CJ_BAG_DET"}, {3975, "PoliceSt01_LAn"},
	{3976, "PoliceSt02_LAn"}, {3977, "LAriverSec1_LAn"}, {3978, "LAriverSec3_LAn"}, {3979, "bonaventura_LAn"},
	{3980, "LAcityhall1_LAn"}, {3981, "LAriverSec4a_LAn"}, {3982, "LAriverSec5a_LAn"}, {3983, "peublomiss2_LAn"},
	{3984, "churchprog1_LAn"}, {3985, "PershingSq1_LAn"}, {3986, "mis1_LAn"}, {3987, "fightplaza2_LAn"},
	{3988, "cityhallblock2_LAn"}, {3989, "bonaplazagr_LAn"}, {3990, "GSFreeway6_LAn"}, {3991, "GSFreeway7_LAn"},
	{3992, "Roads03_LAn"}, {3993, "Roads04_LAn"}, {3994, "Roads06_LAn"}, {3995, "Roads07_LAn"},
	{3996, "Roads08_LAn"}, {3997, "cityhallblok_LAn"}, {3998, "court1_LAn"}, {4000, "twintjail2_LAn"},
	{4001, "BailBonds1_LAn"}, {4002, "LAcityhall2_LAn"}, {4003, "LAcityhallTrans_LAn"}, {4004, "LAcityhall3_LAn"},
	{4005, "decoblok2_LAn"}, {4006, "eastcolumb1_LAn"}, {4007, "wellsfargo1_LAn"}, {4008, "decoblok1_LAn"},
	{4010, "figfree1_LAn"}, {4011, "figfree2_LAn"}, {4012, "TermAnexGrd1_LAn"}, {4013, "bonavenBase_LAn"},
	{4014, "bonaplaza_LAn"}, {4015, "bonaventuraGL_LAn"}, {4016, "fighotbase_LAn"}, {4017, "offblokA_LAn"},
	{4018, "newbuildsm02"}, {4019, "newbuildsm01"}, {4020, "fighotblok1_LAn"}, {4021, "Officessml1_lan"},
	{4022, "Foodmart1_lan"}, {4023, "newdbbuild_lan04"}, {4027, "langrasspatch"}, {4028, "lanstap"},
	{4029, "LAriverSec5b_LAn"}, {4030, "LAriverSec4b_LAn"}, {4032, "carimp_LAn"}, {4033, "fightplaza1_LAn"},
	{4034, "fightplaza1tra_LAn"}, {4048, "LAcityhall4_LAn"}, {4058, "fighotblok2_LAn"}, {4059, "fighotblok3_LAn"},
	{4060, "fighotblok4_LAn"}, {4079, "twintjail1_LAn"}, {4084, "JUD_LAN"}, {4085, "supports01_LAn"},
	{4086, "supports02_LAn"}, {4087, "supports03_LAn"}, {4088, "supports04_LAn"}, {4089, "supports05_LAn"},
	{4090, "supports06_LAn"}, {4091, "supports07_LAn"}, {4099, "twintjailfence_LAn"}, {4100, "meshfence1_LAn"},
	{4101, "expo_LAn"}, {4102, "expoalpha_LAn"}, {4103, "staples_LAn"}, {4106, "shpfireesc_LAn"},
	{4107, "Roads01_LAn"}, {4108, "Roads01b_LAn"}, {4109, "LAriverSec5_LAn"}, {4110, "Lan_embank1"},
	{4112, "build01_LAn"}, {4113, "LanOfficeBlok1"}, {4114, "lanBlocknew2"}, {4117, "figfree3_LAn"},
	{4120, "LAn_fescalpha1"}, {4121, "LAn_fescalpha02"}, {4122, "ctyhllblk2land_LAn"}, {4123, "cityhallblock1_LAn"},
	{4125, "GSFreeway1_LAn"}, {4127, "GSFreeway2_LAn"}, {4128, "GSFreeway3_LAn"}, {4129, "GSFreeway4_LAn"},
	{4131, "GSFreeway5_LAn"}, {4133, "GSFreeway8_LAn"}, {4139, "Roads09_LAn"}, {4141, "Hotelexterior1_LAn"},
	{4142, "Roads10_LAn"}, {4144, "Roads11_LAn"}, {4146, "Roads12_LAn"}, {4148, "Roads13_LAn"},
	{4150, "Roads14_LAn"}, {4152, "Roads15_LAn"}, {4154, "Roads16_LAn"}, {4156, "Roads17_LAn"},
	{4158, "Roads18_LAn"}, {4160, "Roads19_LAn"}, {4163, "Roads24_LAn"}, {4165, "Roads21_LAn"},
	{4168, "Roads23_LAn"}, {4170, "LAn_fescalpha04"}, {4171, "LAn_fescalpha05"}, {4172, "plantbeds1_LAn01"},
	{4173, "plantbeds1_LAn02"}, {4174, "plantbeds1_LAn04"}, {4175, "plantbeds1_LAn05"}, {4176, "BailBonds2_LAn"},
	{4178, "BailBonds3_LAn"}, {4180, "LAn_fescalpha06"}, {4182, "Roads22_LAn"}, {4183, "expoalpha_LAn02"},
	{4184, "hotelferns2_LAn"}, {4185, "hotelferns3_LAn"}, {4186, "PershingSq2_LAn"}, {4188, "bventuraENV_LAn"},
	{4189, "twintjail1alpha_LAn"}, {4190, "SDfences1_LAn"}, {4192, "PoliceStalphas_LAn"}, {4193, "officeblok1_Lan"},
	{4195, "SDfences2_LAn"}, {4196, "SDfences3_LAn"}, {4197, "LAnAlley1_LAn"}, {4198, "LAriverSec3b_LAn"},
	{4199, "garages1_LAn"}, {4201, "SDfences4_LAn"}, {4202, "SDfences5_LAn"}, {4203, "LAriverSec1b_LAn"},
	{4205, "wefargoalphas_LAn"}, {4206, "PershingPool_LAn"}, {4207, "Roads02_LAn"}, {4209, "Roads20_LAn"},
	{4212, "lanitewin1_LAN"}, {4213, "lanitewin1_LAN03"}, {4214, "lanitewin3_LAN"}, {4215, "lanitewin4_LAN"},
	{4216, "lanitewin5_LAN"}, {4217, "lanitewin6_LAN"}, {4218, "lanitewin7_LAN"}, {4219, "lanitewin8_LAN"},
	{4220, "lanitewin9_LAN"}, {4221, "lanitewin91_LAN"}, {4222, "lanitewin92_LAN"}, {4227, "graffiti_lan01"},
	{4230, "billbrdlan_08"}, {4231, "LAn_fescalpha03"}, {4232, "carimp2_LAn"}, {4233, "Roads05_LAn"},
	{4235, "billbrdlan_03"}, {4238, "billbrdlan_10"}, {4239, "billbrdlan_11"}, {4240, "sbsbedlaw2"},
	{4241, "sbsbed4law2"}, {4242, "sbsbed5law2"}, {4243, "sbsbed8law2"}, {4244, "sbsbed9law2"},
	{4245, "sbsbed1law2"}, {4246, "sbsbed3law2"}, {4247, "sbsbed6law2"}, {4248, "sbsbed7law2"},
	{4249, "sbsbed91law2"}, {4250, "sbcne_seafloor01"}, {4251, "sbcne_seafloor02"}, {4252, "sbcne_seafloor03"},
	{4253, "sbcne_seafloor05"}, {4254, "sbCE_groundPALO09"}, {4255, "sbcne_seafloor04"}, {4256, "sbcne_seafloor06"},
	{4257, "sbseabed_sfe03"}, {4258, "sbseabed_sfe05"}, {4259, "sbseabed_sfe01"}, {4260, "sbseabed_sfe69"},
	{4261, "sbseabed_SFN02"}, {4262, "sbseabed_SFN03"}, {4263, "sbseabed_SFNcunt"}, {4264, "sbseabed1_SFW"},
	{4265, "sbseabed2_SFW"}, {4266, "sbseabed6_SFW"}, {4267, "sbseabed2_las2"}, {4268, "sbseabed3_las20"},
	{4269, "sbseabed1_las2"}, {4270, "sbseabed5_las2"}, {4271, "sbseabed6las2"}, {4272, "sbseabed8_las2"},
	{4273, "sbseabed7_las2"}, {4274, "sbseabed86_las2"}, {4275, "sbseabed9_las20"}, {4276, "sbseabed91_las2"},
	{4277, "sbseabed93_LAS"}, {4278, "sbseabed92_LAS"}, {4279, "sbseabed94_LAS"}, {4280, "sbseabed95_LAS"},
	{4281, "sbseabed96_LAS"}, {4282, "sbseabed97_LAS"}, {4283, "sbseabed99_LAS"}, {4284, "sbseabed98_LAS"},
	{4285, "sbseabed81_LAS"}, {4286, "sbseabed85_LAS"}, {4287, "sbseabed84_LAS"}, {4288, "sbseabed83_LAS"},
	{4289, "sbseabed82_LAS"}, {4290, "sbcs_landbit_46"}, {4291, "sbcs_landbit_54"}, {4292, "sbcs_landbit_63"},
	{4293, "sbcs_landbit_72"}, {4294, "sbcs_landbit_77"}, {4295, "sbcs_landbit_78"}, {4296, "sbcs_seabit_new"},
	{4297, "sbcs_seabit1_new"}, {4298, "sbcs_seabit2_new"}, {4299, "sbcs_seabit3_new"}, {4300, "sbcs_seabit4_new"},
	{4301, "sbcs_seabit5_new"}, {4302, "sbcs_seabit6_new"}, {4303, "sbcs_seabit7_new"}, {4304, "sbcs_seabit8_new"},
	{4305, "sbcs_seabit9_new"}, {4306, "sbcs_seabit11_new"}, {4307, "sbcs_seabit10_new"}, {4308, "sbcs_seabit12_new"},
	{4309, "sbcs_seabit13_new"}, {4310, "sbcs_seabit14_new"}, {4311, "sbcs_seabit15_new"}, {4312, "sbcs_seabit16_new"},
	{4313, "sbcs_seabit17_new"}, {4314, "sbseabed_CN01"}, {4315, "sbseabed_CN03"}, {4316, "sbseabed_CN04"},
	{4317, "sbcn_seafloor03"}, {4318, "sbcn_seafloor04"}, {4319, "sbcn_seafloor01"}, {4320, "sbcn_seafloor05"},
	{4321, "sbcn_seafloor06"}, {4322, "sbcn_seafloor07"}, {4323, "sbxseabed_CN02"}, {4324, "sbxseabed_CN05"},
	{4325, "sbxseabed_CN06"}, {4326, "sbxseabed_CN07"}, {4327, "sbcn_seafloor08"}, {4328, "sbcn_seafloor09"},
	{4329, "sbcn_seafloor10"}, {4330, "sbcn2_seafloor01"}, {4331, "sbcn2_seafloor02"}, {4332, "sbcn2_seafloor03"},
	{4333, "sbcn2_seafloor04"}, {4334, "sbvgsEseafloor03"}, {4335, "sbseabed_05_SFSe"}, {4336, "sbseabed_10_SFSe"},
	{4337, "sbseabed_09_SFSe"}, {4338, "sbseabed_08_SFSe"}, {4339, "sbseabed_07_SFSe"}, {4340, "sbseabed_11_SFSe"},
	{4341, "sbseabed_03_SFSe"}, {4342, "sbseabed_02_SFSe"}, {4343, "sbseabed_01_SFSe"}, {4344, "sbseabed01_LAW"},
	{4345, "sbvgsSseafloor05"}, {4346, "sbvgsSseafloor04"}, {4347, "sbcw_seabed01"}, {4348, "sbcw_seabed02"},
	{4349, "sbcw_seabed03"}, {4350, "sbcw_seabed04"}, {4351, "sbcw_seabed05"}, {4352, "sbcw_seabed06"},
	{4353, "sbcuntwland27b"}, {4354, "sbcuntwland28b"}, {4355, "sbcuntwland30b"}, {4356, "sbcuntwland43b"},
	{4357, "sbcuntwland44b"}, {4358, "sbcuntwland28bb"}, {4359, "sbcuntwland30bb"}, {4360, "sbObject01"},
	{4361, "sbObject02"}, {4362, "sbObject03"}, {4363, "sbObject04"}, {4364, "sbObject05"},
	{4365, "sbObject06"}, {4366, "sbObject07"}, {4367, "sbObject08"}, {4368, "sbObject09"},
	{4369, "sbObject10"}, {4370, "sbObject11"}, {4371, "sbObject12"}, {4372, "beach04_sv"},
	{4373, "sv_roadscoast01"}, {4374, "beach04b_sv"}, {4504, "cuntw_roadblockld"}, {4505, "cuntw_roadblock01ld"},
	{4506, "cuntw_roadblock02ld"}, {4507, "cuntw_roadblock03ld"}, {4508, "cuntw_roadblock04ld"}, {4509, "cuntw_roadblock05ld"},
	{4510, "sfw_roadblock1ld"}, {4511, "sfw_roadblock2ld"}, {4512, "sfw_roadblock3ld"}, {4513, "sfn_roadblockld"},
	{4514, "cn2_roadblock01ld"}, {4515, "cn2_roadblock02ld"}, {4516, "cn2_roadblock03ld"}, {4517, "cn2_roadblock04ld"},
	{4518, "CE_Makospan1ld"}, {4519, "CE_Fredbarld"}, {4520, "CE_Fredbar01ld"}, {4521, "CE_Flintwat01ld"},
	{4522, "CE_Flintintld"}, {4523, "sfse_roadblock1"}, {4524, "sfse_roadblock3"}, {4525, "sfse_roadblock4"},
	{4526, "sfse_roadblock5"}, {4527, "sfse_roadblock2"}, {4533, "sbseabed_SFN03bb"}, {4535, "sbseabed_SFN01"},
	{4538, "sbCE_grndPALCST05"}, {4540, "sbcn_seafloor02"}, {4550, "LibrTow1_LAn"}, {4551, "LAriverSec2_LAn"},
	{4552, "amubloksun1_LAn"}, {4553, "road12_LAn2"}, {4554, "LibBase1_LAn"}, {4555, "figfree4_LAn"},
	{4556, "sky4plaz1_LAn"}, {4557, "road10_LAn2"}, {4558, "LacmEntr1_LAn"}, {4559, "LacmaBase1_LAn"},
	{4560, "LacmCanop1_LAn"}, {4562, "LAplaza2_LAn"}, {4563, "LAskyscrap1_LAn"}, {4564, "LAskyscrap2_LAn"},
	{4565, "bunksteps1_LAn"}, {4567, "road07_LAn2"}, {4568, "ground01_LAn2"}, {4569, "stolenbuilds05"},
	{4570, "stolenbuilds08"}, {4571, "stolenbuilds09"}, {4572, "stolenbuilds11"}, {4573, "stolenbuilds12"},
	{4574, "stolenbuilds13"}, {4575, "fireescapes1_lan2"}, {4576, "lan2newbuild1"}, {4584, "halgroundlan2"},
	{4585, "towerlan2"}, {4586, "skyscrapn201"}, {4587, "skyscrapn203"}, {4588, "roofshitlan2"},
	{4589, "road15_LAn2"}, {4590, "grasspatchlan2"}, {4591, "lan2shit03"}, {4592, "lan2shit04"},
	{4593, "lan2buildblk01"}, {4594, "lan2buildblk02"}, {4595, "cpark05_LAN2"}, {4596, "cspGM_LAN2"},
	{4597, "crprkblok4_LAN2"}, {4598, "crprkblok2_LAN2"}, {4599, "csp2GM_LAN2"}, {4600, "LAdtbuild10_LAn"},
	{4601, "LAn2_gm1"}, {4602, "LAskyscrap4_LAn"}, {4603, "sky4plaz2_LAn"}, {4604, "build4plaz_LAn2"},
	{4605, "skyscrapn203_gls"}, {4636, "cparkgmaumk_LAN"}, {4637, "cpark_muck_lan2"}, {4638, "paypark_lan01"},
	{4639, "paypark_lan02"}, {4640, "paypark_lan03"}, {4641, "paypark_lan04"}, {4642, "paypark_lan"},
	{4643, "LAplaza2b_LAn2"}, {4644, "road06_LAn2"}, {4645, "road14_LAn2"}, {4646, "road13_LAn2"},
	{4647, "road11_LAn2"}, {4648, "road05_LAn2"}, {4649, "road01_LAn2"}, {4650, "road02_LAn2"},
	{4651, "road03_LAn2"}, {4652, "road04_LAn2"}, {4653, "Freeway7_LAn2"}, {4654, "road09_LAn2"},
	{4656, "Freeway1_LAn2"}, {4658, "Freeway2_LAn2"}, {4660, "Freeway3_LAn2"}, {4662, "Freeway4_LAn2"},
	{4664, "Freeway5_LAn2"}, {4666, "Freeway6_LAn2"}, {4679, "Freeway8_LAn2"}, {4681, "LAdtbuild6_LAn2"},
	{4682, "LAdtbuild3_LAn2"}, {4683, "LAdtbuild2_LAn2"}, {4684, "LAalley1_LAn2"}, {4685, "LAalley2_LAn2"},
	{4690, "skyscrapn202"}, {4691, "csp3GM_LAN2"}, {4692, "Freeway9_LAn2"}, {4694, "Freeway10_LAn2"},
	{4695, "Freeway11_LAn2"}, {4697, "crprkblok1_LAN2"}, {4700, "cpark01_LAN2"}, {4701, "cpark02_LAN2"},
	{4702, "cpark03_LAN2"}, {4703, "cpark04_LAN2"}, {4708, "LAdtbuild1_LAn2"}, {4710, "road08_LAn2"},
	{4711, "amublokalpha_LAn2"}, {4712, "LibPlaza1_LAn"}, {4714, "Lacmaalphas1_LAn"}, {4715, "LTSLAsky1_LAn2"},
	{4716, "LTSLAsky2_LAn2"}, {4717, "LTSLAsky3_LAn2"}, {4718, "gm_build4_LAn2"}, {4720, "LTSLAsky1b_LAn"},
	{4721, "LTSLAsky2b_LAn2"}, {4722, "LTSLAsky3b_LAn2"}, {4723, "LTSLAsky4_LAn2"}, {4724, "librarywall_lan2"},
	{4725, "LTSLAsky6_LAn2"}, {4726, "libtwrhelipd_LAn2"}, {4727, "libtwrhelipda_LAn2"}, {4729, "billbrdlan2_01"},
	{4730, "billbrdlan2_03"}, {4731, "billbrdlan2_05"}, {4732, "billbrdlan2_06"}, {4733, "billbrdlan2_07"},
	{4734, "billbrdlan2_08"}, {4735, "billbrdlan2_09"}, {4736, "billbrdlan2_10"}, {4737, "fireescapes3_lan2"},
	{4738, "fireescapes2_lan2"}, {4739, "LTSLAbuild1_LAn2"}, {4740, "LTSLAbuild2_LAn2"}, {4741, "LTSLAbuild3_LAn2"},
	{4742, "LTSLAbuild4_LAn2"}, {4743, "LTSLAsky5_LAn2"}, {4744, "LTSLAbuild5_LAn2"}, {4745, "LTSLAbuild6_LAn2"},
	{4746, "LTSLAsky7_LAn2"}, {4747, "LTSLAsky8_LAn2"}, {4748, "LTSLAbuild7_LAn2"}, {4749, "LTSLAbuild8_LAn2"},
	{4750, "LTSLAbuild9_LAn2"}, {4751, "LTSLAbuild10_LAn2"}, {4752, "LTSLAbuild11_LAn2"}, {4806, "BTOLAND8_LAS"},
	{4807, "LAroads_20gh_LAs"}, {4808, "LAroadss_30_LAs"}, {4809, "LAroads_05_LAs"}, {4810, "hillpalos04_LAs"},
	{4811, "clifftest02"}, {4812, "clifftest05"}, {4813, "clifftest07"}, {4814, "clifftest09"},
	{4815, "clifftestgrnd2"}, {4816, "ROCKLIFF1_LAS"}, {4817, "TRNTRK7_LAS"}, {4818, "TRNTRK8_LAS"},
	{4819, "TRNTRK5_LAS"}, {4820, "BTOLAND1_LAS"}, {4821, "BTOLAND2_LAS"}, {4822, "NWCSTRD1_LAS"},
	{4823, "lasgrifroad"}, {4824, "lasgrifsteps2"}, {4825, "griffithoblas"}, {4826, "grifftop2"},
	{4827, "LAroads_20ghi_LAs"}, {4828, "lasairprt5"}, {4829, "lasairprt4"}, {4830, "lasairprt3"},
	{4831, "airpurt2_las"}, {4832, "airtwer_Las"}, {4833, "airpurtder_las"}, {4834, "airoad1d_LAS"},
	{4835, "airoad1b_LAS"}, {4836, "LAroadsx_04_LAs"}, {4837, "LApedhusrea_LAs"}, {4838, "airpurtderfr_las"},
	{4839, "bchcostrd3_LAS"}, {4840, "bchcostrd4_LAS"}, {4841, "bchcostrd1_LAS"}, {4842, "Beach1_LAs0fg"},
	{4843, "Beach1_LAs0fhy"}, {4844, "Beach1_LAs04"}, {4845, "hillpalos02_LAs"}, {4846, "LAcityped1_LAs"},
	{4847, "Beach1_LAs0gj"}, {4848, "sanpedbeaut"}, {4849, "snpdmshfnc3_LAS"}, {4850, "snpedshpblk07"},
	{4851, "hillpalos01_LAs"}, {4852, "hillpalos03_LAs"}, {4853, "traincano_LAS"}, {4854, "lasundrairprt2"},
	{4855, "lasundrairprt1"}, {4856, "lasundrairprt3"}, {4857, "snpedmtsp1_LAS"}, {4858, "snpedland1_LAS"},
	{4859, "snpedland2_LAS"}, {4860, "unionstwar_LAS"}, {4861, "snpedhuair2_LAS"}, {4862, "airtun2_LAS"},
	{4863, "airtun1_LAS"}, {4864, "airtun3_LAS"}, {4865, "lasrnway2_LAS"}, {4866, "lasrnway1_LAS"},
	{4867, "lasrnway3_LAS"}, {4868, "LAroads_23_LAs"}, {4869, "lasrnway8_LAS"}, {4870, "airpurt2ax_las"},
	{4871, "airpurt2bx_las"}, {4872, "LAroads_042e_LAs"}, {4873, "unionstwarc2_LAS"}, {4874, "Helipad1_las"},
	{4875, "hillpalos06_LAs"}, {4876, "hillpalos08_LAs"}, {4877, "dwntwnbit4_LAS"}, {4878, "obcity1_LAS"},
	{4879, "hillpaloswal1_LAs"}, {4880, "dwntwnbit2_LAS"}, {4881, "uninstps_LAS01"}, {4882, "lasbrid1_LAS"},
	{4883, "bchcostair_LAS"}, {4884, "lastranentun1_LAS"}, {4885, "lastranentun4_LAS"}, {4886, "gngspwnhus1_LAS"},
	{4887, "dwntwnbit1_LAS"}, {4888, "dwntwnbit3_LAS"}, {4889, "dwntwnbit2b_LAS"}, {4890, "lasairprterm2_LAS"},
	{4891, "billboard_LAS"}, {4892, "kbsgarage2_LAS"}, {4894, "dwntwnbit1b_LAS"}, {4895, "lstrud_LAS"},
	{4896, "clifftest12"}, {4897, "Beach1a1_LAs"}, {4898, "clifftestgrnd"}, {4981, "snpedteew1_LAS"},
	{4982, "snpedteew3_LAS"}, {4983, "snpedteew1vv_LAS"}, {4984, "snpedteew3gt_LAS"}, {4985, "Cylinder03"},
	{4986, "odfwer_LAS"}, {4988, "lasbillbrd1_las"}, {4990, "airprtwlkto1_LAS"}, {4991, "lasairprterm1_LAS"},
	{4992, "airplants_LAS"}, {4993, "airplnt2_LAS"}, {4994, "airbillb_LAS"}, {4995, "airsinage_LAS"},
	{4996, "airsinage2_LAS"}, {4997, "airsinage3_LAS"}, {4998, "airsinage4_LAS"}, {4999, "airsinage6_LAS"},
	{5000, "airsinage5_LAS"}, {5001, "lasrunwall2_LAS"}, {5002, "lasrnway4_LAS"}, {5003, "lasrnway5_LAS"},
	{5004, "lasrnway6_LAS"}, {5005, "lasrunwall1_LAS"}, {5006, "airprtwlkto2_LAS"}, {5007, "lasrunwall3_LAS"},
	{5009, "lasrnway7_LAS"}, {5013, "LAroakt1_30_LAs"}, {5016, "snpdPESS1_LAS"}, {5017, "lastripx1_LAS"},
	{5020, "mul_LAS"}, {5021, "LAroadsbrk_05_LAs"}, {5023, "grifovrhang2_LAS"}, {5024, "snpedtee_LAS"},
	{5025, "snpedtedc_LAS"}, {5026, "lstrudct1_LAS"}, {5028, "obcity1ct1_LAS"}, {5030, "lasrunwall1ct_LAS"},
	{5031, "snpedteairt_LAS"}, {5032, "las_runsigns_LAS"}, {5033, "unmainstat_LAS"}, {5034, "lasairprtcut4"},
	{5036, "BTOLAND1ct_LAS"}, {5038, "airtun2ct_LAS"}, {5040, "unionliq_LAS"}, {5042, "bombshop_LAs"},
	{5043, "bombdoor_LAs"}, {5044, "las_runsignsx_LAS"}, {5046, "bchcostrd4fuk_LAS"}, {5051, "airobarsjm_LAS"},
	{5052, "BTOROAD1vb_LAS"}, {5056, "modLAS"}, {5057, "lanitewin1_LAS"}, {5058, "lanitewin2_LAS"},
	{5059, "lanitewin3_LAS"}, {5060, "crlsafhus_LAS"}, {5061, "lascarl"}, {5062, "hillpawfnce_LAs"},
	{5064, "TRNTRK5z_LAS"}, {5066, "mondoshave_LAS"}, {5068, "airctsjm1_las"}, {5069, "ctscene1_las"},
	{5070, "sjmctfnce1_las"}, {5071, "sjmctfnce2_las"}, {5072, "sjmctfnce3_las"}, {5073, "sjmctfnce4_las"},
	{5074, "sjmctfnce5_las"}, {5075, "sjmctfnce6_las"}, {5076, "sjmctfnce7_las"}, {5077, "sjmctfnce8_las"},
	{5078, "ctscene2_las"}, {5079, "sjmbarct1_LAS"}, {5080, "sjmbarct2_LAS"}, {5081, "rdcrashbar1_LAs"},
	{5082, "rdcrashbar2_LAs"}, {5083, "alphbrk1_las"}, {5084, "alphbrk2_las"}, {5086, "alphbrk3_las"},
	{5087, "alphbrk4_las"}, {5088, "alphbrk5_las"}, {5089, "alphbrk6_las"}, {5105, "Stordralas2"},
	{5106, "Roadsbx_las2"}, {5107, "chemplant2_las2"}, {5108, "LADocks2_las2"}, {5109, "sanpdmdock3_las2"},
	{5110, "mexcrnershp2_las2"}, {5111, "IndusLand2_las2"}, {5112, "LAroads_26_las2"}, {5113, "BlockAA_las2"},
	{5114, "Beach1_las2"}, {5115, "las2chemdock1"}, {5116, "las2stripbar1"}, {5117, "TRNTRK4_las2"},
	{5118, "TRNTRK3_las2"}, {5119, "TRNTRK4A_las2"}, {5120, "BTOROAD3_las2"}, {5121, "BTOLAND6_las2"},
	{5122, "BTOLAND5_las2"}, {5123, "NEWCOMP2_las2"}, {5124, "NWCSTRD2_las2"}, {5125, "NWCSTRD3_las2"},
	{5126, "dockcranescale0"}, {5127, "imcomp1trk"}, {5128, "BTOROAD1mnk_las2"}, {5129, "imracompint_las2"},
	{5130, "imcompstrs02"}, {5131, "imrancomp1_las2"}, {5132, "las2dkwar107"}, {5133, "bchcostrd6_las2"},
	{5134, "snpedshprk_las2"}, {5135, "brkwrhus02"}, {5136, "snpedshprk1_las2"}, {5137, "brkwrhus3_las2"},
	{5138, "snpdoldwrhs2_las2"}, {5139, "sanpedro4_las2"}, {5140, "snpedtatshp"}, {5141, "BTOROADxtra_las2"},
	{5142, "las2plaza1bit"}, {5143, "las2chendock04"}, {5144, "las2jmscum11"}, {5145, "sanpdmdock2_las2"},
	{5146, "sanpdmdock1_las2"}, {5147, "sanpedbigbrid_las2"}, {5148, "bigstormbrid_las2"}, {5149, "scumest1_las2"},
	{5150, "SCUMWIRES1_las2"}, {5151, "carganghud_las2"}, {5152, "stuntramp1_las2"}, {5153, "stuntramp7_las2"},
	{5154, "dk_cargoshp03d"}, {5155, "dk_cargoshp05d"}, {5156, "dk_cargoshp24d"}, {5157, "dk_cargoshpd25d"},
	{5158, "dk_cargoshp76d"}, {5160, "dkcargohull2d"}, {5166, "dkcargohull2bd"}, {5167, "dkcargohull2cd"},
	{5168, "cluckinbell1_las2"}, {5169, "imnrmpy1_las2"}, {5170, "imnrmpy2_las2"}, {5171, "dockoff01_LAs2"},
	{5172, "Beach1spt_las2"}, {5173, "las2jmscum12"}, {5174, "sanpedmexq4_las2"}, {5175, "sanpedmexq3_las2"},
	{5176, "sanpdmdocka_las2"}, {5177, "las2stripsshp1"}, {5178, "cutrdn1_las2"}, {5179, "mexcrnershp_las2"},
	{5180, "nwspltbild2_las2"}, {5181, "nwspltbild3_las2"}, {5182, "nwspltbild4_las2"}, {5183, "nwspltbild1_las2"},
	{5184, "mdock1a_las2"}, {5185, "brkwrhusfuk_las2"}, {5186, "nwsnpdnw_las2"}, {5187, "mexcrnrxc_las2"},
	{5188, "nwrrdssplt_las2"}, {5189, "ctddwwnblk_las2"}, {5190, "scrapfnce_las2"}, {5191, "nwdkbridd_las2"},
	{5192, "chemgrnd_las2"}, {5231, "snpedteew2_las2"}, {5232, "snpedteew9_las2"}, {5233, "snpedteew8_las2"},
	{5234, "SCUMWFIRES1_las20"}, {5243, "RiverBridls_las2"}, {5244, "lasntrk1im03"}, {5250, "bchcostrd6v_las2"},
	{5259, "las2dkwar01"}, {5260, "las2dkwar02"}, {5261, "las2dkwar03"}, {5262, "las2dkwar04"},
	{5265, "SCUMWFIRES1_las01"}, {5266, "snpedteew8_las01"}, {5267, "sanpedmexq1_las2"}, {5268, "imracompral_las2"},
	{5269, "las2dkwar05"}, {5270, "StormDraifr1_las2"}, {5271, "LAroads_24_las2"}, {5272, "TRNTRK2_las2"},
	{5273, "BTOLAND4_las2"}, {5274, "StormDraifr2_las2"}, {5275, "TRNTRK4A_las201"}, {5276, "NEWCOMPRD_las2"},
	{5277, "NEWCMPTRK_las2"}, {5278, "NEWCOMP1_las2"}, {5279, "nwsnpdgrnd1_las2"}, {5290, "SCUMWIRES1_las03"},
	{5291, "snpedscrsap_las01"}, {5292, "snpedteew8_las03"}, {5293, "snpedteew8_las04"}, {5294, "snpedteew8_las05"},
	{5295, "snpedteew8_las06"}, {5296, "LAroads_26a_las01"}, {5297, "LAroads_26b_las01"}, {5298, "bigstormbridb_las2"},
	{5299, "las2_brigtower"}, {5301, "balcony_kbolt01"}, {5302, "burg_lkupdoor"}, {5306, "chemfence_las2"},
	{5308, "balcony_kbolt02"}, {5309, "las2lnew3_las2"}, {5310, "las2lnew2_las2"}, {5311, "las2lnew1_las2"},
	{5312, "snpedteevbg_las2"}, {5313, "newlas2sh_LAS2"}, {5314, "NEWCOMfuk_las2"}, {5322, "stormd_fill1_LAS2"},
	{5323, "dockfenceq_las2"}, {5324, "dockfencew_las2"}, {5325, "dockfencee_las2"}, {5326, "dockfencer_las2"},
	{5327, "stormful2_LAS2"}, {5328, "stormful2s_LAS2"}, {5329, "BTOROADsp3_las2"}, {5330, "BTOROAsp2_las2"},
	{5333, "sanpedbigslt_las2"}, {5337, "induswire1_las2"}, {5338, "Beach1fnce_las2"}, {5339, "Bealpha1_las2"},
	{5340, "modlas2"}, {5341, "crlsafhus_LAS2"}, {5342, "BTOLAND5m_las2"}, {5343, "BTOLAND5n_las2"},
	{5347, "TRNTRK3p_las2"}, {5349, "BTOLAND6q_las2"}, {5351, "snpedteew8_las07"}, {5353, "NWCSTRD4_las2"},
	{5355, "Stordrablas2"}, {5358, "las2jmscumTR12"}, {5363, "NWCSTRtr_las2"}, {5364, "NEWCOMtr_las2"},
	{5366, "alphbrk1_las2"}, {5367, "alphbrk2_las2"}, {5368, "alphbrk3_las2"}, {5369, "alphbrk4_las2"},
	{5370, "alphbrk5_las2"}, {5371, "alphbrk6_las2"}, {5372, "alphbrk7_las2"}, {5373, "alphbrk8_las2"},
	{5374, "alphbrk9_las2"}, {5375, "alphbrk91_las2"}, {5390, "laeskateparkLA"}, {5391, "laeroad01"},
	{5392, "laestripmall1"}, {5393, "laeshop1"}, {5394, "xstpdnam_LAE"}, {5395, "laecomptonbrij3"},
	{5396, "laeRailBrijBlok"}, {5397, "laeclubBlock1"}, {5398, "laetraintunn02"}, {5399, "laetraintunn01"},
	{5400, "laeskatetube1"}, {5401, "laegarages1nw"}, {5402, "laehospground1"}, {5403, "laehospital1"},
	{5404, "laestormdrain01"}, {5405, "laeBlakWesTran2"}, {5406, "laecrackmotel4"}, {5407, "laelasruff201"},
	{5408, "laeexaminerbuild1"}, {5409, "laepetrol1a"}, {5410, "laecumpstreet"}, {5411, "laeroadsblk"},
	{5412, "laelasjmscubit"}, {5413, "laecrackmotel1"}, {5414, "laeJeffers02"}, {5415, "laeskateparkTrans"},
	{5416, "laeganghous205"}, {5417, "laenwblk2"}, {5418, "lae711block01"}, {5419, "laestormdrain02"},
	{5420, "laestormdrain03"}, {5421, "laesmokeshse"}, {5422, "laespraydoor1"}, {5423, "laeJeffers03"},
	{5424, "laeJeffers04"}, {5425, "laeJeffers05"}, {5426, "laeJeffers06"}, {5427, "laeJeffers09"},
	{5428, "laeJeffers10"}, {5429, "xwhattfk_LAE"}, {5430, "laeIdlewood11"}, {5431, "laeroad02"},
	{5432, "laeroad03"}, {5433, "laeroad04"}, {5434, "laeroad05"}, {5435, "laeroad06"},
	{5436, "fukxroad07"}, {5437, "laeroad08"}, {5438, "laeroad09"}, {5439, "laeroad10"},
	{5440, "laeroad11"}, {5441, "laeroad12"}, {5442, "laeroad13"}, {5443, "laeGlenPark02"},
	{5444, "laeChicano02"}, {5445, "laeChicano01"}, {5446, "laeChicano03"}, {5447, "laeChicano04"},
	{5448, "laeChicano05"}, {5449, "laeChicanoTr1"}, {5450, "laeChicano06"}, {5451, "laeChicano07"},
	{5452, "laeChicano09"}, {5453, "laeChicano10"}, {5456, "laeroad14"}, {5457, "laeGlenPark01"},
	{5458, "laeMacPark01"}, {5459, "laeJeffers01"}, {5461, "laeGlenPark05"}, {5462, "laeGlenPark04"},
	{5463, "laebuildsit01"}, {5464, "laeGlenPark04Tr"}, {5465, "laeGlenPark05Nt"}, {5467, "laehospitalTr"},
	{5469, "laeRoads11Tr"}, {5470, "laeRoads10Tr"}, {5471, "laeIdlewood01"}, {5472, "frecrsbrid_LAE"},
	{5473, "laeidlebrijTr"}, {5474, "laeIdlewood02"}, {5475, "laeIdleProj02"}, {5476, "laeIdleProj01"},
	{5477, "laerailtrack1"}, {5478, "laerailtrack2"}, {5479, "laerailtrack3"}, {5480, "laerailtrack4"},
	{5481, "laebridge"}, {5482, "laeroad16"}, {5483, "laeroad17"}, {5484, "laeroad18"},
	{5485, "laeroad20"}, {5486, "laeroad21"}, {5487, "laeroad22"}, {5488, "laeroad23"},
	{5489, "laeroad24"}, {5490, "laeroad25"}, {5491, "laeroad26"}, {5492, "laeroad27"},
	{5493, "laeroad28"}, {5494, "laeroad29"}, {5495, "laeroad30"}, {5496, "laeroad31"},
	{5497, "laeroad32"}, {5498, "laeroad33"}, {5499, "laeroad34"}, {5500, "laeroad35"},
	{5501, "laeroad36"}, {5502, "laeroad37"}, {5503, "laeroad38"}, {5504, "laeroad39"},
	{5505, "laeroad40"}, {5506, "laeroad41"}, {5507, "laeroad42"}, {5508, "laeroad43"},
	{5509, "laeroad44"}, {5510, "laeroad45"}, {5511, "laeroad46"}, {5512, "laeroad47"},
	{5513, "laerail6"}, {5518, "Idlewood05_LAe"}, {5519, "Idlewood04_LAe"}, {5520, "BDupsHouse_LAe"},
	{5521, "Idlewofuk06_LAe"}, {5522, "Idlewood06Tr_LAe"}, {5528, "laeroadct43"}, {5532, "laesprayshop"},
	{5565, "laectru_LAE"}, {5624, "laeHillsctst03"}, {5626, "laecompmedhos518"}, {5627, "lasbrid1SJM_LAe"},
	{5628, "laenwblkB1"}, {5629, "LAEalpha6"}, {5630, "blockalphalae"}, {5631, "apartmntalpha"},
	{5632, "motelalpha"}, {5633, "LAEalpha1"}, {5634, "LAEalpha2"}, {5635, "LAEalpha3"},
	{5636, "LAEalpha4"}, {5637, "LAEalpha5"}, {5638, "LAEalpha7"}, {5639, "LAEdirtapha"},
	{5640, "laemacpark02"}, {5641, "LAEalpha5b"}, {5642, "laeChicano11"}, {5643, "laeChicano08"},
	{5644, "laebuildsit01a"}, {5650, "laeroad03b"}, {5652, "stormdraindrt1_LAe"}, {5654, "laeJeffers06alphas"},
	{5655, "laeChicano01b"}, {5656, "laeChicano01c"}, {5660, "laeskateP_alphas"}, {5661, "LTSlaehospital1"},
	{5662, "LTSlaeChicano02"}, {5663, "graffiti01_lae"}, {5665, "LTSlaeGlenPark04"}, {5668, "laebridgeb"},
	{5674, "laerailtrack2b"}, {5676, "Motel2laealphas"}, {5677, "laeJeffersalpha"}, {5678, "Lae_smokecutscene"},
	{5679, "laetraintunn03"}, {5681, "carwashalphas_lae"}, {5682, "laeJeffers10alphas"}, {5703, "road_lawn23"},
	{5704, "archwindshop_laW"}, {5705, "filmstud1"}, {5706, "studiobld03_laW"}, {5707, "road_lawn03"},
	{5708, "hospital_law"}, {5709, "shop03_laW01"}, {5710, "cem01_law"}, {5711, "cem02_law"},
	{5712, "cemint01_law"}, {5713, "grave01_law"}, {5714, "grave03_law"}, {5715, "grave08_law"},
	{5716, "manns01_LAwN"}, {5717, "Sunset20_LAwN"}, {5718, "sunset16_LAwN"}, {5719, "holbuild01_law"},
	{5720, "holbuild02_law"}, {5721, "holbuild04_law"}, {5722, "manns05_LAwN"}, {5723, "manns04_LAwN"},
	{5724, "holsign03n_law"}, {5725, "holpacific2_law"}, {5726, "Lawn_holbuild21"}, {5727, "holbuild10_law"},
	{5728, "dummybuild46_law"}, {5729, "MelBlok02_LAwN"}, {5730, "MelBlok03_LAwN"}, {5731, "MelBlok05_LAwN"},
	{5732, "donut01_LAwN"}, {5733, "melrose07_law"}, {5734, "melrose09_law"}, {5735, "studoff_law"},
	{5736, "studoff02_law"}, {5737, "archshop07_laW02"}, {5738, "hothol02_law01"}, {5739, "tallbldgrn"},
	{5740, "tall2"}, {5741, "lawnstuff21"}, {5742, "lawnstuff15"}, {5743, "grndLAwn"},
	{5744, "road_lawn32"}, {5745, "road_lawn07"}, {5746, "road_lawn08"}, {5747, "road_lawn01"},
	{5748, "road_lawn09"}, {5749, "road_lawn10"}, {5750, "road_lawn11"}, {5751, "road_lawn12"},
	{5752, "road_lawn13"}, {5753, "road_lawn37"}, {5754, "road_lawn15"}, {5755, "road_lawn36"},
	{5756, "road_lawn33"}, {5757, "road_lawn18"}, {5758, "road_lawn19"}, {5759, "road_lawn20"},
	{5760, "MelBlok09_LAwN"}, {5761, "MelBlok06_LAwN"}, {5762, "foodmartlawn"}, {5763, "bigbuillawn"},
	{5764, "lawnwires01"}, {5765, "sunset15_LAwN"}, {5766, "capitRec2_LAwN"}, {5767, "capitRec1_LAwN"},
	{5768, "TaftBldg1_LAwN"}, {5769, "VineBlock1_LAwN"}, {5770, "TaftBldgTran_LAwN"}, {5771, "melrose10_law"},
	{5772, "RailTunn01_LAwN"}, {5773, "TrainStat01_LAwN"}, {5774, "garage01_LAwN"}, {5775, "standard01_LAwN"},
	{5776, "standardTra_LAwN"}, {5777, "tombston01_LAwN"}, {5778, "gravecov01_LAwN"}, {5779, "garagDoor1_LAwN"},
	{5780, "MelBlok11Tr_LAwN"}, {5781, "MelBlok11_LAwN"}, {5782, "MelBlok12_LAwN"}, {5783, "MelWir02_LAwN"},
	{5784, "MelBlok08_LAwN"}, {5785, "MelBlok02Tr_LAwN"}, {5786, "shutters01_LAwN"}, {5787, "MelBlok01_LAwN"},
	{5788, "MelBlok01T_LAwN"}, {5789, "melrose01Tr_law"}, {5790, "shopboards01_LAwn"}, {5791, "shutters02_LAwN"},
	{5792, "fredricks01_LAwN"}, {5793, "road_lawn02"}, {5794, "road_lawn06"}, {5795, "road_lawn14"},
	{5796, "road_lawn38"}, {5797, "road_lawn21"}, {5798, "road_lawn35"}, {5799, "road_lawn29"},
	{5800, "road_lawn30"}, {5801, "road_lawn28"}, {5802, "road_lawn34"}, {5803, "road_hillLAwn12"},
	{5804, "road_lawn25"}, {5805, "road_lawn22"}, {5806, "road_lawn17"}, {5807, "road_lawn16"},
	{5808, "road_lawn39"}, {5809, "lawngrndaa"}, {5810, "lawnmalstrip"}, {5811, "lawnmallsign1"},
	{5812, "grasspatchlawn"}, {5813, "lawnshop1"}, {5814, "lawncluckbel"}, {5815, "lawngrnda"},
	{5816, "odrampbit"}, {5817, "odrampbit01"}, {5818, "posters02_LAwN"}, {5819, "lawnbuildg"},
	{5820, "odrampbit02"}, {5821, "odrampbit03"}, {5822, "lhroofst14"}, {5823, "lawnalley"},
	{5835, "ci_astage"}, {5836, "ci_watertank"}, {5837, "ci_guardhouse1"}, {5838, "ci_watertank01"},
	{5844, "lawnmart_alpha"}, {5845, "lawngrndasas"}, {5846, "posters01_LAwN"}, {5847, "lawnbushb"},
	{5848, "mainblk_LAwN"}, {5853, "sunset21_LAwN"}, {5854, "lawnbillbrd2"}, {5855, "lawncrates"},
	{5856, "lawnspraydoor1"}, {5857, "Lawn_buyable1"}, {5859, "road_lawn24"}, {5860, "road_lawn27"},
	{5861, "road_lawn05"}, {5862, "road_lawn31"}, {5863, "filmstud4"}, {5864, "filmstud3"},
	{5865, "filmstud2"}, {5866, "road40_LAwN"}, {5868, "sunset16Tr_LAwN"}, {5870, "sunset17_LAwN"},
	{5871, "Graveyard01_LAwN"}, {5872, "GraveyardTr_LAwN"}, {5873, "manns03Tr_LAwN"}, {5874, "manns03_LAwN"},
	{5875, "manns02_LAwN"}, {5876, "LTSmanns_LAwN"}, {5877, "VineBlokTran_LAwN"}, {5878, "VineBlock2_LAwN"},
	{5881, "skyscr02_LAwN"}, {5882, "skyscr01_LAwN"}, {5885, "skyscr03_LAwN"}, {5886, "spray01_LAwN"},
	{5887, "FredBlock_LAwN"}, {5888, "FredBlokTran_LAwN"}, {5891, "hblues02_LAwN"}, {5892, "hblues01_LAwN"},
	{5893, "hblues01Tr_LAwN"}, {5896, "sunset22_LAwN"}, {5986, "Chateau01_LAwN"}, {5987, "sunset19_LAwN"},
	{5990, "LTSEld01_LAwN"}, {5991, "LTSrec01_LAwN"}, {5992, "LTSReg01_LAwN"}, {5993, "lawnmalstripTR"},
	{5994, "road_lawn26"}, {5995, "road_lawn04"}, {5998, "sunset18Tr_LAwN"}, {5999, "sunset18_LAwN"},
	{6001, "LTSsunset18_LAwN"}, {6006, "newbit01_LAwN"}, {6007, "newbit02_LAwN"}, {6010, "lawnboigashot25"},
	{6035, "lawroads_law12"}, {6036, "filler01_laW"}, {6037, "filler02_laW"}, {6038, "wilshire2_law"},
	{6039, "wilshire5_law"}, {6040, "wilshire7_law"}, {6041, "wilshire6_law"}, {6042, "venblue01_law"},
	{6043, "wilshire1w_law"}, {6044, "wilshire2w_law"}, {6045, "wilshire5w_law"}, {6046, "hedge01_law"},
	{6047, "wilshire1_law"}, {6048, "mall_laW"}, {6049, "beachwall_law"}, {6050, "beachhut01_law"},
	{6051, "mallglass_laW"}, {6052, "artcurve_law"}, {6053, "stepshop_law"}, {6054, "lawroads_law02"},
	{6055, "lawroads_law03"}, {6056, "jettysign_law"}, {6057, "wdpanelhs09_law"}, {6058, "wdpanelhs08_law"},
	{6059, "offven02_law"}, {6060, "plaza2top_law"}, {6061, "plaza2bot_law"}, {6062, "Miami_atm"},
	{6063, "staplaz_law"}, {6064, "LAbeach_03bx"}, {6065, "LAbeach_04bx"}, {6066, "vengym_law"},
	{6087, "offven01_law"}, {6088, "offven05_law"}, {6094, "bevgrnd03b_law"}, {6095, "offvensp02_law"},
	{6096, "offvensp03_law"}, {6098, "gzbuild2_law"}, {6099, "gaz3_law"}, {6100, "gaz1_law"},
	{6101, "gaz2_law"}, {6102, "gaz4_LAW"}, {6103, "gaz5_LAW"}, {6104, "gaz18_LAW"},
	{6110, "plazadrawlast_LAW"}, {6111, "lawroads_law05"}, {6112, "lawroads_law06"}, {6113, "lawroads_law07"},
	{6114, "lawroads_law08"}, {6115, "lawroads_law09"}, {6116, "lawroads_law10"}, {6117, "lawroads_law11"},
	{6118, "lawroads_law01"}, {6119, "lawroads_law13"}, {6120, "lawroads_law14"}, {6121, "lawroads_law15"},
	{6122, "lawroads_law16"}, {6123, "lawroads_law17"}, {6124, "lawroads_law18"}, {6125, "lawroads_law19"},
	{6126, "lawroads_law20"}, {6127, "lawroads_law21"}, {6128, "lawroads_law22"}, {6129, "lawroads_law23"},
	{6130, "mallb_laW"}, {6132, "gaz8_law"}, {6133, "gaz9_law"}, {6134, "gaz11_law"},
	{6135, "gaz13_law"}, {6136, "gaz15_law"}, {6137, "gaz12_law"}, {6138, "gaz10_law"},
	{6145, "gaz16_law"}, {6148, "gaz19_law"}, {6150, "gaz7_LAW"}, {6151, "gaz21_LAW"},
	{6152, "gaz20_law"}, {6157, "gaz22_law"}, {6158, "gaz24_law"}, {6159, "gaz25_law"},
	{6160, "gaz23_law"}, {6165, "burggrnd1_law"}, {6186, "gaz5_LAW01"}, {6187, "gaz26_law"},
	{6188, "gaz_pier2"}, {6189, "gaz_pier1"}, {6192, "nitelites_LAW02"}, {6193, "nitelites_LAW01"},
	{6194, "nitelites_LAW05"}, {6195, "nitelites_LAW03"}, {6196, "nitelites_LAW04"}, {6199, "gaz27_LAW"},
	{6203, "LAland_08"}, {6204, "lawplaza_alpha"}, {6205, "ja_gerrartlaw"}, {6209, "beachbnt"},
	{6210, "beachbunt2"}, {6211, "offven01_law01"}, {6212, "offven05_law01"}, {6213, "venlaw_grnd"},
	{6214, "LAW_alphaveg"}, {6217, "law_vengrnd"}, {6223, "gaz2bld_law"}, {6225, "lawroads_law04"},
	{6227, "canalWest01_LAw"}, {6228, "CanalBrij02_LAw"}, {6229, "canalEast01_LAw"}, {6230, "canaljetty_LAw"},
	{6231, "CanalRoad01_LAw"}, {6232, "canal_arch"}, {6233, "canal_floor"}, {6234, "canal_floor2"},
	{6235, "canal_arch01"}, {6236, "canal_floor3"}, {6237, "venice_alpha"}, {6248, "RailTunn01_LAw"},
	{6249, "RailTunn02_LAw"}, {6250, "RailTunn03_LAw"}, {6251, "RailTunn04_LAw"}, {6252, "RailTunn05_LAw"},
	{6257, "burger01_LAw"}, {6280, "Beach01_LAw2"}, {6281, "Beach02_LAw2"}, {6282, "venice03_laW2"},
	{6283, "pier04b_LAw2"}, {6284, "santahouse02_law2"}, {6285, "santahouse04_law2"}, {6286, "santahouse05_law2"},
	{6287, "Pier02c_LAw2"}, {6288, "Pier02b_LAw2"}, {6289, "pier03b_LAw2"}, {6290, "RailTunn02_LAw2"},
	{6291, "Roads30_LAw2"}, {6292, "RailTunn01_LAw2"}, {6293, "lawborder2b_LAW2"}, {6294, "santahousegrp_law2"},
	{6295, "sanpedlithus_LAw2"}, {6296, "veropolice_LAW2"}, {6297, "Beachut01_LAw2"}, {6298, "ferris01_LAw2"},
	{6299, "pier03c_LAw2"}, {6300, "Pier04_LAw2"}, {6301, "Roads11_LAw2"}, {6302, "Roads14_LAw2"},
	{6303, "Roads16_LAw2"}, {6304, "Roads19_LAw2"}, {6305, "Roads23_LAw2"}, {6306, "Roads24_LAw2"},
	{6307, "Roads26_LAw2"}, {6308, "Roads28_LAw2"}, {6309, "Roads29_LAw2"}, {6310, "Roads08_LAw2"},
	{6311, "Roads33_LAw2"}, {6312, "BeaCliff03_LAw2"}, {6313, "BeaCliff01_LAw2"}, {6314, "Roads31_LAw2"},
	{6315, "BeaLand01_LAw2"}, {6316, "Roads02_LAw2"}, {6317, "Roads07_LAw2"}, {6318, "Roads12_LAw2"},
	{6319, "Roads17_LAw2"}, {6320, "Roads15_LAw2"}, {6321, "Roads18_LAw2"}, {6322, "Roads20_LAw2"},
	{6323, "Roads21_LAw2"}, {6324, "Roads22_LAw2"}, {6325, "Roads01_LAw2"}, {6326, "Roads34_LAw2"},
	{6327, "Roads35_LAw2"}, {6328, "sunset12_LAw2"}, {6329, "Roads27_LAw2"}, {6330, "Roads06_LAw2"},
	{6331, "Roads05_LAw2"}, {6332, "rodeo01_LAw2"}, {6333, "Roads25_LAw2"}, {6334, "rodeo02_LAw2"},
	{6336, "rodeo03_LAw2"}, {6337, "sunset01_LAw2"}, {6338, "sunset02_LAw2"}, {6340, "rodeo06_LAw2"},
	{6341, "century02_LAw2"}, {6342, "century01_LAw2"}, {6343, "GeoPark01_LAw2"}, {6344, "GeoParkTr_LAw2"},
	{6345, "Roads04_LAw2"}, {6347, "BeaCliff04_LAw2"}, {6349, "SunBils02_LAw2"}, {6350, "SunBils01_LAw2"},
	{6351, "rodeo05_LAw2"}, {6352, "rodeo05Tr_LAw2"}, {6353, "SunBils04_LAw2"}, {6354, "Sunset04_LAw2"},
	{6355, "Sunset05_LAw2"}, {6356, "Sunset06_LAw2"}, {6357, "Sunset04Tr_LAw2"}, {6362, "Roads34Tr_LAw2"},
	{6363, "sunset02Tr_LAw2"}, {6364, "sunset07_LAw2"}, {6366, "sunset08_LAw2"}, {6368, "sunset03_LAw2"},
	{6369, "sunset09_LAw2"}, {6370, "rodeo06Tr_LAw2"}, {6371, "rodeo04_LAw2"}, {6372, "rodeo04Tr_LAw2"},
	{6373, "sunset11_LAw2"}, {6385, "rodeo02Tr_LAw2"}, {6386, "century02Tr_LAw2"}, {6387, "century03_LAw2"},
	{6388, "SanClifft02_LAw2"}, {6389, "SanClift01_LAw2"}, {6390, "SanClifft04_LAw2"}, {6391, "SanClifft05_LAw2"},
	{6393, "SanCliff04Tr_LAw2"}, {6397, "SanCliff02Tr_LAw2"}, {6398, "BeaCliff06_LAw2"}, {6399, "BeaCliff06Tr_LAw2"},
	{6400, "spraydoor_LAw2"}, {6403, "BeaCliff01Tr_LAw2"}, {6404, "venice01b_LAw2"}, {6405, "venice03Tr_laW2"},
	{6406, "venice04_LAw2"}, {6407, "venice04Tr_LAw2"}, {6411, "venice01bT_LAw2"}, {6412, "sunitwin01_LAw2"},
	{6413, "sunset07Tr_LAw2"}, {6416, "lawborder2a_LAW2"}, {6417, "lawborder2c_LAW2"}, {6421, "BeaLanTr02_LAw2"},
	{6422, "rdsign01_LAw2"}, {6427, "Roads03_LAw2"}, {6428, "Roads32_LAw2"}, {6430, "BeaLanTr01_LAw01"},
	{6431, "BeaLanTr03_LAw2"}, {6436, "santahouseTr_law2"}, {6443, "BeaCliff02_LAw2"}, {6444, "BeaCliff02Tr_LAw2"},
	{6448, "Pier01_LAw2"}, {6449, "Pier02_LAw2"}, {6450, "Pier03_LAw2"}, {6451, "Pier01Tr_LAw2"},
	{6457, "Pier02Tr_LAw2"}, {6458, "pier03Tr_LAw2"}, {6461, "ferris01Tr_LAw2"}, {6462, "pier04a_LAw2"},
	{6466, "pier04Tr_LAw2"}, {6487, "countclub01_LAw2"}, {6488, "countclub02_LAw2"}, {6489, "countclubTr_LAw2"},
	{6490, "tvstudio01_LAw2"}, {6497, "sunset10_LAw2"}, {6499, "sunset12Tr_LAw2"}, {6501, "RailTunn03_LAw2"},
	{6502, "RailTunn04_LAw2"}, {6507, "Roads09_LAw2"}, {6508, "Roads10_LAw2"}, {6509, "Roads36_LAw2"},
	{6513, "tunblock_LAw2"}, {6514, "tunent01_LAw2"}, {6516, "tvstudioTr_LAw2"}, {6517, "santagard_LAw2"},
	{6518, "LTS01_LAw2"}, {6519, "LTS02_LAw2"}, {6520, "LTS04_LAw2"}, {6521, "LTS03_LAw2"},
	{6522, "country_law2"}, {6524, "rdsign01_LAw03"}, {6863, "vgsNbuild07"}, {6864, "vrockcafe"},
	{6865, "steerskull"}, {6866, "circusconstruct03"}, {6867, "vegasplant06"}, {6868, "smlbuildvgas05"},
	{6869, "vegastemp1"}, {6871, "courthse_vgn"}, {6872, "vgn_corpbuild1"}, {6873, "vgn_corpbuild3"},
	{6874, "vgn_corpbuild2"}, {6875, "vgn_corpbuild4"}, {6876, "VegasNedge12"}, {6877, "VegasNedge02"},
	{6878, "VegasNroad055"}, {6879, "VegasNroad070"}, {6880, "VegasNroad071"}, {6881, "VegasNroad072"},
	{6882, "vgnorthland04"}, {6883, "vgnorthland06"}, {6884, "vgnorthland07"}, {6885, "VegasNedge03"},
	{6886, "VegasNedge04"}, {6887, "VegasNedge05"}, {6888, "VegasNedge06"}, {6897, "VegasNroad622"},
	{6898, "VegasNroad623"}, {6899, "VegasNroad624"}, {6900, "VegasNroad625"}, {6907, "vgndwntwnshop1"},
	{6908, "vgndwntwnshop2"}, {6909, "vgnprtlstation"}, {6910, "vgnprtlstation_01"}, {6912, "vgsNrailroad02"},
	{6913, "vgsNrailroad03"}, {6914, "vgsNrailroad05"}, {6915, "vgsNrailroad12"}, {6916, "VegasNedge07"},
	{6917, "vgsNrailroad25"}, {6919, "vgnlowbuild01"}, {6920, "vgnlowbuild11"}, {6921, "vgnlowbuild12"},
	{6922, "vgnlowbuild13"}, {6923, "vgnlowbuild14"}, {6924, "vgnlowbuild21"}, {6925, "vgnlowbuild235"},
	{6926, "vgnhseing68"}, {6928, "vegasplant03"}, {6929, "vegasplant04"}, {6930, "vegasplant05"},
	{6931, "vegasplant01"}, {6932, "vegasplant07"}, {6933, "vegasplant08"}, {6934, "vegasplant09"},
	{6944, "vgnshopnmall02"}, {6945, "VegasNroad0711"}, {6946, "vgnwalgren1"}, {6947, "vgnmall258"},
	{6948, "VegasNedge08"}, {6949, "VegasNedge09"}, {6950, "vegasNroad096"}, {6951, "VegasNroad032"},
	{6952, "VegasNroad027"}, {6953, "VegasNroad026"}, {6954, "vrockglass"}, {6955, "vgnlowwall03"},
	{6956, "VegasNroad712"}, {6957, "vgnshopnmall03"}, {6958, "vgnmallsigns14"}, {6959, "vegasNbball1"},
	{6960, "vegasNbball2"}, {6961, "vgsNwedchap3"}, {6962, "vgsNwedchap1"}, {6963, "vgsNwedchap2"},
	{6964, "venefountwat02"}, {6965, "venefountain02"}, {6966, "vegasNbank1"}, {6967, "vgnsqrefnce1"},
	{6968, "vgnsqrefnce2"}, {6969, "vgnsqrefnce3"}, {6970, "vgsNbnkmsh"}, {6971, "vgn_corpbuild31"},
	{6972, "shamparklvl1"}, {6973, "shamheliprt1"}, {6974, "VegasNedge10"}, {6975, "shamheliprt2"},
	{6976, "shamheliprt04"}, {6977, "stripshopn1"}, {6978, "starboatsign1"}, {6979, "vgnorthland13"},
	{6980, "trainstuff07_SFS02"}, {6981, "vgsNtraintunnel04"}, {6982, "vgsNtraintunnel01"}, {6983, "vgsNtraintunnel02"},
	{6984, "vgsNtraintunnel03"}, {6985, "casinoblock2"}, {6986, "vgngamblsign1"}, {6987, "casinoblock5"},
	{6988, "casinoblock3"}, {6989, "casinoblock4"}, {6990, "VegasNroad797"}, {6991, "VegasNroad798"},
	{6993, "vgncircus2"}, {6994, "vgncircus1"}, {6997, "strfshcpark69"}, {6999, "VegasNroad08202"},
	{7009, "vgnpolicebuild2"}, {7010, "vgnpolicecpark"}, {7011, "courthse_vgn01"}, {7012, "circusconstruct01"},
	{7013, "circusconstruct02"}, {7014, "circusconstruct04"}, {7015, "circusconstruct05"}, {7016, "circusconstruct06"},
	{7017, "circusconstruct07"}, {7018, "circusconstruct08"}, {7019, "vgnhseing111"}, {7020, "vgnhseing112"},
	{7021, "vgnhseing113"}, {7022, "vegasNnewfence2"}, {7023, "vgngatesecurity"}, {7024, "vegasplant069"},
	{7025, "plantbox1"}, {7026, "vegnewhousewal05"}, {7027, "vgnamunation1"}, {7028, "vegnewhousewal01"},
	{7029, "vegnewhousewal02"}, {7030, "vegnewhousewal03"}, {7031, "vegnewhousewal04"}, {7032, "vgnhseland04"},
	{7033, "vgnhsegate02"}, {7034, "vgnhsewall04"}, {7035, "vgsNwrehse17"}, {7036, "VegasNroad0162"},
	{7037, "vgnwalburger1"}, {7038, "vegasplantwal1"}, {7039, "vegasplantwal02"}, {7040, "vgnplcehldbox01"},
	{7041, "VegasNroad004"}, {7042, "VegasNedge11"}, {7043, "VegasNedge01"}, {7044, "vgnorthcoast07"},
	{7045, "vgnorthcoast06"}, {7046, "vgnorthcoast05"}, {7047, "vgnorthcoast04"}, {7048, "vgnorthcoast03"},
	{7049, "vgnorthcoast02"}, {7050, "VegasNedge13"}, {7051, "VegasNedge14"}, {7052, "VegasNroad079"},
	{7053, "VegasNedge15"}, {7054, "VegasNroad083"}, {7055, "VegasNroad084"}, {7056, "VegasNroad085"},
	{7057, "VegasNroad086"}, {7064, "VegasNroad08204"}, {7069, "VegasNedge16"}, {7071, "casinoblock41_dy"},
	{7072, "vegascowboy3"}, {7073, "vegascowboy1"}, {7075, "vgsN_telewire01"}, {7076, "vgsN_telewire02"},
	{7077, "vgsN_telewire03"}, {7078, "vgsN_telewire07"}, {7079, "vgsN_telewire08"}, {7080, "vgsN_telewire09"},
	{7081, "vgsN_telewire10"}, {7082, "vgsN_telewire12"}, {7083, "vgsN_telewire13"}, {7084, "vgsN_telewire14"},
	{7085, "vgsN_telewire15"}, {7086, "vgsN_telewire16"}, {7087, "vgsN_telewire17"}, {7088, "casinoshops1"},
	{7089, "newscafldvegs02"}, {7090, "vegasflag1"}, {7091, "vegasflag02"}, {7092, "vegasflag03"},
	{7093, "weddingsifgn1"}, {7094, "vegaschurchy1"}, {7095, "vgsplntground"}, {7096, "vrockstairs"},
	{7097, "vrockneon"}, {7098, "VegasNedge17"}, {7099, "VegasNedge18"}, {7100, "VegasNedge19"},
	{7101, "VegasNedge20"}, {7102, "plantbox12"}, {7103, "vgnplantwalk"}, {7104, "plantbox13"},
	{7105, "vegasplant0692"}, {7153, "shamheliprt05"}, {7172, "plantbox_04"}, {7184, "vgnpolicebuild1"},
	{7186, "plantbox15"}, {7187, "vgsN_WHse_post"}, {7188, "vgsN_WHse_post01"}, {7189, "vgsN_WHse_post02"},
	{7190, "vgsN_WHse_post03"}, {7191, "vegasNnewfence2b"}, {7192, "vegasNnewfence2c"}, {7196, "vgnNtrainfence01"},
	{7197, "vgnNtrainfence02"}, {7198, "vgnNtrainfence03"}, {7200, "vgnlowbuild239"}, {7201, "vegasplant_msh1"},
	{7202, "vgnNmallfence01"}, {7203, "vgnorthland05"}, {7204, "vgnmall258_rail"}, {7205, "vegaschurchy1_rail"},
	{7206, "VgsNnitlit02"}, {7207, "VgsNnitlit03"}, {7208, "VgsNnitlit04"}, {7209, "vgnNtrainfence04"},
	{7210, "vgnNtrainfence05"}, {7212, "vgnlowwall03_al"}, {7213, "vgnpolicecpark3"}, {7217, "vgnorthland08"},
	{7218, "VegasNedge21"}, {7220, "casinoblock41_nt"}, {7221, "VgsNnitlit01"}, {7222, "VgsNnitlit05"},
	{7223, "vgnlowbuild01fnc"}, {7224, "vgnhseing68fnc"}, {7226, "vgncircus2neon"}, {7227, "stripshopn1fnc"},
	{7228, "smlbuildvgas05fnc"}, {7229, "vegasplantwal02fnc"}, {7230, "ClwnPockSgn_n"}, {7231, "ClwnPockSgn_d"},
	{7232, "ClwnPockSgn"}, {7233, "ringmaster"}, {7234, "vgsNshopchap1"}, {7236, "vegasplant03b"},
	{7238, "vegasplant02"}, {7240, "vrockcafehtl"}, {7242, "circusconstruct02b"}, {7243, "vgncircus1b"},
	{7244, "vgnpolicecparkug"}, {7245, "vegasNbank1ug"}, {7246, "vgs_roadsign03"}, {7247, "VegasNedge22"},
	{7248, "vgnorthcoast02b"}, {7249, "vgnorthcoast03b"}, {7250, "vgnorthcoast04b"}, {7251, "vgnorthcoast05b"},
	{7252, "vgnorthcoast06b"}, {7253, "vgnorthcoast07b"}, {7254, "VegasNedge23"}, {7263, "casinoblock3_dy"},
	{7264, "casinoblock3_nt"}, {7265, "casinoblock5_dy"}, {7266, "casinoblock5_nt"}, {7268, "vgsN_frntneon_nt"},
	{7269, "smlbuildvgas05b"}, {7271, "vgsN_casadd01"}, {7272, "vgsN_casadd02"}, {7273, "vgsN_frent_shps"},
	{7276, "vegasplant01al"}, {7277, "vgnlowbuild239_al"}, {7280, "VgsNnitlit06"}, {7287, "VgsN_safehse_res"},
	{7288, "vgs_fmtcasgn"}, {7289, "casinoblock2_dy"}, {7290, "casinoblock2_nt"}, {7291, "vegasplant10"},
	{7292, "vgsn_mallwall"}, {7294, "vgsN_polNB01"}, {7295, "vgnNtrainfence05b"}, {7296, "vgnNtrainfence04b"},
	{7297, "vgnNtrainfence03b"}, {7298, "vgnNtrainfence01b"}, {7299, "vgnNtrainfence02b"}, {7300, "vgsN_addboard01"},
	{7301, "vgsN_addboard03"}, {7302, "vgsN_addboard04"}, {7303, "vgsN_addboard05"}, {7304, "vgnmallsigns02"},
	{7305, "vgnmallsigns03"}, {7306, "vgnmallsigns04"}, {7307, "vgnmallsigns05"}, {7308, "vgnmallsigns06"},
	{7309, "vgsN_addboard02"}, {7310, "vgsN_addboard06"}, {7311, "vgsN_carwash"}, {7312, "vgsN_carwash01"},
	{7313, "vgsN_scrollsgn01"}, {7314, "vgsN_frntneon_dy"}, {7315, "vgsn_blucasign"}, {7317, "plantbox17"},
	{7319, "vgnlowbuild12a"}, {7320, "VegasNroadsp08202"}, {7321, "VegasNroadsp08203"}, {7324, "VegasNroadsp079"},
	{7326, "VegasNroadVrkRbt"}, {7327, "VegasNroadspl079"}, {7331, "VGSN_burgsht_neon"}, {7332, "VGSN_burgsht_neon01"},
	{7333, "VgsNnitlit08"}, {7334, "VegasNroadslpt002"}, {7335, "VegasNroadslpt003"}, {7336, "VegasNroadslpt004"},
	{7337, "VegasNroadslpt001"}, {7344, "vgsn_pipeworks"}, {7347, "vgsn_pipeworks01"}, {7353, "vegasn_motorway"},
	{7355, "vegasn_motorway1"}, {7357, "vegasn_nland"}, {7359, "vegasn_nland2"}, {7361, "casinoblock4al"},
	{7362, "vegasNroad096b"}, {7364, "VegasN_motway5"}, {7366, "sham_superlod"}, {7367, "vgsNelec_fence_01"},
	{7368, "vgsNelec_fence_05"}, {7369, "vgsNelec_fence_04"}, {7370, "vgsNelec_fence_03"}, {7371, "vgsNelec_fence_02"},
	{7377, "vgsNelec_fence_04a"}, {7378, "vgsNelec_fence_03a"}, {7379, "vgsNelec_fence_02a"}, {7380, "vgsNelec_fence_01a"},
	{7381, "vgsNelec_fence_05a"}, {7383, "VegasNroad071b"}, {7387, "vgnboigashot15"}, {7388, "vrockpole"},
	{7389, "vgnboigashot25"}, {7390, "vgngassign96"}, {7391, "vgngassign102"}, {7392, "vegcandysign1"},
	{7415, "vgswlcmsign1"}, {7416, "vegasstadgrnd"}, {7417, "vegastadium"}, {7418, "ballparkbarrier"},
	{7419, "mallcarpark_vgn01"}, {7420, "vegasgolfcrs08"}, {7421, "vegasgolfcrs01"}, {7422, "vegasgolfcrs02"},
	{7423, "glfcrsgate1_vgs"}, {7424, "vgnmall1"}, {7425, "golfsign1_vgn"}, {7426, "elcidhotel_vgn"},
	{7427, "vegasWedge16"}, {7428, "vegasNroad03"}, {7429, "vegasNroad04"}, {7430, "vegasNroad05"},
	{7431, "vegasNroad06"}, {7432, "vegasNroad07"}, {7433, "vegasNroad09"}, {7434, "vegasWedge02"},
	{7435, "vegasNroad15"}, {7436, "vegasNroad24"}, {7437, "vegasNroad25"}, {7438, "vegasWedge03"},
	{7439, "vegasWedge04"}, {7440, "vegasNroad34"}, {7441, "vegasNroad35"}, {7442, "vegasNroad36"},
	{7443, "vegasNroad37"}, {7444, "vgswindustroad05"}, {7445, "vegasNroad39"}, {7446, "vegasNroad40"},
	{7447, "vegasWedge05"}, {7448, "vegasWcoast05"}, {7449, "vegasWcoast01"}, {7450, "vegasWcoast02"},
	{7451, "vegasWedge06"}, {7452, "vegasWedge07"}, {7453, "vegasNland02"}, {7454, "vegasNland03"},
	{7455, "vegasNland04"}, {7456, "vegasNland05"}, {7457, "vegasWedge08"}, {7458, "vegasWedge09"},
	{7459, "vegasNland08"}, {7460, "vegasNland09"}, {7461, "vegasNland10"}, {7462, "vegasNland11"},
	{7463, "vegasNland12"}, {7464, "vegasNland13"}, {7465, "vegasNland14"}, {7466, "vegasNland15"},
	{7467, "vegasNland16"}, {7468, "vegasNland17"}, {7469, "vegasNland18"}, {7470, "vegasWedge10"},
	{7471, "vegasWedge31"}, {7472, "vegasWedge12"}, {7473, "vegasWedge13"}, {7474, "vegasNland23"},
	{7475, "vegasWedge14"}, {7476, "vegasNroad43"}, {7477, "vegasNroad44"}, {7478, "vegasNroad45"},
	{7479, "vegasNroad46"}, {7480, "vegasWedge15"}, {7481, "vegasNroad48"}, {7482, "vegasNroad49"},
	{7483, "vegasNroad50"}, {7484, "vegasNroad51"}, {7485, "vegasWedge01"}, {7486, "vgswindustroad01"},
	{7488, "vgncarpark1"}, {7489, "vgnhseing34"}, {7490, "vegasnorthwrehse1"}, {7491, "vgnhseing25"},
	{7492, "vgnhseing40"}, {7493, "vgnabatbuild"}, {7494, "vgnhseing42"}, {7495, "vgnhseing43"},
	{7496, "vgnhseing44"}, {7497, "vgnorthwrehse14"}, {7498, "vegaswrailroad01"}, {7499, "vegaswrailroad02"},
	{7500, "vegaswrailroad03"}, {7501, "vegaswrailroad04"}, {7502, "vegaswrailroad05"}, {7503, "vegaswrailroad06"},
	{7504, "glfcrsgate2_vgn"}, {7505, "glfcrsgate3_vgn"}, {7506, "vgnlowbuild057"}, {7507, "vgnlowbuild09"},
	{7508, "vgnlowbuild17"}, {7509, "vgnlowbuild20"}, {7510, "vgnlowbuild236"}, {7511, "vegaswtrainstat"},
	{7512, "vegaswtrainstat2"}, {7513, "vgnwrehse69"}, {7514, "vgnwrewall1"}, {7515, "vegasnfrates1"},
	{7516, "vegasnfrates02"}, {7517, "vgnwreland1"}, {7518, "vgnhseing82"}, {7519, "vgnhseland1"},
	{7520, "vgnlowbuild203"}, {7521, "vgnlowbuild202"}, {7522, "vgnhsegate1"}, {7523, "vgnhseland2"},
	{7524, "vgnhsewall3"}, {7525, "vgnfirestat"}, {7526, "vgncarshow1"}, {7527, "vegasnfrates03"},
	{7528, "downvgnbild1"}, {7529, "vgnlowbuild18"}, {7530, "vgngebuild1"}, {7531, "vgnlowmall2"},
	{7532, "vgnlowwall1"}, {7533, "newaprtmntsvgN08"}, {7534, "newaprtmntsvgN07"}, {7535, "newaprtmntsvgN03"},
	{7536, "newaprtmntsvgN14"}, {7537, "newaprtmntsvgN09"}, {7538, "newaprtmntsvgN16"}, {7539, "burgerland1"},
	{7540, "burgerland02"}, {7541, "vgntelwires04"}, {7542, "vgntelwires05"}, {7543, "vgntelwires08"},
	{7544, "vegasNroad22"}, {7545, "vegasNroad17"}, {7546, "vegasNroad01"}, {7547, "vegasNroad18"},
	{7548, "vegasWedge17"}, {7549, "vegasNroad23"}, {7550, "vegasNroad21"}, {7551, "vegasNroad20"},
	{7552, "vegasNroad19"}, {7553, "vegasWedge18"}, {7554, "vgnhseing89"}, {7555, "bballcpark1"},
	{7556, "bballcpark2"}, {7557, "vegasWcoast04"}, {7558, "vegasWedge19"}, {7559, "vegasWedge20"},
	{7560, "vgnfrsttfence"}, {7561, "vegasnfrates04"}, {7562, "vegastwires01"}, {7563, "vegastwires02"},
	{7564, "vegastwires03"}, {7565, "vegastwires04"}, {7566, "vegastwires05"}, {7567, "vegastwires06"},
	{7568, "vegastwires07"}, {7569, "vegastwires08"}, {7570, "vgntelwires17"}, {7571, "vegastwires09"},
	{7572, "vegastwires10"}, {7573, "vegastwires11"}, {7574, "vegastwires12"}, {7575, "vegastwires13"},
	{7576, "vegastwires14"}, {7577, "vegastwires15"}, {7578, "vegastwires16"}, {7579, "vgncnstructlnd"},
	{7580, "vegasNroad57"}, {7581, "mirageroad1"}, {7582, "miragebuild04"}, {7583, "visagesign1"},
	{7584, "miragebuild01"}, {7585, "miragebuild05"}, {7586, "miragebuild07"}, {7587, "miragebuild03"},
	{7588, "miragebuild02"}, {7589, "miragebuild08"}, {7590, "miragebuild09"}, {7591, "miragebuild10"},
	{7592, "miragebuild11"}, {7593, "miragebuild12"}, {7595, "miragehedge1"}, {7596, "tamomotel1"},
	{7597, "gingersign1"}, {7598, "vgntelwires18"}, {7599, "stripshopstat"}, {7600, "vegasgolfcrs03"},
	{7601, "vegasgolfcrs04"}, {7602, "vegasgolfcrs05"}, {7603, "vegasgolfcrs06"}, {7604, "vegasgolfcrs07"},
	{7605, "vegasNroad08"}, {7606, "vegasbigsign1"}, {7607, "vgntelwires19"}, {7608, "vgntelwires20"},
	{7609, "vgntelwires21"}, {7610, "vgsmallsign1"}, {7611, "vegasstadwall01"}, {7612, "vegasstadwall05"},
	{7613, "vegasstadwall04"}, {7614, "vegasstadwall03"}, {7615, "vegasstadwall02"}, {7616, "vgnballparkland"},
	{7617, "vgnbballscorebrd"}, {7618, "vgnwrehse14barb"}, {7619, "vgnabartoirinter2"}, {7620, "vegasnfrates05"},
	{7621, "vegasnfrates06"}, {7622, "vegasnfrates07"}, {7623, "vegaswtrainfence06"}, {7624, "vegaswtrainfence07"},
	{7625, "vgnhseing129"}, {7626, "vgnhseland03"}, {7627, "vgnabatoir"}, {7628, "vgnwrehse14barb01"},
	{7629, "vegasNroad56"}, {7630, "venetiancpark01"}, {7631, "vegasWedge11"}, {7632, "vegasWedge22"},
	{7633, "vegasWedge23"}, {7634, "vegasWedge24"}, {7635, "venetiancpark02"}, {7636, "venetiancpark03"},
	{7637, "vegastwires18"}, {7638, "vegastwires19"}, {7639, "vegastwires21"}, {7640, "vegastwires31"},
	{7641, "vegastwires32"}, {7642, "vegastwires33"}, {7643, "vegastwires34"}, {7644, "vegastwires35"},
	{7645, "vegastwires36"}, {7646, "vegastwires45"}, {7647, "vegastwires46"}, {7648, "vegastwires47"},
	{7649, "vegastwires48"}, {7650, "vgnusedcar2"}, {7651, "vgnusedcar1"}, {7652, "bunting1"},
	{7653, "bunting02"}, {7654, "bunting04"}, {7655, "bunting06"}, {7656, "bunting08"},
	{7657, "plasticsgate1"}, {7658, "vgnbuild1new"}, {7659, "vgngymsteps"}, {7660, "venetiancpark04"},
	{7661, "venetiancpark05"}, {7662, "miragehedge14"}, {7663, "vgncarshow2"}, {7664, "glfcrsgate5_vgs"},
	{7665, "glfcrsgate4_vgs"}, {7666, "vgswlcmsign2"}, {7681, "vegasnotxrefhse1"}, {7692, "vgnhseing8282"},
	{7696, "vgngebuild102"}, {7707, "vgwbom2"}, {7708, "vegaswestbmb02"}, {7709, "vgwbom1"},
	{7729, "vegasWedge25"}, {7730, "vegasWedge21"}, {7731, "vegasWedge26"}, {7755, "vegasNroad31"},
	{7832, "vgnabartoirinter"}, {7834, "vegasnfrates08"}, {7836, "vegasnfrates09"}, {7837, "vegaswtrainfence08"},
	{7838, "vegaswtrainfence01"}, {7839, "vegaswtrainfence02"}, {7840, "vegaswtrainfence03"}, {7841, "vegaswtrainfence04"},
	{7842, "vegaswtrainfence05"}, {7849, "vegasNroad62"}, {7852, "vegasNroad63"}, {7854, "vegasNroad64"},
	{7861, "vgnhseing8283"}, {7862, "vgntelwires22"}, {7863, "vgswindustroad08"}, {7864, "vgswindustroad07"},
	{7865, "vegasWedge27"}, {7866, "vgswindustroad04"}, {7867, "vgswindustroad03"}, {7868, "vegasWedge28"},
	{7878, "vegasNroad242"}, {7880, "vgswstbbllgrnd"}, {7881, "vegasNroad65"}, {7882, "vegasWedge30"},
	{7884, "vgnmall1_2"}, {7885, "vegasglfhse1"}, {7889, "vegasWedge29"}, {7891, "vgwspry1"},
	{7892, "visageneon"}, {7893, "vegascrashbar04"}, {7894, "vegascrashbar05"}, {7900, "vgwestbillbrd1"},
	{7901, "vgwestbillbrd02"}, {7902, "vgwestbillbrd03"}, {7903, "vgwestbillbrd04"}, {7904, "vgwestbillbrd05"},
	{7905, "vgwestbillbrd06"}, {7906, "vgwestbillbrd07"}, {7907, "vgwestbillbrd08"}, {7908, "vgwestbillbrd09"},
	{7909, "vgwestbillbrd10"}, {7910, "vgwestbillbrd11"}, {7911, "vgwestbillbrd12"}, {7912, "vgwestbillbrd13"},
	{7913, "vgwestbillbrd14"}, {7914, "vgwestbillbrd15"}, {7915, "vgwestbillbrd16"}, {7916, "vegaswaterfall02"},
	{7917, "vegasglfhse2"}, {7918, "vgnlowmall3"}, {7919, "downvgnbild12"}, {7920, "vgwstnewall6903"},
	{7921, "vgwstnewall6904"}, {7922, "vgwstnewall6905"}, {7923, "vgwstnewall6902"}, {7924, "vgwstnewall6901"},
	{7925, "vgstreetdirt1"}, {7926, "vgnabatoir2"}, {7927, "vgswsvehse1"}, {7929, "vgwsavehse2"},
	{7930, "vgwsavehsedor"}, {7931, "vgswsvehse04"}, {7932, "vgsnotxrefhse02"}, {7933, "vegascrashbar06"},
	{7934, "vgnbuild1new2"}, {7938, "vegasNroad2469"}, {7939, "glfcrsgate29_vgn"}, {7940, "vegirlfrhouse02"},
	{7942, "vegstadneon"}, {7943, "burgershotneon1"}, {7944, "burgershotneon02"}, {7945, "vegaswedge111"},
	{7947, "vegaspumphouse1"}, {7950, "vegaspumphouse02"}, {7952, "miragehedge09"}, {7953, "miragehedge04"},
	{7954, "miragehedge0436"}, {7955, "vgwbitodirt"}, {7956, "vgwcuntwall1"}, {7963, "vegasWedge17b"},
	{7965, "vegasNroad23b"}, {7967, "vegasNroad22b"}, {7969, "vegasNroad17b"}, {7971, "vgnprtlstation03"},
	{7972, "vgnboigashot10"}, {7973, "vgnboigashot23"}, {7978, "airport01_lvS"}, {7979, "blastdef01_lvS"},
	{7980, "airprtbits12_lvS"}, {7981, "smallradar02_lvS"}, {7982, "gatesB_lvS"}, {7983, "vegascollege_lvS"},
	{7984, "airprtcrprk01_lvS"}, {7985, "shop13_lvs"}, {7986, "plants01_lvs"}, {7987, "vegasSedge09"},
	{7988, "VegasSroad025"}, {7989, "VegasSroad026"}, {7990, "VegasSroad027"}, {7991, "VegasSroad035"},
	{7992, "VegasSroad053"}, {7993, "VegasSroad060"}, {7994, "vegasSedge23"}, {7995, "VegasSroad088"},
	{7996, "vgsSairportland03"}, {7997, "vgsSairportland02"}, {7998, "vegasSedge26"}, {7999, "vgsSairportland04"},
	{8000, "vgsSairportland05"}, {8001, "VegasSland36"}, {8002, "vegasSedge20"}, {8003, "vegasSedge22"},
	{8004, "VegasSland40"}, {8005, "VegasSland41"}, {8006, "vegasSedge25"}, {8007, "VegasSland44"},
	{8008, "vegasSedge24"}, {8009, "VegasSroad100"}, {8010, "VegasSroad104"}, {8033, "vgsSairportland01"},
	{8034, "flghtschl01_lvs"}, {8035, "vegasSedge30"}, {8036, "VegasSroad106"}, {8037, "crprkgrnd01_lvs"},
	{8038, "arprtermnl01_lvs"}, {8039, "VegasSroad107"}, {8040, "airprtcrprk02_lvS"}, {8041, "apbarriergate06_lvS"},
	{8042, "apbarriergate07_lvS"}, {8043, "vegasSedge11"}, {8044, "aptcanopy_lvs"}, {8045, "vegasSedge03"},
	{8046, "VegasSroad046"}, {8047, "VegasSroad017"}, {8048, "VegasSroad047"}, {8049, "VegasSroad076"},
	{8050, "vegasSedge14"}, {8051, "vegasSedge13"}, {8052, "vegasSedge15"}, {8053, "vegasSedge16"},
	{8054, "vegasSedge17"}, {8055, "vegasSedge18"}, {8056, "vegasSedge19"}, {8057, "hseing01_lvs"},
	{8058, "vgswrehse06"}, {8059, "vgswrehse07"}, {8060, "vgswrehse03"}, {8061, "vgswrehse04"},
	{8062, "vgswrehse17"}, {8063, "vgswrehse16"}, {8064, "vgswrehse05"}, {8065, "vgswrehse09"},
	{8066, "hseing03_lvs"}, {8067, "hseing02_lvs"}, {8068, "hseing04_lvs"}, {8069, "hseing05_lvs"},
	{8070, "VegasSroad122"}, {8071, "wrhsegrnd02_lvs"}, {8072, "vegasSedge21"}, {8073, "vgsfrates02"},
	{8074, "vgsfrates03"}, {8075, "vgsfrates04"}, {8076, "vgsfrates05"}, {8077, "vgsfrates06"},
	{8078, "vgsfrates07"}, {8079, "hospital01_lvs"}, {8080, "VegasSroad128"}, {8081, "vgstwires20_lvs"},
	{8082, "vgstwires21_lvs"}, {8083, "vgstwires22_lvs"}, {8084, "vgstwires24_lvs"}, {8085, "vgstwires23_lvs"},
	{8086, "vgstwires25_lvs"}, {8087, "vgstwires26_lvs"}, {8091, "VegasSland58"}, {8128, "vgsSrdbrdg_lvs"},
	{8130, "vgschurch01_lvs"}, {8131, "vgschurch02_lvs"}, {8132, "vgschurch03_lvs"}, {8133, "VegasSland59"},
	{8134, "vgschrchgrnd_lvs"}, {8135, "VegasSroad130"}, {8136, "vgSbikeschl04"}, {8137, "VegasSroad132"},
	{8147, "vgsSelecfence01"}, {8148, "vgsSelecfence02"}, {8149, "vgsSelecfence03"}, {8150, "vgsSelecfence04"},
	{8151, "vgsSelecfence05"}, {8152, "vgsSelecfence06"}, {8153, "vgsSelecfence07"}, {8154, "vgsSelecfence08"},
	{8155, "vgsSelecfence09"}, {8165, "vgsSelecfence10"}, {8167, "apgate1_VegS01"}, {8168, "Vgs_guardhouse01"},
	{8169, "vgs_guardhseflr"}, {8171, "vgsSairportland06"}, {8172, "vgsSairportland07"}, {8173, "vgs_concwall01"},
	{8174, "vgs_concwall02"}, {8175, "vgs_concwall03"}, {8176, "vgs_concwall04"}, {8177, "vgs_concwall05"},
	{8178, "vgs_concwall06"}, {8185, "vgsSredbrix02"}, {8186, "vgsSredbrix03"}, {8187, "vgsSredbrix04"},
	{8188, "vgsSredbrix05"}, {8189, "vgsSredbrix06"}, {8194, "vgsScorrag_fence01"}, {8198, "vegasSedge01"},
	{8199, "vegasSedge27"}, {8200, "VegasSland12"}, {8201, "stadium_lvs"}, {8202, "VegasSland56"},
	{8206, "vgsSstadrail03"}, {8207, "vgsSstadrail05"}, {8208, "vgsSstadrail06"}, {8209, "vgsSelecfence11"},
	{8210, "vgsSelecfence12"}, {8212, "vegasSedge29"}, {8213, "vgsSspagjun02"}, {8214, "vgsSspagjun03"},
	{8215, "vgsSspagjun04"}, {8216, "vgsSspagjun05"}, {8217, "vgsSspagjun06"}, {8218, "vgsSspagjun07"},
	{8219, "vgsSspagjun08"}, {8228, "vgSbikeschl03"}, {8229, "vgSbikeschl02"}, {8230, "vgSbikeschl01"},
	{8231, "vgSbikeschl05"}, {8232, "vgSbikeschl06"}, {8236, "VegasSroad131"}, {8237, "vgsbikeschint"},
	{8240, "vgssbighanger1"}, {8242, "vegasSedge10"}, {8244, "vegasSedge02"}, {8245, "vegasSedge05"},
	{8246, "vegasSedge12"}, {8247, "pltschlhnger69_lvs"}, {8249, "pltschlhnger70_lvs"}, {8251, "pltschlhnger02_lvs"},
	{8253, "pltschlhnger01_lvs"}, {8254, "vgswrehse10"}, {8255, "vgswrehse13"}, {8256, "vegasSedge28"},
	{8260, "vgswrehse18"}, {8262, "vgsSelecfence13"}, {8263, "vgsSelecfence14"}, {8264, "VegasSland34"},
	{8281, "airport02_lvs"}, {8283, "vgschrchgrnd02_lvs"}, {8285, "vgschrchgrnd03_lvs"}, {8286, "vgschrchgrnd05_lvs"},
	{8287, "vgschrchgrnd04_lvs"}, {8288, "VegasSland56b"}, {8290, "vgsSspagjun09"}, {8292, "vgsbboardsigns01"},
	{8293, "vgsbboardsigns02"}, {8294, "vgsbboardsigns03"}, {8300, "vgswrehse08"}, {8302, "jumpbox01_lvs01"},
	{8305, "VegasSroad1072"}, {8306, "VegasSland562"}, {8308, "vegas_grasect01"}, {8310, "vgsbboardsigns06"},
	{8311, "vgsSelecfence15"}, {8313, "vgsSelecfence16"}, {8314, "vgsSelecfence17"}, {8315, "vgsSelecfence18"},
	{8319, "vegstadplants1"}, {8320, "vegstadrail69"}, {8321, "vegstadplants2"}, {8322, "vgsbboardsigns08"},
	{8323, "vgsbboardsigns09"}, {8324, "vgsbboardsigns10"}, {8325, "vgsbboardsigns12"}, {8326, "vgsbboardsigns13"},
	{8327, "vgsbboardsigns14"}, {8328, "vgsbboardsigns15"}, {8329, "vgsbboardsigns16"}, {8330, "vgsbboardsigns17"},
	{8331, "vgsbboardsigns18"}, {8332, "vgsbboardsigns19"}, {8333, "stadium02_lvs"}, {8335, "vgsfrates08"},
	{8337, "vgsfrates10"}, {8339, "vgsfrates11"}, {8341, "vgsfrates12"}, {8342, "vgsSelecfence119"},
	{8343, "vgsSairportland09"}, {8344, "vgsSairportland10"}, {8345, "gatesB_lvS01"}, {8350, "vgsSairportland11"},
	{8351, "vgsSairportland12"}, {8352, "vgsSairportland16"}, {8353, "vgsSairportland13"}, {8354, "vgsSairportland17"},
	{8355, "vgsSairportland18"}, {8356, "vgsSairportland15"}, {8357, "vgsSairportland14"}, {8368, "vgsSspagjun10"},
	{8369, "vgsSelecfence05b"}, {8370, "aptcanopyday_lvs"}, {8371, "aptcanopynit_lvs01"}, {8372, "airportneon"},
	{8373, "VegasS_jetty01"}, {8375, "airprtbits14_lvS"}, {8377, "VegasSroad0522a"}, {8378, "vgsbighngrdoor"},
	{8380, "vegasSedge1919"}, {8382, "vgsSspagjun06b"}, {8383, "vgsSspagjun06c"}, {8386, "vgsSspagjun09b"},
	{8388, "vegasSedge29b"}, {8390, "multicarpark01_lvS"}, {8391, "ballys03_lvs"}, {8392, "ballys02_lvs"},
	{8393, "ballys01_lvs"}, {8394, "vgsbox10sgn_lvS"}, {8395, "vgEpyrmd_dy"}, {8396, "sphinx02_lvs"},
	{8397, "luxorpillar01_lvs"}, {8398, "luxorland01_lvS"}, {8399, "nightclub01_lvs"}, {8400, "nightclub02_lvs"},
	{8401, "shop05_lvs"}, {8402, "vgshpgrnd01_lvS"}, {8403, "shop03_lvs"}, {8404, "vgshpgrnd03_lvS"},
	{8405, "vgshpgrnd02_lvS"}, {8406, "carparksign01_lvs"}, {8407, "carparkhut01_lvs"}, {8408, "carparksign02_lvs"},
	{8409, "gnhotel01_lvs"}, {8410, "carparkhut02_lvs"}, {8411, "gnhotel02_lvs"}, {8412, "wddngchplsign_lvs"},
	{8416, "bballcourt02_lvs"}, {8417, "bballcourt01_lvs"}, {8418, "vgshpgrnd04_lvS"}, {8419, "vgsbldng01_lvs"},
	{8420, "arprtcrprk04_lvS"}, {8421, "pirtehtl02_lvS"}, {8422, "pirtehtl01_lvS"}, {8423, "prtskllsgn02_lvs"},
	{8424, "vagbond01_lvs"}, {8425, "villa_inn01_lvs"}, {8426, "vlla_innfnc1_lvs"}, {8427, "villa_inn03_lvs"},
	{8428, "villa_inn02_lvs"}, {8429, "vlla_innfnc2_lvs"}, {8430, "vlla_innfnc3_lvs"}, {8431, "nucarpark01_lvs"},
	{8432, "shop06_lvs"}, {8433, "residnce01_lvs"}, {8434, "vgsoffice01_lvs"}, {8435, "shop11_lvs"},
	{8436, "shop12_lvs"}, {8437, "residntial01_lvs"}, {8438, "VegasEroad003"}, {8439, "vgsEedge12"},
	{8440, "vgsEedge15"}, {8441, "vgsEedge16"}, {8442, "VegasEroad009"}, {8443, "VegasEroad010"},
	{8444, "VegasEroad011"}, {8445, "vgsEedge13"}, {8446, "VegasEroad013"}, {8447, "VegasEroad019"},
	{8448, "VegasEroad020"}, {8449, "VegasEroad021"}, {8450, "VegasEroad022"}, {8451, "VegasEroad031"},
	{8452, "VegasEroad032"}, {8453, "VegasEroad033"}, {8454, "VegasEroad034"}, {8455, "VegasEroad041"},
	{8456, "VegasEroad058"}, {8457, "vgsEedge19"}, {8458, "VegasEroad075"}, {8459, "vgsEland02_lvs"},
	{8460, "vgsEland03_lvs"}, {8461, "vgsEland04_lvs"}, {8462, "vgsEland06_lvs"}, {8463, "vgsEland07_lvs"},
	{8464, "vgsEland08_lvs"}, {8465, "vgsEcoast07"}, {8466, "vgsEcoast08"}, {8467, "vgsEland11_lvs"},
	{8468, "vgsEland12_lvs"}, {8469, "vgsEedge25"}, {8470, "vgsEedge27"}, {8471, "VegasEroad092"},
	{8472, "VegasEroad094"}, {8473, "VegasEroad095"}, {8474, "VegasEroad096"}, {8475, "VegasEroad097"},
	{8476, "VegasEroad098"}, {8477, "VegasEroad099"}, {8480, "csrspalace01_lvs"}, {8481, "csrsfence01_lvs"},
	{8482, "csrspalace02_lvs"}, {8483, "pirateland02_lvS"}, {8484, "pirateland03_lvS"}, {8485, "ballysbase_lvs"},
	{8486, "vgsEedge21"}, {8487, "ballyswtr01_lvs"}, {8488, "flamingo02_lvs"}, {8489, "flamingo01_lvs"},
	{8490, "flamingo03_lvs"}, {8491, "flamingo04_lvs"}, {8492, "flamingo05_lvs"}, {8493, "pirtshp01_lvs"},
	{8494, "lowbuild01_lvs"}, {8495, "mall01_lvs"}, {8496, "lowbuild03_lvs"}, {8497, "vgsEland16_lvs"},
	{8498, "exclbr_hotl01_lvS"}, {8499, "exclbr_hotl02_lvS"}, {8500, "excalibur01_lvS"}, {8501, "casroyale01_lvs"},
	{8502, "casroyldge01_lvs"}, {8503, "shop08_lvs"}, {8504, "shop10_lvs"}, {8505, "shop14_lvs"},
	{8506, "shop16_lvs"}, {8507, "shop15_lvs"}, {8508, "genshop01_lvs"}, {8509, "shop09_lvs"},
	{8510, "VegasEroad112"}, {8511, "VegasEroad111"}, {8512, "VegasEroad113"}, {8513, "residnce01_lvs01"},
	{8514, "VegasEroad110"}, {8515, "vgsEland01_lvs"}, {8516, "shop07_lvs"}, {8517, "VegasEroad114"},
	{8518, "vgsEedge26"}, {8519, "VegasEroad015"}, {8520, "VegasEroad045"}, {8521, "VegasEroad071"},
	{8522, "VegasEroad093"}, {8523, "VegasEroad072"}, {8524, "VegasEroad042"}, {8525, "VegasEroad043"},
	{8526, "vgbndsign01_lvs"}, {8527, "vagbond02_lvs"}, {8528, "vagbond03_lvs"}, {8529, "vgsEland17_lvs"},
	{8530, "vgbndsign02_lvs"}, {8531, "vgsEland18_lvs"}, {8532, "vgsEland19_lvs"}, {8533, "vgsEedge10"},
	{8534, "tikimotel01_lvs"}, {8535, "tikimotel02_lvs"}, {8536, "tikisign01_lvs"}, {8537, "tikisign02_lvs"},
	{8538, "vgsrailroad03"}, {8539, "vgsrailroad04"}, {8540, "vgsrailroad05"}, {8541, "vgsrailroad06"},
	{8542, "vgsrailroad07"}, {8543, "vgsEedge11"}, {8544, "vgsEhseing06"}, {8545, "vgsEwrehse01"},
	{8546, "vgsEwrehse02"}, {8547, "fctrygrnd01_lvs"}, {8548, "trainsign01_lvs"}, {8549, "fctryfnce01_lvs"},
	{8550, "laconcha_lvs"}, {8551, "lacnchasgn_lvs"}, {8552, "VegasEroad123"}, {8553, "vgsEland21_lvs"},
	{8554, "vgsEland22_lvs"}, {8555, "vgsEcrthse"}, {8556, "vgshsegate04"}, {8557, "vgshseing27"},
	{8558, "vgshseing28"}, {8559, "vgshsewall06"}, {8560, "vgEhseland05"}, {8561, "VegasEroad124"},
	{8562, "VegasEroad127"}, {8563, "lacnchasgn2_lvs"}, {8564, "vgsEland29_lvs"}, {8565, "vgsEbuild03_lvs"},
	{8566, "vgsEbuild02_lvs"}, {8567, "vgsEbuild04_lvs"}, {8568, "vgsEbuild05_lvs"}, {8569, "vgsEbuild12_lvs"},
	{8570, "vgsEbuild09_lvs"}, {8571, "vgsEbuild11_lvs"}, {8572, "vgsSstairs02_lvs"}, {8573, "balcony01_lvs"},
	{8574, "shpfrnt01_lvs"}, {8575, "vgstrainstation"}, {8576, "balcony02_lvs"}, {8577, "trnstngrnd01_lvs"},
	{8578, "vgstrainstation3"}, {8579, "balcony03_lvs"}, {8580, "vgsSstairs05_lvs"}, {8581, "vgsEbuild06_lvs"},
	{8582, "vgsEedge01"}, {8583, "vgsEcoast02"}, {8584, "vgsEcoast03"}, {8585, "vgsEcoast04"},
	{8586, "vgsrailroad11"}, {8587, "vgsrailroad13"}, {8588, "vgsrailroad15"}, {8589, "lwbldstuff03_lvs"},
	{8590, "filmrllprop01_lvs"}, {8591, "olympic01_lvs"}, {8592, "olympcrail01_lvs"}, {8593, "vgsEwires01_lvs"},
	{8594, "vgsEwires02_lvs"}, {8595, "vgsEwires19_lvs"}, {8596, "vgsEwires03_lvs"}, {8597, "tikimtl02rail_lvs"},
	{8607, "vgsEwires05_lvs"}, {8608, "vgsEwires04_lvs"}, {8609, "VegasEroad008"}, {8610, "VegasEroad023"},
	{8611, "VegasEroad036"}, {8612, "VegasEroad037"}, {8613, "vgsSstairs03_lvs"}, {8614, "vgsSstairs01_lvs"},
	{8615, "vgsSstairs04_lvs"}, {8616, "VegasEroad130"}, {8617, "bush01_lvs"}, {8618, "ceasersign_lvs"},
	{8619, "bush02_lvs"}, {8620, "exclbrsign01_lvS"}, {8621, "exclbrsign02_dy"}, {8622, "VegasEroad131"},
	{8623, "bush03_lvs"}, {8624, "vgsrailroad16"}, {8625, "vgsEedge04"}, {8626, "vgsEedge03"},
	{8627, "vgsrailroad23"}, {8628, "vgsrailroad22"}, {8629, "vgsrailroad19"}, {8630, "vgsrailroad20"},
	{8631, "vgsrailroad21"}, {8632, "vgsrailroad24"}, {8633, "vgsrailroad26"}, {8634, "vgsrailroad25"},
	{8635, "vgsrailbuild01"}, {8636, "tikimtlwall01_lvs"}, {8637, "VegasEroad134"}, {8638, "vgsEedge09"},
	{8639, "chnatwnmll01_lvs"}, {8640, "chnatwnmll02_lvs"}, {8641, "chnatwnmll03_lvs"}, {8642, "chnatwnmll04_lvs"},
	{8643, "vgsEbuild01_lvs"}, {8644, "exclbrsign03_lvS"}, {8645, "shbbyhswall01_lvs"}, {8646, "shbbyhswall02_lvs"},
	{8647, "shbbyhswall03_lvs"}, {8648, "shbbyhswall04_lvs"}, {8649, "shbbyhswall05_lvs"}, {8650, "shbbyhswall06_lvs"},
	{8651, "shbbyhswall07_lvs"}, {8652, "shbbyhswall12_lvs"}, {8653, "shbbyhswall08_lvs"}, {8654, "vgsEland23_lvs"},
	{8655, "vgsEland24_lvs"}, {8656, "shbbyhswall09_lvs"}, {8657, "shbbyhswall10_lvs"}, {8658, "shabbyhouse11_lvs"},
	{8659, "shbbyhswall11_lvs"}, {8660, "bush04_lvs"}, {8661, "gnhtelgrnd_lvs"}, {8662, "nucrprkwall_lvs"},
	{8663, "triadcasno01_lvs"}, {8664, "casrylegrnd_lvs"}, {8665, "chnatwnmll06_lvs"}, {8666, "chnatwnmll07_lvs"},
	{8667, "chnatwnmll08_lvs"}, {8668, "chnatwnmll11_lvs"}, {8669, "chnatwnmll13_lvs"}, {8670, "chnatwnmll12_lvs"},
	{8671, "vgsEland26_lvs"}, {8672, "vgsEedge06"}, {8673, "csrsfence03_lvs"}, {8674, "csrsfence02_lvs"},
	{8675, "wddngchpl02_lvs"}, {8676, "wdngchplsgn2_lvs"}, {8677, "vgsEland09_lvs"}, {8678, "wdngchplgrnd01_lvs"},
	{8679, "bush05_lvs"}, {8680, "chnatwnfnc02_lvs"}, {8681, "chnatwnfnc03_lvs"}, {8682, "chnatwnfnc04_lvs"},
	{8683, "chnatwnfnc05_lvs"}, {8684, "chnatwnfnc06_lvs"}, {8685, "chnatwnfnc07_lvs"}, {8686, "chnatwnfnc01_lvs"},
	{8687, "vgelwbld15_lvs"}, {8688, "vgelwbld16_lvs"}, {8689, "vgelwbld17_lvs"}, {8710, "bnuhotel01_lvs"},
	{8824, "vgsEedge05"}, {8825, "vgsEstrphdge01"}, {8826, "vgsEstrphdge02"}, {8827, "vgsEstrphdge03"},
	{8828, "vgsEstrphdge04"}, {8832, "pirtebrdg01_lvS"}, {8833, "prtbrdgrope_lvS"}, {8834, "prtbrdgrope2_lvS"},
	{8835, "pirtetrees01_lvS"}, {8836, "pirtetrees02_lvS"}, {8837, "pirtetrees03_lvS"}, {8838, "vgEhshade01_lvs"},
	{8839, "vgsEcarshow1"}, {8840, "vgsEflgs1_lvs"}, {8841, "rsdncarprk01_lvs"}, {8842, "vgsE24hr_lvs"},
	{8843, "arrows01_lvs"}, {8844, "vgsEedge23"}, {8845, "flamingrnd_lvs"}, {8846, "bush06_lvs"},
	{8849, "vgelwbld18_lvs"}, {8850, "vgelwbldgrd_lvs"}, {8851, "vgEplntr01_lvs"}, {8852, "bush07_lvs"},
	{8853, "vgEplntr02_lvs"}, {8854, "vgEplntr03_lvs"}, {8855, "vgEplntr04_lvs"}, {8856, "vgEplntr06_lvs"},
	{8857, "vgsEcoast06"}, {8858, "vgsrailroad09"}, {8859, "vgsEcoast05"}, {8860, "vgsrailroad14"},
	{8865, "vgEplntr07_lvs"}, {8866, "vgEplntr08_lvs"}, {8867, "vgsEcnstrct01"}, {8868, "vgsEcnstrct02"},
	{8869, "vgsEcnstrct05"}, {8870, "vgsEcnstrct03"}, {8871, "vgsEcnstrct04"}, {8872, "vgEscfldples01"},
	{8873, "vgsEcnstrct12"}, {8874, "vgsEcnstrct13"}, {8875, "vgsEcnstrct14"}, {8876, "vgsEcnstrct15"},
	{8877, "vgsEcnstrct10"}, {8878, "vgsEcnstrct11"}, {8879, "vgsEcnstrct08"}, {8880, "vgsEcnstrct09"},
	{8881, "excalibur02_lvS"}, {8882, "excalibur03_lvS"}, {8883, "vgsEfrght01"}, {8884, "vgsEfrght02"},
	{8885, "vgsEfrght03"}, {8886, "vgsEfrght04"}, {8887, "bush08_lvs"}, {8888, "bush09_lvs"},
	{8889, "vgsEstrphdge33"}, {8932, "VegasEroad136"}, {8947, "vgElkup"}, {8948, "lckupgrgdoor_lvs"},
	{8954, "vgsEspras01"}, {8955, "vgsEspray01"}, {8957, "vgsEspdr01"}, {8969, "vgsEwires06_lvs"},
	{8979, "vgsEesc02"}, {8980, "vgsEesc01"}, {8981, "prtwires_lvs"}, {8982, "vgsEstrphdge34"},
	{8983, "vgsEedge02"}, {8989, "bush10_lvs"}, {8990, "bush11_lvs"}, {8991, "bush12_lvs"},
	{9000, "vgsEedge17"}, {9001, "vgsEedge20"}, {9002, "vgsEedge22"}, {9003, "vgsEedge24"},
	{9004, "VegasEroad051"}, {9005, "VegasEroad050"}, {9006, "VegasEroad086"}, {9007, "VegasEroad049"},
	{9008, "VegasEroad048"}, {9019, "luxortrees01_lvS"}, {9020, "vgsEcnstfnc01"}, {9021, "vegasEroad068"},
	{9022, "vegasEroad067"}, {9023, "VegasEroad069"}, {9024, "vegasEroad070"}, {9025, "vegasEroad065"},
	{9026, "VegasEroad066"}, {9027, "vegasEroad064"}, {9028, "VegasEroad063"}, {9029, "vgsEtrainfence01"},
	{9030, "vgsEtrainfence02"}, {9031, "vgsEtrainfence03"}, {9032, "vgsEtrainfence04"}, {9033, "vgsEtrainfence05"},
	{9034, "tikitrees01_lvS"}, {9035, "tikitrees02_lvS"}, {9036, "tikibrdg01_lvs"}, {9037, "csrspalace03_lvs"},
	{9039, "csrspalace04_lvs"}, {9041, "prthotelfnc01"}, {9042, "VegasEroad137"}, {9043, "luxorpillar03_lvs"},
	{9044, "pirateland05_lvS"}, {9045, "pirateland04_lvS"}, {9046, "vgsEland31_lvs"}, {9047, "vgsEland32_lvs"},
	{9052, "pirateland06_lvS"}, {9054, "chnatwnmll14_lvs"}, {9055, "chnatwnmll15_lvs"}, {9056, "vgsEedge07"},
	{9057, "vgsEedge08"}, {9062, "arprtcrprk05_lvS"}, {9064, "vgsEland36_lvs"}, {9065, "vgsEland35_lvs"},
	{9066, "vgsEland37_lvs"}, {9070, "casroyale02_lvs"}, {9071, "casroyale03_lvs"}, {9072, "casroyale04_lvs"},
	{9076, "sphinx01_lvs"}, {9078, "excalibur04_lvS"}, {9080, "excalibur05_lvS"}, {9082, "vgsEcnstrct17"},
	{9083, "vgsEcnstrct18"}, {9086, "vgEhseland06"}, {9087, "vgEhseland07"}, {9088, "VgsEnitlit01"},
	{9089, "VgsEnitlit02"}, {9090, "vgEferryland"}, {9093, "cmdgrgdoor_lvs"}, {9094, "csrElights_dy"},
	{9095, "csrElights_nt"}, {9098, "vgsEsvhse01"}, {9099, "vgsEsvehse1"}, {9100, "luxorlight_dy"},
	{9101, "luxorlight_nt"}, {9104, "vgEpyrmd_nt"}, {9106, "vgsEamuntn"}, {9108, "vgsEtrainfence06"},
	{9109, "vgsEtrainfence07"}, {9110, "vgsEtrainfence08"}, {9111, "vgsEtrainfence09"}, {9112, "vgsEtrainfence10"},
	{9113, "vgbndfnce"}, {9114, "wddngchpl01_lvs"}, {9115, "VegasEroad138"}, {9116, "VegasEroad139"},
	{9117, "VegasEroad140"}, {9118, "VegasEroad141"}, {9119, "vgsEedge14"}, {9120, "VegasEroad143"},
	{9121, "flmngoneon01"}, {9122, "triadneon01"}, {9123, "ballyneon01"}, {9124, "crsplcneon"},
	{9125, "lxorneon"}, {9126, "cmtneon01"}, {9127, "cmtneon02"}, {9128, "lxorneon2"},
	{9129, "pirtneon"}, {9131, "shbbyhswall13_lvs"}, {9132, "triadcasign_lvs"}, {9135, "sbvgsEseafloor01"},
	{9136, "sbvgsEseafloor02"}, {9137, "sbvgsEseafloor04"}, {9138, "sbvgsEseafloor05"}, {9139, "sbvgsEseafloor06"},
	{9140, "sbvgsEseafloor07"}, {9150, "VegasEroad144"}, {9152, "bush13_lvs"}, {9153, "bush14_lvs"},
	{9154, "triadwires"}, {9159, "pirtshp02_lvs"}, {9162, "shop01_lvs"}, {9163, "shop04_lvs"},
	{9164, "vgsrailbuild02"}, {9165, "vgsrailbuild03"}, {9166, "vgsrailbuild04"}, {9167, "vgsrailbuild05"},
	{9168, "vgsrailbuild06"}, {9169, "vgsEprtlstation1"}, {9171, "vgsEprtlstation2"}, {9173, "vgsEedge18"},
	{9174, "tislandbrdge01_lvs"}, {9175, "VgsEnitlit03"}, {9184, "vgEastbillbrd08"}, {9185, "vgEastbillbrd07"},
	{9186, "vgEastbillbrd05"}, {9187, "vgEastbillbrd04"}, {9188, "vgEastbillbrd02"}, {9189, "vgEastbillbrd06"},
	{9190, "vgEastbillbrd01"}, {9191, "vgEastbillbrd03"}, {9192, "vgegassgn01_lvs"}, {9193, "vgegassgn03_lvs"},
	{9205, "road04sfn"}, {9206, "land2_sfN10"}, {9207, "land2_sfN01"}, {9208, "land2_sfN19"},
	{9209, "land_SFN06"}, {9210, "land2_sfN11"}, {9211, "land2_sfN09"}, {9212, "land2_sfN13"},
	{9213, "land2_sfN15"}, {9214, "land2_sfN12"}, {9215, "land2_sfN17"}, {9216, "land_SFN13"},
	{9217, "land2_sfN16"}, {9218, "land_SFN15"}, {9219, "land2_sfN14"}, {9220, "Villa_SFN_CHRIS_01"},
	{9221, "Villa_SFN_CHRIS_02"}, {9222, "road08sfn"}, {9223, "land_sfn21"}, {9224, "cock_sfn02"},
	{9225, "land_sfn22"}, {9226, "land_sfn18"}, {9227, "moresfnshit20"}, {9228, "moresfnshit22"},
	{9229, "sfn_coast03"}, {9230, "sfn_coast01"}, {9231, "road01sfn"}, {9232, "road06sfn"},
	{9233, "road07sfn"}, {9234, "land_sfn20"}, {9235, "land2_sfN18"}, {9236, "cock_sfn07"},
	{9237, "lighhouse_SFN"}, {9238, "moresfnshit28"}, {9239, "track01_SFN"}, {9240, "track02_SFN"},
	{9241, "copbits_sfn"}, {9242, "cock_sfn06"}, {9243, "hrborbuild_SFN02"}, {9244, "hrborbuild_SFN01"},
	{9245, "cstguard_SFN01"}, {9246, "cock_sfn09"}, {9247, "hrbrmstr_SFN01"}, {9248, "cock_sfn08"},
	{9249, "beach_sfn01"}, {9250, "road02sfn"}, {9251, "road03sfn"}, {9252, "road05sfn"},
	{9253, "sfn_coast04"}, {9254, "carpark_sfn01"}, {9255, "carpark_sfn02"}, {9256, "cock_sfn14"},
	{9257, "sfn_coast05"}, {9258, "preshoosml02_SFN"}, {9259, "preshoosbig02_SFN"}, {9260, "hrborbuild_SFN03"},
	{9261, "land_sfn19"}, {9262, "hway_SFN01"}, {9264, "hway_SFN03"}, {9265, "hway_SFN04"},
	{9266, "hway_SFN05"}, {9267, "hway_SFN06"}, {9269, "GGbridgeend_SFN"}, {9270, "preshoosbig01_SFN01"},
	{9271, "preshoos03_SFN01"}, {9272, "preshoos03_SFN02"}, {9273, "preshoos01_SFN03"}, {9274, "preshoos03_SFN03"},
	{9275, "preshoosml02_SFN01"}, {9276, "land_SFN17"}, {9277, "bigsfnlite02"}, {9278, "bigsfnlite05"},
	{9279, "bigsfnlite08"}, {9280, "bigsfnlite10"}, {9281, "bigsfnlite12"}, {9282, "bigsfnlite14"},
	{9283, "bigsfnlite16"}, {9284, "land2_sfN02"}, {9285, "land2_sfN04"}, {9286, "land2_sfN03"},
	{9287, "land2_sfN06"}, {9288, "land2_sfN05"}, {9289, "land2_sfN20"}, {9290, "land2_sfN07"},
	{9291, "land2_sfN08"}, {9292, "sfn_crashbar06"}, {9293, "sfn_crashbar01"}, {9294, "sfn_crashbar02"},
	{9295, "sfn_crashbar03"}, {9296, "sfn_crashbar04"}, {9297, "sfn_crashbar05"}, {9298, "sfn_crashbar07"},
	{9299, "sfn_clothesSHOP_cm1"}, {9300, "sfn_town02"}, {9301, "tempobj_SFN04"}, {9302, "sfn_town01"},
	{9303, "sfn_town03"}, {9304, "land_sfn23"}, {9305, "ground01_SFN_CM"}, {9306, "sfn_cm_grNd02"},
	{9307, "SFN_SHOPBITS01"}, {9308, "SFN_DOORWAY02"}, {9309, "SFN_CM_GRNDSHOP"}, {9310, "chapel_SFN"},
	{9311, "SFN_newland_cm02"}, {9312, "SFN_newland_cm03"}, {9313, "SFN_newland_cm01"}, {9314, "advert01_sfn"},
	{9315, "carpark01_sfs_cm"}, {9316, "shopstairsSFN1"}, {9317, "hedge02_SFN_CM"}, {9318, "hedge03SFN_CM"},
	{9319, "preshoos03_SFN04"}, {9320, "preshoosbig02_SFN01"}, {9321, "garage_sfn01"}, {9322, "preshoos03_SFN05"},
	{9323, "moresfnshit29"}, {9324, "preshoosbig02_SFN02"}, {9325, "preshoos03_SFN06"}, {9326, "preshoos03_SFN07"},
	{9327, "moresfnshit30"}, {9328, "moresfnshit31"}, {9329, "sfn_coast06"}, {9330, "SFN_wall_cm01"},
	{9331, "SFN_PRESHEDGE1"}, {9332, "SFN_wall_cm02"}, {9333, "SFNhedge_PRES02"}, {9334, "hedge09_SFN_CM"},
	{9335, "SFN_hedge_cm_010"}, {9336, "hedge04_SFN_CM"}, {9337, "SFN_WALL_cm2"}, {9338, "land_sfn19B"},
	{9339, "SFNvilla001_CM"}, {9340, "SFNfence_CM01"}, {9341, "Villa_SFN_CHRIS_04"}, {9342, "land2_sfN09a"},
	{9343, "SFN_fence_cm2"}, {9344, "SFNhdge_presi_cm10"}, {9345, "SFN_PIER_grassbit"}, {9346, "SFNLand_villaCM1"},
	{9347, "SFNpres_hdge_10"}, {9348, "sfn_hedge05_cm"}, {9349, "SFNfence_pres_5"}, {9350, "SFN_pres_hedge9"},
	{9351, "SFN_STAIRS_bit"}, {9352, "cables"}, {9353, "land_SFN17a"}, {9361, "boatoffice_sfn"},
	{9362, "boatoffice2_sfn"}, {9437, "sbedsfn4_SFN"}, {9438, "sbedsfn1_SFN"}, {9439, "sbedsfn2_SFN"},
	{9440, "sbedsfn3_SFN"}, {9476, "hway_SFN02"}, {9482, "chinagate"}, {9483, "land_16_sfw"},
	{9484, "land_46_sfw"}, {9485, "road_SFW02"}, {9486, "road_SFW03"}, {9487, "road_SFW04"},
	{9488, "road_SFW05"}, {9489, "road_SFW06"}, {9490, "road_SFW07"}, {9491, "road_SFW08"},
	{9492, "road_SFW09"}, {9493, "road_SFW10"}, {9494, "tempbuild_sfw41"}, {9495, "tempbuild_sfw42"},
	{9496, "sboxbld4_sfw02"}, {9497, "sboxbld4_sfw69"}, {9498, "sboxbld4_sfw70"}, {9499, "sboxbld4_sfw71"},
	{9500, "sboxbld4_sfwa"}, {9501, "sfwbox_sfw27"}, {9502, "sfwbox_sfw43"}, {9503, "sboxbld4_sfw72"},
	{9504, "sboxbld4_sfw73"}, {9505, "gard_sfw01"}, {9506, "bigboxtmp02"}, {9507, "bigboxtmp03"},
	{9508, "bigboxtmp09"}, {9509, "bigboxtmp05"}, {9510, "bigboxtmp06"}, {9511, "bigboxtmp07"},
	{9512, "bigboxtmp08"}, {9513, "bigboxtmp1"}, {9514, "supasave_sfw"}, {9515, "bigboxtmp18"},
	{9516, "bigboxtmp17"}, {9517, "bigboxtmp16"}, {9518, "bigboxtmp15"}, {9519, "bigboxtmp20"},
	{9520, "boxbuildsfw_31"}, {9521, "morboxes03"}, {9522, "morboxes04"}, {9523, "newvic2_sfw"},
	{9524, "blokmod1_sfw"}, {9525, "boigas_sfw03"}, {9526, "boigas_sfw02"}, {9527, "boigas_sfw01"},
	{9528, "boigas_sfw04"}, {9529, "blokmod3_sfw"}, {9530, "sandbch_sfw02"}, {9547, "blokcut_sfw04"},
	{9549, "sfw_boxwest10"}, {9550, "sfw_boxwest04"}, {9551, "sandbch_sfw04"}, {9552, "sandbch_sfw03"},
	{9553, "sandbch_sfw69"}, {9554, "park3_sfw"}, {9555, "park1_sfw"}, {9556, "park2_sfw"},
	{9557, "lake_sfw"}, {9558, "cables_sfw"}, {9559, "fescape_sfw07"}, {9560, "fescape_sfw08"},
	{9561, "fescape_sfw09"}, {9562, "fescape_sfw02"}, {9563, "fescape_sfw04"}, {9564, "firscape_sfw04"},
	{9565, "fescape_sfw06"}, {9566, "fescape_sfw01"}, {9567, "cables_sfw01"}, {9568, "cables_sfw24"},
	{9569, "cables_sfw28"}, {9570, "road_SFW11"}, {9571, "road_SFW12"}, {9572, "blokmod3_sfw04"},
	{9573, "newvic1_sfw"}, {9575, "archbrij_SFW"}, {9576, "frway_box1"}, {9577, "frway_box2"},
	{9578, "blokmod2_sfw01"}, {9579, "blokmod2_sfw03"}, {9580, "sboxbld4_sfw83"}, {9581, "sboxbld4_sfw84"},
	{9582, "temp_SFW35"}, {9583, "freight_SFW15"}, {9584, "freight_SFW31"}, {9585, "freight_SFW33"},
	{9586, "freight_deck_SFW"}, {9587, "freight_box_SFW01"}, {9588, "freightbox_inSFw"}, {9589, "frght_BOXES08"},
	{9590, "freight_interiorsfw"}, {9591, "road_SFW13"}, {9592, "sfw_boxwest12"}, {9593, "hosbibal_sfw"},
	{9594, "fescape_sfw03"}, {9595, "tempbuild_sfw22"}, {9596, "land_04_sfw"}, {9597, "sandbch_sfw01"},
	{9598, "sfw_boxwest02"}, {9599, "vicbig_sfw1"}, {9600, "road_SFW14"}, {9601, "road_SFW15"},
	{9602, "road_SFW16"}, {9603, "road_16_sfw"}, {9604, "frght_BOXES19"}, {9605, "land_01_sfw"},
	{9606, "land_34_sfw"}, {9607, "land_22_sfw"}, {9608, "ggate_park_sfw"}, {9609, "land_37_sfw"},
	{9610, "land_42_sfw"}, {9611, "land_43_sfw"}, {9612, "ferrybit1_sfw"}, {9613, "ferrybit3_sfw"},
	{9614, "donuts2_sfw"}, {9615, "donuts_sfw"}, {9616, "land_20_sfw"}, {9617, "boigagr_sfw"},
	{9618, "scaff1_SFw"}, {9623, "toll_SFW"}, {9624, "spraysfw"}, {9625, "spdr_sfw"},
	{9652, "road_SFW17"}, {9653, "road_SFW18"}, {9680, "tramstat_SFW"}, {9682, "carspaces1_sfw"},
	{9683, "ggbrig_07_sfw"}, {9685, "ggbrig_02_sfw"}, {9689, "ggbrig_05_sfw"}, {9690, "ggbrig_06_sfw"},
	{9693, "ggbrig_03_sfw"}, {9694, "ggbrig_01_sfw"}, {9696, "ggbrig_04_sfw"}, {9697, "carspaces3_sfw"},
	{9698, "BRIDGE_argh"}, {9699, "road_SFW19"}, {9700, "road_SFW20"}, {9701, "road_SFW21"},
	{9702, "road_SFW22"}, {9703, "road_SFW23"}, {9704, "road_SFW24"}, {9705, "tunnel_sfw"},
	{9706, "road_SFW25"}, {9707, "road_SFW26"}, {9708, "road_SFW27"}, {9709, "road_SFW01"},
	{9710, "road_SFW29"}, {9711, "road_SFW30"}, {9712, "road_SFW31"}, {9713, "road_SFW32"},
	{9714, "road_SFW33"}, {9715, "road_SFW34"}, {9716, "road_sfw55"}, {9717, "road_SFW35"},
	{9718, "road_SFW36"}, {9719, "road_SFW37"}, {9720, "road_SFW38"}, {9721, "road_SFW39"},
	{9722, "road_SFW40"}, {9723, "road_SFW41"}, {9724, "road_SFW42"}, {9725, "road_SFW43"},
	{9726, "road_SFW44"}, {9727, "road_SFW45"}, {9728, "road_SFW46"}, {9729, "road_SFW47"},
	{9730, "road_SFW48"}, {9731, "road_SFW49"}, {9732, "road_SFW50"}, {9733, "road_SFW51"},
	{9734, "road_SFW52"}, {9735, "road_SFW53"}, {9736, "road_SFW54"}, {9737, "blokmod3_sfw69"},
	{9738, "blokmod2_sfw69"}, {9739, "newvic1_sfw69b"}, {9740, "newvic1_sfw69"}, {9741, "blokmod1_sfwc"},
	{9742, "blokmod1_sfwb"}, {9743, "rock_coastSFW2"}, {9744, "rock_coastSFW1"}, {9745, "rock_coastSFW3"},
	{9746, "rock_coastSFW4"}, {9747, "road_SFW90"}, {9748, "sfw_boxwest03"}, {9749, "sfw_boxwest01"},
	{9750, "sfw_boxwest05"}, {9751, "sfw_boxwest06"}, {9752, "sfw_boxwest08"}, {9753, "sfw_boxwest09"},
	{9754, "sfw_boxwest11"}, {9761, "freight_alfa_SFW"}, {9762, "sfw_boxwest07"}, {9763, "blokcut_sfw01"},
	{9764, "blokcut_sfw02"}, {9765, "blokcut_sfw03"}, {9766, "scaff3_SFw"}, {9767, "scaff2_SFw"},
	{9812, "veg_ivy_balcny_kb08"}, {9814, "firscape_sfw01"}, {9815, "firscape_sfw02"}, {9816, "firscape_sfw03"},
	{9817, "scaff1b_SFw"}, {9818, "shpbridge_sfw01"}, {9819, "shpbridge_sfw02"}, {9820, "shpbridge_sfw04"},
	{9821, "shpbridge_sfw03"}, {9822, "shpbridge_sfw08"}, {9823, "sav1sfw"}, {9824, "diner_SFw"},
	{9825, "carspaces3_sfw02"}, {9827, "road_SFW28"}, {9829, "bumblister_SFW"}, {9830, "ggcarpark_sfw"},
	{9831, "sfw_waterfall"}, {9832, "parkbridge_sfw"}, {9833, "fountain_SFW"}, {9834, "hosbibal3_sfw"},
	{9835, "hosbibal4_sfw"}, {9836, "hosbibal2_sfw"}, {9837, "gg_split2_SFW"}, {9838, "gg_split1_SFW"},
	{9858, "ferrybit69_sfw"}, {9859, "chinawning69b"}, {9860, "chinawning69"}, {9863, "land_21_sfw"},
	{9864, "land_18_sfw"}, {9885, "sfw_nitlite1"}, {9886, "sfw_nitelite2"}, {9889, "park3a_sfw"},
	{9891, "park2a_sfw"}, {9893, "gardsfw02"}, {9894, "blokmod2_sfw"}, {9895, "bigboxtmp19"},
	{9896, "hosbi2al_sfw"}, {9897, "hosbibal3b_sfw"}, {9898, "boigas_sfw05"}, {9899, "sprasfw"},
	{9900, "landshit_09_sfe"}, {9901, "ferybuild_1"}, {9902, "ferryland3"}, {9903, "pier69_models07"},
	{9904, "pier69_models04"}, {9905, "pier69_models06"}, {9906, "tempsf_2_sfe"}, {9907, "monolith_sfe"},
	{9908, "anotherbuild091"}, {9909, "vicstuff_sfe33"}, {9910, "fishwarf01"}, {9911, "fishwarf06"},
	{9912, "fishwarf03"}, {9913, "fishwarf04"}, {9914, "fishwarf05"}, {9915, "sfe_park"},
	{9916, "jumpbuild_sfe"}, {9917, "yet_another_sfe"}, {9918, "posh2_sfe"}, {9919, "grnwhite_sfe"},
	{9920, "vicstuff_sfe6000"}, {9921, "ferryshops1"}, {9922, "ferryshops2"}, {9923, "ferryshops3"},
	{9924, "ferryshops4"}, {9925, "ferryshops5"}, {9926, "ferryshops07"}, {9927, "sfe_redwht2"},
	{9928, "ferryshops08"}, {9929, "boring_sfe"}, {9930, "nicepark_sfe"}, {9931, "church_sfe"},
	{9932, "nitelites_sfe05"}, {9933, "nitelites_sfe01"}, {9934, "nitelites_sfe04"}, {9946, "pyrground_sfe"},
	{9947, "lbd_house1_sfe"}, {9948, "lbd_house2_sfe"}, {9949, "pier1_sfe"}, {9950, "pier2_sfe"},
	{9951, "pier3_sfe"}, {9952, "vicstuff_sfe6006"}, {9953, "ottos_AUTOS_sfe"}, {9954, "pier69_sfe3"},
	{9955, "pier69_sfe1"}, {9956, "pier69_sfe2"}, {9957, "multustor2_sfe"}, {9958, "submarr_sfe"},
	{10008, "fer_cars2_sfe"}, {10009, "fer_cars3_sfe"}, {10010, "ugcarpark_SFe"}, {10011, "carspaces_sfe14"},
	{10012, "cables4"}, {10013, "vicstuff_sfe17"}, {10014, "vicstu69_sfe"}, {10015, "vicstu69b_sfe"},
	{10016, "vicnew_sfe04"}, {10017, "bigvic_a1"}, {10018, "tunnel_sfe"}, {10019, "vicstuff_sfe45"},
	{10020, "vicstuff_sfe22"}, {10021, "vicstuff_sfe06"}, {10022, "vicstuff_sfe04"}, {10023, "sfe_archybald1"},
	{10024, "archbuild_wins"}, {10025, "chinatown_sfe2"}, {10026, "fire_esc_SFE06"}, {10027, "bigwhiete_SFE"},
	{10028, "copshop_sfe"}, {10029, "copbits_sfe"}, {10030, "chinatown_sfe9"}, {10031, "landshit_24_sfe"},
	{10032, "carspaces_sfe"}, {10033, "fire_esc_SFE02"}, {10034, "landshit_18_sfe"}, {10035, "chinatown_sfe20"},
	{10036, "chin_sfe1121"}, {10037, "chbackbit8_sfe"}, {10038, "chinatown_sfe8"}, {10039, "chinatown_sfe1"},
	{10040, "cables3"}, {10041, "BIGCENTRAL_SFE"}, {10042, "fescape2_sfe"}, {10043, "vicstuff_sfe6004"},
	{10044, "sfe_swank1"}, {10045, "pinkbuild4_sfe"}, {10046, "pinkbuild_sfe"}, {10047, "monlith_ground"},
	{10048, "vicstuff_sfe66"}, {10049, "Posh_thingsfe"}, {10050, "vicstuff_sfe50"}, {10051, "carimp_SFE"},
	{10052, "lowmall"}, {10053, "fishwarf20_sfe"}, {10054, "fishwarf24_sfe"}, {10055, "fishwarf21_sfe"},
	{10056, "tempsf_4_sfe"}, {10057, "nitelites_sfe10"}, {10058, "nitelites_sfe11"}, {10060, "aprtmnts01_sfe"},
	{10061, "aprtmntrailgs01_SFe"}, {10062, "aprtmntrailgs03_SFe"}, {10063, "aprtmnts02_sfe"}, {10064, "aprtmntrailgs02_SFe"},
	{10065, "road24_sfe"}, {10066, "road02_sfe"}, {10067, "road05_sfe"}, {10068, "road_07_sfe"},
	{10069, "road06_sfe"}, {10070, "road08_sfe"}, {10071, "road09_sfe"}, {10072, "road10_sfe"},
	{10073, "road11_sfe"}, {10074, "road12_sfe"}, {10075, "road_16_sfe01"}, {10076, "road13_sfe"},
	{10077, "road14_sfe"}, {10078, "road15_sfe"}, {10079, "pyr_top_SFe"}, {10080, "fishwarf10_sfe"},
	{10083, "backalleys1_sfe"}, {10084, "fishwarf13_sfe"}, {10086, "aprtmnts03_sfe"}, {10087, "landsl01_sfe"},
	{10101, "vicstuff_sfe67"}, {10110, "road16_sfe"}, {10111, "road17_sfe"}, {10112, "road18_sfe"},
	{10113, "road19_sfe"}, {10114, "road20_sfe"}, {10115, "road21_sfe"}, {10116, "road22_sfe"},
	{10117, "road23_sfe"}, {10118, "road01_sfe"}, {10119, "road25_sfe"}, {10120, "road26_sfe"},
	{10121, "road27_sfe"}, {10122, "road28_sfe"}, {10123, "road29_sfe"}, {10124, "road30_sfe"},
	{10125, "road32_sfe"}, {10126, "road33_sfe"}, {10127, "road34_sfe"}, {10128, "road35_sfe"},
	{10129, "road36_sfe"}, {10130, "road37_sfe"}, {10131, "road38_sfe"}, {10132, "road39_sfe"},
	{10133, "road40_sfe"}, {10134, "road41_sfe"}, {10135, "road43_sfe"}, {10136, "road44_sfe"},
	{10137, "road45_sfe"}, {10138, "road46_sfe"}, {10139, "road47_sfe"}, {10140, "freig2_intSFE"},
	{10142, "dwntwnsl01_sfe1"}, {10143, "tempsf_1_sfe"}, {10145, "genome_SFE"}, {10146, "nitelites_sfe14"},
	{10147, "nitelites_sfe15"}, {10148, "bombshop"}, {10149, "bombdoor02"}, {10150, "fdorsfe"},
	{10151, "bigvicgrnd_sfe"}, {10152, "victimber1_sfe"}, {10153, "victimber2_sfe"}, {10154, "pier69gdr"},
	{10165, "pointybot_Sfe"}, {10166, "p69_rocks"}, {10173, "fire_esc_SFE03"}, {10174, "fire_esc_SFE04"},
	{10175, "fire_esc_SFE05"}, {10176, "fire_esc_SFE01"}, {10177, "fire_esc_SFE07"}, {10178, "fire_esc_SFE08"},
	{10179, "fire_esc_SFE09"}, {10180, "fire_esc_SFE10"}, {10181, "fire_esc_SFE11"}, {10182, "michdr"},
	{10183, "ferspaces"}, {10184, "sfcopdr"}, {10185, "lombardsteps"}, {10186, "lombard3_sfe"},
	{10187, "vicnew_sfe01"}, {10188, "vicnew_sfe02"}, {10189, "vicnew_sfe03"}, {10193, "hotelbits_Sfe07"},
	{10194, "hotelbits_Sfe03"}, {10195, "hotelbits_Sfe02"}, {10196, "hotelbits_Sfe01"}, {10197, "hotelbits_Sfe04"},
	{10226, "shipbits2_sfe"}, {10227, "shipbits1_sfe"}, {10228, "freight_litesSFE"}, {10229, "freighter2b_SFE"},
	{10230, "freighter_sfe"}, {10231, "freightboxes"}, {10233, "carspaces_sfe15"}, {10234, "fescape2b_sfe"},
	{10235, "pointybotb_Sfe"}, {10236, "hotelbits_Sfe06"}, {10242, "hotelbits_Sfe05"}, {10244, "vicjump_sfe"},
	{10245, "ottos_ramp"}, {10246, "sav1sfe"}, {10247, "road37b_sfe"}, {10248, "copcrates_sfe"},
	{10249, "ottos_bits"}, {10250, "masts1_sfe"}, {10252, "china_town_gateb"}, {10255, "chinawning07"},
	{10260, "pointybot22_Sfe"}, {10261, "chinawning01"}, {10262, "chinawning02"}, {10263, "chinawning03"},
	{10264, "chinawning04"}, {10265, "chinawning05"}, {10266, "chinawning06"}, {10267, "cables16"},
	{10270, "bigwhiete2_SFE"}, {10271, "sfe_redwht2b"}, {10273, "churchgr_sfe"}, {10274, "churchgr2_sfe"},
	{10275, "road07_sfe"}, {10276, "road42_sfe"}, {10278, "vicstu69c_sfe"}, {10280, "lowbox_sfe"},
	{10281, "michsign_sfe"}, {10282, "mich_int_sfe"}, {10287, "tempsf_4_sfe3"}, {10288, "tempsf_4_sfe2"},
	{10289, "tempsf_3_sfe"}, {10290, "garse_85_SFE"}, {10294, "road03_sfe"}, {10295, "road04_sfe"},
	{10296, "road31_sfe"}, {10300, "ferryland_sfe111"}, {10301, "ferry_ncoast1_sfe"}, {10305, "ferryland_sfe112"},
	{10306, "vicstuff_sfe38"}, {10308, "yet_another_sfe2"}, {10309, "pier69_models05"}, {10310, "boigas_sfe"},
	{10350, "OC_FLATS_GND01_SFS"}, {10351, "groundbit_10_SFS"}, {10352, "groundbit_11_SFS"}, {10353, "groundbit_12_SFS"},
	{10354, "groundbit_13_SFS"}, {10355, "groundbit_48_SFS"}, {10356, "hashbury_01_SFS"}, {10357, "transmitter_sfs"},
	{10358, "OC_FLATS_GND02_SFS"}, {10359, "sfshill02"}, {10360, "sfshill03"}, {10361, "sfshill04"},
	{10362, "sfshill05"}, {10363, "sfshill06"}, {10364, "sfshill07"}, {10365, "roadbit21_SFS"},
	{10366, "golftunnel1_SFS"}, {10367, "roadbit38_SFS"}, {10368, "cathedral_SFS"}, {10369, "smallshop_10_SFS08"},
	{10370, "alley1_SFS"}, {10371, "alley1_SFS01"}, {10372, "alley2_SFS01"}, {10373, "alley2_SFS02"},
	{10374, "alley2_SFS04"}, {10375, "subshop_SFS"}, {10376, "subshop2_SFS"}, {10377, "cityhall_SFS"},
	{10378, "ctiyhallsquare_SFS"}, {10379, "cityhall2_SFS"}, {10380, "cityhall2_SFS01"}, {10381, "artgallery_SFS"},
	{10382, "alleyfuckingway_SFS"}, {10383, "subshops3_SFS"}, {10384, "cityhallsq_SFS"}, {10385, "bbgroundbit_SFS"},
	{10386, "sfshill09"}, {10387, "cuntwland22_SFS"}, {10388, "tempobj_SFS02"}, {10389, "mission_07_SFS"},
	{10390, "mission_12_SFS"}, {10391, "mission_14_SFS"}, {10392, "smallshop_10_SFS07"}, {10393, "scum_SFS01"},
	{10394, "plot1_SFS"}, {10395, "mission_13_SFS"}, {10396, "hc_tenfence_SFS"}, {10397, "hc_stadlight1_SFS"},
	{10398, "healthclub_SFS"}, {10399, "healthcl69_SFS"}, {10400, "hc_grounds02_SFS"}, {10401, "hc_shed02_SFS"},
	{10402, "hc_secfence_SFS"}, {10403, "hc_track02_SFS"}, {10404, "hc_laybyland_SFS"}, {10405, "hc_golfcrse02_SFS"},
	{10406, "hc_grounds04_SFS"}, {10407, "hc_golfcrse03_SFS"}, {10408, "hc_golfcrse05_SFS"}, {10409, "hc_golfcrse09_SFS"},
	{10410, "hc_golfcrse10_SFS"}, {10411, "shiteybit_SFS"}, {10412, "poshotel1_SFS"}, {10413, "groundbit_09_SFS"},
	{10414, "OC_FLATS_GND03_SFS"}, {10415, "OC_FLATS_GND17_SFS"}, {10416, "OC_FLATS_GND16_SFS"}, {10417, "OC_FLATS_GND06_SFS"},
	{10418, "sfshill13"}, {10419, "OC_FLATS_GND07_SFS"}, {10420, "OC_FLATS_GND08_SFS"}, {10421, "OC_FLATS_GND09_SFS"},
	{10422, "OC_FLATS_GND19_SFS"}, {10423, "mission_15_SFS"}, {10424, "ROADSsfs01"}, {10425, "temphotel1_sfs"},
	{10426, "backroad_SFS"}, {10427, "haight_52_SFS"}, {10428, "hashblock1_02_SFS"}, {10429, "hashblock1_10_SFS"},
	{10430, "hashblock1_08_SFS"}, {10431, "hashbury_03_SFS"}, {10432, "haight_17_SFS"}, {10433, "hashbury_04_SFS"},
	{10434, "hashbury_05_SFS"}, {10435, "shoppie6_SFS04"}, {10436, "hashblock1_09_SFS"}, {10437, "hashfence_09_SFS"},
	{10438, "hashbury_07_SFS"}, {10439, "hashbury_08_SFS"}, {10440, "ROADSsfs09"}, {10441, "hashbury_10_SFS"},
	{10442, "graveyardwall_SFS"}, {10443, "graveyard_SFS"}, {10444, "poolwater_SFS"}, {10445, "hotelback2"},
	{10446, "hotelback1"}, {10447, "hashupass_SFS"}, {10448, "lastbit_08_SFS"}, {10449, "ROADSsfs17"},
	{10450, "ROADSsfs16"}, {10451, "sfshill12"}, {10452, "ROADSsfs39"}, {10453, "sfshill14"},
	{10454, "sfshill15"}, {10455, "ROADSsfs19"}, {10456, "ROADSsfs02"}, {10457, "ROADSsfs03"},
	{10458, "ROADSsfs04"}, {10459, "ROADSsfs05"}, {10460, "ROADSsfs06"}, {10461, "ROADSsfs07"},
	{10462, "ROADSsfs08"}, {10463, "ROADSsfs23"}, {10464, "ROADSsfs10"}, {10465, "ROADSsfs11"},
	{10466, "ROADSsfs12"}, {10467, "ROADSsfs13"}, {10468, "ROADSsfs14"}, {10469, "ROADSsfs15"},
	{10470, "ROADSsfs38"}, {10471, "ROADSsfs27"}, {10472, "ROADSsfs18"}, {10473, "ROADSsfs28"},
	{10474, "ROADSsfs20"}, {10475, "ROADSsfs21"}, {10476, "ROADSsfs22"}, {10477, "ROADSsfs30"},
	{10478, "ROADSsfs24"}, {10479, "ROADSsfs25"}, {10480, "ROADSsfs26"}, {10481, "ROADSsfs33"},
	{10482, "ROADSsfs29"}, {10483, "ROADSsfs36"}, {10484, "ROADSsfs32"}, {10485, "ROADSsfs35"},
	{10486, "ROADSsfs34"}, {10487, "parktunnel_SFS"}, {10488, "sfshill08"}, {10489, "cuntwland18_SFS"},
	{10490, "sfshill01"}, {10491, "sfshill11_SFS"}, {10492, "sfshill10"}, {10493, "SV_ground_04_SFS"},
	{10558, "tbnSFS"}, {10559, "sfshill11beach"}, {10560, "bbgroundbitb_SFS"}, {10561, "bbgroundbitc_SFS"},
	{10562, "bbgroundbitd_SFS"}, {10563, "OC_FLATS_GND18_SFS"}, {10564, "OC_FLATS_GND11_SFS"}, {10565, "OC_FLATS_GND12_SFS"},
	{10566, "OC_FLATS_GND13_SFS"}, {10567, "OC_FLATS_GND14_SFS"}, {10568, "OC_FLATS_GND15_SFS"}, {10569, "OC_FLATS_GND10_SFS"},
	{10570, "OC_FLATS_GND05_SFS"}, {10571, "OC_FLATS_GND04_SFS"}, {10572, "golftunnel3_SFS"}, {10573, "golftunnel2_SFS"},
	{10574, "golftunnel4_SFS"}, {10575, "modshopdoor1_SFS"}, {10576, "modshopint1_SFS"}, {10601, "sfshill10b"},
	{10606, "cluckbell_SFS"}, {10608, "lastbit_GND01_SFS"}, {10609, "lastbit_GND02_SFS"}, {10610, "fedmint_SFS"},
	{10611, "fedmintfence_SFS"}, {10612, "fedmintland_SFS"}, {10613, "lastbit_07_SFS"}, {10614, "lastbit_06_SFS"},
	{10615, "lastbit_04_SFS"}, {10616, "lastbit_03_SFS"}, {10617, "lastbit_01_SFS"}, {10618, "lastbit_02_SFS"},
	{10619, "officymirrord_SFS"}, {10621, "pinkcarpark_SFS"}, {10622, "pinkcarparkrd1_SFS"}, {10623, "pinkcarparkrd2_SFS"},
	{10624, "lowqueens1_SFS"}, {10625, "lowqueens2_SFS"}, {10626, "queens_09_SFS"}, {10627, "queens_02_SFS"},
	{10628, "queens_03_SFS"}, {10629, "queens_04_SFS"}, {10630, "queens_10_SFS"}, {10631, "ammunation_SFS"},
	{10632, "ammuwindows_SFS"}, {10633, "queens_01_SFS"}, {10634, "queens_06_SFS"}, {10635, "queens_07_SFS"},
	{10636, "queens_05_SFS"}, {10637, "queens_08_SFS"}, {10638, "cityhallsq2_SFS"}, {10639, "lastbit_06b_SFS"},
	{10649, "lastbit_01b_SFS"}, {10651, "pinkcarparkrd1b_SFS"}, {10671, "savehousegdoor_SFS"}, {10672, "fescape_sfs01"},
	{10675, "elecstionv_SFS"}, {10676, "transmitbldg_SFS"}, {10682, "shitfence1_SFS"}, {10683, "shitfence2_SFS"},
	{10694, "sfshill11z_SFS"}, {10695, "wires_02_SFS"}, {10696, "wires_18_SFS"}, {10697, "wires_03_SFS"},
	{10698, "wires_04_SFS"}, {10699, "wires_05_SFS"}, {10700, "wires_06_SFS"}, {10701, "wires_07_SFS"},
	{10702, "wires_08_SFS"}, {10703, "wires_09_SFS"}, {10704, "wires_01_SFS"}, {10705, "wires_11_SFS"},
	{10706, "wires_12_SFS"}, {10707, "wires_13_SFS"}, {10708, "wires_10_SFS"}, {10709, "wires_14_SFS"},
	{10710, "wires_15_SFS"}, {10711, "wires_16_SFS"}, {10712, "wires_17_SFS"}, {10713, "gayclub_SFS"},
	{10716, "cath_hedge_SFS"}, {10718, "poshotel1b_SFS"}, {10722, "shoppie6_SFS03"}, {10734, "wires_07b_SFS"},
	{10735, "wires_07c_SFS"}, {10736, "wires_07d_SFS"}, {10737, "wires_04b_SFS"}, {10738, "wires_04c_SFS"},
	{10739, "wires_04d_SFS"}, {10740, "wires_03b_SFS"}, {10741, "wires_15b_SFS"}, {10742, "wires_01b_SFS"},
	{10743, "wires_01c_SFS"}, {10744, "BS_building_SFS"}, {10750, "roadsSFSE01"}, {10751, "roadsSFSE02"},
	{10752, "just_stuff07_sfse"}, {10753, "roadsSFSE03"}, {10754, "road_sfse12"}, {10755, "Airport_02_SFSe"},
	{10756, "Airport_03_SFSe"}, {10757, "Airport_04_SFSe"}, {10758, "Airport_05_SFSe"}, {10759, "roadsSFSE04"},
	{10760, "Airport_07_SFSe"}, {10761, "Airport_08_SFSe"}, {10762, "Airport_09_SFSe"}, {10763, "controltower_SFSe"},
	{10764, "app_light_SFS05e"}, {10765, "skidmarks_SFSe"}, {10766, "Airport_10_SFSe"}, {10767, "Airport_11_SFSe"},
	{10768, "airprtgnd_06_SFSe"}, {10769, "Airport_14_SFSe"}, {10770, "CARRIER_BRIDGE_SFSe"}, {10771, "CARRIER_HULL_SFSe"},
	{10772, "CARRIER_LINES_SFSe"}, {10773, "dk_cargoshp2_SFSe"}, {10774, "dk_cargoshp1_SFS01e"}, {10775, "bigfactory_SFSe"},
	{10776, "bigfactory2_SFSe"}, {10777, "ddfreeway3_SFSe"}, {10778, "aircarpark_01_SFSe"}, {10779, "aircarpark_06_SFSe"},
	{10780, "aircarpark_07_SFSe"}, {10781, "aircarpark_08_SFSe"}, {10782, "aircarpark_02_SFSe"}, {10783, "aircarpark_03_SFSe"},
	{10784, "aircarpark_04_SFSe"}, {10785, "aircarpark_05_SFSe"}, {10786, "aircarpark_09_SFSe"}, {10787, "aircarpark_10_SFSe"},
	{10788, "aircarpark_11_SFSe"}, {10789, "xenonroof_SFSe"}, {10790, "roadsSFSE05"}, {10791, "roadsSFSE06"},
	{10792, "underfreeway_SFSe"}, {10793, "car_ship_03_SFSe"}, {10794, "car_ship_04_SFSe"}, {10795, "car_ship_05_SFSe"},
	{10806, "airfence_01_SFSe"}, {10807, "airfence_04_SFSe"}, {10808, "airfence_03_SFSe"}, {10809, "airfence_02_SFSe"},
	{10810, "ap_smallradar1_SFSe"}, {10811, "apfuel1_SFSe"}, {10814, "apfuel2_SFSe"}, {10815, "airprtgnd_02_SFSe"},
	{10816, "airprtgnd_01_SFSe"}, {10817, "airprtgnd_03_SFSe"}, {10818, "airprtgnd_04_SFSe"}, {10819, "airprtgnd_05_SFSe"},
	{10820, "baybridge1_SFSe"}, {10821, "baybridge2_SFSe"}, {10822, "baybridge3_SFSe"}, {10823, "baybridge4_SFSe"},
	{10824, "subpen_int_SFSe"}, {10825, "subpen_crane_SFSe"}, {10826, "subpen_ext_SFSe"}, {10827, "subbunker_ext_SFSe"},
	{10828, "drydock1_SFSe"}, {10829, "gatehouse1_SFSe"}, {10830, "drydock2_SFSe"}, {10831, "drydock3_SFSe"},
	{10832, "gatehouse2_SFSe"}, {10833, "navybase_02_SFSe"}, {10834, "navybase_03_SFSe"}, {10835, "navyfence2_SFSe"},
	{10836, "apinnerfence3_SFSe"}, {10837, "ap_bigsign_SFSe"}, {10838, "airwelcomesign_SFSe"}, {10839, "aircarpkbarier_SFSe"},
	{10840, "bigshed_SFSe"}, {10841, "drydock1_SFSe01"}, {10842, "Airport_14_SFSe01"}, {10843, "bigshed_SFSe01"},
	{10844, "gen_whouse01_SFSe"}, {10845, "gen_whouse02_SFSe"}, {10846, "gen_whouse03_SFSe"}, {10847, "gen_whouse03_SFSe01"},
	{10848, "roadsSFSE07"}, {10849, "roadsSFSE08"}, {10850, "landbit01_SFSe"}, {10851, "sfseland02"},
	{10852, "roadsSFSE09"}, {10854, "roadsSFSE10"}, {10855, "roadsSFSE11"}, {10856, "viet_03b_SFSe"},
	{10857, "roadsSFSE12"}, {10858, "roadsSFSE13"}, {10859, "roadsSFSE14"}, {10860, "roadsSFSE15"},
	{10861, "bigjunction_05_SFSe"}, {10862, "bigjunction_06_SFSe"}, {10863, "bigjunction_07_SFSe"}, {10864, "bigjunction_08_SFSe"},
	{10865, "bigjunct_09_SFSe"}, {10866, "roadsSFSE16"}, {10867, "roadsSFSE18"}, {10868, "roadsSFSE19"},
	{10869, "roadsSFSE20"}, {10870, "roadsSFSE21"}, {10871, "blacksky_SFSe"}, {10872, "wc_lift_SFSe"},
	{10873, "blackskyrail_SFSe"}, {10874, "apinnerfence1_SFSe"}, {10875, "apinnerfence2_SFSe"}, {10885, "navyfence_SFSe"},
	{10889, "dockbarrier1_SFSe"}, {10890, "dockbarrier2_SFSe"}, {10891, "bakery_SFSe"}, {10903, "sf_landbut02"},
	{10904, "sf_landbut01"}, {10905, "sfseland01"}, {10917, "landbit01b_SFSe"}, {10925, "shoppie1_SFS"},
	{10926, "groundbit_70_SFS"}, {10927, "trainstuff37_SFS22"}, {10928, "roadsSFSE22"}, {10929, "roadsSFSE23"},
	{10930, "roadsSFSE24"}, {10931, "traintrax05_SFS"}, {10932, "station03_SFS"}, {10933, "traintrax01_SFS"},
	{10934, "traintrax03_SFS"}, {10935, "traintrax04_SFS"}, {10936, "landbit04_SFS"}, {10937, "roadsSFSE25"},
	{10938, "Groundbit84_SFS"}, {10939, "Silicon09B_SFS"}, {10940, "roadsSFSE26"}, {10941, "Silicon11_SFS"},
	{10942, "Silicon12_SFS"}, {10943, "SV_ground_02_SFS"}, {10944, "southtunnel_04_SFS"}, {10945, "skyscrap_SFS"},
	{10946, "fuuuuuuuck_SFS"}, {10947, "officy_SFS"}, {10948, "skyscrapper_SFS"}, {10949, "shoppie4_SFS"},
	{10950, "shoppie2_SFS"}, {10951, "shoppie3_SFS"}, {10952, "shoppie6_SFS"}, {10953, "shoppie5_SFS"},
	{10954, "stadium_SFSe"}, {10955, "stadiumroof_SFS"}, {10956, "southtunnel_01_SFS"}, {10957, "xsjmstran1"},
	{10958, "roadsSFSE27"}, {10959, "cuntwland36_SFS"}, {10960, "cuntwland37_SFS"}, {10961, "cuntwland39_SFS"},
	{10962, "cuntwland26_SFS"}, {10965, "depot_SFS"}, {10966, "tankfact03_SFS"}, {10967, "roadsSFSE28"},
	{10968, "roadsSFSE29"}, {10969, "groundbit_06_SFS"}, {10970, "roadsSFSE30"}, {10971, "roadsSFSE31"},
	{10972, "landbit06_SFS"}, {10973, "mall_03_SFS"}, {10974, "mall_01_SFS"}, {10975, "shoppie6_SFS01"},
	{10976, "drivingsch_SFS"}, {10977, "smallshop_16_SFS"}, {10978, "smallshop_17_SFS"}, {10979, "haightshop_SFS"},
	{10980, "tempobj2_SFS02"}, {10981, "scum_SFS"}, {10982, "smallshop_10_SFS03"}, {10983, "hub_SFS"},
	{10984, "rubbled01_SFS"}, {10985, "rubbled02_SFS"}, {10986, "rubbled03_SFS"}, {10987, "coveredpath1_SFS"},
	{10988, "mission_01_SFS"}, {10989, "mission_02_SFS"}, {10990, "mission_04_SFS"}, {10991, "mission_05_SFS"},
	{10992, "mission_03_SFS"}, {10993, "mission_06_SFS"}, {10994, "shoppie6_SFS02"}, {10995, "mission_08_SFS"},
	{10996, "smallshop_10_SFS05"}, {10997, "smallshop_10_SFS06"}, {10998, "mission_11_SFS"}, {10999, "haightshop_SFS02"},
	{11000, "smallshop_17_SFS01"}, {11001, "mission_16_SFS"}, {11002, "tempobj_SFS03"}, {11003, "roadsSFSE32"},
	{11004, "mission_18_SFS"}, {11005, "mission_17_SFS"}, {11006, "mission_09_SFS"}, {11007, "crack_wins_SFS"},
	{11008, "firehouse_SFS"}, {11009, "dk_cargoshp70_SFS02"}, {11010, "crackbuild_SFS"}, {11011, "crackfactjump_SFS"},
	{11012, "crackfact_SFS"}, {11013, "landbit05_SFS"}, {11014, "drivingschlgrg_SFS"}, {11015, "drivingschoolex_SFS"},
	{11071, "roadsSFSE33"}, {11072, "roadsSFSE36"}, {11073, "roadsSFSE37"}, {11074, "roadsSFSE38"},
	{11075, "roadsSFSE39"}, {11076, "roadsSFSE42"}, {11077, "roadsSFSE43"}, {11078, "roadsSFSE44"},
	{11079, "roadsSFSE45"}, {11080, "roadsSFSE46"}, {11081, "crackfacttanks_SFS"}, {11082, "landbit05b_SFS"},
	{11083, "drivingschlgnd_SFS"}, {11084, "roadsSFSE47"}, {11085, "crack_int1"}, {11086, "crack_int2"},
	{11087, "crackfactwalk"}, {11088, "CF_ext_dem_SFS"}, {11089, "crackfacttanks2_SFS"}, {11090, "crackfactvats_SFS"},
	{11091, "crackfactfence_SFS"}, {11092, "burgalrystore_SFS"}, {11093, "gen_whouse02_SFS"}, {11094, "roadsSFSE49"},
	{11095, "stadbridge_SFS"}, {11096, "roadsSFSE50"}, {11097, "vietland_SFS"}, {11098, "roadsSFSE52"},
	{11099, "drivingschskid_SFS"}, {11100, "roadsSFSE53"}, {11101, "newtunnelrail_SFS"}, {11102, "burgalrydoor_SFS"},
	{11103, "cfsmashwin1_SFS"}, {11104, "newsfsroad"}, {11105, "roadsSFSE54"}, {11106, "landy"},
	{11107, "landy2"}, {11110, "roadsSFSE55"}, {11111, "roadsSFSE57"}, {11112, "roadsSFSE58"},
	{11113, "roadsSFSE59"}, {11114, "roadsSFSE60"}, {11115, "roadsSFSE61"}, {11116, "roadsSFSE62"},
	{11117, "roadsSFSE63"}, {11118, "roadsSFSE64"}, {11119, "roadsSFSE65"}, {11120, "roadsSFSE66"},
	{11121, "roadsSFSE68"}, {11122, "roadsSFSE69"}, {11123, "roadsSFSE70"}, {11124, "roadsSFSE71"},
	{11125, "roadsSFSE72"}, {11126, "roadsSFSE73"}, {11127, "roadsSFSE74"}, {11128, "roadsSFSE75"},
	{11129, "roadsSFSE76"}, {11130, "roadsSFSE77"}, {11131, "roadsSFSE78"}, {11132, "roadsSFSE79"},
	{11133, "roadsSFSE80"}, {11134, "roadsSFSE81"}, {11135, "roadsSFSE82"}, {11136, "roadsSFSE83"},
	{11137, "roadsSFSE84"}, {11138, "roadsSFSE51"}, {11139, "firehouseland_SFS"}, {11145, "CARRIER_LOWDECK_SFS"},
	{11146, "CARRIER_HANGAR_SFS"}, {11147, "acpipes1_SFS"}, {11148, "acpipes2_SFS"}, {11149, "accorridors_SFS"},
	{11150, "ab_ACC_control"}, {11223, "hubhole1_SFSe"}, {11224, "hubhole2_SFSe"}, {11225, "hubhole3_SFSe"},
	{11226, "hubhole4_SFSe"}, {11228, "traintrax01b_SFS"}, {11229, "traintrax01c_SFS"}, {11230, "traintrax01d_SFS"},
	{11231, "traintrax03b_SFS"}, {11232, "traintrax03c_SFS"}, {11233, "crackfactwalkb"}, {11234, "crackfactwalkc"},
	{11235, "crackfactwalkd"}, {11236, "crackfactwalke"}, {11237, "CARRIER_Bits_SFSe"}, {11238, "dockbarrier2z_SFSe"},
	{11239, "dockbarrier2zb_SFSe"}, {11240, "dockbarrier2zc_SFSe"}, {11241, "dockbarrier2zd_SFSe"}, {11242, "dockbarrier2ze_SFSe"},
	{11243, "wall_cm_firehse"}, {11244, "gen_whouse02_SFS01"}, {11245, "sfsefirehseflag"}, {11246, "SFSETREEBIT"},
	{11247, "TREEBIT21"}, {11252, "railbridge04_sfse"}, {11253, "railbridge08_sfse"}, {11254, "railbridge06_sfse"},
	{11255, "railbridge03_sfse"}, {11256, "railbridge09_sfse"}, {11257, "railbridge05_sfse"}, {11258, "railbridge01_sfse"},
	{11259, "railbridge07_sfse"}, {11260, "railbridge02_sfse"}, {11261, "railbridge10_sfse"}, {11280, "crackhseskid"},
	{11283, "Airport_14B_SFSe"}, {11285, "Airport_14C_SFSe"}, {11287, "bigjunct_10B_SFSe"}, {11288, "bigjuncT_10_SFSe"},
	{11289, "posters"}, {11290, "facttanks_SFSe04"}, {11292, "gasstatiohut"}, {11293, "facttanks_SFSe08"},
	{11295, "facttanks_SFSe09"}, {11297, "Groundbit82_SFS"}, {11299, "roadsSFSE40"}, {11301, "carshow4_SFSe"},
	{11302, "roadsSFSE17"}, {11303, "bigjunction_15_SFSe"}, {11305, "station"}, {11306, "station05_SFS"},
	{11308, "roadsSFSE41"}, {11312, "modshop2_SFSe"}, {11313, "modshopdoor_SFSe"}, {11314, "modshopint2_SFSe"},
	{11315, "sprayshopint_SFSe"}, {11316, "Carshow3_SFSe"}, {11317, "carshow_SFSe"}, {11318, "Carshow2_SFSe"},
	{11319, "sprayshpdr2_SFSe"}, {11324, "station_lights"}, {11326, "Sfse_hublockup"}, {11327, "sfse_hub_grgdoor02"},
	{11332, "dkgrassbitsfse"}, {11334, "recroomstuff"}, {11335, "sfselandy2"}, {11337, "Stunnel_1A_SFSe"},
	{11340, "hub02_SFSe"}, {11342, "southtunnel_03_SFS"}, {11343, "southtunnel_03A_SFS"}, {11345, "roadsSFSE35"},
	{11351, "roadsSFSE48"}, {11352, "StationStuff"}, {11353, "station5new"}, {11359, "oldgrgedoor3_sfse"},
	{11360, "oldgrgedoor4_sfse"}, {11362, "Silicon11_land"}, {11363, "Silicon11_land2"}, {11364, "Silicon09A_SFS"},
	{11365, "roadsSFSE67"}, {11367, "airprtgnd_ct_SFSe"}, {11374, "accorail_SFS"}, {11379, "baybALPHA_SFSe"},
	{11380, "baybALPH2_SFSe"}, {11381, "baybALPH3_SFSe"}, {11382, "baybALPH4_SFSe"}, {11383, "jjct02"},
	{11384, "cutseen1_sfse"}, {11385, "ctscene2_sfse"}, {11386, "nuroad_sfse"}, {11387, "oldgarage_SFS"},
	{11388, "hubintroof_SFSe"}, {11389, "hubinterior_SFS"}, {11390, "hubgirders_SFSE"}, {11391, "hubprops6_SFSe"},
	{11392, "hubfloorstains_SFSe"}, {11393, "hubprops1_SFS"}, {11394, "hubgrgbeams_SFSe"}, {11395, "corvinsign_SFSe"},
	{11396, "stadiumgates_SFSe"}, {11400, "acwinch1b_SFS02"}, {11401, "acwinch1b_SFS"}, {11406, "acwinch1b_SFS01"},
	{11408, "viet_03_SFSe"}, {11409, "roadsSFSE34"}, {11410, "nightlights01_SFSE"}, {11411, "nightlights02_SFSE"},
	{11412, "nightlights03_SFSE"}, {11413, "fosterflowers1"}, {11414, "fosterflowers02"}, {11416, "hbgdSFS"},
	{11417, "xenonsign2_SFSe"}, {11420, "con_lighth"}, {11421, "roadsupp1_01"}, {11422, "con_br1"},
	{11423, "con_br2"}, {11424, "con_tunll_sup03"}, {11425, "des_adobehooses1"}, {11426, "des_adobe03"},
	{11427, "des_adobech"}, {11428, "des_indruin02"}, {11429, "nw_bit_31"}, {11430, "sw_bit_13"},
	{11431, "des_tepeoff01"}, {11432, "des_tepesign01"}, {11433, "adobe_hoose2"}, {11434, "des_indianstore"},
	{11435, "des_indsign1"}, {11436, "des_indshops1"}, {11437, "des_indchfenc"}, {11438, "des_indtpfenc"},
	{11439, "des_woodbr_"}, {11440, "des_pueblo1"}, {11441, "des_pueblo5"}, {11442, "des_pueblo3"},
	{11443, "des_pueblo4"}, {11444, "des_pueblo2"}, {11445, "des_pueblo06"}, {11446, "des_pueblo07"},
	{11447, "des_pueblo08"}, {11448, "des_railbr_twr1"}, {11449, "des_nwtshop2"}, {11450, "des_nwtshop07"},
	{11451, "des_nwsherrif"}, {11452, "des_nwshfenc"}, {11453, "des_sherrifsgn1"}, {11454, "des_nwmedcen"},
	{11455, "des_medcensgn01"}, {11456, "des_nwtshop10"}, {11457, "des_pueblo09"}, {11458, "des_pueblo10"},
	{11459, "des_pueblo11"}, {11460, "des_telewires03"}, {11461, "des_nwwtower"}, {11462, "des_railbridge1"},
	{11463, "des_railbr_twr05"}, {11464, "des_trainline02"}, {11465, "des_trainline03"}, {11466, "des_trainline04"},
	{11467, "des_trainline05"}, {11468, "des_railstruct1_"}, {11469, "des_bullgrill_"}, {11470, "des_bigbull"},
	{11471, "des_swtshop14"}, {11472, "des_swtstairs1"}, {11473, "des_swtfence1"}, {11474, "des_swtfence2"},
	{11475, "des_swtshop02"}, {11476, "swt_teline_02"}, {11477, "swt_teline_03"}, {11478, "swt_teline_01"},
	{11479, "des_nwtfescape"}, {11480, "des_nwt_carport"}, {11481, "des_railfenc1"}, {11482, "des_railfenc2"},
	{11483, "des_railjump02"}, {11484, "dam_turbine_4"}, {11485, "dam_turbine_3"}, {11486, "dam_turbine_2"},
	{11487, "dam_turbine_1"}, {11488, "dam_statarea"}, {11489, "dam_statues"}, {11490, "des_ranch"},
	{11491, "des_ranchbits1"}, {11492, "des_rshed1_"}, {11493, "des_ranchbot"}, {11494, "des_rnchbhous"},
	{11495, "des_ranchjetty"}, {11496, "des_wjetty"}, {11497, "des_baitshop"}, {11498, "des_rockgp2_27"},
	{11499, "des_dinerfenc01"}, {11500, "des_skelsignbush_"}, {11501, "des_westrn9_03"}, {11502, "des_weebarn1_"},
	{11503, "des_westrn11_05"}, {11504, "des_garagew"}, {11505, "des_garwcanopy"}, {11506, "nw_bit_02"},
	{11507, "nw_bit_03"}, {11508, "nw_bit_04"}, {11509, "nw_bit_07"}, {11510, "nw_bit_08"},
	{11511, "nw_bit_09"}, {11512, "nw_bit_10"}, {11513, "nw_bit_11"}, {11514, "nw_bit_12"},
	{11515, "nw_bit_13"}, {11516, "nw_bit_14"}, {11517, "nw_bit_15"}, {11518, "nw_bit_16"},
	{11519, "nw_bit_17"}, {11520, "nw_bit_18"}, {11521, "nw_bit_19"}, {11522, "nw_bit_20"},
	{11523, "nw_bit_21"}, {11524, "nw_bit_22"}, {11525, "nw_bit_23"}, {11526, "nw_bit_24"},
	{11527, "nw_bit_25"}, {11528, "nw_bit_26"}, {11529, "nw_bit_27"}, {11530, "nw_bit_28"},
	{11531, "nw_bit_30"}, {11532, "sw_bit_03"}, {11533, "sw_bit_04"}, {11534, "sw_bit_05"},
	{11535, "sw_bit_06"}, {11536, "sw_bit_08"}, {11537, "sw_bit_11"}, {11538, "sw_bit_12"},
	{11539, "dambit1"}, {11540, "dambit2"}, {11541, "dambit3"}, {11542, "sw_bit_14"},
	{11543, "des_warehs"}, {11544, "des_ntfrescape2"}, {11545, "desn_tsblock"}, {11546, "desn_fuelpay"},
	{11547, "desn_tscanopy"}, {11548, "cnts_lines"}, {11549, "des_decocafe"}, {11550, "cn_nbridegrails"},
	{11551, "cn_tunlbarrier"}, {11552, "nw_bit_29"}, {11553, "sw_bit_01"}, {11554, "sw_bit_02"},
	{11555, "sw_bit_15"}, {11556, "des_adrocks"}, {11557, "sw_bit_09"}, {11558, "cn_sta_grid_03"},
	{11559, "sw_bit_07"}, {11560, "sw_bit_10"}, {11561, "cn_teline_01"}, {11562, "cn_teline_02"},
	{11563, "cn_teline_03"}, {11564, "swt_teline_04"}, {11565, "swt_teline_05"}, {11566, "des_tepeoff02"},
	{11567, "des_rvstuff"}, {11568, "des_clifftwal"}, {11571, "sw_teline_05"}, {11572, "con_br06"},
	{11579, "des_damlodbit3"}, {11580, "damlodbit1"}, {11581, "damlodbit2"}, {11607, "sw_teline_06"},
	{11608, "pylon-wires03"}, {11609, "pylon-wires11"}, {11610, "Pylonwires_new"}, {11611, "des_sherrifsgn02"},
	{11615, "desN_baitshop"}, {11623, "n_dambarriers"}, {11625, "cn_wires"}, {11626, "cn_wires1"},
	{11627, "cn_wires2"}, {11628, "nw_bit_06"}, {11629, "nw_bit_01"}, {11631, "ranch_desk"},
	{11647, "nw_bit_05"}, {11663, "toreno_shadow"}, {11664, "kb_couch02ext"}, {11665, "kb_chair03ext"},
	{11666, "Frame_WOOD_1ext"}, {11674, "des_cluckin"}, {11677, "xen2_countN"}, {11678, "desn_detail01"},
	{11679, "desn_detail02"}, {11680, "desn_detail03"}, {11681, "desn_detail04"},
	{11682, "CutsceneCouch1"}, {11683, "CutsceneCouch2"}, {11684, "CutsceneCouch3"}, {11685, "CutsceneCouch4"},
	{11686, "CBarSection1"}, {11687, "CBarStool1"}, {11688, "CWorkTop1"}, {11689, "CBoothSeat1"},
	{11690, "CTable1"}, {11691, "CTable2"}, {11692, "A51LandBit1"}, {11693, "Hills250x250Grass1"},
	{11694, "Hill250x250Rocky1"}, {11695, "Hill250x250Rocky2"}, {11696, "Hill250x250Rocky3"}, {11697, "RopeBridgePart1"},
	{11698, "RopeBridgePart2"}, {11699, "SAMPRoadSign46"}, {11700, "SAMPRoadSign47"}, {11701, "AmbulanceLights1"},
	{11702, "AmbulanceLights2"}, {11704, "BDupsMask1"}, {11705, "BlackTelephone1"}, {11706, "SmallWasteBin1"},
	{11707, "TowelRack1"}, {11708, "BrickSingle1"}, {11709, "AbattoirSink1"}, {11710, "FireExitSign1"},
	{11711, "ExitSign1"}, {11712, "Cross1"}, {11713, "FireExtPanel1"}, {11714, "MaintenanceDoors1"},
	{11715, "MetalFork1"}, {11716, "MetalKnife1"}, {11717, "WooziesCouch1"}, {11718, "SweetsSaucepan1"},
	{11719, "SweetsSaucepan2"}, {11720, "SweetsBed1"}, {11721, "Radiator1"}, {11722, "SauceBottle1"},
	{11723, "SauceBottle2"}, {11724, "FireplaceSurround1"}, {11725, "Fireplace1"}, {11726, "HangingLight1"},
	{11727, "PaperChaseLight1"}, {11728, "PaperChasePhone1"}, {11729, "GymLockerClosed1"}, {11730, "GymLockerOpen1"},
	{11731, "WHeartBed1"}, {11732, "WHeartBath1"}, {11733, "WRockingHorse"}, {11734, "WRockingChair1"},
	{11735, "WBoot1"}, {11736, "MedicalSatchel1"}, {11737, "RockstarMat1"}, {11738, "MedicCase1"},
	{11739, "MCake1"}, {11740, "MCake2"}, {11741, "MCake3"}, {11742, "MCakeSlice1"},
	{11743, "MCoffeeMachine1"}, {11744, "MPlate1"}, {11745, "HoldAllEdited1"}, {11746, "DoorKey1"},
	{11747, "Bandage1"}, {11748, "BandagePack1"}, {11749, "CSHandcuffs1"}, {11750, "CSHandcuffs2"},
	{11751, "AreaBoundary50m"}, {11752, "AreaBoundary10m"}, {11753, "AreaBoundary1m"},
	{12800, "cunte_roads01"}, {12801, "cunte_roads03"}, {12802, "cunte_roads04"}, {12803, "cunte_roads06"},
	{12804, "cuntEground01"}, {12805, "CE_bigshed1"}, {12806, "cunte_roads08"}, {12807, "sw_logs4"}, {12808, "sw_logs3"},
	{12809, "cunte_roads11"}, {12810, "cunte_roads12"}, {12811, "cunte_roads13"}, {12812, "cunte_roads14"},
	{12813, "cunte_roads15"}, {12814, "cuntyeland04"}, {12815, "cunte_roads16"}, {12816, "cunte_roads17"},
	{12817, "cunte_roads19"}, {12818, "cunte_roads20"}, {12819, "cunte_roads21"}, {12820, "cunte_roads22"},
	{12821, "cratesinalley"}, {12822, "smalltwnbld05"}, {12823, "cuntEground02"}, {12824, "CEgroundTP104"},
	{12825, "cuntEground08"}, {12826, "cunte_roads23"}, {12827, "cunte_roads24"}, {12828, "cunte_roads25"},
	{12829, "cunte_roads26"}, {12830, "cunte_roads27"}, {12831, "coe_traintrax_10"}, {12832, "coe_traintrax_03"},
	{12833, "coe_traintrax_04"}, {12835, "coe_traintrax_06"}, {12836, "coe_traintrax_07"}, {12837, "coe_traintrax_08"},
	{12838, "coe_traintrax_09"}, {12839, "cos_sbanksteps02"}, {12840, "cos_pizskyglas01"}, {12841, "cos_pizinterior"},
	{12842, "cos_pizseats"}, {12843, "cos_liquorshop"}, {12844, "cos_liqinside"}, {12845, "cos_liqinsidebits"},
	{12846, "otb_sign"}, {12847, "sprunk_fact"}, {12848, "coe_sprunlkfenc"}, {12849, "CornerStore_01"},
	{12850, "sw_block01"}, {12851, "cunte_roads29"}, {12852, "cunte_roads30"}, {12853, "sw_gas01"},
	{12854, "sw_gas01int"}, {12855, "sw_copshop"}, {12856, "sw_bridge"}, {12857, "CE_bridge02"},
	{12858, "sw_gate1"}, {12859, "sw_cont03"}, {12860, "sw_cont04"}, {12861, "sw_cont05"},
	{12862, "sw_block03"}, {12863, "sw_genstore02"}, {12864, "cuntEground11"}, {12865, "cuntEground13"},
	{12866, "CEgroundT202"}, {12867, "cunte_roads32"}, {12868, "cuntEground26"}, {12869, "cyecuntEground28"},
	{12870, "CE_grndPALCST06"}, {12871, "cuntEground34"}, {12872, "cuntEground43"}, {12873, "cunte_roads33"},
	{12874, "cunte_roads34"}, {12875, "cunte_roads35"}, {12876, "cunte_roads39"}, {12877, "cunte_roads40"},
	{12878, "cunte_roads41"}, {12879, "cunte_roads42"}, {12880, "cunte_roads43"}, {12881, "cunte_roads44"},
	{12882, "cunte_roads45"}, {12883, "cunte_roads46"}, {12884, "cunte_roads47"}, {12885, "cunte_roads48"},
	{12886, "cunte_roads49"}, {12887, "cunte_roads50"}, {12888, "cunte_roads51"}, {12889, "cunte_roads52"},
	{12890, "cunte_roads54"}, {12891, "cunte_roads56"}, {12892, "cunteroads_58"}, {12893, "cunte_roads59"},
	{12894, "cunte_roads60"}, {12895, "cunte_roads61"}, {12896, "cunte_roads62"}, {12897, "cunte_roads63"},
	{12898, "cunte_roads69"}, {12899, "cunte_roads71"}, {12900, "cunte_roads72"}, {12901, "cunte_roads73"},
	{12902, "cunte_roads74"}, {12903, "cunte_roads75"}, {12904, "cuntetownrd1"}, {12905, "cuntetownrd2"},
	{12906, "cuntetownrd3"}, {12907, "cuntetownrd4"}, {12908, "cuntEground09b"}, {12909, "sw_bridge03"},
	{12910, "sw_trainbridge1"}, {12911, "sw_Silo02"}, {12912, "sw_Silo04"}, {12913, "sw_fueldrum03"},
	{12914, "sw_corrug01"}, {12915, "CE_bigbarn07"}, {12916, "CE_farmland04"}, {12917, "sw_haypile03"},
	{12918, "sw_haypile05"}, {12919, "sw_tempbarn06"}, {12920, "sw_tempbarn02"}, {12921, "sw_farment01"},
	{12922, "sw_farment02"}, {12923, "sw_blockbit05"}, {12924, "sw_block06"}, {12925, "sw_SHED01"},
	{12926, "sw_sheds_base"}, {12927, "sw_pipepile01"}, {12928, "sw_shedInterior04"}, {12929, "sw_SHED06"},
	{12930, "sw_pipepile02"}, {12931, "CE_brewery"}, {12932, "sw_trailer02"}, {12933, "sw_breweryFence01"},
	{12934, "sw_trailer03"}, {12935, "sw_securitycab03"}, {12936, "sw_beersign02"}, {12937, "CE_CATshack"},
	{12938, "sw_apartments02"}, {12939, "sw_apartmentsBase"}, {12940, "sw_apartments07"}, {12941, "sw_LastDrop"},
	{12942, "sw_shedInterior01"}, {12943, "sw_SHED07"}, {12944, "sw_lasershop"}, {12945, "sw_dryclean01"},
	{12946, "sw_furnistore01"}, {12947, "sw_musicstore01"}, {12948, "sw_block01a"}, {12949, "sw_jazzmags"},
	{12950, "cos_sbanksteps03"}, {12951, "sw_shopflat01"}, {12952, "sw_bankalley"}, {12953, "sw_blockbit01"},
	{12954, "sw_furnipile01"}, {12955, "dock_props01"}, {12956, "sw_trailerjump"}, {12957, "sw_pickupwreck01"},
	{12958, "cos_sbanksteps01"}, {12959, "sw_library"}, {12960, "sw_church01"}, {12961, "sw_hedstones"},
	{12962, "sw_shopflat04"}, {12963, "sw_shopflat02"}, {12964, "sw_block07"}, {12965, "cunte_roads10"},
	{12966, "cunte_roads66"}, {12967, "cunte_roads67"}, {12968, "cunte_roads68"}, {12969, "CE_ground08"},
	{12970, "cunte_roads76"}, {12971, "cunte_roads78"}, {12972, "sw_bridge01"}, {12973, "roadfromLAN2"},
	{12974, "cunte_roads40a"}, {12975, "cunteroads43ramp01"}, {12976, "sw_diner1"}, {12977, "cratesinalley01"},
	{12978, "sw_SHED02"}, {12979, "sw_block09"}, {12980, "sw_block10"}, {12981, "sw_fact01"},
	{12982, "sw_shopflat06"}, {12983, "sw_med1"}, {12984, "sw_block11"}, {12985, "cos_sbanksteps05"},
	{12986, "sw_well1"}, {12987, "cos_sbanksteps06"}, {12988, "sw_fact02"}, {12989, "cuntEground06"},
	{12990, "sw_jetty"}, {12991, "sw_shack02"}, {12992, "CE_archbridge"}, {12993, "cunte_roads09"},
	{12994, "cunte_roads57"}, {12995, "cunte_roads64"}, {12996, "cunte_roads65"}, {12997, "cunte_roads77"},
	{12998, "cunte_roads80"}, {12999, "cunte_roads82"}, {13000, "cunte_roads83"}, {13001, "cunte_roads84"},
	{13002, "cuntebigbarn"}, {13003, "cunte_racestart"}, {13004, "sw_logs01"}, {13005, "sw_logs6"},
	{13006, "sw_office1"}, {13007, "sw_bankbits"}, {13008, "sw_block02"}, {13009, "sw_block02alpha"},
	{13010, "sw_Block01alpha"}, {13011, "cos_sbanksteps04"}, {13012, "sw_shopflat05"}, {13013, "sw_block12"},
	{13014, "sw_block04"}, {13015, "sw_genstore01"}, {13016, "sw_block04COL27"}, {13017, "CEhollyhil16"},
	{13018, "CEmulwire03"}, {13019, "CEhollyhil17"}, {13020, "CEroadTEMP2"}, {13021, "CEhllyhil01a"},
	{13022, "sw_block11a"}, {13023, "sw_rocks1"}, {13024, "sw_breweryFence02"}, {13025, "sw_fueldrum01"},
	{13027, "ce_spray"}, {13028, "CE_spraydoor1"}, {13030, "cuntEground34a"}, {13033, "cunte_roads30bar"},
	{13034, "cunte_roads30bar01"}, {13035, "cuntEground12a"}, {13036, "cuntEgund11a"}, {13038, "cunte_roads35a"},
	{13039, "CE_ground02"}, {13040, "CE_ground03"}, {13041, "CE_ground04"}, {13042, "CE_ground05"},
	{13043, "CE_ground06"}, {13044, "CE_ground07"}, {13045, "cunte_roads30bar02"}, {13049, "CE_farmland01"},
	{13050, "CE_farmland02"}, {13051, "CE_farmland03"}, {13058, "cunte_roads11a"}, {13059, "CEfact03"},
	{13060, "CE_factcomp1"}, {13061, "CE_factcomp2"}, {13065, "sw_fact03"}, {13066, "sw_fact04"},
	{13070, "CEgroundTP101"}, {13071, "CEgroundTP102"}, {13072, "CEgroundTP103"}, {13077, "CE_townware"},
	{13078, "CEwrehse07"}, {13081, "CEgroundT206"}, {13082, "CEgroundT203"}, {13083, "CEgroundT204"},
	{13084, "CEgroundT205"}, {13088, "cuntetownrd4a"}, {13092, "cuntetownrd05"}, {13095, "cunte_roads02"},
	{13096, "cunte_roadsbar01"}, {13097, "cunte_roads30bar06"}, {13098, "cunte_roadsbar05"}, {13099, "CE_groundPALO06"},
	{13100, "CE_groundPALO02"}, {13101, "CE_groundPALO03"}, {13102, "CE_groundPALO04"}, {13103, "CE_groundPALO05"},
	{13104, "CE_groundPALO01"}, {13105, "CE_groundPALO07"}, {13106, "CE_groundPALO08"}, {13107, "CE_groundPALO10"},
	{13109, "sw_watertower04"}, {13118, "cunte_roadsbar02"}, {13119, "cunte_roads37"}, {13120, "CE_grndPALCST03"},
	{13121, "CE_grndPALCST04"}, {13122, "CE_grndPALCST01"}, {13123, "CE_grndPALCST07"}, {13124, "CE_grndPALCST08"},
	{13125, "CE_grndPALCST09"}, {13126, "CE_grndPALCST10"}, {13127, "cunte_roads81"}, {13128, "cunte_roads79"},
	{13129, "cunte_roads85"}, {13131, "sw_block05"}, {13132, "CE_bar01"}, {13134, "cuntEground03"},
	{13135, "cyecuntEground01"}, {13136, "cyecuntEground02"}, {13137, "CEwirestown"}, {13138, "CE_archbridge2"},
	{13139, "cuntetunnel1"}, {13140, "cuntetunnel1A"}, {13141, "cunte_roads58B"}, {13142, "CE_Bbridge"},
	{13143, "CEmulwire02"}, {13144, "cuntEground04"}, {13145, "cuntEground05"}, {13146, "cuntEground07"},
	{13147, "cuntEground09"}, {13148, "cuntEground10"}, {13149, "cuntEground17"}, {13150, "cuntEground19"},
	{13153, "cunte_roads30bar03"}, {13156, "cuntEground21"}, {13157, "cuntEground22"}, {13158, "cuntEground27"},
	{13163, "CE_groundPALO11"}, {13165, "CE_groundPALO12"}, {13167, "cyecuntEground03"}, {13168, "cunte_roads58"},
	{13169, "cunte_roads86"}, {13170, "cunte_roads87"}, {13171, "cuntEgd12a01"}, {13172, "cuntEgd12a02"},
	{13173, "cunte_roads88"}, {13174, "cunte_roots01"}, {13175, "cuntEground18"}, {13176, "cuntEground29"},
	{13177, "cuntEground30"}, {13178, "cuntEground31"}, {13179, "cuntEground32"}, {13180, "cuntEground33"},
	{13181, "cuntEground35"}, {13187, "burbdoor"}, {13188, "burbdoor2"}, {13190, "CE_busdepot"},
	{13198, "CE_waretank"}, {13205, "CE_wires"}, {13206, "CEtruth_barn02"}, {13207, "cuntEground12"},
	{13208, "cuntEground15"}, {13209, "cuntEground36"}, {13210, "cuntEground37"}, {13211, "cuntEground38"},
	{13212, "cuntEground39"}, {13213, "cuntEground40"}, {13214, "cuntEground41"}, {13235, "cuntehil01"},
	{13236, "cuntehil02"}, {13237, "cuntehil03"}, {13295, "CE_terminal1"}, {13296, "CE_roadsidegas"},
	{13297, "CEgroundT201"}, {13312, "coe_traintrax_05"}, {13321, "cunte_roads07"}, {13323, "cunte_roads18"},
	{13324, "cunte_roads38"}, {13325, "cunte_roads89"}, {13332, "CE_multibridge1"}, {13336, "cunte_roads46walls"},
	{13342, "cunte_roads31"}, {13345, "cunte_roads36"}, {13347, "cunte_roads26W"}, {13348, "cunte_roads23W"},
	{13349, "cunte_roads27W"}, {13360, "CE_CATshackdoor"}, {13361, "CE_pizza1"}, {13363, "CE_photoblock"},
	{13364, "CE_wtownblok1"}, {13367, "sw_watertower01"}, {13368, "CE_bridgebase1"}, {13369, "sw_logs07"},
	{13370, "CEhllyhil03a"}, {13371, "CEhllyhil02a"}, {13374, "CEwirestown01"}, {13375, "CEwirestown02"},
	{13422, "cunte_roads05a"}, {13435, "sw_logs08"}, {13436, "CE_wires01"}, {13437, "CE_wires02"},
	{13438, "sw_church01fnce"}, {13439, "CE_wires03"}, {13440, "CEwirestown04"}, {13441, "CEwirestown05"},
	{13442, "CEwirestown06"}, {13443, "CEwirestown03"}, {13444, "CEwirestown07"}, {13445, "cunteroads05aFNCE"},
	{13447, "CE_wires04"}, {13448, "CE_wires05"}, {13449, "CE_wires06"}, {13450, "CE_apartStairs"},
	{13451, "CEwirestown08"}, {13452, "CEwirestown09"}, {13461, "CE_nitewindows1"}, {13470, "cunte_roads303"},
	{13484, "CE_nitewindows101"}, {13485, "CE_nitewindows10"}, {13486, "CE_ground09"}, {13489, "sw_fueldrum04"},
	{13490, "CE_ground01"}, {13491, "coe_traintrax02"}, {13493, "CE_nitewindows2"}, {13494, "CE_groundPALO12A"},
	{13495, "CE_ground03A"}, {13496, "CE_groundPALO07A"}, {13497, "CE_grndPALCST04A"}, {13498, "CE_grndPALCST01A"},
	{13499, "CE_grndPALCST03A"}, {13500, "cuntEground21A"}, {13501, "cuntEground22A"}, {13502, "cuntEground07A"},
	{13503, "cuntEground02A"}, {13504, "CE_grndPALCST07A"}, {13505, "cuntEground03A"}, {13506, "cuntEground05A"},
	{13507, "cuntEground04A"}, {13508, "cyecuntEground02A"}, {13509, "cyecuntEground28A"}, {13510, "CE_grndPALCST08A"},
	{13511, "CE_grndPALCST09A"}, {13512, "CE_groundPALO03A"}, {13513, "CE_groundPALO04A"}, {13514, "cuntEground10A"},
	{13515, "cuntEground09A"}, {13516, "cuntEground19A"}, {13517, "cuntEground26A"}, {13518, "CE_groundPALO06A"},
	{13519, "CEgroundT205A"}, {13520, "CEgroundT201A"}, {13521, "CEgroundT206A"}, {13522, "CEgroundTP104A"},
	{13523, "CEgroundTP103A"}, {13524, "cuntEground43A"}, {13525, "cuntEground17A"}, {13526, "cuntEground18A"},
	{13527, "cuntEground29A"}, {13528, "cuntEground39A"}, {13529, "cuntehil03A"}, {13530, "cuntehil02A"},
	{13531, "cuntehil01A"}, {13532, "CEhllyhil03aA"}, {13533, "CEhllyhil02aA"}, {13534, "CEhllyhil01aA"},
	{13535, "cuntEground38A"}, {13536, "cuntEground40A"}, {13537, "cuntEground32A"}, {13538, "cuntEground01A"},
	{13539, "CE_farmland04A"}, {13540, "CE_farmland03A"}, {13541, "cuntEground34A01"}, {13542, "cuntEground34aA"},
	{13543, "cuntEground09bA"}, {13544, "cuntEground15A"}, {13545, "cuntEground37A"}, {13546, "cuntEground36A"},
	{13547, "cuntEgund11aA"}, {13548, "cuntEground11A"}, {13549, "CEhollyhil17A"}, {13550, "CEhollyhil16A"},
	{13551, "cuntEground08A"}, {13552, "CE_ground01A"}, {13553, "CE_ground09A"}, {13554, "CE_ground02A"},
	{13555, "CE_ground05A"}, {13556, "CE_ground06A"}, {13557, "CE_ground08A"}, {13558, "CE_ground04A"},
	{13559, "CE_ground07A"}, {13560, "cuntEground33A"}, {13561, "cuntEground31A"}, {13562, "bigsprunkpole"},
	{13563, "cuntEground30A"}, {13590, "kickbus04"}, {13591, "kickcar28"}, {13592, "loopbig"},
	{13593, "kickramp03"}, {13594, "fireyfire"}, {13595, "stand02"}, {13596, "destruct04"},
	{13597, "destruct05"}, {13598, "stand03"}, {13599, "standblack04"}, {13600, "destruct06"},
	{13601, "destruct07"}, {13602, "thebolla06"}, {13603, "stad_tag"}, {13604, "kickramp05"},
	{13605, "destruct1"}, {13606, "standblack02"}, {13607, "ringwalls"}, {13608, "sumoring"},
	{13609, "supports"}, {13610, "stand04"}, {13611, "thebowl13"}, {13612, "stuntman03"},
	{13613, "thebowl11"}, {13614, "thebowl12"}, {13615, "thebowl10"}, {13616, "thebolla04"},
	{13617, "thebowl14"}, {13618, "thebowl16"}, {13619, "thebowl17"}, {13620, "thebowl15"},
	{13621, "thebolla03"}, {13622, "sumofence"}, {13623, "midringfence"}, {13624, "inner"},
	{13625, "stands"}, {13626, "8road2"}, {13627, "stadoval"}, {13628, "8stad"},
	{13629, "8screen01"}, {13630, "8screen"}, {13631, "dirtstad"}, {13632, "dirtcrowds"},
	{13633, "dirtouter01"}, {13634, "dirtstad02"}, {13635, "therocks10"}, {13636, "logramps"},
	{13637, "tuberamp"}, {13638, "stunt1"}, {13639, "ramparse"}, {13640, "arse"},
	{13641, "kickramp04"}, {13642, "rings"}, {13643, "logramps02"}, {13644, "steps"},
	{13645, "kickramp06"}, {13646, "ramplandpad"}, {13647, "wall1"}, {13648, "wall2"},
	{13649, "ramplandpad01"}, {13650, "kickcrowd01"}, {13651, "otunnel"}, {13652, "oroadbit"},
	{13653, "innerfence"}, {13654, "darkpoly"}, {13655, "bridge"}, {13656, "fuckknows"},
	{13657, "bit"}, {13658, "bit01"}, {13659, "8bar5"}, {13660, "8track1"},
	{13661, "cockbars"}, {13662, "dirtcock"}, {13663, "dirtfences"}, {13664, "dirtroad"},
	{13665, "dirtfences2"}, {13666, "loopwee"}, {13667, "monkeyman"}, {13672, "cunte_roads05"},
	{13673, "CEhollyhil03"}, {13674, "CEmullholdr05"}, {13675, "cuntelungrdj"}, {13676, "TCElawcuntun1a_law2"},
	{13677, "TCElawcuntuna_law2"}, {13678, "CEnwhiltest"}, {13679, "TCElandbivF4v_03"}, {13680, "TCElawcuntunb"},
	{13681, "TCEhilhouse03"}, {13682, "TCEcuntun"}, {13683, "CEnwhiltest2"}, {13684, "CEnwhiltest93"},
	{13685, "TCEnwhiltest92"}, {13686, "TCEhomulhil10"}, {13687, "TCEhillhse02"}, {13688, "CEnwhiltest91"},
	{13689, "CEnwhiltest6"}, {13690, "CE_Roads38a"}, {13691, "TCELAlandbiv_03"}, {13692, "cunte_landF4_03"},
	{13693, "TCEnwhiltest94"}, {13694, "CEhillhse13"}, {13695, "CEhillhse05"}, {13696, "CEnewhillhus"},
	{13697, "TCElhouse06"}, {13698, "CEhollyhil10"}, {13699, "TCEmulhilhed1_law2"}, {13700, "CEhollyhil1"},
	{13701, "TCEhilouse02"}, {13702, "CEhollyhil09X"}, {13703, "CEnwhiltest3"}, {13704, "CEnwhiltest5"},
	{13705, "CEhillbar2b"}, {13706, "CE_roads87"}, {13707, "CEla_roads62"}, {13708, "CE_roadscoast08"},
	{13709, "lae2_ground01"}, {13710, "HillsEast05_LAe"}, {13711, "CEhollyhil06"}, {13712, "CEhollyhil8a"},
	{13713, "road_hil03"}, {13714, "radarmast1_LAwN"}, {13715, "cunte_hollyhil9"}, {13716, "CE_hollyhil8a"},
	{13717, "road_hillLAwn15"}, {13718, "CEroad_hill20"}, {13719, "hollyhil10"}, {13720, "road_hill04b"},
	{13721, "mulhouse03_cunte"}, {13722, "VineSign1_cunte"}, {13723, "cunte_hollyhil01"}, {13724, "drg_nu_ext"},
	{13725, "opmans01_cunte"}, {13726, "road_hill08"}, {13727, "CEnorthbrij01"}, {13728, "CEgraveBuil03_LAwN"},
	{13729, "CEgraveBuil01"}, {13730, "CEroad_6"}, {13731, "TCEmulwire01"}, {13732, "CE_Roads37"},
	{13733, "CE_Roads42"}, {13734, "HillClif06"}, {13735, "CE_Roads41"}, {13736, "CE_Roads40"},
	{13737, "cunteHill03"}, {13738, "Roads39_CE"}, {13739, "Roads38CE"}, {13740, "cnteHillClif01"},
	{13741, "HillClif02"}, {13742, "HillClif05"}, {13743, "CEmulwire01"}, {13744, "drg_nu_ext05"},
	{13746, "TCEhillhouse07"}, {13747, "CEhillhse06"}, {13748, "TCEmulhilhed1_law01"}, {13749, "cunte_curvesteps1"},
	{13751, "cunte_Flyover2"}, {13752, "cuntebridge01"}, {13753, "CEhillhouse04"}, {13754, "CEmulhouse04"},
	{13755, "CEhillhouse01"}, {13756, "hollyhil04a"}, {13757, "hollyhil05"}, {13758, "radarmast1_LAwN01"},
	{13761, "cunte_Whisky"}, {13784, "road_hill01"}, {13789, "Roads40_CE"}, {13795, "CE_HillsEast06"},
	{13801, "cunte_skatetrak"}, {13802, "skateivy"}, {13804, "cuntelandF4"}, {13805, "CELAlandbiv"},
	{13806, "CEhollyhil8a01"}, {13809, "CE_grndPALCST02"}, {13810, "CE_grndPALCST05"}, {13813, "CEGraveBlok03e"},
	{13814, "CEroadn"}, {13816, "CE_safeground"}, {13817, "CE_safedoor01"}, {13818, "CEhollyhil01"},
	{13820, "cuntEground16"}, {13821, "cuntEground20"}, {13823, "cuntEground23"}, {13824, "cuntEground24"},
	{13825, "cuntEground25"}, {13826, "cuntEground28"}, {13831, "VineSign1_cunte01"}, {13845, "CEnwhiltest5base"},
	{13861, "CE_telewires01"}, {13862, "CE_telewires02"}, {13863, "CE_telewires03"}, {13864, "CE_telewires04"},
	{13865, "CEnwhiltestBrd"}, {13871, "LAhills_border1"}, {13872, "LAhills_border2"}, {13882, "road_hill13"},
	{13887, "CEroad_hill01"}, {13890, "LAhBoards_LAh1"}, {14383, "burg_kit1"}, {14384, "kitchen_bits"},
	{14385, "kb_tr_main"}, {14386, "kb_tr_bits"}, {14387, "Dr_GsNEW02"}, {14388, "MaddDoggs02"},
	{14389, "MaddDoggs03"}, {14390, "MaddDoggs04"}, {14391, "Dr_GsNEW07"}, {14392, "Dr_GsNEW08"},
	{14393, "Dr_GsNEW09"}, {14394, "Dr_GsNEW10"}, {14395, "Dr_GsNEW11"}, {14396, "girders01"},
	{14397, "girders07"}, {14398, "girders11"}, {14399, "bar2"}, {14400, "flower-bush08"},
	{14401, "bench1"}, {14402, "flower-bush09"}, {14403, "cds"}, {14404, "jet_interior"},
	{14405, "chairs"}, {14406, "mansion-light05"}, {14407, "carter-stairs01"}, {14408, "Carter-floors04"},
	{14409, "carter-stairs02"}, {14410, "carter-stairs03"}, {14411, "carter-stairs04"}, {14412, "Carter_drugfloor"},
	{14413, "carter-column01"}, {14414, "carter-stairs05"}, {14415, "Carter-floors01"}, {14416, "carter-stairs07"},
	{14417, "MaddDoggs05"}, {14418, "MaddDoggs07"}, {14419, "MaddDoggs08"}, {14420, "MaddDoggs09"},
	{14421, "MaddDoggs10"}, {14422, "MaddDoggs01"}, {14423, "MaddDoggs12"}, {14424, "MaddDoggs13"},
	{14425, "MaddDoggs14"}, {14426, "MaddDoggs15"}, {14427, "MaddDoggs16"}, {14428, "MaddDoggs17"},
	{14429, "MaddDoggs18"}, {14430, "MaddDoggs19"}, {14431, "MaddDoggs20"}, {14432, "carter_light01"},
	{14433, "carter_gubbins"}, {14434, "carter-spotlight42"}, {14435, "carter_girders"}, {14436, "carter_girders1"},
	{14437, "carter-bars"}, {14438, "Carter-light04"}, {14439, "Carter-light12"}, {14440, "Carter_grill"},
	{14441, "Carter-light16"}, {14442, "SHADOW-Carter"}, {14443, "burning_blinds08"}, {14444, "Carter-TopFloor"},
	{14445, "carter-column02"}, {14446, "Smokes_bed"}, {14447, "carter-balcony"}, {14448, "carter_girders02"},
	{14449, "Carter_trampoline"}, {14450, "carter_girders03"}, {14451, "carter_girders04"}, {14452, "carter_girders05"},
	{14453, "GANG_EXIT"}, {14454, "carter-dancers"}, {14455, "Gs_BOOKCASE"}, {14456, "ceiling-roses02"},
	{14457, "gs_gold-disks"}, {14458, "gs_chairs"}, {14459, "carter-cage"}, {14460, "mansion-light05a"},
	{14461, "Gs_Piccies"}, {14462, "Gs_piccies1"}, {14463, "gs_barstuff"}, {14464, "gs_cages"},
	{14465, "carter-alpha"}, {14466, "carter-outside"}, {14467, "carter_statue"}, {14468, "flower-bush09a"},
	{14469, "flower-bush08a"}, {14470, "mansion-light05b"}, {14471, "carls_moms_kit2"}, {14472, "carls_moms_kit1"},
	{14473, "mansionlights2"}, {14474, "ganghse_int1"}, {14475, "ganghse_int2"}, {14476, "carlscrap"},
	{14477, "carlsbits"}, {14478, "carlsshadfloor"}, {14479, "motel_skuzmain1"}, {14480, "motel_toilet"},
	{14481, "motel_bath1"}, {14482, "motel_skuz_win"}, {14483, "maddogsfakedoors"}, {14484, "MaddDoggs06"},
	{14485, "MaddDoggs11"}, {14486, "madgym1"}, {14487, "madlites"}, {14488, "madgymroofs"},
	{14489, "carlspics"}, {14490, "cuntchair"}, {14491, "iwanfucker"}, {14492, "sweets_room"},
	{14493, "arsehole"}, {14494, "sweets_bath"}, {14495, "sweetshall"}, {14496, "sweetsdaylight"},
	{14497, "im_couchs"}, {14498, "imys_bigvent"}, {14499, "imy_motel_wins"}, {14500, "immy_rooms"},
	{14501, "motel_grill"}, {14502, "imy_roomfurn"}, {14503, "imy_roomfurn01"}, {14504, "imy_roomfurn03"},
	{14505, "imy_roomfurn06"}, {14506, "imy_motel_int"}, {14507, "imy_roomfurn07"}, {14508, "imy_roomfurn10"},
	{14509, "imy_roomfurn11"}, {14510, "imy_roomfurn12"}, {14511, "im_cover_tbl"}, {14512, "immy_rooms2"},
	{14513, "im_mtl_rail"}, {14514, "hexi_lite"}, {14515, "im_mtel_sckts"}, {14516, "im_xtra3"},
	{14517, "im_xtra1"}, {14518, "im_xtra2"}, {14519, "im_xtra4"}, {14520, "immy_clothes"},
	{14521, "immy_shoes"}, {14522, "immy_curtains02"}, {14523, "immy_curtains05"}, {14524, "im_couchsa"},
	{14525, "imy_otherbit"}, {14526, "sweetsmain"}, {14527, "fannyfan"}, {14528, "sweetshadows"},
	{14530, "driveschl_main"}, {14531, "int_zerosrc01"}, {14532, "tv_stand_driv"}, {14533, "pleasure-TOP"},
	{14534, "ab_woozies01"}, {14535, "ab_woozies03"}, {14536, "pleasure-BOT"}, {14537, "pdomesBar"},
	{14538, "Pdomes_Xitbox"}, {14539, "pdomes_logo"}, {14540, "pdomes_extras"}, {14541, "driveschl_daylite"},
	{14542, "woozies_Xitbox"}, {14543, "ab_woozies04"}, {14544, "ab_woozies02"}, {14545, "ab_wooziesGlass"},
	{14546, "pleasure-MID"}, {14547, "pleasure-DL"}, {14548, "cargo_test"}, {14549, "carge_barrels"},
	{14550, "cargo_netting"}, {14551, "cargo_store"}, {14552, "cargo_stuff"}, {14553, "androm_des_obj"},
	{14554, "ab_wooziesSHAD"}, {14556, "ZEROWARDROBE"}, {14558, "MODEL_BOX15"}, {14559, "PDomeCones"},
	{14560, "triad_bar"}, {14561, "triad_neon"}, {14562, "triad_lion"}, {14563, "triad_main"},
	{14564, "triad_lights"}, {14565, "triad_bar_stuff"}, {14566, "budha_whel1b"}, {14567, "budha_whel02b"},
	{14568, "budha_whel03b"}, {14569, "tr_man_pillar"}, {14570, "tr_man_glass"}, {14571, "chinafurn1"},
	{14572, "maintenance16"}, {14573, "maintenance03"}, {14574, "maintenance20"}, {14575, "maintenance31"},
	{14576, "vault_door"}, {14577, "mafCasLoadbay01"}, {14578, "mafCasPipes01"}, {14579, "MafCasLites01"},
	{14580, "mafCasGoldBits01"}, {14581, "ab_mafiaSuite01zzz"}, {14582, "mafiaCasinoBar1"}, {14583, "ab_mafCasLaund"},
	{14584, "ab_abbatoir05"}, {14585, "ab_abbatoir04"}, {14586, "ab_abbatoir03"}, {14587, "ab_abbatoir02"},
	{14588, "ab_abbatoir01"}, {14589, "ab_abbatoir06"}, {14590, "mafCasTopfoor"}, {14591, "mafcasWallLite"},
	{14592, "mafCasLoadbay02"}, {14593, "paperchase04"}, {14594, "paperchase03"}, {14595, "paperchase02"},
	{14596, "paperchase_stairs"}, {14597, "paperchase07"}, {14598, "paperchase_glass"}, {14599, "paperchase08"},
	{14600, "paperchase_bits2"}, {14601, "MafCasLites02"}, {14602, "paperchase01"}, {14603, "bikeschl_main"},
	{14604, "tv_stand_bike"}, {14605, "triad_lights2"}, {14606, "MafCasMain4"}, {14607, "triad_main2"},
	{14608, "triad_buddha01"}, {14609, "MafCasLites04"}, {14610, "MafCasLites05"}, {14611, "mafiaCasinoBarLite"},
	{14612, "ab_abattoir_box2"}, {14613, "ab_abattoir_box1"}, {14614, "triad_main3"}, {14615, "abatoir_daylite"},
	{14616, "ab_pillarTemp3"}, {14617, "ab_pillarTemp2"}, {14618, "ab_pillarTemp1"}, {14619, "tricas_slotTable2"},
	{14620, "tricas_slotTable1"}, {14621, "mafiaCasinoGlass"}, {14622, "ab_pillarTemp4"}, {14623, "MafCasMain1"},
	{14624, "MafCasMain2"}, {14625, "MafCasMain3"}, {14626, "mafcasSigns1"}, {14627, "mafcas_optilite1"},
	{14628, "ab_caligulasfront"}, {14629, "mafcas_chande"}, {14630, "mafcas_Xitbox"}, {14631, "paperchase_daylite"},
	{14632, "paperchase_bits2b"}, {14633, "paperchase_bits2c"}, {14634, "bikeschl_daylite"}, {14635, "mafcasGenStuff"},
	{14636, "mafcas_signs"}, {14637, "triad_dragon"}, {14638, "ab_mafsuiteDoor"}, {14639, "tr_man_main"},
	{14640, "chinafurn2"}, {14641, "tri_main_holes"}, {14642, "mafcas_spiral_dad"}, {14643, "tr_man_main_tr"},
	{14650, "trukstp04"}, {14651, "trukstp05"}, {14652, "trukstp02"}, {14653, "trukstp03"},
	{14654, "trukstp06"}, {14655, "trukstp01"}, {14656, "tsdinerXitbox"}, {14657, "cuntchairs"},
	{14660, "int_tatooA05"}, {14661, "int_tatooA01"}, {14662, "int_tatooA02"}, {14663, "int_tatooA03"},
	{14664, "int_tatooA04"}, {14665, "int_7_11A40"}, {14666, "CJ_SEX_COUNTER03"}, {14667, "int_7_11A41"},
	{14668, "711_c"}, {14669, "711_d"}, {14670, "int_7_11A42"}, {14671, "int_7_11A5"},
	{14672, "int_sex01"}, {14673, "chnsaw1"}, {14674, "hotelferns1_LAn"}, {14675, "Hotelatrium_LAn"},
	{14676, "int_tatooA06"}, {14677, "int_tatooA07"}, {14678, "int_tatooA08"}, {14679, "Int_tat_tools01"},
	{14680, "Int_tat_lights01"}, {14681, "int_tatooA09"}, {14682, "int_tatooA10"}, {14683, "int_tatooA11"},
	{14684, "int_tatooA12"}, {14685, "int_tatooA13"}, {14686, "Int_tat_tools02"}, {14687, "Int_tat_lights02"},
	{14688, "int_tatooA14"}, {14689, "int_tatooA15"}, {14690, "int_7_11A40_bits"}, {14691, "int_7_11A41_bits"},
	{14692, "int_7_11A41_bits01"}, {14693, "Int_tat_tools"}, {14694, "SEX_SHOP_DET"}, {14695, "int_7_11A41_bits02"},
	{14699, "Int_tat_lights"}, {14700, "int2smSf01_int01"}, {14701, "int2Hoose2"}, {14702, "int2lamid01"},
	{14703, "int2Hoose09"}, {14704, "int2Hoose2_bits"}, {14705, "int2Vase"}, {14706, "int2labigtwo01"},
	{14707, "int2labig301"}, {14708, "int2labigone01"}, {14709, "int2lamidtwo01"}, {14710, "int2vgshM3"},
	{14711, "int2vgshM2"}, {14712, "int2Hoose11"}, {14713, "int2Hoose16"}, {14714, "int2Hoose08"},
	{14715, "int2Hoose09_Bits"}, {14716, "int2lamid01_rail"}, {14717, "int2lasmtwo02"}, {14718, "int2lasmone04"},
	{14719, "int2lasmone01"}, {14720, "int2lasmone02"}, {14721, "2labigone_bits"}, {14722, "int2Hoose09_Bits2"},
	{14723, "int2Hoose09_Bits3"}, {14724, "int2Hoose09_Bits4"}, {14725, "int2lamid01_rail2"}, {14726, "int2lamid01_rail3"},
	{14727, "int2lamid01_rail4"}, {14728, "int2labig302"}, {14735, "crackhoose"}, {14736, "AH_chiller2"},
	{14737, "whorepix"}, {14738, "brothelbar"}, {14739, "whorefurn"}, {14740, "ryblinds"},
	{14741, "rykitunit"}, {14742, "ryders_wall_stuf"}, {14743, "rydhall"}, {14744, "rybathroom"},
	{14745, "rybatharse01"}, {14746, "rylounge"}, {14747, "curses04"}, {14748, "sfhsm1"},
	{14749, "sfhsm1lights"}, {14750, "sfhsm2"}, {14751, "sfhsm2bits"}, {14752, "curses02"},
	{14753, "sfhsb2curts"}, {14754, "bigsanfranhoose"}, {14755, "shite"}, {14756, "shitlobby"},
	{14757, "sfmansionbits"}, {14758, "sfmansion1"}, {14759, "sfhsm03"}, {14760, "Object03"},
	{14761, "ryshadroom"}, {14762, "arsewinows"}, {14763, "sweetsdaylight02"}, {14764, "ballustrades"},
	{14765, "lacrakbulb"}, {14770, "int_brothelseats"}, {14771, "int3int_brothel"}, {14772, "int3int_LOW_TV"},
	{14773, "int3int_brothel03"}, {14774, "int_5kb_flykiller"}, {14775, "int3int_brothel04"}, {14776, "int3int_carupg_int"},
	{14777, "int_5weecasino"}, {14778, "int_boxing02"}, {14779, "int_boxing03"}, {14780, "in_bxing04"},
	{14781, "in_bxing05"}, {14782, "int3int_boxing30"}, {14783, "int3int_kbsgarage"}, {14784, "genint_warehs"},
	{14785, "gen_otb"}, {14786, "ab_sfGymBeams1"}, {14787, "ab_sfGymBits02a"}, {14788, "ab_sfGymBits01a"},
	{14789, "ab_sfGymMain1"}, {14790, "ab_sfGymBits03a"}, {14791, "a_vgsGymBoxa"}, {14792, "ab_vgsGymBits01a"},
	{14793, "ab_vegasGymLitesa"}, {14794, "ab_vegasGymMain2"}, {14795, "genint3_smashtv"}, {14796, "int_kbsgarage05b"},
	{14797, "int_kbsgarage3b"}, {14798, "int_kbsgarage3"}, {14799, "otb_glass"}, {14800, "gen_otb_bits"},
	{14801, "Bdups_main"}, {14802, "BDups_interior"}, {14803, "BDupsNEW"}, {14804, "BDups_plant"},
	{14805, "BDupsNew_int"}, {14806, "BDupshifi"}, {14807, "BDupslight01"}, {14808, "Strip2_Building"},
	{14809, "Strip2_Platforms"}, {14810, "Strip2_Tables"}, {14811, "Strip2_neon"}, {14812, "StudioHall_frames"},
	{14813, "StudioHall_Furn"}, {14814, "StudioHallBuild"}, {14815, "Whhouse_main"}, {14816, "Whhouse_furn"},
	{14817, "Whhouse_Rms"}, {14818, "mc_straps"}, {14819, "OG_Door"}, {14820, "dj_stuff"},
	{14821, "mc_straps_int"}, {14822, "Gym2_doorway"}, {14823, "Gym3_doorway"}, {14824, "Gym1_doorway"},
	{14825, "int_boxing07"}, {14826, "int_kbsgarage2"}, {14827, "ab_sfGymBits01a2"}, {14828, "LM_strip2Priv"},
	{14829, "strip_signs"}, {14830, "strip_lights"}, {14831, "LM_stripbar"}, {14832, "LM_stripCorner"},
	{14833, "LM_stripchairs1"}, {14834, "LM_stripplant"}, {14835, "LM_stripColumns"}, {14836, "LM_strippoles"},
	{14837, "LM_stripchairs"}, {14838, "int_strip_club"}, {14839, "LM_stripPriv"}, {14840, "Bdups_graf"},
	{14841, "Lee_gymers"}, {14842, "int_policeA07"}, {14843, "int_policeA01"}, {14844, "int_policeA02"},
	{14845, "int_policeA03"}, {14846, "int_ppol"}, {14847, "mp_sfpd_big"}, {14848, "mp_sfpd_stairs1"},
	{14849, "mp_sfpd_lights1"}, {14850, "mp_sfpd_obj1"}, {14851, "mp_sfpd_signa"}, {14852, "mp_sfpd_win1"},
	{14853, "veg_pol_main2"}, {14854, "countera"}, {14855, "counterb"}, {14856, "cellsa"},
	{14858, "veg_pol_main1"}, {14859, "coochie-room"}, {14860, "coochie-posters"}, {14861, "choochie-bed"},
	{14862, "headboard"}, {14863, "clothes"}, {14864, "shoes"}, {14865, "bobbi-room01"},
	{14866, "bobbie-bed01"}, {14867, "bobbie-cupboards"}, {14868, "pennants01"}, {14869, "bobbie-table"},
	{14870, "pompom01"}, {14871, "Kylie_barn"}, {14872, "Kylie_logs"}, {14873, "Kylie_hay"},
	{14874, "Kylie_stairs"}, {14875, "Kylie_hay1"}, {14876, "michelle-garage"}, {14877, "michelle-stairs"},
	{14878, "michelle-barrels"}, {14879, "michelle-bits"}, {14880, "michelle-bed01"}, {14881, "barbara-cop"},
	{14882, "barb-pipes"}, {14883, "prison-gates"}, {14885, "Vegas-signs1"}, {14886, "polvegsigns1"},
	{14887, "polvegsigns3"}, {14888, "Millie-headboard"}, {14889, "Millie-room"}, {14890, "millie-vibrators"},
	{14891, "millie-swing"}, {14892, "mp_sfpd_win2"}, {14893, "police1-exit"}, {14894, "police2-exit01"},
	{14895, "mp_sfpd_obj2"}, {14896, "mp_sfpd_lights2a"}, {14897, "mp_sfpd_lights1a"}, {14898, "int_policeA03a"},
	{14900, "police3-exit01"}, {14901, "police3-exit02"}, {14902, "veg_pol_window"}, {14903, "mp_sfpd_lights2"},
	{15025, "genmotelfurn_sv"}, {15026, "imy_roomfurn12_sv"}, {15027, "immy_clothes_sv"}, {15028, "genmotel2sh_sv"},
	{15029, "genmotel2_sv"}, {15030, "genmotel_sv"}, {15031, "lasmall1_sv"}, {15032, "lasmallfurn_sv"},
	{15033, "vegashotel_sv"}, {15034, "hotelgen_sv"}, {15035, "kb_bed_test2_sv"}, {15036, "kit_cab_washin_sv"},
	{15037, "MED_DINNING_2_sv"}, {15038, "Plant_Pot_3_sv"}, {15039, "mrk_bed02_sv"}, {15040, "cuntbits"},
	{15041, "cunthouse"}, {15042, "newhouse1"}, {15043, "svcuntflorday"}, {15044, "lamidshadfloor"},
	{15045, "bigLAshadow"}, {15046, "countrysavehouse"}, {15047, "svvgmdshadfloor"}, {15048, "LABIGSAVEHOUse"},
	{15049, "svlabigkitchshad"}, {15050, "svlabigbits"}, {15051, "svlasmshad"}, {15052, "svsfsmshad"},
	{15053, "bigniceveghotel"}, {15054, "svvgmedhoose"}, {15055, "savelamid"}, {15056, "svsfsmshadfloor2"},
	{15057, "bihotelshad"}, {15058, "midvegsavehouse"}, {15059, "labihalfhouse"}, {15060, "svsfmdshadflr1"},
	{15061, "svlamidshad"}, {15062, "lamidshadflr"}, {15063, "svmidsavebits"}, {15064, "svrails"},
	{16000, "drvin_screen"}, {16001, "drvin_projhut"}, {16002, "drvin_sign"}, {16003, "drvin_ticket"},
	{16004, "des_tepeoff"}, {16005, "desn2_stwnblok2"}, {16006, "ros_townhall"}, {16007, "desn2_cn2blok1"},
	{16008, "des_nbrstruct"}, {16009, "des_nbrstruct2"}, {16010, "des_reslab_"}, {16011, "des_westrn2_"},
	{16012, "des_ntcafe"}, {16013, "des_ntwn_lines1_"}, {16014, "des_ntwn_lines2_"}, {16015, "des_ntwn_lines6_"},
	{16016, "des_roadbar01"}, {16017, "des_roadbar02"}, {16018, "des_roadbar03"}, {16019, "des_roadbar04"},
	{16020, "des_roadbar05"}, {16021, "des_geyhotbase_"}, {16022, "des_geywall1"}, {16023, "des_trXingsign02"},
	{16024, "des_ltraintunnel2"}, {16025, "des_trainline06"}, {16026, "des_trainline07"}, {16027, "des_trainline08"},
	{16028, "des_trainline09"}, {16029, "des_trainline11"}, {16030, "des_trainline12"}, {16031, "des_trainline13"},
	{16032, "des_trainline14"}, {16033, "des_trainline15"}, {16034, "des_trainline16"}, {16035, "des_trainline10"},
	{16036, "des_trainline17"}, {16037, "des_railbr_twr10"}, {16038, "des_powercable_01"}, {16039, "des_powercable_03"},
	{16040, "des_powercable_04"}, {16041, "des_powercable_07"}, {16042, "des_powercable_08"}, {16043, "des_powercable_09"},
	{16044, "des_powercable_10"}, {16045, "des_powercable_11"}, {16046, "des_powercable_12"}, {16047, "des_powercable_19"},
	{16048, "des_powercable_20"}, {16049, "des_powercable_21"}, {16050, "des_powercable_22"}, {16051, "des_westsaloon_01"},
	{16052, "des_ghotfence"}, {16053, "des_westrn7_01"}, {16054, "des_westrn9_01"}, {16055, "quarry_bit04"},
	{16056, "quarry_bit02"}, {16057, "quarry_bit01"}, {16058, "quarry_bit05"}, {16059, "quarry_bit03"},
	{16060, "des_treeline1"}, {16061, "des_treeline2"}, {16062, "des_nt_buntpoles"}, {16063, "des_cockbunting"},
	{16064, "des_cn2blok4"}, {16065, "des_stwnshop01"}, {16066, "des_bluecafe01"}, {16067, "des_stwnmotel02"},
	{16068, "des_stripblock1"}, {16069, "des_stwnyelmot1_"}, {16070, "des_stwnhotel1"}, {16071, "des_quarrybelt02"},
	{16072, "des_quarrybelt01"}, {16073, "des_quarrybelt03"}, {16074, "des_quarrybelt04"}, {16075, "des_quarrybelt07"},
	{16076, "des_sorter01"}, {16077, "des_gravelpile01"}, {16078, "des_quarrybelt08"}, {16079, "des_quarrybelt09"},
	{16080, "des_bigquaryconv01"}, {16081, "des_bigquaryconv02"}, {16082, "des_quarryplatform"}, {16083, "des_quarry_hopper01"},
	{16084, "des_quarryramp"}, {16085, "des_quarstmound_02"}, {16086, "des_bigoilpipe01"}, {16087, "des_oilfieldpipe01"},
	{16088, "des_pipestrut01"}, {16089, "des_pipestrut02"}, {16090, "des_pipestrut03"}, {16091, "des_pipestrut04"},
	{16092, "des_pipestrut05"}, {16093, "a51_gatecontrol"}, {16094, "des_a51infenc"}, {16095, "des_a51guardbox02"},
	{16096, "des_a51guardbox04"}, {16097, "n_bit_16"}, {16098, "des_by_hangar_"}, {16099, "des_powercable_end"},
	{16100, "des_substa_bldgs"}, {16101, "des_windsockpole"}, {16102, "cen_bit_18"}, {16103, "ne_bit_22"},
	{16104, "des_boulders_"}, {16105, "des_westrn11_04"}, {16106, "des_nmot_"}, {16107, "des_ngassta"},
	{16108, "des_snakefarm_"}, {16109, "radar_bit_03"}, {16110, "des_rockgp1_01"}, {16111, "des_rockgp1_02"},
	{16112, "des_rockfl1_"}, {16113, "des_rockgp2_03"}, {16114, "des_rockgp2_"}, {16115, "des_rockgp1_03"},
	{16116, "des_rockgp2_04"}, {16117, "des_rockgp1_04"}, {16118, "des_rockgp2_05"}, {16119, "des_rockgp2_06"},
	{16120, "des_rockgp2_07"}, {16121, "des_rockgp2_09"}, {16122, "des_rockgp2_11"}, {16123, "des_rockgp2_13"},
	{16124, "des_rockgp1_06"}, {16125, "des_rockgp1_07"}, {16126, "des_rockgp2_15"}, {16127, "des_rockgp1_08"},
	{16128, "des_rockgp1_09"}, {16129, "des_rockgp1_12"}, {16130, "des_rockgp2_16"}, {16131, "des_rockgp2_17"},
	{16132, "dam_trellis01"}, {16133, "des_rockgp2_18"}, {16134, "des_rockfl1_01"}, {16135, "des_geysrwalk2"},
	{16136, "des_telefenc"}, {16137, "des_teleshed2_"}, {16138, "des_teleshed2_01"}, {16139, "des_rockgp2_19"},
	{16140, "des_rockgp2_20"}, {16141, "des_rockgp2_21"}, {16142, "des_rockgp2_22"}, {16143, "des_telecafe"},
	{16144, "des_telecafenc"}, {16145, "des_rockgp2_23"}, {16146, "des_ufoinn"}, {16147, "radar_bit_02"},
	{16148, "radar_bit_01"}, {16149, "radar_bit_04"}, {16150, "ufo_barinterior"}, {16151, "ufo_bar"},
	{16152, "ufo_booths"}, {16153, "ufo_photos"}, {16154, "ufo_backroom"}, {16155, "ufo_backrmstuff"},
	{16156, "Vdes_trainline18"}, {16157, "n_bit_01"}, {16158, "n_bit_02"}, {16159, "n_bit_03"},
	{16160, "n_bit_04"}, {16161, "n_bit_05"}, {16162, "n_bit_06"}, {16163, "n_bit_07"},
	{16164, "n_bit_08"}, {16165, "n_bit_10"}, {16166, "n_bit_11"}, {16167, "n_bit_12"},
	{16168, "n_bit_13"}, {16169, "n_bit_14"}, {16170, "n_bit_15"}, {16171, "ne_bit_23"},
	{16172, "ne_bit_01"}, {16173, "ne_bit_02"}, {16174, "ne_bit_03"}, {16175, "ne_bit_04"},
	{16176, "ne_bit_06"}, {16177, "ne_bit_07"}, {16178, "ne_bit_08"}, {16179, "ne_bit_09"},
	{16180, "ne_bit_10"}, {16181, "ne_bit_11"}, {16182, "ne_bit_12"}, {16183, "ne_bit_13"},
	{16184, "ne_bit_14"}, {16185, "ne_bit_15"}, {16186, "ne_bit_16"}, {16187, "ne_bit_17"},
	{16188, "ne_bit_18"}, {16189, "ne_bit_19"}, {16190, "ne_bit_20"}, {16191, "ne_bit_21"},
	{16192, "cen_bit_01"}, {16193, "cen_bit_02"}, {16194, "cen_bit_03"}, {16195, "cen_bit_04"},
	{16196, "cen_bit_20"}, {16197, "cen_bit_05"}, {16198, "cen_bit_06"}, {16199, "cen_bit_07"},
	{16200, "cen_bit_08"}, {16201, "cen_bit_09"}, {16202, "cen_bit_10"}, {16203, "cen_bit_11"},
	{16204, "cen_bit_12"}, {16205, "cen_bit_13"}, {16206, "cen_bit_14"}, {16207, "cen_bit_15"},
	{16208, "cen_bit_16"}, {16209, "cen_bit_19"}, {16210, "cen_bit_17"}, {16211, "s_bit_01"},
	{16212, "s_bit_02"}, {16213, "s_bit_03"}, {16214, "s_bit_04"}, {16215, "s_bit_05"},
	{16216, "s_bit_06"}, {16217, "s_bit_07"}, {16218, "s_bit_08"}, {16219, "s_bit_09"},
	{16220, "s_bit_10"}, {16221, "s_bit_11"}, {16222, "s_bit_12"}, {16223, "s_bit_13"},
	{16224, "s_bit_14"}, {16225, "s_bit_15"}, {16226, "s_bit_16"}, {16227, "s_bit_17"},
	{16228, "s_bit_18"}, {16229, "s_bit_19"}, {16230, "se_bit_01"}, {16231, "se_bit_02"},
	{16232, "se_bit_03"}, {16233, "se_bit_04"}, {16234, "se_bit_05"}, {16235, "se_bit_06"},
	{16236, "se_bit_07"}, {16237, "se_bit_08"}, {16238, "se_bit_09"}, {16239, "se_bit_10"},
	{16240, "se_bit_11"}, {16241, "se_bit_12"}, {16242, "se_bit_13"}, {16243, "se_bit_14"},
	{16244, "se_bit_15"}, {16245, "se_bit_16"}, {16246, "se_bit_17"}, {16247, "se_bit_18"},
	{16248, "se_bit_20"}, {16249, "se_bit_21"}, {16250, "se_bit_23"}, {16251, "n_bit_17"},
	{16252, "n_bit_18"}, {16253, "n_bit_19"}, {16254, "n_bit_20"}, {16255, "ne_bit_24"},
	{16256, "ne_bit_25"}, {16257, "ne_bit_26"}, {16258, "cen_bit_21"}, {16259, "cen_bit_22"},
	{16260, "cen_bit_23"}, {16261, "cen_bit_24"}, {16262, "s_bit_21"}, {16263, "se_bit_24"},
	{16264, "radar_bit_05"}, {16265, "des_damlodbit04"}, {16266, "des_railbridgeoil"}, {16267, "des_oilpipe_04"},
	{16268, "des_oillines01"}, {16269, "des_oillines02"}, {16270, "des_oillines03"}, {16271, "des_railfac02"},
	{16272, "des_railfac01"}, {16273, "oilderricklod01"}, {16274, "oilderricklod02"}, {16275, "oilderricklod03"},
	{16276, "oilderricklod04"}, {16277, "oilderricklod05"}, {16278, "oilderricklod06"}, {16279, "oilderricklod07"},
	{16280, "des_farmhouse1_"}, {16281, "des_fgateway01"}, {16282, "cn2_slines02"}, {16283, "cn2_slines01"},
	{16284, "cn2_slines04"}, {16285, "des_westrn7_03"}, {16286, "cn2_slines06"}, {16287, "des_fshed1_"},
	{16288, "cn2_slines03"}, {16289, "cn2_slines05"}, {16290, "cn2_slines07"}, {16291, "cn2_slines08"},
	{16292, "cn2_slines09"}, {16293, "a51_extfence03"}, {16294, "a51_extfence06"}, {16295, "quarry_fenc01"},
	{16296, "quarry_fenc04"}, {16297, "quarry_fenc06"}, {16298, "quarry_fenc05"}, {16299, "quarry_fenc02"},
	{16300, "quarry_fenc03"}, {16301, "des_quarrybelt13"}, {16302, "des_gravelpile04"}, {16303, "des_quarryramp01"},
	{16304, "des_gravelpile05"}, {16305, "des_gravelpile06"}, {16306, "cn2_ywire"}, {16307, "des_tellines01"},
	{16308, "des_sbridsupps"}, {16309, "des_quarrybelt11"}, {16310, "des_quarryhut1"}, {16311, "des_quarrybelt15"},
	{16312, "quarry_walllthing"}, {16313, "quarry_fencins"}, {16314, "quarry_chutelift"}, {16315, "quarry_fencins2"},
	{16316, "des_quarrybelt17"}, {16317, "des_quarstmound_03"}, {16318, "des_quarrybelt18"}, {16319, "quarrystuff4"},
	{16320, "quarry_fenc07"}, {16321, "quarry_fenc08"}, {16322, "a51_plat"}, {16323, "a51_outbldgs"},
	{16324, "des_quaoldfenc"}, {16325, "des_quarryhut02"}, {16326, "des_byoffice"}, {16327, "des_bycontowr"},
	{16328, "quarry_crane"}, {16329, "quarry_cranearm"}, {16330, "quarry_cranebase"}, {16331, "quarry_cranecable"},
	{16332, "quarry_cranhook"}, {16333, "quarry_crhookcble"}, {16334, "des_cranelines01"}, {16335, "des_transtower"},
	{16337, "des_cranecontrol"}, {16338, "dam_genbay01"}, {16339, "dam_genend01"}, {16340, "dam_genturbine05"},
	{16341, "dam_genalpha01"}, {16342, "dam_genturbine04"}, {16343, "dam_genalpha02"}, {16344, "dam_genbay02"},
	{16345, "dam_genturbine03"}, {16346, "dam_genturbine02"}, {16347, "dam_genalpha04"}, {16348, "dam_genbay04"},
	{16349, "dam_genturbine01"}, {16350, "dam_genend02"}, {16351, "dam_genalpha06"}, {16352, "dam_genbay06"},
	{16353, "dam_genalpha07"}, {16354, "dam_genbay07"}, {16355, "dam_gencrane01"}, {16356, "dam_gencrane02"},
	{16357, "des_ebrigroad01"}, {16358, "des_ebrigroad07"}, {16359, "des_shed3_01"}, {16360, "desn2_tsfuelpay"},
	{16361, "desn2_tsblock"}, {16362, "desn2_tscanopy"}, {16363, "des_trstplines"}, {16364, "des_quaybase"},
	{16365, "des_substat_17"}, {16366, "des_substat_37"}, {16367, "des_quayramp"}, {16368, "bonyrd_windsock"},
	{16369, "des_quaoldfenc01"}, {16370, "by_fuelfence"}, {16371, "desn2_alphabit01"}, {16372, "desn2_alphabit02"},
	{16373, "desn2_alphabit04"}, {16374, "desn2_alphabit05"}, {16375, "by_helimarkings"}, {16376, "desn2dambit01"},
	{16377, "tv_stand_by"}, {16378, "des_byofficeint"}, {16384, "des_ebrigroad10"}, {16385, "desh2_weefact2_"},
	{16386, "desn2_shed3_"}, {16387, "desn2_ammun"}, {16388, "des_studbldg"}, {16389, "des_studgrnd"},
	{16390, "desn2_studbush"}, {16391, "des_reffenc04"}, {16392, "des_reffenc01"}, {16393, "des_reffenc02"},
	{16394, "des_reffenc03"}, {16395, "desn2_minerun"}, {16396, "des_ntshop5_"}, {16397, "n_bit_09"},
	{16398, "desn2_peckfac1"}, {16399, "desn2_peckfac2"}, {16400, "desn2_peckfac3"}, {16401, "desn2_peckjump"},
	{16402, "desn2_peckalpha"}, {16403, "des2_bushybits"}, {16404, "desn2_hutskel2"}, {16405, "desn2_hutskel03"},
	{16406, "desn2_weemineb"}, {16407, "airfieldhus1"}, {16408, "airfieldhus2"}, {16409, "by_weehangr"},
	{16410, "desn2_graves"}, {16411, "desn2_platroks"}, {16420, "des_sbridsupps04"}, {16421, "s_bit_06_2"},
	{16422, "s_bit_06_3"}, {16423, "s_bit_06_4"}, {16424, "s_bit_06_5"}, {16430, "des_ebrigroad02"},
	{16434, "desn2_stwnalph1"}, {16436, "cn2_roadblock01"}, {16437, "cn2_roadblock02"}, {16438, "cn2_roadblock03"},
	{16439, "cn2_roadblock04"}, {16442, "desn2_stripsigs1"}, {16444, "des_blackbags"}, {16445, "des_quarrycut"},
	{16446, "quarry_weecrushr"}, {16448, "des_nt_buntpoles01"}, {16475, "des_stwnbowl"}, {16477, "des_stwngas1"},
	{16479, "des_stgas1sig"}, {16480, "ftcarson_sign"}, {16481, "des_quarrybelt19"}, {16498, "des_rdalpha01"},
	{16500, "cn2_savgardr1_"}, {16501, "cn2_savgardr2_"}, {16502, "cn2_jetty1"}, {16503, "cn2_rockgpst"},
	{16530, "des_oilfieldpipe02"}, {16531, "des_oilpipe_03"}, {16532, "des_oilpipe_05"}, {16533, "des_oilpipe_06"},
	{16534, "des_oilpipe_01"}, {16535, "des_oilpipe_07"}, {16562, "cn2_rosmot1"}, {16563, "cn2_polis"},
	{16564, "des_stmedicentre_"}, {16568, "cn2_rosmot02"}, {16571, "des_railbridgest01"}, {16593, "se_bit_19"},
	{16599, "by_fuel06"}, {16601, "by_fuel07"}, {16605, "des_stwnmotel03"}, {16610, "des_nbridgebit_02"},
	{16613, "des_bigtelescope"}, {16622, "des_ntwn_lines3_"}, {16623, "des_rdalpha02"}, {16627, "des_ghotfenc01"},
	{16628, "des_ghotfenc02"}, {16629, "des_ghotfenc03"}, {16630, "des_ghotfenc04"}, {16631, "des_ghotfenc05"},
	{16632, "des_ghotfenc06"}, {16633, "des_ghotfenc07"}, {16634, "des_ghotfenc08"}, {16635, "des_ghotfenc09"},
	{16636, "des_ghotfenc10"}, {16637, "ghostgardoor"}, {16638, "a51_gatecon_a"}, {16639, "des_a51_labs"},
	{16640, "des_a51_inner3"}, {16641, "des_a51warheads"}, {16642, "a51_genroom"}, {16643, "a51_stormech"},
	{16644, "a51_ventsouth"}, {16645, "a51_ventsouth01"}, {16646, "a51_ugstore1a"}, {16647, "a51_storeroom"},
	{16648, "a51_fakeroom2"}, {16649, "a51_entstair"}, {16650, "a51_genroomalpha"}, {16651, "a51_genwalkway"},
	{16652, "a51_fakealpha1"}, {16653, "a51_fakealpha2"}, {16654, "a51_fakeroom1"}, {16655, "a51_labglass"},
	{16656, "a51_rocketlab"}, {16657, "des_a51_labs2"}, {16658, "des_a51_labent"}, {16659, "des_a51_entalpha"},
	{16660, "a51_entstuff"}, {16661, "a51_sci_stair"}, {16662, "a51_radar_stuff"}, {16663, "a51_jetpstuff"},
	{16664, "a51_jetpalpha"}, {16665, "a51_radarroom"}, {16666, "a51_machines"}, {16667, "des_rockgp2_14"},
	{16668, "a51_extfence04"}, {16669, "a51_extfence05"}, {16670, "a51_extfence02"}, {16671, "a51_extfence01"},
	{16673, "des_nmot_02"}, {16675, "des_rockgp1_13"}, {16676, "des_quarrycut3"}, {16677, "des_quarrycut2"},
	{16678, "desn2_alphabit07"}, {16681, "a51_launchbottom"}, {16682, "a51_jetroom"}, {16683, "cn2_alphabit01"},
	{16684, "cn2_rnway_bit"}, {16685, "cn2_rnway_bit2"}, {16689, "des_westrn7_02"}, {16690, "des_westsaloon_02"},
	{16692, "des_rockgp1_05"}, {16693, "n_bit_11b"}, {16694, "n_bit_11c"}, {16700, "androm_des_obj"},
	{16701, "china_town_gateb"}, {16702, "cargo_stuff"}, {16705, "cargo_test"}, {16706, "carge_barrels"},
	{16707, "cargo_netting"}, {16708, "cargo_store"}, {16731, "cxrf_a51_stairs08"}, {16732, "a51_ventcover"},
	{16733, "cn2_DETAIL01"}, {16734, "cn2_DETAIL02"}, {16735, "des_alphabit08"}, {16736, "des_alphabit05"},
	{16737, "des_alphabit01"}, {16738, "des_alphabit02"}, {16739, "des_alphabit03"}, {16740, "des_alphabit04"},
	{16741, "des_alphabit"}, {16742, "des_alphabit06"}, {16743, "des_alphabit07"}, {16744, "des_alphabit09"},
	{16745, "des_alphabit10"}, {16746, "des_alphabit11"}, {16747, "des_alphabit12"}, {16753, "des_cn2_detailbit"},
	{16754, "des_cn2_detail2"}, {16756, "des_cn2_detail3"}, {16757, "des_cn2_detail4"}, {16758, "des_cn2_detailbit2"},
	{16759, "desn2_alphabit06"}, {16760, "cn2_ftcar_sig1"}, {16766, "des_oilpipe_02"}, {16767, "cluckinbell1_cn2"},
	{16769, "desn2_ammun04"}, {16770, "des_gunbldg01"}, {16771, "des_savhangr"}, {16773, "door_savhangr1"},
	{16774, "des_gunbldg"}, {16775, "door_savhangr2"}, {16776, "des_cockbody"}, {16777, "des_stmotsigbas1"},
	{16778, "des_ufosign"}, {16779, "ufo_light02"}, {16780, "ufo_light03"}, {16781, "cn2_ringking"},
	{16782, "a51_radar_scan"}, {16783, "des_detailbit06"}, {16784, "des_alphabit13"}, {16785, "des_aroadbit02"},
	{16786, "des_aroadbit03"}, {16787, "des_aroadbit04"}, {16788, "des_aroadbit08"}, {16789, "des_aroadbit12"},
	{16790, "desn2_aroadbit05"}, {17000, "wt6suppsxc"}, {17001, "cuntgrsilos"}, {17002, "lawestbridge_law"},
	{17003, "cuntwcridge"}, {17004, "cos_pch_brig_1"}, {17005, "farmhouse"}, {17006, "D5002whi"},
	{17007, "wt6supps01"}, {17008, "farmhouse01"}, {17009, "truth_barn02"}, {17010, "truth_barn03"},
	{17011, "truth_barn04"}, {17012, "cwsthseing26"}, {17013, "cuntplant05"}, {17014, "cuntwplant01"},
	{17015, "cuntwplant07"}, {17016, "cutnwplant09"}, {17017, "cuntwplant10"}, {17018, "cuntsplantfnce03"},
	{17019, "cuntfrates1"}, {17020, "cuntfrates02"}, {17021, "cuntplant06"}, {17022, "cuntwplant11"},
	{17023, "cutnwplant10"}, {17024, "cuntwplant12"}, {17025, "cunt_rockgp1_"}, {17026, "cunt_rockgp2_"},
	{17027, "cunt_rockgp1_03"}, {17028, "cunt_rockgp2_04"}, {17029, "cunt_rockgp2_09"}, {17030, "cunt_rockgp2_11"},
	{17031, "cunt_rockgp2_13"}, {17032, "cunt_rockgp2_14"}, {17033, "cunt_rockgp2_15"}, {17034, "cunt_rockgp2_16"},
	{17035, "cunt_rockgp2_17"}, {17036, "cuntw_carport1_"}, {17037, "cuntw_carport2_"}, {17038, "cuntw_weefactory1_"},
	{17039, "cuntw_weebarn1_"}, {17040, "cuntw_weefact1_"}, {17041, "cuntw_stwn"}, {17042, "cuntw_stwnmotsign2"},
	{17043, "concretearch1"}, {17044, "cuntw_stwnyels"}, {17045, "cuntw_stwnyel"}, {17046, "telewirescuntw"},
	{17047, "cuntwwires"}, {17048, "cuntwwires2"}, {17049, "cw_Silo01"}, {17050, "cw_Silo02"},
	{17051, "cw_Silo03"}, {17052, "cw_bigbarn02"}, {17053, "cw_bigbarn03"}, {17054, "cw_bigbarn04"},
	{17055, "cw_fueldrum03"}, {17056, "cw_corrug01"}, {17057, "cw_haypile03"}, {17058, "cw_tempbarn01"},
	{17059, "cw_haypile05"}, {17060, "cw_haypile06"}, {17061, "cw_barnie"}, {17062, "cuntytunnel"},
	{17063, "cw2_weebarn1_01"}, {17064, "cw2_garage"}, {17065, "cw2_garagecanopy"}, {17066, "cw2_genstore"},
	{17067, "cw2_logcabins"}, {17068, "xjetty01"}, {17069, "cunt_rockgp2_24"}, {17070, "carspaces03"},
	{17071, "cunt_rockgp2_25"}, {17072, "smltrukext"}, {17073, "smlltrukint"}, {17074, "truth_barn05"},
	{17075, "cuntwland01b"}, {17076, "cunt_rockgp2_26"}, {17077, "cuntwland02b"}, {17078, "cuntwland03b"},
	{17079, "cuntwland04b"}, {17080, "cuntwland05b"}, {17081, "cuntwland06b"}, {17082, "cuntwland07b"},
	{17083, "cuntwland08b"}, {17084, "cuntwland09b"}, {17085, "cuntwland10bb"}, {17086, "cuntwland11b"},
	{17087, "cuntwland12b"}, {17088, "cuntwland13b"}, {17089, "cuntwland15b"}, {17090, "cuntwland16b"},
	{17091, "cuntwland17_de"}, {17092, "cuntwland_de"}, {17093, "cuntwland19b"}, {17094, "cuntwland20b"},
	{17095, "cuntwland21b"}, {17096, "cuntwland22b"}, {17097, "cuntwland23b"}, {17098, "cuntwland24b"},
	{17099, "cuntwland25b"}, {17100, "cuntwland26b"}, {17101, "cuntwland29b"}, {17102, "cuntwland31b"},
	{17103, "cuntwland32b"}, {17104, "cuntwland33b"}, {17105, "cuntwland34b"}, {17106, "cuntwland35b"},
	{17107, "cuntwland36b"}, {17108, "cuntwland37b"}, {17109, "cuntwland38b"}, {17110, "cuntwland39b"},
	{17111, "cuntwland40b"}, {17112, "cuntwland41b"}, {17113, "cuntwland42b"}, {17114, "cuntwland45b"},
	{17115, "cuntwland46b"}, {17116, "cuntwland47b"}, {17117, "cuntwland48b"}, {17118, "cuntwland50b"},
	{17119, "cuntwland52b"}, {17120, "cuntwland53b"}, {17121, "cuntwland54b"}, {17122, "cuntwland55b"},
	{17123, "cuntwland56bx"}, {17124, "cuntwland58b"}, {17125, "cuntwland59b"}, {17126, "cuntwland60b"},
	{17127, "cuntwland62b"}, {17128, "cuntwland63b"}, {17129, "cuntwland64b"}, {17130, "cuntwland65b"},
	{17131, "cuntwland66b"}, {17132, "cuntwland67b"}, {17133, "cuntwland68b"}, {17134, "cuntwland69b"},
	{17135, "cuntwland70b"}, {17136, "cuntwland71b"}, {17137, "cuntwland72b"}, {17138, "cuntwland73b"},
	{17139, "cuntwland74b"}, {17140, "cuntwland75b"}, {17141, "cuntwland76b"}, {17142, "cuntwland77b"},
	{17143, "cuntwland78b"}, {17144, "cuntwland79b"}, {17145, "cuntwland80b"}, {17146, "cuntwroad37"},
	{17148, "cuntwroad02"}, {17150, "cuntwroad03"}, {17152, "cuntwroad04"}, {17154, "cuntwroad72"},
	{17156, "cuntwroad06"}, {17158, "cuntwroad07"}, {17160, "cuntwroad08"}, {17162, "cuntwroad09"},
	{17164, "cuntwroad10"}, {17166, "cuntwroad11"}, {17168, "cuntwroad12"}, {17170, "cuntwroad13"},
	{17172, "cuntwroad14"}, {17174, "cuntwroad15"}, {17176, "cuntwroad16"}, {17178, "cuntwroad17"},
	{17180, "cuntwroad18"}, {17182, "cuntwroad19"}, {17184, "cuntwroad20"}, {17186, "cuntwroad21"},
	{17188, "cuntwroad24"}, {17190, "cuntwroad25"}, {17192, "cuntwroad26"}, {17194, "cuntwroad27"},
	{17196, "cuntwroad28"}, {17198, "cuntwroad29"}, {17200, "cuntwroad30"}, {17202, "cuntwroad31"},
	{17204, "cuntwroad32"}, {17208, "cuntwroad74"}, {17210, "cuntwroad73"}, {17212, "cuntwroad34"},
	{17214, "cuntwroad35"}, {17216, "cuntwroad36"}, {17218, "cuntwroad01"}, {17220, "cuntwroad38"},
	{17222, "cuntwroad05"}, {17224, "cuntwroad40"}, {17226, "cuntwroad41"}, {17228, "cuntwroad42"},
	{17230, "cuntwroad43"}, {17232, "cuntwroad44"}, {17234, "cuntwroad45"}, {17236, "cuntwroad46"},
	{17238, "cuntwroad47"}, {17240, "cuntwroad48"}, {17242, "cuntwroad49"}, {17244, "cuntwroad50"},
	{17246, "cuntwroad51"}, {17248, "cuntwroad52"}, {17250, "cuntwroad33"}, {17252, "cuntwroad54"},
	{17254, "cuntwroad55"}, {17256, "cuntwroad39"}, {17258, "cuntwroad57"}, {17260, "cuntwroad58"},
	{17262, "cuntwroad59"}, {17267, "cuntwroad66"}, {17269, "cuntwroad67"}, {17271, "cuntwroad63"},
	{17273, "cuntwroad65"}, {17275, "cuntwroad69"}, {17277, "cuntwroad70"}, {17279, "cuntwroad68"},
	{17281, "cuntwroad71"}, {17283, "cuntwrail12"}, {17284, "cuntwrail11"}, {17285, "cuntwrail10"},
	{17286, "cuntwrail09"}, {17287, "cuntwrail08"}, {17288, "cuntwrail07"}, {17289, "cuntwrail01"},
	{17290, "cuntwrail02"}, {17291, "cuntwrail03"}, {17292, "cuntwrail04"}, {17293, "bwidgecuntw"},
	{17294, "cuntwland53bd"}, {17295, "cuntwland53bc"}, {17296, "cuntwrail04v"}, {17297, "cuntwrail04c"},
	{17298, "sjmoldbarn03"}, {17299, "cunt_rockgp2_27"}, {17300, "cuntytunnel2"}, {17301, "cuntwland49b"},
	{17302, "cuntwland51b"}, {17303, "cuntwroad22"}, {17305, "cuntwroad23"}, {17307, "cuntwland40c"},
	{17308, "cuntwland02c"}, {17309, "concretearch02"}, {17310, "concretearch03"}, {17323, "cuntwmotsignCJ"},
	{17324, "cw_combbarn"}, {17326, "cuntwroad60"}, {17327, "cuntwroad61"}, {17329, "cuntwroad62"},
	{17331, "cuntwroad53"}, {17333, "cuntwroad64"}, {17334, "cuntwroad56"}, {17335, "farmhouse02"},
	{17426, "cuntwwiresx"}, {17427, "cuntwwiresxx"}, {17428, "cuntwwiresxxx"}, {17429, "telewirescuntw01"},
	{17430, "telewirescuntw02"}, {17431, "telewirescuntw03"}, {17432, "telewirescuntw04"}, {17433, "cuntwwiresxx01"},
	{17434, "cuntwwiresxz"}, {17436, "xoverlaymap01"}, {17437, "xoverlaymap02"}, {17438, "xoverlaymap03"},
	{17439, "xoverlaymap04"}, {17440, "xoverlaymap05"}, {17441, "xoverlaymap06"}, {17442, "xoverlaymap13"},
	{17443, "xoverlaymap08"}, {17444, "xoverlay_rock"}, {17448, "xoverlaymap09"}, {17450, "xoverlaymap10"},
	{17451, "xoverlaymap07"}, {17452, "xoverlaymap07b"}, {17453, "brownwater"}, {17454, "cuntgrsilosrail"},
	{17455, "dirtover"}, {17456, "rockovergay"}, {17457, "sjmoldbarn04"}, {17458, "xxxxxxtra"},
	{17459, "xxxtra2"}, {17460, "xxxover"}, {17461, "xxxe"}, {17462, "xxxxxxxxa"},
	{17463, "xxxc01"}, {17464, "xxxd"}, {17465, "xxxzc"}, {17466, "xxxza"},
	{17467, "xxovr2"}, {17468, "xxcliffx"}, {17469, "xoverelaya"}, {17470, "xoverlaydrt"},
	{17471, "cuntybitx"}, {17472, "cunt_rocgxp2_04"}, {17474, "cuntwland17_de_a"}, {17500, "stormdrainLAE2_05"},
	{17501, "RiverBridge1_LAe"}, {17502, "RiverBridge2_LAe"}, {17503, "Furniture_LAe"}, {17504, "furnittrans1_LAe"},
	{17505, "lae2_ground02"}, {17506, "stormdrainLAE2_06"}, {17507, "stormdrainLAE2_03"}, {17508, "BlockK_LAe2"},
	{17509, "lae2_ground03"}, {17510, "barrioTrans01_LAe"}, {17511, "gwforum1_LAe"}, {17513, "lae2_ground04"},
	{17514, "starthootra1_LAe"}, {17515, "scumgym1_LAe"}, {17516, "BlockItrans_LAe"}, {17517, "BarberBlock1_LAe"},
	{17518, "telwire_01_LAe2"}, {17519, "market2_lae"}, {17520, "market1_lae"}, {17521, "Pawnshp_lae2"},
	{17522, "gangshop7_lae2"}, {17523, "Stripbar_lae"}, {17524, "LongBeBlok1_LAe"}, {17525, "RiverBridge3_LAe2"},
	{17526, "gangshops1_LAe"}, {17527, "gangblock1Tr_LAe"}, {17528, "barrioTrans01_LAe01"}, {17529, "gangshops2_LAe2"},
	{17530, "pigpenblok1Tr_LAe"}, {17531, "barrio03A_LAe"}, {17532, "barrio06Trans_LAe"}, {17533, "tempLB1_LAe2"},
	{17534, "cluckinbell1_LAe"}, {17535, "furnsign1_LAe2"}, {17536, "dambuild1_LAe2"}, {17537, "cineblock1_LAe2"},
	{17538, "powerstat1_LAe2"}, {17539, "rdsigns4_LAe03"}, {17540, "rdsigns4_LAe05"}, {17541, "LBeachBlok1z_LAe2"},
	{17542, "gangshops6_LAe2"}, {17543, "gangshops5_LAe2"}, {17544, "gangshops4_LAe2"}, {17545, "barrio02_LAe"},
	{17546, "hydro3_LAe"}, {17547, "EBeachAp1_LAe2"}, {17548, "lae2_ground05"}, {17549, "BeachBlok01_LAe2"},
	{17550, "EasBeBrij1_LAe2"}, {17551, "BeachBlok02_LAe2"}, {17552, "burnHous1_LAe2"}, {17553, "BeachBlok3_LAe2"},
	{17554, "BeachBlok5_LAe2"}, {17555, "BeachBlok7_LAe2"}, {17556, "MStorCP1_LAe2"}, {17557, "MStorCP2_LAe2"},
	{17558, "MStorCP4_LAe2"}, {17559, "MStorCP6_LAe2"}, {17560, "EBeachAp3_LAe2"}, {17561, "MsCpTunn2_LAe2"},
	{17562, "LongBeBlokx_LAe"}, {17563, "wattspark1_LAe2"}, {17564, "Tempdoor_LAe2"}, {17565, "rustybrij01_LAe2"},
	{17566, "sweetsdoor_LAe2"}, {17567, "stormdrainLAE2_07"}, {17568, "stormdrainLAE2_04"}, {17573, "rydhou01_LAe2"},
	{17574, "rydbkyar1_LAe2"}, {17575, "burgho01_LAe2"}, {17576, "hubbridge1_LAe2"}, {17577, "Liquorstore01_LAe2"},
	{17578, "Liquorstore02_LAe2"}, {17579, "Liquorstore03_LAe2"}, {17582, "stadtplaza_lae2"}, {17583, "stadt_fence"},
	{17585, "lae2transbit"}, {17586, "ebeach_alphabits"}, {17588, "ebeach_alpahbits2"}, {17589, "ebeachpark"},
	{17591, "ebeachalpha5"}, {17592, "ebeach_veg"}, {17594, "lae2_ground06"}, {17595, "Lae2_roads01"},
	{17596, "Lae2_roads02"}, {17597, "Lae2_roads03"}, {17598, "Lae2_roads04"}, {17599, "Lae2_roads85"},
	{17600, "Lae2_roads05"}, {17601, "lae2_ground07"}, {17602, "Lae2_roads07"}, {17603, "Lae2_roads08"},
	{17604, "Lae2_roads09"}, {17605, "Lae2_roads10"}, {17606, "lae2_roadscoast04"}, {17607, "Lae2_roads12"},
	{17608, "Lae2_roads13"}, {17609, "Lae2_roads14"}, {17610, "Lae2_roads15"}, {17611, "Lae2_roads16"},
	{17612, "Lae2_roads88"}, {17613, "Lae2_roads89"}, {17614, "Lae2_landHUB02"}, {17615, "Lae2_landHUB03"},
	{17616, "Lae2_landHUB04"}, {17617, "Lae2_landHUB05"}, {17618, "Lae2_landHUB06"}, {17619, "Lae2_landHUB07"},
	{17620, "Lae2_landHUB01"}, {17621, "Lae2_roads17"}, {17622, "Lae2_roads18"}, {17623, "Lae2_roads19"},
	{17624, "Lae2_roads20"}, {17625, "Lae2_roads21"}, {17626, "Lae2_roads22"}, {17627, "Lae2_roads23"},
	{17628, "Lae2_roads24"}, {17629, "Lae2_roads25"}, {17630, "Lae2_roads26"}, {17631, "Lae2_roads27"},
	{17632, "Lae2_roads28"}, {17633, "lae2_ground08"}, {17634, "lae2_ground09"}, {17635, "lae2_ground10"},
	{17636, "lae2_ground11"}, {17637, "Lae2_roads29"}, {17638, "Lae2_roads30"}, {17639, "Lae2_roads31"},
	{17640, "Lae2_roads32"}, {17641, "Lae2_roads33"}, {17642, "Lae2_roads90"}, {17643, "Lae2_roads34"},
	{17644, "Lae2_roads35"}, {17645, "lae2_ground12"}, {17646, "Lae2_roads36"}, {17647, "Lae2_roads37"},
	{17648, "Lae2_roads38"}, {17649, "Lae2_roads39"}, {17650, "Lae2_roads40"}, {17651, "Lae2_roads41"},
	{17652, "Lae2_roads42"}, {17653, "Lae2_roads43"}, {17654, "Lae2_roads44"}, {17655, "Lae2_roads46"},
	{17656, "Lae2_roads50"}, {17657, "Lae2_roads52"}, {17658, "Lae2_roads53"}, {17659, "Lae2_roads54"},
	{17660, "Lae2_roads55"}, {17661, "Lae2_roads56"}, {17662, "Lae2_roads57"}, {17663, "Lae2_roads58"},
	{17664, "lae2_ground13"}, {17665, "lae2_ground14"}, {17666, "Lae2_roads86"}, {17667, "Lae2_roads59"},
	{17668, "Lae2_roads64"}, {17669, "Lae2_roads65"}, {17670, "Lae2_roads66"}, {17671, "Lae2_roads67"},
	{17672, "Lae2_roads68"}, {17673, "lae2_roadscoast06"}, {17674, "lae2_roadscoast05"}, {17675, "lae2_roadscoast03"},
	{17676, "lae2_roadscoast01"}, {17677, "lae2_ground15"}, {17678, "grnd05_lae2"}, {17679, "lae2_bigblock"},
	{17680, "Lae2_roads76"}, {17681, "Lae2_roads77"}, {17682, "Lae2_roads78"}, {17683, "Lae2_roads79"},
	{17684, "Lae2_roads80"}, {17685, "lae2_ground16"}, {17686, "stormdrainLAE2_01"}, {17687, "Lae2_roads81"},
	{17688, "stormdrainLAE2_02"}, {17689, "brglae2"}, {17690, "lae2_blockN"}, {17691, "lae2_ground17"},
	{17692, "Lae2_roads83"}, {17693, "Lae2_roads84"}, {17694, "lae2_ground17b"}, {17695, "brg_lae2"},
	{17696, "lae2_ground18"}, {17697, "carlshou1_LAe2"}, {17698, "sweetshou1_LAe2"}, {17699, "mcstraps_LAe2"},
	{17700, "pigpenblok1_LAe2"}, {17804, "LBeachApts1_LAe2"}, {17805, "BeachApartAT_LAe2"}, {17807, "BeachApartA4_LAe2"},
	{17809, "BeachApartA5_LAe2"}, {17829, "Lae2_roads48"}, {17841, "gymblok2_lae2"}, {17848, "pigpen_props"},
	{17849, "Lae2_roads60"}, {17851, "cineblok_alpha"}, {17852, "autoshpblok_lae2"}, {17853, "cine_mark_lae2"},
	{17854, "cinmamkr_alpha"}, {17859, "cinemark2_lae2"}, {17860, "autoshp_alpha"}, {17862, "compomark_lae2"},
	{17863, "compmart_alpha"}, {17864, "comp_puchase"}, {17865, "comp_ground"}, {17866, "grass_bank"},
	{17867, "Lae2_roads46b"}, {17872, "grbank_alpha"}, {17874, "hubst_alpha"}, {17875, "hubst2_alpha"},
	{17876, "hubst3_alpha"}, {17877, "lae2_hubgrass"}, {17878, "lae2_hubgrass2"}, {17879, "hubst4alpha"},
	{17880, "hub_grass3"}, {17881, "hub5_grass"}, {17886, "stdrain_alpha"}, {17887, "stdrain_alpha2"},
	{17888, "EBeachAp2_LAe2"}, {17891, "ground2_alpha"}, {17892, "grnd02_lae2"}, {17893, "splitapts01"},
	{17894, "splitapts02"}, {17897, "cparkshit_alpha"}, {17898, "hubbrdge_alphab"}, {17899, "blockN_alpha"},
	{17901, "coast_apts"}, {17902, "coastapt_alpha"}, {17904, "blokz_fireescape"}, {17905, "bighillalpha"},
	{17906, "lae2_ground15b"}, {17907, "bighillalpha2"}, {17911, "stdrainalpha3"}, {17912, "stdrainalpha3b"},
	{17913, "hubbrdge_alpha"}, {17915, "lae2billbrds2"}, {17916, "lae2billbrds3"}, {17917, "lae2billbrds4"},
	{17918, "lae2billbrds5"}, {17919, "lae2billbrds6"}, {17920, "Lae2_roads49"}, {17921, "Lae2_roads82"},
	{17922, "coast_apts2"}, {17925, "carls_faux"}, {17926, "sweet_faux_ent"}, {17927, "Lae2_roads06"},
	{17928, "burnsfakeint"}, {17933, "Carter-light15b"}, {17934, "coochieghous"}, {17936, "rbridge3_girders"},
	{17937, "stormd_fill"}, {17938, "stormd_fillc"}, {17939, "stormd_fillb"}, {17940, "rbridg23_girders"},
	{17941, "stormd_filld"}, {17942, "stormd_fille"}, {17943, "ebeachalpha5b"}, {17944, "LngBeBlok2_LAe"},
	{17946, "Carter_GROUND"}, {17947, "burg_alpha"}, {17950, "cjsaveg"}, {17951, "cjgaragedoor"},
	{17953, "conc_bblok"}, {17954, "nitelites_LAE2"}, {17955, "nitelitesb_LAE2"}, {17956, "nitelitesc_LAE2"},
	{17957, "nitelitesd_LAE2"}, {17958, "buringd_alpha"}, {17968, "hubridge_smash"}, {17969, "hub_graffitti"},
	{17971, "hub_grnd_alpha"}, {17972, "grnd_alpha2"}, {17973, "grnd_alpha3"}, {17974, "grnd_alpha4"},
	{17976, "grnd_alpha5"}, {17978, "grnd_alpha6"}, {18000, "ammunationwwws01"}, {18001, "int_barberA07"},
	{18002, "int_barberA02"}, {18003, "int_barberA03"}, {18004, "int_barberA05"}, {18005, "int_barberA01"},
	{18006, "int_barberA08"}, {18007, "int_barberA12"}, {18008, "int_clothingA01"}, {18009, "int_rest_main"},
	{18010, "int_3rest_lights"}, {18011, "int_rest_veg02"}, {18012, "int_rest_veg01"}, {18013, "int_rest_veg3"},
	{18014, "int_rest_veg03"}, {18015, "int_rest_veg04"}, {18016, "int_rest_canopy"}, {18017, "int_rest_counchs"},
	{18018, "int_bars"}, {18019, "int_burger_furn"}, {18020, "int_6burger_main"}, {18021, "int_din_donut_main"},
	{18022, "int_chick_main"}, {18023, "int_pizzaplace"}, {18024, "int_clothe_ship"}, {18025, "clothes_sports"},
	{18026, "clothes_shit"}, {18027, "CJ_BARB_2"}, {18028, "smllbarinterior"}, {18029, "smllrestaurant"},
	{18030, "GAP"}, {18031, "clothesexl"}, {18032, "range_xtras2"}, {18033, "munation_main"},
	{18034, "CJ_AMMUN1_EXTRA"}, {18035, "munation_xtras2"}, {18036, "range_main"}, {18038, "Gun-Shop-Vegas"},
	{18039, "vg_mun_opac2"}, {18040, "vg_mun_xtras4"}, {18041, "vg_mun_xtras3"}, {18042, "gun_counter09"},
	{18043, "CJ_AMMUN_BITS"}, {18044, "CJ_AMMUN3_EXTRA"}, {18045, "mp_ammu01"}, {18046, "mp_ammu03"},
	{18047, "mpgun_counter06"}, {18048, "mp_ammu02"}, {18049, "ammu_twofloor"}, {18050, "range_opac01"},
	{18051, "range_xtras03"}, {18052, "munation_xtras03"}, {18053, "munation_xtras04"}, {18054, "munation_xtras05"},
	{18055, "smllrestseats"}, {18056, "mp_dinerbig"}, {18057, "table-plain"}, {18058, "mp_dinersmall"},
	{18059, "tables"}, {18060, "big_seats"}, {18061, "condiments07"}, {18062, "ab_sfAmmuItems01"},
	{18063, "ab_sfAmmuItems02"}, {18064, "ab_sfAmmuUnits"}, {18065, "ab_sfAmmuMain"}, {18066, "posterv"},
	{18067, "blood-splat"}, {18068, "clothes-spot"}, {18069, "clothes_sports2"}, {18070, "GAP_COUNTER"},
	{18071, "Gap_Shadow"}, {18072, "GAP_WINDOW"}, {18073, "Sub_shadow"}, {18074, "Donut_rail"},
	{18075, "lightD"}, {18076, "SHAD_1"}, {18077, "din_donut_furn"}, {18078, "CJ_BARB_2_acc"},
	{18079, "BARB_CURTAIN"}, {18080, "DONUT_BLINDS"}, {18081, "CJ_AB_Barber2_2"}, {18082, "CJ_Barber2"},
	{18083, "CJ_Barber2_1"}, {18084, "BARBER_BLINDS"}, {18085, "Object01hjk"}, {18086, "B_Lights"},
	{18087, "DONUT_BLINDS2"}, {18088, "cj_changing_room"}, {18089, "DISCO_FENCE"}, {18090, "Bar_BAR1"},
	{18091, "CJ_BAR_2_DETAILS"}, {18092, "ammun3_counter"}, {18093, "LIGHT_SHARD_"}, {18094, "CJ_SWEATER_F_71"},
	{18095, "BARBER_BLINDS02"}, {18096, "LIGHT_SHARD_06"}, {18097, "LIGHT_SHARD_07"}, {18098, "BARBER_BLINDS03"},
	{18099, "cj_RUBBISH"}, {18100, "cj_RUBBISH01"}, {18101, "cj_RUBBISH02"}, {18102, "Light_box1"},
	{18104, "CJ_AMMUN_BITS1"}, {18105, "CJ_AMMUN5_EXTRA"}, {18109, "CJ_AMMUN4_EXTRA"}, {18112, "sub_signs"},
	{18200, "w_town_11"}, {18201, "wtown_bits2_02"}, {18202, "wtown_trailwal"}, {18203, "wtown_bits2_05"},
	{18204, "w_townwires_01"}, {18205, "w_townwires_02"}, {18206, "w_townwires_03"}, {18207, "w_townwires_04"},
	{18208, "w_townwires_05"}, {18209, "w_townwires_06"}, {18210, "w_townwires_07"}, {18211, "w_townwires_08"},
	{18212, "w_townwires_09"}, {18213, "w_townwires_10"}, {18214, "w_townwires_11"}, {18215, "w_townwires_12"},
	{18216, "mtbfence1"}, {18217, "mtbfence06"}, {18218, "mtbfence08"}, {18219, "mtbfence09"},
	{18220, "mtbfence10"}, {18221, "mtbfence11"}, {18222, "mtbfence12"}, {18223, "mtbfence14"},
	{18224, "mtbfence15"}, {18225, "cunt_rockgp2_18"}, {18226, "cunt_rockgp2_19"}, {18227, "cunt_rockgp2_20"},
	{18228, "cunt_rockgp2_21"}, {18229, "w7bark"}, {18230, "logcabinnlogs"}, {18231, "cs_landbit_81"},
	{18232, "cuntw_ngassta"}, {18233, "cuntw_town07"}, {18234, "cuntw_shed2_"}, {18235, "cuntw_weechurch_"},
	{18236, "cuntw_shed3_"}, {18237, "cuntw_dinerwst"}, {18238, "cuntw_stwnfurn_"}, {18239, "cuntw_restrnt1"},
	{18240, "cuntw_liquor01"}, {18241, "cuntw_weebuild"}, {18242, "cuntw_stwnmotel01"}, {18243, "cuntw_stmotsigbas1"},
	{18244, "cuntw_stwnmotsign1"}, {18245, "cuntwjunk02"}, {18246, "cuntwjunk04"}, {18247, "cuntwjunk03"},
	{18248, "cuntwjunk01"}, {18249, "cuntwjunk05"}, {18250, "cuntwjunk06"}, {18251, "cuntwjunk07"},
	{18252, "cuntwjunk08"}, {18253, "cuntwjunk09"}, {18254, "cuntwjunk10"}, {18255, "cuntwjunk11"},
	{18256, "w7bark01"}, {18257, "crates"}, {18258, "logcabinnlogs01"}, {18259, "logcabinn01"},
	{18260, "crates01"}, {18261, "cw2_photoblock"}, {18262, "cw2_phroofstuf"}, {18263, "wtown_bits2_06"},
	{18264, "cw2_cinemablock"}, {18265, "cw2_wtownblok1"}, {18266, "wtown_shops"}, {18267, "logcabinn"},
	{18268, "cw2_mntfir05"}, {18269, "cw2_mntfir11"}, {18270, "cw2_mntfir13"}, {18271, "cw2_mntfir16"},
	{18272, "cw2_mntfir27"}, {18273, "cw2_weefirz08"}, {18274, "cuntw_shed3_01"}, {18275, "cw2_mtbfinish"},
	{18276, "mtb2_barrier1"}, {18277, "mtb2_barrier2"}, {18278, "mtb2_barrier3"}, {18279, "mtb2_barrier6"},
	{18280, "mtb2_barrier4"}, {18281, "mtb2_barrier5"}, {18282, "cw_tsblock"}, {18283, "cw_fuelpay"},
	{18284, "cw_tscanopy"}, {18285, "cw_trucklines"}, {18286, "cw_mountbarr06"}, {18287, "cw_mountbarr01"},
	{18288, "cw_mountbarr02"}, {18289, "cw_mountbarr03"}, {18290, "cw_mountbarr04"}, {18291, "cw_mountbarr07"},
	{18292, "cw_mountbarr05"}, {18293, "cs_landbit_03"}, {18294, "cs_landbit_04"}, {18295, "cs_landbit_05"},
	{18296, "cs_landbit_06"}, {18297, "cs_landbit_07"}, {18298, "cs_landbit_08"}, {18299, "cs_landbit_09"},
	{18300, "cs_landbit_10"}, {18301, "cs_landbit_11"}, {18302, "cs_landbit_13"}, {18303, "cs_landbit_14"},
	{18304, "cs_landbit_15"}, {18305, "cs_landbit_16"}, {18306, "cs_landbit_17"}, {18307, "cs_landbit_18"},
	{18308, "cs_landbit_19"}, {18309, "cs_landbit_20"}, {18310, "cs_landbit_21"}, {18311, "cs_landbit_22"},
	{18312, "cs_landbit_23"}, {18313, "cs_landbit_24"}, {18314, "cs_landbit_25"}, {18315, "cs_landbit_26"},
	{18316, "cs_landbit_27"}, {18317, "cs_landbit_28"}, {18318, "cs_landbit_29"}, {18319, "cs_landbit_30"},
	{18320, "cs_landbit_31"}, {18321, "cs_landbit_32"}, {18322, "cs_landbit_33"}, {18323, "cs_landbit_34"},
	{18324, "cs_landbit_35"}, {18325, "cs_landbit_36"}, {18326, "cs_landbit_37"}, {18327, "cs_landbit_38"},
	{18328, "cs_landbit_39"}, {18329, "cs_landbit_40"}, {18330, "cs_landbit_41"}, {18331, "cs_landbit_42"},
	{18332, "cs_landbit_43"}, {18333, "cs_landbit_44"}, {18334, "cs_landbit_45"}, {18335, "cs_landbit_47"},
	{18336, "cs_landbit_48"}, {18337, "cs_landbit_49"}, {18338, "cs_landbit_50"}, {18339, "cs_landbit_51"},
	{18340, "cs_landbit_52"}, {18341, "cs_landbit_53"}, {18342, "cs_landbit_55"}, {18343, "cs_landbit_56"},
	{18344, "cs_landbit_57"}, {18345, "cs_landbit_58"}, {18346, "cs_landbit_59"}, {18347, "cs_landbit_60"},
	{18348, "cs_landbit_61"}, {18349, "cs_landbit_62"}, {18350, "cs_landbit_64"}, {18351, "cs_landbit_65"},
	{18352, "cs_landbit_66"}, {18353, "cs_landbit_67"}, {18354, "cs_landbit_68"}, {18355, "cs_landbit_69"},
	{18356, "cs_landbit_70"}, {18357, "cs_landbit_71"}, {18358, "cs_landbit_73"}, {18359, "cs_landbit_74"},
	{18360, "cs_landbit_75"}, {18361, "cs_landbit_76"}, {18362, "cs_landbit_79"}, {18363, "cs_landbit_80"},
	{18364, "cs_landbit_01"}, {18365, "sawmill"}, {18366, "cw2_mountwalk1"}, {18367, "cw2_bikelog"},
	{18368, "cs_mountplat"}, {18369, "cs_roads01"}, {18370, "cs_roads02"}, {18371, "cs_roads03"},
	{18372, "cs_roads04"}, {18373, "cs_roads05"}, {18374, "cs_roads06"}, {18375, "cs_roads07"},
	{18376, "cs_roads08"}, {18377, "cs_roads09"}, {18378, "cs_roads10"}, {18379, "cs_roads11"},
	{18380, "cs_roads12"}, {18381, "cs_roads13"}, {18382, "cs_roads16"}, {18383, "cs_roads17"},
	{18384, "cs_roads20"}, {18385, "cuntsrod03"}, {18386, "cuntsrod02"}, {18387, "cuntsrod14"},
	{18388, "cuntsrod01"}, {18389, "cs_roads26"}, {18390, "cs_roads27"}, {18391, "cs_roads28"},
	{18392, "cs_roads29"}, {18393, "cuntsrod04"}, {18394, "cs_roads35"}, {18432, "mtbfence17"},
	{18433, "mtbfence21"}, {18434, "mtbfence24"}, {18435, "mtb_poles01"}, {18436, "mtb_poles02"},
	{18437, "mtb_poles03"}, {18438, "mtb_poles04"}, {18439, "mtb_poles05"}, {18440, "mtbfence26"},
	{18441, "mtbfence29"}, {18442, "mtbfence31"}, {18443, "mtbfence32"}, {18444, "mtbfence39"},
	{18445, "mtbfence40"}, {18446, "mtbfence43"}, {18447, "cs_mntdetail01"}, {18448, "w_townwires_13"},
	{18449, "cs_roadbridge01"}, {18450, "cs_roadbridge04"}, {18451, "cs_oldcarjmp"}, {18452, "cw_tscanopy01"},
	{18453, "cs_detrok01"}, {18454, "cs_detrok02"}, {18455, "cs_detrok04"}, {18456, "cs_detrok03"},
	{18457, "cs_detrok05"}, {18458, "cs_detrok06"}, {18459, "cs_detrok07"}, {18460, "cs_detrok08"},
	{18461, "cs_detrok09"}, {18462, "cs_detrok10"}, {18463, "cs_detrok11"}, {18464, "cs_detrok12"},
	{18465, "cs_detrok13"}, {18466, "cs_detrok14"}, {18467, "cs_detrok15"}, {18468, "cs_detrok16"},
	{18469, "cs_landbit_12"}, {18470, "telewires2cs"}, {18471, "telewires1cs"}, {18472, "telewires3cs"},
	{18473, "cs_landbit_50b"}, {18474, "cstwnland03"}, {18475, "cs_landbit_50c"}, {18476, "cuntsrod12"},
	{18477, "cuntsrod11"}, {18478, "cuntsrod09"}, {18479, "cuntsrod10"}, {18480, "cuntsrod06"},
	{18481, "cuntsrod08"}, {18482, "cuntsrod05"}, {18483, "cuntsrod07"}, {18484, "cuntsrod13"},
	{18485, "cs_landbit_50d"}, {18496, "w_town11b"}, {18518, "cuntsrod02NEW"}, {18551, "countS_barriers"},
	{18552, "cunts_ammun"}, {18553, "count_ammundoor"}, {18561, "cS_newbridge"}, {18563, "cS_bsupport"},
	{18565, "Cs_Logs03"}, {18566, "Cs_Logs02"}, {18567, "Cs_Logs04"}, {18568, "Cs_Logs05"},
	{18569, "Cs_Logs01"}, {18608, "countS_lights01"}, {18609, "Cs_Logs06"}, {18610, "cs_landbit_70_A"},
	{18611, "cs_landbit_71_A"}, {18612, "cs_landbit_53_A"}, {18613, "cs_landbit_61_A"}, {18614, "cs_landbit_44_A"},
	{18615, "cs_landbit_33_A"}, {18616, "cs_landbit_25_A"}, {18617, "cs_landbit_A"}, {18618, "cs_landbit_41_A"},
	{18619, "cs_landbit_50_A"}, {18620, "w_town_11_A"}, {18621, "cs_landbit_58_A"}, {18622, "cs_landbit_50b_A"},
	{18623, "cs_landbit_68_A"}, {18624, "cs_landbit_65_A"}, {18625, "cs_landbit_48_A"}, {18626, "cs_landbit_36_A"},
	{18627, "cs_landbit_27_A"}, {18628, "cs_landbit_10_A"}, {18629, "cs_landbit_06_A"}, {18630, "cs_landbit_20_A"},
	{18631, "NoModelFile"}, {18632, "FishingRod"}, {18633, "GTASAWrench1"}, {18634, "GTASACrowbar1"},
	{18635, "GTASAHammer1"}, {18636, "PoliceCap1"}, {18637, "PoliceShield1"}, {18638, "HardHat1"},
	{18639, "BlackHat1"}, {18640, "Hair1"}, {18641, "Flashlight1"}, {18642, "Taser1"},
	{18643, "LaserPointer1"}, {18644, "Screwdriver1"}, {18645, "MotorcycleHelmet1"}, {18646, "PoliceLight1"},
	{18647, "RedNeonTube1"}, {18648, "BlueNeonTube1"}, {18649, "GreenNeonTube1"}, {18650, "YellowNeonTube1"},
	{18651, "PinkNeonTube1"}, {18652, "WhiteNeonTube1"}, {18653, "DiscoLightRed"}, {18654, "DiscoLightGreen"},
	{18655, "DiscoLightBlue"}, {18656, "LightBeamWhite"}, {18657, "LightBeamRed"}, {18658, "LightBeamBlue"},
	{18659, "SprayTag1"}, {18660, "SprayTag2"}, {18661, "SprayTag3"}, {18662, "SprayTag4"},
	{18663, "SprayTag5"}, {18664, "SprayTag6"}, {18665, "SprayTag7"}, {18666, "SprayTag8"},
	{18667, "SprayTag9H"}, {18668, "blood_heli"}, {18669, "boat_prop"}, {18670, "camflash"},
	{18671, "carwashspray"}, {18672, "cementp"}, {18673, "cigarette_smoke"}, {18674, "cloudfast"},
	{18675, "coke_puff"}, {18676, "coke_trail"}, {18677, "exhale"}, {18678, "explosion_barrel"},
	{18679, "explosion_crate"}, {18680, "explosion_door"}, {18681, "explosion_fuel_car"}, {18682, "explosion_large"},
	{18683, "explosion_medium"}, {18684, "explosion_molotov"}, {18685, "explosion_small"}, {18686, "explosion_tiny"},
	{18687, "extinguisher"}, {18688, "fire"}, {18689, "fire_bike"}, {18690, "fire_car"},
	{18691, "fire_large"}, {18692, "fire_med"}, {18693, "Flame99"}, {18694, "flamethrower"},
	{18695, "gunflash"}, {18696, "gunsmoke"}, {18697, "heli_dust"}, {18698, "insects"},
	{18699, "jetpack"}, {18700, "jetthrust"}, {18701, "molotov_flame"}, {18702, "nitro"},
	{18703, "overheat_car"}, {18704, "overheat_car_elec"}, {18705, "petrolcan"}, {18706, "prt_blood"},
	{18707, "prt_boatsplash"}, {18708, "prt_bubble"}, {18709, "prt_cardebris"}, {18710, "prt_collisionsmoke"},
	{18711, "prt_glass"}, {18712, "prt_gunshell"}, {18713, "prt_sand2"}, {18714, "prt_sand"},
	{18715, "prt_smoke_huge"}, {18716, "prt_smoke_expand"}, {18717, "prt_spark"}, {18718, "prt_spark_2"},
	{18719, "prt_wake"}, {18720, "prt_watersplash"}, {18721, "prt_wheeldirt"}, {18722, "puke"},
	{18723, "riot_smoke"}, {18724, "shootlight"}, {18725, "smoke30lit"}, {18726, "smoke30m"},
	{18727, "smoke50lit"}, {18728, "smoke_flare"}, {18729, "spraycan"}, {18730, "tank_fire"},
	{18731, "teargas99"}, {18732, "teargasAD"}, {18733, "tree_hit_fir"}, {18734, "tree_hit_palm"},
	{18735, "vent2"}, {18736, "vent"}, {18737, "wallbust"}, {18738, "water_fnt_tme"},
	{18739, "water_fountain"}, {18740, "water_hydrant"}, {18741, "water_ripples"}, {18742, "water_speed"},
	{18743, "water_splash"}, {18744, "water_splash_big"}, {18745, "water_splsh_sml"}, {18746, "water_swim"},
	{18747, "waterfall_end"}, {18748, "WS_factorysmoke"}, {18749, "SAMPLogoSmall"}, {18750, "SAMPLogoBig"},
	{18751, "IslandBase1"}, {18752, "Volcano"}, {18753, "Base125mx125m1"}, {18754, "Base250mx250m1"},
	{18755, "VCElevator1"}, {18756, "ElevatorDoor1"}, {18757, "ElevatorDoor2"}, {18758, "VCElevatorFront1"},
	{18759, "DMCage1"}, {18760, "DMCage2"}, {18761, "RaceFinishLine1"}, {18762, "Concrete1mx1mx5m"},
	{18763, "Concrete3mx3mx5m"}, {18764, "Concrete5mx5mx5m"}, {18765, "Concrete10mx10mx5m"}, {18766, "Concrete10mx1mx5m"},
	{18767, "ConcreteStair1H"}, {18768, "SkyDivePlatform1"}, {18769, "SkyDivePlatform1a"}, {18770, "SkyDivePlatform1b"},
	{18771, "SpiralStair1"}, {18772, "TunnelSection1"}, {18773, "TunnelJoinSection1"}, {18774, "TunnelJoinSection2"},
	{18775, "TunnelJoinSection3"}, {18776, "TunnelJoinSection4"}, {18777, "TunnelSpiral1"}, {18778, "RampT1"},
	{18779, "RampT2"}, {18780, "RampT3"}, {18781, "MeshRampBig"}, {18782, "CookieRamp1"},
	{18783, "FunBoxTop1"}, {18784, "FunBoxRamp1"}, {18785, "FunBoxRamp2"}, {18786, "FunBoxRamp3"},
	{18787, "FunBoxRamp4"}, {18788, "MRoad40m"}, {18789, "MRoad150m"}, {18790, "MRoadBend180Deg1"},
	{18791, "MRoadBend45Deg"}, {18792, "MRoadTwist15DegL"}, {18793, "MRoadTwist15DegR"}, {18794, "MRoadBend15Deg1"},
	{18795, "MRoadBend15Deg2"}, {18796, "MRoadBend15Deg3"}, {18797, "MRoadBend15Deg4"}, {18798, "MRoadB45T15DegL"},
	{18799, "MRoadB45T15DegR"}, {18800, "MRoadHelix1"}, {18801, "MRoadLoop1"}, {18802, "MBridgeRamp1"},
	{18803, "MBridge150m1"}, {18804, "MBridge150m2"}, {18805, "MBridge150m3"}, {18806, "MBridge150m4"},
	{18807, "MBridge75mHalf"}, {18808, "Tube50m1"}, {18809, "Tube50mGlass1"}, {18810, "Tube50mBulge1"},
	{18811, "Tube50mGlassBulge1"}, {18812, "Tube50mFunnel1"}, {18813, "Tube50mGlassFunnel1"}, {18814, "Tube50mFunnel2"},
	{18815, "Tube50mFunnel3"}, {18816, "Tube50mFunnel4"}, {18817, "Tube50mTSection1"}, {18818, "Tube50mGlassT1"},
	{18819, "Tube50mPlus1"}, {18820, "Tube50mGlassPlus1"}, {18821, "Tube50m45Bend1"}, {18822, "Tube50mGlass45Bend1"},
	{18823, "Tube50m90Bend1"}, {18824, "Tube50mGlass90Bend1"}, {18825, "Tube50m180Bend1"}, {18826, "Tube50mGlass180Bend"},
	{18827, "Tube100m2"}, {18828, "SpiralTube1"}, {18829, "RTexturetube"}, {18830, "RTexturebridge"},
	{18831, "RT25mBend90Tube1"}, {18832, "RT25mBend180Tube1"}, {18833, "RT50mBend45Tube1"}, {18834, "RT50mBend180Tube1"},
	{18835, "RBFunnel"}, {18836, "RBHalfpipe"}, {18837, "RB25mBend90Tube"}, {18838, "RB25mBend180Tube"},
	{18839, "RB50mBend45Tube"}, {18840, "RB50mBend90Tube"}, {18841, "RB50mBend180Tube"}, {18842, "RB50mTube"},
	{18843, "GlassSphere1"}, {18844, "WaterUVAnimSphere1"}, {18845, "RTexturesphere"}, {18846, "BigCesar"},
	{18847, "HugeHalfPipe1"}, {18848, "SamSiteNonDynamic"}, {18849, "ParaDropNonDynamic"}, {18850, "HeliPad1"},
	{18851, "TubeToRoad1"}, {18852, "Tube100m1"}, {18853, "Tube100m45Bend1"}, {18854, "Tube100m90Bend1"},
	{18855, "Tube100m180Bend1"}, {18856, "Cage5mx5mx3m"}, {18857, "Cage20mx20mx10m"}, {18858, "FoamHoop1"},
	{18859, "QuarterPipe1"}, {18860, "skyscrpunbuilt2"}, {18861, "scaffoldlift"}, {18862, "GarbagePileRamp1"},
	{18863, "SnowArc1"}, {18864, "FakeSnow1"}, {18865, "MobilePhone1"}, {18866, "MobilePhone2"},
	{18867, "MobilePhone3"}, {18868, "MobilePhone4"}, {18869, "MobilePhone5"}, {18870, "MobilePhone6"},
	{18871, "MobilePhone7"}, {18872, "MobilePhone8"}, {18873, "MobilePhone9"}, {18874, "MobilePhone10"},
	{18875, "Pager1"}, {18876, "BigGreenGloop1"}, {18877, "FerrisWheelBit"}, {18878, "FerrisBaseBit"},
	{18879, "FerrisCageBit"}, {18880, "SpeedCamera1"}, {18881, "SkyDivePlatform2"}, {18882, "HugeBowl1"},
	{18883, "HugeBowl2"}, {18884, "HugeBowl3"}, {18885, "GunVendingMachine1"}, {18886, "ElectroMagnet1"},
	{18887, "ForceField1"}, {18888, "ForceField2"}, {18889, "ForceField3"}, {18890, "Rake1"},
	{18891, "Bandana1"}, {18892, "Bandana2"}, {18893, "Bandana3"}, {18894, "Bandana4"},
	{18895, "Bandana5"}, {18896, "Bandana6"}, {18897, "Bandana7"}, {18898, "Bandana8"},
	{18899, "Bandana9"}, {18900, "Bandana10"}, {18901, "Bandana11"}, {18902, "Bandana12"},
	{18903, "Bandana13"}, {18904, "Bandana14"}, {18905, "Bandana15"}, {18906, "Bandana16"},
	{18907, "Bandana17"}, {18908, "Bandana18"}, {18909, "Bandana19"}, {18910, "Bandana20"},
	{18911, "Mask1"}, {18912, "Mask2"}, {18913, "Mask3"}, {18914, "Mask4"},
	{18915, "Mask5"}, {18916, "Mask6"}, {18917, "Mask7"}, {18918, "Mask8"},
	{18919, "Mask9"}, {18920, "Mask10"}, {18921, "Beret1"}, {18922, "Beret2"},
	{18923, "Beret3"}, {18924, "Beret4"}, {18925, "Beret5"}, {18926, "Hat1"},
	{18927, "Hat2"}, {18928, "Hat3"}, {18929, "Hat4"}, {18930, "Hat5"},
	{18931, "Hat6"}, {18932, "Hat7"}, {18933, "Hat8"}, {18934, "Hat9"},
	{18935, "Hat10"}, {18936, "Helmet1"}, {18937, "Helmet2"}, {18938, "Helmet3"},
	{18939, "CapBack1"}, {18940, "CapBack2"}, {18941, "CapBack3"}, {18942, "CapBack4"},
	{18943, "CapBack5"}, {18944, "HatBoater1"}, {18945, "HatBoater2"}, {18946, "HatBoater3"},
	{18947, "HatBowler1"}, {18948, "HatBowler2"}, {18949, "HatBowler3"}, {18950, "HatBowler4"},
	{18951, "HatBowler5"}, {18952, "BoxingHelmet1"}, {18953, "CapKnit1"}, {18954, "CapKnit2"},
	{18955, "CapOverEye1"}, {18956, "CapOverEye2"}, {18957, "CapOverEye3"}, {18958, "CapOverEye4"},
	{18959, "CapOverEye5"}, {18960, "CapRimUp1"}, {18961, "CapTrucker1"}, {18962, "CowboyHat2"},
	{18963, "CJElvisHead"}, {18964, "SkullyCap1"}, {18965, "SkullyCap2"}, {18966, "SkullyCap3"},
	{18967, "HatMan1"}, {18968, "HatMan2"}, {18969, "HatMan3"}, {18970, "HatTiger1"},
	{18971, "HatCool1"}, {18972, "HatCool2"}, {18973, "HatCool3"}, {18974, "MaskZorro1"},
	{18975, "Hair2"}, {18976, "MotorcycleHelmet2"}, {18977, "MotorcycleHelmet3"}, {18978, "MotorcycleHelmet4"},
	{18979, "MotorcycleHelmet5"}, {18980, "Concrete1mx1mx25m"}, {18981, "Concrete1mx25mx25m"}, {18982, "Tube100m3"},
	{18983, "Tube100m4"}, {18984, "Tube100m5"}, {18985, "Tube100m6"}, {18986, "TubeToPipe1"},
	{18987, "Tube25m1"}, {18988, "Tube25mCutEnd1"}, {18989, "Tube25m45Bend1"}, {18990, "Tube25m90Bend1"},
	{18991, "Tube25m180Bend1"}, {18992, "Tube10m45Bend1"}, {18993, "Tube10m90Bend1"}, {18994, "Tube10m180Bend1"},
	{18995, "Tube5m1"}, {18996, "Tube5m45Bend1"}, {18997, "Tube1m1"}, {18998, "Tube200m1"},
	{18999, "Tube200mBendy1"}, {19000, "Tube200mBulge1"}, {19001, "VCWideLoop10"}, {19002, "FireHoop1"},
	{19003, "LAOfficeFloors1"}, {19004, "RoundBuilding1"}, {19005, "RampT4"}, {19006, "GlassesType1"},
	{19007, "GlassesType2"}, {19008, "GlassesType3"}, {19009, "GlassesType4"}, {19010, "GlassesType5"},
	{19011, "GlassesType6"}, {19012, "GlassesType7"}, {19013, "GlassesType8"}, {19014, "GlassesType9"},
	{19015, "GlassesType10"}, {19016, "GlassesType11"}, {19017, "GlassesType12"}, {19018, "GlassesType13"},
	{19019, "GlassesType14"}, {19020, "GlassesType15"}, {19021, "GlassesType16"}, {19022, "GlassesType17"},
	{19023, "GlassesType18"}, {19024, "GlassesType19"}, {19025, "GlassesType20"}, {19026, "GlassesType21"},
	{19027, "GlassesType22"}, {19028, "GlassesType23"}, {19029, "GlassesType24"}, {19030, "GlassesType25"},
	{19031, "GlassesType26"}, {19032, "GlassesType27"}, {19033, "GlassesType28"}, {19034, "GlassesType29"},
	{19035, "GlassesType30"}, {19036, "HockeyMask1"}, {19037, "HockeyMask2"}, {19038, "HockeyMask3"},
	{19039, "WatchType1"}, {19040, "WatchType2"}, {19041, "WatchType3"}, {19042, "WatchType4"},
	{19043, "WatchType5"}, {19044, "WatchType6"}, {19045, "WatchType7"}, {19046, "WatchType8"},
	{19047, "WatchType9"}, {19048, "WatchType10"}, {19049, "WatchType11"}, {19050, "WatchType12"},
	{19051, "WatchType13"}, {19052, "WatchType14"}, {19053, "WatchType15"}, {19901, "AnimTube"},
	{19054, "XmasBox1"}, {19055, "XmasBox2"}, {19056, "XmasBox3"}, {19057, "XmasBox4"},
	{19058, "XmasBox5"}, {19059, "XmasOrb1"}, {19060, "XmasOrb2"}, {19061, "XmasOrb3"},
	{19062, "XmasOrb4"}, {19063, "XmasOrb5"}, {19064, "SantaHat1"}, {19065, "SantaHat2"},
	{19066, "SantaHat3"}, {19067, "HoodyHat1"}, {19068, "HoodyHat2"}, {19069, "HoodyHat3"},
	{19070, "WSDown1"}, {19071, "WSStraight1"}, {19072, "WSBend45Deg1"}, {19073, "WSRocky1"},
	{19074, "Cage20mx20mx10mv2"}, {19075, "Cage5mx5mx3mv2"}, {19076, "XmasTree1"}, {19077, "Hair3"},
	{19078, "TheParrot1"}, {19079, "TheParrot2"}, {19080, "LaserPointer2"}, {19081, "LaserPointer3"},
	{19082, "LaserPointer4"}, {19083, "LaserPointer5"}, {19084, "LaserPointer6"}, {19085, "EyePatch1"},
	{19086, "ChainsawDildo1"}, {19087, "Rope1"}, {19088, "Rope2"}, {19089, "Rope3"},
	{19090, "PomPomBlue"}, {19091, "PomPomRed"}, {19092, "PomPomGreen"}, {19093, "HardHat2"},
	{19094, "BurgerShotHat1"}, {19095, "CowboyHat1"}, {19096, "CowboyHat3"}, {19097, "CowboyHat4"},
	{19098, "CowboyHat5"}, {19099, "PoliceCap2"}, {19100, "PoliceCap3"}, {19101, "ArmyHelmet1"},
	{19102, "ArmyHelmet2"}, {19103, "ArmyHelmet3"}, {19104, "ArmyHelmet4"}, {19105, "ArmyHelmet5"},
	{19106, "ArmyHelmet6"}, {19107, "ArmyHelmet7"}, {19108, "ArmyHelmet8"}, {19109, "ArmyHelmet9"},
	{19110, "ArmyHelmet10"}, {19111, "ArmyHelmet11"}, {19112, "ArmyHelmet12"}, {19113, "SillyHelmet1"},
	{19114, "SillyHelmet2"}, {19115, "SillyHelmet3"}, {19116, "PlainHelmet1"}, {19117, "PlainHelmet2"},
	{19118, "PlainHelmet3"}, {19119, "PlainHelmet4"}, {19120, "PlainHelmet5"}, {19121, "BollardLight1"},
	{19122, "BollardLight2"}, {19123, "BollardLight3"}, {19124, "BollardLight4"}, {19125, "BollardLight5"},
	{19126, "BollardLight6"}, {19127, "BollardLight7"}, {19128, "DanceFloor1"}, {19129, "DanceFloor2"},
	{19130, "ArrowType1"}, {19131, "ArrowType2"}, {19132, "ArrowType3"}, {19133, "ArrowType4"},
	{19134, "ArrowType5"}, {19135, "EnExMarker1"}, {19136, "Hair4"}, {19137, "CluckinBellHat1"},
	{19138, "PoliceGlasses1"}, {19139, "PoliceGlasses2"}, {19140, "PoliceGlasses3"}, {19141, "SWATHelmet1"},
	{19142, "SWATArmour1"}, {19143, "PinSpotLight1"}, {19144, "PinSpotLight2"}, {19145, "PinSpotLight3"},
	{19146, "PinSpotLight4"}, {19147, "PinSpotLight5"}, {19148, "PinSpotLight6"}, {19149, "PinSpotLight7"},
	{19150, "PinSpotLight8"}, {19151, "PinSpotLight9"}, {19152, "PinSpotLight10"}, {19153, "PinSpotLight11"},
	{19154, "PinSpotLight12"}, {19155, "PinSpotLight13"}, {19156, "PinSpotLight14"}, {19157, "MetalLightBars1"},
	{19158, "MetalLightBars2"}, {19159, "MirrorBall1"}, {19160, "HardHat3"}, {19161, "PoliceHat1"},
	{19162, "PoliceHat2"}, {19163, "GimpMask1"}, {19164, "GTASAMap1vert"}, {19165, "GTASAMap2"},
	{19166, "GTASAMap3"}, {19167, "GTASAMap4"}, {19168, "GTASAMap5"}, {19169, "GTASAMap6"},
	{19170, "GTASAMap7"}, {19171, "GTASAMap8"}, {19172, "SAMPPicture1"}, {19173, "SAMPPicture2"},
	{19174, "SAMPPicture3"}, {19175, "SAMPPicture4"}, {19176, "LSOffice1Door1"}, {19177, "MapMarkerNew1"},
	{19178, "MapMarkerNew2"}, {19179, "MapMarkerNew3"}, {19180, "MapMarkerNew4"}, {19181, "MapMarkerNew5"},
	{19182, "MapMarkerNew6"}, {19183, "MapMarkerNew7"}, {19184, "MapMarkerNew8"}, {19185, "MapMarkerNew9"},
	{19186, "MapMarkerNew10"}, {19187, "MapMarkerNew11"}, {19188, "MapMarkerNew12"}, {19189, "MapMarkerNew13"},
	{19190, "MapMarkerNew14"}, {19191, "MapMarkerNew15"}, {19192, "MapMarkerNew16"}, {19193, "MapMarkerNew17"},
	{19194, "MapMarkerNew18"}, {19195, "MapMarkerNew19"}, {19196, "MapMarkerNew20"}, {19197, "EnExMarker2"},
	{19198, "EnExMarker3"}, {19199, "LCObservatory"}, {19200, "PoliceHelmet1"}, {19201, "MapMarker1"},
	{19202, "MapMarker2"}, {19203, "MapMarker3"}, {19204, "MapMarker4"}, {19205, "MapMarker5"},
	{19206, "MapMarker6"}, {19207, "MapMarker7"}, {19208, "MapMarker8"}, {19209, "MapMarker9"},
	{19210, "MapMarker10"}, {19211, "MapMarker11"}, {19212, "MapMarker12"}, {19213, "MapMarker13"},
	{19214, "MapMarker14"}, {19215, "MapMarker15"}, {19216, "MapMarker16"}, {19217, "MapMarker17"},
	{19218, "MapMarker18"}, {19219, "MapMarker19"}, {19220, "MapMarker20"}, {19221, "MapMarker21"},
	{19222, "MapMarker22"}, {19223, "MapMarker23"}, {19224, "MapMarker24"}, {19225, "MapMarker25"},
	{19226, "MapMarker26"}, {19227, "MapMarker27"}, {19228, "MapMarker28"}, {19229, "MapMarker29"},
	{19230, "MapMarker30"}, {19231, "MapMarker31"}, {19232, "MapMarker32"}, {19233, "MapMarker33"},
	{19234, "MapMarker34"}, {19235, "MapMarker35"}, {19236, "MapMarker36"}, {19237, "MapMarker37"},
	{19238, "MapMarker38"}, {19239, "MapMarker39"}, {19240, "MapMarker40"}, {19241, "MapMarker41"},
	{19242, "MapMarker42"}, {19243, "MapMarker43"}, {19244, "MapMarker44"}, {19245, "MapMarker45"},
	{19246, "MapMarker46"}, {19247, "MapMarker47"}, {19248, "MapMarker48"}, {19249, "MapMarker49"},
	{19250, "MapMarker50"}, {19251, "MapMarker51"}, {19252, "MapMarker52"}, {19253, "MapMarker53"},
	{19254, "MapMarker54"}, {19255, "MapMarker55"}, {19256, "MapMarker56"}, {19257, "MapMarker57"},
	{19258, "MapMarker58"}, {19259, "MapMarker59"}, {19260, "MapMarker60"}, {19261, "MapMarker61"},
	{19262, "MapMarker62"}, {19263, "MapMarker63"}, {19264, "MapMarker1a"}, {19265, "MapMarker1b"},
	{19266, "MapMarker31a"}, {19267, "MapMarker31b"}, {19268, "MapMarker31c"}, {19269, "MapMarker31d"},
	{19270, "MapMarkerFire1"}, {19271, "MapMarkerLight1"}, {19272, "DMCage3"}, {19273, "KeypadNonDynamic"},
	{19274, "Hair5"}, {19275, "SAMPLogo2"}, {19276, "SAMPLogo3"}, {19277, "LiftType1"},
	{19278, "LiftPlatform1"}, {19279, "LCSmallLight1"}, {19280, "CarRoofLight1"}, {19281, "PointLight1"},
	{19282, "PointLight2"}, {19283, "PointLight3"}, {19284, "PointLight4"}, {19285, "PointLight5"},
	{19286, "PointLight6"}, {19287, "PointLight7"}, {19288, "PointLight8"}, {19289, "PointLight9"},
	{19290, "PointLight10"}, {19291, "PointLight11"}, {19292, "PointLight12"}, {19293, "PointLight13"},
	{19294, "PointLight14"}, {19295, "PointLight15"}, {19296, "PointLight16"}, {19297, "PointLight17"},
	{19298, "PointLight18"}, {19299, "PointLightMoon1"}, {19300, "bridge_liftsec"}, {19301, "subbridge01"},
	{19302, "subbridge07"}, {19303, "subbridge19"}, {19304, "subbridge20"}, {19305, "subbridge_lift"},
	{19306, "verticalift_bridg2"}, {19307, "verticalift_bridge"}, {19301, "mp_sfpd_nocell"}, {19302, "pd_jail_door01"},
	{19303, "pd_jail_door02"}, {19304, "pd_jail_door_top01"}, {19308, "taxi01"}, {19309, "taxi02"}, {19310, "taxi03"},
	{19311, "taxi04"}, {19312, "a51fencing"}, {19313, "a51fensin"}, {19314, "bullhorns01"}, {19315, "deer01"},
	{19316, "FerrisCageBit01"}, {19317, "bassguitar01"}, {19318, "flyingv01"}, {19319, "warlock01"}, {19320, "pumpkin01"},
	{19321, "cuntainer"}, {19322, "mallb_laW02"}, {19323, "lsmall_shop01"}, {19325, "lsmall_window01"}, {19326, "7_11_sign01"},
	{19327, "7_11_sign02"}, {19328, "7_11_sign03"}, {19329, "7_11_sign04"}, {19330, "fire_hat01"}, {19331, "fire_hat02"},
	{19332, "Hot_Air_Balloon01"}, {19333, "Hot_Air_Balloon02"}, {19334, "Hot_Air_Balloon03"}, {19335, "Hot_Air_Balloon04"},
	{19336, "Hot_Air_Balloon05"}, {19337, "Hot_Air_Balloon06"}, {19338, "Hot_Air_Balloon07"}, {19339, "coffin01"},
	{19340, "cslab01"}, {19341, "easter_egg01"}, {19342, "easter_egg02"}, {19343, "easter_egg03"}, {19344, "easter_egg04"},
	{19347, "badge01"}, {19348, "cane01"}, {19349, "monocle01"}, {19350, "moustache01"}, {19351, "moustache02"},
	{19352, "tophat01"}, {19353, "wall001"}, {19354, "wall002"}, {19355, "wall003"}, {19356, "wall004"},
	{19357, "wall005"}, {19358, "wall006"}, {19359, "wall007"}, {19360, "wall008"}, {19361, "wall009"}, {19362, "wall010"},
	{19363, "wall011"}, {19364, "wall012"}, {19365, "wall013"}, {19366, "wall014"}, {19367, "wall015"}, {19368, "wall016"},
	{19369, "wall017"}, {19370, "wall018"}, {19371, "wall019"}, {19372, "wall020"}, {19373, "wall021"}, {19374, "wall022"},
	{19375, "wall023"}, {19376, "wall024"}, {19377, "wall025"}, {19378, "wall026"}, {19379, "wall027"}, {19380, "wall028"},
	{19381, "wall029"}, {19382, "wall030"}, {19383, "wall031"}, {19384, "wall032"}, {19385, "wall033"}, {19386, "wall034"},
	{19387, "wall035"}, {19388, "wall036"}, {19389, "wall037"}, {19390, "wall038"}, {19391, "wall039"}, {19392, "wall040"},
	{19393, "wall041"}, {19394, "wall042"}, {19395, "wall043"}, {19396, "wall044"}, {19397, "wall045"}, {19398, "wall046"},
	{19399, "wall047"}, {19400, "wall048"}, {19401, "wall049"}, {19402, "wall050"}, {19403, "wall051"}, {19404, "wall052"},
	{19405, "wall053"}, {19406, "wall054"}, {19407, "wall055"}, {19408, "wall056"}, {19409, "wall057"}, {19410, "wall058"},
	{19411, "wall059"}, {19412, "wall060"}, {19413, "wall061"}, {19414, "wall062"}, {19415, "wall063"}, {19416, "wall064"},
	{19417, "wall065"}, {19418, "handcuffs01"}, {19419, "police_lights01"}, {19420, "police_lights02"}, {19421, "headphones01"},
	{19422, "headphones02"}, {19423, "headphones03"}, {19424, "headphones04"}, {19425, "speed_bump01"},
	{19426, "wall066"}, {19427, "wall067"}, {19428, "wall068"}, {19429, "wall069"}, {19430, "wall070"}, {19431, "wall071"},
	{19432, "wall072"}, {19433, "wall073"}, {19434, "wall074"}, {19435, "wall075"}, {19436, "wall076"}, {19437, "wall077"},
	{19438, "wall078"}, {19439, "wall079"}, {19440, "wall080"}, {19441, "wall081"}, {19442, "wall082"}, {19443, "wall083"},
	{19444, "wall084"}, {19445, "wall085"}, {19446, "wall086"}, {19447, "wall087"}, {19448, "wall088"}, {19449, "wall089"},
	{19450, "wall090"}, {19451, "wall091"}, {19452, "wall092"}, {19453, "wall093"}, {19454, "wall094"}, {19455, "wall095"},
	{19456, "wall096"}, {19457, "wall097"}, {19458, "wall098"}, {19459, "wall099"}, {19460, "wall100"}, {19461, "wall101"},
	{19462, "wall102"}, {19463, "wall103"}, {19464, "wall104"}, {19465, "wall105"}, {19466, "window001"}, {19467, "vehicle_barrier01"},
	{19468, "bucket01"}, {19469, "scarf01"}, {19470, "forsale01"}, {19471, "forsale02"}, {19472, "gasmask01"}, {19473, "grassplant01"},
	{19474, "pokertable01"}, {19475, "Plane001"}, {19476, "Plane002"}, {19477, "Plane003"}, {19478, "Plane004"}, {19479, "Plane005"},
	{19480, "Plane006"}, {19481, "Plane007"}, {19482, "Plane008"}, {19483, "Plane009"}, {19484, "landbit01_01"},
	{19485, "Groundbit84_SFS_01"}, {19486, "burg_SFS_01"}, {19487, "tophat02"}, {19488, "HatBowler6"}, {19489, "sfhouse1"},
	{19490, "sfhouse1int"}, {19491, "sfhouse2"}, {19492, "sfhouse2int"}, {19493, "sfhouse3"}, {19494, "sfhouse3int"},
	{19495, "sfhouse4"}, {19496, "sfhouse4int"}, {19497, "lvhouse1"}, {19498, "lvhouse1int"}, {19499, "lvhouse2"},
	{19500, "lvhouse2int"}, {19501, "lvhouse3"}, {19502, "lvhouse3int"}, {19503, "lvhouse4"}, {19504, "lvhouse4int"},
	{19505, "lshouse1"}, {19506, "lshouse1int"}, {19507, "lshouse2"}, {19508, "lshouse2int"}, {19509, "lshouse3"},
	{19510, "lshouse3int"}, {19511, "lshouse4"}, {19512, "lshouse4int"}, {19678, "alaman1"},
	{19516, "Hair2_nc"}, {19517, "Hair3_nc"}, {19518, "Hair5_nc"}, {19519, "Hair1_nc"}, {19520, "pilotHat01"}, {19521, "policeHat01"},
	{19522, "property_red"}, {19523, "property_orange"}, {19524, "property_yellow"}, {19525, "WeddingCake1"},
	{19526, "ATMFixed"}, {19527, "Cauldron1"}, {19528, "WitchesHat1"}, {19529, "Plane125x125Grass1"},
	{19530, "Plane125x125Sand1"}, {19531, "Plane125x125Conc1"}, {19532, "15x125Road1"}, {19533, "15x62_5Road1"},
	{19534, "15x15RoadInters1"}, {19535, "15x15RoadInters2"}, {19536, "Plane62_5x125Grass1"}, {19537, "Plane62_5x125Sand1"},
	{19538, "Plane62_5x125Conc1"}, {19539, "Edge62_5x62_5Grass1"}, {19540, "Edge62_5x62_5Grass2"}, {19541, "Edge62_5x15Grass1"},
	{19542, "Edge62_5x125Grass1"}, {19543, "Plane62_5x15Grass1"}, {19544, "Plane62_5x15Sand1"}, {19545, "Plane62_5x15Conc1"},
	{19546, "Edge62_5x62_5Grass3"}, {19547, "Hill125x125Grass1"}, {19548, "Hill125x125Sand1"}, {19549, "Edge62_5x32_5Grass1"},
	{19550, "Plane125x125Grass2"}, {19551, "Plane125x125Sand2"}, {19552, "Plane125x125Conc2"}, {19553, "StrawHat1"},
	{19554, "Beanie1"}, {19555, "BoxingGloveL"}, {19556, "BoxingGloveR"}, {19557, "SexyMask1"},
	{19558, "PizzaHat1"}, {19559, "HikerBackpack1"}, {19560, "MeatTray1"}, {19561, "CerealBox1"},
	{19562, "CerealBox2"}, {19563, "JuiceBox1"}, {19564, "JuiceBox2"}, {19565, "IceCreamBarsBox1"},
	{19566, "FishFingersBox1"}, {19567, "IcecreamContainer1"}, {19568, "IcecreamContainer2"}, {19569, "MilkCarton1"},
	{19570, "MilkBottle1"}, {19571, "PizzaBox1"}, {19572, "PisshBox1"}, {19573, "BriquettesBag1"},
	{19574, "Orange1"}, {19575, "Apple1"}, {19576, "Apple2"}, {19577, "Tomato1"},
	{19578, "Banana1"}, {19579, "BreadLoaf1"}, {19580, "Pizza1"}, {19581, "MarcosFryingPan1"},
	{19582, "MarcosSteak1"}, {19583, "MarcosKnife1"}, {19584, "MarcosSaucepan1"}, {19585, "MarcosPan1"},
	{19586, "MarcosSpatula1"}, {19587, "PlasticTray1"}, {19588, "FootBridge1"}, {19589, "RubbishSkipEmpty1"},
	{19590, "WooziesSword1"}, {19591, "WooziesHandFan1"}, {19592, "ShopBasket1"}, {19593, "ZomboTechBuilding1"},
	{19594, "ZomboTechLab1"}, {19595, "LSAppartments1"}, {19596, "LSBeachSide"}, {19597, "LSBeachSideInsides"},
	{19601, "SnowPlow1"}, {19602, "Landmine1"}, {19603, "WaterPlane1"}, {19604, "WaterPlane2"},
	{19605, "EnExMarker4-2"}, {19606, "EnExMarker4-3"}, {19607, "EnExMarker4-4"}, {19608, "WoodenStage1"},
	{19609, "DrumKit1"}, {19610, "Microphone1"}, {19611, "MicrophoneStand1"}, {19612, "GuitarAmp1"},
	{19613, "GuitarAmp2"}, {19614, "GuitarAmp3"}, {19615, "GuitarAmp4"}, {19616, "GuitarAmp5"},
	{19617, "GoldRecord1"}, {19618, "Safe1"}, {19619, "SafeDoor1"}, {19620, "LightBar1"},
	{19621, "OilCan1"}, {19622, "Broom1"}, {19623, "Camera1"}, {19624, "Case1"}, {19625, "Ciggy1"},
	{19626, "Spade1"}, {19627, "Wrench1"}, {19628, "MRoadBend90Banked1"}, {19629, "MRoadBend90Banked2"},
	{19630, "Fish1"}, {19631, "SledgeHammer1"}, {19632, "FireWood1"}, {19633, "Ramp360Degree1"},
	{19634, "Ramp360Degree2"}, {19635, "Ramp360Degree3"}, {19636, "RedApplesCrate1"}, {19637, "GreenApplesCrate1"},
	{19638, "OrangesCrate1"}, {19639, "EmptyCrate1"}, {19640, "EmptyShopShelf1"}, {19641, "FenceSection1"},
	{19642, "TubeSeg10m1"}, {19643, "TubeSeg10m2a"}, {19644, "TubeSeg10m2b"}, {19645, "TubeSeg25m1"},
	{19646, "TubeHalf10m1"}, {19647, "TubeHalf10mJoin1a"}, {19648, "TubeHalf10mJoin1b"}, {19649, "TubeHalf50m1"},
	{19650, "TubeFlat25x25m1"}, {19651, "TubeHalfSpiral1a"}, {19652, "TubeHalfSpiral1b"}, {19653, "TubeHalfSpiral2a"},
	{19654, "TubeHalfSpiral2b"}, {19655, "TubeHalfSpiral3a"}, {19656, "TubeHalfSpiral3b"}, {19657, "TubeHalfSpiral4a"},
	{19658, "TubeHalfSpiral4b"}, {19659, "TubeHalf180Bend1a"}, {19660, "TubeHalf180Bend1b"}, {19661, "TubeHalf90Bend1a"},
	{19662, "TubeHalf90Bend1b"}, {19663, "TubeHalf50mDip1"}, {19664, "TubeHalf50mBump1"}, {19665, "TubeHalfLoop1a"},
	{19666, "TubeHalfLoop1b"}, {19667, "TubeHalfLoop2a"}, {19668, "TubeHalfLoop2b"}, {19669, "TubeHalfBowl1"},
	{19670, "TubeSupport1"}, {19671, "TubeSupport2"}, {19672, "TubeHalfLight1"}, {19673, "TubeHalf5Bend1a"},
	{19674, "TubeHalf5Bend1b"}, {19675, "TubeHalf5Bend2a"}, {19676, "TubeHalf5Bend2b"}, {19677, "TubeHalfTwist1a"},
	{19678, "TubeHalfTwist1b"}, {19679, "TubeHalfTwist2a"}, {19680, "TubeHalfTwist2b"}, {19681, "TubeHalf45Bend1a"},
	{19682, "TubeHalf45Bend1b"}, {19683, "TubeHalf15Bend1a"}, {19684, "TubeHalf15Bend1b"}, {19685, "TubeHalf15Bend2a"},
	{19686, "TubeHalf15Bend2b"}, {19687, "TubeHalf25m1"}, {19688, "TubeHalf45Bend3"}, {19689, "TubeHalf45Bend4"},
	{19690, "TubeHalfNtoMJoin1a"}, {19691, "TubeHalfNtoMJoin1b"}, {19692, "MTubeSeg5m1"}, {19693, "MTubeSeg5m2a"},
	{19694, "MTubeSeg5m2b"}, {19695, "MTubeSeg12_5m1"}, {19696, "MTubeHalf10m1"}, {19697, "MTubeHalf5mJoin1a"},
	{19698, "MTubeHalf5mJoin1b"}, {19699, "MTubeHalf25m1"}, {19700, "MTubeFlt12_5x12_5m1"}, {19701, "MTubeHalfSpiral1a"},
	{19702, "MTubeHalfSpiral1b"}, {19703, "MTubeHalfSpiral2a"}, {19704, "MTubeHalfSpiral2b"}, {19705, "MTubeHalfSpiral3a"},
	{19706, "MTubeHalfSpiral3b"}, {19707, "MTubeHalfSpiral4a"}, {19708, "MTubeHalfSpiral4b"}, {19709, "MTubeHalf180Bend1a"},
	{19710, "MTubeHalf180Bend1b"}, {19711, "MTubeHalf90Bend1a"}, {19712, "MTubeHalf90Bend1b"}, {19713, "MTubeHalf25mDip1"},
	{19714, "MTubeHalf25mBump1"}, {19715, "MTubeHalfBowl1"}, {19716, "MTubeSupport1"}, {19717, "MTubeSupport2"},
	{19718, "MTubeHalfLight1"}, {19719, "MTubeHalf5Bend1a"}, {19720, "MTubeHalf5Bend1b"}, {19721, "MTubeHalf5Bend2a"},
	{19722, "MTubeHalf5Bend2b"}, {19723, "MTubeHalf45Bend1a"}, {19724, "MTubeHalf45Bend1b"}, {19725, "MTubeHalf15Bend1a"},
	{19726, "MTubeHalf15Bend1b"}, {19727, "MTubeHalf15Bend2a"}, {19728, "MTubeHalf15Bend2b"}, {19729, "MTubeHalf45Bend3"},
	{19730, "MTubeHalf45Bend4"}, {19733, "STubeSeg5m1"}, {19734, "STubeSeg5m2a"}, {19735, "STubeSeg5m2b"},
	{19736, "STubeSeg6_25m1"}, {19737, "STubeHalf10m1"}, {19738, "STubeHalf5mJoin1a"}, {19739, "STubeHalf5mJoin1b"},
	{19740, "STubeHalf12_5m1"}, {19741, "STubeFlat6_25m1"}, {19742, "STubeHalfSpiral1a"}, {19743, "STubeHalfSpiral1b"},
	{19744, "STubeHalfSpiral2a"}, {19745, "STubeHalfSpiral2b"}, {19746, "STubeHalfSpiral3a"}, {19747, "STubeHalfSpiral3b"},
	{19748, "STubeHalfSpiral4a"}, {19749, "STubeHalfSpiral4b"}, {19750, "STubeHalf180Bend1a"}, {19751, "STubeHalf180Bend1b"},
	{19752, "STubeHalf90Bend1a"}, {19753, "STubeHalf90Bend1b"}, {19754, "STubeHalf12_5mDip1"}, {19755, "STubeHalf12_5mBump1"},
	{19756, "STubeHalfBowl1"}, {19757, "STubeSupport1"}, {19758, "STubeSupport2"}, {19759, "STubeHalfLight1"},
	{19760, "STubeHalf5Bend1a"}, {19761, "STubeHalf5Bend1b"}, {19762, "STubeHalf5Bend2a"}, {19763, "STubeHalf5Bend2b"},
	{19764, "STubeHalf45Bend1a"}, {19765, "STubeHalf45Bend1b"}, {19766, "STubeHalf15Bend1a"}, {19767, "STubeHalf15Bend1b"},
	{19768, "STubeHalf15Bend2a"}, {19769, "STubeHalf15Bend2b"}, {19770, "STubeHalf45Bend3"}, {19771, "STubeHalf45Bend4"},
	{19773, "GunHolster1"}, {19774, "PoliceBadge2"}, {19775, "PoliceBadge3"}, {19776, "FBIIDCard1"},
	{19777, "FBILogo1"}, {19778, "InsigniaDetective1"}, {19779, "InsigniaDetective2"}, {19780, "InsigniaDetective3"},
	{19781, "InsigniaSergeant1"}, {19782, "InsigniaSergeant2"}, {19783, "InsigniaPOfficer2"}, {19784, "InsigniaPOfficer3"},
	{19785, "InsigniaSeniorLdOff"}, {19786, "LCDTVBig1"}, {19787, "LCDTV1"}, {19788, "15x15RoadCorner1"}, {19789, "Cube1mx1m"},
	{19790, "Cube5mx5m"}, {19791, "Cube10mx10m"}, {19792, "SAMPKeycard1"}, {19793, "FireWoodLog1"}, {19794, "LSPrisonWalls1"},
	{19795, "LSPrisonGateEast"}, {19796, "LSPrisonGateSouth"}, {19797, "PoliceVisorStrobe1"}, {19798, "LSACarPark1"},
	{19799, "CaligulasVaultDoor"}, {19800, "LSBCarPark1"}, {19801, "Balaclava1"},{19802, "GenDoorINT04Static"},
	{19803, "TowTruckLights1"}, {19804, "Padlock1"}, {19805, "Whiteboard1"}, {19806, "Chandelier1"},
	{19807, "Telephone1"}, {19808, "Keyboard1"}, {19809, "MetalTray1"}, {19810, "StaffOnlySign1"},
	{19811, "BurgerBox1"}, {19812, "BeerKeg1"}, {19813, "ElectricalOutlet1"}, {19814, "ElectricalOutlet2"},
	{19815, "ToolBoard1"}, {19816, "OxygenCylinder1"}, {19817, "CarFixerRamp1"}, {19818, "WineGlass1"},
	{19819, "CocktailGlass1"}, {19820, "AlcoholBottle1"}, {19821, "AlcoholBottle2"}, {19822, "AlcoholBottle3"},
	{19823, "AlcoholBottle4"}, {19824, "AlcoholBottle5"}, {19825, "SprunkClock1"}, {19826, "LightSwitch1"},
	{19827, "LightSwitch2"}, {19828, "LightSwitch3Off"}, {19829, "LightSwitch3On"}, {19830, "Blender1"},
	{19831, "Barbeque1"}, {19832, "AmmoBox1"}, {19833, "Cow1"}, {19834, "PoliceLineTape1"},
	{19835, "CoffeeCup1"}, {19836, "BloodPool1"}, {19837, "GrassClump1"}, {19838, "GrassClump2"},
	{19839, "GrassClump3"}, {19840, "WaterFall1"}, {19841, "WaterFall2"}, {19842, "WaterFallWater1"},
	{19843, "MetalPanel1"}, {19844, "MetalPanel2"}, {19845, "MetalPanel3"}, {19846, "MetalPanel4"},
	{19847, "LegHam1"}, {19848, "CargoBobPlatform1"}, {19849, "MIHouse1Land"}, {19850, "MIHouse1Land2"},
	{19851, "MIHouse1Land3"}, {19852, "MIHouse1Land4"}, {19853, "MIHouse1Land5"}, {19854, "MIHouse1Outside"},
	{19855, "MIHouse1Inside"}, {19856, "MIHouse1IntWalls1"}, {19857, "MIHouse1Door1"}, {19858, "MIHouse1Door2"},
	{19859, "MIHouse1Door3"}, {19860, "MIHouse1Door4"}, {19861, "MIHouse1GarageDoor1"}, {19862, "MIHouse1GarageDoor2"},
	{19863, "MIHouse1GarageDoor3"}, {19864, "MIHouse1GarageDoor4"}, {19865, "MIFenceWood1"}, {19866, "MIFenceBlocks1"},
	{19867, "MailBox1"}, {19868, "MeshFence1"}, {19869, "MeshFence2"}, {19870, "MetalGate1"}, {19871, "CordonStand1"},
	{19872, "CarFixerRamp2"}, {19873, "ToiletPaperRoll1"}, {19874, "SoapBar1"}, {19875, "CRDoor01New"},
	{19876, "DillimoreGasExt1"}, {19877, "DillimoreGasInt1"}, {19878, "Skateboard1"}, {19879, "WellsFargoBuild1"},
	{19880, "WellsFargoGrgDoor1"}, {19881, "KylieBarnFixed1"}, {19882, "MarcosSteak2"}, {19883, "BreadSlice1"},
	{19884, "WSBend45Deg2"}, {19885, "WSStraight2"}, {19886, "WSStraight3"}, {19887, "WSStart1"},
	{19888, "WSBend45Deg3"}, {19889, "WSBend45Deg4"}, {19890, "WSStraight4"}, {19891, "WSTubeJoiner1"},
	{19892, "WSRoadJoiner1"}, {19893, "LaptopSAMP1"}, {19894, "LaptopSAMP2"}, {19896, "CigarettePack1"},
	{19897, "CigarettePack2"}, {19898, "OilFloorStain1"}, {19899, "ToolCabinet1"}, {19900, "ToolCabinet2"},
	{19903, "MechanicComputer1"}, {19904, "ConstructionVest1"}, {19905, "A51Building1"}, {19906, "A51Building1GrgDoor"},
	{19907, "A51Building2"}, {19908, "A51Building2GrgDoor"}, {19909, "A51Building3"}, {19910, "A51Building3GrgDoor"},
	{19912, "SAMPMetalGate1"}, {19913, "SAMPBigFence1"}, {19914, "CutsceneBat1"}, {19915, "CutsceneCooker1"},
	{19916, "CutsceneFridge1"}, {19917, "CutsceneEngine1"}, {19918, "CutsceneBox1"}, {19919, "CutscenePerch1"},
	{19920, "CutsceneRemote1"}, {19921, "CutsceneToolBox1"}, {19922, "MKTable1"}, {19923, "MKIslandCooker1"},
	{19924, "MKExtractionHood1"}, {19925, "MKWorkTop1"}, {19926, "MKWorkTop2"}, {19927, "MKWorkTop3"},
	{19928, "MKWorkTop4"}, {19929, "MKWorkTop5"}, {19930, "MKWorkTop6"}, {19931, "MKWorkTop7"},
	{19932, "MKWallOvenCabinet1"}, {19933, "MKWallOven1"}, {19934, "MKCupboard1"}, {19935, "MKCupboard2"},
	{19936, "MKCupboard3"}, {19937, "MKCupboard4"}, {19938, "MKShelf1"}, {19939, "MKShelf2"},
	{19940, "MKShelf3"}, {19941, "GoldBar1"}, {19942, "PoliceRadio1"}, {19943, "StonePillar1"},
	{19944, "BodyBag1"}, {19945, "CPSize16Red"}, {19946, "CPSize16Green"}, {19947, "CPSize16Blue"},
	{19948, "SAMPRoadSign1"}, {19949, "SAMPRoadSign2"}, {19950, "SAMPRoadSign3"}, {19951, "SAMPRoadSign4"},
	{19952, "SAMPRoadSign5"}, {19953, "SAMPRoadSign6"}, {19954, "SAMPRoadSign7"}, {19955, "SAMPRoadSign8"},
	{19956, "SAMPRoadSign9"}, {19957, "SAMPRoadSign10"}, {19958, "SAMPRoadSign11"}, {19959, "SAMPRoadSign12"},
	{19960, "SAMPRoadSign13"}, {19961, "SAMPRoadSign14"}, {19962, "SAMPRoadSign15"}, {19963, "SAMPRoadSign16"},
	{19964, "SAMPRoadSign17"}, {19965, "SAMPRoadSign18"}, {19966, "SAMPRoadSign19"}, {19967, "SAMPRoadSign20"},
	{19968, "SAMPRoadSign21"}, {19969, "SAMPRoadSign22"}, {19970, "SAMPRoadSign23"}, {19971, "SAMPRoadSign24"},
	{19972, "SAMPRoadSign25"}, {19973, "SAMPRoadSign26"}, {19974, "SAMPRoadSign27"}, {19975, "SAMPRoadSign28"},
	{19976, "SAMPRoadSign29"}, {19977, "SAMPRoadSign30"}, {19978, "SAMPRoadSign31"}, {19979, "SAMPRoadSign32"},
	{19980, "SAMPRoadSign33"}, {19981, "SAMPRoadSign34"}, {19982, "SAMPRoadSign35"}, {19983, "SAMPRoadSign36"},
	{19984, "SAMPRoadSign37"}, {19985, "SAMPRoadSign38"}, {19986, "SAMPRoadSign39"}, {19987, "SAMPRoadSign40"},
	{19988, "SAMPRoadSign41"}, {19989, "SAMPRoadSign42"}, {19990, "SAMPRoadSign43"}, {19991, "SAMPRoadSign44"},
	{19992, "SAMPRoadSign45"}, {19993, "CutsceneBowl1"}, {19994, "CutsceneChair1"}, {19995, "CutsceneAmmoClip1"},
	{19996, "CutsceneFoldChair1"}, {19997, "CutsceneGrgTable1"}, {19998, "CutsceneLighterFl"}, {19999, "CutsceneChair2"}
},

TexturesArray[][txdEnum] =
{
	{0, "INVALID", "INVALID"}, {10101, "2notherbuildsfe", "Bow_Abpave_Gen"},
	{10101, "2notherbuildsfe", "Bow_church_grass_alt"}, {10101, "2notherbuildsfe", "ferry_build14"},
	{10101, "2notherbuildsfe", "flatdoor01_law"}, {10101, "2notherbuildsfe", "gz_vicdoor1"},
	{10101, "2notherbuildsfe", "gz_vicdoor2"}, {10101, "2notherbuildsfe", "sl_vicbrikwall01"},
	{10101, "2notherbuildsfe", "sl_vicrfedge"}, {10101, "2notherbuildsfe", "sl_vicwall01"},
	{10101, "2notherbuildsfe", "sl_vicwall02"}, {10101, "2notherbuildsfe", "sl_vicwin01"},
	{10101, "2notherbuildsfe", "sl_vicwin02"}, {10101, "2notherbuildsfe", "ws_rooftarmac1"},
	{14668, "711c", "bwtilebroth"}, {14668, "711c", "CJ_7_11_TILE"}, {14668, "711c", "CJ_7_11_win"},
	{14668, "711c", "CJ_CHIP_M2"}, {14668, "711c", "cj_white_wall2"}, {14668, "711c", "forumstand1_LAe"},
	{14668, "711c", "gun_ceiling1128"}, {14668, "711c", "gun_ceiling3"}, {14668, "711c", "sec_camera1"},
	{9514, "711_sfw", "beachwall_law"}, {9514, "711_sfw", "brick"}, {9514, "711_sfw", "dt_carpark_line_texture"},
	{9514, "711_sfw", "mono1_sfe"}, {9514, "711_sfw", "mono2_sfe"}, {9514, "711_sfw", "pcut_bot_law"},
	{9514, "711_sfw", "rebrckwall_128"}, {9514, "711_sfw", "shingles2"}, {9514, "711_sfw", "staddoors1"},
	{9514, "711_sfw", "supasave_sfw"}, {9514, "711_sfw", "supasave_wintemp"}, {9514, "711_sfw", "sw_sheddoor2"},
	{9514, "711_sfw", "ws_carpark2"}, {1560, "7_11_door", "CJ_CHROME2"}, {1560, "7_11_door", "cj_sheetmetal2"},
	{14690, "7_11_posters", "CJ_7_11_POST"}, {14690, "7_11_posters", "CJ_7_11_POST2"}, {14690, "7_11_posters", "cokopops_1"},
	{14690, "7_11_posters", "munkyJuice_2"}, {13659, "8bars", "AH_gbarrier"}, {13659, "8bars", "barrier"},
	{13659, "8bars", "bridgeconc"}, {13659, "8bars", "Upt_Fence_Mesh"}, {13628, "8stad", "stadroof"},
	{16640, "a51", "a51_blastdoor"}, {16640, "a51", "a51_boffstuff1"}, {16640, "a51", "a51_boffstuff3"},
	{16640, "a51", "a51_cardreader"}, {16640, "a51", "a51_floorpanel1"}, {16640, "a51", "a51_glass"},
	{16640, "a51", "a51_handrail"}, {16640, "a51", "a51_intdoor"}, {16640, "a51", "a51_metal1"},
	{16640, "a51", "a51_monitors"}, {16640, "a51", "a51_panel2"}, {16640, "a51", "a51_panels1"},
	{16640, "a51", "a51_pipeend"}, {16640, "a51", "a51_strips1"}, {16640, "a51", "a51_vent1"},
	{16640, "a51", "a51_wall1"}, {16640, "a51", "a51_weedoors"}, {16640, "a51", "airvent_gz"},
	{16640, "a51", "Alumox64"}, {16640, "a51", "banding3c_64HV"}, {16640, "a51", "banding3_64HV"},
	{16640, "a51", "banding9_64HV"}, {16640, "a51", "bluemetal"}, {16640, "a51", "bonyrd_skin2"},
	{16640, "a51", "carparkwall12_256"}, {16640, "a51", "concretegroundl1_256"}, {16640, "a51", "concretemanky"},
	{16640, "a51", "concretewall22_256"}, {16640, "a51", "concreteyellow256 copy"}, {16640, "a51", "dam_gencon"},
	{16640, "a51", "des_factower"}, {16640, "a51", "des_tunnellight"}, {16640, "a51", "Metal3_128"},
	{16640, "a51", "Metalox64"}, {16640, "a51", "metpat64"}, {16640, "a51", "pavegrey128"}, {16640, "a51", "plaintarmac1"},
	{16640, "a51", "redmetal"}, {16640, "a51", "scratchedmetal"}, {16640, "a51", "sl_metalwalk"},
	{16640, "a51", "sm_conc_hatch"}, {16640, "a51", "stormdrain7"}, {16640, "a51", "sw_olddrum1"},
	{16640, "a51", "vent01_64"}, {16640, "a51", "ventb128"}, {16640, "a51", "ventb64"},
	{16640, "a51", "vgs_shopwall01_128"}, {16640, "a51", "wallgreyred128"}, {16640, "a51", "ws_carparkwall2"},
	{16640, "a51", "ws_castironwalk"}, {16640, "a51", "ws_metalpanel1"}, {16640, "a51", "ws_stationfloor"},
	{3095, "a51jdrx", "sam_camo"}, {16646, "a51_alpha", "a51_sign1"}, {16646, "a51_alpha", "des_rails1"},
	{16646, "a51_alpha", "stanwind_nt"}, {16646, "a51_alpha", "waterdirty256"}, {16646, "a51_alpha", "ws_stationgirder1"},
	{2917, "a51_crane", "banding5_64HV"}, {2917, "a51_crane", "dish_base1"}, {2917, "a51_crane", "dish_base2"},
	{2917, "a51_crane", "girder2_grey_64HV"}, {2917, "a51_crane", "quarry_conv_belt_struct"},
	{16644, "a51_detailstuff", "a51_map"}, {16644, "a51_detailstuff", "a51_radardisp"},
	{16644, "a51_detailstuff", "a51_radarscan_m"}, {16644, "a51_detailstuff", "a51_secdesk"},
	{16644, "a51_detailstuff", "aluminiumbands256"}, {16644, "a51_detailstuff", "Gen_Keyboard"},
	{16644, "a51_detailstuff", "Gen_Monitor"}, {16644, "a51_detailstuff", "roucghstonebrtb"},
	{16644, "a51_detailstuff", "steel256128"}, {16093, "a51_ext", "a51_fencsign"}, {16093, "a51_ext", "alleydoor2"},
	{16093, "a51_ext", "alleydoor9b"}, {16093, "a51_ext", "BLOCK"}, {16093, "a51_ext", "BLOCK2"},
	{16093, "a51_ext", "block2_high"}, {16093, "a51_ext", "cabin5"}, {16093, "a51_ext", "corugwall_sandy"},
	{16093, "a51_ext", "des_backdoor1"}, {16093, "a51_ext", "des_dirt1"}, {16093, "a51_ext", "des_dirttrack1"},
	{16093, "a51_ext", "des_dirttrack1r"}, {16093, "a51_ext", "des_elepylon"}, {16093, "a51_ext", "stormdrain2_nt"},
	{16093, "a51_ext", "Tar_1line256HV"}, {16093, "a51_ext", "wilswin01_la"}, {16093, "a51_ext", "ws_controltowerwin1"},
	{16093, "a51_ext", "ws_corr_2_plain"}, {16093, "a51_ext", "ws_trans_concr"}, {16093, "a51_ext", "ws_whitewall2_bottom"},
	{16093, "a51_ext", "ws_whitewall2_top"}, {2951, "a51_labdoor", "washapartwall1_256"}, {16639, "a51_labs", "a51_labwall1"},
	{16639, "a51_labs", "dam_terazzo"}, {16639, "a51_labs", "studiowall4_law"}, {16639, "a51_labs", "ws_trainstationwin1"},
	{2887, "a51_spotlight", "dts_spotlight"}, {2887, "a51_spotlight", "stormdrain5_nt"}, {16322, "a51_stores", "dam_gencrane"},
	{16322, "a51_stores", "des_ghotwood1"}, {16322, "a51_stores", "dish_panel_a"}, {16322, "a51_stores", "dish_roundbit_a"},
	{16322, "a51_stores", "fence_64"}, {16322, "a51_stores", "Gen_Freight"}, {16322, "a51_stores", "hangingwires1"},
	{16322, "a51_stores", "metalic128"}, {16322, "a51_stores", "metpat64chev_128"}, {16322, "a51_stores", "steel64"},
	{16322, "a51_stores", "wtmetal3"}, {16293, "a51_undergrnd", "Was_scrpyd_door_in_hngr"}, {2567, "ab", "ab_metaledge"},
	{2567, "ab", "ab_metalholes"}, {2567, "ab", "ab_plasicwrapa"}, {2567, "ab", "Box_Texturepage"},
	{2567, "ab", "chipboard_256"}, {14615, "abatoir_daylite", "ab_volumelight"}, {2589, "ab_ab", "ab_carcass"},
	{2589, "ab_ab", "ab_sheetSteel"}, {14612, "ab_abattoir_box", "ab_airconunit"},
	{14612, "ab_abattoir_box", "ab_bloodfloor"}, {14612, "ab_abattoir_box", "ab_boxStack2"},
	{14612, "ab_abattoir_box", "ab_walldamage"}, {14612, "ab_abattoir_box", "pipes_csite_256"},
	{14584, "ab_abbatoir01", "ab_ceiling1"}, {14584, "ab_abbatoir01", "ab_concFloor"},
	{14584, "ab_abbatoir01", "ab_drainage"}, {14584, "ab_abbatoir01", "ab_tiles"}, {14584, "ab_abbatoir01", "ab_tileWall"},
	{14584, "ab_abbatoir01", "ab_vent1"}, {14584, "ab_abbatoir01", "ab_wall1b"}, {14584, "ab_abbatoir01", "carpet5kb"},
	{14584, "ab_abbatoir01", "cj_sheetmetal"}, {14584, "ab_abbatoir01", "striplight1"},
	{11150, "ab_acc_control", "ab_BoltPanel2"}, {11150, "ab_acc_control", "ab_dialsSwitches"},
	{11150, "ab_acc_control", "ws_shipmetal5"}, {14628, "ab_caligulasfront", "sign_Caligulas2"},
	{14548, "ab_cargo_int", "747_cage"}, {14548, "ab_cargo_int", "747_freight1"}, {14548, "ab_cargo_int", "ab_planeBoby"},
	{14548, "ab_cargo_int", "ab_planeWing"}, {14548, "ab_cargo_int", "Alumplat64"}, {14548, "ab_cargo_int", "cargo_ceil2"},
	{14548, "ab_cargo_int", "cargo_floor1"}, {14548, "ab_cargo_int", "cargo_floor2"}, {14548, "ab_cargo_int", "cargo_gir1"},
	{14548, "ab_cargo_int", "cargo_gir2"}, {14548, "ab_cargo_int", "cargo_gir3"}, {14548, "ab_cargo_int", "cargo_pipes"},
	{14548, "ab_cargo_int", "cargo_top1"}, {14548, "ab_cargo_int", "cargo_wall2"}, {14548, "ab_cargo_int", "metal_frame"},
	{14548, "ab_cargo_int", "yellowmetal"}, {14629, "ab_chande", "ab_frostLiteGlass"}, {14629, "ab_chande", "ab_gemBead"},
	{14629, "ab_chande", "ab_goldpipe"}, {2755, "ab_dojowall", "ab_trellis"}, {2755, "ab_dojowall", "mp_apt1_roomfloor"},
	{1564, "ab_jetlite", "bathwin01_int"}, {1564, "ab_jetlite", "CJ_BULLETBRASS"}, {1562, "ab_jetseat", "mp_jet_seat"},
	{14583, "ab_mafcaslaund", "crate_side"}, {14583, "ab_mafcaslaund", "hospital_trolley"},
	{14581, "ab_mafiasuitea", "ab_blind"}, {14581, "ab_mafiasuitea", "ab_books"}, {14581, "ab_mafiasuitea", "ab_CeilRose"},
	{14581, "ab_mafiasuitea", "ab_picFrame"}, {14581, "ab_mafiasuitea", "ab_pic_bridge"}, {14581, "ab_mafiasuitea", "ab_walnut"},
	{14581, "ab_mafiasuitea", "ab_walnutLite"}, {14581, "ab_mafiasuitea", "ab_wood01"}, {14581, "ab_mafiasuitea", "barbersmir1"},
	{14581, "ab_mafiasuitea", "carp01S"}, {14581, "ab_mafiasuitea", "ceilingLite"}, {14581, "ab_mafiasuitea", "cof_wood2"},
	{14581, "ab_mafiasuitea", "goldDecal"}, {14581, "ab_mafiasuitea", "goldPillar"}, {14581, "ab_mafiasuitea", "kit_door1"},
	{14581, "ab_mafiasuitea", "mp_burn_ceiling"}, {14581, "ab_mafiasuitea", "wallpapkb2"}, {14581, "ab_mafiasuitea", "walp45S"},
	{14581, "ab_mafiasuitea", "wood02S"}, {14627, "ab_optilite", "ab_optilite"}, {2591, "ab_partition1", "ab_fabricCheck2"},
	{14616, "ab_pillartemp", "ab_Pillar"}, {14616, "ab_pillartemp", "ab_PillarTop"},
	{18062, "ab_sfammuitems01", "ammo_gunboard"}, {18062, "ab_sfammuitems01", "ammu_ammo"},
	{18062, "ab_sfammuitems01", "ammu_clothes"}, {18062, "ab_sfammuitems01", "ammu_gunboard2"},
	{18062, "ab_sfammuitems01", "ammu_gunboard3"}, {18062, "ab_sfammuitems01", "ammu_gunboard4"},
	{18062, "ab_sfammuitems01", "gun_guns3a"}, {18062, "ab_sfammuitems01", "gun_guns4a"}, {18063, "ab_sfammuitems02", "1_to_8"},
	{18063, "ab_sfammuitems02", "gun_sign_txta"}, {18063, "ab_sfammuitems02", "gun_xtra1"}, {18063, "ab_sfammuitems02", "gun_xtra2"},
	{18065, "ab_sfammumain", "ab_stripped_floor"}, {18065, "ab_sfammumain", "ab_wallpaper02"}, {18065, "ab_sfammumain", "breezewall"},
	{18065, "ab_sfammumain", "breezewall5"}, {18065, "ab_sfammumain", "carp20S"}, {18065, "ab_sfammumain", "gun_ceiling1"},
	{18065, "ab_sfammumain", "gun_door1"}, {18065, "ab_sfammumain", "gun_floor1"}, {18065, "ab_sfammumain", "gun_floor2"},
	{18065, "ab_sfammumain", "mp_gun_wall"}, {18065, "ab_sfammumain", "pavea256"}, {18065, "ab_sfammumain", "plate1"},
	{18065, "ab_sfammumain", "plywood_gym"}, {18065, "ab_sfammumain", "shelf_glas"}, {18064, "ab_sfammuunits", "gun_blackbox"},
	{18064, "ab_sfammuunits", "gun_divider2"}, {18064, "ab_sfammuunits", "gun_targeta"}, {18064, "ab_sfammuunits", "gun_targetb"},
	{18064, "ab_sfammuunits", "gun_targetc"}, {18064, "ab_sfammuunits", "rubber_mat"}, {14786, "ab_sfgymbeams", "gym_floor5"},
	{14786, "ab_sfgymbeams", "knot_wood128"}, {14788, "ab_sfgymbits01", "ab_rollmat01"}, {14788, "ab_sfgymbits01", "lockers"},
	{14787, "ab_sfgymbits02", "ab_gymMark01"}, {14787, "ab_sfgymbits02", "ab_rollmat02"}, {14787, "ab_sfgymbits02", "sign_cobra1"},
	{14787, "ab_sfgymbits02", "sign_cobra2"}, {14789, "ab_sfgymmain", "ab_panelWall1"}, {14789, "ab_sfgymmain", "ab_panelWall2"},
	{14789, "ab_sfgymmain", "ab_wood02"}, {14789, "ab_sfgymmain", "CBchallenge_256"}, {14789, "ab_sfgymmain", "gun_ceiling2_128"},
	{14789, "ab_sfgymmain", "gymwinodow3"}, {14789, "ab_sfgymmain", "gym_floor6"}, {14652, "ab_trukstpa", "barberswindo"},
	{14652, "ab_trukstpa", "bbar_door1"}, {14652, "ab_trukstpa", "bbar_wall1"}, {14652, "ab_trukstpa", "bbar_wall4"},
	{14652, "ab_trukstpa", "CJ_CORD"}, {14652, "ab_trukstpa", "CJ_WOOD1(EDGE)"}, {14652, "ab_trukstpa", "CJ_WOOD6"},
	{14652, "ab_trukstpa", "diner_tbl3"}, {14652, "ab_trukstpa", "mp_diner_wood"}, {14652, "ab_trukstpa", "wood01"},
	{14653, "ab_trukstpb", "diner_seat3"}, {14653, "ab_trukstpb", "ketchup"}, {14653, "ab_trukstpb", "met_supp"},
	{14653, "ab_trukstpb", "mustard"}, {14653, "ab_trukstpb", "napkin_disp"}, {14650, "ab_trukstpc", "bbar_till1"},
	{14650, "ab_trukstpc", "bras_base"}, {14650, "ab_trukstpc", "Gen_Sacki"}, {14650, "ab_trukstpc", "mp_CJ_WOOD5"},
	{14650, "ab_trukstpc", "sa_wood08_128"}, {14651, "ab_trukstpd", "bbar_poollamp1"}, {14651, "ab_trukstpd", "Bow_bar_flooring"},
	{14651, "ab_trukstpd", "Bow_bar_metal_cabinet"}, {14651, "ab_trukstpd", "Bow_bar_pool_table"},
	{14651, "ab_trukstpd", "Bow_bar_pool_tablebase"}, {14651, "ab_trukstpd", "Bow_bar_tabletop_wood"},
	{14654, "ab_trukstpe", "bbar_plates2"}, {14654, "ab_trukstpe", "bbar_signs1"}, {14654, "ab_trukstpe", "bbar_sports1"},
	{14654, "ab_trukstpe", "bbar_stuff1"}, {14654, "ab_trukstpe", "bbar_stuff3"}, {14654, "ab_trukstpe", "bbar_stuff9"},
	{2592, "ab_veg", "ab_slotBase"}, {2592, "ab_veg", "tubelite"}, {14486, "ab_vegasgymbits01", "bbar_wall2"},
	{14794, "ab_vegasgymmain", "barrel_64HV"}, {14794, "ab_vegasgymmain", "bbar_wall3"},
	{14794, "ab_vegasgymmain", "dt_compound_fanvent"}, {14794, "ab_vegasgymmain", "gym_pipes"},
	{14794, "ab_vegasgymmain", "Gym_rope"}, {14794, "ab_vegasgymmain", "mp_CJ_SHEET2"},
	{14794, "ab_vegasgymmain", "studiowall2_law"}, {14534, "ab_wooziea", "ab_fabricRed"}, {14534, "ab_wooziea", "ab_redwall"},
	{14534, "ab_wooziea", "ab_tileDiamond"}, {14534, "ab_wooziea", "ab_wuzibet"}, {14534, "ab_wooziea", "ab_wuziMirror"},
	{14534, "ab_wooziea", "ab_wuziwillow"}, {14534, "ab_wooziea", "carp02S"}, {14534, "ab_wooziea", "CJ_WOODDOOR5"},
	{14534, "ab_wooziea", "dt_office_roof"}, {14534, "ab_wooziea", "light_full"}, {14534, "ab_wooziea", "mcstraps_window"},
	{14534, "ab_wooziea", "walp72S"}, {14544, "ab_woozieb", "ap_screens1"}, {14544, "ab_woozieb", "golf_secgates1"},
	{14544, "ab_woozieb", "otb_mach1"}, {14544, "ab_woozieb", "otb_numbers"}, {14544, "ab_woozieb", "otb_signs"},
	{14544, "ab_woozieb", "otb_wind"}, {14535, "ab_wooziec", "ab_butfly_sword"}, {14535, "ab_wooziec", "ab_wallfan"},
	{14535, "ab_wooziec", "ab_wallpaper01"}, {14535, "ab_wooziec", "ab_woodborder"}, {14535, "ab_wooziec", "sink1"},
	{14535, "ab_wooziec", "wall4"}, {14554, "ab_wooziesshad", "shadow_wuzi_blak"}, {14538, "ab_xit_box", "sw_door07"},
	{1569, "adam_v_doort", "ws_guardhousedoor"}, {3061, "addoorx", "lasjmdoorgud"}, {3080, "adjumpx", "gen_chrome"},
	{3080, "adjumpx", "jumpit"}, {3080, "adjumpx", "jumptop1_64"}, {3080, "adjumpx", "planks64"},
	{3080, "adjumpx", "rustyboltpanel"}, {3028, "adswrdx", "gun_katana"}, {3076, "ad_rmx", "ammo_tube"},
	{3076, "ad_rmx", "ws_cargoshipdoor"}, {10839, "aircarpkbarier_sfse", "banding8_64HV"},
	{10839, "aircarpkbarier_sfse", "bareboards_64a"}, {10839, "aircarpkbarier_sfse", "chevron_red_64HVa"},
	{10839, "aircarpkbarier_sfse", "cratetop128"}, {10839, "aircarpkbarier_sfse", "glass_64a"},
	{10839, "aircarpkbarier_sfse", "redband_64Ha"}, {915, "airconext", "CJ_plating"}, {915, "airconext", "cj_plating2"},
	{915, "airconext", "cj_plating3"}, {915, "airconext", "cj_sheet2"}, {10806, "airfence_sfse", "ws_griddyfence"},
	{10806, "airfence_sfse", "ws_leccyfncesign"}, {10806, "airfence_sfse", "ws_leccyfncetop"},
	{10806, "airfence_sfse", "ws_oldpainted"}, {4835, "airoads_las", "aarprt8LAS"}, {4835, "airoads_las", "aarprt9LAS"},
	{4835, "airoads_las", "concretenewb256"}, {4835, "airoads_las", "dt_road"}, {4835, "airoads_las", "easykerb"},
	{4835, "airoads_las", "grassdry_128HV"}, {4835, "airoads_las", "kbpavement_test"}, {4835, "airoads_las", "sjmhoodlawn41"},
	{4835, "airoads_las", "sjmhoodlawn42"}, {4835, "airoads_las", "snpedtest1"}, {4835, "airoads_las", "tardor2"},
	{4835, "airoads_las", "weewall256"}, {4835, "airoads_las", "ws_carparkwall1"}, {10763, "airport1_sfse", "airportwind03"},
	{10763, "airport1_sfse", "ws_airportdoors1"}, {10763, "airport1_sfse", "ws_lightlens"},
	{10763, "airport1_sfse", "ws_rollerdoor_fire"}, {10763, "airport1_sfse", "ws_yelloscaff"},
	{10763, "airport1_sfse", "yellowscum64"}, {4830, "airport2", "aarprt3LAS"}, {4830, "airport2", "aarprt5LAS"},
	{4830, "airport2", "aarprt6LAS"}, {4830, "airport2", "bathtile01_int"}, {4830, "airport2", "bevflower2"},
	{4830, "airport2", "brnstucco1"}, {4830, "airport2", "kbplanter_plants1"}, {4830, "airport2", "LASLACMA93"},
	{4830, "airport2", "LASLACMA96"}, {4830, "airport2", "sanairtex1"}, {4830, "airport2", "sanairtex2"},
	{4830, "airport2", "sanairtex3"}, {4830, "airport2", "sanpedock5"}, {4830, "airport2", "scaff2flas"},
	{4830, "airport2", "sjmpostbar3"}, {4830, "airport2", "sm_Agave_2"}, {4830, "airport2", "sw_door12"},
	{4830, "airport2", "sw_shedwall02"}, {4830, "airport2", "tardor9"}, {4830, "airport2", "ws_officewins_1"},
	{4828, "airport3_las", "aarprt1LAS"}, {4828, "airport3_las", "alax1_las"}, {4828, "airport3_las", "alax3_las"},
	{4828, "airport3_las", "alax5_las"}, {4828, "airport3_las", "alax6_las"}, {4828, "airport3_las", "brwall_128"},
	{4828, "airport3_las", "gallery01_law"}, {4828, "airport3_las", "gnhotelwall02_128"}, {4828, "airport3_las", "mirrwind1_LAn"},
	{4828, "airport3_las", "sanpedock7"}, {4828, "airport3_las", "sanpedock8"}, {10811, "airportbits_sfse", "ap_fuel2"},
	{10811, "airportbits_sfse", "ap_fuel3"}, {10811, "airportbits_sfse", "ap_fuel4"}, {10811, "airportbits_sfse", "brckwhtwash128"},
	{10778, "airportcpark_sfse", "elecbox2"}, {10778, "airportcpark_sfse", "helipad_bits"},
	{10778, "airportcpark_sfse", "vgsclubdoor02_128"}, {10778, "airportcpark_sfse", "ws_aircarparksign1"},
	{10778, "airportcpark_sfse", "ws_boothpanel"}, {10778, "airportcpark_sfse", "ws_carpark1"},
	{10778, "airportcpark_sfse", "ws_carpark3"}, {10778, "airportcpark_sfse", "ws_crashbarrier"},
	{10778, "airportcpark_sfse", "ws_crashbarrier2"}, {10778, "airportcpark_sfse", "ws_doubledoor1"},
	{10778, "airportcpark_sfse", "ws_fireexit"}, {10778, "airportcpark_sfse", "ws_fluorescent1"},
	{10778, "airportcpark_sfse", "ws_fluorescent2"}, {10778, "airportcpark_sfse", "ws_roadarrow1"},
	{4992, "airportdetail", "aarprt91LAS"}, {4992, "airportdetail", "aarprt92LAS"}, {4992, "airportdetail", "aarprt93LAS"},
	{4992, "airportdetail", "ads003 copy"}, {4992, "airportdetail", "bevflower1"}, {4992, "airportdetail", "diderSachs01"},
	{4992, "airportdetail", "hedge2"}, {4992, "airportdetail", "kb_ivy_256"}, {4992, "airportdetail", "prolaps01"},
	{4992, "airportdetail", "sm_Agave_1"}, {10765, "airportgnd_sfse", "ap_metal1"}, {10765, "airportgnd_sfse", "ap_runwaysigns"},
	{10765, "airportgnd_sfse", "ap_runwaysigns2"}, {10765, "airportgnd_sfse", "black64"}, {10765, "airportgnd_sfse", "bobo_3"},
	{10765, "airportgnd_sfse", "coasty_bit3_sfe"}, {10765, "airportgnd_sfse", "crackedgroundb"},
	{10765, "airportgnd_sfse", "desgreengrass"}, {10765, "airportgnd_sfse", "gridchev_64HV"},
	{10765, "airportgnd_sfse", "sea_wall_temp"}, {10765, "airportgnd_sfse", "sf_pave2"}, {10765, "airportgnd_sfse", "white"},
	{10765, "airportgnd_sfse", "ws_airpt_concrete"}, {10765, "airportgnd_sfse", "ws_bridgepavement2"},
	{10765, "airportgnd_sfse", "ws_oldpainted2rusty"}, {10765, "airportgnd_sfse", "ws_runwaytarmac"},
	{10765, "airportgnd_sfse", "ws_skidmarks"}, {10765, "airportgnd_sfse", "ws_whiteplaster_btm"},
	{10765, "airportgnd_sfse", "ws_whiteplaster_top"}, {10765, "airportgnd_sfse", "ws_whitestripe"},
	{10765, "airportgnd_sfse", "ws_yellowline"}, {3440, "airportpillar", "carfx1"}, {3440, "airportpillar", "metalic_64"},
	{10755, "airportrminl_sfse", "bumptile"}, {10755, "airportrminl_sfse", "mirrwind4_LAn"},
	{10755, "airportrminl_sfse", "ws_airportconc1"}, {10755, "airportrminl_sfse", "ws_airportwall1"},
	{10755, "airportrminl_sfse", "ws_airportwall2"}, {10755, "airportrminl_sfse", "ws_airportwin2"},
	{10755, "airportrminl_sfse", "ws_airportwin3"}, {10755, "airportrminl_sfse", "ws_dom_departures"},
	{10755, "airportrminl_sfse", "ws_rotten_concrete1"}, {10756, "airportroads_sfse", "dt_road_stoplinea"},
	{10756, "airportroads_sfse", "Heliconcrete"}, {10756, "airportroads_sfse", "sf_junction5"},
	{10756, "airportroads_sfse", "sf_pave6"}, {10756, "airportroads_sfse", "sf_road5"},
	{10756, "airportroads_sfse", "stones256128"}, {10756, "airportroads_sfse", "ws_airbigsign2"},
	{10756, "airportroads_sfse", "ws_white_wall1"}, {4829, "airport_las", "Bow_Loadingbay_Door"},
	{4829, "airport_las", "Bow_Warehousewall"}, {4829, "airport_las", "fancy_slab128"}, {4829, "airport_las", "fencekb_64h"},
	{4829, "airport_las", "Grass_128HV"}, {4829, "airport_las", "LASLACMA6"}, {4829, "airport_las", "liftdoorsac256"},
	{4829, "airport_las", "sjmlahus28"}, {4829, "airport_las", "yellow"}, {10762, "airport_sfse", "ivy4new"},
	{4833, "airprtrunway_las", "asandockw"}, {4833, "airprtrunway_las", "bobo_2"},
	{4833, "airprtrunway_las", "cos_hiwaymid_256"}, {4833, "airprtrunway_las", "desbarlas"},
	{4833, "airprtrunway_las", "dockwall1"}, {4833, "airprtrunway_las", "Gen_Meshfencing"},
	{4833, "airprtrunway_las", "greyground256"}, {4833, "airprtrunway_las", "homies_1"},
	{4833, "airprtrunway_las", "lasjmfence1"}, {4833, "airprtrunway_las", "Mannblok2_LAn"},
	{4833, "airprtrunway_las", "policeha02black_128"}, {4833, "airprtrunway_las", "tuntest1las"},
	{4833, "airprtrunway_las", "ws_bluelino"}, {2772, "airp_prop", "cj_AIRP_DIRECT"}, {2772, "airp_prop", "CJ_AIRP_S_1"},
	{2772, "airp_prop", "CJ_AIRP_S_2"}, {2772, "airp_prop", "CJ_AIR_1"}, {2772, "airp_prop", "CJ_BANDEDMETAL"},
	{2772, "airp_prop", "cj_chromepipe"}, {2772, "airp_prop", "CJ_GALVANISED"}, {2772, "airp_prop", "CJ_red_COUNTER"},
	{2772, "airp_prop", "cj_TILL2"}, {10837, "airroadsigns_sfse", "CJ_LAMPPOST1"},
	{10837, "airroadsigns_sfse", "ws_airbigsign1"}, {10838, "airwelcomesign_sfse", "bbback"},
	{10838, "airwelcomesign_sfse", "sl_rustyrailing"}, {10838, "airwelcomesign_sfse", "ws_airwelcome1"},
	{1613, "alleyprop", "hoteldetails2"}, {1613, "alleyprop", "stuffdirtcol"}, {12821, "alleystuff", "cratec"},
	{12821, "alleystuff", "Crate_B"}, {12821, "alleystuff", "Gen_Crate"}, {12821, "alleystuff", "planks01"},
	{12821, "alleystuff", "sjmstair"}, {10370, "alleys_sfs", "ws_alley_conc3"}, {10370, "alleys_sfs", "ws_asphalt"},
	{10370, "alleys_sfs", "ws_sandstone1"}, {3066, "ammotrx", "ammotrn92crate64"}, {3066, "ammotrx", "ammotrn92tarp128"},
	{2619, "ammounique", "mp_gun_man1"}, {18050, "ammu_2flrprops", "ammu_boots3"}, {18050, "ammu_2flrprops", "ammu_hats"},
	{18050, "ammu_2flrprops", "chipboard_256128"}, {18050, "ammu_2flrprops", "dt_ammu_flr1"},
	{18050, "ammu_2flrprops", "gun_target1"}, {18050, "ammu_2flrprops", "gun_target2"}, {18050, "ammu_2flrprops", "gun_target3"},
	{18050, "ammu_2flrprops", "gun_xtra4"}, {4552, "ammu_lan2", "corporate1"}, {4552, "ammu_lan2", "dior"},
	{4552, "ammu_lan2", "foodmartla1"}, {4552, "ammu_lan2", "gun_python"}, {4552, "ammu_lan2", "mallextmid01"},
	{4552, "ammu_lan2", "newall4-4"}, {4552, "ammu_lan2", "sf_chinashop2"}, {4552, "ammu_lan2", "sl_dtbuild02win1"},
	{4552, "ammu_lan2", "sl_dtrufrear2wall1"}, {4552, "ammu_lan2", "sl_dtrufrear2win1"}, {4552, "ammu_lan2", "sl_dtrufrear2win2"},
	{4552, "ammu_lan2", "sl_dtrufrear2win3"}, {4552, "ammu_lan2", "sl_fudstore1"}, {4552, "ammu_lan2", "sl_fudstore2"},
	{4552, "ammu_lan2", "sl_lavicdtwall1"}, {4552, "ammu_lan2", "sunsetammu1"}, {4552, "ammu_lan2", "sunsetammu2"},
	{4552, "ammu_lan2", "sunsetammu4"}, {18049, "ammu_twofloor", "CJ_BACK_BOARD"}, {18049, "ammu_twofloor", "concretebig4256128"},
	{18049, "ammu_twofloor", "gun_bacboard"}, {18049, "ammu_twofloor", "gun_ceiling2"}, {18049, "ammu_twofloor", "gun_windo"},
	{18049, "ammu_twofloor", "mp_gun_stairs"}, {9920, "anotherbuildsfe", "grassgrn256"}, {9920, "anotherbuildsfe", "gz_vic1a"},
	{9920, "anotherbuildsfe", "gz_vic1b"}, {9920, "anotherbuildsfe", "gz_vic1c"}, {9920, "anotherbuildsfe", "gz_vic1d"},
	{9920, "anotherbuildsfe", "gz_vic1e"}, {9920, "anotherbuildsfe", "gz_vic2a"}, {9920, "anotherbuildsfe", "gz_vic2b"},
	{9920, "anotherbuildsfe", "gz_vic2c"}, {9920, "anotherbuildsfe", "gz_vic2d"}, {5631, "apartmentalpha", "aptsign01_LA"},
	{5631, "apartmentalpha", "gymshop1_LAe"}, {5631, "apartmentalpha", "ws_railing1"},
	{3881, "apsecurity_sfxrf", "chromepipe2_64HV"}, {3881, "apsecurity_sfxrf", "CJ_WOOD1"},
	{3881, "apsecurity_sfxrf", "leather_seat_256"}, {3881, "apsecurity_sfxrf", "lostonclad1"},
	{3881, "apsecurity_sfxrf", "WIN_DESKTOP"}, {3881, "apsecurity_sfxrf", "ws_altz_wall10"},
	{3881, "apsecurity_sfxrf", "ws_rooftarmac2"}, {10810, "ap_build4e", "airportdanger"}, {10810, "ap_build4e", "redpylon"},
	{10810, "ap_build4e", "redwhite_stripe"}, {10810, "ap_build4e", "roof09L256"}, {1683, "ap_jumbos", "airblock1"},
	{1683, "ap_jumbos", "airblock2"}, {1683, "ap_jumbos", "airblock3"}, {1683, "ap_jumbos", "blackshadow4"},
	{1681, "ap_learjets", "ap_learjet"}, {1682, "ap_misc1bit", "ap_radar"}, {9575, "archbrij", "conc_wall_stripd2128h"},
	{3715, "archlax", "arch_sign"}, {3715, "archlax", "ws_greymetal"}, {10041, "archybuild10", "bank_sfe2"},
	{10041, "archybuild10", "bank_sfe5"}, {10041, "archybuild10", "copshop2"}, {10041, "archybuild10", "copshop3"},
	{10041, "archybuild10", "copshop5"}, {10041, "archybuild10", "copshop6"}, {10041, "archybuild10", "hotel_bit2"},
	{10041, "archybuild10", "rooftop_gz3"}, {10041, "archybuild10", "sfe_bigbuild2"}, {10041, "archybuild10", "sfe_pinkbuild1"},
	{10041, "archybuild10", "sfe_pinkbuild2"}, {10041, "archybuild10", "sf_shop2"}, {10041, "archybuild10", "sf_windos_15"},
	{10041, "archybuild10", "sf_windos_15b"}, {10041, "archybuild10", "sf_windos_7"}, {10041, "archybuild10", "sf_windos_8"},
	{10041, "archybuild10", "sf_windos_9"}, {10041, "archybuild10", "stonesteps1"}, {10041, "archybuild10", "Upt_Conc floorClean"},
	{10041, "archybuild10", "vgnburgwal4_128"}, {10041, "archybuild10", "vgnburgwal5_256"}, {10041, "archybuild10", "whitedecosfe1"},
	{10041, "archybuild10", "whitedecosfe2"}, {10041, "archybuild10", "whitedecosfe3"}, {10041, "archybuild10", "whitedecosfe4"},
	{3017, "arch_plx", "arch_plans"}, {3629, "arprtxxref_las", "aarprt4LAS"}, {3629, "arprtxxref_las", "airsetest1_LAS"},
	{3629, "arprtxxref_las", "airstoof1_LAS"}, {3629, "arprtxxref_las", "chevron64HVa"}, {3629, "arprtxxref_las", "corrRoof_64HV"},
	{3629, "arprtxxref_las", "dirtywhite"}, {3629, "arprtxxref_las", "dustytar_64HV"}, {3629, "arprtxxref_las", "grn_window2_16"},
	{3629, "arprtxxref_las", "lastrk6"}, {3629, "arprtxxref_las", "metaldoor_128"}, {3629, "arprtxxref_las", "planetunnel_64HV"},
	{3629, "arprtxxref_las", "rustybolts"}, {3629, "arprtxxref_las", "shuttersb"}, {3629, "arprtxxref_las", "wheel02_64"},
	{3629, "arprtxxref_las", "ws_corrugated1"}, {3629, "arprtxxref_las", "ws_corrugated2"},
	{3629, "arprtxxref_las", "ws_corrugateddoor1"}, {2990, "arsex", "blackdirt"}, {2990, "arsex", "nopark128"},
	{2990, "arsex", "steel128"}, {10426, "backroad_sfs", "Bow_church_dirt"}, {10426, "backroad_sfs", "retainwall1"},
	{701, "badlands", "newtreeleaves128"}, {701, "badlands", "sm_des_bush1"}, {10850, "bakerybit2_sfse", "frate64_blue"},
	{10850, "bakerybit2_sfse", "frate64_red"}, {10850, "bakerybit2_sfse", "frate64_yellow"},
	{10850, "bakerybit2_sfse", "frate_doors128red"}, {10850, "bakerybit2_sfse", "frate_doors64"},
	{10850, "bakerybit2_sfse", "frate_doors64yellow"}, {10850, "bakerybit2_sfse", "GB_truckdepot29"},
	{10850, "bakerybit2_sfse", "ws_altz_wall5"}, {10856, "bakerybit_sfse", "windoresidential256"},
	{10856, "bakerybit_sfse", "ws_altz_wall7"}, {10856, "bakerybit_sfse", "ws_dickgoblinmural"},
	{10856, "bakerybit_sfse", "ws_doubledoor4"}, {10856, "bakerybit_sfse", "ws_oldwarehouse10a"},
	{10856, "bakerybit_sfse", "ws_oldwarehouse10c"}, {10856, "bakerybit_sfse", "ws_oldwarehouse10d"},
	{10891, "bakery_sfse", "cabin6"}, {10891, "bakery_sfse", "ws_altz_wall4"}, {10891, "bakery_sfse", "ws_altz_wall5_door"},
	{10891, "bakery_sfse", "ws_dflourmural"}, {10891, "bakery_sfse", "ws_RShaul_dirt"}, {3437, "ballypillar01", "ballywall01_64"},
	{8391, "ballys01", "ballydoor01_128"}, {8391, "ballys01", "ballyledge01_128"}, {8391, "ballys01", "ballywall02_128"},
	{8391, "ballys01", "ballywindw01_128"}, {8391, "ballys01", "ballywindw02_128"}, {8391, "ballys01", "casinolightsblu_128"},
	{8391, "ballys01", "CJ_blackplastic"}, {8391, "ballys01", "greyground256128"}, {8391, "ballys01", "vgncorpdoor1_512"},
	{8391, "ballys01", "ws_floortiles4"}, {8486, "ballys02", "Grass_concpath_128HV"}, {8486, "ballys02", "walltiles_128"},
	{8394, "ballysign01", "HighRoller01_256"}, {8394, "ballysign01", "hortonsnug2_256"}, {8394, "ballysign01", "vgnmetaltopwal1_256"},
	{8394, "ballysign01", "vgnpawnlng_256"}, {8394, "ballysign01", "ws_airpassage"}, {8487, "ballyswater", "waterclear256"},
	{1252, "barrelexpos", "atm"}, {1949, "barrier", "barrier_stripe"}, {1949, "barrier", "pierlegs"},
	{1949, "barrier", "plainboards64HV"}, {4510, "barrierblk", "warnsigns1"}, {4510, "barrierblk", "warnsigns2"},
	{4510, "barrierblk", "yellow_64"}, {1282, "barrierm", "orangebarrier2"}, {5397, "barrio1_lae", "cargo7_128"},
	{5397, "barrio1_lae", "carwash_256"}, {5397, "barrio1_lae", "closedblank1_256"}, {5397, "barrio1_lae", "concretenewgery256"},
	{5397, "barrio1_lae", "corporate3green_128"}, {5397, "barrio1_lae", "crossing_law"}, {5397, "barrio1_lae", "dirtgaz64b"},
	{5397, "barrio1_lae", "gassign1_256"}, {5397, "barrio1_lae", "roof06L256"}, {5397, "barrio1_lae", "rufwaldock1"},
	{5397, "barrio1_lae", "sanpedocka1"}, {5397, "barrio1_lae", "snpdwargrn1"}, {5397, "barrio1_lae", "sw_wind16"},
	{5397, "barrio1_lae", "telewires_law"}, {5397, "barrio1_lae", "wshbrsh1las"}, {17508, "barrio1_lae2", "alleywall2"},
	{17508, "barrio1_lae2", "brickred"}, {17508, "barrio1_lae2", "dockpave_256"}, {17508, "barrio1_lae2", "gangshop10_LAe"},
	{17508, "barrio1_lae2", "gangshop11_LAe"}, {17508, "barrio1_lae2", "gangshop12_LAe"}, {17508, "barrio1_lae2", "gangsign3_LAe"},
	{17508, "barrio1_lae2", "gangsign4_LAe"}, {982, "bar_chainlink", "awirex2"}, {982, "bar_chainlink", "sjmshopBK"},
	{10385, "baseballground_sfs", "Bow_church_dirt_to_grass_side_t"}, {10385, "baseballground_sfs", "ws_baseballdirt"},
	{10385, "baseballground_sfs", "ws_football_lines2"}, {3819, "baseball_sfsx", "helipad_mesh_t"},
	{3819, "baseball_sfsx", "helipad_strutT"}, {3819, "baseball_sfsx", "telepole128"}, {1946, "bball1", "basketball2"},
	{7555, "bballcpark1", "backstageceiling1_128"}, {7555, "bballcpark1", "curbyell_64H"}, {7555, "bballcpark1", "vgncpark1_256"},
	{7555, "bballcpark1", "vgspshrailing1"}, {7555, "bballcpark1", "ws_carparknew1"}, {7555, "bballcpark1", "ws_carparknew2"},
	{7555, "bballcpark1", "ws_carparknew2a"}, {3452, "bballvgnint", "bballconcrete1_256"},
	{3452, "bballvgnint", "bballconcrete2_256"}, {3452, "bballvgnint", "bballconcrete3_256"},
	{3452, "bballvgnint", "bballconcrete4_256"}, {3452, "bballvgnint", "bballconcrete5_256"},
	{3452, "bballvgnint", "Bow_Abattoir_Conc2"}, {3452, "bballvgnint", "carparkwall1_256"}, {3065, "bballx", "bball_fake_light"},
	{3128, "bball_hpx", "wire2"}, {3096, "bbpcpx", "bluepink64"}, {3096, "bbpcpx", "blugrad32"}, {2020, "bdcabinets", "sideboard1"},
	{14805, "bdupsfurn", "Bdup2_Lamp"}, {14805, "bdupsfurn", "Bdup2_Ttop1"}, {14805, "bdupsfurn", "Bdup2_Ttop2"},
	{14805, "bdupsfurn", "Bdup_Ashtray"}, {14805, "bdupsfurn", "Bdup_Caps"}, {14805, "bdupsfurn", "Bdup_Crack"},
	{14805, "bdupsfurn", "Bdup_CrackPipe"}, {14805, "bdupsfurn", "Bdup_Pills"}, {14805, "bdupsfurn", "blacksofa01"},
	{14806, "bdupshifi", "Bdup2_amp"}, {14806, "bdupshifi", "Bdup2_CD"}, {14806, "bdupshifi", "Bdup2_speakers"},
	{14806, "bdupshifi", "Bdup2_TV"}, {14806, "bdupshifi", "Bdup2_wood"}, {5520, "bdupshouse_lae", "awningsides2"},
	{5520, "bdupshouse_lae", "compdoor2_LAe"}, {5520, "bdupshouse_lae", "compdoor4_LAe"}, {5520, "bdupshouse_lae", "comptwall23"},
	{5520, "bdupshouse_lae", "gangwin4_LAe"}, {5520, "bdupshouse_lae", "shingles3"}, {5520, "bdupshouse_lae", "sw_woodflloor"},
	{5520, "bdupshouse_lae", "ws_boxhouse_wins3"}, {14807, "bdupslight", "Bdup2_Light"}, {14803, "bdupsnew", "Bdup2_Artex"},
	{14803, "bdupsnew", "Bdup2_carpet"}, {14803, "bdupsnew", "Bdup2_mask"}, {14803, "bdupsnew", "Bdup2_plant"},
	{14803, "bdupsnew", "Bdup2_plantPot"}, {14803, "bdupsnew", "Bdup2_plantStalk"}, {14803, "bdupsnew", "Bdup2_poster"},
	{14803, "bdupsnew", "Bdup2_Rug"}, {14803, "bdupsnew", "Bdup2_wallpaper"}, {14803, "bdupsnew", "Bdup2_wallpaperB"},
	{14803, "bdupsnew", "Bdup2_wallpaperC"}, {3032, "bdwinx", "ct_canopy"}, {3032, "bdwinx", "gangwin3_LAe"},
	{3653, "beachapts_lax", "Bow_dryclean_wall_upr"}, {3653, "beachapts_lax", "comptcowind1"},
	{3653, "beachapts_lax", "eastwall3_LAe2"}, {3653, "beachapts_lax", "eastwall4_LAe2"},
	{3653, "beachapts_lax", "eastwin07_LAe2"}, {3653, "beachapts_lax", "Grass_dry_64HV"},
	{3653, "beachapts_lax", "Ind_Roadskank"}, {3653, "beachapts_lax", "sjmscorclawn"},
	{3653, "beachapts_lax", "stormdrain6"}, {1598, "beachball", "beachball"}, {9549, "beachbx_sfw", "boxybox_sf1"},
	{9549, "beachbx_sfw", "boxybox_sf1b"}, {9549, "beachbx_sfw", "boxybox_sf2"}, {9549, "beachbx_sfw", "boxybox_sf2b"},
	{9549, "beachbx_sfw", "boxybox_sf2c"}, {9549, "beachbx_sfw", "boxybox_sf3"}, {9549, "beachbx_sfw", "boxybox_sf3b"},
	{9549, "beachbx_sfw", "boxybox_sf4"}, {9549, "beachbx_sfw", "boxybox_sf4b"}, {9549, "beachbx_sfw", "boxybox_sf5"},
	{9549, "beachbx_sfw", "boxybox_sf5b"}, {9549, "beachbx_sfw", "boxybox_sf6"}, {9549, "beachbx_sfw", "boxybox_sf6b"},
	{9549, "beachbx_sfw", "cst_rock_coast_sfw"}, {9549, "beachbx_sfw", "NEWrockgrass_sfw"}, {9549, "beachbx_sfw", "SF_garden3"},
	{3615, "beachhut", "asanmonbhut1"}, {3615, "beachhut", "asanmonbhut2"}, {3615, "beachhut", "sw_flatroof01"},
	{3615, "beachhut", "ws_decking1"}, {17953, "beach_lae2", "block2_low"}, {4811, "beach_las", "grifnewtex1x_LAS"},
	{4811, "beach_las", "grifnewtex2x_LAS"}, {4811, "beach_las", "lasclifface"}, {4811, "beach_las", "sandnew_law"},
	{4811, "beach_las", "sandstonemixb"}, {4811, "beach_las", "sm_Agave_bloom"}, {4811, "beach_las", "sm_minipalm1"},
	{5114, "beach_las2", "boardwalk_la"}, {5114, "beach_las2", "Bow_meshfence"}, {5114, "beach_las2", "ganggraf04_LA"},
	{5114, "beach_las2", "luxorwall02_128sandblend"}, {5114, "beach_las2", "sw_sand"}, {10351, "beach_sfs", "rocktb128"},
	{10351, "beach_sfs", "ws_drysand"}, {10351, "beach_sfs", "ws_drysand2grass"}, {10351, "beach_sfs", "ws_wetdryblendsand"},
	{10351, "beach_sfs", "ws_wetsand"}, {6312, "beacliff_law2", "concretebigblu4256128"}, {6312, "beacliff_law2", "grasstype3"},
	{6312, "beacliff_law2", "redcliffroof_LA"}, {6312, "beacliff_law2", "redclifftop256"},
	{6312, "beacliff_law2", "sm_rock2_desert"}, {6404, "beafron1_law2", "beachsig01_LAw2"},
	{6404, "beafron1_law2", "blueshade2_64"}, {6404, "beafron1_law2", "cafe01_law"}, {6404, "beafron1_law2", "compfence7_LAe"},
	{6404, "beafron1_law2", "comptwall30"}, {6404, "beafron1_law2", "comptwall31"}, {6404, "beafron1_law2", "comptwall37"},
	{6404, "beafron1_law2", "Gen_Scaffold_Wood_Under"}, {6404, "beafron1_law2", "icecream_law"},
	{6404, "beafron1_law2", "melroran3_law"}, {6404, "beafron1_law2", "pierbild01_law"}, {6404, "beafron1_law2", "pierroof01_law"},
	{6404, "beafron1_law2", "pierwin03_law"}, {6404, "beafron1_law2", "rippost01_LA"}, {6404, "beafron1_law2", "shingledblue_la"},
	{6404, "beafron1_law2", "shutter02LA"}, {6404, "beafron1_law2", "shutter04LA"}, {6404, "beafron1_law2", "vencounter01_law"},
	{6404, "beafron1_law2", "venshops02_law"}, {6404, "beafron1_law2", "woodroof01_128"}, {6282, "beafron2_law2", "asanwall2"},
	{6282, "beafron2_law2", "bchhouse_law"}, {6282, "beafron2_law2", "boardwalk2_la"}, {6282, "beafron2_law2", "bobo_LAw"},
	{6282, "beafron2_law2", "comptwall33"}, {6282, "beafron2_law2", "concretebigb256128"},
	{6282, "beafron2_law2", "concretenewb256128"}, {6282, "beafron2_law2", "decoacwallbtmb21_256"},
	{6282, "beafron2_law2", "des_bunting"}, {6282, "beafron2_law2", "downtshop7_LAn"}, {6282, "beafron2_law2", "downtsign3_LA"},
	{6282, "beafron2_law2", "downtwin27"}, {6282, "beafron2_law2", "downtwin28"}, {6282, "beafron2_law2", "eastwin01_LAe2"},
	{6282, "beafron2_law2", "eastwin08_LAe2"}, {6282, "beafron2_law2", "eris_3"}, {6282, "beafron2_law2", "examwall2_LAe"},
	{6282, "beafron2_law2", "fire_esc_fence"}, {6282, "beafron2_law2", "giftsign01_law"}, {6282, "beafron2_law2", "heat_03"},
	{6282, "beafron2_law2", "hollysign02_LAw"}, {6282, "beafron2_law2", "homies_2"}, {6282, "beafron2_law2", "LoadingDoorClean"},
	{6282, "beafron2_law2", "melrshop04_LAwN"}, {6282, "beafron2_law2", "sanpiz1"}, {6282, "beafron2_law2", "scumshop01_LAe"},
	{6282, "beafron2_law2", "shutter03LA"}, {6282, "beafron2_law2", "sjmcargr"}, {6282, "beafron2_law2", "smoothie"},
	{6282, "beafron2_law2", "snpdwingrat1"}, {6282, "beafron2_law2", "snpedshptst1a"}, {6282, "beafron2_law2", "snpedshptst1c"},
	{6282, "beafron2_law2", "spraysig1_LAw2"}, {6282, "beafron2_law2", "telewireslong"}, {6282, "beafron2_law2", "vertsign1_LA"},
	{6282, "beafron2_law2", "ws_ed_shop11"}, {6282, "beafron2_law2", "ws_ed_shop9"}, {1281, "benches", "pierdoor02_law"},
	{1281, "benches", "trafficcone"}, {1256, "benchm", "TaxiCo1_64"}, {11100, "bendytunnel_sfse", "blackmetal"},
	{11100, "bendytunnel_sfse", "Bow_sub_wallshine"}, {11100, "bendytunnel_sfse", "Bow_sub_walltiles"},
	{11100, "bendytunnel_sfse", "ws_altz_wall10b"}, {13691, "bevcunto2_lahills", "aamanbev96x"},
	{13691, "bevcunto2_lahills", "adeta"}, {13691, "bevcunto2_lahills", "Bow_Abattoir_Floor_Clean"},
	{13691, "bevcunto2_lahills", "crazypave"}, {13691, "bevcunto2_lahills", "newgrnd1brn_128"},
	{13691, "bevcunto2_lahills", "stonewall3_la"}, {13691, "bevcunto2_lahills", "ws_floortiles2"},
	{13691, "bevcunto2_lahills", "ws_patio1"}, {3603, "bevmans01_la", "aamanbev1x"}, {3603, "bevmans01_la", "aamanbev2x"},
	{3603, "bevmans01_la", "aamanbev3x"}, {3603, "bevmans01_la", "aamanbev5x"}, {3603, "bevmans01_la", "aamanbev6x"},
	{3603, "bevmans01_la", "aamanbev7x"}, {3603, "bevmans01_la", "aamanbev8x"}, {3603, "bevmans01_la", "aamanbev92x"},
	{3603, "bevmans01_la", "aamanbev93x"}, {3603, "bevmans01_la", "aamanbev94x"}, {3603, "bevmans01_la", "aamanbev95x"},
	{3603, "bevmans01_la", "cemebuild03_law"}, {3603, "bevmans01_la", "garagedoor4_law"}, {3603, "bevmans01_la", "genroof01_128"},
	{3603, "bevmans01_la", "genroof02_128"}, {3603, "bevmans01_la", "hottop5d_law"}, {3603, "bevmans01_la", "lasbevcit7"},
	{3603, "bevmans01_la", "lasjmhus21"}, {3603, "bevmans01_la", "pavepat2_128"}, {3603, "bevmans01_la", "pierwin01_law"},
	{3603, "bevmans01_la", "rooftiles1"}, {3603, "bevmans01_la", "sjmhoodaad"}, {3603, "bevmans01_la", "sjmhoodalldr"},
	{3603, "bevmans01_la", "sjmhoodlawn9s"}, {3603, "bevmans01_la", "sjmlahus21"}, {3603, "bevmans01_la", "sjmlahus23"},
	{3603, "bevmans01_la", "sjmlahus25"}, {3603, "bevmans01_la", "sjmlahus26"}, {3603, "bevmans01_la", "sjmlahus27"},
	{3603, "bevmans01_la", "sjmlahus29"}, {3603, "bevmans01_la", "wilsdoor_01_la"}, {6284, "bev_law2", "beachwalkway"},
	{6284, "bev_law2", "comptdoor2"}, {6284, "bev_law2", "comptwindo2"}, {6284, "bev_law2", "concretebigb256"},
	{6284, "bev_law2", "dirtKB_64HV"}, {6284, "bev_law2", "glass_fence_64hv"}, {6284, "bev_law2", "lasjmposh1"},
	{6284, "bev_law2", "lasjmposh2"}, {6284, "bev_law2", "lasjmposh3"}, {6284, "bev_law2", "lasjmposh4"},
	{6284, "bev_law2", "lasmalhus92"}, {6284, "bev_law2", "letterbox_law"}, {6284, "bev_law2", "pierbild04_law"},
	{6284, "bev_law2", "pierdoor03_law"}, {6284, "bev_law2", "pierfence01_law"}, {6284, "bev_law2", "pierfence02b_law"},
	{6284, "bev_law2", "pierfence02_law"}, {6284, "bev_law2", "pierhouse01_law"}, {6284, "bev_law2", "pierhouse02b_law"},
	{6284, "bev_law2", "pierhouse02_law"}, {6284, "bev_law2", "pierhouse3_law"}, {6284, "bev_law2", "pierwall02_law"},
	{6284, "bev_law2", "pierwall03_law"}, {6284, "bev_law2", "pierwin04_law"}, {6284, "bev_law2", "pierwin05_law"},
	{6284, "bev_law2", "pierwin06_law"}, {6284, "bev_law2", "pierwin07_law"}, {6284, "bev_law2", "pierwin08b_law"},
	{6284, "bev_law2", "pierwin08_law"}, {6284, "bev_law2", "shinglegrey_la"}, {6284, "bev_law2", "shopdoor01_law"},
	{6284, "bev_law2", "sjmlawarwall3"}, {6284, "bev_law2", "studwalltop_law"}, {6284, "bev_law2", "windbox01_law"},
	{9515, "bigboxtemp1", "acrooftop1256"}, {9515, "bigboxtemp1", "board64_law"}, {9515, "bigboxtemp1", "browntin1"},
	{9515, "bigboxtemp1", "carlot1_sfw"}, {9515, "bigboxtemp1", "garagedoor5_law"}, {9515, "bigboxtemp1", "int02_128"},
	{9515, "bigboxtemp1", "lombard_build2_2"}, {9515, "bigboxtemp1", "lombard_build2_4"}, {9515, "bigboxtemp1", "lombard_build2_5"},
	{9515, "bigboxtemp1", "lombard_build3_1"}, {9515, "bigboxtemp1", "mullcar01_law"}, {9515, "bigboxtemp1", "patiodr_law"},
	{9515, "bigboxtemp1", "poshbox2a"}, {9515, "bigboxtemp1", "poshbox2b"}, {9515, "bigboxtemp1", "poshbox2c"},
	{9515, "bigboxtemp1", "poshbox3a"}, {9515, "bigboxtemp1", "poshbox3b"}, {9515, "bigboxtemp1", "poshbox3c"},
	{9515, "bigboxtemp1", "poshground_sfw"}, {9515, "bigboxtemp1", "redbrickground256"}, {9515, "bigboxtemp1", "rooftiles2"},
	{9515, "bigboxtemp1", "sfn_grass1"}, {9515, "bigboxtemp1", "sf_concrete1"}, {9515, "bigboxtemp1", "shingles1"},
	{9515, "bigboxtemp1", "tarmacplain_bank"}, {9515, "bigboxtemp1", "ws_airportwin1"}, {9515, "bigboxtemp1", "ws_alley5_256_blank"},
	{9515, "bigboxtemp1", "ws_garagedoor3_white"}, {5763, "bigbuildlawn", "bevdoor02_law"},
	{5763, "bigbuildlawn", "ornatebuildlaw2_1"}, {5763, "bigbuildlawn", "ornatebuildlaw2_2"},
	{5763, "bigbuildlawn", "ornatebuildlaw2_3"}, {5763, "bigbuildlawn", "ornatebuildlaw2_4"}, {5763, "bigbuildlawn", "roof10L256"},
	{3816, "bighangarsfxr", "railgird32bit"}, {3816, "bighangarsfxr", "ws_breezeblocks"}, {3816, "bighangarsfxr", "ws_crossbeam1"},
	{3816, "bighangarsfxr", "ws_hangardoor"}, {10056, "bigoldbuild_sfe", "alleys_sfe"}, {10056, "bigoldbuild_sfe", "bank_sfe1"},
	{10056, "bigoldbuild_sfe", "bank_sfe3"}, {10056, "bigoldbuild_sfe", "bigbrown1_sfe"}, {10056, "bigoldbuild_sfe", "bigbrown2_sfe"},
	{10056, "bigoldbuild_sfe", "clubdoor1_256"}, {10056, "bigoldbuild_sfe", "cluckbell01_law"},
	{10056, "bigoldbuild_sfe", "cluckbell02_law"}, {10056, "bigoldbuild_sfe", "lanky1_sfe"}, {10056, "bigoldbuild_sfe", "lanky2_sfe"},
	{10056, "bigoldbuild_sfe", "lanky3_sfe"}, {10056, "bigoldbuild_sfe", "lanky4_sfe"}, {10056, "bigoldbuild_sfe", "roofthing2_sfe"},
	{10056, "bigoldbuild_sfe", "sfe_arch1"}, {10056, "bigoldbuild_sfe", "sfe_bigbuild1"}, {10056, "bigoldbuild_sfe", "sfe_nicearch4"},
	{10056, "bigoldbuild_sfe", "sfe_pinkbuild3"}, {10056, "bigoldbuild_sfe", "sf_backaley1"}, {10056, "bigoldbuild_sfe", "sf_shop4"},
	{10056, "bigoldbuild_sfe", "sf_windos_1"}, {10056, "bigoldbuild_sfe", "sf_windos_13wall"},
	{10056, "bigoldbuild_sfe", "sf_windos_2"}, {10056, "bigoldbuild_sfe", "sf_windos_3"},
	{10056, "bigoldbuild_sfe", "vgnburgwal3_256"}, {15041, "bigsfsave", "ah_ceilpan1"}, {15041, "bigsfsave", "AH_flrdiamonds"},
	{15041, "bigsfsave", "AH_flroortile5"}, {15041, "bigsfsave", "AH_flroortile9"}, {15041, "bigsfsave", "ah_greencarp"},
	{15041, "bigsfsave", "AH_grepaper2"}, {15041, "bigsfsave", "AH_skt5"}, {15041, "bigsfsave", "AH_strntiles"},
	{15041, "bigsfsave", "ah_utilbor1"}, {15041, "bigsfsave", "ah_utilbor2"}, {15041, "bigsfsave", "AH_walltile6"},
	{15041, "bigsfsave", "AH_wdpanscum"}, {15041, "bigsfsave", "ah_wpaper7"}, {15041, "bigsfsave", "ah_wrnplnks"},
	{15041, "bigsfsave", "andydark"}, {15041, "bigsfsave", "carp11S"}, {15041, "bigsfsave", "mp_carter_tilewall"},
	{15041, "bigsfsave", "wall6"}, {15041, "bigsfsave", "walp73S"}, {15041, "bigsfsave", "windo_blinds"},
	{2944, "bigshapx", "freighter1"}, {9583, "bigshap_sfw", "alleywin5"}, {9583, "bigshap_sfw", "boatfunnel1_128"},
	{9583, "bigshap_sfw", "boatfunnel2_64"}, {9583, "bigshap_sfw", "bridge_walls2_sfw"}, {9583, "bigshap_sfw", "bridge_walls3_sfw"},
	{9583, "bigshap_sfw", "cof_tile1"}, {9583, "bigshap_sfw", "freighter1b"}, {9583, "bigshap_sfw", "freighter2"},
	{9583, "bigshap_sfw", "freighter2b"}, {9583, "bigshap_sfw", "freighter3"}, {9583, "bigshap_sfw", "freighter4"},
	{9583, "bigshap_sfw", "freighter4b"}, {9583, "bigshap_sfw", "freighter5"}, {9583, "bigshap_sfw", "freighterhull1"},
	{9583, "bigshap_sfw", "freighterhull2"}, {9583, "bigshap_sfw", "freight_crate1"}, {9583, "bigshap_sfw", "freight_crate2"},
	{9583, "bigshap_sfw", "freight_crate3"}, {9583, "bigshap_sfw", "freight_crate4"}, {9583, "bigshap_sfw", "freight_crate5"},
	{9583, "bigshap_sfw", "freight_crate6"}, {9583, "bigshap_sfw", "freight_crate7"}, {9583, "bigshap_sfw", "generatorside1_128"},
	{9583, "bigshap_sfw", "man_ceiling"}, {9583, "bigshap_sfw", "ropladr_sfw"}, {9583, "bigshap_sfw", "sf_ship_glasst"},
	{9583, "bigshap_sfw", "ship2wall_1"}, {9583, "bigshap_sfw", "ship2wall_2"}, {9583, "bigshap_sfw", "ship2wall_3"},
	{9583, "bigshap_sfw", "shipceiling_sfw"}, {9583, "bigshap_sfw", "shipfloor_sfw"}, {10840, "bigshed_sfse", "sw_warewinx4"},
	{10840, "bigshed_sfse", "ws_corr_metal2"}, {10840, "bigshed_sfse", "ws_corr_metal3"}, {10840, "bigshed_sfse", "ws_corr_plastic"},
	{10840, "bigshed_sfse", "ws_oldwarehouse1"}, {10840, "bigshed_sfse", "ws_oldwarehouse9"},
	{10840, "bigshed_sfse", "ws_reinforcedbutwonky"}, {10023, "bigwhitesfe", "archgrnd1_SFE"},
	{10023, "bigwhitesfe", "archgrnd2_SFE"}, {10023, "bigwhitesfe", "archgrnd3_SFE"}, {10023, "bigwhitesfe", "bigwhite_2"},
	{10023, "bigwhitesfe", "bigwhite_3"}, {10023, "bigwhitesfe", "bigwhite_4"}, {10023, "bigwhitesfe", "bigwhite_5"},
	{10023, "bigwhitesfe", "bigwhite_6"}, {10023, "bigwhitesfe", "clubpole_SFw"}, {10023, "bigwhitesfe", "forestfloor3"},
	{10023, "bigwhitesfe", "helix2_sfe"}, {10023, "bigwhitesfe", "liftdoors_kb_256"}, {10023, "bigwhitesfe", "lomall_ext2_"},
	{10023, "bigwhitesfe", "recessed_light_SF"}, {10023, "bigwhitesfe", "sfe_arch10"}, {10023, "bigwhitesfe", "sfe_arch2"},
	{10023, "bigwhitesfe", "sfe_arch3"}, {10023, "bigwhitesfe", "sfe_arch4"}, {10023, "bigwhitesfe", "sfe_arch5"},
	{10023, "bigwhitesfe", "sfe_arch6"}, {10023, "bigwhitesfe", "sfe_arch7"}, {10023, "bigwhitesfe", "sfe_arch8"},
	{10023, "bigwhitesfe", "sfe_arch9"}, {10023, "bigwhitesfe", "zombotech1"}, {10023, "bigwhitesfe", "zombotech2"},
	{10023, "bigwhitesfe", "zombotech3"}, {14603, "bikeskool", "artish1"}, {14603, "bikeskool", "door_pan1_64_128"},
	{14603, "bikeskool", "dor_slider_16_32b"}, {14603, "bikeskool", "lw_pistol_128"}, {14603, "bikeskool", "motel_wall3"},
	{3083, "billbox", "ADDWOOD"}, {3083, "billbox", "billdetaily"}, {3083, "billbox", "iron"},
	{3083, "billbox", "Sprunk_postersign1"}, {1259, "billbrd", "BBoardBack"}, {1259, "billbrd", "bluemetal02"},
	{1259, "billbrd", "fence1"}, {1259, "billbrd", "spotlight_64"}, {1259, "billbrd", "ws_oldpainted2"},
	{4230, "billbrd01_lan", "eris_2"}, {4230, "billbrd01_lan", "heat_02"}, {4729, "billbrd01_lan2", "eris_1"},
	{4729, "billbrd01_lan2", "hardon_1"}, {5818, "billbrdlawn", "bobobillboard1"}, {5818, "billbrdlawn", "semi1Dirty"},
	{5818, "billbrdlawn", "semi2Dirty"}, {5818, "billbrdlawn", "semi3Dirty"}, {3922, "bistro", "ahoodfence2"},
	{3922, "bistro", "barbersflr1_LA"}, {3922, "bistro", "BistroMenu"}, {3922, "bistro", "Cabinet"}, {3922, "bistro", "Cakes"},
	{3922, "bistro", "Candle_Holder"}, {3922, "bistro", "Coffemachine"}, {3922, "bistro", "concretebig3_256"},
	{3922, "bistro", "Cutlery"}, {3922, "bistro", "deco_chair_1"}, {3922, "bistro", "DinerFloor"}, {3922, "bistro", "Marble"},
	{3922, "bistro", "Marble2"}, {3922, "bistro", "marblekb_256128"}, {3922, "bistro", "mottled_grey_64HV"},
	{3922, "bistro", "mp_snow"}, {3922, "bistro", "Panel"}, {3922, "bistro", "Plate"}, {3922, "bistro", "rest_wall4"},
	{3922, "bistro", "SaltNPeppa"}, {3922, "bistro", "StainedGlass"}, {3922, "bistro", "sw_door11"},
	{3922, "bistro", "sw_wallbrick_01"}, {3922, "bistro", "Tablecloth"}, {3922, "bistro", "vent_64"},
	{3945, "bistro_alpha", "creme128"}, {3946, "bistro_plants", "starflower2"}, {3946, "bistro_plants", "starflower4"},
	{2023, "bitsnbobs", "CJ_LIGHTWOOD"}, {3108, "bjmptx", "target_crv"}, {3108, "bjmptx", "target_nmbrs"},
	{10871, "blacksky_sfse", "corporate3"}, {10871, "blacksky_sfse", "ws_altz_wall7_top"}, {10871, "blacksky_sfse", "ws_blackmarble"},
	{10871, "blacksky_sfse", "ws_glass_balustrade"}, {10871, "blacksky_sfse", "ws_skywinsgreen"},
	{10871, "blacksky_sfse", "ws_slatetiles"}, {17510, "blackwestran1_lae2", "des_indrails"},
	{14634, "blindinglite", "ws_volumetriclight"}, {3077, "blkbrdx", "nf_blackbrd"}, {3077, "blkbrdx", "tatty_wood_1"},
	{3077, "blkbrdx", "WCList1"}, {3077, "blkbrdx", "WCList2"}, {3077, "blkbrdx", "WCList3"}, {3077, "blkbrdx", "WCScore"},
	{3077, "blkbrdx", "WCTitle"}, {5630, "blockalpha", "duskyred_64"}, {5630, "blockalpha", "grille2_LA"},
	{9524, "blokmodb", "alleywin4"}, {9524, "blokmodb", "bincosf_1"}, {9524, "blokmodb", "bincosign1_128"},
	{9524, "blokmodb", "binco_sf2"}, {9524, "blokmodb", "Bow_Grimebrick"}, {9524, "blokmodb", "fireescape1_sfe"},
	{9524, "blokmodb", "Grass"}, {9524, "blokmodb", "lightwallv256"}, {9524, "blokmodb", "lombard_build1_1"},
	{9524, "blokmodb", "lombard_build1_2"}, {9524, "blokmodb", "lombard_build1_4"}, {9524, "blokmodb", "lombard_build5_1"},
	{9524, "blokmodb", "lombard_build5_2"}, {9524, "blokmodb", "lombard_build5_3"}, {9524, "blokmodb", "sf_garagedr1"},
	{1685, "blokpalet", "ws_blockpall"}, {10310, "boigas_sfe", "burgershotmenu256"}, {10310, "boigas_sfe", "burgershotsign1_256"},
	{10310, "boigas_sfe", "vgnburger_256"}, {9525, "boigas_sfw", "calfederal4"}, {9525, "boigas_sfw", "calfederal5"},
	{9525, "boigas_sfw", "GEwhite1_64"}, {9525, "boigas_sfw", "vgnburgwal1_128"}, {9525, "boigas_sfw", "vgnburgwal2_128"},
	{9525, "boigas_sfw", "vgnburgwal6_256"}, {5042, "bombshop_las", "dynobox"}, {5042, "bombshop_las", "greymetal"},
	{5042, "bombshop_las", "kb_spray_light1"}, {5042, "bombshop_las", "lightcover1"}, {5042, "bombshop_las", "shutterclosed_law"},
	{10148, "bombshop_sfe", "calendar01"}, {3269, "boneyard", "bonyrd_frame1"}, {3269, "boneyard", "bonyrd_skin1"},
	{1248, "bonus", "gta3l"}, {2923, "bottle_bank", "recycle"}, {1220, "boxes", "cardboxes_128"}, {1220, "boxes", "crate128"},
	{3820, "boxhses_sfsx", "hilcouwall1"}, {3820, "boxhses_sfsx", "LAbluewall"}, {3820, "boxhses_sfsx", "LAcreamwall1"},
	{3820, "boxhses_sfsx", "LAgreenwall"}, {3820, "boxhses_sfsx", "sl_vic_decor1"}, {3820, "boxhses_sfsx", "stonewall_la"},
	{3820, "boxhses_sfsx", "sw_barnwoodblu"}, {3820, "boxhses_sfsx", "tanboard1"}, {3820, "boxhses_sfsx", "ws_ irongate"},
	{3820, "boxhses_sfsx", "ws_ irongate_white"}, {3820, "boxhses_sfsx", "ws_ irongate_yello"},
	{3820, "boxhses_sfsx", "ws_blocks_grey_1"}, {3820, "boxhses_sfsx", "ws_blocks_red_1"}, {3820, "boxhses_sfsx", "ws_boxhouse_wins5"},
	{3820, "boxhses_sfsx", "ws_boxhouse_wins7"}, {3820, "boxhses_sfsx", "ws_chimneypot"}, {3820, "boxhses_sfsx", "ws_doorframe"},
	{3820, "boxhses_sfsx", "ws_garagedoor2_blue"}, {3820, "boxhses_sfsx", "ws_garagedoor2_white"},
	{3820, "boxhses_sfsx", "ws_garagedoor3_green"}, {3820, "boxhses_sfsx", "ws_garagedoor3_pink"},
	{3820, "boxhses_sfsx", "ws_green_wall1"}, {3820, "boxhses_sfsx", "ws_mixedbrick"}, {3820, "boxhses_sfsx", "ws_painted_doors1"},
	{3820, "boxhses_sfsx", "ws_painted_doors2"}, {3820, "boxhses_sfsx", "ws_painted_doors3"}, {3820, "boxhses_sfsx", "ws_pink_wall1"},
	{3820, "boxhses_sfsx", "ws_shutters"}, {3820, "boxhses_sfsx", "ws_stucco_white_2"}, {3820, "boxhses_sfsx", "ws_vic_bits"},
	{3820, "boxhses_sfsx", "ws_vic_cornice1"}, {3820, "boxhses_sfsx", "ws_vic_wood1"}, {3820, "boxhses_sfsx", "ws_wood_doors1"},
	{3820, "boxhses_sfsx", "ws_wood_doors2"}, {9507, "boxybld2_sfw", "bevdoor01_law"}, {9507, "boxybld2_sfw", "boxybox_sf3z"},
	{9507, "boxybld2_sfw", "compcouwall1"}, {9507, "boxybld2_sfw", "comptdoor3"}, {9507, "boxybld2_sfw", "dirty01"},
	{9507, "boxybld2_sfw", "gz_vic4a"}, {9507, "boxybld2_sfw", "gz_vic4b"}, {9507, "boxybld2_sfw", "gz_vic4c"},
	{9507, "boxybld2_sfw", "gz_vic4e"}, {9507, "boxybld2_sfw", "hospital3_sfw"}, {9507, "boxybld2_sfw", "lombard_build2_1"},
	{9507, "boxybld2_sfw", "sfn_rock2"}, {9507, "boxybld2_sfw", "sfn_rockgrass1"}, {9507, "boxybld2_sfw", "sfn_rockgrass10"},
	{9507, "boxybld2_sfw", "sfw_poshbox1"}, {9507, "boxybld2_sfw", "sfw_poshbox1b"}, {9507, "boxybld2_sfw", "sfw_poshbox1c"},
	{9507, "boxybld2_sfw", "sfw_poshbox1d"}, {9507, "boxybld2_sfw", "vengardoor01_SFW"}, {9496, "boxybld_sfw", "boxybox_sf1z"},
	{9496, "boxybld_sfw", "boxybox_sf5bz"}, {9496, "boxybld_sfw", "fence1_sfw"}, {9496, "boxybld_sfw", "hospwall1"},
	{9496, "boxybld_sfw", "pierbuild_btm1"}, {9496, "boxybld_sfw", "taxi_256"}, {9496, "boxybld_sfw", "ven_house4"},
	{9496, "boxybld_sfw", "ws_alley_conc1"}, {9496, "boxybld_sfw", "ws_altz_wall8_bot"}, {3054, "break_ballx", "brk_ball1"},
	{3054, "break_ballx", "brk_Ball2"}, {1486, "break_bar", "CJ_bottle"}, {1486, "break_bar", "CJ_bottle2"},
	{1453, "break_farm", "CJ_DarkWood"}, {1453, "break_farm", "CJ_HAY"}, {1453, "break_farm", "cj_hay2"},
	{1408, "break_fence1", "CJ_W_wood"}, {1408, "break_fence1", "compfence2_LAe"}, {1419, "break_fence3", "CJ_BIN_LID"},
	{1419, "break_fence3", "CJ_DUMP"}, {1419, "break_fence3", "CJ_DUMP2"}, {1419, "break_fence3", "CJ_DUMP3"},
	{1419, "break_fence3", "CJ_FRAME_Glass"}, {1419, "break_fence3", "CJ_Trafficlights"}, {1419, "break_fence3", "ornatefence"},
	{1411, "break_fen_mesh2", "mp_barbedwire"}, {1413, "break_f_mesh", "CJ_CORRIGATED"}, {1413, "break_f_mesh", "meetwalv2"},
	{1407, "break_f_w", "CJ_GREENWOOD"}, {1407, "break_f_w", "CJ_SLATEDWOOD"}, {1448, "break_pallet", "Gen_Bin_Bag"},
	{1448, "break_pallet", "slated"}, {1422, "break_road", "CJ_DETOUR"}, {1422, "break_road", "CJ_orangebarrier2"},
	{1422, "break_road", "CJ_ROAD_SIGN1"}, {1422, "break_road", "cj_S_POLE"}, {1422, "break_road", "CJ_W_BALL"},
	{1459, "break_road_ws", "CJ_SHEET2"}, {1426, "break_scaffold", "cheerybox03"}, {1426, "break_scaffold", "CJ_avery"},
	{1426, "break_scaffold", "CJ_BLUE_WOOD"}, {1426, "break_scaffold", "CJ_NET"}, {1414, "break_street1", "cj_crates"},
	{1414, "break_street1", "CJ_TV_SCREEN"}, {1355, "break_s_bins", "CJ_RED_LEATHER"}, {1355, "break_s_bins", "CJ_SF_BUCKET"},
	{1355, "break_s_bins", "CJ_SKIP2"}, {1355, "break_s_bins", "CJ_TABLE_TOP"}, {1355, "break_s_bins", "CJ_WOOD_DARK"},
	{1355, "break_s_bins", "dirt64b"}, {1355, "break_s_bins", "Gen_Box"}, {1355, "break_s_bins", "marble1"},
	{1443, "break_s_fillers", "cj_burger"}, {1443, "break_s_fillers", "CJ_SEX_SIGN1"}, {1444, "break_s_sf", "CJ_FERRY_MAP"},
	{1365, "break_s_ws", "CJ_SKIP"}, {1210, "breifcase", "briefcase"}, {10864, "bridgeland_sfse", "prolaps02"},
	{10864, "bridgeland_sfse", "ws_altz_wall1"}, {946, "bskball_standext", "bballboard128"},
	{946, "bskball_standext", "drkbrownmetal"}, {4593, "buildblk55", "downtwin1"}, {4593, "buildblk55", "drugstore256"},
	{4593, "buildblk55", "GB_nastybar03"}, {4593, "buildblk55", "holpac01_law"}, {4593, "buildblk55", "lawshop4"},
	{4593, "buildblk55", "sl_plazatile01"}, {4593, "buildblk55", "snpdsqdoor"}, {4593, "buildblk55", "ws_oldershop1"},
	{4593, "buildblk55", "ws_oldershop2"}, {4604, "buildblk555", "gm_labuld5_a"}, {4604, "buildblk555", "gm_labuld5_b"},
	{4604, "buildblk555", "gm_labuld5_c"}, {4604, "buildblk555", "sl_sfngrssdrt01"}, {8869, "buildingsitevge", "boardgate_law"},
	{8869, "buildingsitevge", "telepole2128"}, {8869, "buildingsitevge", "ws_floodlight"},
	{8869, "buildingsitevge", "ws_generatorside"}, {8869, "buildingsitevge", "ws_oldpaintedyello"},
	{8869, "buildingsitevge", "ws_woodenscreen1"}, {5819, "buildtestlawn", "alleydoor8"}, {5819, "buildtestlawn", "lawshopwall4"},
	{1243, "buoy", "buoyrust_128"}, {1243, "buoy", "yellowrust_64"}, {11092, "burgalrystore_sfse", "Bow_LoadingBayDoor"},
	{11092, "burgalrystore_sfse", "ws_altz_wall2bluetop"}, {11092, "burgalrystore_sfse", "ws_HARRYPLUMS"},
	{11092, "burgalrystore_sfse", "ws_peeling_ceiling2"}, {11092, "burgalrystore_sfse", "ws_warehswin1"},
	{11092, "burgalrystore_sfse", "ws_warehswin2"}, {11092, "burgalrystore_sfse", "ws_whousedoor1"}, {2212, "burger_tray", "bkidside"},
	{2212, "burger_tray", "btdeck256"}, {2212, "burger_tray", "burgerfries"}, {2212, "burger_tray", "burgerfront"},
	{2212, "burger_tray", "burgerfront2"}, {2212, "burger_tray", "burgerkids"}, {2212, "burger_tray", "burgerside"},
	{2212, "burger_tray", "burgertop"}, {2212, "burger_tray", "chickenskin"}, {2212, "burger_tray", "drinktop_cb"},
	{2212, "burger_tray", "fries_cb"}, {2212, "burger_tray", "pplate"}, {2212, "burger_tray", "salad"},
	{2212, "burger_tray", "sprinkler"}, {2212, "burger_tray", "sprinkles"}, {2212, "burger_tray", "sprunk_cb"},
	{6257, "burgsh01_law", "burgroof01_LAw"}, {6257, "burgsh01_law", "fastfd01_LA"}, {6257, "burgsh01_law", "newall2"},
	{14383, "burg_1", "burglry_wall3"}, {14383, "burg_1", "carpet4kb"}, {14383, "burg_1", "curtain_sink2"},
	{14383, "burg_1", "gragedoorkb1"}, {14383, "burg_1", "hospital_wall2"}, {14383, "burg_1", "kb_kit_wal1"},
	{14383, "burg_1", "kit_windo_12"}, {14383, "burg_1", "la_carp3"}, {14383, "burg_1", "mp_diner_woodwall"},
	{14383, "burg_1", "wallpapkb1"}, {17958, "burnsalpha", "plantb256"}, {17545, "burnsground", "ahoodgardr"},
	{17545, "burnsground", "bluapartwall1_256"}, {17545, "burnsground", "dirtyredwall512"}, {17545, "burnsground", "indund_64"},
	{17545, "burnsground", "LAroad_offroad1"}, {17545, "burnsground", "newall1-1128"}, {17545, "burnsground", "newall10_seamless"},
	{1257, "bustopm", "bus shelter"}, {1257, "bustopm", "CJ_BS_MENU5"}, {1257, "bustopm", "CJ_GREENMETAL"},
	{10012, "cables_sfe", "dt_overwire_t"}, {10143, "calfed_sfe", "calfederal1"}, {10143, "calfed_sfe", "calfederal2"},
	{10143, "calfed_sfe", "calfederal3"}, {10143, "calfed_sfe", "calfederal6"}, {10143, "calfed_sfe", "calfederal7"},
	{10143, "calfed_sfe", "slidingdoor01_128"}, {6094, "canalsg_law", "block2bb"}, {6094, "canalsg_law", "Bow_church_grass_gen"},
	{6094, "canalsg_law", "sw_brewbrick01"}, {6094, "canalsg_law", "venicearch1"}, {6094, "canalsg_law", "ws_sheetwood_clean"},
	{642, "canopy", "kb_canopybse64"}, {642, "canopy", "weathered wood2 64HV"}, {642, "canopy", "wood02"},
	{5766, "capitol_lawn", "alleygroundb256"}, {5766, "capitol_lawn", "capitol1_LAwN"}, {5766, "capitol_lawn", "capitol2_LAwN"},
	{5766, "capitol_lawn", "capitol3_LAwN"}, {5766, "capitol_lawn", "capitolwin1_LAwN"}, {5766, "capitol_lawn", "hilcouwall2"},
	{5766, "capitol_lawn", "lasjmscruffwall3"}, {5766, "capitol_lawn", "vgs_whitewall_128"},
	{9276, "caravanprk_sfn", "desertgryard256"}, {9276, "caravanprk_sfn", "sfn_rocktbrn128"}, {9276, "caravanprk_sfn", "sl_sfndirt01"},
	{9276, "caravanprk_sfn", "sl_sfngrass01"}, {10051, "carimpound_sfe", "poundroofblock_sfe"},
	{10051, "carimpound_sfe", "poundroofsupport_sfe"}, {10051, "carimpound_sfe", "poundwall1_sfe"}, {14478, "carlsflr", "carlscock"},
	{14476, "carlslounge", "ah_bantisto"}, {14476, "carlslounge", "AH_barpole1"}, {14476, "carlslounge", "ah_blu_paper"},
	{14476, "carlslounge", "ah_blu_paper2"}, {14476, "carlslounge", "AH_cheapredcarpet"}, {14476, "carlslounge", "AH_plnskirting"},
	{14476, "carlslounge", "breezewallbse"}, {14476, "carlslounge", "burg_curt_1"}, {14489, "carlspics", "ah_bdflwd"},
	{14489, "carlspics", "AH_flroortile7"}, {14489, "carlspics", "AH_landscap1"}, {14489, "carlspics", "AH_landscap3"},
	{14489, "carlspics", "AH_picture2"}, {14489, "carlspics", "AH_picture3"}, {14489, "carlspics", "AH_picture4"},
	{14489, "carlspics", "AH_wdpanelend"}, {14471, "carls_kit1", "barbersflr1"}, {14471, "carls_kit1", "kit_table"},
	{14471, "carls_kit1", "wall1"}, {14471, "carls_kit1", "wall3"}, {14471, "carls_kit1", "wall7"},
	{14472, "carls_kit2", "curtain_sinkb"}, {14472, "carls_kit2", "fridge_1b"}, {14472, "carls_kit2", "micro1"},
	{14472, "carls_kit2", "stove_1"}, {14472, "carls_kit2", "wall2b"}, {14472, "carls_kit2", "wall4b"},
	{14472, "carls_kit2", "wall5b"}, {8420, "carpark3_lvs", "Corner1_128"}, {8420, "carpark3_lvs", "greyground12802"},
	{8420, "carpark3_lvs", "greystones01_128"}, {8420, "carpark3_lvs", "newgrnd1_128"}, {8420, "carpark3_lvs", "Pave02_128"},
	{9254, "carparkssfn", "decoacwallbtm1_256"}, {9254, "carparkssfn", "parking2"}, {9254, "carparkssfn", "parking2plain"},
	{9254, "carparkssfn", "sf_junction1"}, {9254, "carparkssfn", "sf_junction2"}, {11145, "carrierint_sfs", "ab_ACcarrierDoor"},
	{11145, "carrierint_sfs", "ab_BoltPanel"}, {11145, "carrierint_sfs", "chainlinkac1_128"}, {11145, "carrierint_sfs", "noodpot_64"},
	{11145, "carrierint_sfs", "ws_accables"}, {11145, "carrierint_sfs", "ws_cogtrack"}, {11145, "carrierint_sfs", "ws_doorfront"},
	{11145, "carrierint_sfs", "ws_floor2"}, {11145, "carrierint_sfs", "ws_shipmetal3"}, {11145, "carrierint_sfs", "ws_shipmetal4"},
	{3113, "carrierxr", "ws_carrierdeckbase"}, {3113, "carrierxr", "ws_controlpanel1"}, {3113, "carrierxr", "ws_decklines"},
	{3113, "carrierxr", "ws_shipmetal1"}, {10770, "carrier_sfse", "ws_bridgewins"}, {10770, "carrier_sfse", "ws_carrierdecals"},
	{10770, "carrier_sfse", "ws_hulltemp2"}, {3850, "carshowglass_sfsx", "ws_carshowwin1"},
	{3850, "carshowglass_sfsx", "ws_glass_balustrade_better"}, {11301, "carshow_sfse", "concpanel_la"},
	{11301, "carshow_sfse", "concreteslab_small"}, {11301, "carshow_sfse", "laspryshpsig1"}, {11301, "carshow_sfse", "ws_basheddoor1"},
	{11301, "carshow_sfse", "ws_carshowdoor1"}, {11301, "carshow_sfse", "ws_officy_ceiling"},
	{11301, "carshow_sfse", "ws_rollerdoor_silver"}, {11301, "carshow_sfse", "ws_Transfender_dirty"},
	{11301, "carshow_sfse", "ws_wangcar1"}, {11301, "carshow_sfse", "ws_wangcar2"}, {1458, "cart", "CJ_GENER_WHEEL"},
	{1458, "cart", "CJ_tyre"}, {14407, "carter_block", "ab_corFloor"}, {14407, "carter_block", "ab_stripped_floor2"},
	{14407, "carter_block", "black256"}, {14407, "carter_block", "dt_ind_door"}, {14407, "carter_block", "firestation_rollerdoor2"},
	{14407, "carter_block", "mp_carter_bars"}, {14407, "carter_block", "mp_carter_bwall"},
	{14407, "carter_block", "mp_carter_ceiling"}, {14407, "carter_block", "mp_carter_gangway"},
	{14407, "carter_block", "mp_carter_girder"}, {14407, "carter_block", "mp_carter_light"},
	{14407, "carter_block", "mp_carter_partyspot"}, {14407, "carter_block", "mp_carter_sep"},
	{14407, "carter_block", "mp_carter_smoothwall"}, {14407, "carter_block", "mp_carter_tramp"},
	{14407, "carter_block", "mp_carter_tramp1"}, {14407, "carter_block", "mp_carter_wall"},
	{14407, "carter_block", "mp_carter_wallbot"}, {14407, "carter_block", "mp_carter_whitewall"},
	{14407, "carter_block", "mp_carter_windows"}, {14407, "carter_block", "zebra_skin"}, {14415, "carter_block_2", "cd_wall1"},
	{14415, "carter_block_2", "cl_of_wltemp"}, {14415, "carter_block_2", "mp_carter_cage"},
	{14415, "carter_block_2", "mp_carter_cuffs"}, {14415, "carter_block_2", "mp_carter_floor"},
	{14415, "carter_block_2", "mp_carter_pcarpet"}, {14415, "carter_block_2", "mp_carter_statue"},
	{14415, "carter_block_2", "mp_carter_wallpaper"}, {14415, "carter_block_2", "mp_gs_woodpanel"},
	{14415, "carter_block_2", "mp_gs_woodpanel1"}, {14415, "carter_block_2", "mp_motel_carpet1"},
	{14415, "carter_block_2", "mp_shop_floor2"}, {14415, "carter_block_2", "walp29S"}, {14415, "carter_block_2", "ws_doormat"},
	{17933, "carter_mainmap", "mp_apt1_brokedoor"}, {17933, "carter_mainmap", "mp_carter_carpet"},
	{17933, "carter_mainmap", "mp_carter_doorway"}, {17933, "carter_mainmap", "mp_carter_greenwall"},
	{14466, "carter_outside", "comptwall22"}, {14466, "carter_outside", "gangwin2_LAe"},
	{14466, "carter_outside", "mp_carter_corrwall"}, {7088, "casinoshops1", "247sign1"}, {7088, "casinoshops1", "247sign2"},
	{7088, "casinoshops1", "crapdoor1_256"}, {7088, "casinoshops1", "fakestone1_LA"}, {7088, "casinoshops1", "GB_nastybar19"},
	{7088, "casinoshops1", "hosp02_law"}, {7088, "casinoshops1", "inwindow1shdw64"}, {7088, "casinoshops1", "LAredwall"},
	{7088, "casinoshops1", "sexsign1_256"}, {7088, "casinoshops1", "venshade01_law"}, {7088, "casinoshops1", "vgnbordpnk1_256"},
	{7088, "casinoshops1", "vgshopwndw01_128"}, {7088, "casinoshops1", "vgsn_yelwall"}, {7088, "casinoshops1", "vinesign1_LAw"},
	{14577, "casinovault01", "ab_concrete"}, {14577, "casinovault01", "ab_corWallLwr"}, {14577, "casinovault01", "ab_corWallUpr"},
	{14577, "casinovault01", "ab_loadbayMark01"}, {14577, "casinovault01", "ab_mottleSteps"}, {14577, "casinovault01", "ab_shutter1"},
	{14577, "casinovault01", "carp04S"}, {14577, "casinovault01", "cof_wood1"}, {14577, "casinovault01", "compound_roof1"},
	{14577, "casinovault01", "conc_wall_128H"}, {14577, "casinovault01", "copbtm_brown"},
	{14577, "casinovault01", "dts_elevator_door"}, {14577, "casinovault01", "vaultFloor"}, {14577, "casinovault01", "vaultWall"},
	{14577, "casinovault01", "wallTrim2"}, {2176, "casino_props", "flameOptic"}, {2176, "casino_props", "marblebox"},
	{14582, "casmafbar", "ab_CasRomCeil"}, {14582, "casmafbar", "ab_CasRomTile1"}, {14582, "casmafbar", "beerfridge128"},
	{14582, "casmafbar", "bottlestacked256"}, {14582, "casmafbar", "ginoptic128"}, {14582, "casmafbar", "martinioptic128"},
	{14582, "casmafbar", "opticbracket128"}, {14582, "casmafbar", "vodkaoptic128"}, {14582, "casmafbar", "whiskyoptic128"},
	{8501, "casroyale", "royale02_128"}, {8501, "casroyale", "royaledoor01_128"}, {8501, "casroyale", "royaleledge01"},
	{8501, "casroyale", "royaleroof01_64"}, {8501, "casroyale", "royalesign02_256"}, {8501, "casroyale", "royalewall01_128"},
	{8501, "casroyale", "royalewall02_128"}, {8501, "casroyale", "royalewall03_128"}, {8501, "casroyale", "royalewindow01_128"},
	{2799, "castable", "chrome_pipe_32"}, {2799, "castable", "cl_ashtray"}, {2799, "castable", "cl_cig"},
	{2799, "castable", "cl_cigar_1"}, {2799, "castable", "cl_hiball2"}, {2799, "castable", "cl_knif_fork"},
	{2799, "castable", "cl_napkin"}, {2799, "castable", "cl_redwine_gls"}, {2799, "castable", "cl_seat2temp"},
	{2799, "castable", "cl_s_and_p"}, {2799, "castable", "cl_table_top_256"}, {2799, "castable", "cl_tble_lamp"},
	{2799, "castable", "cl_tbl_shado2a"}, {2799, "castable", "cl_winebtl1"}, {2799, "castable", "cl_winebtl2"},
	{10368, "cathedral_sfs", "dirt64b2"}, {10368, "cathedral_sfs", "ws_bigwooddoor"}, {10368, "cathedral_sfs", "ws_coppersheet"},
	{10368, "cathedral_sfs", "ws_woodyhedge"}, {2343, "cb_bar_bits", "CJ_POLISHED"}, {2767, "cb_details", "100%fowl_cb"},
	{2767, "cb_details", "CJ_cbell_top"}, {2767, "cb_details", "CJ_cb_bin1"}, {2767, "cb_details", "cluckinbig_cb"},
	{2767, "cb_details", "fillets_cb"}, {2767, "cb_details", "fillet_cb"}, {2767, "cb_details", "kidsfront_cb"},
	{2767, "cb_details", "pattern1_cb"}, {2767, "cb_details", "wrapfood_cb"}, {2767, "cb_details", "wrapper_cb"},
	{3462, "ceaserangel", "ceaser_angel01_256"}, {8618, "ceasersign", "Caligulasign01_256"},
	{8618, "ceasersign", "ceaserspillar01_128"}, {8618, "ceasersign", "ceaserssign01_128"},
	{8618, "ceasersign", "ceaserssign02_256"}, {8618, "ceasersign", "mexreast1_256"}, {13139, "cecuntetunnel", "ab_walllite"},
	{13139, "cecuntetunnel", "airportwall_2_2"}, {13139, "cecuntetunnel", "conc_wall_stripd128H"},
	{13139, "cecuntetunnel", "dirtywall_256"}, {13139, "cecuntetunnel", "hangingwires2"}, {13139, "cecuntetunnel", "Pave04_128"},
	{3741, "cehillhse14", "comptonbrij1"}, {3741, "cehillhse14", "comptwindo4"}, {3741, "cehillhse14", "glassblocks1"},
	{3741, "cehillhse14", "ladukfeen1"}, {3741, "cehillhse14", "swimpoolbtm1_128"}, {3741, "cehillhse14", "swimpoolside1_128"},
	{3048, "cemenx", "ct_hole"}, {5710, "cemetery_law", "brickgrey"}, {5710, "cemetery_law", "cemebuild01_law"},
	{5710, "cemetery_law", "cemebuild02_law"}, {5710, "cemetery_law", "cemewall04_law"}, {5710, "cemetery_law", "churcharch_law"},
	{5710, "cemetery_law", "conc_wall2_128H"}, {5710, "cemetery_law", "desmud"}, {5710, "cemetery_law", "desmudgrass"},
	{5710, "cemetery_law", "Grass_path_law"}, {5710, "cemetery_law", "grave01_law"}, {5710, "cemetery_law", "hottop6_law"},
	{5710, "cemetery_law", "mausdoor01_law"}, {5710, "cemetery_law", "mauswall01_law"}, {5710, "cemetery_law", "mauswall02_law"},
	{5710, "cemetery_law", "mauswall03_law"}, {5710, "cemetery_law", "ppinkwallb512"}, {5712, "cemetint_law", "crypttv_law"},
	{5712, "cemetint_law", "lw_seat2_law"}, {5712, "cemetint_law", "pizzabox"}, {1597, "centralresac1", "blueash"},
	{1597, "centralresac1", "fuzzyplant256"}, {1597, "centralresac1", "hedge2_128"}, {1597, "centralresac1", "kbbark_test1"},
	{1597, "centralresac1", "kbtree3_test"}, {1597, "centralresac1", "kbtree4_test"}, {13363, "cephotoblockcs_t", "alleydoor3"},
	{13363, "cephotoblockcs_t", "BigS01_law"}, {13363, "cephotoblockcs_t", "dustyjade_128"},
	{13363, "cephotoblockcs_t", "lampost_16clr"}, {13363, "cephotoblockcs_t", "sw_door16"}, {13363, "cephotoblockcs_t", "sw_wall_05"},
	{13363, "cephotoblockcs_t", "sw_wind23"}, {13363, "cephotoblockcs_t", "wallwashv128"}, {3335, "ceroadsigns", "stormdrain3_nt"},
	{3335, "ceroadsigns", "sw_barberpole"}, {3335, "ceroadsigns", "sw_mailbox"}, {3335, "ceroadsigns", "sw_roadsign"},
	{13364, "cetown3cs_t", "des_cafesign"}, {13364, "cetown3cs_t", "floor_tileone_256"}, {13364, "cetown3cs_t", "pierboards_la"},
	{13364, "cetown3cs_t", "sw_barnwood2"}, {13364, "cetown3cs_t", "sw_door17"}, {13364, "cetown3cs_t", "sw_door18"},
	{13364, "cetown3cs_t", "sw_slate01"}, {13364, "cetown3cs_t", "sw_storewin01"}, {13364, "cetown3cs_t", "sw_wall03"},
	{13364, "cetown3cs_t", "sw_wind10"}, {13364, "cetown3cs_t", "sw_wind15"}, {13364, "cetown3cs_t", "sw_wind18"},
	{13364, "cetown3cs_t", "taxitop01"}, {13364, "cetown3cs_t", "ws_sandstone2"}, {13078, "cewrehse", "corr_roof1"},
	{13078, "cewrehse", "sw_wind13"}, {12946, "ce_bankalley1", "alleywall3"}, {12946, "ce_bankalley1", "Bow_abbmetaldoor"},
	{12946, "ce_bankalley1", "hospunder_law"}, {12946, "ce_bankalley1", "lalightledge"}, {12946, "ce_bankalley1", "newindow13"},
	{12946, "ce_bankalley1", "pizza_wellstacked"}, {12946, "ce_bankalley1", "sjmALLEY"}, {12946, "ce_bankalley1", "sw_brick03"},
	{12946, "ce_bankalley1", "sw_dicksounds"}, {12946, "ce_bankalley1", "sw_door09"}, {12946, "ce_bankalley1", "sw_furnisign"},
	{12946, "ce_bankalley1", "sw_stairs1"}, {12946, "ce_bankalley1", "sw_stereosign"}, {12946, "ce_bankalley1", "sw_storewin02"},
	{12946, "ce_bankalley1", "sw_warewall"}, {12946, "ce_bankalley1", "sw_warewin"}, {12946, "ce_bankalley1", "sw_wind05"},
	{12946, "ce_bankalley1", "ws_ammu-awning"}, {12946, "ce_bankalley1", "ws_basheddoor2"},
	{12946, "ce_bankalley1", "ws_boxhouse_wins1"}, {12944, "ce_bankalley2", "newall5-2"}, {12944, "ce_bankalley2", "sw_awningsx4"},
	{12944, "ce_bankalley2", "sw_brick04"}, {12944, "ce_bankalley2", "sw_dryclean"}, {12944, "ce_bankalley2", "sw_genx4"},
	{12944, "ce_bankalley2", "sw_jazz"}, {12944, "ce_bankalley2", "sw_litlad"}, {12944, "ce_bankalley2", "sw_wind08"},
	{12822, "ce_bankalley3", "bankside_256"}, {12822, "ce_bankalley3", "Metal1_128"}, {12822, "ce_bankalley3", "sffront5_256"},
	{12822, "ce_bankalley3", "sw_Fleishberg01"}, {3378, "ce_breweryref", "sw_keg01"}, {3378, "ce_breweryref", "sw_keg02"},
	{3314, "ce_burbhouse", "black_128"}, {3314, "ce_burbhouse", "notice02"}, {3314, "ce_burbhouse", "shingles4"},
	{3314, "ce_burbhouse", "sw_door13"}, {3314, "ce_burbhouse", "sw_lattice"}, {3314, "ce_burbhouse", "sw_shedwindow1"},
	{3314, "ce_burbhouse", "sw_wallbrick_06"}, {3314, "ce_burbhouse", "ventc64"}, {3314, "ce_burbhouse", "wallbeigenew256"},
	{13060, "ce_fact01", "airconfrnt1_128"}, {13060, "ce_fact01", "airportmetalwall256"}, {13060, "ce_fact01", "des_hooswin2"},
	{13060, "ce_fact01", "des_sherrifwall1"}, {13060, "ce_fact01", "glassblock_law"}, {13060, "ce_fact01", "puttywall1"},
	{13059, "ce_fact03", "GB_truckdepot19"}, {13059, "ce_fact03", "Ind_PKabin"}, {13059, "ce_fact03", "shitydoor1_256"},
	{13059, "ce_fact03", "sw_corrugtile"}, {13059, "ce_fact03", "sw_garwind"}, {13059, "ce_fact03", "sw_newcorrug"},
	{13059, "ce_fact03", "sw_shedwall01"}, {3374, "ce_farmxref", "desertstones256"}, {3374, "ce_farmxref", "forestfloor256"},
	{3374, "ce_farmxref", "forestfloorbranch256"}, {3374, "ce_farmxref", "sw_barndoor1"}, {3374, "ce_farmxref", "sw_barndoor2"},
	{3374, "ce_farmxref", "sw_barnfloor1"}, {3374, "ce_farmxref", "sw_barnwind01"}, {3374, "ce_farmxref", "sw_barnwood1"},
	{3374, "ce_farmxref", "sw_barnwood4"}, {3374, "ce_farmxref", "sw_barnwood5"}, {3374, "ce_farmxref", "sw_woodflloorsplat"},
	{12871, "ce_ground01", "cs_rockdetail2"}, {12871, "ce_ground01", "cw2_mountrock"}, {12871, "ce_ground01", "desertgravelgrassroad"},
	{12871, "ce_ground01", "desgreengrassmix"}, {12871, "ce_ground01", "des_dirt1Grass"}, {12871, "ce_ground01", "dirttracksforest"},
	{12871, "ce_ground01", "dirttracksgrass256"}, {12871, "ce_ground01", "forestfloorgrass"},
	{12871, "ce_ground01", "grassbrn2rockbrnG"}, {12871, "ce_ground01", "grassbrn2rockbrnG2"}, {12871, "ce_ground01", "rocktbrn128"},
	{12871, "ce_ground01", "sw_rockgrass1"}, {12871, "ce_ground01", "sw_rockgrassB1"}, {12871, "ce_ground01", "sw_rockgrassB2"},
	{12871, "ce_ground01", "sw_stones"}, {12871, "ce_ground01", "sw_stonesgrass"}, {12823, "ce_ground02", "desertgravelgrass256"},
	{12823, "ce_ground02", "sw_sandgrass"}, {12823, "ce_ground02", "sw_warewall2"}, {12870, "ce_ground03", "carpark_256128"},
	{12870, "ce_ground03", "desclifftypebs"}, {12870, "ce_ground03", "desclifftypebsmix"}, {12870, "ce_ground03", "desmudtrail"},
	{12870, "ce_ground03", "sw_grass01"}, {12870, "ce_ground03", "sw_grass01a"}, {12869, "ce_ground04", "carpark_128"},
	{12869, "ce_ground04", "desertgryard256grs2"}, {12869, "ce_ground04", "grassgrnbrn256"}, {12869, "ce_ground04", "rocktbrn128blnd"},
	{12866, "ce_ground07", "brngrss2stones"}, {12866, "ce_ground07", "desgrassbrn"}, {12866, "ce_ground07", "sw_crops"},
	{12866, "ce_ground07", "sw_grassB01"}, {12825, "ce_ground08", "brngrss2stonesB"}, {12825, "ce_ground08", "cw2_mountdirt"},
	{12825, "ce_ground08", "cw2_mountdirt2grass"}, {12825, "ce_ground08", "desgrassbrn_grn"}, {12825, "ce_ground08", "dirtblendlit"},
	{12825, "ce_ground08", "grassbrn2rockbrn"}, {12825, "ce_ground08", "sw_rock1a"}, {13235, "ce_ground09", "des_ranchwall1"},
	{13206, "ce_ground10", "desgreengrasstrckend"}, {13206, "ce_ground10", "des_dirt2 trackl"}, {13206, "ce_ground10", "des_dirt2"},
	{13206, "ce_ground10", "des_dirt2grass"}, {13206, "ce_ground10", "des_dirt2track"}, {13206, "ce_ground10", "des_shingles"},
	{12908, "ce_ground11", "grassdead1"}, {12908, "ce_ground11", "grassdead1blnd"}, {12908, "ce_ground11", "sw_dirt01"},
	{12908, "ce_ground11", "sw_farmroad01"}, {13081, "ce_ground13", "concretedust2_line"}, {13081, "ce_ground13", "dustyconcrete"},
	{13035, "ce_ground14", "desertstones256grass"}, {13035, "ce_ground14", "desmuddesgrsblend"}, {12805, "ce_loadbay", "sw_container"},
	{12805, "ce_loadbay", "sw_container2"}, {12805, "ce_loadbay", "sw_container3"}, {12805, "ce_loadbay", "sw_corrug"},
	{12805, "ce_loadbay", "sw_pal"}, {12805, "ce_loadbay", "sw_shutters2"}, {12805, "ce_loadbay", "sw_smlite"},
	{12805, "ce_loadbay", "sw_trailer"}, {12805, "ce_loadbay", "sw_trailerred"}, {12805, "ce_loadbay", "sw_waredoor"},
	{12805, "ce_loadbay", "sw_warewall3"}, {12805, "ce_loadbay", "sw_warewin2"}, {12805, "ce_loadbay", "sw_wheel1"},
	{12805, "ce_loadbay", "sw_wheelT"}, {13461, "ce_nitelite", "ws_boxhouse_wins6nite"}, {12992, "ce_oldbridge", "banding8_64"},
	{12992, "ce_oldbridge", "BLOCK2_high"}, {12992, "ce_oldbridge", "Gen_Rusty_Poll"}, {12992, "ce_oldbridge", "Gen_Scrap_Wheel_Rim"},
	{12978, "ce_payspray", "airvent2_128"}, {12978, "ce_payspray", "sf_spray2"}, {12978, "ce_payspray", "sf_spray3"},
	{12978, "ce_payspray", "sf_spray_floor1"}, {12978, "ce_payspray", "sf_spray_floor2"}, {12978, "ce_payspray", "spraypipegz1"},
	{12978, "ce_payspray", "sw_shedwall03"}, {13361, "ce_pizza", "brickred2"}, {13361, "ce_pizza", "comptwall36"},
	{13361, "ce_pizza", "FastFood1_LAe"}, {13361, "ce_pizza", "Parking1_LAe2"}, {13361, "ce_pizza", "pizzasign2LA"},
	{13361, "ce_pizza", "pizzasign_LAe"}, {13003, "ce_racestart", "CJ_TARTAN"}, {13003, "ce_racestart", "lw_seat2"},
	{13003, "ce_racestart", "sa_wood07_128"}, {3411, "ce_railbridge", "rusta256128"}, {13295, "ce_terminal", "cabin3"},
	{13295, "ce_terminal", "des_adobewall2"}, {13295, "ce_terminal", "Gen_Metal"}, {13295, "ce_terminal", "grass4dirtyb"},
	{13295, "ce_terminal", "mp_gimp_oilfloor"}, {13295, "ce_terminal", "sw_truckterm"}, {13295, "ce_terminal", "whitewall256"},
	{13295, "ce_terminal", "ws_peeling_ceiling1"}, {12831, "ce_traintrack1", "sw_traingravelB1"},
	{12831, "ce_traintrack1", "sw_tunnel01"}, {12831, "ce_traintrack1", "sw_tunnel02bmp"}, {12831, "ce_traintrack1", "ws_traintrax1"},
	{12832, "ce_traintrack2", "sw_backdoor02"}, {11089, "cf_metals_sfse", "ws_altz_wall8_top"}, {1594, "chairsntable", "mallfloor6"},
	{5986, "chateau_lawn", "backstagefloor1_256"}, {5986, "chateau_lawn", "chatarc01_law"}, {5986, "chateau_lawn", "chatbalc01_law"},
	{5986, "chateau_lawn", "chatbalc02_law"}, {5986, "chateau_lawn", "chatbalc03_law"}, {5986, "chateau_lawn", "chatshade02_law"},
	{5986, "chateau_lawn", "chatwall01_law"}, {5986, "chateau_lawn", "chatwall03_law"}, {5986, "chateau_lawn", "chatwin01_law"},
	{5986, "chateau_lawn", "chatwin02_law"}, {5986, "chateau_lawn", "doorkb_1_256"}, {5123, "chemgrnd_las2", "newall1-1"},
	{5123, "chemgrnd_las2", "newall1-3seamless"}, {5123, "chemgrnd_las2", "sanpedock997"}, {5123, "chemgrnd_las2", "sanpedock999"},
	{5123, "chemgrnd_las2", "sjmhicut5las"}, {5123, "chemgrnd_las2", "Was_side"}, {10252, "chgatedes", "corrugated2"},
	{2930, "chgatex", "NOPARK"}, {5444, "chicano10_lae", "compfence1_LAe"}, {5444, "chicano10_lae", "comptsign4_LAe"},
	{5444, "chicano10_lae", "comptsign5_LAe"}, {5444, "chicano10_lae", "comptsign8_LAe"}, {5444, "chicano10_lae", "comptwall10"},
	{5444, "chicano10_lae", "comptwall15"}, {5444, "chicano10_lae", "comptwall32"}, {5444, "chicano10_lae", "comptwall5"},
	{5444, "chicano10_lae", "crakwall1_LAe2"}, {5444, "chicano10_lae", "desmuddesgrsblend_sw"}, {5444, "chicano10_lae", "downtwin16"},
	{5444, "chicano10_lae", "downtwin4"}, {5444, "chicano10_lae", "eris_5"}, {5444, "chicano10_lae", "frame_LA"},
	{5444, "chicano10_lae", "gangshop2_LAe"}, {5444, "chicano10_lae", "gangshop8_LAe"}, {5444, "chicano10_lae", "gangsign5_LAe"},
	{5444, "chicano10_lae", "GB_nastybar22"}, {5444, "chicano10_lae", "gm_labuld2_d"}, {5444, "chicano10_lae", "grassdeadbrn256"},
	{5444, "chicano10_lae", "g_256"}, {5444, "chicano10_lae", "heat_04"}, {5444, "chicano10_lae", "newall7"},
	{5444, "chicano10_lae", "santall4"}, {5444, "chicano10_lae", "ws_garagedoor2_green"}, {5449, "chicanotr1_lae", "eb_firesc1_LAe2"},
	{5449, "chicanotr1_lae", "eb_firesc2_LAe2"}, {5449, "chicanotr1_lae", "fireesc1_LAe"}, {5449, "chicanotr1_lae", "lasjmfnce1"},
	{5449, "chicanotr1_lae", "sunsfire1b_LAw"}, {5449, "chicanotr1_lae", "sunsfire1_LAw"}, {2215, "chick_tray", "bucket_cb"},
	{2215, "chick_tray", "dip32"}, {2215, "chick_tray", "friesbox_cb"}, {2215, "chick_tray", "plaincup_cb"},
	{2215, "chick_tray", "strawroof_cb"}, {10031, "chinatown2", "patio1"}, {10031, "chinatown2", "rooftiles4"},
	{10031, "chinatown2", "rooftiles4b"}, {10031, "chinatown2", "ws_plasterwall2"}, {10031, "chinatown2", "ws_red_wood2"},
	{10031, "chinatown2", "ws_trans_window1"}, {8639, "chinatownmall", "ctmall01_128"}, {8639, "chinatownmall", "ctmall02_64"},
	{8639, "chinatownmall", "ctmall03_64"}, {8639, "chinatownmall", "ctmall04_64"}, {8639, "chinatownmall", "ctmall05"},
	{8639, "chinatownmall", "ctmall06"}, {8639, "chinatownmall", "ctmall07"}, {8639, "chinatownmall", "ctmall08"},
	{8639, "chinatownmall", "ctmall10_64"}, {8639, "chinatownmall", "ctmall11_64"}, {8639, "chinatownmall", "ctmall12_128"},
	{8639, "chinatownmall", "ctmall13"}, {8639, "chinatownmall", "ctmall15_128"}, {8639, "chinatownmall", "ctmall16_128"},
	{8639, "chinatownmall", "ctmall17_128"}, {8639, "chinatownmall", "ctmall18_64"}, {8639, "chinatownmall", "ctmall19_128"},
	{8639, "chinatownmall", "ctmallsign01_128"}, {8639, "chinatownmall", "ziplogo1_128"}, {9494, "chinatownsfe", "awning1_SFe"},
	{9494, "chinatownsfe", "awning2T_SFe"}, {9494, "chinatownsfe", "awning3_SFe"}, {9494, "chinatownsfe", "chtown4_sf"},
	{9494, "chinatownsfe", "chtown5_sf"}, {9494, "chinatownsfe", "chtown6_sf"}, {9494, "chinatownsfe", "chtown7_sf"},
	{9494, "chinatownsfe", "chtown8_sf"}, {9494, "chinatownsfe", "chtown9_sf"}, {9494, "chinatownsfe", "chtown_brightcarcafe"},
	{9494, "chinatownsfe", "chtown_todaydayrestaurant"}, {9494, "chinatownsfe", "partition_gz"}, {9494, "chinatownsfe", "rooftop_gz1"},
	{9494, "chinatownsfe", "sf_chinashop1"}, {9494, "chinatownsfe", "sf_chinashopground"}, {9494, "chinatownsfe", "sf_windos_11a"},
	{9494, "chinatownsfe", "sf_windos_11b"}, {9494, "chinatownsfe", "sf_windos_11wall"}, {9494, "chinatownsfe", "sf_windos_12a"},
	{9494, "chinatownsfe", "sf_windos_12b"}, {9494, "chinatownsfe", "sf_windos_12_wall"}, {9494, "chinatownsfe", "sf_windos_13a"},
	{9494, "chinatownsfe", "sf_windos_13b"}, {9494, "chinatownsfe", "sf_windos_14b"}, {9494, "chinatownsfe", "wallwash128"},
	{9494, "chinatownsfe", "Was_scrpyd_baler_floor"}, {9494, "chinatownsfe", "woozie_hall"}, {1568, "china_light", "chinlite_sfe"},
	{14571, "chinese_furn", "ab_tv_noise"}, {14571, "chinese_furn", "ab_tv_tricas1"}, {14571, "chinese_furn", "ab_tv_tricas2"},
	{14571, "chinese_furn", "chinese9"}, {14571, "chinese_furn", "chinese9b"}, {1859, "chips2", "chip_stck1"},
	{1859, "chips2", "chip_stck2"}, {1859, "chips2", "chip_stck3"}, {1859, "chips2", "chip_stck4"}, {1859, "chips2", "chip_stck5"},
	{1859, "chips2", "chip_stck6"}, {1859, "chips2", "indx_chip132"}, {1859, "chips2", "indx_chip164"},
	{1859, "chips2", "indx_chip232"}, {1859, "chips2", "indx_chip264"}, {1859, "chips2", "indx_chip332"},
	{1859, "chips2", "indx_chip364"}, {1859, "chips2", "indx_chip432"}, {1859, "chips2", "indx_chip464"},
	{1859, "chips2", "indx_chip532"}, {1859, "chips2", "indx_chip564"}, {1859, "chips2", "indx_chip632"},
	{1859, "chips2", "indx_chip664"}, {8680, "chnatwnfnce", "ctmallfence"}, {3007, "chopcopx", "LAPDM2"},
	{9931, "churchsfe", "church_sfe1"}, {9931, "churchsfe", "church_sfe2"}, {9931, "churchsfe", "church_sfe3"},
	{9931, "churchsfe", "church_sfe4"}, {9931, "churchsfe", "church_sfe5"}, {9931, "churchsfe", "gravelkb_128"},
	{9931, "churchsfe", "pier69_roof1"}, {9931, "churchsfe", "posh_eagle3_sfe"}, {3044, "ciggarx", "ciggy_burn"},
	{3044, "ciggarx", "CJ_bark"}, {3044, "ciggarx", "CJ_KITCHDOOR"}, {3027, "ciggyx", "ciggy"},
	{17851, "cinemart_alpha", "autoarrow_lae2"}, {17851, "cinemart_alpha", "carwash_sign"}, {17851, "cinemart_alpha", "kb_ivy2_256"},
	{17851, "cinemart_alpha", "lasjmslumwud2"}, {17851, "cinemart_alpha", "shadow_law"}, {3980, "cityhall_lan", "bevdoor03_law"},
	{3980, "cityhall_lan", "cityhalldoor1"}, {3980, "cityhall_lan", "cityhallroof"}, {3980, "cityhall_lan", "cityhalltow1"},
	{3980, "cityhall_lan", "cityhalltow2"}, {3980, "cityhall_lan", "citywall1"}, {3980, "cityhall_lan", "citywall2"},
	{3980, "cityhall_lan", "citywall3"}, {3980, "cityhall_lan", "citywall4"}, {3980, "cityhall_lan", "citywall5"},
	{3980, "cityhall_lan", "citywin1"}, {3980, "cityhall_lan", "LAcityhwal1"}, {3980, "cityhall_lan", "LAcityhwin1"},
	{3980, "cityhall_lan", "LAcityhwin2"}, {3980, "cityhall_lan", "man_cellarfloor128"}, {3980, "cityhall_lan", "sl_LAbedingsoil"},
	{10377, "cityhall_sfs", "banding4_64HV"}, {10377, "cityhall_sfs", "ws_artgallery"}, {10377, "cityhall_sfs", "ws_artgallery3"},
	{10377, "cityhall_sfs", "ws_bigblackdoor"}, {10377, "cityhall_sfs", "ws_cityhall1"}, {10377, "cityhall_sfs", "ws_cityhall2"},
	{10377, "cityhall_sfs", "ws_cityhall3"}, {10377, "cityhall_sfs", "ws_cityhall4"}, {10377, "cityhall_sfs", "ws_cityhall5"},
	{10377, "cityhall_sfs", "ws_cityhall6"}, {10377, "cityhall_sfs", "ws_cityhall7"}, {10377, "cityhall_sfs", "ws_cityhall8"},
	{10377, "cityhall_sfs", "ws_cityhall9"}, {10377, "cityhall_sfs", "ws_concretenew_step"}, {10377, "cityhall_sfs", "ws_copart1"},
	{10377, "cityhall_sfs", "ws_copart2"}, {10377, "cityhall_sfs", "ws_copart3"}, {10377, "cityhall_sfs", "ws_oldoffice2"},
	{10377, "cityhall_sfs", "ws_oldoffice4"}, {10947, "cityhall_sfse", "ws_oldoffice5"}, {10947, "cityhall_sfse", "ws_oldoffice6"},
	{10947, "cityhall_sfse", "ws_oldoffice7"}, {4003, "cityhall_tr_lan", "foliage256"}, {4003, "cityhall_tr_lan", "mc_flags1"},
	{4003, "cityhall_tr_lan", "planta256"}, {4003, "cityhall_tr_lan", "sl_griddyfence_sml"},
	{3979, "civic01_lan", "airportwall_256128"}, {3979, "civic01_lan", "bonavenlif_LAn"}, {3979, "civic01_lan", "crazy paving"},
	{3979, "civic01_lan", "nt_bonav1"}, {3979, "civic01_lan", "nt_bonav1_refl"}, {3979, "civic01_lan", "parking1plain"},
	{3979, "civic01_lan", "sl_concretewall1"}, {3979, "civic01_lan", "sl_dwntwndr1"}, {3979, "civic01_lan", "sl_dwntwnshpfrnt1"},
	{3979, "civic01_lan", "sl_flagstone1"}, {3979, "civic01_lan", "sl_laexporail"}, {3979, "civic01_lan", "sl_laglasswall1"},
	{3979, "civic01_lan", "sl_laglasswall2"}, {3979, "civic01_lan", "sl_laoffblok2wall1"}, {14674, "civic02cj", "ab_hosWallUpr"},
	{14674, "civic02cj", "hotcarp01_LA"}, {14674, "civic02cj", "hotelarch1_LAn"}, {14674, "civic02cj", "kb_balcony_ferns"},
	{14674, "civic02cj", "sl_hoteldr1"}, {14674, "civic02cj", "sl_hotelwall1"}, {14674, "civic02cj", "sl_hotelwallplain1"},
	{4001, "civic03_lan", "bailbonds1_LAn"}, {4001, "civic03_lan", "bailbonds2_LAn"}, {4001, "civic03_lan", "downtshop2_LAn"},
	{4001, "civic03_lan", "downtshop5_LAn"}, {4001, "civic03_lan", "downtshop6_LAn"}, {4001, "civic03_lan", "downtsign2_LA"},
	{4001, "civic03_lan", "downtsign8_LA"}, {4001, "civic03_lan", "downtwin10"}, {4001, "civic03_lan", "downtwin11"},
	{4001, "civic03_lan", "downtwin2"}, {4001, "civic03_lan", "downtwin2b"}, {4001, "civic03_lan", "downtwin6"},
	{4001, "civic03_lan", "gymshop2_LAe"}, {4001, "civic03_lan", "pediments1"}, {4001, "civic03_lan", "sidelatino1_LAe"},
	{4001, "civic03_lan", "sl_shopshttr1"}, {4001, "civic03_lan", "twintWall2_LAn"}, {4001, "civic03_lan", "ws_rottenwall"},
	{3998, "civic04_lan", "alleydoor6"}, {3998, "civic04_lan", "hosdoor01_law"}, {3998, "civic04_lan", "officblokA2_LAn"},
	{3998, "civic04_lan", "sl_crthoosedg1"}, {3998, "civic04_lan", "sl_crthooswall1"}, {3998, "civic04_lan", "sl_crthooswall2"},
	{3998, "civic04_lan", "sl_dtwn1win1"}, {3998, "civic04_lan", "sl_dtwn1win2"}, {3998, "civic04_lan", "sl_prisongate1"},
	{3998, "civic04_lan", "twintconc_LAn"}, {3998, "civic04_lan", "twintWall1_LAn"}, {3998, "civic04_lan", "twintWin1_LAn"},
	{3998, "civic04_lan", "twintWin2_LAn"}, {3988, "civic06_lan", "awningsides1"}, {3988, "civic06_lan", "Bow_stained_wall"},
	{3988, "civic06_lan", "casinobulb2_128"}, {3988, "civic06_lan", "discware1_LAe2"}, {3988, "civic06_lan", "downtshop4_LAn"},
	{3988, "civic06_lan", "downtsign1_LA"}, {3988, "civic06_lan", "downtsign4_LA"}, {3988, "civic06_lan", "downtsign5_LA"},
	{3988, "civic06_lan", "downtsign6_LA"}, {3988, "civic06_lan", "downtsign7_LA"}, {3988, "civic06_lan", "downtwin3"},
	{3988, "civic06_lan", "downtwin5"}, {3988, "civic06_lan", "downtwin6det"}, {3988, "civic06_lan", "downtwin7"},
	{3988, "civic06_lan", "downtwin8"}, {3988, "civic06_lan", "downtwin9"}, {3988, "civic06_lan", "LAcityhwal2"},
	{3988, "civic06_lan", "pediments2"}, {3988, "civic06_lan", "shopawning1_LAn"}, {3988, "civic06_lan", "tradecentre1"},
	{4004, "civic07_lan", "badmarb1_LAn"}, {4004, "civic07_lan", "column1_LAn"}, {4004, "civic07_lan", "downtshop10_LAn"},
	{4004, "civic07_lan", "downtshop8_LAn"}, {4004, "civic07_lan", "downtshop9_LAn"}, {4004, "civic07_lan", "downtsign10_LA"},
	{4004, "civic07_lan", "downtsign11_LA"}, {4004, "civic07_lan", "downtsign9_LA"}, {4004, "civic07_lan", "downtwin12"},
	{4004, "civic07_lan", "downtwin14"}, {4004, "civic07_lan", "downtwin14det"}, {4004, "civic07_lan", "downtwin15"},
	{4004, "civic07_lan", "downtwin9det"}, {4004, "civic07_lan", "hollywin02_LAw"}, {4004, "civic07_lan", "odddoor1_LAn"},
	{4004, "civic07_lan", "oldbrwall1_LA"}, {4004, "civic07_lan", "oldbrwall2_LA"}, {4004, "civic07_lan", "restrauntfront1_256"},
	{4004, "civic07_lan", "sf_windos_10"}, {4004, "civic07_lan", "sl_dwntwncanpy1"}, {4004, "civic07_lan", "sl_rotnbrik"},
	{4569, "civic1_lan2", "posh_eagle10_sfe"}, {4569, "civic1_lan2", "posh_eagle11_sfe"}, {4569, "civic1_lan2", "posh_eagle12_sfe"},
	{4569, "civic1_lan2", "posh_eagle13_sfe"}, {4569, "civic1_lan2", "posh_eagle14_sfe"}, {4569, "civic1_lan2", "posh_eagle1_sfe"},
	{4569, "civic1_lan2", "posh_eagle2_sfe"}, {4569, "civic1_lan2", "posh_eagle4_sfe"}, {3776, "ci_studio", "aircon"},
	{3776, "ci_studio", "bdoor"}, {3776, "ci_studio", "cdoor"}, {3776, "ci_studio", "stageside1"}, {3776, "ci_studio", "studioroof"},
	{5706, "ci_studio5", "astagesign"}, {5706, "ci_studio5", "Bow_sidewalk"}, {5706, "ci_studio5", "ci_entrwind1"},
	{5706, "ci_studio5", "corugwall1"}, {5706, "ci_studio5", "rustytank"}, {5706, "ci_studio5", "studcov01_law"},
	{5706, "ci_studio5", "studiowall1"}, {5706, "ci_studio5", "studiowall3_law"}, {5706, "ci_studio5", "studoor01_law"},
	{5706, "ci_studio5", "tw@t_wall1"}, {1738, "cjtemp", "CJ_bed1"}, {1738, "cjtemp", "CJ_BED_BASE"}, {1738, "cjtemp", "CJ_MAT1"},
	{1738, "cjtemp", "cj_Mattress2"}, {1738, "cjtemp", "cj_Mattress5"}, {1738, "cjtemp", "cj_radiatorOLD"},
	{1738, "cjtemp", "CJ_SWEETS"}, {3967, "cj_airprt", "bigbrick"}, {3967, "cj_airprt", "ceiling_256"},
	{3967, "cj_airprt", "CJ_BLACK_RUB2"}, {3967, "cj_airprt", "CJ_G_CHROME"}, {3967, "cj_airprt", "cj_juank_1"},
	{3967, "cj_airprt", "CJ_RUBBER"}, {3967, "cj_airprt", "CJ_SHELF_WHITE"}, {3967, "cj_airprt", "CJ_tubeside"},
	{3967, "cj_airprt", "dts_elevator_carpet2"}, {3967, "cj_airprt", "new road"}, {3967, "cj_airprt", "Road_blank256HV"},
	{3967, "cj_airprt", "Slabs"}, {1736, "cj_ammo", "CJ_Black_metal"}, {1736, "cj_ammo", "CJ_BULLETBOX1"},
	{1736, "cj_ammo", "CJ_CANVAS2"}, {1736, "cj_ammo", "CJ_Deer1"}, {1736, "cj_ammo", "CJ_GENERATOR3"},
	{1736, "cj_ammo", "CJ_LIGHTWOOD(E)"}, {1736, "cj_ammo", "CJ_mantarget"}, {1736, "cj_ammo", "CJ_OIL_DRUM_L0"},
	{1736, "cj_ammo", "cj_pail"}, {1736, "cj_ammo", "CJ_SHEET2HOLES"}, {1736, "cj_ammo", "CJ_SLATEDWOOD2"},
	{1736, "cj_ammo", "CJ_SPEAKER_c"}, {1736, "cj_ammo", "CJ_WHEEL1"}, {1736, "cj_ammo", "flametin"},
	{1736, "cj_ammo", "flametin2"}, {1736, "cj_ammo", "Star aluminuim"}, {2059, "cj_ammo2", "cj_don_post_1"},
	{2059, "cj_ammo2", "CJ_gunbook1"}, {2059, "cj_ammo2", "CJ_gunbook2"}, {2059, "cj_ammo2", "cj_rubbish2"},
	{2068, "cj_ammo_net", "CJ_cammonet"}, {2047, "cj_ammo_posters", "CJ_Coltposter"}, {2047, "cj_ammo_posters", "cj_flag1"},
	{2047, "cj_ammo_posters", "cj_flag2"}, {2047, "cj_ammo_posters", "CJ_TARGET1"}, {2047, "cj_ammo_posters", "CJ_TARGET2"},
	{2047, "cj_ammo_posters", "CJ_TARGET3"}, {18034, "cj_ammun_extra", "CJ_BULLETBOX2"}, {18034, "cj_ammun_extra", "CJ_BULLETBOX2b"},
	{18034, "cj_ammun_extra", "CJ_BULLETBOX2c"}, {18034, "cj_ammun_extra", "CJ_BULLETBOX3"}, {18034, "cj_ammun_extra", "CJ_BULLETBOXB"},
	{18034, "cj_ammun_extra", "CJ_BULLETBOXB2"}, {18034, "cj_ammun_extra", "CJ_GRIZ"}, {18034, "cj_ammun_extra", "CJ_NAIL_AMMO"},
	{18034, "cj_ammun_extra", "CJ_TAR1"}, {18034, "cj_ammun_extra", "mp_gun_box"}, {18034, "cj_ammun_extra", "mp_gun_neon"},
	{2783, "cj_bandit", "slot6"}, {2783, "cj_bandit", "slot_bit3"}, {2655, "cj_banner", "CJ_ERIS1"}, {2655, "cj_banner", "CJ_HEAT1"},
	{2655, "cj_banner", "CJ_HEAT2"}, {2655, "cj_banner", "CJ_MERC_LOGO"}, {2655, "cj_banner", "CJ_PRO_2"},
	{2655, "cj_banner", "CJ_SUBURBAN_1"}, {2692, "cj_banner2", "BASE5_1"}, {2692, "cj_banner2", "CJ_CARDBOARD"},
	{2692, "cj_banner2", "CJ_WHEEL_CHAIR1"}, {2719, "cj_banner3", "CJ_BINC_1"}, {2719, "cj_banner3", "CJ_BINC_2"},
	{2719, "cj_banner3", "CJ_BINC_3"}, {1455, "cj_bar", "CJ_BAR_BOTTLE1"}, {1455, "cj_bar", "CJ_BAR_TAP1"},
	{1455, "cj_bar", "CJ_BAR_TAP2"}, {1455, "cj_bar", "CJ_B_TOWEL"}, {1455, "cj_bar", "cj_b_tray"}, {1455, "cj_bar", "CJ_old_pish"},
	{1455, "cj_bar", "CJ_SK_Bar"}, {1455, "cj_bar", "CJ_SK_DIET_Bar"}, {18028, "cj_bar2", "bbar_stuff2"},
	{18028, "cj_bar2", "CJ_nastybar_D"}, {18028, "cj_bar2", "CJ_nastybar_D2"}, {18028, "cj_bar2", "CJ_nastybar_D3"},
	{18028, "cj_bar2", "CJ_nastybar_D4"}, {18028, "cj_bar2", "CJ_nastybar_D5"}, {18028, "cj_bar2", "CJ_nastybar_D6"},
	{18028, "cj_bar2", "GB_nastybar01"}, {18028, "cj_bar2", "GB_nastybar02"}, {18028, "cj_bar2", "GB_nastybar04"},
	{18028, "cj_bar2", "GB_nastybar05"}, {18028, "cj_bar2", "GB_nastybar06"}, {18028, "cj_bar2", "GB_nastybar07"},
	{18028, "cj_bar2", "GB_nastybar08"}, {18028, "cj_bar2", "GB_nastybar09"}, {18028, "cj_bar2", "GB_nastybar10"},
	{18028, "cj_bar2", "GB_nastybar13"}, {18028, "cj_bar2", "GB_nastybar15"}, {18028, "cj_bar2", "GB_nastybar17"},
	{18081, "cj_barb", "ab_drawer_unit2"}, {18081, "cj_barb", "ab_leather_strips"}, {18081, "cj_barb", "ab_marble_checks"},
	{18081, "cj_barb", "ab_panel_woodgrime"}, {18081, "cj_barb", "ab_sink_barber"}, {18081, "cj_barb", "ab_window_plastic"},
	{18081, "cj_barb", "barberschr1"}, {18081, "cj_barb", "barberschr2"}, {18081, "cj_barb", "barberschr3"},
	{18081, "cj_barb", "barberschr4"}, {18081, "cj_barb", "barberschr5"}, {18081, "cj_barb", "barberschr6"},
	{18081, "cj_barb", "barberschr7b"}, {18081, "cj_barb", "barberspic1"}, {18081, "cj_barb", "barberspic2"},
	{18081, "cj_barb", "barberspic3"}, {18081, "cj_barb", "CJ_TILES_5"}, {18081, "cj_barb", "cj_white_wall"},
	{18081, "cj_barb", "whiteceil_int"}, {18027, "cj_barb2", "BLOCK2low"}, {18027, "cj_barb2", "CJ_BARB_WIN_1"},
	{18027, "cj_barb2", "cj_socket"}, {18027, "cj_barb2", "interiordoor1_256"}, {18027, "cj_barb2", "tile_test3"},
	{66, "cj_barr_set_1", "banding_blue_64HV"}, {66, "cj_barr_set_1", "Stop2_64"}, {2691, "cj_base5", "base5_2"},
	{2691, "cj_base5", "base5_6"}, {2691, "cj_base5", "base5_8"}, {2514, "cj_bathroom", "CJ_CANVAS"},
	{2514, "cj_bathroom", "CJ_PILLOWCASE"}, {2514, "cj_bathroom", "cj_toilet"}, {1700, "cj_beds", "bed_test"},
	{1700, "cj_beds", "CJ_MATRESS2"}, {1700, "cj_beds", "kbedhead"}, {1700, "cj_beds", "kbedside"},
	{1700, "cj_beds", "kb_sheet_pilay2"}, {2729, "cj_binc_sign", "BINC_hooded"}, {2729, "cj_binc_sign", "BINC_pshirts"},
	{2729, "cj_binc_sign", "BINC_tshirt"}, {1343, "cj_bins", "Miamibin"}, {1344, "cj_bins2", "CJ_RUBBISH1"},
	{2659, "cj_bobo", "cj_bobo"}, {2659, "cj_bobo", "CJ_BOBO_BAN"}, {2430, "cj_burg_sign", "CJ_BS_BAG"},
	{2430, "cj_burg_sign", "cj_bs_cup"}, {2430, "cj_burg_sign", "CJ_BS_MENU1"}, {2430, "cj_burg_sign", "CJ_BS_MENU2"},
	{2430, "cj_burg_sign", "CJ_BS_MENU3"}, {2430, "cj_burg_sign", "CJ_BS_MENU4"}, {2765, "cj_cb_sign", "CJ_CB_POST1"},
	{2765, "cj_cb_sign", "CJ_PIZZA_MENU2"}, {958, "cj_chip_maker", "CJ_CHIP_M"}, {958, "cj_chip_maker", "CJ_Y_GENERATORDETAIL"},
	{2669, "cj_chris", "Bow_Fence_Metal"}, {2669, "cj_chris", "CJ_Floral"}, {2669, "cj_chris", "CJ_Grate"},
	{2669, "cj_chris", "cj_metalplate2"}, {2669, "cj_chris", "CJ_plating3"}, {2669, "cj_chris", "Gen_Chain"},
	{2681, "cj_coin_op", "CJ_COINOP1"}, {2681, "cj_coin_op", "CJ_COINOP2"}, {2681, "cj_coin_op", "CJ_COINOP3"},
	{2640, "cj_coin_op_2", "CJ_POKERSCREEN"}, {2640, "cj_coin_op_2", "CJ_POKERSCREEN2"}, {2640, "cj_coin_op_2", "CJ_TV1"},
	{1733, "cj_commercial", "CJ_DRINKS_CHOICE"}, {1733, "cj_commercial", "CJ_SPRUNK_FRONT"}, {1733, "cj_commercial", "CJ_S_VENDOR"},
	{2941, "cj_commerciax", "Gen_Till"}, {960, "cj_crate_will", "CJ_FLIGHT_CASE"}, {960, "cj_crate_will", "CJ_FLIGHT_CASE2"},
	{936, "cj_dfext", "ws_cf_lamp"}, {18102, "cj_dl2", "CJ_DISCO(L1)64"}, {18102, "cj_dl2", "CJ_DISCO(L2)64"},
	{18102, "cj_dl2", "CJ_DISCO(L3)64"}, {18102, "cj_dl2", "CJ_DISCO(L4)64"}, {2432, "cj_don_sign", "cj_don_post_2"},
	{2432, "cj_don_sign", "cj_don_post_3"}, {2879, "cj_ds_door", "CJ_DS_DOOR_256_"}, {1349, "cj_dyn_prop", "CJ_AIRPLOGO"},
	{1349, "cj_dyn_prop", "CJ_STROLLY"}, {1718, "cj_electrical", "CJ_MONITER1"}, {1718, "cj_electrical", "cj_video3(TOP)"},
	{1718, "cj_electrical", "CJ_VIDEOFRONTS"}, {1718, "cj_electrical", "spbx_big"}, {1718, "cj_electrical", "spbx_big2"},
	{18031, "cj_exp", "chinosbiege"}, {18031, "cj_exp", "chinosblue"}, {18031, "cj_exp", "CJ_DS_WINDOW"},
	{18031, "cj_exp", "mp_cloth_ds3"}, {18031, "cj_exp", "mp_cloth_ds4"}, {18031, "cj_exp", "mp_cloth_wall"},
	{18031, "cj_exp", "mp_furn_floor"}, {1370, "cj_exp_props", "CJ_GAS_CAN"}, {955, "cj_ext_vend", "CJ_SPRUNK_DIRTY"},
	{2415, "cj_ff", "CJ_cooker4"}, {2415, "cj_ff", "CJ_KITCHEN_DETAIL"}, {2420, "cj_ff_acc1", "CJ_Bbq"},
	{2420, "cj_ff_acc1", "CJ_BS_MENU4s"}, {2420, "cj_ff_acc1", "CJ_MICROPANEL"}, {2420, "cj_ff_acc1", "CJ_OPEN"},
	{2420, "cj_ff_acc1", "CJ_TILL1"}, {2420, "cj_ff_acc1", "pepperonip"}, {2718, "cj_ff_acc2", "CJ_FLY_TUBE"},
	{2718, "cj_ff_acc2", "GRATE"}, {2423, "cj_ff_counters", "CJ_COUNTER2"}, {2423, "cj_ff_counters", "CJ_COUNTER_TILES"},
	{2423, "cj_ff_counters", "CJ_Laminate1"}, {2423, "cj_ff_counters", "CJ_TILES_3"}, {2423, "cj_ff_counters", "CJ_worktop"},
	{2423, "cj_ff_counters", "shop_floor1"}, {1730, "cj_furniture", "CJ-COUCHL2"}, {1730, "cj_furniture", "CJ_books"},
	{1730, "cj_furniture", "CJ_WOOD5"}, {2028, "cj_games", "CJ_CONSOLETOP"}, {2028, "cj_games", "cj_console_cont1"},
	{2028, "cj_games", "cj_console_cont2"}, {2028, "cj_games", "CJ_speaker4"}, {2875, "cj_gash", "CJ_ZIP_3"},
	{2749, "cj_hair", "cj_spec"}, {2749, "cj_hair", "HAIR_STUFF"}, {1809, "cj_hi_fi", "CJ_HI_FI"}, {1809, "cj_hi_fi", "CJ_HI_FI_1"},
	{1809, "cj_hi_fi", "CJ_SPEAKER1"}, {1809, "cj_hi_fi", "CJ_speaker_6"}, {1809, "cj_hi_fi", "cj_speaker_s"},
	{2225, "cj_hi_fi2", "CJ_SPEAKER2"}, {2225, "cj_hi_fi2", "CJ_SPEAKER3"}, {2570, "cj_hotel", "nt_phone1"},
	{2570, "cj_hotel", "nt_phone2"}, {2575, "cj_hotel_poor", "CJ_mattress"}, {2562, "cj_hotel_sw", "CJ-COUCHL1"},
	{2098, "cj_int", "CJ_CHINA_SCRIPT"}, {2098, "cj_int", "CJ_GREEN_WOOD"}, {2098, "cj_int", "CJ_RED_WOOD"},
	{2425, "cj_jucie", "CJ_SPRUNK_F"}, {2425, "cj_jucie", "CJ_SPRUNK_FRONT2"}, {2127, "cj_kitchen", "CJ_RED"},
	{2127, "cj_kitchen", "FORMICA2"}, {2127, "cj_kitchen", "marble2"}, {1731, "cj_lighting", "CJ_BASKET"},
	{1731, "cj_lighting", "CJ_FILLIMENT"}, {1731, "cj_lighting", "CJ_lightshade"}, {1731, "cj_lighting", "cj_plantpot"},
	{1731, "cj_lighting", "CJ_PLANT_POT"}, {1731, "cj_lighting", "CJ_WICKER1"}, {2803, "cj_meaty", "CJ_Canvas3"},
	{2803, "cj_meaty", "CJ_FLESH_1"}, {2803, "cj_meaty", "CJ_FLESH_2"}, {1701, "cj_med_beds", "CJ_BROWN_WOOL"},
	{1701, "cj_med_beds", "CJ_DUVET1"}, {1701, "cj_med_beds", "CJ_LINEN1"}, {1701, "cj_med_beds", "kb_bed_final2"},
	{1550, "cj_money_bags", "CJ_KIT_BAG"}, {1550, "cj_money_bags", "money_128"}, {1570, "cj_noodle_1", "CJ_Canvas2"},
	{1371, "cj_novelty_bins", "CJ_HIPPO"}, {1714, "cj_office", "beige_64"}, {1714, "cj_office", "BLUE_FABRIC"},
	{1714, "cj_office", "chromepipe2_32hv"}, {1714, "cj_office", "cj_binders"}, {1714, "cj_office", "CJ_chiller"},
	{1714, "cj_office", "CJ_CUSHION2"}, {1714, "cj_office", "CJ_DESK"}, {1714, "cj_office", "CJ_FILE"},
	{1714, "cj_office", "CJ_photocopier"}, {1714, "cj_office", "CJ_PLASTIC"}, {1714, "cj_office", "cl_highbak"},
	{1714, "cj_office", "est_chair"}, {1714, "cj_office", "filing_cab_mtl"}, {1714, "cj_office", "la_kitch1"},
	{1714, "cj_office", "la_kitch2"}, {1714, "cj_office", "la_kitch3"}, {1714, "cj_office", "of_key_256"},
	{1714, "cj_office", "of_monitor_256"}, {1714, "cj_office", "redFabric"}, {1714, "cj_office", "white32"},
	{2065, "cj_off_new", "CJ_FILLING2"}, {2065, "cj_off_new", "filling"}, {2065, "cj_off_new", "filling3"},
	{2645, "cj_piz_sign", "CJ_PIZZA_MEN1"}, {2645, "cj_piz_sign", "CJ_PIZZA_MEN2"}, {2645, "cj_piz_sign", "CJ_PIZZA_MEN3"},
	{2645, "cj_piz_sign", "CJ_PIZZA_MENU1"}, {1360, "cj_plant_props", "Bucket_bump"}, {1360, "cj_plant_props", "CJ_PLANT"},
	{2876, "cj_pro", "CJ_PRO_DOOR_256_"}, {2347, "cj_reels", "cj_wheel_69256"}, {2347, "cj_reels", "cj_wheel_B1256"},
	{2347, "cj_reels", "cj_wheel_B2256"}, {2347, "cj_reels", "cj_wheel_Bell256"}, {2347, "cj_reels", "cj_wheel_Cherry256"},
	{2347, "cj_reels", "cj_wheel_Grape256"}, {1716, "cj_seating", "bras2_base"}, {1716, "cj_seating", "cj_cushion1"},
	{1716, "cj_seating", "CJ_RED_FABRIC"}, {1716, "cj_seating", "CJ_SHINYWOOD"}, {2577, "cj_sex", "CJ_PAINTING9"},
	{2577, "cj_sex", "CJ_PORNO_VIDS"}, {2577, "cj_sex", "CJ_PORNO_VIDS2"}, {2577, "cj_sex", "CJ_PORNO_VIDS3"},
	{2577, "cj_sex", "CJ_PORNO_VIDS4"}, {2577, "cj_sex", "CJ_PORN_SIGNS"}, {2577, "cj_sex", "CJ_PORN_SIGNS2"},
	{2577, "cj_sex", "CJ_videos"}, {2577, "cj_sex", "gun_dildo1"}, {2577, "cj_sex", "gun_dildo2"}, {2577, "cj_sex", "gun_dildo3"},
	{2577, "cj_sex", "gun_dildo4"}, {1746, "cj_sofa", "CJ_FAB1"}, {1746, "cj_sofa", "CJ_FAB2"}, {1746, "cj_sofa", "cj_fab3"},
	{1746, "cj_sofa", "CJ_FAB4"}, {1746, "cj_sofa", "CJ_WOOD_RUN"}, {2541, "cj_ss_1", "CJ_7_11_edge"}, {2541, "cj_ss_1", "CJ_BBQ_BAG"},
	{2541, "cj_ss_1", "CJ_CEREAL"}, {2541, "cj_ss_1", "cj_juice"}, {2541, "cj_ss_1", "cj_juice2"}, {2541, "cj_ss_1", "cj_juice_can"},
	{2541, "cj_ss_1", "CJ_LUBE_1"}, {2541, "cj_ss_1", "GB_foodwrap01"}, {2538, "cj_ss_2", "CJ_ICECREAM"}, {2538, "cj_ss_2", "CJ_milk"},
	{2538, "cj_ss_2", "CJ_milk2"}, {2538, "cj_ss_2", "CJ_MILK_BOTTLE"}, {2538, "cj_ss_2", "pizzalid"},
	{2543, "cj_ss_3", "CJ_DOG_FOOD2"}, {2543, "cj_ss_3", "CJ_DOOG_FOOD"}, {2535, "cj_ss_4", "CJ_FISHY"},
	{1348, "cj_street_props", "CJ_o2Tank"}, {1795, "cj_s_beds", "CJ_MATRESS3"}, {1737, "cj_tables", "FORMICA1"},
	{1350, "cj_traffic", "CJ_sign6"}, {1717, "cj_tv", "CJ_STEEL"}, {1717, "cj_tv", "CJ_TV2"}, {1717, "cj_tv", "green_glass_64"},
	{1717, "cj_tv", "tv_1"}, {2624, "cj_urb", "cj_bricks"}, {2624, "cj_urb", "CJ_PRO_1"}, {2624, "cj_urb", "cj_sport_counter1"},
	{2624, "cj_urb", "counter2"}, {2878, "cj_vic", "CJ_VICT_DOOR"}, {1782, "cj_video", "CJ_VIDEO5"}, {2732, "cj_zip_sign", "CJ_ZIP_1"},
	{2732, "cj_zip_sign", "CJ_ZIP_2"}, {2732, "cj_zip_sign", "CJ_ZIP_4"}, {2381, "cloth_trackies", "trackTr"},
	{2381, "cloth_trackies", "trackTrblue"}, {2381, "cloth_trackies", "tracktrgang"}, {2381, "cloth_trackies", "trackTrpro"},
	{2374, "cloth_track_t", "shirtshortblu"}, {2374, "cloth_track_t", "sweatrstar"}, {2374, "cloth_track_t", "trackytop1pro"},
	{2374, "cloth_track_t", "trackytop2eris"}, {2374, "cloth_track_t", "tshirterisyell"}, {10606, "cluckbell_sfs", "roof04L256"},
	{10606, "cluckbell_sfs", "tgogg4_256"}, {10606, "cluckbell_sfs", "vgncarwash3_256"}, {10606, "cluckbell_sfs", "vgndwntwnrf1_256"},
	{10606, "cluckbell_sfs", "ws_nicepave"}, {10606, "cluckbell_sfs", "ws_reinforcedbutwonky_small"}, {3093, "cntdrrkx", "sjmbigold4"},
	{3093, "cntdrrkx", "sjmbigold5"}, {11550, "cn_nwbrigstuff", "blendrock2grgrass"}, {11550, "cn_nwbrigstuff", "dam_genbeam"},
	{11550, "cn_nwbrigstuff", "desbar"}, {11550, "cn_nwbrigstuff", "des_facmetal"}, {11550, "cn_nwbrigstuff", "rocktbrn128blndlit"},
	{11550, "cn_nwbrigstuff", "Tar_1linefreewy"}, {11558, "cn_substation", "des_pylon2"}, {9902, "coastground", "coasty_bit4_sfe"},
	{9902, "coastground", "coasty_bit_sfe"}, {9902, "coastground", "coasty_fencet_sfe"}, {9902, "coastground", "pierbuild_btm2"},
	{9902, "coastground", "pierbuild_btm3"}, {9902, "coastground", "pierbuild_roof1"}, {9902, "coastground", "pierbuild_top1"},
	{9902, "coastground", "pierbuild_top2"}, {17562, "coast_apts", "apartmentwin5_256"}, {17562, "coast_apts", "Concrete_rough_256"},
	{17562, "coast_apts", "forlease_law"}, {17562, "coast_apts", "highshopwall1256"}, {17562, "coast_apts", "otb_floor1"},
	{17562, "coast_apts", "pave_dirty"}, {17562, "coast_apts", "scumtiles1_LAe"}, {17562, "coast_apts", "sjmhoodoor1"},
	{17562, "coast_apts", "sjmhoodwin"}, {17562, "coast_apts", "skategrnd2"}, {17562, "coast_apts", "sl_concslabgrey_64"},
	{17562, "coast_apts", "snpdhus4"}, {17562, "coast_apts", "stonewalls1"}, {17562, "coast_apts", "sunpillar01_law"},
	{17562, "coast_apts", "sunsetmall03b_law"}, {17562, "coast_apts", "vendoor01_law"}, {17562, "coast_apts", "ws_garagedoor2_yello"},
	{17562, "coast_apts", "ws_garagedoor4_peach"}, {17562, "coast_apts", "yardgrass1"}, {5133, "coast_las2", "cos_hiwayout_256"},
	{5133, "coast_las2", "greyground256sand"}, {12846, "coe_offtrackshop", "des_pylon1"}, {12846, "coe_offtrackshop", "des_signframe"},
	{12846, "coe_offtrackshop", "otb_bigsignf"}, {3063, "col_wall1x", "ab_wood1"}, {3063, "col_wall1x", "motel_wall4"},
	{3063, "col_wall1x", "mp_burn_wall1"}, {3063, "col_wall1x", "mp_burn_wall4"}, {3063, "col_wall1x", "mp_diner_ceilingdirt"},
	{3098, "col_wall2x", "mp_burn_wall2"}, {3097, "col_wall3x", "kitchen-wall1"}, {2950, "col_wallx", "gangwall2"},
	{3698, "comedbarrio1_la", "compdoor1_LAe"}, {3698, "comedbarrio1_la", "compdoor5_LAe"}, {3698, "comedbarrio1_la", "comptwall18"},
	{3698, "comedbarrio1_la", "comptwall9"}, {3698, "comedbarrio1_la", "greenwall2"}, {3555, "comedhos1_la", "Bow_dlct_plstrb_gen"},
	{3555, "comedhos1_la", "Bow_dlct_plstr_cnrb"}, {3555, "comedhos1_la", "Bow_dryclean_bricks"},
	{3555, "comedhos1_la", "Bow_dryclean_wall_upr_crk"}, {3555, "comedhos1_la", "Bow_dryclean_wall_upr_crnr"},
	{3555, "comedhos1_la", "comptdoor1"}, {3555, "comedhos1_la", "comptroof1"}, {3555, "comedhos1_la", "comptroof2"},
	{3555, "comedhos1_la", "comptroof3"}, {3555, "comedhos1_la", "comptwall2"}, {3555, "comedhos1_la", "comptwall4"},
	{3555, "comedhos1_la", "comptwall6"}, {3555, "comedhos1_la", "comptwindo1"}, {3555, "comedhos1_la", "comptwindo3"},
	{3555, "comedhos1_la", "dock1"}, {3584, "comedprj1_la", "waljundirt1"}, {3584, "comedprj1_la", "walljunkdet1"},
	{3584, "comedprj1_la", "whiwind1"}, {3583, "compapartb_la", "compcouwall3"}, {3583, "compapartb_la", "comphosdet1"},
	{3580, "compapart_la", "awniningsides1"}, {3580, "compapart_la", "comptwall11"}, {3580, "compapart_la", "crencoudet1"},
	{3580, "compapart_la", "gableends1"}, {3580, "compapart_la", "tancolum1"}, {17862, "compomark_lae2", "beachwall3_256"},
	{17862, "compomark_lae2", "beachwall4_256"}, {17862, "compomark_lae2", "grassdirtblend"}, {17862, "compomark_lae2", "grasstype7"},
	{17862, "compomark_lae2", "lasbadwaz3"}, {17862, "compomark_lae2", "lasbadwaz4"}, {17862, "compomark_lae2", "lasbadwaz6"},
	{17862, "compomark_lae2", "lasbadwaz9"}, {17862, "compomark_lae2", "lasbadwaz9a"}, {17862, "compomark_lae2", "sanpshop2"},
	{17862, "compomark_lae2", "sanpshop6"}, {17862, "compomark_lae2", "sanpshop6z"}, {17862, "compomark_lae2", "snpedmat92"},
	{3630, "compthotrans_la", "nbarlid"}, {3630, "compthotrans_la", "sanpedock993"}, {3630, "compthotrans_la", "sanpedock994"},
	{3630, "compthotrans_la", "sjmlawarplt"}, {3630, "compthotrans_la", "sjmlawarplt3"}, {3241, "conhooses", "des_adobedoor1"},
	{3241, "conhooses", "des_door1"}, {3241, "conhooses", "des_dustconc"}, {3241, "conhooses", "des_greyboards"},
	{3241, "conhooses", "des_greyslats"}, {3241, "conhooses", "des_hooswin1"}, {3241, "conhooses", "des_hooswinwee1"},
	{3241, "conhooses", "des_whitewin1"}, {3241, "conhooses", "des_woodfence1"}, {3241, "conhooses", "sanruf"},
	{3241, "conhooses", "trail_door"}, {3241, "conhooses", "trail_wall1"}, {3241, "conhooses", "trail_wall2"},
	{3241, "conhooses", "trail_wheel"}, {3241, "conhooses", "trail_win2"}, {3241, "conhooses", "ws_corr_metal1"},
	{17566, "contachou1_lae2", "4winscurt_law"}, {17566, "contachou1_lae2", "compdet1"}, {17566, "contachou1_lae2", "comptwall26"},
	{17566, "contachou1_lae2", "comptwall27"}, {17566, "contachou1_lae2", "gangwin1_LAe"}, {17566, "contachou1_lae2", "gangwin5_LAe"},
	{17566, "contachou1_lae2", "mp_apt1_woodpanel"}, {17566, "contachou1_lae2", "pierplanks02_128"},
	{17566, "contachou1_lae2", "shingles5"}, {17566, "contachou1_lae2", "shingles6"}, {17566, "contachou1_lae2", "weelecbox"},
	{17566, "contachou1_lae2", "woodwarewall1"}, {17566, "contachou1_lae2", "ws_peeling2"}, {6000, "con_drivein", "Desrtmetal"},
	{6000, "con_drivein", "drvin_back"}, {6000, "con_drivein", "drvin_door1"}, {6000, "con_drivein", "drvin_door2"},
	{6000, "con_drivein", "drvin_front"}, {6000, "con_drivein", "drvin_panel"}, {6000, "con_drivein", "drvin_screen"},
	{6000, "con_drivein", "drvin_sign1"}, {6000, "con_drivein", "drvin_sign2"}, {6000, "con_drivein", "drvin_stuct"},
	{6000, "con_drivein", "drvin_stuct2"}, {6000, "con_drivein", "drvin_wind1"}, {6000, "con_drivein", "drvin_wind2"},
	{11420, "con_stuff", "quarry_ground1"}, {17934, "coochieghous", "comptwall16"}, {17934, "coochieghous", "sanpednhus1r"},
	{1977, "cooler1", "kb_cooler2"}, {1977, "cooler1", "kb_vend1"}, {1977, "cooler1", "kb_vend2"}, {1977, "cooler1", "koen_win"},
	{1977, "cooler1", "shelf_stuff1"}, {10028, "copshop_sfe", "dt_cops_US_flag"},
	{10028, "copshop_sfe", "dt_fire_escape_shit_texture"}, {10028, "copshop_sfe", "dt_scyscrap_door2"},
	{11395, "corvinsign_sfse", "rustb256128"}, {11395, "corvinsign_sfse", "shutters"}, {12844, "cos_liquorstore", "b_wtilesreflect"},
	{12844, "cos_liquorstore", "cos_beercab"}, {12844, "cos_liquorstore", "cos_berboxes"}, {12844, "cos_liquorstore", "cos_liqbots"},
	{12844, "cos_liquorstore", "cos_liqcounter"}, {12844, "cos_liquorstore", "ham_radio"}, {12844, "cos_liquorstore", "ws_cleanblock"},
	{12841, "cos_pizzaplace", "roughmotwall1"}, {12841, "cos_pizzaplace", "shutter_64"}, {6487, "councl_law2", "711shop1"},
	{6487, "councl_law2", "asanpdshpsh1a"}, {6487, "councl_law2", "grassdeep256"}, {6487, "councl_law2", "Grass_lawn_128HV"},
	{6487, "councl_law2", "lanlabra1_M"}, {6487, "councl_law2", "rodeo3sjm"}, {6487, "councl_law2", "rodeo4sjm"},
	{6487, "councl_law2", "rodeo5sjm"}, {6487, "councl_law2", "rodwall11_LAw2"}, {6487, "councl_law2", "rodwall12_LAw2"},
	{6487, "councl_law2", "stonewall2_la"}, {6487, "councl_law2", "tarmacplain2_bank"}, {6487, "councl_law2", "tenniscourt1_256"},
	{6487, "councl_law2", "tennisnet_64"}, {12909, "counte_b2", "sw_barnwood3"}, {12909, "counte_b2", "sw_fence03"},
	{12909, "counte_b2", "sw_watower01"}, {3178, "counthousmisc", "corrugated5_64HV"}, {3178, "counthousmisc", "shackdoor01"},
	{3178, "counthousmisc", "shackwall01"}, {3178, "counthousmisc", "shackwall02"}, {3178, "counthousmisc", "shackwall03"},
	{3178, "counthousmisc", "shackwood01"}, {10399, "countryclbgnd_sfs", "road2_256"}, {10399, "countryclbgnd_sfs", "ws_tantiles1btm"},
	{10396, "countryclbtnis_sfs", "golf_lamp1"}, {10396, "countryclbtnis_sfs", "golf_pylon"},
	{10396, "countryclbtnis_sfs", "Grass_path_128HV"}, {10396, "countryclbtnis_sfs", "monobloc_16"},
	{10396, "countryclbtnis_sfs", "pinkpave"}, {10398, "countryclub_sfs", "ferry_build4"}, {10398, "countryclub_sfs", "hc_brickwall1"},
	{10398, "countryclub_sfs", "hc_brickwall2"}, {10398, "countryclub_sfs", "hc_roofslates"}, {10398, "countryclub_sfs", "hc_wall1"},
	{10398, "countryclub_sfs", "hc_wall2"}, {10398, "countryclub_sfs", "hc_whitewall1"}, {10398, "countryclub_sfs", "hc_windos1"},
	{10398, "countryclub_sfs", "hc_windos2"}, {17003, "countrys", "rustc256128"}, {17003, "countrys", "topbitwall256"},
	{17004, "countrys_pch", "des_dam_conc"}, {3221, "country_breakable", "banding7_64HV"}, {3221, "country_breakable", "BroWFence"},
	{3221, "country_breakable", "drvin_cable"}, {3221, "country_breakable", "drvin_spkr"}, {10987, "coveredpath_sfs", "ws_sheetwood"},
	{11013, "crackdrive_sfse", "ws_asphalt2"}, {11013, "crackdrive_sfse", "ws_carskidmarks"},
	{11088, "crackfactdem_sfs", "ws_altz_wall7burn"}, {11088, "crackfactdem_sfs", "ws_altz_wall7_top_burn"},
	{11088, "crackfactdem_sfs", "ws_dampdoubledoor"}, {11010, "crackfact_sfse", "ws_emptywarehouse"},
	{11010, "crackfact_sfse", "ws_fuckedwin2"}, {11085, "crack_intkb", "dt_ammu_flr5"}, {11085, "crack_intkb", "ws_metalrafter1"},
	{1279, "craigpackage", "drugs"}, {1381, "cranes_dyn2", "ws_dudelogo"}, {1381, "cranes_dyn2", "ws_finalbuild"},
	{1381, "cranes_dyn2", "ws_oldpaintedyello_b"}, {1381, "cranes_dyn2", "ws_sheetsteel"}, {1376, "cranes_dyn2_cj", "freighttexpage"},
	{1376, "cranes_dyn2_cj", "ws_cablehang"}, {1376, "cranes_dyn2_cj", "ws_oldpaintedblue"}, {2924, "crash3doorx", "villagreen128256"},
	{916, "crates_n_stuffext", "CJ_CABLEWRAP"}, {14477, "crlsbits", "CJ_PLANTPOT"}, {14477, "crlsbits", "kb_lightshade"},
	{14477, "crlsbits", "lightbulb"}, {14477, "crlsbits", "newtreeleavesb128"}, {13625, "crowds", "ahsjmlabeam"},
	{13625, "crowds", "ahsjmpostbarx"}, {13625, "crowds", "ahstandside"}, {13625, "crowds", "crowd"},
	{4595, "crparkgm_lan2", "gm_LAcarpark1"}, {4595, "crparkgm_lan2", "gm_LAcarpark2"}, {4595, "crparkgm_lan2", "gm_LAcarparkmuckt"},
	{4595, "crparkgm_lan2", "parking01_law"}, {4595, "crparkgm_lan2", "pavetilealley256128"}, {4595, "crparkgm_lan2", "paystation"},
	{4595, "crparkgm_lan2", "sl_cparkbarrier1"}, {4595, "crparkgm_lan2", "sl_dtcparklines1"}, {3013, "cr_boxes", "ammo_bx"},
	{3013, "cr_boxes", "guns_wood"}, {2979, "cr_slotsx", "slot5_ind"}, {2979, "cr_slotsx", "slot_fr_1"},
	{2979, "cr_slotsx", "slot_fr_2"}, {2979, "cr_slotsx", "slot_fr_3"}, {2979, "cr_slotsx", "slot_fr_4"},
	{2979, "cr_slotsx", "slot_fr_5"}, {2979, "cr_slotsx", "slot_fr_6"}, {2979, "cr_slotsx", "slot_fr_7"},
	{2979, "cr_slotsx", "slot_fr_8"}, {2979, "cr_slotsx", "slot_fr_9"}, {8481, "csrsfence01", "ceasergate01_256"},
	{8481, "csrsfence01", "ceaserwall03_256"}, {8481, "csrsfence01", "ceaserwall06_128"}, {8481, "csrsfence01", "ceaserwall08_256"},
	{8481, "csrsfence01", "sign_Caligulas"}, {8480, "csrspalace01", "black32"}, {8480, "csrspalace01", "ceasersledge01_128"},
	{8480, "csrspalace01", "ceasersledge03_128"}, {8480, "csrspalace01", "ceasersledge04_128"},
	{8480, "csrspalace01", "ceaserwall04night_256"}, {8480, "csrspalace01", "ceaserwall04_256"},
	{8480, "csrspalace01", "ceaserwall05_256"}, {8480, "csrspalace01", "ceaserwall07_256"}, {8480, "csrspalace01", "ceaserwall09_128"},
	{8480, "csrspalace01", "ceaserwindow01_128"}, {8480, "csrspalace01", "vgspawnroof02_128"},
	{8482, "csrspalace02", "casinolightsyel_128"}, {8482, "csrspalace02", "ceasertile01_128"},
	{8482, "csrspalace02", "ceaserwall10_128"}, {8482, "csrspalace02", "ceaserwall11_128"}, {8482, "csrspalace02", "marble01_128"},
	{18231, "cs_coast", "cunt_botrock"}, {18231, "cs_coast", "cunt_toprock"}, {18231, "cs_coast", "des_dirt2blend"},
	{18231, "cs_coast", "des_dirt2grgrass"}, {18231, "cs_coast", "des_dirt2trackr"}, {18231, "cs_coast", "grasstype4"},
	{18231, "cs_coast", "grasstype4_mudblend"}, {18231, "cs_coast", "rocktq128"}, {18231, "cs_coast", "rocktq128_grass4blend"},
	{18449, "cs_ebridge", "stormdrain4_nt"}, {18314, "cs_forest", "cuntbrncliffbtmbmp"}, {18314, "cs_forest", "cuntbrnclifftop"},
	{18314, "cs_forest", "cw2_mountdirtscree"}, {18314, "cs_forest", "cw2_mountroad"}, {18314, "cs_forest", "forestfloor256mudblend"},
	{18314, "cs_forest", "forestfloor256_blenddirt"}, {18314, "cs_forest", "forestfloorblendb"},
	{18314, "cs_forest", "forestfloorblendded"}, {18314, "cs_forest", "grasstype4_forestblend"},
	{18314, "cs_forest", "rocktq128_forestblend"}, {18451, "cs_misc", "car1_128"}, {18451, "cs_misc", "car2_128"},
	{18293, "cs_mountain", "ffbranch_mountdirt"}, {18447, "cs_mountaindetail", "cs_rockdetail"},
	{18368, "cs_mountaintop", "dam_statbase"}, {18368, "cs_mountaintop", "des_flatlogs"}, {18368, "cs_mountaintop", "des_woodrails"},
	{18368, "cs_mountaintop", "sw_flag01"}, {18369, "cs_roads", "pavebsand256grassblended"}, {18369, "cs_roads", "Tar_freewyright"},
	{3119, "cs_ry_props", "GB_magazine01"}, {3119, "cs_ry_props", "GB_magazine04"}, {3119, "cs_ry_props", "GB_magazine07"},
	{3119, "cs_ry_props", "lightgrey"}, {3119, "cs_ry_props", "WhiskyBottle"}, {18364, "cs_scrapyard", "Was_scrpyd_bale_exh"},
	{18561, "cs_wbridge", "des_byframe1"}, {5069, "ctscene_las", "cleargraf02_LA"}, {5069, "ctscene_las", "ruffroadlas"},
	{3038, "ct_kanx", "ct_lantern"}, {3038, "ct_kanx", "ct_rope"}, {3038, "ct_kanx", "ct_tastle"}, {3039, "ct_salx", "ct_stall1"},
	{3039, "ct_salx", "ct_stall_stuff1"}, {3039, "ct_salx", "ct_umbrela"}, {3040, "ct_stabx", "ct_boxes"},
	{3040, "ct_stabx", "ct_fruit"}, {3042, "ct_ventx", "liftdoorsac128"}, {6522, "cuntclub_law2", "countclu01_LAw2"},
	{6522, "cuntclub_law2", "countclu02_LAw2"}, {6522, "cuntclub_law2", "helipad_grey1"}, {6522, "cuntclub_law2", "marinadoor1_256"},
	{6522, "cuntclub_law2", "marinawindow1_256"}, {6522, "cuntclub_law2", "vgschapelwall01_128"}, {15040, "cuntcuts", "AH_pinkcurtain"},
	{15040, "cuntcuts", "chrome_tube4"}, {15040, "cuntcuts", "CsCrackpipe01"}, {15040, "cuntcuts", "csnewspaper"},
	{15040, "cuntcuts", "csnewspaper02"}, {15040, "cuntcuts", "cszerocupboard"}, {15040, "cuntcuts", "GB_canvas06"},
	{15040, "cuntcuts", "GB_canvas15"}, {15040, "cuntcuts", "GB_canvas17"}, {15040, "cuntcuts", "GB_canvas18"},
	{15040, "cuntcuts", "GB_mike01"}, {15040, "cuntcuts", "GB_novels06"}, {15040, "cuntcuts", "GB_pendantlmp01"},
	{15040, "cuntcuts", "GB_phone01"}, {15040, "cuntcuts", "GB_phone02"}, {15040, "cuntcuts", "GB_swingbin01"},
	{15040, "cuntcuts", "GB_tile01"}, {15040, "cuntcuts", "GB_towel02"}, {15040, "cuntcuts", "newspaper1"},
	{15040, "cuntcuts", "piratesign01_128"}, {15040, "cuntcuts", "ws_chipboard"}, {13686, "cunte1_lahills", "desmudtrail2"},
	{13699, "cunte2_lahills", "bevgate01_law"}, {13699, "cunte2_lahills", "laposhfence3"}, {12809, "cunteroads1", "des_1line256"},
	{12809, "cunteroads1", "des_1linetar"}, {12802, "cunteroads2", "roadnew4_512"}, {12802, "cunteroads2", "sw_gasground"},
	{12802, "cunteroads2", "sw_gasground2"}, {12877, "cunteroads3", "cos_hiwayins_256"}, {12800, "cunteroads5", "concreteblock_256"},
	{12800, "cunteroads5", "hiwayinside5_256"}, {12800, "cunteroads5", "hiwayoutside_256"}, {13077, "cunte_bar1", "alleydoor4"},
	{13077, "cunte_bar1", "alleydoorb256"}, {13077, "cunte_bar1", "amity_law"}, {13077, "cunte_bar1", "black16"},
	{13077, "cunte_bar1", "newall4-2"}, {12850, "cunte_block1", "ablusrip"}, {12850, "cunte_block1", "awhitest2"},
	{12850, "cunte_block1", "des_indsign1"}, {12850, "cunte_block1", "lightwall256"}, {12850, "cunte_block1", "shoptopa128"},
	{12850, "cunte_block1", "shph3r1hi"}, {12850, "cunte_block1", "sjmbrwn3"}, {12850, "cunte_block1", "sjmbwall2"},
	{12850, "cunte_block1", "sjmhot4"}, {12850, "cunte_block1", "sw_door10"}, {12850, "cunte_block1", "sw_hardware01"},
	{12850, "cunte_block1", "sw_hardware02"}, {12850, "cunte_block1", "sw_miller"}, {12850, "cunte_block1", "sw_signs01"},
	{12850, "cunte_block1", "sw_window02"}, {12850, "cunte_block1", "ws_ornatewall1"}, {12850, "cunte_block1", "ws_redbrickold"},
	{13131, "cunte_blockammo", "decoacwallbtm21_256"}, {13131, "cunte_blockammo", "dt_ammu_sign1"},
	{13131, "cunte_blockammo", "dt_ammu_sign2"}, {13131, "cunte_blockammo", "dt_ammu_wall2"},
	{13131, "cunte_blockammo", "mp_bluemetaldoor_256"}, {13131, "cunte_blockammo", "mp_gun_targets"},
	{13131, "cunte_blockammo", "newall10"}, {13131, "cunte_blockammo", "sw_door15"}, {13131, "cunte_blockammo", "sw_locals"},
	{13131, "cunte_blockammo", "wallwindblank_256"}, {13131, "cunte_blockammo", "ws_patchygravel"},
	{12855, "cunte_cop", "des_thrails"}, {12855, "cunte_cop", "sjmfrateblu2"}, {12855, "cunte_cop", "sjmgrund2b"},
	{12855, "cunte_cop", "sw_bars"}, {12855, "cunte_cop", "sw_brick05"}, {12855, "cunte_cop", "sw_brick05b"},
	{12855, "cunte_cop", "sw_copdoor1"}, {12855, "cunte_cop", "sw_copgrass01"}, {12855, "cunte_cop", "sw_path1"},
	{12855, "cunte_cop", "sw_PD"}, {12855, "cunte_cop", "sw_PDground"}, {12855, "cunte_cop", "sw_shutters1"},
	{12855, "cunte_cop", "sw_wall01"}, {12855, "cunte_cop", "sw_wind01"}, {12855, "cunte_cop", "ws_bigstones"},
	{12853, "cunte_gas01", "aroofbit93"}, {12853, "cunte_gas01", "downtsign13_LA"}, {12853, "cunte_gas01", "postcards_law"},
	{12853, "cunte_gas01", "starspangban1_256"}, {12853, "cunte_gas01", "sw_floor1"}, {12853, "cunte_gas01", "sw_garagewin"},
	{12853, "cunte_gas01", "sw_gasshelves"}, {12853, "cunte_gas01", "sw_gasso"}, {12853, "cunte_gas01", "sw_gasso2"},
	{12853, "cunte_gas01", "sw_gasstation1"}, {3306, "cunte_house1", "darkplanks1"}, {3306, "cunte_house1", "des_ntwnwall1"},
	{3306, "cunte_house1", "garargeb2"}, {3306, "cunte_house1", "pinkfence_law"}, {3306, "cunte_house1", "sw_patiodoors"},
	{3306, "cunte_house1", "tilered"}, {3306, "cunte_house1", "woodwalllight2256"}, {3306, "cunte_house1", "ws_boxhouse_wins6"},
	{12843, "cunte_lik", "crencouwall1"}, {12843, "cunte_lik", "des_rosigns1"}, {12843, "cunte_lik", "LAstripmall1"},
	{12848, "cunte_town1", "lhav_shops5new"}, {12848, "cunte_town1", "newall9-1"}, {12848, "cunte_town1", "pinkshop"},
	{12848, "cunte_town1", "rufwallb256hi"}, {12848, "cunte_town1", "sjmbhus1"}, {12848, "cunte_town1", "sprunk_temp"},
	{12848, "cunte_town1", "sw_bakers01"}, {12848, "cunte_town1", "sw_bakers02"}, {12848, "cunte_town1", "sw_lickter"},
	{12848, "cunte_town1", "wall256hi"}, {12848, "cunte_town1", "ws_doubledoor3"}, {13096, "cunte_wires", "inwindow1shdw"},
	{13096, "cunte_wires", "sw_skids_a"}, {13096, "cunte_wires", "telewireslong2"}, {17025, "cuntrock", "cliffmid1"},
	{17025, "cuntrock", "rock_country128"}, {18225, "cuntrockcs_t", "cliffmid4"}, {18552, "cunts_gunclub", "ws_corr_1_tan"},
	{17036, "cuntwbt", "bluemetal05"}, {17036, "cuntwbt", "carparkdoor1_256"}, {17036, "cuntwbt", "corugwall2-1"},
	{17036, "cuntwbt", "des_woodslats1"}, {17036, "cuntwbt", "des_woodslats2"}, {18234, "cuntwbtxcs_t", "des_cornices"},
	{18234, "cuntwbtxcs_t", "des_door2"}, {18234, "cuntwbtxcs_t", "des_thfdoor"}, {18234, "cuntwbtxcs_t", "mp_pinemedical"},
	{18234, "cuntwbtxcs_t", "offwhitebrix"}, {18237, "cuntwbtzzcs_t", "corugwallnew6_128"}, {18237, "cuntwbtzzcs_t", "des_dinerwall"},
	{18237, "cuntwbtzzcs_t", "metaldoor01_256"}, {17049, "cuntwf", "hay"}, {17049, "cuntwf", "sw_vane01"},
	{17049, "cuntwf", "sw_walltile"}, {17049, "cuntwf", "ws_corrugated3"}, {17079, "cuntwland", "forestfloor4"},
	{17079, "cuntwland", "forest_rocks"}, {17079, "cuntwland", "grass10dirt"}, {17079, "cuntwland", "grass10forest"},
	{17079, "cuntwland", "grassshort2long256"}, {17079, "cuntwland", "grasstype3dirt"}, {17079, "cuntwland", "grasstype4-3"},
	{17079, "cuntwland", "grasstype4_staw"}, {17079, "cuntwland", "grasstype5"}, {17079, "cuntwland", "grasstype5_4"},
	{17079, "cuntwland", "roadblendcunt"}, {17079, "cuntwland", "rocktq128blender"}, {17079, "cuntwland", "rocktq128_dirt"},
	{17079, "cuntwland", "stones256"}, {17079, "cuntwland", "ws_freeway4"}, {17079, "cuntwland", "ws_sub_pen_conc2"},
	{17079, "cuntwland", "ws_tunnelwall1"}, {17079, "cuntwland", "ws_tunnelwall2"}, {17092, "cuntwlandcarparks", "sw_sandgrass4"},
	{17081, "cuntwlandcent", "grass10des_dirt2"}, {17081, "cuntwlandcent", "grass10_grassdeep1"},
	{17081, "cuntwlandcent", "grass10_stones256"}, {17081, "cuntwlandcent", "grassdeep1"}, {17081, "cuntwlandcent", "grasstype510"},
	{17081, "cuntwlandcent", "grasstype510_10"}, {17081, "cuntwlandcent", "RAIL_stones256"},
	{17081, "cuntwlandcent", "rocktq128_forestblend2"}, {17081, "cuntwlandcent", "sw_dirt01_forestblend"},
	{17081, "cuntwlandcent", "ws_traingravel"}, {17101, "cuntwlandse", "cw2_weeroad1"}, {17101, "cuntwlandse", "des_crackeddirt1"},
	{17101, "cuntwlandse", "grass4dirtytrans"}, {17101, "cuntwlandse", "grassgrnbrnx256"}, {17101, "cuntwlandse", "grasstype5_dirt"},
	{17101, "cuntwlandse", "newcrop3"}, {17075, "cuntwlandwest", "cw2_mounttrailblank"},
	{17075, "cuntwlandwest", "desertstones256forestmix"}, {17075, "cuntwlandwest", "des_dirtgrassmixb"},
	{17075, "cuntwlandwest", "des_dirtgrassmixbmp"}, {17075, "cuntwlandwest", "des_dirtgrassmixc"},
	{17075, "cuntwlandwest", "des_dirtgrassmix_grass4"}, {17075, "cuntwlandwest", "forestfloor3_forest"},
	{17075, "cuntwlandwest", "forestfloor_sones256"}, {17075, "cuntwlandwest", "grasstype10_4blend"},
	{17075, "cuntwlandwest", "grasstype4blndtodirt"}, {17075, "cuntwlandwest", "mountainskree_stones256"},
	{18239, "cuntwrestcs_t", "des_metalwinwee"}, {18239, "cuntwrestcs_t", "mp_Jrest"}, {18239, "cuntwrestcs_t", "shopdoor02_law"},
	{17146, "cuntwroad", "Tar_1line256HVblend2"}, {17146, "cuntwroad", "Tar_1line256HVblenddrtdot"},
	{17146, "cuntwroad", "Tar_1line256HVgtravel"}, {17146, "cuntwroad", "Tar_1line256HVlightsand"},
	{17146, "cuntwroad", "Tar_blenddrtwhiteline"}, {17146, "cuntwroad", "Tar_lineslipway"}, {17146, "cuntwroad", "ws_drain_small"},
	{18233, "cuntwshopscs_t", "des_adobedoor3"}, {18233, "cuntwshopscs_t", "des_baitshop"}, {18233, "cuntwshopscs_t", "des_baitsign"},
	{18233, "cuntwshopscs_t", "des_ntwnwin2"}, {18233, "cuntwshopscs_t", "des_ntwnwin5"}, {18233, "cuntwshopscs_t", "des_oldtinroof"},
	{18233, "cuntwshopscs_t", "des_shopsigns1"}, {18233, "cuntwshopscs_t", "orange1"}, {18233, "cuntwshopscs_t", "snpdwhit3"},
	{18233, "cuntwshopscs_t", "vgngewall1_256"}, {2958, "cut_beer", "bottles_kb1"}, {18264, "cw2_cinemablockcs_t", "corporate2"},
	{18264, "cw2_cinemablockcs_t", "cw_movieboard"}, {18264, "cw2_cinemablockcs_t", "GB_good men"},
	{18264, "cw2_cinemablockcs_t", "GB_Last of Mullets"}, {18264, "cw2_cinemablockcs_t", "LAglaswall1"},
	{18264, "cw2_cinemablockcs_t", "newall9"}, {18264, "cw2_cinemablockcs_t", "pcut_band_law"},
	{18264, "cw2_cinemablockcs_t", "sw_storewin03"}, {17067, "cw2_logcabins", "cw2_logwall"}, {17067, "cw2_logcabins", "sw_cabinroof"},
	{17067, "cw2_logcabins", "trail_win3"}, {17067, "cw2_logcabins", "wilsd_05_la"}, {18261, "cw2_photoblockcs_t", "cw_loansign"},
	{18261, "cw2_photoblockcs_t", "sw_wallbrick_04"}, {17064, "cw2_storesnstuff", "comptdoor4"},
	{17064, "cw2_storesnstuff", "des_garagedoor1"}, {17064, "cw2_storesnstuff", "LAtranswall1"}, {17012, "cwestfac", "vgnwrehse2_256"},
	{17012, "cwestfac", "vgnwrehse3_256"}, {17012, "cwestfac", "vgnwrehse4_256"}, {17012, "cwestfac", "vnghse6_128"},
	{17324, "cwsbarn", "des_bullboards"}, {17324, "cwsbarn", "des_ranchwall2"}, {17324, "cwsbarn", "des_redslats"},
	{18216, "cw_changemecs_t", "plasfence1_256"}, {18216, "cw_changemecs_t", "plasfence2_256"},
	{18250, "cw_junkbuildcs_t", "Was_graffiti"}, {18250, "cw_junkbuildcs_t", "Was_scrpyd_baler_locker"},
	{18250, "cw_junkbuildcs_t", "Was_scrpyd_baler_wallgrime"}, {18250, "cw_junkbuildcs_t", "Was_scrpyd_bodywk_edge"},
	{18250, "cw_junkbuildcs_t", "Was_scrpyd_fence_wd_stain"}, {18250, "cw_junkbuildcs_t", "Was_scrpyd_hngr_jsts"},
	{18250, "cw_junkbuildcs_t", "Was_scrpyd_rustmetal"}, {18250, "cw_junkbuildcs_t", "Was_scrpyd_shack"},
	{18250, "cw_junkbuildcs_t", "Was_scrpyd_shack_wall"}, {18250, "cw_junkbuildcs_t", "Was_scrpyd_shack_win"},
	{18250, "cw_junkbuildcs_t", "Was_scrpyd_sign_alv"}, {18250, "cw_junkbuildcs_t", "Was_scrpyd_switch"},
	{18250, "cw_junkbuildcs_t", "Was_scrpyd_wall_crgated"}, {18246, "cw_junkyard2cs_t", "Was_scrpyd_carbits"},
	{18246, "cw_junkyard2cs_t", "Was_scrpyd_carhood"}, {18246, "cw_junkyard2cs_t", "Was_scrpyd_cyl_head"},
	{18246, "cw_junkyard2cs_t", "Was_scrpyd_door_dbl_grey"}, {18246, "cw_junkyard2cs_t", "Was_scrpyd_engine"},
	{18246, "cw_junkyard2cs_t", "Was_scrpyd_tires"}, {18246, "cw_junkyard2cs_t", "Was_scrpyd_trailer"},
	{18246, "cw_junkyard2cs_t", "Was_scrpyd_trailer_door"}, {18246, "cw_junkyard2cs_t", "Was_scrpyd_trailer_edge"},
	{18246, "cw_junkyard2cs_t", "Was_scrpyd_trailer_front"}, {18246, "cw_junkyard2cs_t", "Was_scrpyd_trailer_hatch"},
	{18246, "cw_junkyard2cs_t", "Was_scrpyd_trailer_join"}, {18246, "cw_junkyard2cs_t", "Was_scrpyd_trailer_stripe"},
	{18246, "cw_junkyard2cs_t", "Was_scrpyd_trailer_win_side"}, {18249, "cw_junkyardccs_t", "Was_scrpyd_shredder_side"},
	{18249, "cw_junkyardccs_t", "Was_scrpyd_trk_contnr_sd"}, {18247, "cw_junkyarddigcs_t", "Was_scrpyd_axle_end"},
	{18247, "cw_junkyarddigcs_t", "Was_scrpyd_crane"}, {18247, "cw_junkyarddigcs_t", "Was_scrpyd_crane_back"},
	{18247, "cw_junkyarddigcs_t", "Was_scrpyd_crane_cab"}, {18247, "cw_junkyarddigcs_t", "Was_scrpyd_crane_hyd"},
	{18247, "cw_junkyarddigcs_t", "Was_scrpyd_step"}, {18245, "cw_junkyardmachin", "Was_scrpyd_baler_decking"},
	{18245, "cw_junkyardmachin", "Was_scrpyd_baler_gen"}, {18245, "cw_junkyardmachin", "Was_scrpyd_baler_gen_ed"},
	{18245, "cw_junkyardmachin", "Was_scrpyd_baler_gen_rvt"}, {18245, "cw_junkyardmachin", "Was_scrpyd_baler_locker_edge"},
	{18245, "cw_junkyardmachin", "Was_scrpyd_baler_pipes"}, {18245, "cw_junkyardmachin", "Was_scrpyd_baler_pit_dbris"},
	{18245, "cw_junkyardmachin", "Was_scrpyd_baler_stepfront"}, {18245, "cw_junkyardmachin", "Was_scrpyd_light_yellow"},
	{18245, "cw_junkyardmachin", "Was_scrpyd_wall_grn"}, {18245, "cw_junkyardmachin", "Was_scrpyd_wall_grn_skirt"},
	{17041, "cw_motel1", "des_motelsigns1"}, {17041, "cw_motel1", "des_motelsigns3"}, {17041, "cw_motel1", "des_motelwall4"},
	{17041, "cw_motel1", "des_motelwall5"}, {18242, "cw_motel2cs_t", "des_motelsigns2"}, {18242, "cw_motel2cs_t", "des_motelwall1"},
	{18242, "cw_motel2cs_t", "des_motelwall2"}, {18242, "cw_motel2cs_t", "des_motelwall3"}, {18201, "cw_roofbitcs_t", "aroofbit1"},
	{18201, "cw_roofbitcs_t", "aroofbit2"}, {18201, "cw_roofbitcs_t", "aroofbit3"}, {18201, "cw_roofbitcs_t", "aroofbit4"},
	{18201, "cw_roofbitcs_t", "aroofbit5"}, {18201, "cw_roofbitcs_t", "aroofbit6"}, {18201, "cw_roofbitcs_t", "aroofbit7"},
	{18201, "cw_roofbitcs_t", "aroofbit8"}, {18201, "cw_roofbitcs_t", "aroofbit9"}, {18201, "cw_roofbitcs_t", "aroofbit91"},
	{18201, "cw_roofbitcs_t", "aroofbit92"}, {18241, "cw_tempstuffcs_t", "bluemetal03"}, {18241, "cw_tempstuffcs_t", "des_metaldoor1"},
	{18241, "cw_tempstuffcs_t", "roof11new"}, {18232, "cw_truckstopcs_t", "des_adobewall3"}, {18232, "cw_truckstopcs_t", "des_roswin3"},
	{18232, "cw_truckstopcs_t", "des_wigwamdoor"}, {18232, "cw_truckstopcs_t", "dinerwel"},
	{18232, "cw_truckstopcs_t", "wlinebits_law"}, {18232, "cw_truckstopcs_t", "ws_xenon_old_dirty"}, {3193, "cxref_desert", "BIG_COCK"},
	{3193, "cxref_desert", "Bow_Roofvent"}, {3193, "cxref_desert", "des_bywall1"}, {3193, "cxref_desert", "des_rustpanel"},
	{3193, "cxref_desert", "des_wigwam"}, {3193, "cxref_desert", "drvin_metal"}, {3193, "cxref_desert", "grilldoors1nt"},
	{3193, "cxref_desert", "pierplanks_128"}, {3193, "cxref_desert", "swall3256"}, {3193, "cxref_desert", "sw_barnfence01"},
	{3193, "cxref_desert", "sw_cabwin01"}, {3193, "cxref_desert", "sw_woodslat01"}, {3336, "cxref_freeway", "mp_aldeasign"},
	{3336, "cxref_freeway", "roadsback01_LA"}, {3246, "cxref_oldwest", "des_ntwndoor2"}, {3246, "cxref_oldwest", "des_ntwnwin3"},
	{3246, "cxref_oldwest", "des_ntwnwin6"}, {3187, "cxref_quarrytest", "gs_barge1"}, {3187, "cxref_quarrytest", "gs_barge2"},
	{3187, "cxref_quarrytest", "gs_door1"}, {3187, "cxref_quarrytest", "gs_iron1"}, {3187, "cxref_quarrytest", "gs_iron2"},
	{3187, "cxref_quarrytest", "gs_sign1"}, {3187, "cxref_quarrytest", "gs_wind1"}, {3187, "cxref_quarrytest", "gs_wood1"},
	{3187, "cxref_quarrytest", "gs_wood2"}, {3355, "cxref_savhus", "des_brick1"}, {3355, "cxref_savhus", "des_bywall2"},
	{3355, "cxref_savhus", "sw_wind07"}, {3286, "cxrf_indstuff", "des_bytower1"}, {3292, "cxrf_payspray", "Alumox64b"},
	{3292, "cxrf_payspray", "compressor"}, {3292, "cxrf_payspray", "newindow4"}, {3292, "cxrf_payspray", "panel2_64a"},
	{3292, "cxrf_payspray", "sf_spray1"}, {3292, "cxrf_payspray", "sf_spraydoor1"}, {3292, "cxrf_payspray", "walldirtynewa256"},
	{3292, "cxrf_payspray", "wallwasdrk128"}, {3292, "cxrf_payspray", "welder"}, {16338, "dam_genroom", "dam_genpanel"},
	{16338, "dam_genroom", "dam_genrail"}, {16338, "dam_genroom", "dam_genwin"}, {16338, "dam_genroom", "dam_terazzoedge"},
	{16338, "dam_genroom", "dam_turbine"}, {16338, "dam_genroom", "des_dam_wall"}, {16338, "dam_genroom", "ws_drain"},
	{1556, "dave_door_2a", "casinodoor1_128"}, {1557, "dave_door_2b", "miragedoor1_256"}, {1555, "dave_door_2c", "vgnhsedor1_256"},
	{3092, "deadcopx", "ropes01"}, {3092, "deadcopx", "tied_cop"}, {2905, "dead_mantxd", "billyblood"},
	{3866, "dem1_sfxrf", "ws_blistered1"}, {3866, "dem1_sfxrf", "ws_demolishwall2"}, {3866, "dem1_sfxrf", "ws_demolishwall3small"},
	{3866, "dem1_sfxrf", "ws_demolishwins1"}, {3866, "dem1_sfxrf", "ws_flooredge"}, {3866, "dem1_sfxrf", "ws_oldoffice3"},
	{3866, "dem1_sfxrf", "ws_walledge"}, {3887, "dem4_sfxrf", "ws_apartmenttan1"}, {3887, "dem4_sfxrf", "ws_blistered1smoked"},
	{3887, "dem4_sfxrf", "ws_classyshop2"}, {3887, "dem4_sfxrf", "ws_demolishwall4_small"},
	{3887, "dem4_sfxrf", "ws_peeling_ceiling2_smoked"}, {10984, "demolished1_sfse", "ws_rubble1b"},
	{16175, "des2vegas_join", "des_redrockbot"}, {16175, "des2vegas_join", "des_redrockmid"}, {16175, "des2vegas_join", "des_rocky1"},
	{16175, "des2vegas_join", "des_scrub1_dirt1"}, {16175, "des2vegas_join", "rocktbrn_dirt2"},
	{16175, "des2vegas_join", "vgs_rockbot1a"}, {16175, "des2vegas_join", "vgs_rockmid1a"}, {16110, "desert", "des_redrock1"},
	{16110, "desert", "des_redrock2"}, {11488, "desertdam", "dam_statue"}, {3330, "desertmisc", "des_radiomast"},
	{16013, "desn2_alphabits", "des_powerlines"}, {16395, "desn2_minestuff", "cw2_mountboards1"}, {16398, "desn2_peckers", "des_cock1"},
	{16398, "desn2_peckers", "des_cockbit"}, {16398, "desn2_peckers", "des_cockdanglybit2"}, {16398, "desn2_peckers", "des_cockhead"},
	{16398, "desn2_peckers", "pierwall06_law"}, {16398, "desn2_peckers", "tarp_law"}, {16398, "desn2_peckers", "vgs_shopwall02_128"},
	{16388, "desn2_stud", "decorated"}, {16388, "desn2_stud", "des_spreadsig"}, {16388, "desn2_stud", "simplewall256"},
	{16360, "desn2_truckstop", "sw_wind17"}, {16360, "desn2_truckstop", "ws_xenon_1"}, {11549, "desn_decocafe", "mp_Jdiner"},
	{11549, "desn_decocafe", "wallwhtwind256"}, {11549, "desn_decocafe", "wallwind256"}, {11431, "desn_teepee", "des_tepesign"},
	{11464, "desn_trainstuff", "alleydoor1"}, {11464, "desn_trainstuff", "ws_goldengate5"},
	{11464, "desn_trainstuff", "ws_tunnelwall2smoked"}, {11545, "desn_truckstop", "ws_xenon_2"},
	{11545, "desn_truckstop", "ws_xenon_3"}, {13598, "destructo", "exploder1"}, {13598, "destructo", "knifeAfterDark"},
	{13598, "destructo", "pendantlight_128"}, {13598, "destructo", "redband_64"}, {13598, "destructo", "sjmfnce"},
	{13598, "destructo", "sunshinebillboard"}, {13598, "destructo", "vsrbanner"}, {16407, "des_airfieldhus", "burglry_wall1"},
	{16407, "des_airfieldhus", "grge_corug1"}, {16407, "des_airfieldhus", "kb_flykiller1"}, {16407, "des_airfieldhus", "plane_cable"},
	{16407, "des_airfieldhus", "plane_photos1"}, {16407, "des_airfieldhus", "quar_cranerail"},
	{16137, "des_bigearstuff", "dirtyledge_law"}, {3303, "des_bighus", "sw_wind09"}, {16098, "des_boneyard", "roucghstone"},
	{16098, "des_boneyard", "roucghstonebrt"}, {16098, "des_boneyard", "Was_meshfence"}, {3278, "des_breakwin1", "des_warewin"},
	{16326, "des_byoffice", "des_bywin1"}, {16326, "des_byoffice", "plainwoodenfence1_256"}, {16377, "des_byofficeint", "blak_1"},
	{16377, "des_byofficeint", "hectics_text"}, {16377, "des_byofficeint", "ufo_pics2"}, {16377, "des_byofficeint", "water_cool1"},
	{16377, "des_byofficeint", "water_cool2"}, {16102, "des_cen", "desert_1line256"}, {16102, "des_cen", "desert_1linetar"},
	{16102, "des_cen", "desstones_dirt1"}, {16102, "des_cen", "des_dirttrackl"}, {16102, "des_cen", "des_geyser"},
	{16102, "des_cen", "des_ripplsand"}, {16102, "des_cen", "des_rocky1_dirt1"}, {16102, "des_cen", "des_scrub1"},
	{16102, "des_cen", "sandgrnd128"}, {11425, "des_clifftown", "des_adobedoor2"}, {11425, "des_clifftown", "des_adobewall1"},
	{11425, "des_clifftown", "des_adobewin1"}, {11425, "des_clifftown", "des_adobewin2"}, {11425, "des_clifftown", "des_adobewin3"},
	{11425, "des_clifftown", "des_cemgates"}, {11425, "des_clifftown", "des_damcamper"}, {11425, "des_clifftown", "des_shfront1"},
	{11425, "des_clifftown", "des_shopwin1"}, {11425, "des_clifftown", "ros_thwin1"}, {16132, "des_cn2_dam", "des_dam_detail1"},
	{16132, "des_cn2_dam", "des_dam_wins"}, {16364, "des_damquay", "des_creamshopdoor"}, {16364, "des_damquay", "pierdoor01_law"},
	{16364, "des_damquay", "sw_dinewin"}, {11499, "des_dinerw", "gate1_LAe"}, {16271, "des_factory", "corr_2_plaintiledblue"},
	{16271, "des_factory", "des_facwin"}, {16271, "des_factory", "dish_cylinder_a"},
	{16271, "des_factory", "sm_quarry_conv_belt_empty"}, {16271, "des_factory", "sm_quarry_crusher1"},
	{16021, "des_geyser", "des_geywin1"}, {16021, "des_geyser", "sjmbigold1"}, {16387, "des_gunclub", "woodenpanels256"},
	{16008, "des_n", "des_1lineend"}, {16008, "des_n", "des_roadedge1"}, {16008, "des_n", "drvin_ground1"},
	{16008, "des_n", "greycrossing"}, {16008, "des_n", "motocross_256"}, {16008, "des_n", "pavebsandend"},
	{16037, "des_nbridge", "girder2_red_64HV"}, {16103, "des_ne", "des_dirt2stones"}, {16103, "des_ne", "des_dirtgravel"},
	{16103, "des_ne", "des_dirttrackx"}, {16103, "des_ne", "des_oldrunway"}, {16103, "des_ne", "des_oldrunwayblend"},
	{16103, "des_ne", "des_panelconc"}, {16103, "des_ne", "des_yelrock"}, {16103, "des_ne", "Tar_venturasjoin"},
	{16103, "des_ne", "venturas_fwend"}, {16103, "des_ne", "vgs_rockwall01_128"}, {16010, "des_nstuff", "des_metalwinbig"},
	{16011, "des_ntown", "des_creamshopwin"}, {16011, "des_ntown", "des_ntwndoor1"}, {16011, "des_ntown", "des_ntwndoor3"},
	{16011, "des_ntown", "des_ntwnskirt1"}, {16011, "des_ntown", "des_ntwnwin4"}, {11429, "des_nw", "des_grass2dirt1"},
	{11429, "des_nw", "des_grass2scrub"}, {11429, "des_nw", "des_roadedge2"}, {11506, "des_nw2", "cuntroad01_law"},
	{11506, "des_nw2", "des_dirt2gygrass"}, {11496, "des_nwstuff", "brdwalkwater_la"}, {11450, "des_nwtown", "des_greendoor"},
	{11450, "des_nwtown", "des_greenwin"}, {11450, "des_nwtown", "des_hotelsigns"}, {11450, "des_nwtown", "des_nwmed"},
	{11450, "des_nwtown", "des_nwwatower"}, {11450, "des_nwtown", "des_woodshopdoor1"}, {11450, "des_nwtown", "des_woodshopwin1"},
	{11450, "des_nwtown", "gymtop1b_LAe"}, {11450, "des_nwtown", "gymtop1c_LAe"}, {11450, "des_nwtown", "gymtop1_LAe"},
	{11450, "des_nwtown", "mp_cnbarbers"}, {11451, "des_nwtownpolice", "des_sheriffsign"}, {11449, "des_nwtownw", "des_loungesign"},
	{11449, "des_nwtownw", "des_rosmot1"}, {16087, "des_oilfield", "des_reftower2"}, {16055, "des_quarry", "desertgravel256"},
	{16055, "des_quarry", "desgrns256"}, {16055, "des_quarry", "des_quarryrd"}, {16055, "des_quarry", "des_quarryrdl"},
	{16055, "des_quarry", "des_quarryrdr"}, {16055, "des_quarry", "des_rockyfill"}, {16055, "des_quarry", "lasdkcrtgr1111"},
	{16055, "des_quarry", "lasdkcrtgr1ssss"}, {16071, "des_quarrybelts", "sjmlawarwall5"},
	{16071, "des_quarrybelts", "sm_quarry_belt_bad"}, {16071, "des_quarrybelts", "sm_quarry_conv_belt"},
	{16071, "des_quarrybelts", "sm_quarry_crusher2"}, {16071, "des_quarrybelts", "sm_quarry_handrail"},
	{16076, "des_quarrybits", "redvertical_64HV"}, {16076, "des_quarrybits", "sm_crusher_rollers"},
	{16076, "des_quarrybits", "sm_quarry_Rusty"}, {16328, "des_quarrycrane", "ws_cranehook"}, {11490, "des_ranch", "des_logwall"},
	{11490, "des_ranch", "des_ranchwin"}, {11490, "des_ranch", "des_trellis"}, {11490, "des_ranch", "newindow11128"},
	{16213, "des_s", "des_pave_trackstart"}, {16109, "des_se1", "Tar_2line128"}, {16232, "des_se2", "des_dirt2dedgrass"},
	{16234, "des_se3", "grasstype5_desdirt"}, {11469, "des_steakhouse", "des_bull"}, {11469, "des_steakhouse", "des_bullheid"},
	{11469, "des_steakhouse", "des_bullsign"}, {16006, "des_stownmain1", "des_roswin4"}, {16006, "des_stownmain1", "des_thwin2"},
	{16005, "des_stownmain2", "des_roswin2"}, {16005, "des_stownmain2", "sw_door19"}, {16385, "des_stownmain3", "newall11-1"},
	{16067, "des_stownmots1", "des_bowlingsig"}, {16067, "des_stownmots1", "des_rosigns2"}, {16067, "des_stownmots1", "kb_diner_2b"},
	{16067, "des_stownmots1", "LAtranswall2"}, {16069, "des_stownstrip1", "sw_metalgate1"}, {16064, "des_stownstrip2", "kingothering"},
	{16064, "des_stownstrip2", "yellowall_LA"}, {16434, "des_stwnsigns1", "des_banksign"}, {11430, "des_sw", "pav_brngrass"},
	{11430, "des_sw", "Tar_1line256HVtodirt"}, {16136, "des_telescopestuff", "carparkdoor3_256"},
	{16136, "des_telescopestuff", "dish_holemetal_t"}, {16136, "des_telescopestuff", "dish_panel_B"},
	{16136, "des_telescopestuff", "dish_panel_c"}, {16136, "des_telescopestuff", "dish_roundbit_b"},
	{16136, "des_telescopestuff", "dish_strut_t"}, {16136, "des_telescopestuff", "poshentrance2_256"},
	{16136, "des_telescopestuff", "stoneclad1"}, {16136, "des_telescopestuff", "ws_palebrickwall1"},
	{16023, "des_trainstuff", "metpat64shadow"}, {16023, "des_trainstuff", "railxing3"}, {16023, "des_trainstuff", "ws_stoneblock"},
	{16060, "des_trees", "Newtreed256"}, {16060, "des_trees", "sm_bark_light"}, {16060, "des_trees", "veg_bevtreebase"},
	{16146, "des_ufoinn", "clukpost1_LAe2"}, {16146, "des_ufoinn", "des_probesign"}, {16146, "des_ufoinn", "electricbox256"},
	{11484, "des_wdam", "dam_panel"}, {11471, "des_wtownmain", "orange2"}, {3426, "des_xoilfield", "oilband_64"},
	{1559, "diamond", "CJ_W_GRAD"}, {1970, "dinerseat1", "diner_seat1"}, {1970, "dinerseat1", "diner_tbl1"},
	{1968, "dinerseat2", "diner_tbl2"}, {1968, "dinerseat2", "donut_seat1"}, {3595, "dingbat01_la", "bambowal1_LA"},
	{3595, "dingbat01_la", "comptwall20"}, {3595, "dingbat01_la", "dingwin01_LA"}, {3595, "dingbat01_la", "dingwin02_LA"},
	{3595, "dingbat01_la", "dingwin03_LA"}, {3595, "dingbat01_la", "LApinkwall1"}, {3595, "dingbat01_la", "mosaic1_LAwn"},
	{13633, "dirtouter", "ahbobo_1"}, {13633, "dirtouter", "AH_heat"}, {13633, "dirtouter", "AH_homiessharp"},
	{13662, "dirtrack", "AH_chevron"}, {13662, "dirtrack", "ah_ramp"}, {13662, "dirtrack", "bplasticsack"},
	{13662, "dirtrack", "plasticsack"}, {13631, "dirtstad", "andymonkey"}, {1972, "display1", "kb_display1"},
	{5154, "dkcargoshp_las2", "alarm_64"}, {5154, "dkcargoshp_las2", "bandingblue_64"}, {5154, "dkcargoshp_las2", "boatrailing_128"},
	{5154, "dkcargoshp_las2", "boatside2_256"}, {5154, "dkcargoshp_las2", "cargodoor_128"}, {5154, "dkcargoshp_las2", "Diamondp64"},
	{5154, "dkcargoshp_las2", "green_64"}, {5154, "dkcargoshp_las2", "jettyfloor02"}, {5154, "dkcargoshp_las2", "mp_cellwalla_256"},
	{5154, "dkcargoshp_las2", "mp_cellwall_256"}, {5154, "dkcargoshp_las2", "wallbluetinge256"},
	{12932, "dk_midbuilds", "healthcen02_256"}, {13744, "docg01alfa_lahills", "Helipad_H"},
	{13744, "docg01alfa_lahills", "plaster256i"}, {13724, "docg01_lahills", "ab_tile2"}, {13724, "docg01_lahills", "Bow_sub_decortop"},
	{13724, "docg01_lahills", "chr_flags_256"}, {13724, "docg01_lahills", "glassblock4_law"}, {13724, "docg01_lahills", "marbletile8b"},
	{13724, "docg01_lahills", "ston10S"}, {13724, "docg01_lahills", "sw_mansionwin"}, {3621, "dockcargo1_las", "dt_ceiling1"},
	{3621, "dockcargo1_las", "lasdkcrtgr1"}, {3621, "dockcargo1_las", "lasdkcrtgr11"}, {3621, "dockcargo1_las", "lasdkcrtgr111"},
	{3621, "dockcargo1_las", "lasdkcrtgr1s"}, {3621, "dockcargo1_las", "lasdkcrtgr1ss"}, {3621, "dockcargo1_las", "lasdkcrtgr1sss"},
	{3621, "dockcargo1_las", "meshwiny"}, {3621, "dockcargo1_las", "sanpedock1"}, {3621, "dockcargo1_las", "sanpedock2"},
	{3621, "dockcargo1_las", "sjmpostback"}, {3564, "dockcargo2_las", "lastran1"}, {3564, "dockcargo2_las", "lastran2"},
	{3564, "dockcargo2_las", "lastran3"}, {3564, "dockcargo2_las", "lastran4"}, {3564, "dockcargo2_las", "lastran6"},
	{3564, "dockcargo2_las", "lastran7"}, {3564, "dockcargo2_las", "lastran8"}, {3564, "dockcargo2_las", "lastrk1"},
	{3564, "dockcargo2_las", "lastrk1aa"}, {3564, "dockcargo2_las", "lastrk1bb"}, {3564, "dockcargo2_las", "lastrk2"},
	{3564, "dockcargo2_las", "lastrk3"}, {3564, "dockcargo2_las", "lastrk5"}, {3564, "dockcargo2_las", "lastrk7"},
	{3564, "dockcargo2_las", "steelgirder_64V"}, {1278, "docklight", "aascaff"}, {10852, "dockroad_sfse", "dt_bmx_grass"},
	{10852, "dockroad_sfse", "sf_junction3"}, {10842, "docks2refl_sfse", "support_256"}, {10842, "docks2refl_sfse", "ws_corr_2_blu"},
	{10842, "docks2refl_sfse", "ws_drydockdoors"}, {10842, "docks2refl_sfse", "ws_sub_pen_conc3"},
	{10842, "docks2refl_sfse", "ws_sub_pen_conc4"}, {5108, "docks2_las2", "concroadslab_256"}, {5108, "docks2_las2", "dukbrid1_LAS"},
	{5108, "docks2_las2", "LASLACMA1"}, {5108, "docks2_las2", "sjmndukwal1"}, {5108, "docks2_las2", "sjmndukwal2"},
	{10769, "docks2_sfse", "ws_navystation"}, {10769, "docks2_sfse", "ws_traxonconcdirty"}, {5109, "docks_las2", "adockfn3"},
	{5109, "docks_las2", "dukbridmet1_LAS"}, {5109, "docks_las2", "meetwalv1"}, {5109, "docks_las2", "sjmndukwal3"},
	{14488, "dogsgym", "AH_bgmartiles"}, {14488, "dogsgym", "ah_grnplstr"}, {14488, "dogsgym", "AH_halfcourt"},
	{14488, "dogsgym", "AH_stolewindow"}, {14488, "dogsgym", "ah_yelplnks"}, {1607, "dolphin", "dolphin"},
	{9614, "donut_sfw", "donut1_sfw"}, {9614, "donut_sfw", "donut2_sfw"}, {9614, "donut_sfw", "donut3_sfw"},
	{9614, "donut_sfw", "grass128hv_blend_"}, {9614, "donut_sfw", "tuff_nut2"}, {9614, "donut_sfw", "TUFF_nut3"},
	{9614, "donut_sfw", "ws_alley2_128_dirt"}, {2221, "donut_tray", "bagel_rb"}, {2221, "donut_tray", "coffeetop_rb"},
	{2221, "donut_tray", "cupside_rb"}, {2221, "donut_tray", "donut2_rb"}, {2221, "donut_tray", "donut3_rb"},
	{2221, "donut_tray", "muffbot_rb"}, {2221, "donut_tray", "mufftop_rb"}, {2221, "donut_tray", "rustycoffeerap_rb"},
	{2221, "donut_tray", "rustynap_rb"}, {2221, "donut_tray", "rustyside_rb"}, {4877, "downtown1_las", "ablndwall1_LAE"},
	{4877, "downtown1_las", "GB_nastybar14"}, {4877, "downtown1_las", "hotdoor01_law"}, {4880, "downtown3_las", "downtshop1_LAn"},
	{4880, "downtown3_las", "downtshop3_LAn"}, {4880, "downtown3_las", "gz_lawbuilda_3"}, {4880, "downtown3_las", "gz_lawbuilda_4"},
	{4880, "downtown3_las", "gz_lawbuilda_5"}, {4887, "downtown_las", "decogranite_la"}, {4887, "downtown_las", "holpac02_law"},
	{4887, "downtown_las", "nwdwntwn1_LAS"}, {4887, "downtown_las", "nwdwntwn2_LAS"}, {4887, "downtown_las", "nwdwntwn5_LAS"},
	{4887, "downtown_las", "pershing1_LAn"}, {4887, "downtown_las", "snpdrlwar1"}, {4887, "downtown_las", "snpedwar4"},
	{4887, "downtown_las", "ws_glassnbrassdoor"}, {11014, "drivingschool_sfse", "ws_turningtricks1_small"},
	{13654, "drkpoly", "asandockw4"}, {14420, "dr_gsbits", "ah_corn1"}, {14420, "dr_gsbits", "mp_apt1_frame1"},
	{14420, "dr_gsbits", "mp_apt1_frame2"}, {14420, "dr_gsbits", "mp_apt1_frame3"}, {14420, "dr_gsbits", "mp_apt1_frame4"},
	{14420, "dr_gsbits", "mp_apt1_pic1"}, {14420, "dr_gsbits", "mp_apt1_pic2"}, {14420, "dr_gsbits", "mp_apt1_pic3"},
	{14420, "dr_gsbits", "mp_apt1_pic4"}, {14420, "dr_gsbits", "mp_apt1_pic5"}, {14420, "dr_gsbits", "mp_apt1_pic6"},
	{14420, "dr_gsbits", "mp_apt1_pic7"}, {14420, "dr_gsbits", "mp_apt1_pic8"}, {14420, "dr_gsbits", "mp_gs_border"},
	{14420, "dr_gsbits", "mp_gs_carpet"}, {14420, "dr_gsbits", "mp_gs_libwall"}, {14420, "dr_gsbits", "mp_gs_rose"},
	{14420, "dr_gsbits", "mp_shop_window"}, {14391, "dr_gsmix", "auto_tune2"}, {14391, "dr_gsmix", "chromecabinet01side_128"},
	{14391, "dr_gsmix", "chromecabinet01_128"}, {14391, "dr_gsmix", "knobs01"}, {14391, "dr_gsmix", "mixingdesk01"},
	{14391, "dr_gsmix", "mixingdesk02"}, {14391, "dr_gsmix", "mixingdesk03"}, {14391, "dr_gsmix", "mixingdesk05"},
	{14391, "dr_gsmix", "mixingdesk07"}, {14391, "dr_gsmix", "mixingdesk09"}, {14391, "dr_gsmix", "phones_64"},
	{14391, "dr_gsmix", "reel01"}, {14391, "dr_gsmix", "speaker04"}, {14391, "dr_gsmix", "speaker05"},
	{14391, "dr_gsmix", "studiomonitor01"}, {14391, "dr_gsmix", "white_128"}, {14387, "dr_gsnew", "ab_Fireplace"},
	{14387, "dr_gsnew", "ab_wood_pot"}, {14387, "dr_gsnew", "AH_flroortile12"}, {14387, "dr_gsnew", "cd_tex1"},
	{14387, "dr_gsnew", "cd_tex2"}, {14387, "dr_gsnew", "la_flair1"}, {14387, "dr_gsnew", "mp_cloth_subwall"},
	{14387, "dr_gsnew", "mp_flowerbush"}, {14387, "dr_gsnew", "mp_gs_border1"}, {14387, "dr_gsnew", "mp_gs_flowerwall"},
	{14387, "dr_gsnew", "mp_gs_kitchfloor"}, {14387, "dr_gsnew", "mp_gs_kitchwall"}, {14387, "dr_gsnew", "mp_gs_mud"},
	{14387, "dr_gsnew", "mp_gs_pooltiles"}, {14387, "dr_gsnew", "mp_gs_wall"}, {14387, "dr_gsnew", "mp_gs_wall1"},
	{14387, "dr_gsnew", "mp_gs_wood"}, {14387, "dr_gsnew", "mp_marble"}, {14387, "dr_gsnew", "mp_stonefloor"},
	{14392, "dr_gsstudio", "amp01"}, {14392, "dr_gsstudio", "amp02"}, {14392, "dr_gsstudio", "amp03"}, {14392, "dr_gsstudio", "amp04"},
	{14392, "dr_gsstudio", "amp05"}, {14392, "dr_gsstudio", "bcwarlock_256"}, {14392, "dr_gsstudio", "cymbal_128"},
	{14392, "dr_gsstudio", "drmstnd1_256"}, {14392, "dr_gsstudio", "drumsideblue128"}, {14392, "dr_gsstudio", "flyingv_256"},
	{14392, "dr_gsstudio", "golddisc_128"}, {14392, "dr_gsstudio", "la_flair2"}, {14392, "dr_gsstudio", "lesbass2_128"},
	{14392, "dr_gsstudio", "monitors_128"}, {14392, "dr_gsstudio", "rec_mix2"}, {14392, "dr_gsstudio", "rec_mix5"},
	{14392, "dr_gsstudio", "rec_mix5b"}, {14392, "dr_gsstudio", "rec_mix5c"}, {14392, "dr_gsstudio", "speaker07"},
	{14392, "dr_gsstudio", "stagemic_128"}, {14392, "dr_gsstudio", "studiopanel02"}, {14392, "dr_gsstudio", "woodcabinet01_128"},
	{2727, "ds_sign", "CJ_DS_light"}, {4682, "dtbuil1_lan2", "arsebottom"}, {4682, "dtbuil1_lan2", "barbershop_256"},
	{4682, "dtbuil1_lan2", "coinlaundry1_256"}, {4682, "dtbuil1_lan2", "greenshop256hi"}, {4682, "dtbuil1_lan2", "greenshoptop1_256"},
	{4682, "dtbuil1_lan2", "grocer1_kb256"}, {4682, "dtbuil1_lan2", "jewel03_128"}, {4682, "dtbuil1_lan2", "jewlers1_256"},
	{4682, "dtbuil1_lan2", "LAInside_Tracksign1"}, {4682, "dtbuil1_lan2", "LAInside_Tracksign2"}, {4682, "dtbuil1_lan2", "lascourtsc2"},
	{4682, "dtbuil1_lan2", "laspedhus2"}, {4682, "dtbuil1_lan2", "laspedhus3"}, {4682, "dtbuil1_lan2", "laspedhus7"},
	{4682, "dtbuil1_lan2", "sl_shopwall1"}, {1942, "dum1", "weight4"}, {1654, "dynamite", "blueflt64"}, {1654, "dynamite", "clock64"},
	{1654, "dynamite", "redcan"}, {1217, "dynbarrels", "hotcoals_64HV"}, {1217, "dynbarrels", "redallu"},
	{1227, "dynbuket", "Metal4_256"}, {1237, "dyncones", "Cone02_64"}, {1211, "dynhydrent", "firehydrant_yell"},
	{1208, "dynjunk", "junk_tv2"}, {1208, "dynjunk", "junk_washer1"}, {1293, "dynnewstnd2", "news_128"},
	{2925, "dyno_box", "dyno_crate"}, {1216, "dynphn", "phoneboxmiami"}, {1258, "dynpostbx", "mailbox2_64"},
	{1258, "dynpostbx", "postbox"}, {1258, "dynpostbx", "white64"}, {1236, "dynrecycle", "bincover_64HV"},
	{1236, "dynrecycle", "recycle01_64"}, {1315, "dyntraffic", "Alumox64e"}, {1315, "dyntraffic", "trafficlight_64"},
	{1575, "dyn_drugs", "drugs1"}, {1575, "dyn_drugs", "drugs2"}, {1575, "dyn_drugs", "drugs3"}, {1575, "dyn_drugs", "drugs4"},
	{1575, "dyn_drugs", "drugs5"}, {1575, "dyn_drugs", "drugs6"}, {1508, "dyn_garage", "CJ_metalDOOR1"},
	{1581, "dyn_keycard", "keycard"}, {1488, "dyn_objects", "CJ_bottle3"}, {1574, "dyn_trash", "binend"}, {1574, "dyn_trash", "trash"},
	{1552, "dyn_vegas", "vgnfence1_256"}, {17550, "eastbeach09_lae2", "Sprunksign1_LAe2"},
	{17550, "eastbeach09_lae2", "sprunkwall1_LAe2"}, {17550, "eastbeach09_lae2", "sprunkwall2_LAe2"},
	{17550, "eastbeach09_lae2", "sprunkwall3_LAe2"}, {17550, "eastbeach09_lae2", "sprunkwall4_LAe2"},
	{17541, "eastbeach2a_lae2", "airportwind02"}, {17541, "eastbeach2a_lae2", "craproad5_LAe"},
	{17541, "eastbeach2a_lae2", "downtwin17"}, {17541, "eastbeach2a_lae2", "gangshop5_LAe"},
	{17541, "eastbeach2a_lae2", "gangsign1_LAe"}, {17541, "eastbeach2a_lae2", "hedge1"}, {17541, "eastbeach2a_lae2", "lights_64HV"},
	{17541, "eastbeach2a_lae2", "sfe_nicearch6"}, {17541, "eastbeach2a_lae2", "towaway"}, {17555, "eastbeach3c_lae2", "compfence3_LAe"},
	{17555, "eastbeach3c_lae2", "compnews3lae"}, {17555, "eastbeach3c_lae2", "decobuild2d_LAn"},
	{17555, "eastbeach3c_lae2", "deisel_2sfs"}, {17555, "eastbeach3c_lae2", "eastwall1_LAe2"},
	{17555, "eastbeach3c_lae2", "gradient128"}, {17555, "eastbeach3c_lae2", "LASLACMA992"}, {17555, "eastbeach3c_lae2", "lastat1"},
	{17555, "eastbeach3c_lae2", "metpull_law"}, {17555, "eastbeach3c_lae2", "vgs_shpfrnt03_128"},
	{17555, "eastbeach3c_lae2", "yelowmankypatio_lae2"}, {17555, "eastbeach3c_lae2", "yelowmankywall_lae2"},
	{17555, "eastbeach3c_lae2", "yelowmankywin_lae2"}, {17547, "eastbeach4a_lae2", "aptsforrent_lae2"},
	{17547, "eastbeach4a_lae2", "bluestucco1"}, {17547, "eastbeach4a_lae2", "dryhedge_128"},
	{17547, "eastbeach4a_lae2", "greywallb256"}, {17547, "eastbeach4a_lae2", "LAdtbuilding3"},
	{17547, "eastbeach4a_lae2", "LAdtbuilding5"}, {17547, "eastbeach4a_lae2", "lastaco6"}, {17547, "eastbeach4a_lae2", "ltgreenwallc1"},
	{17547, "eastbeach4a_lae2", "policeha02_128"}, {17547, "eastbeach4a_lae2", "sand256"}, {17547, "eastbeach4a_lae2", "snpedwen2"},
	{17533, "eastbeach7_lae2", "apartmentwin2blank_256"}, {17533, "eastbeach7_lae2", "apartmentwin2_256"},
	{17533, "eastbeach7_lae2", "apartmentwin3_256"}, {17533, "eastbeach7_lae2", "bluewin1"},
	{17533, "eastbeach7_lae2", "shopwindowlow2_256"}, {17549, "eastbeach8_lae2", "beachshop1_LAe2"},
	{17549, "eastbeach8_lae2", "beachshop2_LAe2"}, {17549, "eastbeach8_lae2", "beachsigns1_LAe2"},
	{13710, "easthills_lahills", "sjmoran4"}, {17542, "eastls1b_lae2", "bricksign1_LAe"}, {17542, "eastls1b_lae2", "comptwall25"},
	{17542, "eastls1b_lae2", "comptwall3"}, {17542, "eastls1b_lae2", "gangshop3_LAe"}, {17542, "eastls1b_lae2", "gangshop4_LAe"},
	{17542, "eastls1b_lae2", "gangshop7_LAe"}, {17542, "eastls1b_lae2", "gangshTop1_LAe"}, {17542, "eastls1b_lae2", "papershop_law"},
	{17542, "eastls1b_lae2", "tanstucco1_LA"}, {17542, "eastls1b_lae2", "vendr01_law"}, {17526, "eastls1_lae2", "alleywall1"},
	{17526, "eastls1_lae2", "alleywall4"}, {17526, "eastls1_lae2", "alleywall5"}, {17526, "eastls1_lae2", "comptsign1_LAe"},
	{17526, "eastls1_lae2", "comptsign2_LAe"}, {17526, "eastls1_lae2", "comptsign3_LAe"}, {17526, "eastls1_lae2", "gangshop6_LAe"},
	{17526, "eastls1_lae2", "sanpshop3"}, {17526, "eastls1_lae2", "spanshop2_LAe"}, {17526, "eastls1_lae2", "swapmall1"},
	{17552, "eastls3_lae2", "motel_wall1"}, {17552, "eastls3_lae2", "venwins01_law"}, {17537, "eastls4_lae2", "alley256"},
	{17537, "eastls4_lae2", "autosign_lae2"}, {17537, "eastls4_lae2", "backalley3_LAe"}, {17537, "eastls4_lae2", "carwash_sign2"},
	{17537, "eastls4_lae2", "cinboard_law"}, {17537, "eastls4_lae2", "clothes2_256"}, {17537, "eastls4_lae2", "compcourtrail2"},
	{17537, "eastls4_lae2", "compdoor6_LAe"}, {17537, "eastls4_lae2", "comptwall13Bot"}, {17537, "eastls4_lae2", "cwashbboard"},
	{17537, "eastls4_lae2", "ja_marketsgnlae2"}, {17537, "eastls4_lae2", "marksgn_lae2"}, {17537, "eastls4_lae2", "momapapa"},
	{17537, "eastls4_lae2", "mural04_LA"}, {17537, "eastls4_lae2", "sjmhicut2las"}, {17537, "eastls4_lae2", "spanishwin1_LAe"},
	{17537, "eastls4_lae2", "stripsign_lae2"}, {17537, "eastls4_lae2", "sun_plasterwall"}, {17537, "eastls4_lae2", "venblock01c"},
	{17848, "eastlstr2_lae2", "antenna1"}, {17848, "eastlstr2_lae2", "deadpalm01"}, {17848, "eastlstr2_lae2", "dead_agave"},
	{17848, "eastlstr2_lae2", "dead_fuzzy"}, {17504, "eastlstr_lae2", "brokesign1"}, {17504, "eastlstr_lae2", "compfence4_LAe"},
	{17504, "eastlstr_lae2", "comptfurnitsign1"}, {17504, "eastlstr_lae2", "comptfurnitsign2"},
	{17504, "eastlstr_lae2", "comptfurnitsign3"}, {17504, "eastlstr_lae2", "mural07_LA"}, {17504, "eastlstr_lae2", "scrapmet1_LAe"},
	{5392, "eastshops1_lae", "blueshop2_LAe"}, {5392, "eastshops1_lae", "gardenshop1LAe"}, {5392, "eastshops1_lae", "glasprinshop1LAe"},
	{5392, "eastshops1_lae", "petbarshop1LAe"}, {5392, "eastshops1_lae", "roof12L"}, {5392, "eastshops1_lae", "shopdoors1_LAe"},
	{5392, "eastshops1_lae", "woodwaresign1"}, {17553, "ebeachcineblok", "3winstone_law"}, {17553, "ebeachcineblok", "downtwin21"},
	{17553, "ebeachcineblok", "forlease_lae2"}, {17553, "ebeachcineblok", "ja_santosinvsgn_lae2"},
	{17553, "ebeachcineblok", "pizzatop_128"}, {969, "electricgate", "airport1_64"}, {969, "electricgate", "airport2_64"},
	{969, "electricgate", "banding6_64HV"}, {969, "electricgate", "binwheel64"}, {969, "electricgate", "KeepOut_64"},
	{969, "electricgate", "notice01"}, {3272, "ele_substation", "cabin2"}, {3272, "ele_substation", "des_substa_bit1"},
	{3272, "ele_substation", "des_substa_bit2"}, {3272, "ele_substation", "lasjmpow1"}, {3272, "ele_substation", "lasjmpow2"},
	{3272, "ele_substation", "lasjmpow6"}, {3272, "ele_substation", "lasjmpow8"}, {3272, "ele_substation", "lasjmpow92"},
	{14530, "estate2", "ab_dsWhiteboard"}, {14530, "estate2", "ab_SFmap"}, {14530, "estate2", "Auto_feltzer"},
	{14530, "estate2", "Auto_hustler"}, {14530, "estate2", "Auto_monstera"}, {14530, "estate2", "Auto_Slamvan2"},
	{14530, "estate2", "Auto_windsor"}, {14530, "estate2", "firextingtemp"}, {14530, "estate2", "man_parquet"},
	{14530, "estate2", "mp_bobbie_carpet"}, {1963, "estateprops", "blu_cyl_32"}, {1963, "estateprops", "bnk_ppr_64"},
	{1963, "estateprops", "bnk_shdo3a"}, {1963, "estateprops", "grn_cyl_32"}, {1963, "estateprops", "red_cyl_32"},
	{8498, "excalibur", "excalibur01"}, {8498, "excalibur", "excalibur02_64"}, {8498, "excalibur", "excalibur03_64"},
	{8498, "excalibur", "excalibur04_64"}, {8498, "excalibur", "excalibur05_64"}, {8498, "excalibur", "excalibur06"},
	{8498, "excalibur", "excalibur07_64"}, {8498, "excalibur", "excalibur08_64"}, {8498, "excalibur", "excaliburledge01"},
	{8498, "excalibur", "excaliburwall01_128"}, {8498, "excalibur", "excaliburwall02_128"}, {8498, "excalibur", "excaliburwall03_128"},
	{8498, "excalibur", "excaliburwall04_64"}, {8498, "excalibur", "excaliburwall05_128"}, {8498, "excalibur", "excaliburwall06_64"},
	{8498, "excalibur", "excaliburwall07"}, {8498, "excalibur", "excaliburwall08"}, {8498, "excalibur", "excaliburwall09"},
	{8498, "excalibur", "excaliburwndw01_128"}, {8498, "excalibur", "vegaspavement2_256"}, {8498, "excalibur", "vegasroad1_256"},
	{8620, "excalibursign", "excalibursign01_64"}, {8620, "excalibursign", "excalibursign02"},
	{8620, "excalibursign", "excaliburwall10_128"}, {8620, "excalibursign", "exclbrsword"}, {8620, "excalibursign", "imperial05_128"},
	{8620, "excalibursign", "vgsclubwall05_128"}, {3525, "excaliburtorch", "northwood3_128"},
	{3525, "excaliburtorch", "sw_cabinwall01"}, {3525, "excaliburtorch", "tislndshpillar01_128"},
	{8515, "exclibrland", "Bow_grass_gryard"}, {2600, "external", "CJ_LAMPPOST3"}, {2600, "external", "CJ_LAMPPOST4"},
	{2600, "external", "CJ_LENS"}, {918, "externalext", "CJ_OIL_DRUM"}, {1495, "ext_doors2", "CJ_SCOR_DOOR"},
	{1495, "ext_doors2", "CJ_WOODDOOR4"}, {1495, "ext_doors2", "flat_door01"}, {1498, "ext_doors_old", "CJ_DOOR6"},
	{12814, "factorycunte", "dirtgrn128"}, {12814, "factorycunte", "hi_nopark1_256128"}, {12814, "factorycunte", "inddoor1"},
	{12814, "factorycunte", "newall3_16c128"}, {17001, "factorycuntw", "frate_doors64128"}, {17001, "factorycuntw", "ladder64"},
	{11244, "factorynewsfse", "ws_oldwarehouse10"}, {10775, "factory_sfse", "ws_oldwarehouse8"}, {10775, "factory_sfse", "ws_solarin"},
	{1657, "fanani", "man_clnfn_blde"}, {1657, "fanani", "man_sdrm_cfanbdy"}, {17005, "farmhouse", "examwind1_LAe"},
	{17005, "farmhouse", "gz_vic3d"}, {17005, "farmhouse", "sjmbigold2"}, {17005, "farmhouse", "sjmbigold6"},
	{17005, "farmhouse", "ws_cheapodoor2"}, {3425, "farmstuff", "gs_wind2"}, {8547, "fctrygrnd01", "vgsclubpllr01_64"},
	{10610, "fedmint_sfs", "ws_fedmint"}, {10610, "fedmint_sfs", "ws_fed_mint_win1"}, {10610, "fedmint_sfs", "ws_fed_mint_win2"},
	{10610, "fedmint_sfs", "ws_rollerdoor_blue"}, {10610, "fedmint_sfs", "ws_security_door"}, {970, "fences", "NoParking_64"},
	{970, "fences", "slab256"}, {970, "fences", "wirefence"}, {9901, "ferry_building", "ferry_build1"},
	{9901, "ferry_building", "ferry_build10"}, {9901, "ferry_building", "ferry_build11"}, {9901, "ferry_building", "ferry_build12"},
	{9901, "ferry_building", "ferry_build13"}, {9901, "ferry_building", "ferry_build2"}, {9901, "ferry_building", "ferry_build3"},
	{9901, "ferry_building", "ferry_build5"}, {9901, "ferry_building", "ferry_build6"}, {9901, "ferry_building", "ferry_build76"},
	{9901, "ferry_building", "ferry_build8"}, {9901, "ferry_building", "ferry_build9"}, {9901, "ferry_building", "skylight_windows"},
	{4020, "fighot", "lasbevcit99xxx"}, {4020, "fighot", "Parking2_LAe2"}, {4020, "fighot", "sl_lavicdtcnr"},
	{4020, "fighot", "sl_lavicdtdecor1"}, {4020, "fighot", "sl_lavicdtwin"}, {4020, "fighot", "sl_lavicdtwin2"},
	{4020, "fighot", "sl_lavicdtwin3"}, {5705, "filmstud", "golf_heavygrass"}, {5705, "filmstud", "venicewin02"},
	{5705, "filmstud", "venwall_la"}, {5705, "filmstud", "Victim_bboard"}, {11008, "firehouse_sfse", "halldoor01_law"},
	{11008, "firehouse_sfse", "SFPD"}, {11008, "firehouse_sfse", "SFSE_WRHSE_WNDW"}, {11008, "firehouse_sfse", "ws_usflagcrumpled"},
	{2961, "fire_brx", "fire_break"}, {1599, "fish1", "fish2"}, {1600, "fish2", "fish3"}, {1601, "fish3", "fish1"},
	{9910, "fishwarf", "gz_vic3b"}, {9910, "fishwarf", "michelle_car4"}, {9910, "fishwarf", "rooftop_gz2"},
	{9910, "fishwarf", "sfe_nicearch5"}, {9910, "fishwarf", "sf_backaley3"}, {9910, "fishwarf", "sf_windos_10wall"},
	{9910, "fishwarf", "sw_realty"}, {8488, "flamingo1", "casinolights4_128"}, {8488, "flamingo1", "flmngo01_256"},
	{8488, "flamingo1", "flmngo04_256"}, {8488, "flamingo1", "flmngo05_256"}, {8488, "flamingo1", "flmngo06_128"},
	{8488, "flamingo1", "flmngo07_128"}, {8488, "flamingo1", "flmngo08"}, {8488, "flamingo1", "flmngo09"},
	{8488, "flamingo1", "flmngo10_128"}, {8488, "flamingo1", "flmngoledge"}, {8844, "flmngoland", "la_tilered"},
	{8844, "flmngoland", "newhedgea"}, {8844, "flmngoland", "vgschurchwall05_128"}, {1340, "foodkarts", "cardbrdplain64"},
	{1340, "foodkarts", "chillidog_sign"}, {1340, "foodkarts", "dogcart01"}, {1340, "foodkarts", "dogcart02"},
	{1340, "foodkarts", "dogcart03"}, {1340, "foodkarts", "dogcart04"}, {1340, "foodkarts", "dogcart05"},
	{1340, "foodkarts", "dogcart06"}, {1340, "foodkarts", "gashob"}, {1340, "foodkarts", "iceyside"}, {1340, "foodkarts", "iceysign"},
	{1340, "foodkarts", "noodbox"}, {1340, "foodkarts", "noodcart"}, {1340, "foodkarts", "noodex"}, {1340, "foodkarts", "noodex2"},
	{1340, "foodkarts", "noodles_32"}, {5762, "foodlawn", "foodmartla2"}, {9582, "fort_sfw", "club_roofwin_sfw"},
	{9582, "fort_sfw", "fortclub_1"}, {9582, "fort_sfw", "fortclub_10"}, {9582, "fort_sfw", "fortclub_11"},
	{9582, "fort_sfw", "fortclub_2"}, {9582, "fort_sfw", "fortclub_5"}, {9582, "fort_sfw", "fortclub_6"},
	{9582, "fort_sfw", "fortclub_7"}, {9582, "fort_sfw", "fortclub_8"}, {9582, "fort_sfw", "fortclub_9"},
	{9582, "fort_sfw", "fortclub_extrabits"}, {9582, "fort_sfw", "mallfloor2"}, {11413, "fosterflowers", "starflower1"},
	{11413, "fosterflowers", "starflower3"}, {10940, "fosterroads_sfse", "ws_freeway3"}, {9833, "fountain_sfw", "fountain_sfw"},
	{10489, "freeway2_sfs", "ws_freeway2"}, {10489, "freeway2_sfs", "ws_freeway3blend"},
	{11135, "freeways2_sfse", "dt_road2grasstype4"}, {10857, "freeways3_sfse", "ws_bridgepavement"},
	{10857, "freeways3_sfse", "ws_freeway1"}, {4809, "freeway_las", "metal_stair_64H"}, {4809, "freeway_las", "obhilltex1"},
	{4809, "freeway_las", "pavemiddirt_law"}, {4809, "freeway_las", "whitetile_plain_hi"}, {2963, "freezrx", "freeze_door"},
	{3474, "freightcrane", "bluecab1_256"}, {3474, "freightcrane", "bluecab2_256"}, {3474, "freightcrane", "bluecab3_256"},
	{3474, "freightcrane", "bluecab4_256"}, {3474, "freightcrane", "junk_tyre"}, {3474, "freightcrane", "metalwheel1_256"},
	{3474, "freightcrane", "oldpaintyelend_256"}, {3474, "freightcrane", "yellowcabchev_256"}, {10230, "freight_sfe", "freighterhull3"},
	{10230, "freight_sfe", "freighterhull4"}, {10230, "freight_sfe", "tyre_ship_sfe"}, {10140, "frieghter2sfe", "sfMAST2"},
	{10140, "frieghter2sfe", "sf_shipbulklight"}, {10140, "frieghter2sfe", "sf_ship_ceiling"},
	{10140, "frieghter2sfe", "sf_ship_generic17"}, {10140, "frieghter2sfe", "sf_ship_generic26"},
	{10140, "frieghter2sfe", "sf_ship_generic6"}, {10140, "frieghter2sfe", "sf_ship_gratet"},
	{10140, "frieghter2sfe", "sf_ship_interior"}, {10140, "frieghter2sfe", "sf_ship_pipes"}, {10140, "frieghter2sfe", "sf_ship_steps"},
	{17503, "furniture_lae2", "ammu_airvent"}, {17503, "furniture_lae2", "brckwht128"}, {17503, "furniture_lae2", "clukmenu1_LAe2"},
	{17503, "furniture_lae2", "comptwall19"}, {17503, "furniture_lae2", "craproad6_LAe"}, {17503, "furniture_lae2", "furndetail1_LAe"},
	{17503, "furniture_lae2", "inwindow4"}, {17503, "furniture_lae2", "LAmexfood1"}, {17503, "furniture_lae2", "strpclb4_LAe"},
	{17503, "furniture_lae2", "totem64"}, {1824, "gamingtble", "craps-layout"}, {1824, "gamingtble", "crapside_128"},
	{17700, "gangblok1_lae2", "GB_doorpur01"}, {17700, "gangblok1_lae2", "gz_vic3c"}, {17700, "gangblok1_lae2", "mural01_LA"},
	{17700, "gangblok1_lae2", "pigpen1_LAe"}, {17700, "gangblok1_lae2", "sanpshop4z"}, {17700, "gangblok1_lae2", "strpclb1_LAe"},
	{17700, "gangblok1_lae2", "strpclb2_LAe"}, {17700, "gangblok1_lae2", "strpclb3_LAe"}, {17700, "gangblok1_lae2", "tacostand1_LAe"},
	{17700, "gangblok1_lae2", "warehouse2"}, {14443, "ganghoos", "ab_wall3"}, {14443, "ganghoos", "ab_wallPanel"},
	{14443, "ganghoos", "ah_BADCEIL"}, {14443, "ganghoos", "AH_bathwalls"}, {14443, "ganghoos", "ah_CRAKPLNK"},
	{14443, "ganghoos", "ah_curtains1"}, {14443, "ganghoos", "AH_filthtiles"}, {14443, "ganghoos", "AH_filthtiles2"},
	{14443, "ganghoos", "ah_FLKWIN"}, {14443, "ganghoos", "ah_mikebindsarse"}, {14443, "ganghoos", "AH_oldwdpan"},
	{14443, "ganghoos", "AH_pelmet"}, {14443, "ganghoos", "AH_walltile3"}, {14443, "ganghoos", "ah_yelbadwall"},
	{14443, "ganghoos", "motel_bathfloor"}, {14443, "ganghoos", "mp_burn_carpet"}, {14443, "ganghoos", "mp_burn_carpet1"},
	{14443, "ganghoos", "mp_burn_carpet2"}, {14443, "ganghoos", "mp_burn_carpet3"}, {14443, "ganghoos", "mp_burn_wall3"},
	{3646, "ganghouse1_lax", "aanewd"}, {3646, "ganghouse1_lax", "comptroof4"}, {3646, "ganghouse1_lax", "comptwall14"},
	{3646, "ganghouse1_lax", "comptwall7"}, {3646, "ganghouse1_lax", "grille1_LA"}, {3646, "ganghouse1_lax", "snpdhus2"},
	{17515, "ganton01_lae2", "comptsign7_LAe"}, {17515, "ganton01_lae2", "yelloplaster1"}, {17577, "ganton02_lae2", "century02_LA"},
	{17577, "ganton02_lae2", "greenbot1_LAe2"}, {17577, "ganton02_lae2", "greenbot2_LAe2"}, {5774, "garag3_lawn", "bigblue3"},
	{5774, "garag3_lawn", "orngpartwall1_256"}, {5774, "garag3_lawn", "sprysig1"}, {9625, "garage_sfw", "garage1b_sfw"},
	{9625, "garage_sfw", "garage2b_sfw"}, {9625, "garage_sfw", "garage3b_sfw"}, {9625, "garage_sfw", "garage_win_sfw"},
	{9625, "garage_sfw", "toll_SFw4"}, {10629, "gardencentre_sfs", "ws_uphill"}, {1672, "gasgren", "gun_teargas_2"},
	{985, "gategen", "trespasign1_256"}, {10713, "gayclub_sfs", "CJ_GEN_GLASS2"}, {10713, "gayclub_sfs", "CJ_PIZZA_DOOR"},
	{10713, "gayclub_sfs", "ws_gaydar"}, {10713, "gayclub_sfs", "ws_plasterwall1"}, {3853, "gay_xref", "metatelepole1"},
	{3853, "gay_xref", "teleconect2"}, {3853, "gay_xref", "ws_gayflag1"}, {3853, "gay_xref", "ws_gayflag2"},
	{6102, "gazlaw1", "Bow_bar_entrance_door"}, {6102, "gazlaw1", "lawshop2"}, {6102, "gazlaw1", "lawshop3"},
	{6102, "gazlaw1", "lawshopwall1"}, {6102, "gazlaw1", "lawshopwall1b"}, {6102, "gazlaw1", "lawshopwall2"},
	{6102, "gazlaw1", "lawshopwall2b"}, {6102, "gazlaw1", "lawshopwall3"}, {6102, "gazlaw1", "lawshopwall3b"},
	{6102, "gazlaw1", "lawshopwall4b"}, {6102, "gazlaw1", "lawshopwall4c"}, {6102, "gazlaw1", "law_gazgrn1"},
	{6102, "gazlaw1", "law_gazgrn4"}, {6102, "gazlaw1", "law_gazgrn7"}, {6102, "gazlaw1", "law_gazwhite1"},
	{6102, "gazlaw1", "law_gazwhite2"}, {6102, "gazlaw1", "law_gazwhite4"}, {6102, "gazlaw1", "law_gazwhite5"},
	{6102, "gazlaw1", "law_gazwhitefloor"}, {6102, "gazlaw1", "law_gazwhitestep"}, {6102, "gazlaw1", "pawn_door01"},
	{6104, "gazlaw2", "gm_labuld4_a"}, {6104, "gazlaw2", "gm_labuld4_b"}, {6104, "gazlaw2", "gm_labuld4_d"},
	{6104, "gazlaw2", "gm_labuld4_e"}, {6104, "gazlaw2", "gm_labuld4_f"}, {6104, "gazlaw2", "lawshop1"},
	{6104, "gazlaw2", "law_gazbrn1"}, {6104, "gazlaw2", "sw_storewin05"}, {6104, "gazlaw2", "sw_wind19"},
	{6157, "gazlaw3", "churchdoor1_LAn"}, {6157, "gazlaw3", "lawbanding1"}, {6157, "gazlaw3", "law_archthing1"},
	{6157, "gazlaw3", "law_archthing2"}, {6157, "gazlaw3", "law_archthing3"}, {6157, "gazlaw3", "law_archthing4"},
	{6157, "gazlaw3", "law_archthing5"}, {6157, "gazlaw3", "law_archthing6"}, {6157, "gazlaw3", "law_archthing7"},
	{6157, "gazlaw3", "mono3_sfe"}, {6157, "gazlaw3", "mono4_sfe"}, {6157, "gazlaw3", "pier69_planter"},
	{6157, "gazlaw3", "sfe_bigbuild3"}, {6157, "gazlaw3", "swintops01c_law"}, {6157, "gazlaw3", "swintops01d_law"},
	{6157, "gazlaw3", "swintops01_law"}, {9300, "gazsfn1", "fillerbase01_law"}, {9300, "gazsfn1", "fillerbase02_law"},
	{9300, "gazsfn1", "fillerbase_law"}, {9300, "gazsfn1", "fillerdoor_law"}, {9300, "gazsfn1", "law_gazcoast1"},
	{9300, "gazsfn1", "law_gazcoast2"}, {9301, "gazsfn2", "Bow_Smear_Cement"}, {9301, "gazsfn2", "law_gazgrn2"},
	{9278, "gazsfnlite", "cst_bollard_sfw"}, {9278, "gazsfnlite", "fusebox1_128"}, {9278, "gazsfnlite", "sfxref_flagpole"},
	{9278, "gazsfnlite", "sfxref_lite2c"}, {2817, "gb_bedrmrugs01", "GB_livingrug03"}, {2817, "gb_bedrmrugs01", "GB_rugbedroom01"},
	{2817, "gb_bedrmrugs01", "GB_rugbedroom02"}, {2817, "gb_bedrmrugs01", "GB_rugbedroom03"},
	{2819, "gb_bedroomclths01", "GB_clothesbed01"}, {2819, "gb_bedroomclths01", "GB_clothesbed02"},
	{2819, "gb_bedroomclths01", "GB_clothesbed03"}, {2819, "gb_bedroomclths01", "GB_clothesbed04"},
	{2819, "gb_bedroomclths01", "GB_clothesbed05"}, {2813, "gb_books01", "GB_magazine02"}, {2813, "gb_books01", "GB_magazine05"},
	{2813, "gb_books01", "GB_magazine06"}, {2813, "gb_books01", "GB_novels01"}, {2813, "gb_books01", "GB_novels02"},
	{2813, "gb_books01", "GB_novels03"}, {2813, "gb_books01", "GB_novels04"}, {2813, "gb_books01", "GB_novels05"},
	{2813, "gb_books01", "GB_novels07"}, {2813, "gb_books01", "GB_novels08"}, {2813, "gb_books01", "GB_novels09"},
	{2813, "gb_books01", "GB_novels10"}, {2813, "gb_books01", "GB_novels11"}, {2813, "gb_books01", "GB_novels12"},
	{2822, "gb_cleancrock01", "cj_plate"}, {2822, "gb_cleancrock01", "cj_plate2"}, {2822, "gb_cleancrock01", "GB_plateclean01"},
	{2812, "gb_dirtycrock01", "GB_bowldirty01"}, {2812, "gb_dirtycrock01", "GB_mug01"}, {2812, "gb_dirtycrock01", "GB_platedirty01"},
	{2812, "gb_dirtycrock01", "GB_platedirty02"}, {2812, "gb_dirtycrock01", "GB_platedirty03"}, {2821, "gb_foodwrap01", "cj_napkin"},
	{2821, "gb_foodwrap01", "GB_foodwrap02"}, {2821, "gb_foodwrap01", "GB_foodwrap03"}, {2821, "gb_foodwrap01", "GB_foodwrap04"},
	{2821, "gb_foodwrap01", "midgrey64"}, {2821, "gb_foodwrap01", "sm_marble"}, {2823, "gb_kitchtake", "CJ_BS2"},
	{2823, "gb_kitchtake", "deep_red64"}, {2823, "gb_kitchtake", "GB_pizzabox01"}, {2823, "gb_kitchtake", "GB_takeaway01"},
	{2823, "gb_kitchtake", "GB_takeaway02"}, {2823, "gb_kitchtake", "GB_takeaway03"}, {2823, "gb_kitchtake", "GB_takeaway04"},
	{2816, "gb_magazines01", "GB_magazine03"}, {2811, "gb_ornaments01", "beigehotel_128"}, {2811, "gb_ornaments01", "GB_photo01"},
	{2811, "gb_ornaments01", "GB_photo02"}, {2811, "gb_ornaments01", "GB_plant02"}, {2811, "gb_ornaments01", "GB_vase01"},
	{2815, "gb_rugs01", "GB_livingrug02"}, {2815, "gb_rugs01", "GB_rug01"}, {1616, "genalley", "gensecuritycam"},
	{1616, "genalley", "ventgen128"}, {15034, "genhotelsave", "ab_mottleWhite"}, {15034, "genhotelsave", "AH_windows"},
	{15034, "genhotelsave", "andydark2"}, {15034, "genhotelsave", "bathtile04_int"}, {15034, "genhotelsave", "bathtile05_int"},
	{15034, "genhotelsave", "CJ_PAINTING8"}, {15034, "genhotelsave", "HS2_2Wall4"}, {15034, "genhotelsave", "lw_desklamp_128_256"},
	{15034, "genhotelsave", "walp57S"}, {18025, "genintclothessport", "CJ_PRO_WIN"}, {18025, "genintclothessport", "mp_cloth_pcarp"},
	{18025, "genintclothessport", "mp_cloth_prob"}, {18025, "genintclothessport", "mp_cloth_pwall"},
	{18025, "genintclothessport", "mp_cop_sep"}, {18012, "genintgeneric", "kb_teracota_pot2_64"},
	{18012, "genintgeneric", "planterbox128"}, {14770, "genintgenintint3", "brothredleth"}, {14770, "genintgenintint3", "GB_midbar03"},
	{14770, "genintgenintint3", "GB_midbar04"}, {14825, "genintint2_gym", "boxgym_mainlightingmap"},
	{14825, "genintint2_gym", "gym_ceiling"}, {14825, "genintint2_gym", "gym_pillar"}, {14825, "genintint2_gym", "plywood3_gym"},
	{14665, "genintint711_1", "711_walltemp"}, {14665, "genintint711_1", "interiorwindowglow"}, {14665, "genintint711_1", "mp_gun_mat"},
	{18018, "genintintbarb", "GB_midbar01"}, {18018, "genintintbarb", "GB_midbar07"}, {18018, "genintintbarb", "GB_midbar12"},
	{18018, "genintintbarb", "Gen_Gantry_Rust"}, {18001, "genintintbarbera", "barbersfurn1"},
	{18001, "genintintbarbera", "barberslight1"}, {18001, "genintintbarbera", "barberstill"},
	{18001, "genintintbarbera", "barbers_junk2"}, {18001, "genintintbarbera", "barbers_junk3"},
	{14776, "genintintcarint3", "ab_steelFrame"}, {14776, "genintintcarint3", "auto_tune1"},
	{14776, "genintintcarint3", "auto_tune3"}, {14776, "genintintcarint3", "concretebigc256"},
	{14776, "genintintcarint3", "doornvent256128"}, {14776, "genintintcarint3", "Industdoor1128"},
	{14776, "genintintcarint3", "joey_shadow_texture"}, {14776, "genintintcarint3", "leccy_cables"},
	{14776, "genintintcarint3", "Metal2_256128"}, {14776, "genintintcarint3", "metpat_64"}, {14776, "genintintcarint3", "porta_256128"},
	{14776, "genintintcarint3", "posh1_128"}, {14776, "genintintcarint3", "smoketest1a_sfw"}, {14776, "genintintcarint3", "toolwall1"},
	{14776, "genintintcarint3", "tool_store"}, {14776, "genintintcarint3", "tool_store2"}, {14776, "genintintcarint3", "tyretread_64H"},
	{14776, "genintintcarint3", "yellowvertical_64HV"}, {18022, "genintintfasta", "ceilingtile1_128"},
	{18022, "genintintfasta", "CJ_TILE1"}, {18022, "genintintfasta", "diner_wall5"}, {18020, "genintintfastb2", "BS_WINDOW"},
	{18020, "genintintfastb2", "cj_burgerwood"}, {18020, "genintintfastb2", "CJ_BURG_WALL"},
	{18020, "genintintfastb2", "ws_terratiles"}, {18023, "genintintfastc", "CJ_GREENWOOD2"}, {18023, "genintintfastc", "CJ_PIZZA_WALL"},
	{18023, "genintintfastc", "dinerfloor01_128"}, {18023, "genintintfastc", "wellstackedpizza_256"},
	{18021, "genintintfastd", "barbers_wall1"}, {18021, "genintintfastd", "CJ_DON_WIN"}, {18021, "genintintfastd", "tile_test3red"},
	{14826, "genintintgarage2a", "car_cover4"}, {14826, "genintintgarage2a", "car_jack"}, {14826, "genintintgarage2a", "kb_tyre"},
	{14826, "genintintgarage2a", "remingtonkb1"}, {14842, "genintintpolicea", "copcell_bars"}, {14842, "genintintpolicea", "copstuff"},
	{14842, "genintintpolicea", "cops_chrome"}, {14842, "genintintpolicea", "cop_notice"}, {14842, "genintintpolicea", "filing_cabnu"},
	{14842, "genintintpolicea", "poldesk"}, {14842, "genintintpolicea", "poldesktop"}, {14846, "genintintpoliceb", "breezewall2"},
	{14846, "genintintpoliceb", "copbtm_green"}, {14846, "genintintpoliceb", "coptop_blue"},
	{14846, "genintintpoliceb", "coptop_brown"}, {14846, "genintintpoliceb", "coptop_pink"}, {14846, "genintintpoliceb", "cop_bench"},
	{14846, "genintintpoliceb", "cop_cellfloor"}, {14846, "genintintpoliceb", "cop_cellwall"},
	{14846, "genintintpoliceb", "cop_cellwall_btm"}, {14846, "genintintpoliceb", "pol_dor_surr2"},
	{14846, "genintintpoliceb", "pol_flr164"}, {14846, "genintintpoliceb", "pol_flr2"}, {14846, "genintintpoliceb", "pol_flr3"},
	{14846, "genintintpoliceb", "pol_galss1a"}, {14846, "genintintpoliceb", "pol_stairs2"}, {14846, "genintintpoliceb", "p_countr"},
	{14846, "genintintpoliceb", "p_door1"}, {14846, "genintintpoliceb", "p_floor2"}, {14846, "genintintpoliceb", "p_floor3"},
	{14846, "genintintpoliceb", "p_floor4"}, {14666, "genintintsex", "backdoor_128"}, {14666, "genintintsex", "CJ_BLUE_DOOR"},
	{14666, "genintintsex", "mp_cop_floor2"}, {14666, "genintintsex", "mp_porn_wall"},
	{18029, "genintintsmallrest", "GB_restaursmll02"}, {18029, "genintintsmallrest", "GB_restaursmll03"},
	{18029, "genintintsmallrest", "GB_restaursmll04"}, {18029, "genintintsmallrest", "GB_restaursmll05"},
	{18029, "genintintsmallrest", "GB_restaursmll06"}, {18029, "genintintsmallrest", "GB_restaursmll07"},
	{18029, "genintintsmallrest", "GB_restaursmll08"}, {18029, "genintintsmallrest", "GB_restaursmll09"},
	{18029, "genintintsmallrest", "GB_restaursmll10"}, {18029, "genintintsmallrest", "GB_restaursmll11"},
	{18029, "genintintsmallrest", "GB_restaursmll12"}, {18029, "genintintsmallrest", "GB_restaursmll13"},
	{18029, "genintintsmallrest", "GB_restaursmll14"}, {18029, "genintintsmallrest", "GB_restaursmll15"},
	{18029, "genintintsmallrest", "GB_restaursmll16b"}, {18029, "genintintsmallrest", "GB_restaursmll19"},
	{18029, "genintintsmallrest", "GB_restaursmll20"}, {18029, "genintintsmallrest", "kitchensink_256"},
	{2627, "genintint_gym", "bench_test1"}, {2627, "genintint_gym", "bench_test2"}, {2627, "genintint_gym", "bench_test2b"},
	{2627, "genintint_gym", "chrome_tube1"}, {2627, "genintint_gym", "cycle1"}, {2627, "genintint_gym", "cycle2"},
	{2627, "genintint_gym", "gym_runni"}, {2627, "genintint_gym", "weight1"}, {18009, "genintrestrest1", "adobe_wall1"},
	{18009, "genintrestrest1", "rest_cob"}, {18009, "genintrestrest1", "rest_floor2_512"}, {18009, "genintrestrest1", "rest_gravel"},
	{18009, "genintrestrest1", "rest_mainlightingmap"}, {18009, "genintrestrest1", "rest_wall5"},
	{18010, "genintrestrest2", "ceiling_light64"}, {18010, "genintrestrest2", "kbsofa333c"},
	{18010, "genintrestrest2", "kb_canopy128_2"}, {18055, "genintsmlrst_split", "GB_restaursmll01"},
	{18055, "genintsmlrst_split", "GB_restaursmll16a"}, {18055, "genintsmlrst_split", "GB_restaursmll17a"},
	{18055, "genintsmlrst_split", "GB_restaursmll17b"}, {18055, "genintsmlrst_split", "GB_restaursmll21"},
	{18055, "genintsmlrst_split", "GB_restaursmll22"}, {18055, "genintsmlrst_split", "GB_restaursmll23"},
	{14784, "genintwarehsint3", "lasjmflood2"}, {14784, "genintwarehsint3", "lastat97"}, {14784, "genintwarehsint3", "lightwallba256"},
	{14784, "genintwarehsint3", "sjmdockral1"}, {14784, "genintwarehsint3", "sjmlawardra1"},
	{14784, "genintwarehsint3", "sjmlawarwall2"}, {14784, "genintwarehsint3", "sjmlawarwall4"},
	{14784, "genintwarehsint3", "sjmpostbar2"}, {14784, "genintwarehsint3", "snpdimwin1"}, {10751, "genroads_sfse", "sf_tramline2"},
	{8508, "genshop", "shoptiles01_128"}, {8508, "genshop", "vgs_shpfrnt04_128"}, {10844, "genwhse_sfse", "slab64"},
	{18045, "gen_munation", "mp_gun_floor"}, {18045, "gen_munation", "mp_gun_shutter"}, {18047, "gen_mun_counter", "mp_gun_cabinet"},
	{18047, "gen_mun_counter", "mp_gun_counter"}, {18047, "gen_mun_counter", "mp_gun_metal"}, {18048, "gen_mun_xtars2", "mp_gun_man"},
	{18048, "gen_mun_xtars2", "mp_gun_man2"}, {18048, "gen_mun_xtars2", "mp_gun_man3"}, {18048, "gen_mun_xtars2", "star_spang"},
	{14785, "gen_offtrackint", "bluemat_32"}, {14785, "gen_offtrackint", "exitgreen_64"}, {14785, "gen_offtrackint", "otb_mural1"},
	{14785, "gen_offtrackint", "otb_mural2"}, {14785, "gen_offtrackint", "otb_mural3"}, {14785, "gen_offtrackint", "otb_mural4"},
	{14785, "gen_offtrackint", "otb_rooftile1"}, {14785, "gen_offtrackint", "otb_rooftile2"}, {14800, "gen_otb_bits", "ab_boxStack"},
	{1686, "gen_petrol", "vgnptrpump1_256"}, {1686, "gen_petrol", "vgnptrpump2_128"}, {14853, "gen_pol_vegas", "blue_carpet_256"},
	{14853, "gen_pol_vegas", "burglry_wall5b"}, {14853, "gen_pol_vegas", "grey_carpet_256"}, {14853, "gen_pol_vegas", "mp_cop_bars"},
	{14853, "gen_pol_vegas", "mp_cop_chief"}, {14853, "gen_pol_vegas", "mp_cop_frame"}, {14853, "gen_pol_vegas", "mp_cop_name"},
	{14853, "gen_pol_vegas", "mp_cop_panel"}, {14853, "gen_pol_vegas", "mp_cop_pinboard"}, {14853, "gen_pol_vegas", "mp_cop_signs"},
	{14853, "gen_pol_vegas", "mp_cop_wall"}, {14853, "gen_pol_vegas", "mp_cop_whiteboard"}, {14853, "gen_pol_vegas", "mp_cop_wood"},
	{14853, "gen_pol_vegas", "mp_gun_dirt"}, {14853, "gen_pol_vegas", "mp_police_win"}, {14853, "gen_pol_vegas", "office_wallnu1"},
	{14853, "gen_pol_vegas", "pol_win_kb"}, {14859, "gf1", "CJ_MAT2DIRT"}, {14859, "gf1", "mp_apt1_pos1"},
	{14859, "gf1", "mp_apt1_pos2"}, {14859, "gf1", "mp_apt1_pos3"}, {14859, "gf1", "mp_apt1_pos4"}, {14859, "gf1", "mp_cooch_carp"},
	{14859, "gf1", "mp_cooch_clothes"}, {14859, "gf1", "mp_cooch_frame"}, {14859, "gf1", "mp_cooch_wall"},
	{14859, "gf1", "mp_cop_ceiling"}, {14865, "gf2", "mp_bobbie_carpwhite"}, {14865, "gf2", "mp_bobbie_pennant"},
	{14865, "gf2", "mp_bobbie_pompom"}, {14865, "gf2", "mp_bobbie_pompom1"}, {14865, "gf2", "mp_bobbie_pompom2"},
	{14865, "gf2", "mp_bobbie_wall"}, {14865, "gf2", "mp_bobbie_wood"}, {14871, "gf3", "kickhay"}, {14871, "gf3", "TREE_STUB1"},
	{14876, "gf4", "mp_diner_sawdust"}, {14876, "gf4", "mp_gimp_officewall"}, {14876, "gf4", "mp_tank_floor"},
	{14881, "gf5", "mp_jail_wall"}, {14888, "gf6", "gm_millie_cock"}, {14888, "gf6", "mp_gimp_basewall"},
	{14888, "gf6", "mp_gimp_sponge"}, {14888, "gf6", "mp_gimp_tilefloor"}, {14888, "gf6", "mp_millie_ring"},
	{14888, "gf6", "mp_millie_swing"}, {14888, "gf6", "mp_millie_wallwhite"}, {14888, "gf6", "mp_millie_whip"},
	{14888, "gf6", "mp_millie_whip1"}, {14888, "gf6", "mp_millie_whip2"}, {14888, "gf6", "mp_millie_wood"},
	{14888, "gf6", "mp_millie_woodwall"}, {14888, "gf6", "mp_vicgrill"}, {9608, "ggatepark", "gantsign2_sfw"},
	{9608, "ggatepark", "gantsign_sfw"}, {9608, "ggatepark", "gg_sign2_sfw"}, {9608, "ggatepark", "gg_sign_sfw"},
	{9608, "ggatepark", "sfe_diner1"}, {9608, "ggatepark", "sfe_diner2"}, {9608, "ggatepark", "sfe_diner3"},
	{9608, "ggatepark", "sfe_diner4"}, {9269, "ggbridge_sfn", "stonesandkb2_128"}, {9269, "ggbridge_sfn", "ws_goldengate2"},
	{5407, "glenpark1x_lae", "craproad1_LAe"}, {5407, "glenpark1x_lae", "downtsign12_LA"}, {5407, "glenpark1x_lae", "hedgealphad1"},
	{5407, "glenpark1x_lae", "lasclean1"}, {5407, "glenpark1x_lae", "lasjmhoodcrb"}, {5407, "glenpark1x_lae", "lasjmscruffwall1"},
	{5407, "glenpark1x_lae", "mural06_LA"}, {5407, "glenpark1x_lae", "sanpedton3"}, {5407, "glenpark1x_lae", "savtop"},
	{5407, "glenpark1x_lae", "savtopWN"}, {5407, "glenpark1x_lae", "scumtiles3_LAe"}, {5407, "glenpark1x_lae", "sjmhoodlawn4"},
	{5407, "glenpark1x_lae", "sl_pornshopla1"}, {5407, "glenpark1x_lae", "sl_pornshopla1b"}, {5443, "glenpark1_lae", "chocolate1"},
	{5443, "glenpark1_lae", "concretebig4256"}, {5443, "glenpark1_lae", "mudyforest256"}, {5443, "glenpark1_lae", "transmishop1LAe"},
	{5461, "glenpark6d_lae", "downtwin21b"}, {5461, "glenpark6d_lae", "GB_truckdepot20"}, {5461, "glenpark6d_lae", "gymshops1_LAe"},
	{5461, "glenpark6d_lae", "gymshops2_LAe"}, {5461, "glenpark6d_lae", "shopint1_LAe"}, {5461, "glenpark6d_lae", "shopint2_LAe"},
	{5461, "glenpark6d_lae", "shutter01LA"}, {5461, "glenpark6d_lae", "tiledwall01_LA"}, {5462, "glenpark6_lae", "dirty256"},
	{5462, "glenpark6_lae", "girder_red_64HV"}, {5462, "glenpark6_lae", "hillshop2_LA"}, {5462, "glenpark6_lae", "hillshop4_LA"},
	{5462, "glenpark6_lae", "hwtopwin01b_law"}, {5462, "glenpark6_lae", "hwtopwin01_law"}, {5462, "glenpark6_lae", "scaffolding_vc"},
	{5462, "glenpark6_lae", "wareh3_LAe"}, {5390, "glenpark7_lae", "bboardblank_law"}, {5390, "glenpark7_lae", "compfence5_LAe"},
	{5390, "glenpark7_lae", "ganggraf01_LA"}, {2976, "gloopx", "alien_cont2"}, {2976, "gloopx", "alien_glass"},
	{2976, "gloopx", "alien_liquid"}, {8409, "gnhotel1", "ap_tarmac"}, {8409, "gnhotel1", "carpark1_64"},
	{8409, "gnhotel1", "glass_64"}, {8409, "gnhotel1", "gnhoteldoor01_128"}, {8409, "gnhotel1", "gnhoteldoor03_128"},
	{8409, "gnhotel1", "gnhoteldoor04_128"}, {8409, "gnhotel1", "gnhoteldoor05_128"}, {8409, "gnhotel1", "gnhotelpanel01_64"},
	{8409, "gnhotel1", "gnhotelpanel02_64"}, {8409, "gnhotel1", "gnhotelpillar01_128"}, {8409, "gnhotel1", "gnhotelstairs01_128"},
	{8409, "gnhotel1", "gnhotelwall03_128"}, {8409, "gnhotel1", "gnhotelwall06_128"}, {8409, "gnhotel1", "gnhotelwall07_128"},
	{8409, "gnhotel1", "gnhotelwindow01_128"}, {8409, "gnhotel1", "old_corugwal_256"}, {8409, "gnhotel1", "Plaindoorblue_128"},
	{8409, "gnhotel1", "redstuff"}, {8409, "gnhotel1", "step_64HV"}, {2993, "goflagx", "GOflag"}, {3070, "gogsx", "nightvision"},
	{9683, "goldengate_sfw", "bridge_egg_sfw"}, {9683, "goldengate_sfw", "ws_goldengate1"}, {9683, "goldengate_sfw", "ws_goldengate4"},
	{1974, "golfball", "kb_golf"}, {10403, "golf_sfs", "golf_fairway1"}, {10403, "golf_sfs", "golf_fairway2"},
	{10403, "golf_sfs", "golf_grassrock"}, {10403, "golf_sfs", "golf_gravelpath"}, {10403, "golf_sfs", "golf_greengrass"},
	{10403, "golf_sfs", "rock_country128blnd"}, {4227, "graffiti_lan01", "cleargraf01_LA"}, {3261, "grasshouse", "hoophouse"},
	{3261, "grasshouse", "veg_bmarijuana"}, {3261, "grasshouse", "veg_marijuana"}, {13725, "gravblok01_lahills", "dirtybeach01_law"},
	{13725, "gravblok01_lahills", "hosp03_law"}, {10442, "graveyard_sfs", "ws_graveydfence"},
	{10442, "graveyard_sfs", "ws_grvl_desgrassblend"}, {10442, "graveyard_sfs", "ws_memorial"}, {4810, "griffobs_las", "cornice01_la"},
	{4810, "griffobs_las", "Gen_Log"}, {4810, "griffobs_las", "Gen_Log_End"}, {4810, "griffobs_las", "grifnewtex1b"},
	{4810, "griffobs_las", "hllblf2_LAE"}, {4810, "griffobs_las", "lasjmslumruf"}, {4810, "griffobs_las", "sm_pinetreebit"},
	{4810, "griffobs_las", "wilsd_06_la"}, {4810, "griffobs_las", "wilsd_08_la"}, {4810, "griffobs_las", "ws_neatwoodfence"},
	{9919, "grnwht_sfe", "sfe_redwht1"}, {9919, "grnwht_sfe", "sfe_redwht1b"}, {9919, "grnwht_sfe", "sfe_redwht2"},
	{9919, "grnwht_sfe", "sfe_redwht3"}, {9919, "grnwht_sfe", "sfe_redwht4"}, {9919, "grnwht_sfe", "sfe_wall_1"},
	{9919, "grnwht_sfe", "sf_hospitaldr1"}, {9919, "grnwht_sfe", "sf_hospitaldr2"}, {9919, "grnwht_sfe", "sl_dtdoor1"},
	{9919, "grnwht_sfe", "vic01_LA"}, {9919, "grnwht_sfe", "victim_sfe"}, {9919, "grnwht_sfe", "whitgrn_sfe1"},
	{9919, "grnwht_sfe", "whitgrn_sfe2"}, {9919, "grnwht_sfe", "whitgrn_sfe3"}, {9919, "grnwht_sfe", "whitgrn_sfe4"},
	{9919, "grnwht_sfe", "whitgrn_sfe5"}, {9919, "grnwht_sfe", "whitgrn_sfe6"}, {5111, "ground2_las2", "Grass_dirt_64HV"},
	{5111, "ground2_las2", "sanpedcorn1"}, {5111, "ground2_las2", "sanpedpawn1a"}, {5111, "ground2_las2", "sjmlawarhustrim"},
	{4849, "ground3_las", "backalley1_LAe"}, {4849, "ground3_las", "floorboard256128"}, {4849, "ground3_las", "hollysign05_LAw"},
	{4849, "ground3_las", "lasnude1"}, {4849, "ground3_las", "lasnude2"}, {4849, "ground3_las", "lasnude7"},
	{4849, "ground3_las", "lasnude9"}, {4849, "ground3_las", "lasnude9a"}, {4849, "ground3_las", "lasnude9h"},
	{4849, "ground3_las", "newcut4_LAS"}, {4849, "ground3_las", "rubbish"}, {4849, "ground3_las", "sanpedowd5"},
	{5122, "ground3_las2", "fossiloil_128"}, {5122, "ground3_las2", "Was_alt"}, {5122, "ground3_las2", "Was_crush"},
	{5122, "ground3_las2", "Was_dier"}, {5122, "ground3_las2", "Was_engblox"}, {5122, "ground3_las2", "Was_scrpyd_tires_pile"},
	{5122, "ground3_las2", "Was__mdedge"}, {4820, "ground4_las", "adet"}, {4820, "ground4_las", "ahoodnewwi2"},
	{4820, "ground4_las", "compfence6_LAe"}, {4820, "ground4_las", "driveway2_128"}, {4820, "ground4_las", "driveway_128"},
	{4820, "ground4_las", "hedge"}, {4820, "ground4_las", "lasjmscruffwall5"}, {4820, "ground4_las", "sanpednhus2"},
	{4820, "ground4_las", "sanpedwall4"}, {4820, "ground4_las", "sjmlahus232"}, {4806, "ground5_las", "combrd1"},
	{4806, "ground5_las", "labreplace"}, {4806, "ground5_las", "newcut2_LAS"}, {4806, "ground5_las", "newcut3_LAS"},
	{4806, "ground5_las", "roof11L256"}, {10356, "groundbit_sfs", "ws_hextile"}, {10851, "groundbit_sfse", "ws_altz_wall6big"},
	{5135, "groundb_las2", "cmpwarhus2"}, {5135, "groundb_las2", "sanpedock95"}, {5135, "groundb_las2", "sanpedock97"},
	{5135, "groundb_las2", "snpedwar1"}, {5135, "groundb_las2", "snpedwar2"}, {5138, "ground_las2", "sanpedock3"},
	{14406, "gs_mansion_lights", "mp_CJ_Light"}, {14406, "gs_mansion_lights", "mp_CJ_LIGHT_FITTING"}, {726, "gtatreesh", "oakbark64"},
	{726, "gtatreesh", "oakleaf1"}, {726, "gtatreesh", "oakleaf2"}, {726, "gtatreesh", "pinebranch2"}, {726, "gtatreesh", "pinewood"},
	{727, "gtatreesh04", "spruce1"}, {727, "gtatreesh04", "sprucebark"}, {728, "gtatreeshi", "berrybush1"},
	{729, "gtatreeshi7", "cedar1"}, {731, "gtatreeshi9", "bchamae"}, {731, "gtatreeshi9", "cypress1"}, {731, "gtatreeshi9", "cypress2"},
	{730, "gtatreeshifir", "bthuja1"}, {730, "gtatreeshifir", "cedar2"}, {650, "gta_cactus", "sjm cactus"},
	{674, "gta_deserttrees", "sm_cactus_leaf"}, {674, "gta_deserttrees", "sm_josh_bark"}, {674, "gta_deserttrees", "sm_josh_leaf"},
	{630, "gta_potplants", "greekurn"}, {630, "gta_potplants", "kb_teracota_pot64"}, {630, "gta_potplants", "yuka256"},
	{858, "gta_procdesert", "sm_des_bush2"}, {858, "gta_procdesert", "sm_des_bush3"}, {817, "gta_procflowers", "gras07Si"},
	{825, "gta_proc_bigbush", "veg_bush1"}, {825, "gta_proc_bigbush", "veg_bush4"}, {802, "gta_proc_bushland", "veg_bush3"},
	{802, "gta_proc_bushland", "veg_bush3red"}, {801, "gta_proc_ferns", "veg_bush2"}, {801, "gta_proc_ferns", "veg_bushgrn"},
	{801, "gta_proc_ferns", "veg_bushred"}, {812, "gta_proc_grassland", "oak2b"}, {804, "gta_proc_grasslanda", "veg_leaf"},
	{804, "gta_proc_grasslanda", "veg_leafred"}, {806, "gta_proc_rushes", "gras03Si"}, {806, "gta_proc_rushes", "gras04Si"},
	{716, "gta_tree_bevhills", "treegridtop_law"}, {716, "gta_tree_bevhills", "trunk3"}, {716, "gta_tree_bevhills", "trunk5"},
	{716, "gta_tree_bevhills", "vegaspalm01_128"}, {615, "gta_tree_boak", "bark04S64"}, {615, "gta_tree_boak", "sm_redwood_bark"},
	{654, "gta_tree_oldpine", "pinelo128"}, {654, "gta_tree_oldpine", "tree19Mi"}, {670, "gta_tree_pine", "sm_redwood_branch"},
	{17540, "gymblok2_lae2", "gangshop1_LAe"}, {17540, "gymblok2_lae2", "roadsignbackground128"}, {2913, "gym_weights", "cheerybox01"},
	{10355, "haight1_sfs", "beigeledge"}, {10355, "haight1_sfs", "drivetile_02"}, {10355, "haight1_sfs", "sl_vic_cornice1"},
	{10355, "haight1_sfs", "ws_apartmentmanky1"}, {10355, "haight1_sfs", "ws_apartmentmanky2"},
	{10355, "haight1_sfs", "ws_apartmentmankyb1"}, {10355, "haight1_sfs", "ws_apartmentmankyb2"},
	{10355, "haight1_sfs", "ws_apartmentmankyblue1"}, {10355, "haight1_sfs", "ws_apartmentmankygreen1"},
	{10355, "haight1_sfs", "ws_apartmentmankywhite1"}, {10355, "haight1_sfs", "ws_apartmentpink1"},
	{10355, "haight1_sfs", "ws_apartmentpink2"}, {10355, "haight1_sfs", "ws_apartmentred1"}, {10355, "haight1_sfs", "ws_apartmentred2"},
	{10355, "haight1_sfs", "ws_apartmentwhite1"}, {10355, "haight1_sfs", "ws_apartmentwhite2"},
	{10355, "haight1_sfs", "ws_apartmentwhite3"}, {10355, "haight1_sfs", "ws_dom's"}, {10355, "haight1_sfs", "ws_ed_shop10"},
	{10355, "haight1_sfs", "ws_ed_shop12"}, {10355, "haight1_sfs", "ws_ed_shop2"}, {10355, "haight1_sfs", "ws_ed_shop3"},
	{10355, "haight1_sfs", "ws_ed_shop4"}, {10355, "haight1_sfs", "ws_hashbanner"}, {10355, "haight1_sfs", "ws_japwin"},
	{10428, "hashblock1b_sfs", "gz_vic3a"}, {10428, "hashblock1b_sfs", "ws_haight2btom"}, {10428, "hashblock1b_sfs", "ws_haight2top5"},
	{10430, "hashblock1z_sfs", "ws_apartmentblue1"}, {10430, "hashblock1z_sfs", "ws_apartmentmankyc1"},
	{10430, "hashblock1z_sfs", "ws_ed_shop13"}, {10430, "hashblock1z_sfs", "ws_ed_shop13_door"},
	{10430, "hashblock1z_sfs", "ws_haight2top4"}, {10430, "hashblock1z_sfs", "ws_haightfrontage2"},
	{10429, "hashblock1_sfs", "Bow_Concrete_drip"}, {10429, "hashblock1_sfs", "ws_apartmentblue2"},
	{10429, "hashblock1_sfs", "ws_haight2top6"}, {10429, "hashblock1_sfs", "ws_haight3btm"}, {10429, "hashblock1_sfs", "ws_haight4"},
	{10429, "hashblock1_sfs", "ws_haighttattoo"}, {10429, "hashblock1_sfs", "ws_hippy2"}, {10429, "hashblock1_sfs", "ws_spliff"},
	{10429, "hashblock1_sfs", "ws_streak_billbd"}, {10429, "hashblock1_sfs", "ws_suburbansign"},
	{10434, "hashblock2b_sfs", "ws_apartmentgrn1"}, {10434, "hashblock2b_sfs", "ws_apartmentgrn2"},
	{10434, "hashblock2b_sfs", "ws_emg_awning"}, {10434, "hashblock2b_sfs", "ws_haight2top"},
	{10434, "hashblock2b_sfs", "ws_haightshop1alt"}, {10434, "hashblock2b_sfs", "ws_haightshop1altdoor"},
	{10434, "hashblock2b_sfs", "ws_mural2"}, {10431, "hashblock2_sfs", "ws_w's_shopfront"},
	{10431, "hashblock2_sfs", "ws_w's_shopfront_top"}, {10439, "hashblock3_sfs", "dt_road_to_alley"},
	{10439, "hashblock3_sfs", "ws_hs_awning"}, {10439, "hashblock3_sfs", "ws_mural1"}, {10435, "hashblock4_sfs", "redshade2_64"},
	{10435, "hashblock4_sfs", "ws_apartmentmint1"}, {10435, "hashblock4_sfs", "ws_apartmentmint2"},
	{10435, "hashblock4_sfs", "ws_apartmentmint3"}, {10427, "hashhouses1_sfs", "ws_haight2top1"},
	{10427, "hashhouses1_sfs", "ws_haight2top3"}, {10433, "hashmarket1_sfs", "woodboards2"}, {3860, "hashmarket_sfsx", "ws_tarp1"},
	{3860, "hashmarket_sfsx", "ws_tarp2"}, {3860, "hashmarket_sfsx", "ws_tarp3"}, {3860, "hashmarket_sfsx", "ws_tarp4"},
	{10447, "hashupass_sfs", "Bow_sub_wallGrime"}, {3878, "headstones_sfsx", "ws_wargrave"}, {3878, "headstones_sfsx", "ws_wargrave2"},
	{1301, "helimagnet", "Copperoxb64"}, {981, "helixbarrier", "bridgehzrd_kb_128"}, {981, "helixbarrier", "colourboxes"},
	{981, "helixbarrier", "curb_64H"}, {14514, "hexi_lite", "ab_hexi_Lite"}, {13734, "hillcliff_lahills", "cobbles_kb_256"},
	{3619, "hillhouse14_la", "anwfrntbev4"}, {3619, "hillhouse14_la", "aposhus1"}, {3619, "hillhouse14_la", "aposhus2"},
	{3619, "hillhouse14_la", "aposhus3"}, {3619, "hillhouse14_la", "aposhus4"}, {3600, "hillhousex13_6", "courthsewin_128"},
	{3600, "hillhousex13_6", "roof01L256"}, {3608, "hillhousex2_us", "mulhuose01_law"}, {3601, "hillhousex4_5", "bevgate02_law"},
	{3601, "hillhousex4_5", "inwindow1"}, {3612, "hillhousex_la10_12", "downtwin20"}, {3598, "hillhousex_la1_2", "bevdoor04_law"},
	{3598, "hillhousex_la1_2", "plasterLAh"}, {3598, "hillhousex_la1_2", "shinglesLAh"}, {3598, "hillhousex_la1_2", "sunsetwin01_LA"},
	{3598, "hillhousex_la1_2", "sunsetwin02_LA"}, {1851, "hi_cutdice", "dice3"}, {5718, "hobos_lawn", "carney01_LAwN"},
	{5718, "hobos_lawn", "carney02_LAwN"}, {5718, "hobos_lawn", "carney03_LAwN"}, {5718, "hobos_lawn", "carney04_LAwN"},
	{5718, "hobos_lawn", "Smear_CemLAwN"}, {9593, "hosbibalsfw", "2hospital1sfw"}, {9593, "hosbibalsfw", "2hospital2sfw"},
	{9593, "hosbibalsfw", "2hospital3sfw"}, {9593, "hosbibalsfw", "2hospital4sfw"}, {9593, "hosbibalsfw", "2hospital5sfw"},
	{9593, "hosbibalsfw", "2hospital6sfw"}, {9593, "hosbibalsfw", "2hospital7sfw"}, {9593, "hosbibalsfw", "hospital6_sfw"},
	{9593, "hosbibalsfw", "hospital7_sfw"}, {9593, "hosbibalsfw", "hospital8t_sfw"}, {9593, "hosbibalsfw", "paveslab1"},
	{2558, "hospital", "CJ_H_CURTAIN1"}, {3899, "hospital2", "airportdoor1"}, {3899, "hospital2", "AmbulanceParking_64"},
	{3899, "hospital2", "black"}, {3899, "hospital2", "burnt_faggots64"}, {3899, "hospital2", "concretenew256"},
	{3899, "hospital2", "cutscenebank128"}, {3899, "hospital2", "dustyconcrete128"}, {3899, "hospital2", "fire_exit128"},
	{3899, "hospital2", "hospitalboard_128a"}, {3899, "hospital2", "HospitalCarPark_64"}, {3899, "hospital2", "ind_hospital1_128"},
	{3899, "hospital2", "ind_hospital2_128"}, {3899, "hospital2", "newall15128"}, {3899, "hospital2", "notice01_128"},
	{3899, "hospital2", "plainwoodoor2"}, {3899, "hospital2", "runwaylight_64"}, {3899, "hospital2", "sky33_64hv"},
	{5402, "hospital_lae", "hospwin1_LAe"}, {5402, "hospital_lae", "hospwin2_LAe"}, {5402, "hospital_lae", "hospwin3_LAe"},
	{5708, "hospital_lawn", "allsaints2_law copy"}, {5708, "hospital_lawn", "allsaints_law"}, {5708, "hospital_lawn", "hosp01_law"},
	{5708, "hospital_lawn", "hosp03b_law"}, {5708, "hospital_lawn", "rock1b_128"}, {10412, "hotel1", "carpet_red_256"},
	{10412, "hotel1", "gold128"}, {10412, "hotel1", "grasslawnfade_256"}, {10412, "hotel1", "ws_awning"},
	{10412, "hotel1", "ws_hotel1"}, {10412, "hotel1", "ws_hotel2"}, {10412, "hotel1", "ws_hotel5"}, {10412, "hotel1", "ws_hotel6"},
	{10412, "hotel1", "ws_hotelrail"}, {10412, "hotel1", "ws_vankhoffsign"}, {10425, "hotel2_sfs", "ws_hoteldoor1"},
	{10444, "hotelbackpool_sfs", "ws_hotel7"}, {10444, "hotelbackpool_sfs", "ws_hotel7b"},
	{10615, "hotelback_sfs", "ws_desgreengrass_pave"}, {3432, "hotelcanopy", "gnhotelcanopy01_64"},
	{3432, "hotelcanopy", "gnhotelcanopy03_64"}, {9229, "hrbr_sfn", "alleydoor7"}, {9229, "hrbr_sfn", "dt_bridge_rail_texture"},
	{11389, "hubint1_sfse", "ws_altz_wall5_BIG"}, {11389, "hubint1_sfse", "ws_altz_wall7_BIG"},
	{11389, "hubint1_sfse", "ws_peeling_ceiling1_BIG"}, {11389, "hubint1_sfse", "ws_STDcalendar"},
	{11390, "hubint2", "ws_greymetal_small"}, {11390, "hubint2", "ws_lightswitchgrubby"}, {11391, "hubprops2_sfse", "blackbag"},
	{11391, "hubprops2_sfse", "CJ_fire"}, {17518, "hub_alpha", "clothline1_LAe"}, {17518, "hub_alpha", "macbrij1_LAe"},
	{1246, "icons", "pill_32"}, {1246, "icons", "skull"}, {1274, "icons2", "yellowhi132"}, {1273, "icons3", "greengrad32"},
	{1272, "icons4", "diskmetal32"}, {1272, "icons4", "heart"}, {1272, "icons4", "salogo64"}, {1239, "icons6", "lyellow32"},
	{1242, "icons7", "cj_para"}, {1247, "icons9", "bribe16"}, {5418, "idlewood3_lae", "lasjmrail1"},
	{5418, "idlewood3_lae", "sanpedmot1"}, {5418, "idlewood3_lae", "sanpedmot3"}, {5418, "idlewood3_lae", "sanpedmot4"},
	{5418, "idlewood3_lae", "sanpedmotWIN"}, {5418, "idlewood3_lae", "sanpedton1"}, {5418, "idlewood3_lae", "sanpedton5"},
	{5474, "idlewood46_lae", "downtwin29"}, {5474, "idlewood46_lae", "redresdoor"}, {5474, "idlewood46_lae", "vengardoor01_law"},
	{5411, "idlewood6_detail", "eastwin02_LAe2"}, {5411, "idlewood6_detail", "holwall"}, {5411, "idlewood6_detail", "ladocksig1"},
	{5411, "idlewood6_detail", "snpedwar4b"}, {5422, "idlewood6_lae", "barberpole1"}, {5422, "idlewood6_lae", "barbershop1"},
	{5422, "idlewood6_lae", "concretebigc256128"}, {5422, "idlewood6_lae", "gangshop9_LAe"}, {5422, "idlewood6_lae", "las69str2"},
	{5422, "idlewood6_lae", "lastat4"}, {5422, "idlewood6_lae", "liqdel1"}, {5422, "idlewood6_lae", "reeces_LAe"},
	{5422, "idlewood6_lae", "sanpshop4"}, {5422, "idlewood6_lae", "sjmhicut1las"}, {5417, "idlewood6_tr", "ladocksig2"},
	{5417, "idlewood6_tr", "ladocksig3"}, {14502, "immy_furn", "ab_pipe"}, {14502, "immy_furn", "mp_motel_bed"},
	{14502, "immy_furn", "mp_motel_bed1"}, {14502, "immy_furn", "mp_motel_bed2"}, {14498, "imm_rooms", "venetian_blind"},
	{14500, "imm_roomss", "ab_tilehex2"}, {14500, "imm_roomss", "Bow_bar_top"}, {14500, "imm_roomss", "motel_wall2"},
	{14500, "imm_roomss", "mp_motel_bluew"}, {14500, "imm_roomss", "mp_motel_bluewALT"}, {14500, "imm_roomss", "mp_motel_carpet"},
	{14500, "imm_roomss", "mp_motel_wallpaper"}, {14500, "imm_roomss", "mp_motel_wallpaper1"}, {2986, "imm_roomx", "kb_imvent"},
	{5126, "imrancomp_las2", "sanpdconv"}, {5126, "imrancomp_las2", "sanpedock94"}, {5132, "imstuff_las2", "cardbrdirty128"},
	{5132, "imstuff_las2", "sjmlawarplt2"}, {5132, "imstuff_las2", "sjmlawarshcrategen"}, {14506, "imy_motel", "ab_tile1"},
	{14506, "imy_motel", "Ah_exit"}, {14506, "imy_motel", "mp_motel_numbers"}, {14506, "imy_motel", "mp_motel_pinkw"},
	{14506, "imy_motel", "mp_motel_pinkwALT"}, {14506, "imy_motel", "mp_motel_roof"}, {14506, "imy_motel", "mp_motel_rooms"},
	{14506, "imy_motel", "mp_motel_whitewall"}, {14506, "imy_motel", "mp_motel_whitewallALT"}, {14525, "imy_motel2", "ah_skylight"},
	{14525, "imy_motel2", "mp_motel_reception"}, {2989, "imy_skylx", "skylightkb"}, {3059, "imy_smsx", "niteclb1_LAe"},
	{3059, "imy_smsx", "niteclb3_LAe"}, {3091, "imy_trx", "kb_trainbarrier"}, {14515, "im_motelxtras", "wallsocketkb"},
	{14516, "im_xtra", "CJ_PAINTING13"}, {3895, "inditaly", "Plaindoor_64V"}, {3895, "inditaly", "stepflat_64HV"},
	{3895, "inditaly", "tenwhite128"}, {3895, "inditaly", "tenwhitebrick64"}, {3896, "indust1", "block_maindraga"},
	{3896, "indust1", "concretenewb32"}, {3896, "indust1", "firewall"}, {3896, "indust1", "Grass_32"},
	{3896, "indust1", "indsmallwall64"}, {3896, "indust1", "ind_tendragblka"}, {3896, "indust1", "ind_tendragblkb"},
	{3896, "indust1", "LO1road_128"}, {3896, "indust1", "sandytar_64HV"}, {3896, "indust1", "tarmac_64HV"},
	{3901, "indust2", "railplat01"}, {3901, "indust2", "rustybolts64"}, {3901, "indust2", "rustybolts_drk32"},
	{3722, "indust2_lax", "Was_grfiti"}, {3722, "indust2_lax", "Was_sd"}, {914, "industrialext", "CJ_PANEL"},
	{914, "industrialext", "CJ_Panel2"}, {914, "industrialext", "CJ_SPEC"}, {914, "industrialext", "CJ_VENT1"},
	{914, "industrialext", "cj_yellowgenerator"}, {914, "industrialext", "lecybox"}, {5140, "industry3_las2", "lasclean2"},
	{5140, "industry3_las2", "santall2"}, {5140, "industry3_las2", "santall5"}, {5140, "industry3_las2", "santall7"},
	{5140, "industry3_las2", "santall8"}, {5140, "industry3_las2", "santall8s"}, {5140, "industry3_las2", "sjmhicut4las"},
	{5140, "industry3_las2", "sjmlashopsig1"}, {5140, "industry3_las2", "sjmlashopsig2"}, {5140, "industry3_las2", "snpedshptst3"},
	{3636, "indust_lax", "lasjmpow4"}, {3636, "indust_lax", "lasjmpow91"}, {3636, "indust_lax", "lasjmpow93"},
	{3636, "indust_lax", "lasjmpow94"}, {3636, "indust_lax", "lasjmpow95"}, {13627, "inneroval", "loadbay64"},
	{13627, "inneroval", "newgrnd1brntrk_128"}, {13624, "innertrak", "AH_dirt64b2"}, {13624, "innertrak", "AH_dirtmix_128"},
	{13624, "innertrak", "dirtgrass"}, {18008, "intclothesa", "chromeffect"}, {18008, "intclothesa", "CJ_VICT_DOOR2"},
	{18008, "intclothesa", "CJ_VIC_1"}, {18008, "intclothesa", "CJ_VIC_2"}, {18008, "intclothesa", "mp_cloth_vicfloor"},
	{18008, "intclothesa", "mp_cloth_vicgird"}, {18008, "intclothesa", "mp_lightfitting"}, {18008, "intclothesa", "shop_rail"},
	{18008, "intclothesa", "shop_rail2"}, {18008, "intclothesa", "shop_shelf11"}, {18008, "intclothesa", "shop_wall3"},
	{18008, "intclothesa", "stair_treads"}, {18094, "intclothesa2", "denims"}, {18024, "intclotheshiphop", "CJ_SUBURB_WIN"},
	{18024, "intclotheshiphop", "concreteCJ256"}, {18024, "intclotheshiphop", "mp_cloth_sub"},
	{18024, "intclotheshiphop", "mp_cop_light"}, {18067, "intclothes_acc", "CJ_VIC_3"}, {18067, "intclothes_acc", "CJ_VIC_4"},
	{18067, "intclothes_acc", "mp_cloth_vic"}, {18067, "intclothes_acc", "mp_cloth_vicrug"}, {14783, "intgarage2aint3", "canvas22"},
	{14783, "intgarage2aint3", "garagewall1"}, {14783, "intgarage2aint3", "gragedoorkb2"},
	{14783, "intgarage2aint3", "hotknifebody2kb"}, {14783, "intgarage2aint3", "hotknifebody3kb"},
	{14660, "inttattoobits", "tatoo_chair1"}, {14660, "inttattoobits", "tatoo_chair3"}, {14660, "inttattoobits", "tat_roll1"},
	{14660, "inttattoobits", "tat_spray1"}, {14660, "inttattoobits", "tat_tissue3"}, {14660, "inttattoobits", "tissues2"},
	{14660, "inttattoobits", "tissues4"}, {14771, "int_brothelint3", "Bow_bar_cooler_lwr"},
	{14771, "int_brothelint3", "Bow_bar_cooler_upr"}, {14771, "int_brothelint3", "Bow_bar_panelfront"},
	{14771, "int_brothelint3", "carpbroth1"}, {14771, "int_brothelint3", "GB_midbar06"}, {14771, "int_brothelint3", "GB_midbar09"},
	{14771, "int_brothelint3", "GB_midbar10"}, {14771, "int_brothelint3", "GB_midbar15"}, {14771, "int_brothelint3", "GB_nastybar12"},
	{14771, "int_brothelint3", "sw_backdoor01"}, {14771, "int_brothelint3", "wallpbroth1"}, {14777, "int_casinoint3", "GB_midbar05"},
	{14777, "int_casinoint3", "GB_midbar08"}, {14777, "int_casinoint3", "GB_midbar11"}, {14777, "int_casinoint3", "GB_midbar16"},
	{18007, "int_cutbar3", "barbers_wall2"}, {18007, "int_cutbar3", "barbers_wall3"}, {1491, "int_doors", "CJ_WOODDOOR1"},
	{1491, "int_doors", "CJ_WOODDOOR2"}, {1491, "int_doors", "CJ_WOODDOOR3"}, {1499, "int_doors(cj)", "CJ_DOORSURROUND"},
	{14798, "int_kbsgarage3", "ab_wall_flake"}, {14661, "int_tatoo", "counter1"}, {14661, "int_tatoo", "mp_tat_power"},
	{14661, "int_tatoo", "mp_tat_tats1"}, {14661, "int_tatoo", "mp_tat_tats2"}, {14661, "int_tatoo", "tattoo_frm1"},
	{14661, "int_tatoo", "tattoo_wall1"}, {14661, "int_tatoo", "tat_shadoa"}, {14531, "int_zerosrca", "CJ_RC_WIN"},
	{14531, "int_zerosrca", "donut_ceil"}, {14531, "int_zerosrca", "stadium_ground2"}, {14531, "int_zerosrca", "ws_ed_zeroshop"},
	{5401, "jeffers4_lae", "flooringwd01_int"}, {5401, "jeffers4_lae", "newall9b_16c128"}, {5401, "jeffers4_lae", "sidewgrass1"},
	{5401, "jeffers4_lae", "stainwinLAe"}, {5406, "jeffers5a_lae", "CJ_SUBURBlw_WIN"}, {5406, "jeffers5a_lae", "discwa1_LAe2"},
	{5406, "jeffers5a_lae", "gangshop13_LAe"}, {5406, "jeffers5a_lae", "heat_01"}, {5406, "jeffers5a_lae", "lasuburbansgn1"},
	{5406, "jeffers5a_lae", "poshentrance1_256"}, {5406, "jeffers5a_lae", "stonemall2_law"}, {5406, "jeffers5a_lae", "vgnshopwal1_256"},
	{5406, "jeffers5a_lae", "vgshopwall05_64"}, {1602, "jellyfish1", "jellyfishc"}, {1603, "jellyfish2", "jellyb2"},
	{3047, "jetdx", "mp_jet_roof"}, {14404, "jet_interior", "LD_747_cockpitdoor"}, {14404, "jet_interior", "LD_747_door"},
	{14404, "jet_interior", "LD_747_floor"}, {14404, "jet_interior", "LD_747_skin"}, {14404, "jet_interior", "LD_747_toiletdoor"},
	{14404, "jet_interior", "mp_jet_cockpit"}, {14404, "jet_interior", "mp_jet_wall"}, {3129, "jt_doorbx", "pldoor_envmap"},
	{3129, "jt_doorbx", "pldoor_gen"}, {3132, "jt_doorx", "Shamalbody256"}, {3132, "jt_doorx", "trolley02"},
	{2601, "juice", "sprunk2dirty2"}, {3852, "jump_sfxref", "rooftop_pipes"}, {3852, "jump_sfxref", "sfgas1"},
	{849, "junkpiles", "CJgrass"}, {849, "junkpiles", "ws_oldredbrick"}, {2188, "kbblackjack", "balckjack_txt2a"},
	{2188, "kbblackjack", "bj_squrea"}, {2188, "kbblackjack", "chip_tray_1"}, {2188, "kbblackjack", "chip_tray_gry"},
	{2188, "kbblackjack", "deck_cards"}, {2188, "kbblackjack", "roulette_4_256"}, {2188, "kbblackjack", "roulette_6_256"},
	{2188, "kbblackjack", "roulette_wood"}, {2188, "kbblackjack", "wheel_o_2b"}, {1853, "kbchips1", "indx_chip1"},
	{1853, "kbchips1", "indx_chip2"}, {1853, "kbchips1", "indx_chip3"}, {1853, "kbchips1", "indx_chip4"},
	{1853, "kbchips1", "indx_chip5"}, {1853, "kbchips1", "indx_chip6"}, {1706, "kbcouch1", "kbcornice_2_128"},
	{1706, "kbcouch1", "kbwood_panel4_128"}, {1706, "kbcouch1", "kb_sofa555c"}, {1706, "kbcouch1", "kb_sofa555d"},
	{1706, "kbcouch1", "kb_sofaside2"}, {1706, "kbcouch1", "kb_sofa_256"}, {1950, "kbeer", "bottles_kb2"},
	{4892, "kbgarage_las", "aanewwin"}, {4892, "kbgarage_las", "ahoodnewdr1"}, {4892, "kbgarage_las", "canvas22sjm"},
	{5341, "kbgarage_las2", "sanpedwall2"}, {1826, "kbmiscfrn1", "bank_mny_LR"}, {1826, "kbmiscfrn1", "bank_safe_LR"},
	{1826, "kbmiscfrn1", "bnk_dsk_2"}, {1826, "kbmiscfrn1", "man_mny2"}, {1826, "kbmiscfrn1", "wee_blak_32"},
	{1825, "kbmiscfrn1cj", "htl_tbltop2"}, {1827, "kbmiscfrn2", "chrome_sheet"}, {1827, "kbmiscfrn2", "man_mny1"},
	{1827, "kbmiscfrn2", "safridge_256"}, {627, "kbplantssmz", "plantc256"}, {1978, "kbroul1", "green_beize_128"},
	{1978, "kbroul1", "roulette_surf1"}, {1978, "kbroul1", "roulette_surf2"}, {1978, "kbroul1", "roulette_wood3"},
	{1929, "kbroul2", "oliveash_256"}, {1929, "kbroul2", "roulet_nosa"}, {1929, "kbroul2", "roul_slotbit2"},
	{1929, "kbroul2", "roul_slotbit3"}, {1929, "kbroul2", "roul_slotbit4"}, {1929, "kbroul2", "roul_slotbit5"},
	{1929, "kbroul2", "roul_slotbit6"}, {1830, "kbslotmchines", "slot2"}, {1830, "kbslotmchines", "slot3"},
	{1830, "kbslotmchines", "slot4"}, {1830, "kbslotmchines", "slot5"}, {1830, "kbslotmchines", "slot7"},
	{1830, "kbslotmchines", "slot_bit2"}, {1948, "kbslotnu", "larg_reel1"}, {1948, "kbslotnu", "slot_black"},
	{1948, "kbslotnu", "slot_chrome1"}, {1948, "kbslotnu", "slot_steel"}, {1948, "kbslotnu", "wheel_o_tbl1a"},
	{1828, "kbtgr_rug", "man_tigr_rug"}, {1707, "kb_carcouch", "kb_car_couch2"}, {2957, "kb_ctdoorx", "garage_docks"},
	{1839, "kb_hifi", "blak_speaker"}, {1839, "kb_hifi", "hifi_1"}, {1839, "kb_hifi", "hifi_2"}, {1702, "kb_parker", "kbsofa333e"},
	{1702, "kb_parker", "kb_sofaside1"}, {2890, "kb_skip_txd", "skipY"}, {2890, "kb_skip_txd", "skip_peeling1"},
	{2890, "kb_skip_txd", "skip_rubble1"}, {1895, "kb_wheel1", "roulette_4drk"}, {1895, "kb_wheel1", "wheel_o_1"},
	{1895, "kb_wheel1", "wheel_o_2"}, {1895, "kb_wheel1", "wheel_o_2c"}, {1895, "kb_wheel1", "wheel_o_2d"},
	{1895, "kb_wheel1", "wheel_o_2e"}, {1895, "kb_wheel1", "wheel_o_2f"}, {1895, "kb_wheel1", "wheel_o_3"},
	{1895, "kb_wheel1", "white256"}, {2988, "kcomp_gx", "kmwood_gate"}, {3116, "kei_wnchx", "trilby04"},
	{2886, "keypad", "nt_phone3"}, {13634, "kickarse", "law_blue1"}, {13590, "kickstart", "AH_barpanelM"},
	{13590, "kickstart", "ah_bluBADWL"}, {13590, "kickstart", "AH_fitlhskirting"}, {13590, "kickstart", "ah_logend"},
	{13590, "kickstart", "carlites64a"}, {13590, "kickstart", "carundera64"}, {13590, "kickstart", "Grass-base-Right"},
	{13590, "kickstart", "kickGrass"}, {13590, "kickstart", "midtrack"}, {13590, "kickstart", "rock01_law"},
	{13590, "kickstart", "Rocky road"}, {13590, "kickstart", "Upt_Precinct_woodLedge"}, {13590, "kickstart", "yellowrust2_64"},
	{14384, "kit3hghg", "AH_greencurtain"}, {2942, "kmb_atmx", "kmb_atm"}, {2942, "kmb_atmx", "kmb_atm_dam"},
	{2942, "kmb_atmx", "kmb_atm_sign"}, {2942, "kmb_atmx", "kmb_chip1"}, {2942, "kmb_atmx", "kmb_chip2"},
	{2942, "kmb_atmx", "kmb_wiresC"}, {2960, "kmb_beamx", "kmb_beam"}, {2903, "kmb_chute", "chute_coords"},
	{2903, "kmb_chute", "kb_lug1"}, {2903, "kmb_chute", "parachute"}, {2922, "kmb_keypadx", "keypad2"},
	{2922, "kmb_keypadx", "keypad_glass"}, {2922, "kmb_keypadx", "keypad_light"}, {2949, "kmb_lockdoortxd", "locked_door"},
	{2901, "kmb_marijtxd", "kmb_marijuana"}, {2894, "kmb_notebook", "kmb_notebook"}, {2891, "kmb_packet", "kmb_packet"},
	{2953, "kmb_paperx", "kmb_write_code"}, {2936, "kmb_rckx", "larock256"}, {3124, "ksnipx", "ak47_all"},
	{2972, "k_cratesx", "747_crate"}, {2972, "k_cratesx", "cargo1_128"}, {2972, "k_cratesx", "cargo3_128"},
	{2972, "k_cratesx", "tyrecover_256128"}, {2977, "k_militbx", "military_cratee"}, {2964, "k_pool", "blue_pool_table"},
	{2964, "k_pool", "poolcue"}, {2964, "k_pool", "pool_table_cloth"}, {14708, "labig1int2", "ab_mottleGrey"},
	{14708, "labig1int2", "doorframew"}, {14708, "labig1int2", "GB_restaursmll32"}, {14708, "labig1int2", "GB_restaursmll38"},
	{14708, "labig1int2", "GB_restaursmll52"}, {14708, "labig1int2", "GB_restaursmll53"}, {14708, "labig1int2", "HS1_2Wall5"},
	{14708, "labig1int2", "HS1_wall5"}, {14708, "labig1int2", "HS2_3Wall2"}, {14708, "labig1int2", "HS2_Artex5"},
	{14708, "labig1int2", "HS2_floor2"}, {14708, "labig1int2", "HS2_floor3"}, {14708, "labig1int2", "HS2_floor4"},
	{14708, "labig1int2", "HS3_wall9"}, {14708, "labig1int2", "HS_art"}, {14708, "labig1int2", "HS_vase"},
	{14708, "labig1int2", "HS_wood1"}, {14708, "labig1int2", "mp_apt1_ceiling"}, {14708, "labig1int2", "skirtingw"},
	{14708, "labig1int2", "StudioWall"}, {14708, "labig1int2", "vgsclubdoor01_128"}, {14708, "labig1int2", "WH_skirt"},
	{14706, "labig2int2", "banniswd_int"}, {14706, "labig2int2", "carpet1aw"}, {14706, "labig2int2", "flooringwd02_int"},
	{14706, "labig2int2", "frenchwind2_int"}, {14706, "labig2int2", "frenchwinds_int"}, {14706, "labig2int2", "HS1_Shade2"},
	{14706, "labig2int2", "HS2_2Wall1"}, {14706, "labig2int2", "HS2_3Wall6"}, {14706, "labig2int2", "HS3_wall2"},
	{14706, "labig2int2", "HS3_wall5"}, {14706, "labig2int2", "HS3_wall7"}, {14706, "labig2int2", "HS_art2"},
	{14706, "labig2int2", "HS_art3"}, {14706, "labig2int2", "HS_art5"}, {14706, "labig2int2", "HS_art7"},
	{14706, "labig2int2", "HS_art9"}, {14706, "labig2int2", "lightswitch01_int"}, {14706, "labig2int2", "mp_apt1_kitchwallpaper"},
	{14706, "labig2int2", "skirtingb"}, {14706, "labig2int2", "vegdoor1_int"}, {14706, "labig2int2", "wallpnice12"},
	{14706, "labig2int2", "whitecarpet01"}, {14706, "labig2int2", "wood14S"}, {14707, "labig3int2", "aptdoor01_int"},
	{14707, "labig3int2", "bathtile02_int"}, {14707, "labig3int2", "burglry_wall6"}, {14707, "labig3int2", "cactusL"},
	{14707, "labig3int2", "HS2_3Carpet1"}, {14707, "labig3int2", "HS2_3Wall10"}, {14707, "labig3int2", "HS2_3Wall5"},
	{14707, "labig3int2", "HS2_3Wall7"}, {14707, "labig3int2", "HS2_3Wall9"}, {14707, "labig3int2", "HS_art4"},
	{14707, "labig3int2", "HS_art6"}, {14707, "labig3int2", "HS_art8"}, {14707, "labig3int2", "planPot"}, {14707, "labig3int2", "Soil"},
	{14707, "labig3int2", "WH_walls"}, {15048, "labigsave", "ah_carp1"}, {15048, "labigsave", "ah_carpet2kb"},
	{15048, "labigsave", "AH_carpet4kb"}, {15048, "labigsave", "ah_curwall"}, {15048, "labigsave", "AH_fancyceil"},
	{15048, "labigsave", "AH_flroortile1"}, {15048, "labigsave", "AH_flroortile2"}, {15048, "labigsave", "ah_GRYSKT"},
	{15048, "labigsave", "ah_pineceiling"}, {15048, "labigsave", "ah_pluskirt"}, {15048, "labigsave", "ah_posmarskirt"},
	{15048, "labigsave", "ah_wallstyle1"}, {15048, "labigsave", "AH_walltile1"}, {15048, "labigsave", "ah_wpaper8"},
	{1328, "labins01_la", "bin1_LAe"}, {1328, "labins01_la", "bin2_LAe"}, {1328, "labins01_la", "bins10_LAe2"},
	{1328, "labins01_la", "bins1_LAe2"}, {1328, "labins01_la", "bins2_LAe2"}, {1328, "labins01_la", "bins3_LAe2"},
	{1328, "labins01_la", "bins4_LAe2"}, {1328, "labins01_la", "bins5_LAe2"}, {1328, "labins01_la", "bins6_LAe2"},
	{1328, "labins01_la", "bins7_LAe2"}, {1328, "labins01_la", "bins8_LAe2"}, {1328, "labins01_la", "bins9_LAe2"},
	{1328, "labins01_la", "cj_bin2"}, {1328, "labins01_la", "map64"}, {8550, "laconcha", "vegaspawnwall_128"},
	{8550, "laconcha", "vgnfirestat2_64"}, {8551, "laconchasign", "laconca01_128"}, {8551, "laconchasign", "laconcasign02_64"},
	{17524, "lae2bigblock", "gangsign2_LAe"}, {17524, "lae2bigblock", "hillshop1_LA"}, {17524, "lae2bigblock", "hillshop3_LA"},
	{17524, "lae2bigblock", "hollywin03_LAw"}, {17524, "lae2bigblock", "ja_multisign_lae2"}, {17524, "lae2bigblock", "venfood01_law"},
	{17524, "lae2bigblock", "wareh1_LAe"}, {17524, "lae2bigblock", "wareh2_LAe"}, {17524, "lae2bigblock", "waresigns1_LAe"},
	{17535, "lae2billboards", "billbd1_LAe"}, {17535, "lae2billboards", "SunBillB03"}, {17678, "lae2bridge", "macbrij4_LAe"},
	{17678, "lae2bridge", "Newpavement"}, {17588, "lae2coast_alpha", "compcourtrail1_m"}, {17588, "lae2coast_alpha", "east_pacific"},
	{17588, "lae2coast_alpha", "golden_palms"}, {17588, "lae2coast_alpha", "LAShad1"}, {17588, "lae2coast_alpha", "plainglass"},
	{17925, "lae2fake_int", "burglry_wall4"}, {17925, "lae2fake_int", "carpet1kb"}, {17532, "lae2grnd", "fencebroke256"},
	{17532, "lae2grnd", "redcanopything"}, {17532, "lae2grnd", "sw_door14"}, {17519, "lae2newtempbx", "asanpdshpsh1"},
	{17519, "lae2newtempbx", "asanpdshpsh1c"}, {17519, "lae2newtempbx", "carlot1"}, {17519, "lae2newtempbx", "lasclean4"},
	{17519, "lae2newtempbx", "lasclean5"}, {17519, "lae2newtempbx", "lasclean6"}, {17519, "lae2newtempbx", "LAskyscraper5"},
	{17519, "lae2newtempbx", "lastaco1"}, {17519, "lae2newtempbx", "lastripx2"}, {17519, "lae2newtempbx", "lastripx2a"},
	{17519, "lae2newtempbx", "sanpedpawn1"}, {17519, "lae2newtempbx", "sanpedpawn1d"}, {17519, "lae2newtempbx", "sanpedpawn2"},
	{17519, "lae2newtempbx", "sanpedpawn2c"}, {17519, "lae2newtempbx", "santaco6"}, {17519, "lae2newtempbx", "santaco6za"},
	{17519, "lae2newtempbx", "siliconvalleywins4"}, {17519, "lae2newtempbx", "sjmlashop5"}, {17519, "lae2newtempbx", "snpedpost1"},
	{17519, "lae2newtempbx", "snpedpost1a"}, {17519, "lae2newtempbx", "snpedpost1b"}, {17505, "lae2roads", "craproad2_LAe"},
	{17505, "lae2roads", "craproad3_LAe"}, {17505, "lae2roads", "craproad7_LAe7"}, {17505, "lae2roads", "grassdry_path_128HV"},
	{17505, "lae2roads", "macbrij2_LAe"}, {17606, "lae2roadscoast", "concretedust2_256128"},
	{17606, "lae2roadscoast", "LAroad_centre1"}, {17606, "lae2roadscoast", "stonewalls1_LA"},
	{17606, "lae2roadscoast", "Was_scrpyd_wall_in_hngr"}, {17595, "lae2roadshub", "Grass_concpath2"},
	{17595, "lae2roadshub", "sidewgrass2"}, {17595, "lae2roadshub", "sidewgrass3"}, {17595, "lae2roadshub", "sidewgrass5"},
	{17595, "lae2roadshub", "sidewgrass_fuked"}, {17595, "lae2roadshub", "trainground1"}, {17595, "lae2roadshub", "trainground3"},
	{17563, "lae2tempshit", "wattsstax1_LAe"}, {17563, "lae2tempshit", "wattsstax2_LAe"}, {17563, "lae2tempshit", "wattsstax3_LAe"},
	{17563, "lae2tempshit", "wattsstax4_LAe"}, {5395, "laeroads", "hiwaymidlle_256"}, {5395, "laeroads", "macbrij3_LAe"},
	{5391, "laeroads2s", "sl_pavebutt2"}, {5391, "laeroads2s", "sl_roadbutt1"}, {5421, "laesmokecnthus", "bballbck_kb"},
	{5421, "laesmokecnthus", "greenwall4"}, {5421, "laesmokecnthus", "sl_blustainplanks"}, {3593, "lafuckar", "car3_128"},
	{13675, "lahillsgrounds", "bevpool"}, {13675, "lahillsgrounds", "bevr03b_law"}, {13701, "lahillshilhs1c", "ws_garagedoor3_blue"},
	{13681, "lahillshilhs1e", "veg_hedge1_256"}, {13678, "lahillslaroads", "roaddgrassblnd"},
	{13678, "lahillslaroads", "Tar_1line256HVblend"}, {13706, "lahillsroadscoast", "dt_roadblend"},
	{13706, "lahillsroadscoast", "kbpavementblend"}, {13706, "lahillsroadscoast", "sjmhoodlawn42B"},
	{13712, "lahillstr_lawn", "kb_ivy2_128"}, {13712, "lahillstr_lawn", "mulhfenc02_LA"}, {13694, "lahillstxd1a", "glasswindow2_256"},
	{13816, "lahills_safe1", "dor_slider_16_32"}, {13816, "lahills_safe1", "gry_roof"}, {13816, "lahills_safe1", "koe_girder_128_642"},
	{13816, "lahills_safe1", "pool_side_128_256"}, {13816, "lahills_safe1", "pord_conc_128"}, {13816, "lahills_safe1", "white_girdr"},
	{13761, "lahills_whisky", "discharger"}, {13761, "lahills_whisky", "lasviper6"}, {13761, "lahills_whisky", "lasviper7"},
	{13761, "lahills_whisky", "whisk1"}, {13761, "lahills_whisky", "whisk2"}, {13761, "lahills_whisky", "whisk3"},
	{13761, "lahills_whisky", "whisk4"}, {13761, "lahills_whisky", "whisk5"}, {13861, "lahills_wiresnshit3", "antenna2"},
	{13861, "lahills_wiresnshit3", "scumtiles2_LAe"}, {13861, "lahills_wiresnshit3", "sjmornfnce"},
	{14713, "lahss2aint2", "HS1_2Wall3"}, {14713, "lahss2aint2", "HS1_carpet1"}, {14713, "lahss2aint2", "HS1_Shade"},
	{14713, "lahss2aint2", "HS1_wall2"}, {14713, "lahss2aint2", "HS2_Artex2"}, {14713, "lahss2aint2", "HS2_Artex4"},
	{14713, "lahss2aint2", "HS2_Blind1"}, {14713, "lahss2aint2", "HS2_Blind3"}, {14713, "lahss2aint2", "HS2_Curt3"},
	{14713, "lahss2aint2", "HS2_floor1"}, {14713, "lahss2aint2", "HS2_wall4"}, {14713, "lahss2aint2", "HS2_wall6"},
	{14713, "lahss2aint2", "HS3_Light3"}, {14713, "lahss2aint2", "HS_plug"}, {14712, "lahss2bint2", "HS1_2Wall2"},
	{14712, "lahss2bint2", "HS1_Shade3"}, {14712, "lahss2bint2", "HS2_Artex6"}, {14712, "lahss2bint2", "HS3_wall8"},
	{14712, "lahss2bint2", "WH_carpet2"}, {14701, "lahss2int2", "HS1_Kwall"}, {14701, "lahss2int2", "HS1_Kwall2"},
	{14701, "lahss2int2", "HS1_Plug"}, {14701, "lahss2int2", "HS1_wall1"}, {14701, "lahss2int2", "HS1_wall3"},
	{14701, "lahss2int2", "HS1_wall4"}, {14701, "lahss2int2", "HS2_Artex1"}, {14701, "lahss2int2", "HS2_Artex3"},
	{14701, "lahss2int2", "HS2_Blind2"}, {14701, "lahss2int2", "HS2_Curt1"}, {14701, "lahss2int2", "HS2_Curt4"},
	{14701, "lahss2int2", "HS2_Curt5"}, {14701, "lahss2int2", "HS2_wall1"}, {14701, "lahss2int2", "HS2_wall2"},
	{14701, "lahss2int2", "WH_carpet1"}, {14701, "lahss2int2", "WH_carpet4"}, {14704, "lahss2_2int2", "HS_lamp1"},
	{14704, "lahss2_2int2", "HS_radiator1"}, {14704, "lahss2_2int2", "HS_radiator2"}, {14704, "lahss2_2int2", "HS_vase2"},
	{4556, "laland1_lan2", "gm_labuld2_a"}, {4556, "laland1_lan2", "gm_labuld4_c"}, {4556, "laland1_lan2", "sl_blokpave2"},
	{14709, "lamidint2", "mp_apt1_bathfloor1"}, {14709, "lamidint2", "mp_apt1_bathtiles"}, {14709, "lamidint2", "mp_apt1_door"},
	{14709, "lamidint2", "mp_apt1_floor"}, {14709, "lamidint2", "mp_apt1_kitchfloor"}, {14709, "lamidint2", "mp_apt1_roomwall"},
	{14709, "lamidint2", "mp_apt1_win"}, {4653, "lan2freeway", "sl_freew2road1"}, {3781, "lan2office", "glass_office1"},
	{3781, "lan2office", "glass_office2"}, {3781, "lan2office", "glass_office3"}, {3781, "lan2office", "glass_office4"},
	{3781, "lan2office", "glass_office5"}, {3781, "lan2office", "glass_office6"}, {3781, "lan2office", "glass_office7"},
	{3781, "lan2office", "glass_office8"}, {4601, "lan2_gm1", "gm_labuld1_a"}, {4601, "lan2_gm1", "gm_labuld1_b"},
	{4601, "lan2_gm1", "gm_labuld1_c"}, {4601, "lan2_gm1", "gm_labuld1_d"}, {4601, "lan2_gm1", "gm_labuld1_e"},
	{4601, "lan2_gm1", "pinkgranite"}, {4113, "lanbloka", "newall4-1"}, {4113, "lanbloka", "sl_dwntwndecor1"},
	{4113, "lanbloka", "sl_forlease1"}, {4113, "lanbloka", "sl_laoffblokedg1"}, {4113, "lanbloka", "sl_laoffblokwall1"},
	{4113, "lanbloka", "sl_laoffblokwin1"}, {4113, "lanbloka", "sl_laspiredecor1"}, {4113, "lanbloka", "sl_laspirewall1"},
	{4113, "lanbloka", "sl_laspirewin1"}, {4113, "lanbloka", "sl_laspirewin2"}, {4011, "lanblokb", "sl_cinemasign1"},
	{4011, "lanblokb", "sl_regalsgn"}, {4011, "lanblokb", "sl_rotnbrikvent"}, {4011, "lanblokb", "sl_rotnbrikwin1"},
	{4010, "lanblokb2", "bluewhitebuild1"}, {4010, "lanblokb2", "bluewhitebuildwall2"}, {4010, "lanblokb2", "bluewhitebuildwall2drt"},
	{4010, "lanblokb2", "bluewhitebuildwndbtm"}, {4010, "lanblokb2", "bluewhitewindow"}, {4010, "lanblokb2", "forleasesign"},
	{4010, "lanblokb2", "sl_brikdotdecor1"}, {4010, "lanblokb2", "sl_brikdotwin1"}, {4010, "lanblokb2", "sl_lavicdtdecor1b"},
	{4007, "lanblokc", "bonavwall1_LAn"}, {4007, "lanblokc", "skyscra1_LAn"}, {4007, "lanblokc", "skyscra2_LAn"},
	{4007, "lanblokc", "sl_laoffblok2win1"}, {4007, "lanblokc", "sl_laoffblok2win2"}, {4005, "lanblokd", "decobuild2b_LAn"},
	{4005, "lanblokd", "decobuild2c_LAn"}, {4005, "lanblokd", "decobuild2_LAn"}, {4005, "lanblokd", "deptstore1_LAn"},
	{4005, "lanblokd", "deptstore2_LAn"}, {4005, "lanblokd", "deptstore4_LAn"}, {3975, "lanbloke", "lasbevcit1"},
	{3975, "lanbloke", "lasbevcit2"}, {3975, "lanbloke", "lasbevcit3"}, {3975, "lanbloke", "lasbevcit4"},
	{3975, "lanbloke", "lasbevcit5"}, {3975, "lanbloke", "lasbevcit8"}, {3975, "lanbloke", "lasbevcit99"},
	{3975, "lanbloke", "lasunion95"}, {3975, "lanbloke", "ottos_SFE"}, {3983, "lanblokg", "Bow_dlct_plstrb_genb"},
	{3984, "lanbloki", "bookwindowshigh"}, {3984, "lanbloki", "churchwall1"}, {3984, "lanbloki", "churchwin1_LAn"},
	{3984, "lanbloki", "greytile_LA"}, {3984, "lanbloki", "nicewindowsnews"}, {3984, "lanbloki", "ws_sandstone2b"},
	{17685, "landcoast_lae2", "rockwall1_LAe2"}, {17685, "landcoast_lae2", "rockwall2_LAe2"}, {17514, "landhub", "grasspatch_64HV"},
	{17514, "landhub", "grasspave256"}, {17514, "landhub", "sidewgrass4"}, {17514, "landhub", "yardgrass2"},
	{1631, "landjump", "Aascaff128"}, {1631, "landjump", "greywallc128"}, {1631, "landjump", "jumpside1_256"},
	{1631, "landjump", "jumpside2_256"}, {1631, "landjump", "jumptop1_128"}, {1631, "landjump", "plasticdrum1_128"},
	{1631, "landjump", "skipdirt_128"}, {17634, "landlae2b", "compfence4b_LAe"}, {17634, "landlae2b", "compfence5b_LAe"},
	{17539, "landlae2c", "conc_slab_256"}, {17539, "landlae2c", "roughwall_kb_semless"}, {17513, "landlae2e", "basketballcourt1"},
	{10903, "landsfe", "GB_nastybar20"}, {9483, "landsfw", "rock1_128"}, {4100, "lanfireesc_tr", "barbwire1"},
	{4100, "lanfireesc_tr", "sl_metaledge"}, {4558, "lanlacmab_lan2", "lasbrwnhus3"}, {4558, "lanlacmab_lan2", "LASLACMA9"},
	{4558, "lanlacmab_lan2", "LASLACMA98"}, {4558, "lanlacmab_lan2", "LASLACMA99"}, {4558, "lanlacmab_lan2", "LASLACMA991"},
	{4558, "lanlacmab_lan2", "LASLACMA998"}, {4558, "lanlacmab_lan2", "sjmmetrail"}, {4558, "lanlacmab_lan2", "sl_galleryplaza1"},
	{4558, "lanlacmab_lan2", "sl_gallerywall1"}, {4558, "lanlacmab_lan2", "sl_plazatile02"}, {4558, "lanlacmab_lan2", "sl_stapldoor1"},
	{4559, "lanlacma_lan2", "LASLACMA2"}, {4559, "lanlacma_lan2", "LASLACMA5"}, {4559, "lanlacma_lan2", "LASLACMA7"},
	{4559, "lanlacma_lan2", "LASLACMA91"}, {4559, "lanlacma_lan2", "LASLACMA94"}, {4559, "lanlacma_lan2", "LASLACMA95"},
	{4559, "lanlacma_lan2", "LASLACMA97"}, {4559, "lanlacma_lan2", "LASLACMA996"}, {4559, "lanlacma_lan2", "LASLACMA997"},
	{4714, "lanlacma_tr_lan2", "sl_galleryrail1"}, {3977, "lanriver", "stormdrain1b_sl"}, {3977, "lanriver", "stormdrain1_nt"},
	{3990, "lanroad", "lakerbcol"}, {3990, "lanroad", "sl_pavebutt1"}, {5149, "lasground2_las2", "driveway4_128"},
	{5149, "lasground2_las2", "garage_roof"}, {5149, "lasground2_las2", "gragewinkb1"}, {5149, "lasground2_las2", "rooftoprd128"},
	{5113, "lasground_las2", "general01_law"}, {5113, "lasground_las2", "sjmbarber21"}, {5142, "lashops1b_las2", "lasjmslumwall"},
	{5142, "lashops1b_las2", "lasplaza2"}, {5142, "lashops1b_las2", "lasplaza3"}, {5142, "lashops1b_las2", "lasplaza5"},
	{5142, "lashops1b_las2", "lasplaza8"}, {5142, "lashops1b_las2", "lasplaza91"}, {5142, "lashops1b_las2", "lasplaza92"},
	{5142, "lashops1b_las2", "mural03_LA"}, {5142, "lashops1b_las2", "sanpedshpito"}, {5142, "lashops1b_las2", "sjmhoodaab"},
	{5142, "lashops1b_las2", "sjmhoodaac"}, {5142, "lashops1b_las2", "snpdwhit2"}, {5110, "lashops1_las2", "crenhous2"},
	{5110, "lashops1_las2", "sanpshop5z"}, {5110, "lashops1_las2", "sjmhicut3las"}, {5168, "lashops6_las2", "sw_wind12"},
	{5168, "lashops6_las2", "yellow2_128"}, {5267, "lashops91_las2", "laspowrec2"}, {5180, "lashops93_las2", "snpedshptst1"},
	{5180, "lashops93_las2", "snpedshptst2"}, {5180, "lashops93_las2", "Window1164HV"}, {14718, "lasmall1int2", "burglry_wall7"},
	{14718, "lasmall1int2", "cooker1"}, {14718, "lasmall1int2", "hob_1"}, {14718, "lasmall1int2", "kb_sink2"},
	{14718, "lasmall1int2", "la_kitch4"}, {14718, "lasmall1int2", "washmchne_1"}, {15031, "lasmallsave", "ab_tile4"},
	{5106, "lasraodnshops", "sanpedmot2"}, {5106, "lasraodnshops", "sanpedton2"}, {4807, "lasroads_las", "newall8-1"},
	{5120, "lasroads_las2", "lasunion994"}, {5120, "lasroads_las2", "snpedtest1BLND"}, {3620, "lasxrefdock", "boatcables_128"},
	{3620, "lasxrefdock", "sanpedock6"}, {3620, "lasxrefdock", "sanpedock96"}, {3620, "lasxrefdock", "sjmlawarlit"},
	{3620, "lasxrefdock", "sjmlawarlit1"}, {3620, "lasxrefdock", "ws_goldengate5b"}, {3761, "lasxrefdockbox", "shadow1shelfd"},
	{3761, "lasxrefdockbox", "sjmlawarshel"}, {3761, "lasxrefdockbox", "sjmlawarshel2"}, {3749, "law2misc_lax", "cemewall01_law"},
	{3749, "law2misc_lax", "sanwel1"}, {3749, "law2misc_lax", "sanwel4"}, {6291, "law2_roadsb", "anwfrntbev6"},
	{6291, "law2_roadsb", "nicepavegras_LA"}, {6205, "lawartg", "luxorwall01_128"}, {1980, "lawest1", "fillertop01_law"},
	{1980, "lawest1", "fillertop02_law"}, {1980, "lawest1", "shoptop01_law"}, {1980, "lawest1", "sunsetmall05_law"},
	{6293, "lawland2", "asanlithus1"}, {6293, "lawland2", "asanlithus2"}, {6293, "lawland2", "asanlithus3"},
	{6293, "lawland2", "asanmonhrbwal1"}, {6293, "lawland2", "compcourtrail1"}, {6293, "lawland2", "lasjmflat1"},
	{6293, "lawland2", "lightglass"}, {5813, "lawnabv", "bargainpawn1_256"}, {5813, "lawnabv", "dwntwnvgn1_128]"},
	{5813, "lawnabv", "nudexxxsign1_256"}, {5813, "lawnabv", "vgnwstshop1_256"}, {5813, "lawnabv", "vgnwstshop4_256"},
	{5813, "lawnabv", "vgnwstshoptop_256"}, {5813, "lawnabv", "ws_corr_wall1"}, {3684, "lawnapartxref", "genroof03_128"},
	{3684, "lawnapartxref", "vgnbalcony1_256"}, {3684, "lawnapartxref", "vnghse4_256"}, {3684, "lawnapartxref", "vnghse5_256"},
	{5728, "lawnbit", "frostedglass256128"}, {5857, "lawnbuy", "ws_starballs"}, {5713, "lawnest2", "concrete_64HV"},
	{5713, "lawnest2", "grave02_law"}, {5713, "lawnest2", "grave03_law"}, {5713, "lawnest2", "grave04_law"},
	{5713, "lawnest2", "grave05_law"}, {5810, "lawnstripm", "papercuts"}, {5810, "lawnstripm", "savsig1"},
	{5810, "lawnstripm", "savsig4"}, {5810, "lawnstripm", "sodom_law"}, {3676, "lawnxref", "lasthoose1"},
	{3676, "lawnxref", "lasthoose1blue"}, {3676, "lawnxref", "lasthoose2"}, {3676, "lawnxref", "lasthoose3"},
	{3676, "lawnxref", "lasthoose4"}, {3676, "lawnxref", "lasthoose4blue"}, {3676, "lawnxref", "lasthoose5"},
	{3676, "lawnxref", "lasthoose6"}, {6038, "lawwhitebuilds", "buzzer_law"}, {6038, "lawwhitebuilds", "gasstopwall1_256"},
	{6038, "lawwhitebuilds", "GB_blend01"}, {6038, "lawwhitebuilds", "musk3"}, {6038, "lawwhitebuilds", "planterend_law"},
	{6038, "lawwhitebuilds", "planterside_law"}, {6038, "lawwhitebuilds", "plantertop_law"},
	{6038, "lawwhitebuilds", "venwin03_lawlit"}, {6038, "lawwhitebuilds", "wilsa_01b_lalit"}, {6038, "lawwhitebuilds", "wilsc_01_la"},
	{6064, "law_beach1", "avenpol4"}, {6064, "law_beach1", "beachwalk_law"}, {6064, "law_beach1", "musk1"},
	{6064, "law_beach1", "musk2"}, {6064, "law_beach1", "musk4"}, {6064, "law_beach1", "musk5"},
	{6049, "law_beach2", "beachut1back256"}, {6049, "law_beach2", "blueshade3_64"}, {6049, "law_beach2", "glasses2_law"},
	{6049, "law_beach2", "greenshade_64"}, {6049, "law_beach2", "law_gazcoast3"}, {6049, "law_beach2", "law_gazcoast4"},
	{6049, "law_beach2", "lombard_build2_3"}, {6049, "law_beach2", "Lombard_door1"}, {6049, "law_beach2", "luxorwall02_128"},
	{6040, "law_cnrtplaz", "creamshop1_LAe"}, {6040, "law_cnrtplaz", "off01bot_law"}, {6040, "law_cnrtplaz", "off01mid_law"},
	{6040, "law_cnrtplaz", "off01top_law"}, {2895, "law_coffinfl", "hot_flowers1"}, {2895, "law_coffinfl", "hot_flowers2"},
	{2898, "law_coffintu", "faketurf_law"}, {2896, "law_coffintxd", "caskdrape_law"}, {2896, "law_coffintxd", "caskhandle_law"},
	{2896, "law_coffintxd", "caskside2_law"}, {2896, "law_coffintxd", "casktop_law"}, {2896, "law_coffintxd", "metleg_32_law"},
	{6052, "law_doontoon", "gz_lawbuilda_1"}, {6052, "law_doontoon", "gz_lawbuilda_2"}, {6052, "law_doontoon", "gz_lawbuilda_6"},
	{6052, "law_doontoon", "gz_lawbuilda_7"}, {6052, "law_doontoon", "sfe_nicearch2"}, {6052, "law_doontoon", "sfe_nicearch3"},
	{6052, "law_doontoon", "sf_windos_10b"}, {6052, "law_doontoon", "sf_window_mod1"}, {6052, "law_doontoon", "stepshoptop_law"},
	{3586, "la_props1", "shutters2"}, {14802, "lee_bdupsflat", "Bdup_Bed"}, {14802, "lee_bdupsflat", "Bdup_cabinet"},
	{14802, "lee_bdupsflat", "Bdup_Clock"}, {14802, "lee_bdupsflat", "Bdup_Cooker"}, {14802, "lee_bdupsflat", "Bdup_door"},
	{14802, "lee_bdupsflat", "Bdup_Fridge"}, {14802, "lee_bdupsflat", "Bdup_GhettoB"}, {14802, "lee_bdupsflat", "Bdup_KitchDoor"},
	{14802, "lee_bdupsflat", "Bdup_KitchSink"}, {14802, "lee_bdupsflat", "Bdup_lamp"}, {14802, "lee_bdupsflat", "Bdup_Light"},
	{14802, "lee_bdupsflat", "Bdup_NetCurtains"}, {14802, "lee_bdupsflat", "Bdup_news"}, {14802, "lee_bdupsflat", "Bdup_phone"},
	{14802, "lee_bdupsflat", "Bdup_Pillow"}, {14802, "lee_bdupsflat", "Bdup_Pizza"}, {14802, "lee_bdupsflat", "Bdup_plate"},
	{14802, "lee_bdupsflat", "Bdup_Poster"}, {14802, "lee_bdupsflat", "Bdup_punters"}, {14802, "lee_bdupsflat", "Bdup_Rug"},
	{14802, "lee_bdupsflat", "Bdup_Sofa"}, {14802, "lee_bdupsflat", "Bdup_table"}, {14802, "lee_bdupsflat", "Bdup_TV"},
	{14802, "lee_bdupsflat", "Bdup_VCR"}, {14802, "lee_bdupsflat", "Bdup_Wine"}, {14802, "lee_bdupsflat", "CJ_LID"},
	{14802, "lee_bdupsflat", "mp_Gen_Bin_Bag"}, {14802, "lee_bdupsflat", "mp_sprunk2dirty"}, {14802, "lee_bdupsflat", "USAflag"},
	{14801, "lee_bdupsmain", "ahomcarpet"}, {14801, "lee_bdupsmain", "ahomcarpet2"}, {14801, "lee_bdupsmain", "Bdup_Blinds"},
	{14801, "lee_bdupsmain", "Bdup_graf1"}, {14801, "lee_bdupsmain", "Bdup_graf2"}, {14801, "lee_bdupsmain", "Bdup_graf3"},
	{14801, "lee_bdupsmain", "Bdup_graf4"}, {14801, "lee_bdupsmain", "Bdup_graf5"}, {14801, "lee_bdupsmain", "Bdup_KitchFloor"},
	{14801, "lee_bdupsmain", "lasjmslumwin1"}, {14801, "lee_bdupsmain", "subindwall2"}, {2776, "lee_chair1", "Strip_Chair"},
	{2776, "lee_chair1", "strip_metal"}, {3961, "lee_kitch", "ChipPan"}, {3961, "lee_kitch", "ChoppingBoard"},
	{3961, "lee_kitch", "Cooker"}, {3961, "lee_kitch", "Cooker_Dial"}, {3961, "lee_kitch", "Freezer"}, {3961, "lee_kitch", "Grater"},
	{3961, "lee_kitch", "KitchenUnits"}, {3961, "lee_kitch", "Knive1"}, {3961, "lee_kitch", "metal1"}, {3961, "lee_kitch", "metal2"},
	{3961, "lee_kitch", "metal5"}, {3961, "lee_kitch", "metal6"}, {3961, "lee_kitch", "metal7"}, {3961, "lee_kitch", "Microwave"},
	{3961, "lee_kitch", "Oil"}, {3961, "lee_kitch", "Oil2"}, {3961, "lee_kitch", "Pepper"}, {3961, "lee_kitch", "Pot1"},
	{3961, "lee_kitch", "Pot3"}, {3961, "lee_kitch", "rack"}, {3961, "lee_kitch", "Roast"}, {3961, "lee_kitch", "SinkL"},
	{3961, "lee_kitch", "Spatula"}, {3961, "lee_kitch", "Spices"}, {3961, "lee_kitch", "Steak"}, {14808, "lee_strip2", "HS3_wall1"},
	{14808, "lee_strip2", "Strip_Carpet"}, {14808, "lee_strip2", "strip_carpet2"}, {14808, "lee_strip2", "Strip_Ceiling"},
	{14808, "lee_strip2", "Strip_Chand"}, {14808, "lee_strip2", "Strip_curtain"}, {14808, "lee_strip2", "Strip_Dresser"},
	{14808, "lee_strip2", "Strip_Gold"}, {14808, "lee_strip2", "strip_lights"}, {14808, "lee_strip2", "Strip_neon1"},
	{14808, "lee_strip2", "Strip_neon2"}, {14808, "lee_strip2", "strip_neon_Curtain"}, {14808, "lee_strip2", "strip_neon_Flat"},
	{14808, "lee_strip2", "strip_table"}, {14808, "lee_strip2", "Strip_Throne"}, {14808, "lee_strip2", "strip_wall"},
	{14808, "lee_strip2", "Strip_wood"}, {14808, "lee_strip2", "WH_Hbed"}, {14808, "lee_strip2", "WH_Hbo1"},
	{14811, "lee_strip2_1", "BeerGlass"}, {14811, "lee_strip2_1", "BeerGlass2"}, {14811, "lee_strip2_1", "BeerTap"},
	{14811, "lee_strip2_1", "CJ_NEON_HEART"}, {14811, "lee_strip2_1", "Liquer"}, {14811, "lee_strip2_1", "till1"},
	{14811, "lee_strip2_1", "VodkaBottle"}, {14811, "lee_strip2_1", "Winebottle2"}, {14811, "lee_strip2_1", "WineGlass2"},
	{14832, "lee_stripclub", "cl_floornew_256"}, {14832, "lee_stripclub", "mirror_ref1"}, {14832, "lee_stripclub", "Strip_bar_wall1"},
	{14832, "lee_stripclub", "Strip_ceiling"}, {14832, "lee_stripclub", "Strip_ladyDoor"}, {14832, "lee_stripclub", "Strip_neon3"},
	{14832, "lee_stripclub", "Strip_neon4"}, {14832, "lee_stripclub", "Strip_plant"}, {14832, "lee_stripclub", "Strip_plantBark"},
	{14832, "lee_stripclub", "Strip_plantPot"}, {14832, "lee_stripclub", "Strip_podium"}, {14832, "lee_stripclub", "Strip_podium2"},
	{14832, "lee_stripclub", "Strip_sofa"}, {14832, "lee_stripclub", "Strip_sofa2"}, {14832, "lee_stripclub", "Strip_wood_floor"},
	{14829, "lee_stripclub1", "Strip_light"}, {14839, "lee_strippriv", "Strip_Ashtray"}, {14839, "lee_strippriv", "Strip_DrinkCab"},
	{14839, "lee_strippriv", "Strip_Fan"}, {14839, "lee_strippriv", "Strip_Private"}, {14839, "lee_strippriv", "Strip_Sign12"},
	{14839, "lee_strippriv", "WH_Chang"}, {14839, "lee_strippriv", "WH_Chang1"}, {14839, "lee_strippriv", "WH_Cpik"},
	{14839, "lee_strippriv", "WH_Curtains"}, {14839, "lee_strippriv", "WH_fan"}, {14839, "lee_strippriv", "WH_Sofa"},
	{14812, "lee_studhall", "carpet"}, {14812, "lee_studhall", "GoldDisk1"}, {14812, "lee_studhall", "GoldDisk2"},
	{14812, "lee_studhall", "GoldDisk3"}, {14812, "lee_studhall", "GoldDisk4"}, {14812, "lee_studhall", "GoldDisk5"},
	{14812, "lee_studhall", "GoldDisk6"}, {14812, "lee_studhall", "Papercup"}, {14812, "lee_studhall", "WaterCooler"},
	{14812, "lee_studhall", "WaterCooler2"}, {2723, "lee_txd", "Strip_chair"}, {2723, "lee_txd", "Strip_lamp"},
	{2723, "lee_txd", "Strip_table_base"}, {2723, "lee_txd", "Strip_table_top"}, {3904, "libertyfar", "buildtall1"},
	{3904, "libertyfar", "china6a"}, {3904, "libertyfar", "china6d"}, {3904, "libertyfar", "Chinabuildnew1a"},
	{3904, "libertyfar", "Chinabuildnew1b"}, {3904, "libertyfar", "Chinabuildnew1c"}, {3904, "libertyfar", "Chinabuilds06a"},
	{3904, "libertyfar", "Chinabuilds06b"}, {3904, "libertyfar", "Chinabuilds06c"}, {3904, "libertyfar", "chinatwnfmrkt"},
	{3904, "libertyfar", "chinatwnfmrktb"}, {3904, "libertyfar", "chnaquadhouse1"}, {3904, "libertyfar", "chnaquadhouse2"},
	{3904, "libertyfar", "entlev"}, {3904, "libertyfar", "fishroof"}, {3904, "libertyfar", "indhibuild10_l0r"},
	{3904, "libertyfar", "indhibuild2a"}, {3904, "libertyfar", "indhibuild2b"}, {3904, "libertyfar", "indhibuild2c"},
	{3904, "libertyfar", "indhibuild2d"}, {3904, "libertyfar", "indhibuild3_l0"}, {3904, "libertyfar", "luigiscluba"},
	{3904, "libertyfar", "mainten2a"}, {3904, "libertyfar", "mainten2b"}, {3904, "libertyfar", "mainten2c"},
	{3904, "libertyfar", "mainten2d"}, {3904, "libertyfar", "mainten364"}, {3904, "libertyfar", "mainten3a"},
	{3904, "libertyfar", "mainten3b"}, {3904, "libertyfar", "mainten3c"}, {3904, "libertyfar", "newtenmt1"},
	{3904, "libertyfar", "newtenmt2"}, {3904, "libertyfar", "newtenmt3"}, {3904, "libertyfar", "newtenmt4"},
	{3904, "libertyfar", "newtenmt6"}, {3904, "libertyfar", "newtenmt7"}, {3904, "libertyfar", "newtenx"},
	{3904, "libertyfar", "Paveblank_64hv"}, {3904, "libertyfar", "redbuild06a"}, {3904, "libertyfar", "redbuild06b"},
	{3904, "libertyfar", "redbuild12a"}, {3904, "libertyfar", "redbuild12b"}, {3904, "libertyfar", "redbuild12c"},
	{3904, "libertyfar", "redbuild12d"}, {3904, "libertyfar", "redlightbuild04b"}, {3904, "libertyfar", "redlightbuild04_dyr_l0"},
	{3904, "libertyfar", "redlightbuild06b_l0f"}, {3904, "libertyfar", "redlightbuild06e_l0b"},
	{3904, "libertyfar", "redlightbuild06e_l0f"}, {3904, "libertyfar", "redlightbuild06v_l0b"},
	{3904, "libertyfar", "redlightbuild06v_l0f"}, {3904, "libertyfar", "redlightbuild08a_l0b"},
	{3904, "libertyfar", "redlightbuild08a_l0f"}, {3904, "libertyfar", "redlightbuild09f1"}, {3904, "libertyfar", "redlightbuild09f2"},
	{3904, "libertyfar", "redlightbuild10f"}, {3904, "libertyfar", "redlightbuild11_l0f"}, {3904, "libertyfar", "redlightbuild12_l0b"},
	{3904, "libertyfar", "rizzo2"}, {3904, "libertyfar", "steps"}, {3904, "libertyfar", "subplat"}, {3904, "libertyfar", "subplatyell"},
	{3904, "libertyfar", "support_water256"}, {3904, "libertyfar", "support_water64"}, {3904, "libertyfar", "tallbuild"},
	{3904, "libertyfar", "tenblock6"}, {3904, "libertyfar", "towerflat"}, {3897, "libertyhi", "blueshop128"},
	{3897, "libertyhi", "bricksoftgrey128"}, {3897, "libertyhi", "concretebuild64"}, {3897, "libertyhi", "greytendetwin256128"},
	{3897, "libertyhi", "inddoordark128"}, {3897, "libertyhi", "inddoorway128"}, {3897, "libertyhi", "indtendark64"},
	{3897, "libertyhi", "ledge4_64H"}, {3897, "libertyhi", "marcos01_128"}, {3897, "libertyhi", "newallkb1128"},
	{3897, "libertyhi", "newallktenb1128"}, {3897, "libertyhi", "newtreea128"}, {3897, "libertyhi", "Newtreeb256"},
	{3897, "libertyhi", "railhi_64V"}, {3897, "libertyhi", "railmesh_64"}, {3897, "libertyhi", "railtrack_64"},
	{3897, "libertyhi", "Road_yellowline256HV"}, {3897, "libertyhi", "wallmix64HV"}, {3905, "libertyhi2", "alleypave_64V"},
	{3905, "libertyhi2", "artgal_128"}, {3905, "libertyhi2", "bank1_64"}, {3905, "libertyhi2", "bank3_64"},
	{3905, "libertyhi2", "bankdoor_64a"}, {3905, "libertyhi2", "inddoor7"}, {3905, "libertyhi2", "indtena128"},
	{3905, "libertyhi2", "ind_tentop128"}, {3905, "libertyhi2", "ledge_uni_64H"}, {3905, "libertyhi2", "newall_harling_sless128"},
	{3905, "libertyhi2", "Pillarbrickgrey_64HV"}, {3905, "libertyhi2", "tenabrick64"}, {3905, "libertyhi2", "tenbeige128"},
	{3905, "libertyhi2", "tenbeigebrick64"}, {3902, "libertyhi3", "cafea64"}, {3902, "libertyhi3", "glass2_64"},
	{3902, "libertyhi3", "ledgetop_64HV"}, {3902, "libertyhi3", "marcos02_128"}, {3902, "libertyhi3", "metfence2_64HV"},
	{3902, "libertyhi3", "newall9-1128"}, {3902, "libertyhi3", "shopdoor3_64"}, {3902, "libertyhi3", "taxi_256128"},
	{3906, "libertyhi5", "chipboardgrating64HV"}, {3906, "libertyhi5", "concrete02_64HV"}, {3906, "libertyhi5", "dragtop_64h"},
	{3906, "libertyhi5", "grating 64HV"}, {3906, "libertyhi5", "indcleaner128"}, {3906, "libertyhi5", "inddoor3"},
	{3906, "libertyhi5", "indnailshop128"}, {3906, "libertyhi5", "indredten128"}, {3906, "libertyhi5", "indten2btm128"},
	{3906, "libertyhi5", "indten2top128"}, {3906, "libertyhi5", "indtenbtm128"}, {3906, "libertyhi5", "indtentop128"},
	{3906, "libertyhi5", "ind_italdeli128"}, {3906, "libertyhi5", "ind_italywinda128"}, {3906, "libertyhi5", "ind_photo256128"},
	{3906, "libertyhi5", "ind_store128"}, {3906, "libertyhi5", "ind_window"}, {3906, "libertyhi5", "italyawalll64"},
	{3906, "libertyhi5", "italy_cds128"}, {3906, "libertyhi5", "ledgegreen_64H"}, {3906, "libertyhi5", "ledge_detl_256128"},
	{3906, "libertyhi5", "newall9d_16c128"}, {3906, "libertyhi5", "nicewhttop256128"}, {3906, "libertyhi5", "ornatetall256128"},
	{3906, "libertyhi5", "shopgrating128H"}, {3906, "libertyhi5", "TENdblue2_128"}, {3906, "libertyhi5", "TENdbrown5_128"},
	{3906, "libertyhi5", "tenreditaly128"}, {3906, "libertyhi5", "TENterr2_128"}, {3906, "libertyhi5", "wallbrown02_64HV"},
	{3906, "libertyhi5", "walldirtynewa256128"}, {3906, "libertyhi5", "walldirtyneward256128"},
	{4726, "libhelipad_lan2", "dt_twinklylites"}, {4726, "libhelipad_lan2", "footplate_gz"},
	{4726, "libhelipad_lan2", "helipad_basepanel"}, {4726, "libhelipad_lan2", "helipad_whitelines"},
	{4726, "libhelipad_lan2", "helipad_yellowline"}, {17944, "lngblok_lae2", "downtsign14_LA"},
	{17944, "lngblok_lae2", "grnboard_law"}, {17944, "lngblok_lae2", "sw_wind22"}, {17944, "lngblok_lae2", "white64bumpy"},
	{10052, "lomall", "club_metal_sfw"}, {10052, "lomall", "helipad_leg"}, {10052, "lomall", "lomall_ext1_"},
	{10052, "lomall", "lomall_ext3_"}, {10052, "lomall", "tileornateg256"}, {10052, "lomall", "zombiegeddon"},
	{9947, "lombard", "lombard_build1_3"}, {9947, "lombard", "lombard_build3_2"}, {9947, "lombard", "lombard_build3_3"},
	{9947, "lombard", "lombard_build3_4"}, {9947, "lombard", "lombard_sfe"}, {9947, "lombard", "pier69_ground1"},
	{9947, "lombard", "windy_SF"}, {17546, "losflor2_lae2", "hydrowin1_LAe"}, {17538, "losflor4_lae2", "ventc128"},
	{17538, "losflor4_lae2", "wallbrown64HV"}, {1255, "lounger", "lounger_back"}, {1255, "lounger", "lounger_bits"},
	{8496, "lowbuild03_lvs", "vgshopwall01_128"}, {8496, "lowbuild03_lvs", "vgshopwall02_128"},
	{8496, "lowbuild03_lvs", "vgshopwall03_64"}, {8496, "lowbuild03_lvs", "vgshopwall04_64"},
	{8496, "lowbuild03_lvs", "vgshopwall06_64"}, {14780, "lring_gmint3", "clamp"}, {14780, "lring_gmint3", "crash_pad"},
	{14780, "lring_gmint3", "crash_pad_red"}, {14780, "lring_gmint3", "nuringtest"}, {14780, "lring_gmint3", "nuringtest2"},
	{14780, "lring_gmint3", "ringbase"}, {14780, "lring_gmint3", "ROPE_1"}, {8398, "luxorland", "luxorfloor01_256"},
	{8398, "luxorland", "luxorfloor02_128"}, {8397, "luxorpillar1", "luxorpillar01_128"}, {3441, "luxorpillar2", "luxorpillar02_256"},
	{8589, "lwbldstuff03", "biglips_128"}, {8589, "lwbldstuff03", "filmcase01_64"}, {8589, "lwbldstuff03", "filmstrip01_64"},
	{8589, "lwbldstuff03", "lipstick_64"}, {14841, "l_gymers", "ab_boxingFloor"}, {5458, "macpark1tr_lae", "cobbles_kb_edge_128"},
	{5458, "macpark1tr_lae", "grasslong256"}, {5458, "macpark1tr_lae", "macpath_LAe"}, {14425, "madbedrooms", "ah_wallstyle2"},
	{14389, "madpoolbit", "AH_flroortile4"}, {14623, "mafcasmain", "ab_carpGreenEdge"}, {14623, "mafcasmain", "ab_MarbleDiamond"},
	{14623, "mafcasmain", "ab_panel5"}, {14623, "mafcasmain", "ab_tileStar"}, {14623, "mafcasmain", "ab_tileStar2"},
	{14623, "mafcasmain", "casino_carp"}, {14623, "mafcasmain", "ele_flr"}, {14623, "mafcasmain", "marble_wall"},
	{14623, "mafcasmain", "marble_wall2"}, {14623, "mafcasmain", "sign_managerSuite"}, {14626, "mafcassigns1", "sign_placeYourBets"},
	{14642, "mafcasspiral", "sign_CaligulaWin"}, {14590, "mafcastopfoor", "ab_carpet01"}, {14590, "mafcastopfoor", "ab_stairwellLwr"},
	{14590, "mafcastopfoor", "cop_ceiling1"}, {14590, "mafcastopfoor", "donut_wall1"}, {3089, "mafcasx", "cof_wind1"},
	{14636, "mafcas_signs", "sign_careful"}, {14636, "mafcas_signs", "sign_caution"}, {14636, "mafcas_signs", "sign_donot"},
	{14636, "mafcas_signs", "sign_notice"}, {14621, "mafiacasinodl", "sign_bank&change"},
	{14576, "mafiacasinovault01", "ab_vaultboxes"}, {14576, "mafiacasinovault01", "ab_vaultmetal"}, {3053, "magnetx", "magnetY"},
	{5848, "mainlcawn", "24hoursign1_LAwN"}, {5848, "mainlcawn", "cashdispenser1_256"}, {5848, "mainlcawn", "downtsign16_LA"},
	{5848, "mainlcawn", "fakestone2_LA"}, {5848, "mainlcawn", "sexsign1_LAwn"}, {5848, "mainlcawn", "striplight01_128"},
	{5848, "mainlcawn", "touristbureauLAwN"}, {14572, "maint1", "ab_maintDoors"}, {14572, "maint1", "main_floor"},
	{14572, "maint1", "main_wall"}, {6048, "mall_law", "frostdoor01_law"}, {6048, "mall_law", "lascourtsc1"},
	{6048, "mall_law", "malltwr01_law"}, {6048, "mall_law", "malltwr02_law"}, {6048, "mall_law", "mallvent_LAW"},
	{6048, "mall_law", "stonemall_law"}, {6048, "mall_law", "veronamall_law"}, {6048, "mall_law", "wolf1"}, {6048, "mall_law", "wolf2"},
	{6048, "mall_law", "wolf3"}, {6048, "mall_law", "wolf4"}, {6048, "mall_law", "wolf6b"}, {10973, "mall_sfse", "mallfloor3"},
	{10973, "mall_sfse", "ws_grilleshade"}, {10973, "mall_sfse", "ws_shopfront1a"}, {10973, "mall_sfse", "ws_trainstationwin2"},
	{14702, "masmall3int2", "HS2_Curt2"}, {14702, "masmall3int2", "HS2_wall3"}, {14702, "masmall3int2", "HS3_Light"},
	{14702, "masmall3int2", "HS3_wall3"}, {14702, "masmall3int2", "HS3_wall4"}, {14702, "masmall3int2", "HS3_wall6"},
	{5787, "melrose02_lawn", "LAstripmall2"}, {5787, "melrose02_lawn", "melrblu_law"}, {5787, "melrose02_lawn", "melrgr01_law"},
	{5787, "melrose02_lawn", "melrgren2_law"}, {5787, "melrose02_lawn", "melrpurp2_law"}, {5787, "melrose02_lawn", "shopfr01_LA"},
	{5787, "melrose02_lawn", "shopfr02_LA"}, {5780, "melrose03_lawn", "hollyshop01_LAwn"}, {5780, "melrose03_lawn", "hollyshop02_LAwn"},
	{5780, "melrose03_lawn", "hollyshop03_LAwn"}, {5780, "melrose03_lawn", "hollyshop04_LAwn"},
	{5780, "melrose03_lawn", "ws_apartmentmankypeach1"}, {5730, "melrose05_lawn", "melrbr01_law"},
	{5730, "melrose05_lawn", "melrbr02_law"}, {5704, "melrose07_lawn", "decotop_law"}, {5704, "melrose07_lawn", "shopdeco01b_law"},
	{5704, "melrose07_lawn", "shopdeco01_law"}, {5704, "melrose07_lawn", "shopdeco02_law"}, {5704, "melrose07_lawn", "shopdeco03b_law"},
	{5704, "melrose07_lawn", "shopdeco03c_law"}, {5704, "melrose07_lawn", "shopdeco03_law"}, {5704, "melrose07_lawn", "shopwall01_law"},
	{5704, "melrose07_lawn", "ws_conc_step1"}, {5733, "melrose08_lawn", "base5_1"}, {5733, "melrose08_lawn", "malawn01_LAwN"},
	{5733, "melrose08_lawn", "malawn02_LAwN"}, {5733, "melrose08_lawn", "melrdoor01_law"}, {5733, "melrose08_lawn", "melroran2_law"},
	{5733, "melrose08_lawn", "melryel_law"}, {5771, "melrose11_lawn", "melrshop05_LAwN"}, {5771, "melrose11_lawn", "melrshop06_LAwN"},
	{5771, "melrose11_lawn", "melrshop07_LAwN"}, {5771, "melrose11_lawn", "melrsign04_LA"}, {5771, "melrose11_lawn", "melrsign07_LA"},
	{5771, "melrose11_lawn", "melrsign08_LA"}, {5732, "melrose12_lawn", "comptwall39"}, {5732, "melrose12_lawn", "melrshop01_LAwN"},
	{5732, "melrose12_lawn", "melrshop03_LAwN"}, {5732, "melrose12_lawn", "melrsign01_LA"}, {5732, "melrose12_lawn", "melrwall01_LAw"},
	{5773, "melrose13_lawn", "downtwin19"}, {5773, "melrose13_lawn", "downtwin22"}, {5773, "melrose13_lawn", "LAplaza1"},
	{5773, "melrose13_lawn", "recshop01_LA"}, {5773, "melrose13_lawn", "recshop02_LA"}, {5773, "melrose13_lawn", "shopfr03_LA"},
	{5731, "melrose15_lawn", "2winsmel_law"}, {5731, "melrose15_lawn", "melrshut01_law"}, {5731, "melrose15_lawn", "melrshut02_law"},
	{5731, "melrose15_lawn", "melrshut03_law"}, {5731, "melrose15_lawn", "melrsign03_LA"}, {5731, "melrose15_lawn", "melrsign05_LA"},
	{5731, "melrose15_lawn", "melryel02_law"}, {5731, "melrose15_lawn", "yoyojos_law"}, {5737, "melrose16_lawn", "frostwin01_law"},
	{5737, "melrose16_lawn", "planterbev01_law"}, {5737, "melrose16_lawn", "shopdeco06_law"},
	{5737, "melrose16_lawn", "shopface08_law"}, {5737, "melrose16_lawn", "shoptop02_law"}, {5709, "melrose17_lawn", "shopface01_law"},
	{5709, "melrose17_lawn", "shopface02bl_law"}, {5709, "melrose17_lawn", "shopface02c_law"},
	{5709, "melrose17_lawn", "shopface06_law"}, {5709, "melrose17_lawn", "shopwin02_law"}, {5709, "melrose17_lawn", "shopwin06_law"},
	{5785, "melrosetr1_lawn", "711doors1"}, {5785, "melrosetr1_lawn", "blob1_LAwN"}, {5789, "melrosetr_lawn", "melrsign06_LA"},
	{10281, "michgar", "michelle_car1"}, {10281, "michgar", "michelle_car2"}, {10281, "michgar", "michelle_car3"},
	{10281, "michgar", "toolwall2"}, {3267, "milbase", "a51_boffstuff2"}, {3267, "milbase", "a51_boffstuff4"},
	{3267, "milbase", "a51_light1"}, {3267, "milbase", "CJ_FILLING"}, {3267, "milbase", "lightblue_64"},
	{3267, "milbase", "lightred2_32"}, {3267, "milbase", "sam_camobits"}, {2985, "minigx", "mini_base"},
	{3056, "minimex", "kmb_dynamite"}, {7630, "miragecasino1", "cparkvgn1_256"}, {7630, "miragecasino1", "cparkvgn2_256"},
	{7630, "miragecasino1", "cparkvgn3_256"}, {7630, "miragecasino1", "cparkvgn4_256"}, {7630, "miragecasino1", "maxhead4"},
	{7630, "miragecasino1", "ws_carparknew5"}, {7553, "miragecasino2", "miragepillar1_256"},
	{7553, "miragecasino2", "miragepillar2_256"}, {7553, "miragecasino2", "miragesign1_256"},
	{7553, "miragecasino2", "miragesign2_256"}, {7553, "miragecasino2", "miragewall1"}, {7553, "miragecasino2", "miragewall2"},
	{7553, "miragecasino2", "miragewall3"}, {7553, "miragecasino2", "miragewall4_256"}, {7553, "miragecasino2", "miragewall5_256"},
	{7553, "miragecasino2", "miragewall6_256"}, {7553, "miragecasino2", "visagesign2_256"}, {3786, "missiles_sfs", "ws_greyfoam"},
	{3786, "missiles_sfs", "ws_packingcase1"}, {10982, "mission2apts_sfse", "ws_aptwin"}, {10982, "mission2apts_sfse", "ws_ed_shop5"},
	{10982, "mission2apts_sfse", "ws_ed_shop9b"}, {10988, "mission2_sfse", "ws_apartmentyello1"},
	{10988, "mission2_sfse", "ws_apartmentyello2"}, {10988, "mission2_sfse", "ws_apartmentyello3"},
	{10988, "mission2_sfse", "ws_buildblock1a"}, {10988, "mission2_sfse", "ws_buildblock1b"},
	{10988, "mission2_sfse", "ws_fancywallpink"}, {10988, "mission2_sfse", "ws_fancywindowpink"},
	{10988, "mission2_sfse", "ws_shopfront1b"}, {10980, "mission3z_sfse", "ws_ed_shop6"}, {10981, "mission3_sfse", "ws_buildblock2a"},
	{10981, "mission3_sfse", "ws_buildblock2b"}, {10981, "mission3_sfse", "ws_buildblock2c"},
	{10981, "mission3_sfse", "ws_classyshop1"}, {10981, "mission3_sfse", "ws_ed_shop1"}, {10977, "mission_sfse", "ws_apartmentbrown1"},
	{10977, "mission_sfse", "ws_apartmentbrown2"}, {10977, "mission_sfse", "ws_ed_shop8"}, {10977, "mission_sfse", "ws_ed_shop8_door"},
	{1262, "mitraffic", "lamppost"}, {1262, "mitraffic", "Tafficlights"}, {1952, "mixkb1", "aluminum_1"},
	{1952, "mixkb1", "chrome_tube2"}, {1952, "mixkb1", "chrome_tube3"}, {1952, "mixkb1", "deck_rim"}, {1952, "mixkb1", "mixer1"},
	{1952, "mixkb1", "mixer2"}, {2967, "mobile93a", "mobile93a"}, {2966, "mobile93b", "mobile93b"}, {9907, "monlith_sfe", "sf_column1"},
	{9907, "monlith_sfe", "sf_windos_4"}, {9907, "monlith_sfe", "sf_windos_5"}, {9907, "monlith_sfe", "sf_windos_6"},
	{9907, "monlith_sfe", "window5b"}, {1692, "moregenroofstuff", "airvent_shadowT_gz"}, {1692, "moregenroofstuff", "mast_shadow_t"},
	{1692, "moregenroofstuff", "skylight_meshed"}, {1692, "moregenroofstuff", "skylight_scum"},
	{1692, "moregenroofstuff", "solar_panel_1"}, {3436, "motel01", "vegasfence01_64"}, {3436, "motel01", "vegasmotel01_128"},
	{3436, "motel01", "vegasmotel02_128"}, {3436, "motel01", "vegasmotel03_64"}, {3436, "motel01", "vegasmoteldoor01_128"},
	{3436, "motel01", "vegasmotelwind01_128"}, {3435, "motel01sign", "vegasmotelsign01_128"},
	{3435, "motel01sign", "vegasmotelsign02_128"}, {3435, "motel01sign", "vegasmotelsign03_128"}, {5413, "motel_lae", "crakwindo1_LAe"},
	{14482, "motel_skuzwin", "motel_curt1"}, {10386, "mountainsfs", "grass4dirty"}, {10386, "mountainsfs", "ws_stonewall"},
	{14742, "mp3", "GB_rapposter02"}, {14742, "mp3", "GB_rapposter05"}, {18056, "mp_diner1", "mp_CJ_CARDBOARD128"},
	{18056, "mp_diner1", "mp_cj_sheetmetal"}, {18056, "mp_diner1", "mp_diner_swing"}, {18056, "mp_diner1", "mp_diner_wall"},
	{18058, "mp_diner2", "mp_diner_count"}, {18058, "mp_diner2", "mp_diner_counttop"}, {18058, "mp_diner2", "mp_diner_floordirt"},
	{18058, "mp_diner2", "mp_diner_seats"}, {18058, "mp_diner2", "mp_diner_slats"}, {18058, "mp_diner2", "mp_diner_table"},
	{18058, "mp_diner2", "mp_diner_tilewallALT"}, {14847, "mp_policesf", "mp_cop_carpet"}, {14847, "mp_policesf", "mp_cop_ceilingtile"},
	{14847, "mp_policesf", "mp_cop_cell"}, {14847, "mp_policesf", "mp_cop_floor"}, {14847, "mp_policesf", "mp_cop_floor1"},
	{14847, "mp_policesf", "mp_cop_lectern"}, {14847, "mp_policesf", "mp_cop_marble"}, {14847, "mp_policesf", "mp_cop_skirt"},
	{14847, "mp_policesf", "mp_cop_skirting"}, {14847, "mp_policesf", "mp_cop_tile"}, {14847, "mp_policesf", "mp_cop_vinyl"},
	{14847, "mp_policesf", "mp_cop_wallpink"}, {14847, "mp_policesf", "mp_tank_room"}, {14847, "mp_policesf", "mp_tank_roomplain"},
	{11631, "mp_ranchcut", "CJ_PAINTING20"}, {11631, "mp_ranchcut", "CJ_PAINTING22"}, {11631, "mp_ranchcut", "CJ_PAINTING6"},
	{11631, "mp_ranchcut", "Gen_Quallity_HiFi_Side"}, {11631, "mp_ranchcut", "mpCJ_Black_metal"},
	{11631, "mp_ranchcut", "mpCJ_DarkWood"}, {11631, "mp_ranchcut", "mpCJ_Deer1"}, {11631, "mp_ranchcut", "mpCJ_GALVANISEDn"},
	{11631, "mp_ranchcut", "mpCJ_HI_FI"}, {11631, "mp_ranchcut", "mpcj_speaker2"}, {11631, "mp_ranchcut", "mpCJ_SPEAKER4"},
	{11631, "mp_ranchcut", "mpcj_speaker_6"}, {11631, "mp_ranchcut", "mpCJ_WOOD_DARK"}, {11631, "mp_ranchcut", "mpkbsofa333c"},
	{11631, "mp_ranchcut", "mpman_tigr_rug"}, {11631, "mp_ranchcut", "mp_torenoshadA"}, {1726, "mrk_couches2", "kb_sofa5_256"},
	{2013, "mrk_kitstuf", "ffrriiddggee__33"}, {2013, "mrk_kitstuf", "fridge_3"}, {18217, "mtbfencecs_t", "steel256256"},
	{18217, "mtbfencecs_t", "ws_scaffoldscreen"}, {18268, "mtbtrackcs_t", "palmbark128"}, {3281, "mtb_banners", "xtreme_prolaps"},
	{13721, "mulhousclahills", "residentialdoor3_256"}, {13673, "mullho03a_lahills", "desegravelgrassroadLA"},
	{13673, "mullho03a_lahills", "gravelkb2_128"}, {13673, "mullho03a_lahills", "sw_wall02"},
	{13711, "mullho03_lahills", "shadover_law"}, {13754, "mullholl_lahills", "redslates64_law"},
	{9957, "multistory_sfe", "sfe_whitewall"}, {3121, "munchyx", "doughunt"}, {14735, "newcrak", "ab_rug"},
	{14735, "newcrak", "ab_wall2"}, {14735, "newcrak", "AH_ArchitraveM"}, {14735, "newcrak", "AH_BLINDSM"},
	{14735, "newcrak", "AH_flrwllM"}, {14735, "newcrak", "AH_skirtM"}, {14735, "newcrak", "AH_skirtscum"},
	{14735, "newcrak", "AH_stripwallcln"}, {14735, "newcrak", "carp21S"}, {14735, "newcrak", "carp23S"},
	{14735, "newcrak", "carpet-tile"}, {14735, "newcrak", "kbdirty_wall1"}, {11388, "newhubgrg1_sfse", "ws_hubbeams1"},
	{11388, "newhubgrg1_sfse", "ws_hubbeams2"}, {1245, "newramp", "craneblnk_128"}, {1285, "newstand", "newstandnew256"},
	{1285, "newstand", "newstandnew256back"}, {9223, "newstuff_sfn", "carlot1_LAn"}, {9223, "newstuff_sfn", "cm_clothing ad1"},
	{9223, "newstuff_sfn", "oldflowerbed"}, {9223, "newstuff_sfn", "sl_preswallbot01"}, {1982, "new_cabinets", "cabinet_grill"},
	{1982, "new_cabinets", "cabinet_hi1"}, {1982, "new_cabinets", "cabinet_hi1b"}, {1982, "new_cabinets", "cabinet_hi3"},
	{1982, "new_cabinets", "cabinet_hilite"}, {1982, "new_cabinets", "meat1"}, {1982, "new_cabinets", "meat2"},
	{1982, "new_cabinets", "shelf4"}, {1983, "new_cabinets2", "cereal2"}, {1983, "new_cabinets2", "cereal3"},
	{1983, "new_cabinets2", "cereal4"}, {1983, "new_cabinets2", "powder1_1"}, {1983, "new_cabinets2", "powder1_2"},
	{1983, "new_cabinets2", "shop_shelfnu2"}, {1983, "new_cabinets2", "shop_shelfnu3"}, {1983, "new_cabinets2", "shop_shelfnu4"},
	{1983, "new_cabinets2", "shop_shelfnu5"}, {1983, "new_cabinets2", "sh_tins1"}, {1983, "new_cabinets2", "sh_tins2"},
	{1981, "new_cabinets3", "butter_etc2"}, {1981, "new_cabinets3", "jarsss1"}, {1981, "new_cabinets3", "jarsss2"},
	{1981, "new_cabinets3", "sauce1"}, {1981, "new_cabinets3", "shop_shelfnu6"}, {4720, "nightlights1_lan2", "sl_dtwinlights1"},
	{4720, "nightlights1_lan2", "sl_dtwinlights3"}, {11410, "nightlights_sfse", "sfnitewindow_alfa"},
	{5661, "nightlts_lae", "sl_dtwinlights2"}, {9932, "nitelites", "monlith_win_tex"}, {9932, "nitelites", "sfnitewindows"},
	{17954, "nitelites_lae2", "nitwin01_LA"}, {4212, "nitewin_lan", "neonwin1"}, {8431, "nucarpark", "nucarpark01_128"},
	{8431, "nucarpark", "nucarpark02_128"}, {8431, "nucarpark", "nucarpark03_128"}, {8431, "nucarpark", "nucarpark04_64"},
	{8710, "nuhotel01", "nuhotel01_128"}, {8710, "nuhotel01", "nuhotel02_128"}, {8710, "nuhotel01", "nuhotel03_128"},
	{8710, "nuhotel01", "nuhotel04_128"}, {8710, "nuhotel01", "nuhotel05_64"}, {8710, "nuhotel01", "nuhotel07_128"},
	{8710, "nuhotel01", "nuhoteldoor01_128"}, {8710, "nuhotel01", "nuhoteldoor02_128"}, {8710, "nuhotel01", "nuhoteldoor03_128"},
	{10350, "oc_flats_gnd_sfs", "ws_screenedfence_big"}, {10350, "oc_flats_gnd_sfs", "ws_stucco_red_1"},
	{10350, "oc_flats_gnd_sfs", "ws_stucco_yello_1"}, {10350, "oc_flats_gnd_sfs", "ws_woodfence1"},
	{1637, "od_beachstuff", "beachtowels"}, {1637, "od_beachstuff", "beachwood"}, {1637, "od_beachstuff", "beach_hut_128"},
	{1637, "od_beachstuff", "lotion"}, {1637, "od_beachstuff", "loungertubes"}, {1637, "od_beachstuff", "lounger_matress"},
	{1637, "od_beachstuff", "mbhutdr3"}, {1637, "od_beachstuff", "mbhutdr4"}, {1637, "od_beachstuff", "mbhutgre"},
	{1637, "od_beachstuff", "mbhutsig"}, {1637, "od_beachstuff", "mbhutwin"}, {1637, "od_beachstuff", "mbhutyel"},
	{1637, "od_beachstuff", "vbnet"}, {11326, "oldgarage_sfse", "ws_corr_2_plaintiled"}, {11326, "oldgarage_sfse", "ws_fuckedwin1"},
	{11326, "oldgarage_sfse", "ws_xenon_used"}, {4850, "oldshops_las", "lasmulap7"}, {4850, "oldshops_las", "sanpedmark1"},
	{4850, "oldshops_las", "sanpedmark2"}, {4850, "oldshops_las", "sanpedmark3"}, {4850, "oldshops_las", "sanpedmark4"},
	{4850, "oldshops_las", "sanpedmark5"}, {4850, "oldshops_las", "snpedbutshp1"}, {4850, "oldshops_las", "snpedmat1"},
	{4850, "oldshops_las", "snpedmat3"}, {4850, "oldshops_las", "snpedmat4"}, {4850, "oldshops_las", "snpedmat9"},
	{16051, "oldwest", "snakefarmsign"}, {16051, "oldwest", "sw_hedstones"}, {8591, "olympic01", "nudedaily_256"},
	{8591, "olympic01", "olympic01_128"}, {8591, "olympic01", "olympic02_128"}, {8591, "olympic01", "olympic03_64"},
	{8591, "olympic01", "olympic05_64"}, {8591, "olympic01", "olympic06_64"}, {8591, "olympic01", "strippers1_256"},
	{8591, "olympic01", "vgscityhwal1"}, {2754, "otb_machine", "ab_shinyPanel"}, {2754, "otb_machine", "lift4"},
	{2754, "otb_machine", "mp_CJ_GALVANISED"}, {10249, "ottos2_sfw", "ottos_pics_sfe"}, {10249, "ottos2_sfw", "pinebranch1"},
	{3857, "ottos_glass", "carshowroom1"}, {9953, "ottos_sfw", "carshowroom2"}, {9953, "ottos_sfw", "carshowroom3"},
	{9953, "ottos_sfw", "carshowroomfloor"}, {9953, "ottos_sfw", "carshowroomrceiling"}, {13602, "ovalsurround", "dresswall1_256"},
	{10166, "p69_rocks", "sfe_rock1"}, {10166, "p69_rocks", "sfe_rock2"}, {10166, "p69_rocks", "sfe_rock3"},
	{14593, "papaerchaseoffice", "ab_blinds"}, {14593, "papaerchaseoffice", "ab_payphone1"},
	{14593, "papaerchaseoffice", "ab_SkirtingGrey"}, {14593, "papaerchaseoffice", "glassPartition"},
	{14593, "papaerchaseoffice", "sign_noCamera"}, {14593, "papaerchaseoffice", "sign_outOfOrder"},
	{14593, "papaerchaseoffice", "sign_planDept"}, {14593, "papaerchaseoffice", "sign_restroom"},
	{14593, "papaerchaseoffice", "spad_tile2_64"}, {14593, "papaerchaseoffice", "wall_stone3_256"},
	{14593, "papaerchaseoffice", "wall_stone6_256"}, {14599, "paperchasebits", "ab_blueprint1"},
	{14599, "paperchasebits", "ab_blueprint2"}, {14599, "paperchasebits", "ab_blueprint3"}, {14599, "paperchasebits", "ab_blueprint4"},
	{14599, "paperchasebits", "sign_firstaid"}, {14600, "paperchase_bits2", "ab_docbox"}, {14600, "paperchase_bits2", "ab_medbag"},
	{14600, "paperchase_bits2", "ab_medbottle"}, {14600, "paperchase_bits2", "ab_paperoll"},
	{14600, "paperchase_bits2", "ab_plasticBin"}, {3060, "paracx", "parachute_e"}, {3060, "paracx", "ripcord"},
	{3060, "paracx", "strings"}, {3026, "parapakx", "parapak"}, {5532, "paynspray_lae", "bigblue1"},
	{5532, "paynspray_lae", "bigblue2"}, {5532, "paynspray_lae", "sprysig2"}, {14537, "pdomebar", "ab_weeLite"},
	{14537, "pdomebar", "club_beer1SFw"}, {14537, "pdomebar", "club_bottles1_SFW"}, {14537, "pdomebar", "club_floor2_sfwTEST"},
	{14537, "pdomebar", "club_wood1_SFw"}, {14539, "pdomes_logo", "pdomes_jizzys"}, {14539, "pdomes_logo", "pdomes_OM"},
	{14539, "pdomes_logo", "pdomes_PLEA"}, {14539, "pdomes_logo", "pdomes_SURD"}, {14540, "pdome_extras", "ab_lipSofa"},
	{14540, "pdome_extras", "pdomes_flexLite"}, {3985, "pershingsq", "hotelfig2_LAn"}, {3985, "pershingsq", "la_brownhibuildc"},
	{3985, "pershingsq", "posh_eagle9_sfe"}, {1244, "petrol", "pumpdial"}, {2702, "pick_up", "CJ_BREAD"},
	{2702, "pick_up", "cj_burg_top"}, {2702, "pick_up", "cj_fambly"}, {2702, "pick_up", "cj_fambly2"}, {2702, "pick_up", "CJ_red_FELT"},
	{2702, "pick_up", "lwface08"}, {2702, "pick_up", "lwstrap05"}, {2266, "picture_frame", "CJ_PAINTING1"},
	{2266, "picture_frame", "CJ_PAINTING10"}, {2266, "picture_frame", "CJ_PAINTING11"}, {2266, "picture_frame", "CJ_PAINTING14"},
	{2266, "picture_frame", "CJ_PAINTING16"}, {2266, "picture_frame", "CJ_PAINTING17"}, {2266, "picture_frame", "CJ_PAINTING18"},
	{2266, "picture_frame", "CJ_PAINTING19"}, {2266, "picture_frame", "CJ_PAINTING21"}, {2266, "picture_frame", "CJ_PAINTING23"},
	{2266, "picture_frame", "CJ_PAINTING28"}, {2266, "picture_frame", "CJ_PAINTING29"}, {2266, "picture_frame", "CJ_PAINTING3"},
	{2266, "picture_frame", "CJ_PAINTING30"}, {2266, "picture_frame", "CJ_PAINTING31"}, {2266, "picture_frame", "CJ_PAINTING32"},
	{2266, "picture_frame", "CJ_PAINTING33"}, {2266, "picture_frame", "CJ_PAINTING34"}, {2266, "picture_frame", "CJ_PAINTING35"},
	{2266, "picture_frame", "CJ_PAINTING36"}, {2266, "picture_frame", "CJ_PAINTING37"}, {2266, "picture_frame", "CJ_PAINTING5"},
	{2266, "picture_frame", "CJ_PAINTING7"}, {2254, "picture_frame_clip", "CJ_PAINTING12"},
	{2254, "picture_frame_clip", "CJ_PAINTING15"}, {2254, "picture_frame_clip", "CJ_PAINTING2"},
	{2254, "picture_frame_clip", "CJ_PAINTING24"}, {2254, "picture_frame_clip", "CJ_PAINTING26"},
	{2254, "picture_frame_clip", "CJ_PAINTING27"}, {2254, "picture_frame_clip", "CJ_PAINTING4"}, {9903, "pier69", "pier69_blue1"},
	{9903, "pier69", "pier69_blue2"}, {9903, "pier69", "pier69_blue3"}, {9903, "pier69", "pier69_blue4"},
	{9903, "pier69", "pier69_blue5"}, {9903, "pier69", "pier69_blue6"}, {9903, "pier69", "pier69_blue7"},
	{9903, "pier69", "pier69_brown1"}, {9903, "pier69", "pier69_brown2"}, {9903, "pier69", "pier69_brown3"},
	{9903, "pier69", "pier69_brown4"}, {9903, "pier69", "pier69_brown5"}, {9903, "pier69", "pier69_brown6"},
	{9903, "pier69", "pier69_brown7"}, {9903, "pier69", "pier69_catwalkside"}, {9903, "pier69", "pier69_sign2"},
	{9903, "pier69", "rooftop_gz4"}, {6448, "piera_law2", "beachpiersign1_256"}, {6448, "piera_law2", "Gen_Crain_Mast"},
	{6283, "pierb_law2", "brownstar_law"}, {6283, "pierb_law2", "pierbild02_law"}, {6283, "pierb_law2", "pierbild03_law"},
	{6283, "pierb_law2", "pierbild05_law"}, {6283, "pierb_law2", "pierbild06_law"}, {6283, "pierb_law2", "pierbild07_law"},
	{6283, "pierb_law2", "pierbild08_law"}, {6283, "pierb_law2", "pierends_law"}, {6283, "pierb_law2", "pierfenc_LAw2"},
	{6283, "pierb_law2", "pierlegbot_law"}, {6283, "pierb_law2", "pierlegtop_law"}, {6283, "pierb_law2", "sancorn5"},
	{6283, "pierb_law2", "sancorn6"}, {6283, "pierb_law2", "sancorn7"}, {6283, "pierb_law2", "sanice1"},
	{6283, "pierb_law2", "sanice2"}, {6283, "pierb_law2", "sanice3"}, {6283, "pierb_law2", "sanice4"}, {6283, "pierb_law2", "sanice5"},
	{6283, "pierb_law2", "sanpiz4"}, {6283, "pierb_law2", "santall8s1"}, {6283, "pierb_law2", "sanwel5"},
	{6283, "pierb_law2", "sanwel6"}, {6283, "pierb_law2", "sanwel7"}, {6283, "pierb_law2", "wilsd_02_la"},
	{6287, "pierc_law2", "beachawning1_256"}, {6287, "pierc_law2", "beachwall1_256"}, {6287, "pierc_law2", "beachwall2_256"},
	{6287, "pierc_law2", "beachwall5_256"}, {6287, "pierc_law2", "beachwall6_256"}, {6287, "pierc_law2", "beachwall7_256"},
	{6287, "pierc_law2", "blueroof_128"}, {6287, "pierc_law2", "pierbild09_law"}, {6287, "pierc_law2", "pierwin02_law"},
	{6287, "pierc_law2", "sancorn1"}, {6287, "pierc_law2", "sancorn2"}, {6287, "pierc_law2", "sancorn3"},
	{6287, "pierc_law2", "sancorn4"}, {6287, "pierc_law2", "sanpiz3"}, {6287, "pierc_law2", "sanpiz5"},
	{6287, "pierc_law2", "shoptop05_law"}, {6287, "pierc_law2", "stormdrain3b_nt"}, {6188, "pier_law", "pierlegTEST"},
	{6188, "pier_law", "piermetalt_LAW"}, {6188, "pier_law", "pierside_LAW"}, {9949, "pier_sfe", "pierhead1_sfe"},
	{9949, "pier_sfe", "pierhead2_sfe"}, {9949, "pier_sfe", "pierhead3_sfe"}, {9949, "pier_sfe", "pierhead4_sfe"},
	{10621, "pinkcarpark_sfs", "vegparking2_256"}, {10621, "pinkcarpark_sfs", "ws_fmaparking"}, {8421, "pirateland", "pirates01_128"},
	{8421, "pirateland", "pirates02_128"}, {8421, "pirateland", "pirates03_64"}, {8421, "pirateland", "pirates04_64"},
	{8421, "pirateland", "pirates05_64"}, {8421, "pirateland", "tislandbanister"}, {8421, "pirateland", "tislandledge01_64"},
	{8421, "pirateland", "tislandledge03_128"}, {8421, "pirateland", "tislndrock01_128"}, {8421, "pirateland", "tislndrock02_128"},
	{8421, "pirateland", "tislndskullrock_256"}, {8423, "pirateship01", "old_carpet_dvdr"}, {8423, "pirateship01", "pirates07_128"},
	{8423, "pirateship01", "tislandfront01_128"}, {8423, "pirateship01", "tislandfront02_128"},
	{8423, "pirateship01", "tislandfront03_128"}, {8423, "pirateship01", "tislandshpback_256"},
	{8423, "pirateship01", "tislandwall01_128"}, {8423, "pirateship01", "tislandwall02_128"},
	{8423, "pirateship01", "tislandwall04_64"}, {8423, "pirateship01", "tislandwall05_128"},
	{8423, "pirateship01", "tislandwdbox01_128"}, {8423, "pirateship01", "tislandwdbox02_64"}, {8423, "pirateship01", "tislndshpmast"},
	{2635, "pizza_furn", "CJ_TART_TABLE"}, {2218, "pizza_tray", "pboxside"}, {2218, "pizza_tray", "pfries"},
	{2218, "pizza_tray", "pizzaslice"}, {2218, "pizza_tray", "tray_cb"}, {2247, "plants_galss", "CJ_willow"},
	{2246, "plants_office", "cooker3"}, {4562, "plaza1_lan2", "sl_blokpave1"}, {14533, "pleas_dome", "ab_carpethexi"},
	{14533, "pleas_dome", "ab_clubloungewall"}, {14533, "pleas_dome", "ab_litepetal"}, {14533, "pleas_dome", "ab_metaldisc"},
	{14533, "pleas_dome", "ab_velvor"}, {14533, "pleas_dome", "club_floor1_sfwTEST"}, {14533, "pleas_dome", "club_metal2_sfw"},
	{14533, "pleas_dome", "club_wall4_SFw"}, {14533, "pleas_dome", "club_zeb_SFW1"}, {14533, "pleas_dome", "club_zeb_SFW2"},
	{14533, "pleas_dome", "mallfence_law"}, {14533, "pleas_dome", "ornate_ceiling1_sfw"}, {14533, "pleas_dome", "pdome_arch1"},
	{14533, "pleas_dome", "pdome_wall1"}, {14533, "pleas_dome", "scaffold_stuff"}, {14533, "pleas_dome", "sfw_clublight1"},
	{14533, "pleas_dome", "timber_gz"}, {14533, "pleas_dome", "toaty_lite_SFW"}, {14533, "pleas_dome", "ws_corner_iron1"},
	{9900, "pointysfe", "pointy_sfe"}, {9900, "pointysfe", "transam_2_sfe"}, {9900, "pointysfe", "ws_trans_block"},
	{2602, "police_props_un", "GUS"}, {2965, "pool_blsx", "poolballsa1"}, {2965, "pool_blsx", "poolballsa2"},
	{2965, "pool_blsx", "poolballscue"}, {1684, "portakabin", "ws_portacabin1"}, {1684, "portakabin", "ws_portacabin2"},
	{1684, "portakabin", "ws_portacabin3"}, {9918, "posh2_sfe", "poshsfe1"}, {9918, "posh2_sfe", "poshsfe2"},
	{9918, "posh2_sfe", "poshsfe3"}, {10049, "posh_sfe", "posh_eagle5_sfe"}, {10049, "posh_sfe", "posh_eagle6_sfe"},
	{10049, "posh_sfe", "posh_eagle7_sfe"}, {10049, "posh_sfe", "ws_alley2_128_plain"}, {2984, "potax", "chemtoilet1256"},
	{2984, "potax", "chemtoilet2256"}, {9259, "presidio01_sfn", "sl_clayroof01"}, {9259, "presidio01_sfn", "sl_presdoor01"},
	{9259, "presidio01_sfn", "sl_presdoor02"}, {9259, "presidio01_sfn", "sl_presroofedg01"}, {9259, "presidio01_sfn", "sl_preswin04"},
	{9259, "presidio01_sfn", "sl_preswin06"}, {9259, "presidio01_sfn", "sl_preswindbl01"}, {9259, "presidio01_sfn", "sl_whitewood01"},
	{9259, "presidio01_sfn", "stainwin_law"}, {9259, "presidio01_sfn", "yelloconc_LA"}, {3262, "privatesign", "sign_tresspass1"},
	{3262, "privatesign", "sign_tresspass2"}, {3262, "privatesign", "sw_hairpinL"}, {3262, "privatesign", "sw_hairpinR"},
	{2670, "proc_rub", "CJ_CERT_1"}, {2670, "proc_rub", "CJ_CERT_2"}, {2670, "proc_rub", "CJ_CERT_3"}, {2670, "proc_rub", "CJ_CERT_4"},
	{2670, "proc_rub", "CJ_FAG_BUT"}, {2670, "proc_rub", "sprunk2dirty"}, {3661, "projects_la", "ws_boxhouse_wins2"},
	{1664, "propbarstuff", "kb_vodka_64_256"}, {1985, "punchbag2", "punchbag2"}, {8395, "pyramid", "luxorwindow01_128"},
	{3049, "qrydrx", "Was_scrpyd_barbwire"}, {3049, "qrydrx", "ws_corr_1_red"}, {3214, "quarry", "lasjmflood3"},
	{3214, "quarry", "Was_swr_trolleycage"}, {10628, "queens1_sfs", "ws_cinemasign1"}, {10628, "queens1_sfs", "ws_fancyshop1"},
	{10628, "queens1_sfs", "ws_fancyshop1b"}, {10628, "queens1_sfs", "ws_fancyshop1c"}, {10628, "queens1_sfs", "ws_fancyshop1e"},
	{10628, "queens1_sfs", "ws_lights_in_marble"}, {10628, "queens1_sfs", "ws_queens1"},
	{10626, "queens2_sfs", "ws_apartmentmankyblue2"}, {10626, "queens2_sfs", "ws_apartmentmankyblue3"},
	{10626, "queens2_sfs", "ws_apartmentmankygreen3"}, {10626, "queens2_sfs", "ws_apartmentmankypeach2"},
	{10626, "queens2_sfs", "ws_apartmentmankypeach3"}, {10626, "queens2_sfs", "ws_awning_plum"},
	{10626, "queens2_sfs", "WS_barberspole"}, {10626, "queens2_sfs", "ws_beenflick1"}, {10626, "queens2_sfs", "ws_beenflick2"},
	{10626, "queens2_sfs", "ws_dirty_awning2b"}, {10626, "queens2_sfs", "WS_ED_shop3b"}, {10626, "queens2_sfs", "WS_ED_shop3c"},
	{10626, "queens2_sfs", "ws_gazeglasses"}, {10626, "queens2_sfs", "ws_lesbeans"}, {10626, "queens2_sfs", "ws_newvicapt_blu"},
	{10626, "queens2_sfs", "ws_newvicapt_blu2"}, {10626, "queens2_sfs", "ws_newvicapt_blu3"},
	{10626, "queens2_sfs", "ws_newvicapt_pnk"}, {10626, "queens2_sfs", "ws_newvicapt_pnk_2"},
	{10626, "queens2_sfs", "ws_newvicapt_pnk_3"}, {10626, "queens2_sfs", "ws_plainshop"}, {10631, "queensammo_sfs", "ammu_boots"},
	{10631, "queensammo_sfs", "ammu_camo1"}, {10631, "queensammo_sfs", "CJ_SUB_DOORS"}, {10631, "queensammo_sfs", "ws_ammu-posh"},
	{11252, "railbridge_sfse", "ws_goldengate5bnoalpha"}, {5394, "railtracklae", "trainground2"},
	{17283, "railwaycuntw", "grasstype10_rail"}, {4860, "railway_las", "lasjmroof"}, {4860, "railway_las", "lasunion2"},
	{4860, "railway_las", "lasunion5"}, {4860, "railway_las", "lasunion7"}, {4860, "railway_las", "railplatformwall"},
	{4860, "railway_las", "sjmscorclawn3"}, {1660, "ramp2", "chemsign2_64"}, {18036, "range_main", "gun_galss1"},
	{18036, "range_main", "gun_xtra6"}, {18036, "range_main", "range_mainlightingmap"}, {1636, "rcbomb", "rcbomb"},
	{3947, "rczero_track", "grassdeep1blnd"}, {2464, "rc_shop_acc", "CJ_BIPLANE1"}, {2464, "rc_shop_acc", "CJ_RC_1"},
	{2464, "rc_shop_acc", "CJ_RC_13"}, {2464, "rc_shop_acc", "CJ_RC_2"}, {2464, "rc_shop_acc", "CJ_RC_3"},
	{2464, "rc_shop_acc", "CJ_RC_4"}, {2464, "rc_shop_acc", "CJ_RC_5"}, {2464, "rc_shop_acc", "CJ_RC_6"},
	{2464, "rc_shop_acc", "CJ_RC_7"}, {2464, "rc_shop_acc", "CJ_TRAIN_SET"}, {2464, "rc_shop_acc", "CJ_WING"},
	{2362, "rc_shop_figure", "CJ_RC_10"}, {2362, "rc_shop_figure", "CJ_RC_11"}, {2362, "rc_shop_figure", "CJ_RC_12"},
	{2362, "rc_shop_figure", "CJ_RC_9"}, {2487, "rc_shop_hanger", "CJ_kite"}, {2487, "rc_shop_hanger", "CJ_kite2"},
	{2487, "rc_shop_hanger", "CJ_kite3"}, {2487, "rc_shop_hanger", "CJ_kite4"}, {2484, "rc_shop_toy", "CJ_SAIL_1"},
	{2484, "rc_shop_toy", "CJ_SAIL_2"}, {2471, "rc_shop_trains", "CJ_RC_14"}, {2471, "rc_shop_trains", "CJ_RC_15"},
	{2471, "rc_shop_trains", "CJ_trains"}, {1960, "record1", "record1"}, {1960, "record1", "record2"}, {1960, "record1", "record3"},
	{3255, "refinery", "des_refpipes"}, {3255, "refinery", "des_reftower1"}, {8437, "residential01", "residential01_256"},
	{8437, "residential01", "residential02_256"}, {8437, "residential01", "residential03_256"},
	{8437, "residential01", "residentialsign01_256"}, {8433, "residnce01", "residence01_256"}, {8433, "residnce01", "residence02_256"},
	{8433, "residnce01", "residence03_128"}, {8433, "residnce01", "residence04_128"}, {8433, "residnce01", "residence05_256"},
	{8433, "residnce01", "residence06_128"}, {13715, "richman02_lahills", "monobloc_256128"}, {13626, "road", "sidetrack"},
	{13626, "road", "trackroadside"}, {10294, "road2sfe", "sf_pave3"}, {10294, "road2sfe", "sf_pave4"}, {10294, "road2sfe", "sf_pave5"},
	{10820, "roadbridge_sfse", "drain"}, {1346, "roadside", "CJ_PHONEBOX1"}, {1346, "roadside", "CJ_phoneboxmiami"},
	{1346, "roadside", "CJ_PHONESEXADD"}, {13713, "roadslahills", "roadnew4blend_256"}, {13323, "roads_cunte", "paveb256"},
	{13717, "roads_lahills", "pavebsand256blueblend"}, {13717, "roads_lahills", "snpedtest1blend"},
	{6035, "roads_law", "crossing2_law"}, {5703, "roads_lawn", "sidewalk4_LAe"}, {5703, "roads_lawn", "starpaveb_law"},
	{5703, "roads_lawn", "starpave_law"}, {5703, "roads_lawn", "starpave_lawblend"}, {13676, "roads_tunnellahills", "tunwill1law2"},
	{9743, "rock_coastsfw", "cst_rocksea_sfw"}, {9743, "rock_coastsfw", "cst_rock_undersea_sfw"}, {6332, "rodeo01_law2", "arodeo1sj"},
	{6332, "rodeo01_law2", "bevhot01b_law"}, {6332, "rodeo01_law2", "bevhot01_law"}, {6332, "rodeo01_law2", "ceaserpillar01_256"},
	{6332, "rodeo01_law2", "clothes01_128"}, {6332, "rodeo01_law2", "glassentrace2"}, {6332, "rodeo01_law2", "prada_256"},
	{6332, "rodeo01_law2", "rodeowind3"}, {6332, "rodeo01_law2", "rodesign01_LA"}, {6332, "rodeo01_law2", "rodesign02_LA"},
	{6332, "rodeo01_law2", "rodwall01_LAw2"}, {6332, "rodeo01_law2", "rodwall02_LAw2"}, {6332, "rodeo01_law2", "rodwall04_LAw2"},
	{6332, "rodeo01_law2", "rodwall05_LAw2"}, {6332, "rodeo01_law2", "rodwall06_LAw2"}, {6332, "rodeo01_law2", "rodwall07_LAw2"},
	{6332, "rodeo01_law2", "rodwall08_LAw2"}, {6332, "rodeo01_law2", "rodwall09_LAw2"}, {6332, "rodeo01_law2", "rodwall10_LAw2"},
	{6332, "rodeo01_law2", "shopface05b_law"}, {6332, "rodeo01_law2", "shopface05c_law"}, {6351, "rodeo02_law2", "bevhiwin_01"},
	{6351, "rodeo02_law2", "dirtwall128"}, {6351, "rodeo02_law2", "helmutwall1_LAw"}, {6351, "rodeo02_law2", "hollywall02_law"},
	{6351, "rodeo02_law2", "oranconc01_LA"}, {6351, "rodeo02_law2", "ortilwall_LAw"}, {6351, "rodeo02_law2", "prolsign01_LA"},
	{6351, "rodeo02_law2", "rodesign03_LA"}, {6351, "rodeo02_law2", "woodboards1"}, {6341, "rodeo03_law2", "century01_LA"},
	{6341, "rodeo03_law2", "sl_hirisergrnconc"}, {6344, "rodeo04_law2", "golf_hedge1"}, {6340, "rodeo05_law2", "airportwind04"},
	{6340, "rodeo05_law2", "badmarb2_LAn"}, {6340, "rodeo05_law2", "citywall6"}, {6340, "rodeo05_law2", "gnocchiston_LA"},
	{6340, "rodeo05_law2", "rodeowin02"}, {6340, "rodeo05_law2", "siliconvalleywins1"}, {2992, "roulx", "roulette_glow"},
	{3074, "runwayx", "kb_bckdrp"}, {14744, "rybath", "AH_rywood"}, {14744, "rybath", "tiletop"}, {3694, "ryderholes", "ryder_mud"},
	{3694, "ryderholes", "ryd_holes"}, {14743, "ryhall", "AH_ryskirt"}, {14743, "ryhall", "GB_midbarand"},
	{14746, "rylounge", "AH_rykitiles"}, {14745, "rystuff", "mp_apt1_bathfloor"}, {14745, "rystuff", "mp_apt1_bathwall"},
	{14745, "rystuff", "mp_apt1_bathwall1"}, {14745, "rystuff", "mp_apt1_sofatest"}, {14745, "rystuff", "mp_CJ_bottle"},
	{14745, "rystuff", "mp_CJ_bottle2"}, {14745, "rystuff", "mp_CJ_CHROME2"}, {14745, "rystuff", "mp_CJ_FILLIMENT"},
	{14745, "rystuff", "mp_CJ_HI_FI"}, {14740, "rywins", "mp_CJ_WOODDOOR2"}, {3884, "samsite_sfxrf", "sam_camo-navy"},
	{3884, "samsite_sfxrf", "sam_camobits-navy"}, {3717, "sanclifbal1_lax", "glasfenc1_LA"}, {3717, "sanclifbal1_lax", "sanmonwin01"},
	{3717, "sanclifbal1_lax", "whiteconc01"}, {3717, "sanclifbal1_lax", "yelloconcW_LA"}, {6388, "sancliff02_law2", "oranconcwin_LA"},
	{6390, "sancliff_law2", "bluepat_LAw2"}, {6390, "sancliff_law2", "pharmacy1_1256"}, {6390, "sancliff_law2", "windblind_law"},
	{1610, "sandcastle", "whitesand_256"}, {3783, "sanpedh22_1x", "snpdhus3"}, {3588, "sanpedhse_1x", "ctdoon1_LAS"},
	{3588, "sanpedhse_1x", "lasmulap4"}, {3588, "sanpedhse_1x", "lasmulap5"}, {3588, "sanpedhse_1x", "laspedhus8"},
	{3588, "sanpedhse_1x", "laspedhus9"}, {3588, "sanpedhse_1x", "laspedhus91"}, {3588, "sanpedhse_1x", "snpedflatt2"},
	{3588, "sanpedhse_1x", "snpedflatt7"}, {6294, "santamonhus", "pierbuild10b_law"}, {6294, "santamonhus", "pierbuild11b_law"},
	{6294, "santamonhus", "pierbuild11c_law"}, {6294, "santamonhus", "pierbuild11d_law"}, {6294, "santamonhus", "pierbuild11_law"},
	{6294, "santamonhus", "pierhouse4_law"}, {6294, "santamonhus", "pierwall04_law"}, {6286, "santamonhus1", "fivewins_law"},
	{6286, "santamonhus1", "lasmulap1"}, {6286, "santamonhus1", "lasmulap2"}, {6286, "santamonhus1", "lasmulap3"},
	{6286, "santamonhus1", "pierbuild9_law"}, {6286, "santamonhus1", "pierwin08c_law"}, {6286, "santamonhus1", "pierwin09b_law"},
	{6286, "santamonhus1", "pierwin09_law"}, {6286, "santamonhus1", "pierwin9_law"}, {6281, "santamonicalaw2", "asanwall1"},
	{6280, "santamonicalaw2a", "asanmonstat1"}, {6280, "santamonicalaw2a", "sandypath_law"}, {6296, "santamopollaw2", "avenpol1"},
	{6296, "santamopollaw2", "avenpol2"}, {6296, "santamopollaw2", "avenpol3"}, {6042, "santavenice3", "concretebig3_256128"},
	{6042, "santavenice3", "psychic_law"}, {6042, "santavenice3", "venblock01"}, {6042, "santavenice3", "venblock01b"},
	{6042, "santavenice3", "venwalkway_law"}, {1595, "satdish", "generatorfront1_256"}, {1595, "satdish", "wallwhitetinge256"},
	{15054, "savesfmid", "AH_blackmar"}, {15054, "savesfmid", "AH_flroortile8"}, {15054, "savesfmid", "ah_pnwainscot"},
	{15054, "savesfmid", "AH_walltile5"}, {15054, "savesfmid", "AH_wdpanel"}, {15054, "savesfmid", "cspornmag"},
	{18365, "sawmillcs_t", "bricklayerdark_hi64HV"}, {18365, "sawmillcs_t", "dirtyframe64HVa"},
	{18365, "sawmillcs_t", "electricity_64"}, {18365, "sawmillcs_t", "inwindow3"}, {18365, "sawmillcs_t", "mp_sawmill"},
	{18365, "sawmillcs_t", "sprinklersign64"}, {3867, "scaffolding_sfx", "Gen_Scaffold_Wood"}, {10388, "scum2_sfs", "ws_carparkmanky1"},
	{10388, "scum2_sfs", "ws_carparkmanky2"}, {10388, "scum2_sfs", "ws_cobrasign_small"}, {10388, "scum2_sfs", "ws_devop_temp"},
	{18026, "scummy", "CJ_BINC_WIN"}, {10969, "scum_sfse", "ws_jaunk_billbd"}, {10969, "scum_sfse", "ws_mistys_bar"},
	{10226, "sfeship1", "sf_shipcomp"}, {10226, "sfeship1", "sf_shipcomp2"}, {10226, "sfeship1", "sf_ship_door"},
	{10226, "sfeship1", "sf_ship_generic1"}, {10226, "sfeship1", "sf_ship_generic11"}, {10226, "sfeship1", "sf_ship_generic12"},
	{10226, "sfeship1", "sf_ship_generic14"}, {10226, "sfeship1", "sf_ship_generic15"}, {10226, "sfeship1", "sf_ship_generic16"},
	{10226, "sfeship1", "sf_ship_generic18"}, {10226, "sfeship1", "sf_ship_generic19"}, {10226, "sfeship1", "sf_ship_generic20"},
	{10226, "sfeship1", "sf_ship_generic21"}, {10226, "sfeship1", "sf_ship_generic22"}, {10226, "sfeship1", "sf_ship_generic23"},
	{10226, "sfeship1", "sf_ship_generic24"}, {10226, "sfeship1", "sf_ship_generic25"}, {10226, "sfeship1", "sf_ship_generic27"},
	{10226, "sfeship1", "sf_ship_generic28"}, {10226, "sfeship1", "sf_ship_generic3"}, {10226, "sfeship1", "sf_ship_generic4"},
	{10226, "sfeship1", "sf_ship_generic5"}, {10226, "sfeship1", "sf_ship_generic8"}, {10226, "sfeship1", "sf_ship_generic9"},
	{10226, "sfeship1", "sf_ship_handrail"}, {10226, "sfeship1", "sf_ship_screen1"}, {9906, "sfe_builda", "blindZIP_law"},
	{9906, "sfe_builda", "deisel_1sfs"}, {9906, "sfe_builda", "deisel_3sfs"}, {9906, "sfe_builda", "sl_dwntwallvic1"},
	{9906, "sfe_builda", "sl_dwntwnvic1"}, {9906, "sfe_builda", "sl_dwntwnvic2"}, {9906, "sfe_builda", "sl_dwntwnvic3"},
	{9906, "sfe_builda", "sl_dwntwnvic4"}, {9906, "sfe_builda", "sl_dwntwnvic5"}, {9906, "sfe_builda", "sl_dwntwnvicconc"},
	{10029, "sfe_copchop", "helipad_base"}, {9915, "sfe_park1", "samtue_test"}, {9958, "sfe_sub", "sfe_sub_1"},
	{9958, "sfe_sub", "sfe_sub_2"}, {9958, "sfe_sub", "sfe_sub_3"}, {10044, "sfe_swank1", "sf_shop1"},
	{14760, "sfhosemed2", "AH_blucurtain"}, {14760, "sfhosemed2", "AH_Ironbal"}, {14760, "sfhosemed2", "ah_marcorn1"},
	{14760, "sfhosemed2", "ah_pnwainscot3"}, {14760, "sfhosemed2", "ah_pnwainskt"}, {14760, "sfhosemed2", "ah_poshwdflr1"},
	{14760, "sfhosemed2", "ah_RFPLSTR"}, {14760, "sfhosemed2", "AH_walltile2"}, {14760, "sfhosemed2", "ah_whtcorn"},
	{14760, "sfhosemed2", "ah_wpaper5"}, {14760, "sfhosemed2", "carp19S"}, {14760, "sfhosemed2", "walp40S"},
	{14757, "sfhsb2bits", "AH_bigcurtains1"}, {14757, "sfhsb2bits", "AH_bigcurtains2"}, {14754, "sfhsb3", "ah_flrtile1"},
	{14754, "sfhsb3", "ah_halltiles"}, {14754, "sfhsb3", "ah_plnks1"}, {14754, "sfhsb3", "ah_pnwainscotbroon"},
	{14754, "sfhsb3", "ah_skrtmorebroon"}, {14754, "sfhsb3", "ah_wpaper10"}, {14754, "sfhsb3", "ah_wpaper4"},
	{14754, "sfhsb3", "ah_wpaper6"}, {14748, "sfhsm1", "AH_bartilegreen"}, {14748, "sfhsm1", "AH_bigwoodthing"},
	{14748, "sfhsm1", "AH_orncorn"}, {14748, "sfhsm1", "ah_pnwainscot5"}, {14748, "sfhsm1", "ah_pnwainscot6"},
	{14748, "sfhsm1", "AH_windows1"}, {14748, "sfhsm1", "carpet3kb"}, {14748, "sfhsm1", "diner_wall1"}, {14750, "sfhsm2", "ston09S"},
	{14750, "sfhsm2", "wallpnice06"}, {14751, "sfhsm2bits", "AH_redcurtain"}, {14759, "sfhsmedium1", "ah_wpaper1"},
	{14759, "sfhsmedium1", "ah_wpaper3"}, {14755, "sfhss2", "ah_pnwainscot12"}, {14755, "sfhss2", "ah_rotwindow"},
	{14755, "sfhss2", "ah_utilbor4"}, {14755, "sfhss2", "mcstraps_wall2"}, {14758, "sfmansion1", "AH_cornice"},
	{14758, "sfmansion1", "AH_flroortile6"}, {14758, "sfmansion1", "ah_pnwainscot4"}, {14758, "sfmansion1", "ah_stainglass"},
	{9220, "sfn_apart02sfn", "concreteslab"}, {9220, "sfn_apart02sfn", "fencewhta256"}, {9220, "sfn_apart02sfn", "newindow10"},
	{9220, "sfn_apart02sfn", "newindow12"}, {9220, "sfn_apart02sfn", "newindow6"}, {9227, "sfn_caravansfn", "trail_side1"},
	{9227, "sfn_caravansfn", "trail_vent"}, {9227, "sfn_caravansfn", "trail_wall3"}, {9227, "sfn_caravansfn", "trail_wall4"},
	{9227, "sfn_caravansfn", "trail_win"}, {9292, "sfn_crashbar", "sfn_crashbar"}, {9241, "sfn_helipad", "genwndw01_128"},
	{9241, "sfn_helipad", "office01_law"}, {9361, "sfn_office", "law_gazwhite3"}, {9206, "sfn_sfn", "sfncn_rockgrass3"},
	{9206, "sfn_sfn", "sfncn_rockgrass4"}, {9206, "sfn_sfn", "sfn_rockhole"}, {10452, "sfsroadshotel", "ws_biffins"},
	{10452, "sfsroadshotel", "ws_biffinsback"}, {9909, "sfvictorian", "gz_sf_door12b"}, {9909, "sfvictorian", "GZ_vic7c"},
	{9909, "sfvictorian", "GZ_vic7d"}, {9909, "sfvictorian", "GZ_vic8a"}, {9909, "sfvictorian", "steepsign2_SF"},
	{9909, "sfvictorian", "steepsign_SF"}, {9482, "sfw_victemp2", "ws_chinagate"}, {9482, "sfw_victemp2", "ws_conc_block2"},
	{3801, "sfxref", "hangplant1_sf"}, {3801, "sfxref", "sfxref_aircon1"}, {3801, "sfxref", "sfxref_aircon2"},
	{3801, "sfxref", "sfxref_aircon3"}, {3801, "sfxref", "sfxref_aircon4"}, {3801, "sfxref", "sfxref_alarm1"},
	{3801, "sfxref", "sfxref_alarm2"}, {3801, "sfxref", "sfxref_ironthingt1"}, {3801, "sfxref", "sfxref_lite1a"},
	{3801, "sfxref", "sfxref_lite1b"}, {3801, "sfxref", "sfxref_lite1d"}, {3801, "sfxref", "sfxref_lite2a"},
	{3801, "sfxref", "sfxref_shadb"}, {3801, "sfxref", "windowbox_SF1"}, {3801, "sfxref", "windowbox_SF2"},
	{3448, "shamcpark", "concretewall1_256"}, {1608, "shark", "sharky"}, {9818, "ship_brijsfw", "blchr_seat2b"},
	{9818, "ship_brijsfw", "fusebox2_128"}, {9818, "ship_brijsfw", "sf_ship_generic10"}, {9818, "ship_brijsfw", "sf_ship_generic13"},
	{9818, "ship_brijsfw", "sf_ship_generic2"}, {9818, "ship_brijsfw", "sf_ship_generic29"},
	{9818, "ship_brijsfw", "ship_greenscreen1"}, {9818, "ship_brijsfw", "ship_screen1sfw"}, {8432, "shop06_lvs", "vegashops01_256"},
	{8432, "shop06_lvs", "vegashops02_128"}, {8432, "shop06_lvs", "vegashops03_128"}, {8507, "shop09", "sidewalkmarket01_128"},
	{8507, "shop09", "sidewalkmarket02_128"}, {5040, "shopliquor_las", "labombshop"}, {5040, "shopliquor_las", "las69str4"},
	{5040, "shopliquor_las", "lasjmbrsig4"}, {5040, "shopliquor_las", "lasjmliq1"}, {5040, "shopliquor_las", "lasjmliq2"},
	{5040, "shopliquor_las", "lasjmliq3"}, {5040, "shopliquor_las", "mural02_LA"}, {2366, "shopping", "cj_ziptop"},
	{6095, "shops01_law", "bankoff01_law"}, {6095, "shops01_law", "GB_canopy01b"}, {6095, "shops01_law", "GB_chatwall03b"},
	{6095, "shops01_law", "GB_shop01"}, {6095, "shops01_law", "GB_shopdoor01"}, {6095, "shops01_law", "GB_sign02"},
	{6095, "shops01_law", "GB_sign04"}, {6095, "shops01_law", "GB_venflat02"}, {6095, "shops01_law", "GB_yellow01"},
	{6095, "shops01_law", "greenshade2_64"}, {6095, "shops01_law", "hotwall1_law"}, {6095, "shops01_law", "lasmflat3"},
	{6095, "shops01_law", "topsm01drk_law"}, {6095, "shops01_law", "venflat02"}, {6060, "shops2_law", "atmflat"},
	{6060, "shops2_law", "biffoffwin_law"}, {6060, "shops2_law", "hotbasetop_law"}, {6060, "shops2_law", "hottop2_law"},
	{6060, "shops2_law", "newall8-1blue"}, {6060, "shops2_law", "shoptop08_law"}, {6060, "shops2_law", "venshade03_law"},
	{6060, "shops2_law", "ws_alley4_128_plain"}, {10925, "shopszz_sfse", "buymorejeans"}, {10925, "shopszz_sfse", "ws_newshop"},
	{10926, "shops_sfse", "ws_oldtowerbottom"}, {10926, "shops_sfse", "ws_oldtowertop"}, {10926, "shops_sfse", "ws_woodenscreen2"},
	{1493, "shop_doors", "CJ_SHOPDOOR1"}, {1842, "shop_shelf1", "formica"}, {1842, "shop_shelf1", "shelf3"},
	{1842, "shop_shelf1", "shelf5"}, {1842, "shop_shelf1", "shelf6"}, {1842, "shop_shelf1", "shelf7"}, {1842, "shop_shelf1", "shelf8"},
	{1842, "shop_shelf1", "shelf9"}, {1229, "signs", "busschedule64"}, {1229, "signs", "bus_stop64"}, {1229, "signs", "NoParking2_128"},
	{1229, "signs", "parkmeter_128"}, {1229, "signs", "phonesign_128"}, {1229, "signs", "redparkmeter"},
	{1229, "signs", "roadsign01_128"}, {10941, "silicon2_sfse", "siliconvalleywins2"}, {10941, "silicon2_sfse", "siliconvalleywins3"},
	{10941, "silicon2_sfse", "siliconvalleywins5"}, {10941, "silicon2_sfse", "ws_badplaster"},
	{10941, "silicon2_sfse", "ws_girderhole"}, {10939, "silicon_sfse", "pavementhexagon"},
	{10939, "silicon_sfse", "ws_traingravelblend"}, {10061, "simcondo_sfe", "sl_hiriserail1"},
	{10061, "simcondo_sfe", "sl_hiriserail2"}, {3576, "sjmla_las", "lasdockbar"}, {3576, "sjmla_las", "SJMLAWEPCRAT1"},
	{3576, "sjmla_las", "SJMLAWEPCRAT2"}, {2411, "skate_shop", "CJ_PRO_3"}, {3524, "skullpillar", "pirateskull02_128"},
	{3434, "skullsign", "pirates06_64"}, {3434, "skullsign", "pirates08_128"}, {3434, "skullsign", "pirates09_128"},
	{3434, "skullsign", "pirateskull01_128"}, {3434, "skullsign", "piratesword_64"}, {3434, "skullsign", "vegasstripsign1_256"},
	{3434, "skullsign", "vegasstripsign2_256"}, {3434, "skullsign", "vgsn_scrollsgn"}, {14479, "skuzzy_motelmain", "burglry_wall5"},
	{14479, "skuzzy_motelmain", "motel_mirror2"}, {14479, "skuzzy_motelmain", "mp_CJ_Laminate1"},
	{4550, "skyscr1_lan2", "ablndwall2_LAE"}, {4550, "skyscr1_lan2", "downtwin24"}, {4550, "skyscr1_lan2", "gm_labuld2_b"},
	{4550, "skyscr1_lan2", "gm_labuld3_a"}, {4550, "skyscr1_lan2", "gm_labuld3_b"}, {4550, "skyscr1_lan2", "sl_librarycolmn1"},
	{4550, "skyscr1_lan2", "sl_librarycolmn2"}, {4550, "skyscr1_lan2", "sl_librarydoor1"}, {4550, "skyscr1_lan2", "sl_librarygdoor1"},
	{4550, "skyscr1_lan2", "sl_librarywall1"}, {4550, "skyscr1_lan2", "sl_librarywin1"}, {4550, "skyscr1_lan2", "sl_librarywin2"},
	{4550, "skyscr1_lan2", "sl_librarywin3"}, {4550, "skyscr1_lan2", "sl_skyscprbtm1"}, {4550, "skyscr1_lan2", "sl_skyscprwall1"},
	{4550, "skyscr1_lan2", "sl_skyscrpr02"}, {4550, "skyscr1_lan2", "sl_skyscrpr02wall1"}, {4550, "skyscr1_lan2", "sl_skyscrpr03"},
	{4568, "skyscrap2_lan2", "sl_marblewall2"}, {4586, "skyscrap3_lan2", "sl_dthotelwin1"}, {4586, "skyscrap3_lan2", "sl_skyscrpr05"},
	{4586, "skyscrap3_lan2", "sl_skyscrpr05b"}, {4586, "skyscrap3_lan2", "sl_skyscrpr05wall1"},
	{5740, "skyscrapelawn", "glasswindow3_256"}, {10948, "skyscrapper_sfs", "ws_skywins4"},
	{10938, "skyscrap_sfse", "ws_rollerdoor_alu_noentry"}, {10938, "skyscrap_sfse", "ws_skyscraperwin1"},
	{10053, "slapart01sfe", "sl_brwnaprtwall1"}, {10053, "slapart01sfe", "sl_brwnaprtwin1"}, {10053, "slapart01sfe", "sl_brwnaprtwin2"},
	{10053, "slapart01sfe", "sl_brwnaprtwin3"}, {10053, "slapart01sfe", "sl_grngarage1"}, {10053, "slapart01sfe", "sl_hirise2win1"},
	{10053, "slapart01sfe", "sl_hirise2_conc"}, {10053, "slapart01sfe", "sl_hirisegrn1"}, {10053, "slapart01sfe", "sl_hirisepnk1"},
	{10053, "slapart01sfe", "sl_hiriseredconc"}, {10053, "slapart01sfe", "sl_hirisewhite1"}, {9908, "smallertxd", "bigpark_sfe"},
	{9908, "smallertxd", "hotel_bit1"}, {9908, "smallertxd", "hotel_win1"}, {9908, "smallertxd", "pizzabot_64"},
	{9908, "smallertxd", "sfe_bigbuild4"}, {9908, "smallertxd", "sf_backaley4"}, {9908, "smallertxd", "sf_downtown_1097b"},
	{9908, "smallertxd", "sf_shop3"}, {9908, "smallertxd", "sf_windos_15c"}, {9908, "smallertxd", "wash_grnd_mess1_128"},
	{14756, "smallsfhs", "AH_flroortiledirt1"}, {14756, "smallsfhs", "ah_whitiles"}, {3587, "snpedhusxref", "lasjmscum2a"},
	{3587, "snpedhusxref", "lasjmslumgrnd"}, {3587, "snpedhusxref", "sanpednhusd1"}, {3587, "snpedhusxref", "sanpednhusd4"},
	{3587, "snpedhusxref", "sjmlababit"}, {3587, "snpedhusxref", "sjmlawood"}, {3587, "snpedhusxref", "sjmlawood2"},
	{3587, "snpedhusxref", "vgsclubwall08_128"}, {8396, "sphinx01", "luxorceiling01_128"}, {8396, "sphinx01", "luxorceiling02_128"},
	{8396, "sphinx01", "luxorledge02_128"}, {8396, "sphinx01", "luxormural01_256"}, {8396, "sphinx01", "sphinxbody01_128"},
	{8396, "sphinx01", "sphinxface01_256"}, {2689, "sport_cloth", "BB_TOPS"}, {2689, "sport_cloth", "oran12"},
	{2689, "sport_cloth", "rockstarhood"}, {12847, "sprunkworks", "bigsprunkcan"}, {12847, "sprunkworks", "bigsprunkends"},
	{12847, "sprunkworks", "coe_factry1"}, {11095, "stadbridge_sfs", "ws_footbridge"}, {17511, "stadium_lae2", "compmallsign1"},
	{17511, "stadium_lae2", "formumsgn_lae2"}, {17511, "stadium_lae2", "forum1"}, {17511, "stadium_lae2", "grassdeep2"},
	{17511, "stadium_lae2", "hotring1"}, {17511, "stadium_lae2", "hotring2"}, {17511, "stadium_lae2", "kickbarrier"},
	{17511, "stadium_lae2", "stadtbludoors_lae2"}, {17511, "stadium_lae2", "stadtcorrugate_lae2"},
	{17511, "stadium_lae2", "stadtdoors_lae2"}, {17511, "stadium_lae2", "stadtpaytwin_lae2"}, {17511, "stadium_lae2", "stadt_banner1"},
	{17511, "stadium_lae2", "stadt_banner2"}, {17511, "stadium_lae2", "stadt_banner3"}, {17511, "stadium_lae2", "ticketsnprice_lae2"},
	{10954, "stadium_sfse", "ws_stadiumgates"}, {13603, "stad_tag", "Was_swr_wall_blue"}, {4101, "stapl", "sl_Laexpomtl1"},
	{4101, "stapl", "sl_laexpowall1"}, {4101, "stapl", "sl_laexpowin1"}, {4101, "stapl", "sl_Laexpowin2"},
	{4101, "stapl", "sl_stapldoor2"}, {14818, "starps_ext", "kb_pathgras"}, {3900, "station", "ledge2_64H"},
	{3900, "station", "ledgetop2_64HV"}, {3900, "station", "newall2_16c128"}, {3900, "station", "rustd64"},
	{3900, "station", "stairstep01_64"}, {11352, "stationsfse_1", "sfsestationsigns"}, {5772, "stationtunnel", "market_LAwN"},
	{10932, "station_sfse", "neon"}, {4573, "stolenbuild01", "sl_dtbuild1door1"}, {4573, "stolenbuild01", "sl_dtbuild1wall1"},
	{4573, "stolenbuild01", "sl_dtbuild1win1"}, {4573, "stolenbuild01", "sl_dtbuild1win2"}, {4573, "stolenbuild01", "sl_dtbuild1win3"},
	{4573, "stolenbuild01", "sl_dtwn2edge1"}, {4573, "stolenbuild01", "sl_dtwn2wall1"}, {4573, "stolenbuild01", "sl_dtwn2win1"},
	{4572, "stolenbuild02", "sl_skyscrpr04"}, {4572, "stolenbuild02", "sl_zippendant1"}, {4570, "stolenbuild03", "girdygird"},
	{4570, "stolenbuild03", "sl_concretewin1"}, {4570, "stolenbuild03", "sl_dtbuild2edge1"},
	{4570, "stolenbuild03", "sl_dtbuild2wall1"}, {4570, "stolenbuild03", "sl_dtbuild2win1"}, {4570, "stolenbuild03", "sl_dtbuild2win2"},
	{4570, "stolenbuild03", "sl_dtbuild2win3"}, {5404, "stormdra1_lae", "lasrmd2_sjm"}, {5404, "stormdra1_lae", "lasrmd3_sjm"},
	{5404, "stormdra1_lae", "lasrmd4_sjm"}, {5105, "stormdrain_las2", "abeybrid"}, {14819, "straps_int", "speakerkb1"},
	{1294, "streetlights", "Lamphead"}, {6977, "stripshop1", "vgnstripwall1_256"}, {5735, "studio01_lawn", "studoff01_law"},
	{5735, "studio01_lawn", "studoff02_law"}, {5735, "studio01_lawn", "studoff03_law"}, {5735, "studio01_lawn", "studoff04_law"},
	{9239, "stuff2_sfn", "cm_SFN_warehousewall"}, {9239, "stuff2_sfn", "sl_preswin02"}, {9239, "stuff2_sfn", "sl_preswindbl02"},
	{10824, "subpen1_sfse", "ws_sub_pen_conc"}, {10375, "subshops_sfs", "ws_archangels_dirty"},
	{10375, "subshops_sfs", "ws_fancyshop1d"}, {10375, "subshops_sfs", "ws_fancywindaes2"},
	{10375, "subshops_sfs", "ws_rollerdoor_silver2"}, {13608, "sumoback", "dirtmix_128"}, {6349, "sunbill_law2", "SunBillB01"},
	{6349, "sunbill_law2", "SunBillB02"}, {5722, "sunrise01_lawn", "hair01_law"}, {5722, "sunrise01_lawn", "holshop_law"},
	{5722, "sunrise01_lawn", "tileshoptop1_law"}, {5722, "sunrise01_lawn", "venshade02_law"}, {5716, "sunrise02_lawn", "mann01_law"},
	{5716, "sunrise02_lawn", "mann02_law"}, {5716, "sunrise02_lawn", "mann03_law"}, {5716, "sunrise02_lawn", "Mannblok1_LAn"},
	{5716, "sunrise02_lawn", "manndoorb_law"}, {5716, "sunrise02_lawn", "manndoorc_law"}, {5716, "sunrise02_lawn", "manndoor_law"},
	{5716, "sunrise02_lawn", "manns01_LAwN"}, {5716, "sunrise02_lawn", "mannwallb_law"}, {5716, "sunrise02_lawn", "mannwallc_law"},
	{5716, "sunrise02_lawn", "mannwall_law"}, {5727, "sunrise04_lawn", "decodet1_LAwn"}, {5727, "sunrise04_lawn", "decodet2_LAwn"},
	{5727, "sunrise04_lawn", "fredwall1_LAwN"}, {5727, "sunrise04_lawn", "fredwall2_LAwN"}, {5727, "sunrise04_lawn", "fredwall3_LAwN"},
	{5727, "sunrise04_lawn", "holbuild10b_law"}, {5727, "sunrise04_lawn", "holbuild10_law"}, {5727, "sunrise04_lawn", "lasjmflood1"},
	{5727, "sunrise04_lawn", "mosaic2_LAwn"}, {5727, "sunrise04_lawn", "windowbot01_law"}, {5768, "sunrise05_lawn", "hollysign01_LAw"},
	{5768, "sunrise05_lawn", "hollywin01_LAw"}, {5768, "sunrise05_lawn", "hollywin04_LAw"}, {5725, "sunrise08_lawn", "cornice02_la"},
	{5725, "sunrise08_lawn", "holbuild06b_law"}, {5725, "sunrise08_lawn", "holbuild06dr_law"},
	{5725, "sunrise08_lawn", "holbuild06_law"}, {5725, "sunrise08_lawn", "hwbig01b_law"}, {5725, "sunrise08_lawn", "hwbig01c_law"},
	{5725, "sunrise08_lawn", "hwbig01_law"}, {5725, "sunrise08_lawn", "motpic_law"}, {5725, "sunrise08_lawn", "pillarstone_law"},
	{5725, "sunrise08_lawn", "tikboxwall_law"}, {5725, "sunrise08_lawn", "tikboxwin_law"}, {5725, "sunrise08_lawn", "topgrill01_law"},
	{5725, "sunrise08_lawn", "weeregal"}, {5769, "sunrise09_lawn", "hollydoor01_law"}, {5769, "sunrise09_lawn", "hollysign03_LAw"},
	{5769, "sunrise09_lawn", "hollysign04_LAw"}, {5769, "sunrise09_lawn", "hollywall01_law"},
	{5769, "sunrise09_lawn", "hollywin05_LAw"}, {5769, "sunrise09_lawn", "vinedet1_LAwN"}, {5769, "sunrise09_lawn", "vinesign2_LAw"},
	{5769, "sunrise09_lawn", "vinewall01_law"}, {5719, "sunrise10_lawn", "compcouwall2"}, {5719, "sunrise10_lawn", "eldritch_law"},
	{5719, "sunrise10_lawn", "eld_box2_law"}, {5719, "sunrise10_lawn", "eld_box3_law"}, {5719, "sunrise10_lawn", "eld_box_law"},
	{5719, "sunrise10_lawn", "holbuild01c_law"}, {5719, "sunrise10_lawn", "holbuild01_law"},
	{5719, "sunrise10_lawn", "holbuild02b_law"}, {5719, "sunrise10_lawn", "holbuild02c_law"},
	{5719, "sunrise10_lawn", "holbuild02d_law"}, {5719, "sunrise10_lawn", "holbuild02_law"},
	{5719, "sunrise10_lawn", "holbuild03b_law"}, {5719, "sunrise10_lawn", "holbuild03c_law"},
	{5719, "sunrise10_lawn", "holbuild03d_law"}, {5719, "sunrise10_lawn", "holbuild03_law"}, {5719, "sunrise10_lawn", "holbuild04_law"},
	{5719, "sunrise10_lawn", "pillarbase_law"}, {5719, "sunrise10_lawn", "pillartop_law"}, {5719, "sunrise10_lawn", "pillar_law"},
	{5719, "sunrise10_lawn", "starland01_law"}, {5719, "sunrise10_lawn", "startours01_law"}, {5717, "sunrise11_lawn", "ShopWall1_LAn"},
	{5717, "sunrise11_lawn", "ShopWall2_LAn"}, {5717, "sunrise11_lawn", "ShopWindo1_LAn"}, {6338, "sunset01_law2", "downtwin18"},
	{6338, "sunset01_law2", "melrorg_law"}, {6338, "sunset01_law2", "sffront24_256"}, {5775, "sunset01_lawn", "comptwindo5"},
	{5775, "sunset01_lawn", "standardet1_LA"}, {5775, "sunset01_lawn", "stanwin01_LAwN"}, {5775, "sunset01_lawn", "stanwin02_LAwN"},
	{6336, "sunset02_law2", "bank01_LAw"}, {6336, "sunset02_law2", "rodeowin01"}, {6336, "sunset02_law2", "SunBillB07"},
	{6336, "sunset02_law2", "SunBillB08"}, {6354, "sunset03_law2", "billLA01"}, {6354, "sunset03_law2", "billLA02"},
	{6354, "sunset03_law2", "coinlaundry2_256"}, {6354, "sunset03_law2", "streetsign1_256"}, {6354, "sunset03_law2", "SunBillB04"},
	{6354, "sunset03_law2", "SunBillB06"}, {6328, "sunset04_law2", "pawnsigns01_128"}, {4551, "sunset1_lan2", "Bow_road_nomark_b"},
	{4551, "sunset1_lan2", "emptyshop"}, {4551, "sunset1_lan2", "snpedpurtrm"}, {5870, "sunst18_lawn", "argwin1_LA"},
	{5870, "sunst18_lawn", "greenwall3"}, {5870, "sunst18_lawn", "laspowrec3"}, {5870, "sunst18_lawn", "laspowrec6"},
	{6357, "sunstrans_law2", "dogbill01"}, {6357, "sunstrans_law2", "SunBillB05"}, {6357, "sunstrans_law2", "SunBillB10"},
	{5998, "sunstr_lawn", "eldneoLAwN"}, {5998, "sunstr_lawn", "ganggraf02_LA"}, {5998, "sunstr_lawn", "manns02_LAwN"},
	{5998, "sunstr_lawn", "neon01_LAwN"}, {5998, "sunstr_lawn", "neon02_LAwN"}, {5998, "sunstr_lawn", "neon04_LAwN"},
	{5998, "sunstr_lawn", "neon05_LAwN"}, {5998, "sunstr_lawn", "sunneon01"}, {5998, "sunstr_lawn", "sunneon02"},
	{2404, "surf_boards", "CJ_SURFBOARDS"}, {15046, "svcunthoose", "ab_flakeywall"}, {15046, "svcunthoose", "AH_carpet5kb"},
	{15046, "svcunthoose", "csGarageTrolley01psd"}, {15046, "svcunthoose", "csheistbox01"}, {15046, "svcunthoose", "GB_fireplace02"},
	{15046, "svcunthoose", "GB_plug01"}, {15046, "svcunthoose", "GB_toilet01"}, {15046, "svcunthoose", "mplid02"},
	{15055, "svlamid", "ah_blindfana"}, {15055, "svlamid", "AH_flroortile3"}, {15042, "svsfsm", "AH_filthrug1"},
	{15042, "svsfsm", "chin_carp2"}, {15042, "svsfsm", "GB_rapposter01"}, {15042, "svsfsm", "GB_rapposter03"},
	{15042, "svsfsm", "strip_carpet"}, {15058, "svvgmid", "AH_flroortile11"}, {15058, "svvgmid", "AH_walltile4"},
	{14493, "sweetsbits", "ab_cusion1"}, {14493, "sweetsbits", "ab_cusion2"}, {14528, "sweetshads", "andydark3"},
	{14495, "sweetshall", "ab_rollerblind"}, {14495, "sweetshall", "ab_wall4"}, {14495, "sweetshall", "AH_dirtywalls8bit2"},
	{14495, "sweetshall", "ah_wpaper13"}, {14495, "sweetshall", "GB_nastybar25"}, {14495, "sweetshall", "mcstraps_ceiling"},
	{14495, "sweetshall", "mcstraps_door1"}, {14495, "sweetshall", "mp_cooker1"}, {14527, "sweetslites", "mp_diner_fan"},
	{14526, "sweetsmain", "ab_kitchunit2"}, {14526, "sweetsmain", "ab_tilekitch"}, {14526, "sweetsmain", "ah_whitpanelceil"},
	{14526, "sweetsmain", "ah_wpaper12"}, {14526, "sweetsmain", "gb_binbag01"}, {14526, "sweetsmain", "GB_Pan01"},
	{14526, "sweetsmain", "Metal3_64_hole"}, {14526, "sweetsmain", "mp_CJ_BIG_TELLY1"}, {14526, "sweetsmain", "mp_cooker2"},
	{14526, "sweetsmain", "mp_cooker3"}, {14526, "sweetsmain", "wall2"}, {14526, "sweetsmain", "wall5"},
	{14481, "sweets_bit2", "ab_curtain_shwr"}, {12962, "sw_apartflat", "sw_genstore2"}, {12962, "sw_apartflat", "sw_hardware"},
	{12962, "sw_apartflat", "sw_realtywin"}, {12962, "sw_apartflat", "wal0256hi"}, {13012, "sw_apartflat5", "des_donutwall"},
	{13012, "sw_apartflat5", "sjmfad1"}, {13012, "sw_apartflat5", "sw_lastdrop"}, {12938, "sw_apartments", "sjmrufhus3"},
	{12938, "sw_apartments", "sw_policeline"}, {13007, "sw_bankint", "bank_wall1"}, {13007, "sw_bankint", "bank_wall4"},
	{13007, "sw_bankint", "closed_temp"}, {13007, "sw_bankint", "comdore_pet256"}, {13007, "sw_bankint", "kbcornice_1_128"},
	{13007, "sw_bankint", "spad_tile5_256"}, {13007, "sw_bankint", "type_128"}, {13007, "sw_bankint", "woodfloor1"},
	{13008, "sw_block01", "sw_cafedoor1"}, {13008, "sw_block01", "ws_smoked"}, {12862, "sw_block03", "sw_barb"},
	{12862, "sw_block03", "sw_bigmike"}, {12862, "sw_block03", "sw_cashstore"}, {12862, "sw_block03", "sw_door03"},
	{12862, "sw_block03", "sw_door04"}, {12862, "sw_block03", "sw_door05"}, {12862, "sw_block03", "sw_garagedoor"},
	{12862, "sw_block03", "sw_lintl01"}, {12862, "sw_block03", "sw_roofbit1"}, {12862, "sw_block03", "sw_watson"},
	{12862, "sw_block03", "sw_wind02"}, {12862, "sw_block03", "sw_wind04"}, {12862, "sw_block03", "sw_woodwall1"},
	{12862, "sw_block03", "sw_woodwall2"}, {13014, "sw_block04", "GB_nastybar21"}, {13014, "sw_block04", "sw_wallbrick_03"},
	{13014, "sw_block04", "sw_wind06"}, {12923, "sw_block05", "sw_door08"}, {12923, "sw_block05", "sw_walltopx3"},
	{12923, "sw_block05", "sw_woodslats1"}, {12924, "sw_block06", "sw_wallbrick_07"}, {12964, "sw_block09", "GB_truckdepot18"},
	{12964, "sw_block09", "sjmbwall1"}, {12964, "sw_block09", "sw_genstore"}, {12980, "sw_block10", "sw_wind20"},
	{12980, "sw_block10", "sw_woodslats2"}, {12984, "sw_block11", "shoptopb128"}, {13011, "sw_block12", "gwfrontpan_law"},
	{12979, "sw_block9", "sw_bikeshed"}, {12979, "sw_block9", "sw_wind14"}, {12931, "sw_brewery", "sw_brewbrickwin01"},
	{12931, "sw_brewery", "sw_brewbrickwin02"}, {12960, "sw_church", "sw_confess"}, {12960, "sw_church", "sw_confessthru"},
	{12960, "sw_church", "sw_trellis"}, {12960, "sw_church", "sw_winshutr"}, {12976, "sw_diner1", "huspnk256hi"},
	{12976, "sw_diner1", "SW_dinersigns"}, {12976, "sw_diner1", "sw_oldpump"}, {12976, "sw_diner1", "sw_pump"},
	{12976, "sw_diner1", "sw_roof01"}, {12988, "sw_fact02", "sw_bioeng"}, {13065, "sw_fact02alt", "spandLoadingDoor"},
	{13065, "sw_fact02alt", "ws_oldwall1"}, {12911, "sw_farm1", "sw_farmsign01"}, {12863, "sw_genstore1", "sw_awning2"},
	{12959, "sw_library", "airportwind01"}, {12959, "sw_library", "sw_library"}, {12959, "sw_library", "sw_libwin"},
	{12983, "sw_med1", "sw_med01"}, {12937, "sw_oldshack", "hilltest2_LAS"}, {12937, "sw_oldshack", "sw_cabshut01"},
	{12937, "sw_oldshack", "sw_hubcaps"}, {12937, "sw_oldshack", "sw_pelts01"}, {12910, "sw_railbridge1", "sw_rock1b"},
	{13296, "sw_roadgas", "bballboard3_256"}, {12925, "sw_sheds", "sw_barnframe"}, {12986, "sw_well1", "Bio_64"},
	{1490, "tags2_lalae", "frontyard"}, {1490, "tags2_lalae", "grove"}, {1531, "tags_laazteca", "aztecas"},
	{1525, "tags_lakilo", "kilotray"}, {1526, "tags_larifa", "rifa"}, {1527, "tags_larollin", "rollin"},
	{1528, "tags_laseville", "seville"}, {1529, "tags_latemple", "temple"}, {1530, "tags_lavagos", "vagos"},
	{3018, "targetmx", "target4"}, {1583, "targets", "5parttarget"}, {1583, "targets", "target1"}, {1583, "targets", "target2"},
	{1583, "targets", "target3"}, {1583, "targets", "targetframe1"}, {1583, "targets", "targetframe2"},
	{3762, "tcecen4law", "lasjmwinny"}, {3762, "tcecen4law", "mulhuose01c_law"}, {5764, "telewirelawn", "donutLAwN"},
	{17517, "templae2land", "bincoslae2_128"}, {17517, "templae2land", "bincowin"}, {17517, "templae2land", "LAglaswall2"},
	{5408, "tempstuff_lae", "examball1_LAe"}, {5408, "tempstuff_lae", "examintp2_LAS"}, {5408, "tempstuff_lae", "examintp_LAS"},
	{5408, "tempstuff_lae", "examroof1_LAe"}, {5408, "tempstuff_lae", "examwall1_LAe"}, {5408, "tempstuff_lae", "sl_metalbndrust1"},
	{1885, "temp_shop", "basket_1"}, {1975, "texttest", "kb_blue"}, {1975, "texttest", "kb_red"}, {4600, "theatrelan2", "flmngo03_128"},
	{4600, "theatrelan2", "gm_labuld2_c"}, {4600, "theatrelan2", "sl_pendant1"}, {4600, "theatrelan2", "sl_whitewash1"},
	{4600, "theatrelan2", "wolf1 copy"}, {962, "ticket_sub", "CJ_TICKM"}, {8532, "tikigrass", "vgsndivebrd"},
	{8534, "tikimotel", "sa_wood01_128"}, {8534, "tikimotel", "sa_wood03_128"}, {8534, "tikimotel", "sa_wood04_128"},
	{8534, "tikimotel", "sa_wood05_128"}, {8534, "tikimotel", "tikidoor01_128"}, {8534, "tikimotel", "tikitriangle_128"},
	{8536, "tikisign", "tikireed01_128"}, {8536, "tikisign", "tikisign01_128"}, {8536, "tikisign", "tikisign02_128"},
	{9623, "toll_sfw", "toll_SFw1"}, {9623, "toll_sfw", "toll_SFw3"}, {977, "towerdoor", "Front_Door"},
	{14570, "traidaqua", "ab_aqua_anenome"}, {14570, "traidaqua", "ab_aqua_bubbles"}, {14570, "traidaqua", "ab_aqua_coral"},
	{14570, "traidaqua", "ab_aqua_kelp"}, {14570, "traidaqua", "ab_aqua_sand"}, {14570, "traidaqua", "ab_aqua_starfish"},
	{14570, "traidaqua", "ab_aqua_tubeweed"}, {14570, "traidaqua", "ab_aqua_urchin"}, {14570, "traidaqua", "ab_tv"},
	{14570, "traidaqua", "sa_wood06_128"}, {14569, "traidman", "ab_aquarium"}, {14569, "traidman", "chinese3"},
	{14569, "traidman", "chinese8"}, {14569, "traidman", "darkgrey_carpet_256"}, {14569, "traidman", "luxebrown_law"},
	{14569, "traidman", "pagodaroof4"}, {14569, "traidman", "walpaper_dragn"}, {14385, "trailerkb", "tr_floor1"},
	{14385, "trailerkb", "tr_floor2"}, {14385, "trailerkb", "tr_kit_1a"}, {14385, "trailerkb", "tr_kit_2ba"},
	{14385, "trailerkb", "tr_kit_3a"}, {14385, "trailerkb", "tr_kit_4b"}, {14385, "trailerkb", "tr_wall2"},
	{14385, "trailerkb", "tr_wall3"}, {14385, "trailerkb", "tr_wood1"}, {3167, "trailers", "sm_airstreamside"},
	{3167, "trailers", "sm_airstreamside2"}, {1373, "traincross", "railxing"}, {1373, "traincross", "rednwhite"},
	{1373, "traincross", "trainwarninglight"}, {10931, "traingen_sfse", "metpatshadow32"}, {4817, "traintrack_las", "sjmlascumpth"},
	{10752, "traintunnel1_sfse", "wallwashvc128"}, {9680, "tramstatsfw", "sf_tramcross"}, {9680, "tramstatsfw", "tramdoors_sfw"},
	{9680, "tramstatsfw", "tramstation1_sfw"}, {9680, "tramstatsfw", "tramstation2_sfw"}, {9680, "tramstatsfw", "tramstation3_sfw"},
	{1375, "tramstop", "tramstop_sf"}, {767, "tree1", "bzelka1"}, {767, "tree1", "elmtreered"}, {767, "tree1", "Elm_treegrn"},
	{767, "tree1", "Elm_treegrn2"}, {767, "tree1", "Elm_treegrn4"}, {764, "tree2", "bgleda0"}, {764, "tree2", "bpiced1"},
	{764, "tree2", "cedarbare"}, {764, "tree2", "cedarwee"}, {764, "tree2", "elmdead"}, {764, "tree2", "Locustbra"},
	{764, "tree2", "sprucbr"}, {764, "tree2", "weeelm"}, {763, "tree3", "ashbrnch"}, {763, "tree3", "bcorya0"},
	{763, "tree3", "bfraxa1"}, {763, "tree3", "bpinud2"}, {763, "tree3", "hazelbranch"}, {763, "tree3", "hazelbrnch"},
	{763, "tree3", "pinebrnch1"}, {3910, "treeshad", "railshadowdif"}, {8663, "triadcasino", "FourDragons01_256"},
	{8663, "triadcasino", "imperial01_64"}, {8663, "triadcasino", "imperial02_64"}, {8663, "triadcasino", "imperial03_128"},
	{8663, "triadcasino", "imperial04_128"}, {14562, "triadinteriorn", "vgnchinlion1_512"}, {3531, "triadprops_lvs", "casinowall1"},
	{3531, "triadprops_lvs", "chinese1"}, {3531, "triadprops_lvs", "GB_restaursmll58"}, {14560, "triad_bar", "pagoda3"},
	{14560, "triad_bar", "pagodaroof2"}, {14560, "triad_bar", "pagodaroof3"}, {14560, "triad_bar", "triad_decor1"},
	{14565, "triad_bar2", "shaker128"}, {14608, "triad_big", "buddha_gold"}, {14608, "triad_big", "silver_coins2"},
	{14564, "triad_ext", "ab_spotlite"}, {14563, "triad_main", "chinese5"}, {14563, "triad_main", "chin_carp3"},
	{14563, "triad_main", "sign_maintenance"}, {14561, "triad_neon", "ab_neon_wof"}, {14561, "triad_neon", "kbneon"},
	{14561, "triad_neon", "lightalp1a"}, {14561, "triad_neon", "sign_Restaurant"}, {14561, "triad_neon", "sign_wheelofrtne2"},
	{14605, "tricas_neon", "sign_hotel&casino"}, {14605, "tricas_neon", "sign_neondollar&star"},
	{14605, "tricas_neon", "SIGN_playAgain"}, {14605, "tricas_neon", "sign_the4dragons"}, {8577, "trnstnground", "concretenew256128"},
	{2994, "trolex", "trolley01"}, {2994, "trolex", "trolley03"}, {17072, "truckedepotlawn", "GB_truckdepot01"},
	{17072, "truckedepotlawn", "GB_truckdepot02"}, {17072, "truckedepotlawn", "GB_truckdepot03"},
	{17072, "truckedepotlawn", "GB_truckdepot04"}, {17072, "truckedepotlawn", "GB_truckdepot05"},
	{17072, "truckedepotlawn", "GB_truckdepot07"}, {17072, "truckedepotlawn", "GB_truckdepot08"}, {972, "tunnel", "corugwall1128"},
	{972, "tunnel", "panlantic_128"}, {972, "tunnel", "tunnel_128"}, {1609, "turtle", "turtlebit"}, {1609, "turtle", "turtlehead"},
	{1609, "turtle", "turtletop"}, {6490, "tvstudio_law2", "tvstud01_LAw2"}, {6490, "tvstudio_law2", "tvstud02_LAw2"},
	{6490, "tvstudio_law2", "tvstud03_LAw2"}, {10357, "tvtower_sfs", "ws_transmit_red"}, {10357, "tvtower_sfs", "ws_transmit_wht"},
	{16150, "ufo_bar", "des_fanshadow"}, {16150, "ufo_bar", "des_intufowin"}, {16150, "ufo_bar", "ufo_pics1"},
	{896, "underwater", "coral"}, {896, "underwater", "greyrockbig"}, {896, "underwater", "rocktr128"},
	{896, "underwater", "starfish64"}, {4821, "union_las", "lasunion1"}, {4821, "union_las", "lasunion96"},
	{4821, "union_las", "lasunion98"}, {4821, "union_las", "lasunion995"}, {7979, "vegasairprtland", "blackshadow3"},
	{7979, "vegasairprtland", "hangerlight01_64"}, {430, "vegasbooth", "vendor01_lvs_128"}, {430, "vegasbooth", "vendor02_lvs_128"},
	{430, "vegasbooth", "vendor04_lvs_64"}, {430, "vegasbooth", "vendor05_lvs_128"},
	{7419, "vegasbuild", "Bow_church_dirt_to_grass_side"}, {7419, "vegasbuild", "vegparking1_256"},
	{7419, "vegasbuild", "vgnwoodenwall_256"}, {6871, "vegascourtbld", "courthse1_256"}, {6871, "vegascourtbld", "courthse2_256"},
	{6871, "vegascourtbld", "courthse3_256"}, {6871, "vegascourtbld", "courthsedor2_256"}, {6871, "vegascourtbld", "courthsewin2_128"},
	{6871, "vegascourtbld", "courthse_128"}, {6871, "vegascourtbld", "marbletilewal1_256"},
	{6871, "vegascourtbld", "vegaselecbloc_256"}, {7488, "vegasdwntwn1", "dangersign256"}, {7488, "vegasdwntwn1", "dwntwnvgn2_256"},
	{7488, "vegasdwntwn1", "dwntwnvgn3_256"}, {7488, "vegasdwntwn1", "dwntwnvgn4_256"}, {7488, "vegasdwntwn1", "dwntwnvgnawn1_128"},
	{7488, "vegasdwntwn1", "gen_gym1_256"}, {7488, "vegasdwntwn1", "savsig2"}, {7488, "vegasdwntwn1", "vgncprkdoor1_256"},
	{7488, "vegasdwntwn1", "vgnstonewall1_256"}, {7488, "vegasdwntwn1", "villainnwall02_128"},
	{7488, "vegasdwntwn1", "warning-strip64"}, {3449, "vegashse2", "airconditioner02_128"}, {3449, "vegashse2", "badhousewall01_128"},
	{3449, "vegashse2", "badhousewalld01_128"}, {3449, "vegashse2", "badhousewalld02_128"}, {3449, "vegashse2", "badhousewalld04_128"},
	{3449, "vegashse2", "badhousewalld05_128"}, {3449, "vegashse2", "badhousewalld06_128"}, {3449, "vegashse2", "hseconcblend1_256"},
	{3449, "vegashse2", "pinkwall01_64"}, {3449, "vegashse2", "studiowall_law"}, {3446, "vegashse3", "starhedge2"},
	{3446, "vegashse3", "vgnhseledgw1_64"}, {3442, "vegashse4", "Est_corridor_ceiling"}, {3442, "vegashse4", "Est_Gen_stone"},
	{3442, "vegashse4", "mallint01"}, {3442, "vegashse4", "vgnlowbuild3_256"}, {3484, "vegashse5", "newindow14"},
	{3484, "vegashse5", "vegashousewal1_256"}, {3484, "vegashse5", "vegashousewal2_256"}, {3484, "vegashse5", "vegashousewal7_256"},
	{3484, "vegashse5", "vegashousewal8_256"}, {3484, "vegashse5", "vgnhsepsh4_256"}, {3445, "vegashse6", "vegashousewal3_256"},
	{3445, "vegashse6", "vegashousewal4_256"}, {3445, "vegashse6", "vgnhsepsh1_256"}, {3483, "vegashse7", "black128"},
	{3483, "vegashse7", "vegashousewal5_256"}, {3483, "vegashse7", "vegashousewal6_256"}, {3483, "vegashse7", "vgnhsepsh7_128"},
	{3444, "vegashse8", "airconditioner01_128"}, {3444, "vegashse8", "badhousegttrng03_128"}, {3444, "vegashse8", "badhousewall02_256"},
	{3444, "vegashse8", "badhousewall03_256"}, {3444, "vegashse8", "badhousewall04_256"}, {3444, "vegashse8", "badhousewall05_256"},
	{3444, "vegashse8", "badhousewall07_128"}, {3444, "vegashse8", "badhousewallb01_256"}, {3444, "vegashse8", "badhousewallb02_128"},
	{3444, "vegashse8", "badhousewallc01_128"}, {3444, "vegashse8", "badhousewallc02_128"}, {3444, "vegashse8", "redstones01_256"},
	{3444, "vegashse8", "venbuildwh_law2"}, {6875, "vegasnbuild1", "brickglasvgn1_256"}, {6875, "vegasnbuild1", "brickglasvgn2_128"},
	{6875, "vegasnbuild1", "brickvgn1_128"}, {7367, "vegasnefnc", "ws_griddyfence_64"}, {7541, "vegasneon", "vgntelewires1"},
	{15033, "vegassavesmal", "ah_corn2"}, {15033, "vegassavesmal", "ah_wallstyle3"}, {8373, "vegass_jetty", "coasty_bit6_sfe"},
	{6869, "vegastemp1", "casinobase1_256"}, {6869, "vegastemp1", "casinobase2_256"}, {6869, "vegastemp1", "casinowall1_128"},
	{6869, "vegastemp1", "vgnbarb1_256"}, {6869, "vegastemp1", "vgnbarb2_256"}, {6869, "vegastemp1", "vgnbarb3_256"},
	{6869, "vegastemp1", "vgnbarbtex1_256"}, {6869, "vegastemp1", "vgnbarbwall6_256"}, {6869, "vegastemp1", "vgnbarbwall7_256"},
	{6869, "vegastemp1", "vgnbarb_wall_128"}, {7916, "vegaswaterfall", "newaterfal1_256"}, {7497, "vegaswrehse1", "roof05L256"},
	{7497, "vegaswrehse1", "sjmbarblas"}, {18038, "vegas_munation", "mp_gun_floorred"}, {18038, "vegas_munation", "mp_gun_range"},
	{18038, "vegas_munation", "mp_gun_wallbreeze"}, {3469, "vegenmotel", "vgnmotel4_256"}, {3467, "vegstreetsign", "streetsign2_256"},
	{734, "vegtresshi9b", "oakb"}, {1209, "vend", "veding1_64"}, {1209, "vend", "veding2_64"},
	{6057, "venicegb02_law", "bbalcony03_law"}, {6057, "venicegb02_law", "hedge1_law"}, {6057, "venicegb02_law", "mottwin_law"},
	{6057, "venicegb02_law", "venw01b_law"}, {6057, "venicegb02_law", "venw01_law"}, {6056, "venice_law", "jettylounge_law"},
	{6056, "venice_law", "law_blue2"}, {6056, "venice_law", "law_blue3"}, {6056, "venice_law", "law_blue4"},
	{6056, "venice_law", "law_blue5"}, {6056, "venice_law", "law_blue6"}, {6056, "venice_law", "law_blue7"},
	{6056, "venice_law", "law_terra2"}, {6056, "venice_law", "law_terra4"}, {6056, "venice_law", "law_terra5"},
	{6056, "venice_law", "law_yellow2"}, {6056, "venice_law", "law_yellow4"}, {6056, "venice_law", "law_yellow5"},
	{6056, "venice_law", "law_yellow6"}, {6056, "venice_law", "newlawdoor"}, {6056, "venice_law", "stonewalls2"},
	{6056, "venice_law", "wdpanel01b_law"}, {6056, "venice_law", "wdpanel01_law"}, {9106, "vgeamun", "blueroof_64"},
	{9106, "vgeamun", "hirisedoor1_256"}, {9106, "vgeamun", "vgnammuwal1"}, {9106, "vgeamun", "vgnammuwal2"},
	{9106, "vgeamun", "vgnammuwal3"}, {9184, "vgebillboards", "cokopops_2"}, {9184, "vgebillboards", "eris_4"},
	{8849, "vgeretail1", "alleywallyell"}, {8849, "vgeretail1", "casinoshop31_256"}, {8849, "vgeretail1", "zippizzaco_256"},
	{9029, "vgetrainfnce", "wire_sm"}, {14703, "vghsb3int2", "HS2_2Wall2"}, {14703, "vghsb3int2", "HS2_3Wall1"},
	{14703, "vghsb3int2", "HS4_Wall7"}, {14703, "vghsb3int2", "HS4_Wall8"}, {14714, "vghss1int2", "HS1_2Floor1"},
	{14714, "vghss1int2", "HS2_2Wall3"}, {14714, "vghss1int2", "HS2_2Wall5"}, {14714, "vghss1int2", "HS2_3Wall4"},
	{14714, "vghss1int2", "HS4_Wall5"}, {14714, "vghss1int2", "HS4_Wall6"}, {6959, "vgnbasktball", "yellowbball"},
	{7416, "vgnbball", "actopblank_256"}, {7416, "vgnbball", "banditsign_256"}, {7416, "vgnbball", "vgngewall2_256"},
	{7418, "vgnbballsign2", "autobahn3_256"}, {7418, "vgnbballsign2", "bailbondvg_256"}, {7418, "vgnbballsign2", "bankofSA_law"},
	{7418, "vgnbballsign2", "disgraceland1_256"}, {7418, "vgnbballsign2", "frogspawn1_256"}, {7418, "vgnbballsign2", "KACCdepot_256"},
	{7418, "vgnbballsign2", "scoreboardvgn_256"}, {7418, "vgnbballsign2", "steakhouse_256"},
	{7418, "vgnbballsign2", "tattoosignvgn_256"}, {7418, "vgnbballsign2", "weldwed1_256"},
	{7418, "vgnbballsign2", "ws_chipboard2"}, {7232, "vgncastext01", "Clowns_Pocket"}, {7288, "vgncastext02", "vgncasign12_256"},
	{7288, "vgncastext02", "vgncasign22_256"}, {7288, "vgncastext02", "vgncasign42_256"}, {6993, "vgncircir", "circirc1_256"},
	{6993, "vgncircir", "circirc2_256"}, {6993, "vgncircir", "circirctex1_128"}, {6993, "vgncircir", "circirctex2_64"},
	{6993, "vgncircir", "circirctex3_128"}, {6993, "vgncircir", "circirctex4_256"}, {6993, "vgncircir", "circirctex4_neon"},
	{6993, "vgncircir", "gasstopwall1_128"}, {6993, "vgncircir", "neon_centrala"}, {6993, "vgncircir", "starfish_static_lits"},
	{6993, "vgncircir", "vgnbarb1_256na"}, {6993, "vgncircir", "vgncirctent1_256"}, {7231, "vgncircir2", "aluminiumbands64"},
	{7231, "vgncircir2", "Clown_Pock_sign1b"}, {7231, "vgncircir2", "Clown_Pock_sign1c2"}, {7231, "vgncircir2", "hairybanjo_256"},
	{6866, "vgncnstrct1", "Circus_gls_01"}, {6866, "vgncnstrct1", "Circus_gls_02"}, {6866, "vgncnstrct1", "Circus_gls_03"},
	{6866, "vgncnstrct1", "Circus_gls_04"}, {6866, "vgncnstrct1", "Circus_gls_05"}, {6866, "vgncnstrct1", "concretegroundl1b"},
	{6866, "vgncnstrct1", "desmudtrail3"}, {6866, "vgncnstrct1", "vegasclubdoor_128"}, {7247, "vgncoast", "concretewall22b"},
	{7247, "vgncoast", "metalwheel1_128"}, {7247, "vgncoast", "metalwheel2_128"}, {7247, "vgncoast", "mp_bigmetaldoor_256"},
	{7533, "vgncondos1", "casinowall6_256"}, {7533, "vgncondos1", "plantwoodchip_128"}, {7533, "vgncondos1", "vgnmotel1_256"},
	{7533, "vgncondos1", "vgnmotel2_256"}, {7533, "vgncondos1", "vgnmotel3_256"}, {7426, "vgncorp1", "brick2"},
	{7426, "vgncorp1", "curbred_64H"}, {7426, "vgncorp1", "elcid1_256"}, {7426, "vgncorp1", "elcid2_256"},
	{7426, "vgncorp1", "elcid3_256"}, {7426, "vgncorp1", "elcid4_256"}, {7426, "vgncorp1", "elcid5_128"},
	{7426, "vgncorp1", "elcid6_128"}, {7426, "vgncorp1", "elcid7_128"}, {7426, "vgncorp1", "elcid8_128"},
	{7426, "vgncorp1", "ivorytower1_256"}, {7426, "vgncorp1", "ivorytower2_256"}, {7426, "vgncorp1", "vgnbuild1_256"},
	{7426, "vgncorp1", "vgnbuild2_128"}, {7426, "vgncorp1", "vgnbuild3_256"}, {7426, "vgncorp1", "vgndwntwnrf2_128"},
	{7009, "vgndwntwn1", "newpolice_sa"}, {7009, "vgndwntwn1", "vgnbankbld1_256"}, {7009, "vgndwntwn1", "vgnbankbld2_256"},
	{7009, "vgndwntwn1", "vgnbankbld3_256"}, {7009, "vgndwntwn1", "vgnbankbld4_256"}, {7009, "vgndwntwn1", "vgnbankbld5_256"},
	{7009, "vgndwntwn1", "vgnbankbld6_256"}, {7009, "vgndwntwn1", "win_frame"}, {7424, "vgndwntwn2", "gravelkb_128b"},
	{7424, "vgndwntwn2", "souveniers1_256"}, {7424, "vgndwntwn2", "vegaswigshop1_256"}, {7424, "vgndwntwn2", "vgnalleywall1_256"},
	{7424, "vgndwntwn2", "vgsSshopnew01"}, {6908, "vgndwntwn21", "247sign1_64"}, {6908, "vgndwntwn21", "fighotwin1_LAn"},
	{6908, "vgndwntwn21", "newbank"}, {6908, "vgndwntwn21", "vgnbuild5bot_256"}, {6908, "vgndwntwn21", "vgnbuild5top_256"},
	{6908, "vgndwntwn21", "vgnlawbuild1_256"}, {6908, "vgndwntwn21", "vgnlawbuild2_256"}, {6908, "vgndwntwn21", "vgnlawbuild3_256"},
	{6908, "vgndwntwn21", "vgnlawbuild4_256"}, {6908, "vgndwntwn21", "vgnofic1_256"}, {6908, "vgndwntwn21", "vgnofic2_256"},
	{6908, "vgndwntwn21", "vgnshopwal2_256"}, {6908, "vgndwntwn21", "vgnshopwal3_256"}, {6908, "vgndwntwn21", "vgnwstshop3_256"},
	{6908, "vgndwntwn21", "vgnwstshoptop2_256"}, {6868, "vgndwntwn22", "vgnlowbuild1_256"}, {6868, "vgndwntwn22", "vgnlowbuild2_128"},
	{6868, "vgndwntwn22", "vgnlowbuild4_256"}, {6868, "vgndwntwn22", "vgnlowbuild5_256"}, {6868, "vgndwntwn22", "vgnlowbuild6_256"},
	{6868, "vgndwntwn22", "vgnlowbuild7_256"}, {6865, "vgndwntwn23", "steaksign1_256"}, {6865, "vgndwntwn23", "steaksign2_256"},
	{6865, "vgndwntwn23", "Stekullvegas2"}, {6865, "vgndwntwn23", "vgnbordpnk2_256"}, {6865, "vgndwntwn23", "vgnpawnshrt_256"},
	{6865, "vgndwntwn23", "vgnwstshop2_256"}, {6865, "vgndwntwn23", "ws_corr_wall2"}, {6872, "vgndwntwn5", "artsoul1_256"},
	{6872, "vgndwntwn5", "fitzwallvgn2_256"}, {6872, "vgndwntwn5", "fountain6_256"}, {6872, "vgndwntwn5", "glasswindow5_256"},
	{6872, "vgndwntwn5", "glasswindow6_256"}, {6872, "vgndwntwn5", "venetfount1_256"}, {6872, "vgndwntwn5", "venetfount2_256"},
	{6872, "vgndwntwn5", "venetfount3_128"}, {6872, "vgndwntwn5", "vgnledge1_128"}, {7525, "vgnfirestat", "desertgravelsand"},
	{7525, "vgnfirestat", "hangersign01_256"}, {7525, "vgnfirestat", "vegasfiredept1_256"}, {7525, "vgnfirestat", "vgnfirestat1_256"},
	{7525, "vgnfirestat", "vgnfirestat4_256"}, {7525, "vgnfirestat", "vgnwrehse1_256"}, {7525, "vgnfirestat", "vgn_pinkfirestat_256"},
	{7490, "vgnfrates", "resaurantsign1_256"}, {7490, "vgnfrates", "sanpshop1"}, {7490, "vgnfrates", "vgnwrehsewal1_256"},
	{7490, "vgnfrates", "vgnwrehsewal2_256"}, {6988, "vgnfremnt1", "casinobulb2_128n"}, {6988, "vgnfremnt1", "casinodoor_frmnt"},
	{6988, "vgnfremnt1", "casinofront_256"}, {6988, "vgnfremnt1", "casinohotel5_256"}, {6988, "vgnfremnt1", "casinolights1b_128n"},
	{6988, "vgnfremnt1", "casinolights1_128"}, {6988, "vgnfremnt1", "casinolights2_128"}, {6988, "vgnfremnt1", "casinolights2_128n"},
	{6988, "vgnfremnt1", "casinolights3_128"}, {6988, "vgnfremnt1", "casinolights3_128n"}, {6988, "vgnfremnt1", "casinolights5_256"},
	{6988, "vgnfremnt1", "casinolights6lit3_256"}, {6988, "vgnfremnt1", "casinolights6_256"}, {6988, "vgnfremnt1", "casinolights7_256"},
	{6988, "vgnfremnt1", "casinolights9_256"}, {6988, "vgnfremnt1", "casinolit2_128"}, {6988, "vgnfremnt1", "casinopillar1_256"},
	{6988, "vgnfremnt1", "casinoshop32_256"}, {6988, "vgnfremnt1", "casinoside2_256"}, {6988, "vgnfremnt1", "casinosign1_128"},
	{6988, "vgnfremnt1", "casinosign1_256"}, {6988, "vgnfremnt1", "casinosign2_128"}, {6988, "vgnfremnt1", "casinowall1_256"},
	{6988, "vgnfremnt1", "casinowall2_256"}, {6988, "vgnfremnt1", "casinowall5_256"}, {6988, "vgnfremnt1", "freemontsign1_256"},
	{6988, "vgnfremnt1", "goldframe_256"}, {6988, "vgnfremnt1", "hotelsignvgn1_256"}, {6988, "vgnfremnt1", "scmgarage1_128"},
	{6988, "vgnfremnt1", "vgnhotelwin1"}, {6988, "vgnfremnt1", "vgnhotelwin2"}, {6985, "vgnfremnt2", "casinoawn1_128"},
	{6985, "vgnfremnt2", "casinoawn2_256"}, {6985, "vgnfremnt2", "casinobulb3_128"}, {6985, "vgnfremnt2", "casinohotel1_256"},
	{6985, "vgnfremnt2", "casinolights8_128"}, {6985, "vgnfremnt2", "casinoshop1_256"}, {6985, "vgnfremnt2", "casinoshop2_256"},
	{6985, "vgnfremnt2", "casinoshop4_256"}, {6985, "vgnfremnt2", "casinouper1_256"}, {6985, "vgnfremnt2", "casinouper2_256"},
	{6985, "vgnfremnt2", "casinowall42_256"}, {6985, "vgnfremnt2", "casinowall4_128"}, {6985, "vgnfremnt2", "girlsneon_256"},
	{6985, "vgnfremnt2", "striplightsblu_256"}, {6985, "vgnfremnt2", "striplightsgreen_256"},
	{6985, "vgnfremnt2", "striplightsorange_256"}, {6985, "vgnfremnt2", "striplightspinky_256"},
	{6985, "vgnfremnt2", "striplightsred_256"}, {6985, "vgnfremnt2", "striplightsyel_256"}, {6985, "vgnfremnt2", "vegassign1_256"},
	{6985, "vgnfremnt2", "vgnbordpurp1_256"}, {6985, "vgnfremnt2", "vgnbordpurp2_256"}, {6985, "vgnfremnt2", "vgndwntwn3_256_256"},
	{6985, "vgnfremnt2", "vgnhotelwall1_256"}, {6985, "vgnfremnt2", "vgntext1_256"}, {6985, "vgnfremnt2", "vgsN_casadd01"},
	{6985, "vgnfremnt2", "vgs_casino_neon"}, {6985, "vgnfremnt2", "washmallotsd_256"}, {7073, "vgnfremntsgn", "averysign1_256"},
	{7073, "vgnfremntsgn", "averysign2_256"}, {7073, "vgnfremntsgn", "averysigneon1a_256"},
	{7073, "vgnfremntsgn", "averysigneon2a_256"}, {7073, "vgnfremntsgn", "candysign1_256"}, {7530, "vgngebuild", "vgngewall3_256"},
	{7530, "vgngebuild", "vgngewall4_256"}, {7530, "vgngebuild", "vgngewall5_256"}, {7530, "vgngebuild", "vgngewall6_256"},
	{7420, "vgnglfcrse1", "des_dirt1_glfhvy"}, {7420, "vgnglfcrse1", "fence_iron_256"}, {7420, "vgnglfcrse1", "glfclbhsesign_256"},
	{7420, "vgnglfcrse1", "golf_fairway3"}, {7420, "vgnglfcrse1", "hotel2base1_256"}, {7420, "vgnglfcrse1", "hotel2base2_256"},
	{7420, "vgnglfcrse1", "sandstone2_128"}, {7420, "vgnglfcrse1", "seabed"}, {6876, "vgnground", "crossing_law2"},
	{6876, "vgnground", "vegasroad3_256"}, {6886, "vgnground3", "crossing_law3"}, {6886, "vgnground3", "vegasdirtypave1_256"},
	{6886, "vgnground3", "vegasdirtypave2_256"}, {6886, "vgnground3", "vegasdirtyroad1_256"},
	{6886, "vgnground3", "vegasdirtyroad2_256"}, {6886, "vgnground3", "vgsN_road2sand01"}, {6886, "vgnground3", "vgsN_road2sand02"},
	{6886, "vgnground3", "ws_carparknew2c"}, {3455, "vgnhseblk1", "vnghse1_256"}, {3455, "vgnhseblk1", "vnghse2_256"},
	{3455, "vgnhseblk1", "vnghse3_128"}, {6919, "vgnhseing1", "vgnhseledgw2_64"}, {6919, "vgnhseing1", "vgnwrehse8_256"},
	{7518, "vgnhseland", "vgnhsewall1_256"}, {6882, "vgnland", "con2sand1a"}, {6882, "vgnland", "con2sand1b"},
	{6882, "vgnland", "con2sand1c"}, {6882, "vgnland", "des_scrub1_dirt1a"}, {6882, "vgnland", "des_scrub1_dirt1b"},
	{6882, "vgnland", "hiway2sand1a"}, {6882, "vgnland", "hiwaygravel1_256"}, {6882, "vgnland", "ws_carparknew2b"},
	{6882, "vgnland", "ws_oldredbrick64"}, {7526, "vgnlowbild", "24hoursign1_256"}, {7526, "vgnlowbild", "cashloans1_256"},
	{7526, "vgnlowbild", "gaygordos_128"}, {7526, "vgnlowbild", "pavedark128"}, {7526, "vgnlowbild", "touristbureau_256"},
	{7526, "vgnlowbild", "vegaspillar12_128"}, {7526, "vgnlowbild", "vgnlowbildwal1_256"}, {3460, "vgnlpost", "lamppost2"},
	{6947, "vgnmall", "vgncarwash2_128"}, {6947, "vgnmall", "vgnpizzawindow_256"}, {7019, "vgnoutown2", "vgnwrehse5_256"},
	{7019, "vgnoutown2", "vgnwrehse6_256"}, {7019, "vgnoutown2", "vgnwrehse7_256"}, {7103, "vgnplantgen", "metalwheel3_128"},
	{7103, "vgnplantgen", "metalwheel4_128"}, {7103, "vgnplantgen", "metalwheel5"}, {7103, "vgnplantgen", "metalwheel5_128"},
	{6909, "vgnptrlpmp", "soapytitwank_256"}, {6909, "vgnptrlpmp", "vgnstripwal1_128"}, {6867, "vgnpwrmainbld", "hazwaste1_256"},
	{6867, "vgnpwrmainbld", "sw_wallbrick_02"}, {6929, "vgnpwroutbld1", "sw_stresswall1"}, {6931, "vgnpwroutbld3", "plant_tank"},
	{7024, "vgnpwrwhse", "Bow_Load_Door"}, {6912, "vgnrailroad", "conchev_64HV"}, {6912, "vgnrailroad", "railwy_tun"},
	{7506, "vgnretail2", "vgnmetalwall1_256"}, {7506, "vgnretail2", "vgnmetalwall2_256"}, {7506, "vgnretail2", "vgnmetalwall5_256"},
	{7506, "vgnretail2", "vgnmetalwall6_256"}, {7508, "vgnretail3", "counter01_law"}, {7508, "vgnretail3", "garageledge01_64"},
	{7094, "vgnretail5", "carparksign02_128"}, {7094, "vgnretail5", "sw_trellis_64"}, {7094, "vgnretail5", "vegasclub01_128"},
	{7094, "vgnretail5", "vegasclub02_128"}, {7094, "vgnretail5", "vegasclubledge_128"}, {7094, "vgnretail5", "vgsclubwall01_128"},
	{7094, "vgnretail5", "VgsN_wedtack1b"}, {6922, "vgnretail6", "marinawindow2_256"}, {6922, "vgnretail6", "vgsn_chplroof"},
	{6922, "vgnretail6", "vgsn_chplwall"}, {6922, "vgnretail6", "wddngchapel02_64"}, {6922, "vgnretail6", "wddngchapel03_64"},
	{6922, "vgnretail6", "wddngchapelsign03_128"}, {6922, "vgnretail6", "wddngchapelsign04_128"},
	{6922, "vgnretail6", "wddngchapelsign08_256"}, {6922, "vgnretail6", "wddngchplldge01_64"},
	{6922, "vgnretail6", "wddngchplldge03_64"}, {6924, "vgnretail7", "erotic_wc_256"}, {6924, "vgnretail7", "vgnwedding1_256"},
	{6924, "vgnretail7", "vgnwedding2_256"}, {7520, "vgnretail72", "gasstop1_256"}, {7520, "vgnretail72", "solairtyre64"},
	{7520, "vgnretail72", "solairwheel64"}, {7520, "vgnretail72", "vgnmetalwall4_256"}, {7015, "vgnscaffold", "vgsnscafold_256"},
	{7015, "vgnscaffold", "vgsnscfldclr_256"}, {6873, "vgnshambild1", "cparknumbers1a_128"}, {6873, "vgnshambild1", "fitzwallvgn1_256"},
	{6873, "vgnshambild1", "fitzwallvgn3_256"}, {6873, "vgnshambild1", "fitzwallvgn6_256"}, {6873, "vgnshambild1", "glasswindow3b_256"},
	{6873, "vgnshambild1", "vgsN_emerald"}, {6971, "vgnshamcpark", "fitzwallvgn4_256"}, {6971, "vgnshamcpark", "fitzwallvgn5_256"},
	{6944, "vgnshopnmall", "gaulle_3"}, {6944, "vgnshopnmall", "prolaps01_small"}, {6944, "vgnshopnmall", "vgnmetalwall3_256"},
	{6978, "vgnstrfshsign", "vgncasign32_256"}, {7489, "vgntamotel", "Bow_dryclean_floor"}, {7489, "vgntamotel", "freestwall1"},
	{7489, "vgntamotel", "gingerwig_128"}, {7489, "vgntamotel", "motelsign2_256"}, {7489, "vgntamotel", "vegmotelsign2_256"},
	{7489, "vgntamotel", "vgnacmotel2_256"}, {7489, "vgntamotel", "vgnacmotel5_128"}, {7489, "vgntamotel", "vgncoctart1_256"},
	{7511, "vgntrainstat", "awning4256"}, {7511, "vgntrainstat", "metaliron1_128"}, {7511, "vgntrainstat", "venetian15_128"},
	{7650, "vgnusedcar", "greenshade4_64"}, {7650, "vgnusedcar", "lightblue2_32"}, {7650, "vgnusedcar", "lightgreen2_32"},
	{7650, "vgnusedcar", "lightpurple2_32"}, {7650, "vgnusedcar", "lightyellow2_32"}, {7650, "vgnusedcar", "marinadoor2_256"},
	{7650, "vgnusedcar", "shody1_256"}, {6864, "vgnvrock", "ampback_256"}, {6864, "vgnvrock", "ampfront_256"},
	{6864, "vgnvrock", "vrocksign1_256"}, {6864, "vgnvrock", "VRockwall_256"}, {6864, "vgnvrock", "VRockwins_256"},
	{8044, "vgsairport", "LasVenturasAirport_256"}, {3496, "vgsbballnet1", "bballboard2_256"},
	{8136, "vgsbikeschool", "gravelground128"}, {8419, "vgsbldng1", "buildng01wind2_64"}, {8419, "vgsbldng1", "buildng01wind_128"},
	{8419, "vgsbldng1", "buildng01_64"}, {8419, "vgsbldng1", "cityplansign01_256"}, {8419, "vgsbldng1", "hotbasebot_law"},
	{3431, "vgsclubox", "vgsclubdsply_128"}, {8842, "vgse24hr", "takeaway1"}, {8567, "vgsebuild02", "airconfrnt2_128"},
	{8567, "vgsebuild02", "la_brownhibuilda"}, {8567, "vgsebuild02", "la_brownhibuildb"}, {8567, "vgsebuild02", "vgsderelict01_128"},
	{8567, "vgsebuild02", "vgsderelict02_128"}, {8567, "vgsebuild02", "vgsderelict03_128"}, {8567, "vgsebuild02", "vgsderelict04_128"},
	{8567, "vgsebuild02", "vgsderelict05_128"}, {8567, "vgsebuild02", "vgsderelictdoor_128"},
	{8867, "vgsecnstrct01", "concretewall21_256"}, {8870, "vgsecnstrct03", "newscafold_256"},
	{8870, "vgsecnstrct03", "scafoldclear_256"}, {8491, "vgseflmngonion", "flmngo11_128"}, {8491, "vgseflmngonion", "flmngosign01"},
	{8463, "vgseland", "tiadbuddhagold"}, {8463, "vgseland", "triadcarpet"}, {8463, "vgseland", "triadcarpet2"},
	{8438, "vgseroads", "blendpavement2b_256"}, {14711, "vgshm2int2", "HS2_2Carpet1"}, {14711, "vgshm2int2", "HS2_4wall1"},
	{14711, "vgshm2int2", "HS2_wall5"}, {14711, "vgshm2int2", "HSV_carpet1"}, {14711, "vgshm2int2", "HSV_carpet2"},
	{14711, "vgshm2int2", "HSV_wall1"}, {14711, "vgshm2int2", "HSV_wall2"}, {14711, "vgshm2int2", "HSV_wall4"},
	{14710, "vgshm3int2", "HS1_Shade4"}, {14710, "vgshm3int2", "HSV_2carpet1"}, {14710, "vgshm3int2", "HSV_3carpet1"},
	{14710, "vgshm3int2", "HSV_3carpet2"}, {14710, "vgshm3int2", "HSV_3wall1"}, {14710, "vgshm3int2", "HSV_3wall2"},
	{14710, "vgshm3int2", "HSV_3wall3"}, {14710, "vgshm3int2", "HSV_3wall4"}, {14710, "vgshm3int2", "HSV_3wall5"},
	{8401, "vgshpground", "carparksign03_128"}, {8401, "vgshpground", "parkinghut01_128"}, {8401, "vgshpground", "parkinghut02_128"},
	{8401, "vgshpground", "parkinghutdoor_128"}, {8401, "vgshpground", "parkingsign01_128"}, {8401, "vgshpground", "vegaspawn01_128"},
	{8401, "vgshpground", "vegaspawnwall02_128"}, {8401, "vgshpground", "vgspawnroof01_128"}, {14700, "vgshs2int2", "ah_rouren"},
	{14700, "vgshs2int2", "ah_SCMFLR"}, {14700, "vgshs2int2", "ah_wwornskt"}, {8947, "vgslockup", "vegasoffice05_128"},
	{8495, "vgsmall", "vgncarwash1_256"}, {6863, "vgsnbuild07", "vegasbank1_256"}, {6863, "vgsnbuild07", "vegasbank2_256"},
	{6863, "vgsnbuild07", "vegasbank3_256"}, {6863, "vgsnbuild07", "vgndwntwn1_256_256"}, {6863, "vgsnbuild07", "vgndwntwn2_256_256"},
	{3502, "vgsncircon", "woodsuport1_128"}, {3502, "vgsncircon", "woodsuport2_128"}, {7300, "vgsn_billboard", "homies_1_128"},
	{3475, "vgsn_fncelec_pst", "ws_oldpainted_64"}, {3505, "vgsn_nitree", "vgsN_rope"}, {3521, "vgsn_rbstiff", "randysign1_256"},
	{3521, "vgsn_rbstiff", "randysign2_256"}, {8434, "vgsoffice1", "vegasoffice01_128"}, {8434, "vgsoffice1", "vegasoffice02_128"},
	{8434, "vgsoffice1", "vegasoffice03_128"}, {8434, "vgsoffice1", "vegasoffice04_256"}, {8434, "vgsoffice1", "vegasoffice06"},
	{7978, "vgssairport", "aascaff_yellow"}, {7978, "vgssairport", "airportwindow02_128"}, {7978, "vgssairport", "Industdoor9white"},
	{7978, "vgssairport", "newall16white"}, {7978, "vgssairport", "newall_harling_sless"}, {7978, "vgssairport", "venturasairsign1"},
	{7978, "vgssairport", "weatheredwood64HV"}, {7981, "vgssairport02", "airsign2_64"}, {7981, "vgssairport02", "alleydoorz256"},
	{7981, "vgssairport02", "chevronYB_64"}, {7981, "vgssairport02", "danger"}, {7981, "vgssairport02", "drivecare_64"},
	{7981, "vgssairport02", "exit_noexit128"}, {7981, "vgssairport02", "metalcopy"}, {7981, "vgssairport02", "ws_airsecurity"},
	{8130, "vgsschurch", "vgschapelwall01_64"}, {8130, "vgsschurch", "vgschrchwndow01_128"},
	{8130, "vgsschurch", "vgschurchdoor01_128"}, {8130, "vgsschurch", "vgschurchdoor03_128"},
	{8130, "vgsschurch", "vgschurchmural01_256"}, {8130, "vgsschurch", "vgschurchroof01_128"},
	{8130, "vgsschurch", "vgschurchsign01_256"}, {8130, "vgsschurch", "vgschurchwall03_128"},
	{8130, "vgsschurch", "vgschurchwall04_256"}, {8130, "vgsschurch", "vgschurchwall06_256"},
	{8147, "vgsselecfence", "vgsSmetalgate01"}, {7993, "vgsshiways", "hiwayinsideblend1_256"},
	{8035, "vgsshospshop", "bincoLogo"}, {8035, "vgsshospshop", "desgrassbrnsnd"}, {8035, "vgsshospshop", "hosp_sign01a"},
	{8035, "vgsshospshop", "hosp_sign01b"}, {8035, "vgsshospshop", "hosp_sign01c"}, {8035, "vgsshospshop", "vgsShospsign01"},
	{8035, "vgsshospshop", "wok&roll1_2256"}, {8006, "vgssland", "desgrasandblend"}, {8006, "vgssland", "hiwayblend1_256"},
	{7996, "vgssland01", "greyground2sand"}, {8001, "vgssland03", "Upt_Conc floor"}, {8037, "vgssmulticarprk", "vgsSstonewall01"},
	{7987, "vgssroads", "blendpavement2_256"}, {7987, "vgssroads", "road1256"}, {8322, "vgsssignage02", "dirtringtex1_256"},
	{8293, "vgsssignage03", "electrics01"}, {8071, "vgsswarehse01", "vgswrehouse01_128"}, {8071, "vgsswarehse01", "vgswrehouse02_128"},
	{8057, "vgsswarehse02", "GB_truckdepot10"}, {8057, "vgsswarehse02", "GB_truckdepot16"}, {8057, "vgsswarehse02", "Nu-chem_64"},
	{8057, "vgsswarehse02", "shafted01"}, {8057, "vgsswarehse02", "vgsScautionsign01"}, {8057, "vgsswarehse02", "ws_RShaul_transp_M"},
	{8057, "vgsswarehse02", "ws_warehousewall1"}, {7985, "vgsswarehse02c", "garageledge02_64"},
	{7985, "vgsswarehse02c", "GB_truckdepot12"}, {7985, "vgsswarehse02c", "muddywater"}, {7985, "vgsswarehse02c", "vgsSnewshop03"},
	{7985, "vgsswarehse02c", "vgsSpinkshop01"}, {7985, "vgsswarehse02c", "vgsSpinkshop02"}, {7985, "vgsswarehse02c", "vgsSpinkshop03"},
	{7985, "vgsswarehse02c", "vgsSpinkshop04"}, {7985, "vgsswarehse02c", "vgsSshopnew02"},
	{7985, "vgsswarehse02c", "wddngchapelsign06_128"}, {8034, "vgsswarhse04", "flightschoolwall01_128"},
	{8034, "vgsswarhse04", "GB_truckdepot14"}, {8034, "vgsswarhse04", "vgsSfltschool01"}, {8065, "vgsswrehse03", "sumo"},
	{8065, "vgsswrehse03", "vgswrhsign01"}, {8399, "vgs_shops", "vegasclubmural_128"}, {8399, "vgs_shops", "vgsclubwall02_128"},
	{8399, "vgs_shops", "vgsclubwall03_128"}, {8399, "vgs_shops", "vgsclubwall08_256"}, {8399, "vgs_shops", "vgs_shpfrnt01_128"},
	{8399, "vgs_shops", "vgs_shpfrnt02_128"}, {8399, "vgs_shops", "villainn02_256"}, {8399, "vgs_shops", "villainnwall01_128"},
	{8201, "vgs_stadium", "dirtringtex2_256"}, {8201, "vgs_stadium", "dirtringtex3_256"}, {7492, "vgwestabats", "vgnabatwal1_256"},
	{7492, "vgwestabats", "vgnabatwal2_256"}, {7492, "vgwestabats", "vgnabatwal3_256"}, {7492, "vgwestabats", "vgnabatwal4_256"},
	{7448, "vgwestcoast", "golf_hvygras_cpark"}, {7452, "vgwestland", "des_dirt1_grass"}, {7509, "vgwestretail1", "hedge2_256"},
	{7681, "vgwsavehses", "carparksignplate_64"}, {7681, "vgwsavehses", "villainnpipe_64"},
	{7429, "vgwstdirtyrd", "vegasdirtypaveblend1"}, {7429, "vgwstdirtyrd", "vegasdirtypaveblend2"},
	{7429, "vgwstdirtyrd", "vegasdirtyroad3_256"}, {7429, "vgwstdirtyrd", "vgsroadirt1_256"}, {7429, "vgwstdirtyrd", "vgsroadirt2_256"},
	{7415, "vgwwelcome", "lvswelcomesign01_512"}, {7415, "vgwwelcome", "lvswelvomesign02"}, {7415, "vgwwelcome", "ws_coppersheet2"},
	{2025, "wardrobe_tmp", "wardrobe_1128"}, {5174, "warehus_las2", "cmpwarhus1"}, {5174, "warehus_las2", "las2_dcwal1"},
	{5174, "warehus_las2", "las2_dcwal2"}, {5134, "wasteland_las2", "ja_gencheapmx"}, {5134, "wasteland_las2", "ja_sgcombo3"},
	{5134, "wasteland_las2", "mural05_LA"}, {5134, "wasteland_las2", "snpedsigx1"}, {5134, "wasteland_las2", "snpedsigx2"},
	{8412, "wddngchpl", "wddngchapelsign01_256"}, {8675, "wddngchpl02", "vgschapelwall02_128"},
	{8675, "wddngchpl02", "wddngchapeldoor01_128"}, {8675, "wddngchpl02", "wddngchapeldoor02_128"},
	{8675, "wddngchpl02", "wddngchapelwndw01_128"}, {8675, "wddngchpl02", "wddngchapelwndw02"},
	{8676, "wddngchplsign2", "wddngchapelsign05_256"}, {17298, "weefarmcuntw", "sjmbigold3"},
	{17298, "weefarmcuntw", "sjmbigoldgut"}, {17298, "weefarmcuntw", "sjmbigoldwin"}, {17298, "weefarmcuntw", "sjmscruffhut4"},
	{3925, "weemap", "skyclouds"}, {1649, "wglass", "carshowwin2"}, {14738, "whorebar", "AH_Architrave"},
	{14738, "whorebar", "AH_blueceiling"}, {14738, "whorebar", "AH_cheapwhoremainwall"}, {14738, "whorebar", "AH_cheapwindow"},
	{14738, "whorebar", "AH_fbatters"}, {14738, "whorebar", "AH_mirror"}, {14738, "whorebar", "AH_tile"},
	{14738, "whorebar", "AH_wdblinds"}, {14738, "whorebar", "AH_whoredoor"}, {14738, "whorebar", "skirting"},
	{14739, "whorebits", "AH_barchair"}, {14739, "whorebits", "AH_bartop"}, {14739, "whorebits", "AH_beercabinet2"},
	{14739, "whorebits", "AH_cheapbarpan"}, {14739, "whorebits", "AH_speakbig"}, {14739, "whorebits", "AH_wdpanelback"},
	{14739, "whorebits", "sink"}, {14736, "whorerooms", "AH_bathbigblu"}, {14736, "whorerooms", "AH_bathmos"},
	{14736, "whorerooms", "AH_bathplanks"}, {14736, "whorerooms", "AH_dirt1"}, {14736, "whorerooms", "AH_flrwll"},
	{14736, "whorerooms", "AH_grncarpet"}, {14736, "whorerooms", "blu_paper"}, {14736, "whorerooms", "blu_paper2"},
	{14737, "whorewallstuff", "AH_dirtypix2"}, {14737, "whorewallstuff", "AH_drinkshelf"}, {14737, "whorewallstuff", "AH_fbatters2"},
	{14737, "whorewallstuff", "AH_paintbond"}, {14737, "whorewallstuff", "ah_painting1"}, {14737, "whorewallstuff", "ah_painting2"},
	{14737, "whorewallstuff", "Pict1"}, {14816, "whore_furn", "WH_flowers1"}, {14816, "whore_furn", "WH_keys"},
	{14815, "whore_main", "WH_carpet3"}, {14815, "whore_main", "WH_tiles"}, {14815, "whore_main", "WH_tiles2"},
	{14815, "whore_main", "WH_Wall"}, {14817, "whore_rms", "WH_boa1"}, {14817, "whore_rms", "WH_boots"},
	{14817, "whore_rms", "WH_Clit"}, {14817, "whore_rms", "WH_Cpot"}, {14817, "whore_rms", "WH_fan2"}, {14817, "whore_rms", "WH_gown"},
	{14817, "whore_rms", "WH_gown2"}, {14817, "whore_rms", "WH_horse"}, {14817, "whore_rms", "WH_netC"},
	{14817, "whore_rms", "WH_netC2"}, {14817, "whore_rms", "WH_Rug1"}, {14817, "whore_rms", "WH_stetson"},
	{4981, "wiresetc2_las", "ganggraf03_LA"}, {4981, "wiresetc2_las", "lasunionclk"}, {4981, "wiresetc2_las", "unity1"},
	{5150, "wiresetc_las2", "ganggraf01_LA_m"}, {5150, "wiresetc_las2", "lastat4_M"}, {10695, "wires_sfs", "ws_telwiresnew1"},
	{3031, "wngdishx", "dish1"}, {3031, "wngdishx", "dish_leg"}, {3031, "wngdishx", "metal_leg"},
	{3030, "wong_twx", "kb_radiomast_burnt"}, {1675, "wshxrefhse", "decodoor5256"}, {1675, "wshxrefhse", "duskyblue_128"},
	{1675, "wshxrefhse", "greygreensubuild_128"}, {1675, "wshxrefhse", "resimexwin4_256"}, {1675, "wshxrefhse", "washdecowall3256"},
	{1677, "wshxrefhse2", "awning1256"}, {1677, "wshxrefhse2", "tilestone256"}, {1677, "wshxrefhse2", "yellowbeige_128"},
	{1676, "wshxrefpump", "petrolpumpbase_256"}, {1676, "wshxrefpump", "petrolpumptop_128"}, {3879, "ws_jetty_sfx", "northwood3_64"},
	{3879, "ws_jetty_sfx", "ws_algae_concrete"}, {3879, "ws_jetty_sfx", "ws_jeepwheel"}, {1319, "ws_roadside_dyn1", "ws_roadpost"},
	{1319, "ws_roadside_dyn1", "ws_roadwarnings"}, {18200, "w_town2cs_t", "Bow_door_graffiti_128"},
	{18200, "w_town2cs_t", "corrugated02_red"}, {18200, "w_town2cs_t", "dogpillar_128"}, {18200, "w_town2cs_t", "inwindow1128"},
	{18200, "w_town2cs_t", "mottled_creme_64HV"}, {18200, "w_town2cs_t", "shoptopc128"}, {18200, "w_town2cs_t", "shoptopd128"},
	{18200, "w_town2cs_t", "yellowbuilda256"}, {18265, "w_town3cs_t", "inddoor5"}, {18265, "w_town3cs_t", "sjmscruffhut2"},
	{18202, "w_towncs_t", "hatwall256hi"}, {18202, "w_towncs_t", "husdr"}, {18202, "w_towncs_t", "husruf"},
	{18202, "w_towncs_t", "mp_pinesheriff"}, {18202, "w_towncs_t", "pax256hi"}, {18202, "w_towncs_t", "sh256hi"},
	{18202, "w_towncs_t", "shpbill256hi"}, {18202, "w_towncs_t", "shpcam2561hi"}, {18202, "w_towncs_t", "shphr1hi"},
	{18202, "w_towncs_t", "shpton256hi"}, {18202, "w_towncs_t", "sjmroof1"}, {10789, "xenon_sfse", "ws_xenomart"},
	{3439, "xrefairtree", "rustadark128"}, {3439, "xrefairtree", "treepropleaf01"}, {19426, "all_walls", "mirror01"},
	{19426, "all_walls", "officewallsnew1"}, {19426, "all_walls", "vgsn_scrollsgn256"}, {11701, "ambulancelights1", "vehiclelights128"},
	{19107, "armyhelmets", "armyhelmet1"}, {19107, "armyhelmets", "armyhelmet2"}, {19107, "armyhelmets", "armyhelmet3"},
	{19107, "armyhelmets", "armyhelmet4"}, {19107, "armyhelmets", "armyhelmet5"}, {19107, "armyhelmets", "armyhelmet6"},
	{19107, "armyhelmets", "armyhelmet7"}, {19107, "armyhelmets", "armyhelmet8"}, {19801, "balaclava1", "balaclava1"},
	{19332, "balloon_texts", "balloon01"}, {19332, "balloon_texts", "balloon02"}, {19332, "balloon_texts", "balloon03"},
	{19332, "balloon_texts", "balloon04"}, {19332, "balloon_texts", "balloon05"}, {19332, "balloon_texts", "balloon06"},
	{19332, "balloon_texts", "balloon07"}, {19332, "balloon_texts", "balloon_basket01"}, {19332, "balloon_texts", "balloon_poles01"},
	{19332, "balloon_texts", "basket_flamers01"}, {11748, "bandages", "bandage1"}, {11748, "bandages", "bandagepack1"},
	{18754, "basesections", "hazardtile13"}, {18754, "basesections", "metalflooring4"}, {19317, "bassguitar01", "bassguitar01"},
	{19873, "bathroomstuff1", "soapbar1"}, {19873, "bathroomstuff1", "toiletpaperroll1"}, {19579, "breadloaf1", "breadloaf1"},
	{19883, "breadslice1", "cj_bread_1"}, {19883, "breadslice1", "cj_bread_2"}, {19622, "broom1", "cj_smallbat"},
	{19468, "bucket01", "bucket01"}, {19314, "bullhorns01", "bullhorns01"}, {19623, "camera1", "cscamera01"},
	{19623, "camera1", "cscamera02"}, {19623, "camera1", "cscamera03"}, {19624, "case1", "cj_case_brown"},
	{19527, "cauldron1", "alienliquid1"}, {19527, "cauldron1", "cauldron1"}, {19897, "cigarettepacks", "cigarettepack1"},
	{19625, "ciggy1", "ciggy1"}, {19352, "classy", "cane01"}, {19352, "classy", "monocle01"}, {19352, "classy", "moustache01"},
	{19352, "classy", "scarf01"}, {19352, "classy", "tophat01"}, {19339, "coffin01", "coffin_handle01"},
	{19339, "coffin01", "coffin_side01"}, {19339, "coffin01", "coffin_top01"}, {18767, "concretebits", "stonewalltile1-3"},
	{18782, "cookieramp1", "cookie"}, {19098, "cowboyhats", "cowboyhat1"}, {19098, "cowboyhats", "cowboyhat3"},
	{19098, "cowboyhats", "cowboyhat4"}, {19098, "cowboyhats", "cowboyhat5"}, {19098, "cowboyhats", "dwmolc2"},
	{11712, "cross1", "cross1"}, {11749, "cshandcuffs1", "handcuffsblack1"}, {19129, "dancefloors", "dancefloor1"},
	{19129, "dancefloors", "plastic5-small"}, {19315, "deer01", "deer01"}, {18759, "dmcages", "barbedwire1"},
	{18759, "dmcages", "metaldrumold1"}, {18759, "dmcages", "metalgrid15-2"}, {18759, "dmcages", "metalplate23-3"},
	{18759, "dmcages", "tarmacplain1"}, {11746, "doorkey1", "doorkey1"}, {19344, "egg_texts", "easter_egg01"},
	{19344, "egg_texts", "easter_egg02"}, {19344, "egg_texts", "easter_egg03"}, {19344, "egg_texts", "easter_egg04"},
	{19344, "egg_texts", "easter_egg05"}, {18886, "electromagnet1", "hazardtile13-128x128"}, {19607, "enexmarkers", "enex"},
	{19607, "enexmarkers", "enexmarker1"}, {19607, "enexmarkers", "enexmarker1-2"}, {19607, "enexmarkers", "enexmarker4-2"},
	{19607, "enexmarkers", "enexmarker4-3"}, {19607, "enexmarkers", "enexmarker4-4"}, {19085, "eyepatch1", "eyepatch"},
	{18864, "fakesnow1", "snow2"}, {19641, "fencesection1", "fencesection1"}, {18878, "ferriswheel", "bunting"},
	{18878, "ferriswheel", "railing3"}, {19331, "firehats", "fire_hat01"}, {19331, "firehats", "fire_hat02"},
	{19793, "firewood1", "firewood1"}, {19793, "firewood1", "firewood2"}, {18632, "fishingrod", "handle2"},
	{18632, "fishingrod", "line"}, {18632, "fishingrod", "plastic"}, {18632, "fishingrod", "rodpole2"},
	{18641, "flashlight1", "faglite"}, {18641, "flashlight1", "metalblack1-2"}, {18641, "flashlight1", "torch-glass-64x64"},
	{19318, "flyingv01", "flyingv01"}, {19588, "footbridge1", "footbridge-diffuse"}, {18889, "forcefields", "glass1"},
	{18888, "forcefields", "white"}, {19470, "forsale01", "forsale01"}, {19638, "fruitcrates1", "applesgreen1"},
	{19638, "fruitcrates1", "applesred1"}, {19638, "fruitcrates1", "oranges1"}, {19472, "gasmask01", "gaskmask01"},
	{19163, "gimpmask1", "gimp"}, {19307, "goflagx2", "goflag2"}, {19307, "goflagx2", "goflag3"}, {19941, "goldbar1", "chrome"},
	{19165, "gtamap", "gtasamapbit1"}, {19165, "gtamap", "gtasamapbit2"}, {19165, "gtamap", "gtasamapbit3"},
	{19165, "gtamap", "gtasamapbit4"}, {19165, "gtamap", "gtasavectormap1"}, {19165, "gtamap", "metal1-128x128"},
	{19165, "gtamap", "paperbacking"}, {18885, "gunvendingmachine1", "gunz"}, {18885, "gunvendingmachine1", "vendbox"},
	{18885, "gunvendingmachine1", "vendredmetal"}, {18975, "hair2", "face_afro"}, {19424, "headphones", "headphones01"},
	{19424, "headphones", "headphones02"}, {19424, "headphones", "headphones03"}, {19424, "headphones", "headphones04"},
	{11696, "hill250x250rocky3", "cw2_mountdirtscree2"}, {11696, "hill250x250rocky3", "cw2_mountdirtscree3"},
	{11696, "hill250x250rocky3", "cw2_mounttrail"}, {19067, "hoodyhats", "hoodyhat1"}, {19067, "hoodyhats", "hoodyhat2"},
	{19067, "hoodyhats", "hoodyhat3"}, {19346, "hotdog01", "hotdog01"}, {18882, "hugebowls", "balaclava"},
	{18882, "hugebowls", "beetles5"}, {18882, "hugebowls", "metalplate1"}, {18882, "hugebowls", "wallwhite2bot"},
	{18882, "hugebowls", "wallwhite2top"}, {18882, "hugebowls", "woodpanel1"}, {19894, "laptopsamp1", "laptopsamp1"},
	{19894, "laptopsamp1", "laptopscreen1"}, {19894, "laptopsamp1", "laptopscreen2"}, {19894, "laptopsamp1", "laptopscreen3"},
	{18643, "laserpointer1", "laserbeam64x64"}, {18643, "laserpointer1", "laserwarninglabel"},
	{19080, "laserpointer2", "laserbeam-2-64x64"}, {19081, "laserpointer3", "laserbeam-3-64x64"},
	{19082, "laserpointer4", "laserbeam-4-64x64"}, {19083, "laserpointer5", "laserbeam-5-64x64"},
	{19084, "laserpointer6", "laserbeam-6-64x64"}, {19847, "legham1", "legham1"}, {19620, "lightbar1", "lightbar1"},
	{18657, "lightbeams", "blue-512x512"}, {18657, "lightbeams", "red-512x512"}, {18657, "lightbeams", "white-512x512"},
	{19829, "lightswitches", "lightswitch1"}, {19829, "lightswitches", "lightswitch2"}, {19829, "lightswitches", "lightswitch3"},
	{19800, "lsacarpark1", "dt_officewall1"}, {19800, "lsacarpark1", "dt_officewall2"}, {19800, "lsacarpark1", "dt_officflr2"},
	{19595, "lsappartments1", "capitolwin1_lawn_new"}, {19595, "lsappartments1", "carpet4-256x256"},
	{19595, "lsappartments1", "ceilingtiles3-128x128"}, {19597, "lsbeachside", "beachside-sign"},
	{19597, "lsbeachside", "carpet19-128x128"}, {19597, "lsbeachside", "ceilingtiles4-128x128"},
	{19597, "lsbeachside", "lsskyscraper1windows"}, {19597, "lsbeachside", "tiles7-128x128"},
	{19597, "lsbeachside", "wall7-256x256"}, {19325, "lsmall_shops", "lsmall_window01"}, {19267, "mapmarkers", "green-2"},
	{19267, "mapmarkers", "mapicon2"}, {19267, "mapmarkers", "mapicon3"}, {19267, "mapmarkers", "mapicon4"},
	{19267, "mapmarkers", "mapicon5"}, {19267, "mapmarkers", "mapicon6"}, {19267, "mapmarkers", "mapicon7"},
	{19267, "mapmarkers", "mapicon8"}, {19267, "mapmarkers", "mapicon9"}, {19267, "mapmarkers", "mapicon10"},
	{19267, "mapmarkers", "mapicon11"}, {19267, "mapmarkers", "mapicon12"}, {19267, "mapmarkers", "mapicon13"},
	{19267, "mapmarkers", "mapicon14"}, {19267, "mapmarkers", "mapicon15"}, {19267, "mapmarkers", "mapicon16"},
	{19267, "mapmarkers", "mapicon17"}, {19267, "mapmarkers", "mapicon18"}, {19267, "mapmarkers", "mapicon19"},
	{19267, "mapmarkers", "mapicon20"}, {19267, "mapmarkers", "mapicon21"}, {19267, "mapmarkers", "mapicon22"},
	{19267, "mapmarkers", "mapicon23"}, {19267, "mapmarkers", "mapicon24"}, {19267, "mapmarkers", "mapicon25"},
	{19267, "mapmarkers", "mapicon26"}, {19267, "mapmarkers", "mapicon27"}, {19267, "mapmarkers", "mapicon28"},
	{19267, "mapmarkers", "mapicon29"}, {19267, "mapmarkers", "mapicon30"}, {19267, "mapmarkers", "mapicon31"},
	{19267, "mapmarkers", "mapicon31-2"}, {19267, "mapmarkers", "mapicon31-3"}, {19267, "mapmarkers", "mapicon31-4"},
	{19267, "mapmarkers", "mapicon31-5"}, {19267, "mapmarkers", "mapicon32"}, {19267, "mapmarkers", "mapicon33"},
	{19267, "mapmarkers", "mapicon34"}, {19267, "mapmarkers", "mapicon35"}, {19267, "mapmarkers", "mapicon36"},
	{19267, "mapmarkers", "mapicon37"}, {19267, "mapmarkers", "mapicon38"}, {19267, "mapmarkers", "mapicon39"},
	{19267, "mapmarkers", "mapicon40"}, {19267, "mapmarkers", "mapicon41"}, {19267, "mapmarkers", "mapicon42"},
	{19267, "mapmarkers", "mapicon43"}, {19267, "mapmarkers", "mapicon44"}, {19267, "mapmarkers", "mapicon45"},
	{19267, "mapmarkers", "mapicon46"}, {19267, "mapmarkers", "mapicon47"}, {19267, "mapmarkers", "mapicon48"},
	{19267, "mapmarkers", "mapicon49"}, {19267, "mapmarkers", "mapicon50"}, {19267, "mapmarkers", "mapicon51"},
	{19267, "mapmarkers", "mapicon52"}, {19267, "mapmarkers", "mapicon53"}, {19267, "mapmarkers", "mapicon54"},
	{19267, "mapmarkers", "mapicon55"}, {19267, "mapmarkers", "mapicon56"}, {19267, "mapmarkers", "mapicon57"},
	{19267, "mapmarkers", "mapicon58"}, {19267, "mapmarkers", "mapicon59"}, {19267, "mapmarkers", "mapicon60"},
	{19267, "mapmarkers", "mapicon61"}, {19267, "mapmarkers", "mapicon62"}, {19267, "mapmarkers", "mapicon63"},
	{19267, "mapmarkers", "mapiconfire1"}, {19267, "mapmarkers", "mapiconlight1"}, {19267, "mapmarkers", "mapiconnew11"},
	{19267, "mapmarkers", "mapiconnew12"}, {19267, "mapmarkers", "mapiconnew13"}, {19267, "mapmarkers", "mapiconnew14"},
	{19267, "mapmarkers", "mapiconnew15"}, {19267, "mapmarkers", "mapiconnew16"}, {19267, "mapmarkers", "mapiconnew17"},
	{19267, "mapmarkers", "mapiconnew18"}, {19267, "mapmarkers", "mapiconnew19"}, {19267, "mapmarkers", "mapiconnew20"},
	{19267, "mapmarkers", "red-2"}, {19267, "mapmarkers", "redstripes-16x16"}, {19267, "mapmarkers", "samporange"},
	{19882, "marcossteak2", "cj_steak"}, {19130, "matarrows", "arrow-1"}, {19130, "matarrows", "arrow-1-edge"},
	{19130, "matarrows", "arrowedges1"}, {19130, "matarrows", "arrows3"}, {19130, "matarrows", "green"},
	{19130, "matarrows", "red-2-2"}, {18901, "matclothes", "bandanablu"}, {18901, "matclothes", "bandanabluish"},
	{18901, "matclothes", "bandanacamo"}, {18901, "matclothes", "bandanacheese"}, {18901, "matclothes", "bandanacloth1"},
	{18901, "matclothes", "bandanacloth2"}, {18901, "matclothes", "bandanacloth3"}, {18901, "matclothes", "bandanacloth4"},
	{18901, "matclothes", "bandanacloth5"}, {18901, "matclothes", "bandanadots1"}, {18901, "matclothes", "bandanaelec"},
	{18901, "matclothes", "bandanaflag"}, {18901, "matclothes", "bandanafur"}, {18901, "matclothes", "bandanagold"},
	{18901, "matclothes", "bandanaleaf"}, {18901, "matclothes", "bandanapurple"}, {18901, "matclothes", "bandanared"},
	{18901, "matclothes", "bandanaredish"}, {18901, "matclothes", "bandanaskull"}, {18901, "matclothes", "bandanataidai"},
	{18901, "matclothes", "bandanathingy"}, {18901, "matclothes", "bandanawash1"}, {18901, "matclothes", "bandanazigzag"},
	{18901, "matclothes", "bandblack"}, {18901, "matclothes", "bandblue"}, {18901, "matclothes", "bandgang"},
	{18901, "matclothes", "beretblk"}, {18901, "matclothes", "beretmap1"}, {18901, "matclothes", "beretmap2"},
	{18901, "matclothes", "beretred"}, {18901, "matclothes", "boater"}, {18901, "matclothes", "bowler"},
	{18901, "matclothes", "bowlerblue"}, {18901, "matclothes", "bowlergang"}, {18901, "matclothes", "bowlerred"},
	{18901, "matclothes", "bowleryellow"}, {18901, "matclothes", "boxingcap"}, {18901, "matclothes", "capblk"},
	{18901, "matclothes", "capblue"}, {18901, "matclothes", "capgang"}, {18901, "matclothes", "capknitblk"},
	{18901, "matclothes", "capknitgrn"}, {18901, "matclothes", "captruck"}, {18901, "matclothes", "cowboy"},
	{18901, "matclothes", "darkblue"}, {18901, "matclothes", "elvishair"}, {18901, "matclothes", "hatmancblk"},
	{18901, "matclothes", "hatmancplaid"}, {18901, "matclothes", "hatmap1"}, {18901, "matclothes", "hatmap2"},
	{18901, "matclothes", "hatmap3"}, {18901, "matclothes", "hattiger"}, {18901, "matclothes", "helmet"},
	{18901, "matclothes", "helmet2"}, {18901, "matclothes", "helmetmap1"}, {18901, "matclothes", "helmetmap2"},
	{18901, "matclothes", "helmetmap3"}, {18901, "matclothes", "metalalumox1"}, {18901, "matclothes", "skullyblk"},
	{18901, "matclothes", "skullygrn"}, {18901, "matclothes", "zorromask"}, {18646, "matcolours", "blue"},
	{18646, "matcolours", "grey"}, {18646, "matcolours", "grey-10-percent"}, {18646, "matcolours", "grey-20-percent"},
	{18646, "matcolours", "grey-30-percent"}, {18646, "matcolours", "grey-40-percent"}, {18646, "matcolours", "grey-50-percent"},
	{18646, "matcolours", "grey-60-percent"}, {18646, "matcolours", "grey-70-percent"}, {18646, "matcolours", "grey-80-percent"},
	{18646, "matcolours", "grey-90-percent"}, {18646, "matcolours", "grey-93-percent"}, {18646, "matcolours", "grey-95-percent"},
	{18646, "matcolours", "lightblue"}, {18646, "matcolours", "orange"}, {18646, "matcolours", "red"}, {18646, "matcolours", "red-3"},
	{18646, "matcolours", "red-4"}, {18646, "matcolours", "redlaser"}, {19775, "matcopstuff", "copholster1"},
	{19775, "matcopstuff", "fbi_id_card"}, {19775, "matcopstuff", "fbi_logo"}, {19775, "matcopstuff", "policebadge2"},
	{19775, "matcopstuff", "policebadge3"}, {19029, "matglasses", "glassestype1map"}, {19029, "matglasses", "glassestype2map"},
	{19029, "matglasses", "glassestype3map"}, {19029, "matglasses", "glassestype4map"}, {19029, "matglasses", "glassestype5map"},
	{19029, "matglasses", "glassestype6map"}, {19029, "matglasses", "glassestype7map"}, {19029, "matglasses", "glassestype8map"},
	{19029, "matglasses", "glassestype9map"}, {19029, "matglasses", "glassestype10map"}, {19029, "matglasses", "glassestype11map"},
	{19029, "matglasses", "glassestype12map"}, {19029, "matglasses", "glassestype13map"}, {19029, "matglasses", "glassestype14map"},
	{19029, "matglasses", "glassestype15map"}, {19029, "matglasses", "glassestype16map"}, {19029, "matglasses", "glassestype17map"},
	{19029, "matglasses", "glassestype18map"}, {19029, "matglasses", "glassestype19map"}, {19029, "matglasses", "glassestype20map"},
	{19029, "matglasses", "glassestype21map"}, {19029, "matglasses", "glassestype22map"}, {19029, "matglasses", "glassestype23map"},
	{19029, "matglasses", "glassestype24map"}, {19029, "matglasses", "glassestype25map"}, {19029, "matglasses", "glassestype26map"},
	{19029, "matglasses", "glassestype27map"}, {19029, "matglasses", "glassestype28map"}, {19029, "matglasses", "glassestype29map"},
	{19029, "matglasses", "glassestype30map"}, {19037, "mathockey", "hockeymask"}, {19037, "mathockey", "hockeymask2"},
	{19037, "mathockey", "hockeymask3"}, {19297, "matlights", "emergencylights64"}, {19297, "matlights", "invisible"},
	{19784, "matpoliceinsignias", "detective1"}, {19784, "matpoliceinsignias", "detective2"},
	{19784, "matpoliceinsignias", "detective3"}, {19784, "matpoliceinsignias", "policeofficer2"},
	{19784, "matpoliceinsignias", "policeofficer3"}, {19784, "matpoliceinsignias", "seniorleadofficer"},
	{19784, "matpoliceinsignias", "sergeant1"}, {19784, "matpoliceinsignias", "sergeant2"}, {18761, "matracing", "bridgeframe2"},
	{18761, "matracing", "checkeredarrows1"}, {18761, "matracing", "metalfence3"}, {18787, "matramps", "cardboard4"},
	{18787, "matramps", "cardboard4-2"}, {18787, "matramps", "cardboard4-12"}, {18787, "matramps", "cardboard4-16"},
	{18787, "matramps", "cardboard4-21"}, {18787, "matramps", "floormetal1"}, {18787, "matramps", "grating3"},
	{18787, "matramps", "knot_woodpaint128"}, {18787, "matramps", "metalflooring"}, {18787, "matramps", "redrailing"},
	{18787, "matramps", "roadguides"}, {18787, "matramps", "wallgarage"}, {18787, "matramps", "zap"},
	{19535, "matroadinters1", "roadinters1"}, {19089, "matropes", "csrope02"}, {18771, "matstairs", "hazardwall2"},
	{18771, "matstairs", "stonewalltile1-4"}, {18996, "mattextures", "beetles1"}, {18996, "mattextures", "bluefoil"},
	{18996, "mattextures", "cagesign"}, {18996, "mattextures", "cappolice"}, {18996, "mattextures", "concrete12"},
	{18996, "mattextures", "garbagepile1"}, {18996, "mattextures", "gun_melee"}, {18996, "mattextures", "lava1"},
	{18996, "mattextures", "lime"}, {18996, "mattextures", "multi086"}, {18996, "mattextures", "policeshield"},
	{18996, "mattextures", "policeshieldgls"}, {18996, "mattextures", "safetymesh"}, {18996, "mattextures", "sampblack"},
	{18996, "mattextures", "sampred"}, {18996, "mattextures", "sampwhite"}, {18996, "mattextures", "screw"},
	{18996, "mattextures", "truchettiling3-4"}, {18996, "mattextures", "wood020"}, {18996, "mattextures", "ws_wetdryblendsand2"},
	{19655, "mattubes", "bluedirt1"}, {19655, "mattubes", "greendirt1"}, {19655, "mattubes", "purpledirt1"},
	{19655, "mattubes", "reddirt1"}, {19655, "mattubes", "yellowdirt1"}, {19041, "matwatches", "watchtype1map"},
	{19041, "matwatches", "watchtype2map"}, {19041, "matwatches", "watchtype3map"}, {19041, "matwatches", "watchtype4map"},
	{19041, "matwatches", "watchtype5map"}, {19041, "matwatches", "watchtype6map"}, {19041, "matwatches", "watchtype7map"},
	{19041, "matwatches", "watchtype8map"}, {19041, "matwatches", "watchtype9map"}, {19041, "matwatches", "watchtype10map"},
	{19041, "matwatches", "watchtype11map"}, {19041, "matwatches", "watchtype12map"}, {19041, "matwatches", "watchtype13map"},
	{19041, "matwatches", "watchtype14map"}, {19041, "matwatches", "watchtype15map"}, {19560, "meattray1", "meattray1"},
	{11738, "mediccase1", "medicalbox1b"}, {19844, "metalpanels", "metalpanel1"}, {19844, "metalpanels", "metalpanel2"},
	{19844, "metalpanels", "metalpanel3"}, {19844, "metalpanels", "metalpanel4"}, {18835, "mickytextures", "arrow-blue-outline-up"},
	{18835, "mickytextures", "brick008"}, {18835, "mickytextures", "brown013"}, {18835, "mickytextures", "dancea"},
	{18835, "mickytextures", "gg_end_lod_3"}, {18835, "mickytextures", "grey002"}, {18835, "mickytextures", "marb002"},
	{18835, "mickytextures", "metal013"}, {18835, "mickytextures", "metal061"}, {18835, "mickytextures", "orang006"},
	{18835, "mickytextures", "red032"}, {18835, "mickytextures", "smileyface1"}, {18835, "mickytextures", "smileyface2"},
	{18835, "mickytextures", "whiteforletters"}, {18835, "mickytextures", "wood051"}, {18835, "mickytextures", "yello007"},
	{19611, "microphone1", "microphone1"}, {19611, "microphone1", "microphonestand1"}, {19853, "mihouse1", "bluewall1"},
	{19853, "mihouse1", "bluewall1_64"}, {19853, "mihouse1", "brownwall1"}, {19853, "mihouse1", "dooredited1"},
	{19853, "mihouse1", "greenwall1"}, {19853, "mihouse1", "redwall1"}, {19853, "mihouse1", "tileblue1"},
	{19853, "mihouse1", "tilesswimmingpool2"}, {19853, "mihouse1", "window1edited"}, {19853, "mihouse1", "yellowwall1"},
	{19853, "mihouse1", "yellowwall1_64"}, {19602, "mine", "mine_64"}, {19159, "mirrorball1", "mirrortile3"},
	{19933, "mkwalloven1", "walloven1"}, {18865, "mobilephone1", "mobilephone1-1"}, {18865, "mobilephone1", "mobilephone1-2"},
	{18865, "mobilephone1", "mobilephone1-3"}, {18866, "mobilephone2", "mobilephone2-1"}, {18866, "mobilephone2", "mobilephone2-2"},
	{18866, "mobilephone2", "mobilephone2-3"}, {18867, "mobilephone3", "mobilephone3-1"}, {18867, "mobilephone3", "mobilephone3-2"},
	{18867, "mobilephone3", "mobilephone3-3"}, {18868, "mobilephone4", "mobilephone4-1"}, {18868, "mobilephone4", "mobilephone4-2"},
	{18868, "mobilephone4", "mobilephone4-3"}, {18869, "mobilephone5", "mobilephone5-1"}, {18869, "mobilephone5", "mobilephone5-2"},
	{18869, "mobilephone5", "mobilephone5-3"}, {18870, "mobilephone6", "mobilephone6-1"}, {18870, "mobilephone6", "mobilephone6-2"},
	{18870, "mobilephone6", "mobilephone6-3"}, {18871, "mobilephone7", "mobilephone7-1"}, {18871, "mobilephone7", "mobilephone7-2"},
	{18871, "mobilephone7", "mobilephone7-3"}, {18872, "mobilephone8", "mobilephone8-1"}, {18872, "mobilephone8", "mobilephone8-2"},
	{18872, "mobilephone8", "mobilephone8-3"}, {18873, "mobilephone9", "mobilephone9-1"}, {18873, "mobilephone9", "mobilephone9-2"},
	{18873, "mobilephone9", "mobilephone9-3"}, {18874, "mobilephone10", "mobilephone10-1"}, {18874, "mobilephone10", "mobilephone10-2"},
	{18874, "mobilephone10", "mobilephone10-3"}, {18800, "mroadhelix1", "concretemanky1"},
	{18800, "mroadhelix1", "concreteoldpainted1"}, {18800, "mroadhelix1", "road1-3"}, {19160, "newhardhats", "hardhat2map"},
	{19160, "newhardhats", "hardhat3map"}, {19162, "newpolicehats", "policehatmap1"}, {19162, "newpolicehats", "policehatmap2"},
	{18631, "nomodelfile", "hazardtile6"}, {19517, "noncolored", "bowlerwhite"}, {19517, "noncolored", "gen_white"},
	{19517, "noncolored", "smyst"}, {19517, "noncolored", "tophat02"}, {19517, "noncolored", "wmoice"}, {19621, "oilcan1", "oilcan1"},
	{19804, "padlock1", "padlock1"}, {18875, "pager1", "pagermap1"}, {19302, "pd_jail_door01", "pd_jail_door01"},
	{19303, "pd_jail_door02", "pd_jail_door02"}, {19304, "pd_jail_door_top01", "pd_jail_door_top01"},
	{19521, "pilotpolicehat", "pilothat01"}, {19521, "pilotpolicehat", "policehat01"}, {19143, "pinspotlights", "lighton"},
	{19119, "plainhelmets", "plainhelmet1"}, {19119, "plainhelmets", "plainhelmet2"}, {19119, "plainhelmets", "plainhelmet3"},
	{19119, "plainhelmets", "plainhelmet4"}, {19119, "plainhelmets", "plainhelmet5"}, {19418, "police_things", "badge01"},
	{19418, "police_things", "handcuffs01"}, {19418, "police_things", "police_lights01"}, {19099, "policecaps", "policecap2"},
	{19099, "policecaps", "policecap3"}, {19140, "policeglasses", "policeglasses1"}, {19140, "policeglasses", "policeglasses2"},
	{19140, "policeglasses", "policeglasses3"}, {19942, "policeradio1", "policeradio1"},
	{19797, "policevisorstrobe1", "policevisorstrobe1"}, {19092, "pompoms", "wood-64x64"}, {19320, "pumpkin01", "pumpkin01"},
	{19004, "roundbuilding1", "capitolwin1_lawn2"}, {19004, "roundbuilding1", "stonewalltile4"}, {19574, "sampfruits", "apple1"},
	{19574, "sampfruits", "apple2"}, {19574, "sampfruits", "banana1"}, {19574, "sampfruits", "tomato1"},
	{19523, "sampicons", "oranggrad32"}, {19523, "sampicons", "reeedgrad32"}, {19523, "sampicons", "yellograd32"},
	{19792, "sampkeycard1", "sampkeycard1"}, {19787, "samplcdtvs1", "samplcdtv1"}, {19787, "samplcdtvs1", "samplcdtv1screen"},
	{19173, "samppictures", "samppicture1"}, {19173, "samppictures", "samppicture2"}, {19173, "samppictures", "samppicture3"},
	{19173, "samppictures", "samppicture4"}, {19962, "samproadsigns", "arrownoleftsign"}, {19962, "samproadsigns", "arrownorightsign"},
	{19962, "samproadsigns", "arrownostraightsign"}, {19962, "samproadsigns", "bluearrowleft"},
	{19962, "samproadsigns", "bluearrowright"}, {19962, "samproadsigns", "bluearrowstraight"},
	{19962, "samproadsigns", "chevronleftsign"}, {19962, "samproadsigns", "chevronleftsign2"},
	{19962, "samproadsigns", "chevronrightsign"}, {19962, "samproadsigns", "chevronrightsign2"},
	{19962, "samproadsigns", "crossinterssign"}, {19962, "samproadsigns", "donotentersign"},
	{19962, "samproadsigns", "greenbackgroundsign"}, {19962, "samproadsigns", "leftcurvesign"},
	{19962, "samproadsigns", "leftturnsign"}, {19962, "samproadsigns", "materialtext1"}, {19962, "samproadsigns", "noparkingsignl"},
	{19962, "samproadsigns", "noparkingsignr"}, {19962, "samproadsigns", "onewaysignl"}, {19962, "samproadsigns", "onewaysignr"},
	{19962, "samproadsigns", "radiation"}, {19962, "samproadsigns", "rightcurvesign"}, {19962, "samproadsigns", "rightturnsign"},
	{19962, "samproadsigns", "roadclosedsign"}, {19962, "samproadsigns", "roadworkzonesign"},
	{19962, "samproadsigns", "roadworkzonesign2"}, {19962, "samproadsigns", "speedlimit5sign"},
	{19962, "samproadsigns", "speedlimit10sign"}, {19962, "samproadsigns", "speedlimit15sign"},
	{19962, "samproadsigns", "speedlimit20sign"}, {19962, "samproadsigns", "speedlimit25sign"},
	{19962, "samproadsigns", "speedlimit30sign"}, {19962, "samproadsigns", "speedlimit35sign"},
	{19962, "samproadsigns", "speedlimit40sign"}, {19962, "samproadsigns", "speedlimit45sign"},
	{19962, "samproadsigns", "speedlimit50sign"}, {19962, "samproadsigns", "speedlimit55sign"},
	{19962, "samproadsigns", "speedlimitblanksign"}, {19962, "samproadsigns", "stopsign"}, {19962, "samproadsigns", "stopsignahead"},
	{19962, "samproadsigns", "streetsign"}, {19962, "samproadsigns", "tintersectionsign"}, {19962, "samproadsigns", "towawayzonesign"},
	{19962, "samproadsigns", "trafficcamera"}, {19962, "samproadsigns", "trafficlightssign"}, {19962, "samproadsigns", "warningsign"},
	{19962, "samproadsigns", "workzonesign"}, {19962, "samproadsigns", "yieldsign"}, {19064, "santahats", "santahat1"},
	{19064, "santahats", "santahat2"}, {19064, "santahats", "santahat3"}, {19598, "sfbuilding1", "darkwood1"},
	{19598, "sfbuilding1", "wall8"}, {19480, "signsurf", "sign"}, {19115, "sillyhelmets", "sillyhelmet1"},
	{19115, "sillyhelmets", "sillyhelmet2"}, {19115, "sillyhelmets", "sillyhelmet3"}, {19278, "skydiveplatforms", "chromegrill8"},
	{19278, "skydiveplatforms", "hazardtile15-3"}, {19278, "skydiveplatforms", "hazardtile19-2"},
	{19278, "skydiveplatforms", "metalpylonred"}, {19278, "skydiveplatforms", "sampeasteregg"},
	{19278, "skydiveplatforms", "stonewalltile1-2"}, {19278, "skydiveplatforms", "stonewalltile1-10"},
	{19631, "sledgehammer1", "sledgehammer1"}, {19601, "snowplow1", "snowplow1"}, {19626, "spade1", "brownmetalcopy"},
	{19467, "speed_bumps", "speed_bump01"}, {19467, "speed_bumps", "vehicle_barrier01"}, {18880, "speedcamera1", "glassbullethole1"},
	{18880, "speedcamera1", "metallamppost4"}, {18880, "speedcamera1", "speedcameramap1"}, {19515, "swatgrey", "swat"},
	{18642, "taser1", "lightning2-3"}, {18642, "taser1", "metalshinydented1"}, {18642, "taser1", "tasermap1"},
	{19308, "taxi01", "taxi01"}, {19309, "taxi02", "taxi02"}, {19310, "taxi03", "taxi03"}, {19311, "taxi04", "taxi04"},
	{19078, "theparrot", "tony"}, {18773, "tunnelsections", "metalflooring44-2"}, {18773, "tunnelsections", "stonewall4"},
	{18773, "tunnelsections", "stonewalltile1-5"}, {18757, "vcinteriors", "dt_office_gls_text"},
	{18757, "vcinteriors", "dt_officewall3"}, {18757, "vcinteriors", "dt_officflr1"}, {18757, "vcinteriors", "dts_elevator_buttons"},
	{18757, "vcinteriors", "dts_elevator_carpet1"}, {18757, "vcinteriors", "dts_elevator_carpet3"},
	{18757, "vcinteriors", "dts_elevator_ceiling"}, {18757, "vcinteriors", "dts_elevator_floors"},
	{18757, "vcinteriors", "metalplate9"}, {18752, "volcano", "lavalake"}, {18752, "volcano", "redgravel"},
	{19319, "warlock01", "warlock01"}, {19525, "weddingcake1", "bngdecoration1"}, {19525, "weddingcake1", "weddingcake1"},
	{19513, "whitephone", "whitephone"}, {19513, "whitephone", "whitephonefront"}, {19528, "witcheshat1", "witcheshat1"},
	{19608, "woodenstage1", "woodenstage1"}, {19627, "wrench1", "wrench1"}, {19071, "wssections", "rockbrown1"},
	{19071, "wssections", "waterclear1"}, {19071, "wssections", "wood1"}, {19058, "xmasboxes", "silk5-128x128"},
	{19058, "xmasboxes", "silk6-128x128"}, {19058, "xmasboxes", "silk7-128x128"}, {19058, "xmasboxes", "silk8-128x128"},
	{19058, "xmasboxes", "silk9-128x128"}, {19058, "xmasboxes", "wrappingpaper1"}, {19058, "xmasboxes", "wrappingpaper4-2"},
	{19058, "xmasboxes", "wrappingpaper16"}, {19058, "xmasboxes", "wrappingpaper20"}, {19058, "xmasboxes", "wrappingpaper28"},
	{19063, "xmasorbs", "foil1-128x128"}, {19063, "xmasorbs", "foil2-128x128"}, {19063, "xmasorbs", "foil3-128x128"},
	{19063, "xmasorbs", "foil4-128x128"}, {19063, "xmasorbs", "foil5-128x128"}, {19063, "xmasorbs", "orbcap"},
	{19063, "xmasorbs", "sphere"}, {19076, "xmastree1", "goldplate"}
},

VehicleNames[][MAX_VEHICLE_NAME_LENGTH] =
{
	"Landstalker", "Bravura", "Buffalo", "Linerunner", "Perrenial", "Sentinel",
	"Dumper", "Firetruck", "Trashmaster", "Stretch", "Manana", "Infernus", "Voodoo",
	"Pony", "Mule", "Cheetah", "Ambulance", "Leviathan", "Moonbeam", "Esperanto",
	"Taxi", "Washington", "Bobcat", "Mr Whoopee", "BF Injection", "Hunter", "Premier",
	"Enforcer", "Securicar", "Banshee", "Predator", "Bus", "Rhino", "Barracks",
	"Hotknife", "Trailer 1", "Previon", "Coach", "Cabbie", "Stallion", "Rumpo",
	"RC Bandit", "Romero", "Packer", "Monster", "Admiral", "Squalo", "Seasparrow",
	"Pizzaboy", "Tram", "Trailer 2", "Turismo", "Speeder", "Reefer", "Tropic",
	"Flatbed", "Yankee", "Caddy", "Solair", "Berkley's RC Van", "Skimmer", "PCJ-600",
	"Faggio", "Freeway", "RC Baron", "RC Raider", "Glendale", "Oceanic", "Sanchez",
	"Sparrow", "Patriot", "Quad", "Coastguard", "Dinghy", "Hermes", "Sabre", "Rustler",
	"ZR-350", "Walton", "Regina", "Comet", "BMX", "Burrito", "Camper", "Marquis",
	"Baggage", "Dozer", "Maverick", "News Chopper", "Rancher", "FBI Rancher", "Virgo",
	"Greenwood", "Jetmax", "Hotring", "Sandking", "Blista Compact", "Police Maverick",
	"Boxville", "Benson", "Mesa", "RC Goblin", "Hotring Racer A", "Hotring Racer B",
	"Bloodring Banger", "Rancher", "Super GT", "Elegant", "Journey", "Bike", "Mountain Bike",
	"Beagle", "Cropdust", "Stunt", "Tanker", "Roadtrain", "Nebula", "Majestic",
	"Buccaneer", "Shamal", "Hydra", "FCR-900", "NRG-500", "HPV1000", "Cement Truck",
	"Tow Truck", "Fortune", "Cadrona", "FBI Truck", "Willard", "Forklift", "Tractor",
	"Combine", "Feltzer", "Remington", "Slamvan", "Blade", "Freight", "Streak",
	"Vortex", "Vincent", "Bullet", "Clover", "Sadler", "Firetruck LA", "Hustler",
	"Intruder", "Primo", "Cargobob", "Tampa", "Sunrise", "Merit", "Utility", "Nevada",
	"Yosemite", "Windsor", "Monster A", "Monster B", "Uranus", "Jester", "Sultan",
	"Stratum", "Elegy", "Raindance", "RC Tiger", "Flash", "Tahoma", "Savanna",
	"Bandito", "Freight Flat", "Streak Carriage", "Kart", "Mower", "Duneride",
	"Sweeper", "Broadway", "Tornado", "AT-400", "DFT-30", "Huntley", "Stafford",
	"BF-400", "Newsvan", "Tug", "Trailer 3", "Emperor", "Wayfarer", "Euros", "Hotdog",
	"Club", "Freight Carriage", "Trailer 3", "Andromada", "Dodo", "RC Cam", "Launch",
	"Police Car (LSPD)", "Police Car (SFPD)", "Police Car (LVPD)", "Police Ranger",
	"Picador", "S.W.A.T. Van", "Alpha", "Phoenix", "Glendale", "Sadler", "Luggage Trailer A",
	"Luggage Trailer B", "Stair Trailer", "Boxville", "Farm Plow", "Utility Trailer"
},

SkinNames[][MAX_SKIN_NAME_LENGTH] =
{
	"cj", "truth", "maccer", "andre", "bbthin", "bb", "emmet", "male01",
	"janitor", "bfori", "bfost", "vbfycrp", "bfyri", "bfyst", "bmori", "bmost",
	"bmyap", "bmybu", "bmybe", "bmydj", "bmyri", "bmycr", "bmyst", "wmybmx",
	"wbdyg1", "wbdyg2", "wmybp", "wmycon", "bmydrug", "wmydrug", "hmydrug",
	"dwfolc", "dwmolc1", "dwmolc2", "dwmylc1", "hmogar", "wmygol1", "wmygol2",
	"hfori", "hfost", "hfyri", "hfyst", "jethro", "hmori", "hmost", "hmybe",
	"hmyri", "hmycr", "hmyst", "omokung", "wmymech", "bmymoun", "wmymoun",
	"ofori", "ofost", "ofyri", "ofyst", "omori", "omost", "omyri", "omyst",
	"wmyplt", "wmopj", "bfypro", "hfypro", "kendl", "bmypol1", "bmypol2",
	"wmoprea", "sbfyst", "wmosci", "wmysgrd", "swmyhp1", "swmyhp2", "",
	"swfopro", "wfystew", "swmotr1", "wmotr1", "bmotr1", "vbmybox", "vwmybox",
	"vhmyelv", "vbmyelv", "vimyelv", "vwfypro", "ryder3", "vwfyst1", "wfori",
	"wfost", "wfyjg", "wfyri", "wfyro", "wfyst", "wmori", "wmost", "wmyjg",
	"wmylg", "wmyri", "wmyro", "wmycr", "wmyst", "ballas1", "ballas2",
	"ballas3", "fam1", "fam2", "fam3", "lsv1", "lsv2", "lsv3", "maffa", "maffb",
	"mafboss", "vla1", "vla2", "vla3", "triada", "triadb", "sindaco", "triboss",
	"dnb1", "dnb2", "dnb3", "vmaff1", "vmaff2", "vmaff3", "vmaff4", "dnmylc",
	"dnfolc1", "dnfolc2", "dnfylc", "dnmolc1", "dnmolc2", "sbmotr2", "swmotr2",
	"sbmytr3", "swmotr3", "wfybe", "bfybe", "hfybe", "sofybu", "sbmyst",
	"sbmycr", "bmycg", "wfycrk", "hmycm", "wmybu", "bfybu", "smokev", "wfybu",
	"dwfylc1", "wfypro", "wmyconb", "wmybe", "wmypizz", "bmobar", "cwfyhb",
	"cwmofr", "cwmohb1", "cwmohb2", "cwmyfr", "cwmyhb1", "bmyboun", "wmyboun",
	"wmomib", "bmymib", "wmybell", "bmochil", "sofyri", "somyst", "vwmybjd",
	"vwfycrp", "sfr1", "sfr2", "sfr3", "bmybar", "wmybar", "wfysex", "wmyammo",
	"bmytatt", "vwmycr", "vbmocd", "vbmycr", "vhmycr", "sbmyri", "somyri",
	"somybu", "swmyst", "wmyva", "copgrl3", "gungrl3", "mecgrl3", "nurgrl3",
	"crogrl3", "gangrl3", "cwfofr", "cwfohb", "cwfyfr1", "cwfyfr2", "cwmyhb2",
	"dwfylc2", "dwmylc2", "omykara", "wmykara", "wfyburg", "vwmycd", "vhfypro",
	"suzie", "omonood", "omoboat", "wfyclot", "vwmotr1", "vwmotr2", "vwfywai",
	"sbfori", "swfyri", "wmyclot", "sbfost", "sbfyri", "sbmocd", "sbmori",
	"sbmost", "shmycr", "sofori", "sofost", "sofyst", "somobu", "somori",
	"somost", "swmotr5", "swfori", "swfost", "swfyst", "swmocd", "swmori",
	"swmost", "shfypro", "sbfypro", "swmotr4", "swmyri", "smyst", "smyst2",
	"sfypro", "vbfyst2", "vbfypro", "vhfyst3", "bikera", "bikerb", "bmypimp",
	"swmycr", "wfylg", "wmyva2", "bmosec", "bikdrug", "wmych", "sbfystr",
	"swfystr", "heck1", "heck2", "bmycon", "wmycd1", "bmocd", "vwfywa2",
	"wmoice", "tenpen", "pulaski", "hern", "dwayne", "smoke", "sweet", "ryder",
	"forelli", "tbone", "laemt1", "lvemt1", "sfemt1", "lafd1", "lvfd1", "sffd1",
	"lapd1", "sfpd1", "lvpd1", "csher", "lapdm1", "swat", "fbi", "army",
	"dsher", "zero", "rose", "paul", "cesar", "ogloc", "wuzimu", "torino",
	"jizzy", "maddogg", "cat", "claude", "lapdna", "sfpdna", "lvpdna", "lapdpc",
	"lapdpd", "lvpdpc", "wfyclpd", "vbfycpd", "wfyclem", "wfycllv", "csherna",
	"dsherna"
},

MapIconNames[][MAX_ICON_NAME_LENGTH] =
{
	"Colored Square", "White Square", "Player Position",
	"Player (Menu Map)", "North", "Air Yard", "Ammunation",
	"Barber", "Big Smoke", "Boat Yard", "Burger Shot", "Quarry",
	"Catalina", "Cesar", "Cluckin' Bell", "Carl Johnson",
	"C.R.A.S.H", "Diner", "Emmet", "Enemy Attack", "Fire",
	"Girlfriend", "Hospital", "Loco", "Madd Dogg", "Caligulas",
	"OG Loc (1)", "Mod garage", "OG Loc (2)", "Well Stacked Pizza Co",
	"Police", "Green property", "Red property", "Race (1)", "Ryder",
	"Save Game", "School", "Unknown", "Sweet", "Tattoo",
	"The Truth", "Waypoint", "Toreno", "Triads", "Triads Casino",
	"Clothes", "Woozie", "Zero", "Club", "Bar", "Restaurant",
	"Truck", "Robbery", "Race (2)", "Gym", "Car", "Light",
	"Closest airport", "Varrios Los Aztecas", "Ballas",
	"Los Santos Vagos", "San Fierro Rifa", "Grove street",
	"Pay 'n' Spray"
};

enum objInfo
{
	Float:oX,
	Float:oY,
	Float:oZ,
	Float:oRotX,
	Float:oRotY,
	Float:oRotZ,
	oIndex,
	oBold,
	oModelid,
	oFontSize,
	oTextSize,
	oTextIndex,
	oFontColor,
	oBackColor,
	oTextAlignment,
	oFont[MAX_FONT_NAME_LENGTH],
	oText[MAX_OBJECT_TEXT_LENGTH],
	oTextureid[MAX_TEXTURES_PER_OBJECT],
	oMaterialColor[MAX_TEXTURES_PER_OBJECT],
	bool:oCreated
}

enum vehInfo
{
	Float:vX,
	Float:vY,
	Float:vZ,
	Float:vRotZ,
	vModelid,
	vColor1,
	vColor2,
	vRespawnDelay,
	bool:vCreated
}

enum actInfo
{
	Float:aX,
	Float:aY,
	Float:aZ,
	Float:aRotZ,
	aModelid,
	bool:aCreated
}

enum pickInfo
{
	Float:pX,
	Float:pY,
	Float:pZ,
	pType,
	pModelid,
	pSilentObj,
	pVirtualWorld,
	bool:pCreated
}

enum cpInfo
{
	Float:cpX,
	Float:cpY,
	Float:cpZ,
	Float:cpSize,
	cpSilentObj,
	bool:cpCreated
}

enum rcpInfo
{
	Float:rcpX,
	Float:rcpY,
	Float:rcpZ,
	Float:rcpNextX,
	Float:rcpNextY,
	Float:rcpNextZ,
	Float:rcpSize,
	rcpType,
	rcpSilentObj,
	bool:rcpCreated
}

enum icoInfo
{
	Float:iX,
	Float:iY,
	Float:iZ,
	iColor,
	iType,
	iStyle,
	bool:iCreated
}

enum gznInfo
{
	Float:gMinX,
	Float:gMinY,
	Float:gMaxX,
	Float:gMaxY,
	gColor,
	bool:gCreated
}

enum labInfo
{
	lText[MAX_LABEL_TEXT_LENGTH],
	Float:lDrawDist,
	Float:lX,
	Float:lY,
	Float:lZ,
	lColor,
	lTestLOS,
	lSilentObj,
	lVirtualWorld,
	bool:lCreated
}

enum ucInfo
{
	Float:ucAccelMul,
	Float:ucOldPos[3],
	Float:ucOldAngle,
	ucFlyObject,
	ucLrOld,
	ucUdOld,
	ucMode,
	ucLastMove,
	ucHoldingObj,
	ucHoldingVeh,
	ucHoldingAct,
	ucHoldingPick,
	ucHoldingCp,
	ucHoldingRcp,
	ucHoldingLab,
	ucClickedObj,
	ucClickedVeh,
	ucClickedAct,
	ucClickedPick,
	ucClickedCp,
	ucClickedRcp,
	ucClickedIco,
	ucClickedGzn,
	ucClickedLab,
	ucSelectedObj,
	ucSelectedVeh,
	ucSelectedAct,
	ucSelectedPick,
	ucSelectedCp,
	ucSelectedRcp,
	ucSelectedIco,
	ucSelectedGzn,
	ucSelectedLab,
	ucLastLPressed,
	ucLastRPressed,
	ucClickedLayer,
	PlayerText:ucHoldInfo,
	bool:ucCallEditDialog,
	bool:ucEditDialog,
	bool:ucCameraMode,
	bool:ucCopyDefObj
}

new
	CreatorInfo[MAX_PLAYERS][ucInfo],
	ObjectsInfo[MAX_OBJECTS][objInfo],
	VehiclesInfo[MAX_VEHICLES][vehInfo],
	ActorsInfo[MAX_ACTORS][actInfo],
	PickupsInfo[MAX_PICKUPS][pickInfo],
	CheckpointInfo[cpInfo],
	RaceCpInfo[rcpInfo],
	IconsInfo[MAX_MAPICONS][icoInfo],
	ZonesInfo[MAX_GANG_ZONES][gznInfo],
	LabelsInfo[MAX_3DTEXT_GLOBAL][labInfo],
	MapName[MAX_MAPNAME_LENGTH],
	Text:AimPoint;

original_CreateObject(modelid, Float:X, Float:Y, Float:Z, Float:rX, Float:rY, Float:rZ, Float:DrawDistance = 0.0)
	return CreateObject(modelid, X, Y, Z, rX, rY, rZ, DrawDistance);

uc_CreateObject(modelid, Float:X, Float:Y, Float:Z, Float:rX, Float:rY, Float:rZ, Float:DrawDistance = 0.0)
{
	new objectid = CreateObject(modelid, X, Y, Z, rX, rY, rZ, DrawDistance);
	if(objectid != INVALID_OBJECT_ID)
	{
		new i;
		ObjectsInfo[objectid][oCreated] = true;
		#if defined COLANDREAS
			ObjectsInfo[objectid][oIndex] = CA_CreateObject(modelid, X, Y, Z, rX, rY, rZ, true);
		#endif
		ObjectsInfo[objectid][oModelid] = modelid;
		ObjectsInfo[objectid][oX] = X;
		ObjectsInfo[objectid][oY] = Y;
		ObjectsInfo[objectid][oZ] = Z;
		ObjectsInfo[objectid][oRotX] = rX;
		ObjectsInfo[objectid][oRotY] = rY;
		ObjectsInfo[objectid][oRotZ] = rZ;
		ObjectsInfo[objectid][oTextIndex] = -1;
		strcpy(ObjectsInfo[objectid][oFont], "Arial", MAX_FONT_NAME_LENGTH);
		ObjectsInfo[objectid][oTextAlignment] = 0;
		ObjectsInfo[objectid][oText][0] = EOS;
		ObjectsInfo[objectid][oTextSize] = 90;
		ObjectsInfo[objectid][oFontColor] = -1;
		ObjectsInfo[objectid][oBackColor] = 0;
		ObjectsInfo[objectid][oFontSize] = 24;
		ObjectsInfo[objectid][oBold] = 1;
		for(i = MAX_TEXTURES_PER_OBJECT - 1; i != -1; --i)
		{
			ObjectsInfo[objectid][oTextureid][i] = 0;
			ObjectsInfo[objectid][oMaterialColor][i] = 0;
		}
		for(i = GetPlayerPoolSize(); i != -1; --i)
		{
			if(IsPlayerConnected(i) && CreatorInfo[i][ucEditDialog]) ShowCreatorDialog(i, DIALOG_EDIT);
		}
	}
	return objectid;
}

#if defined _ALS_CreateObject
	#undef CreateObject
#else
	#define _ALS_CreateObject
#endif
#define CreateObject uc_CreateObject

original_SetObjectMaterial(objectid, materialindex, modelid, txdname[], texturename[], materialcolor)
	return SetObjectMaterial(objectid, materialindex, modelid, txdname, texturename, materialcolor);

uc_SetObjectMaterial(objectid, materialindex, modelid, txdname[], texturename[], materialcolor)
{
	if(!SetObjectMaterial(objectid, materialindex, modelid, txdname, texturename, materialcolor)) return 0;
	if(ObjectsInfo[objectid][oCreated])
	{
		if(ObjectsInfo[objectid][oTextIndex] == materialindex)
		{
			ObjectsInfo[objectid][oTextIndex] = -1;
			strcpy(ObjectsInfo[objectid][oFont], "Arial", MAX_FONT_NAME_LENGTH);
			ObjectsInfo[objectid][oTextAlignment] = 0;
			ObjectsInfo[objectid][oText][0] = EOS;
			ObjectsInfo[objectid][oTextSize] = 90;
			ObjectsInfo[objectid][oFontColor] = -1;
			ObjectsInfo[objectid][oBackColor] = 0;
			ObjectsInfo[objectid][oFontSize] = 24;
			ObjectsInfo[objectid][oBold] = 1;
		}
		if(!strcmp(txdname, "none") && !strcmp(texturename, "none")) ObjectsInfo[objectid][oTextureid][materialindex] = 0;
		else ObjectsInfo[objectid][oTextureid][materialindex] = GetTextureID(modelid, txdname, texturename);
		ObjectsInfo[objectid][oMaterialColor][materialindex] = materialcolor;
	}
	return 1;
}

#if defined _ALS_SetObjectMaterial
	#undef SetObjectMaterial
#else
	#define _ALS_SetObjectMaterial
#endif
#define SetObjectMaterial uc_SetObjectMaterial

uc_SetObjectMaterialText(objectid, text[], materialindex = 0, materialsize = OBJECT_MATERIAL_SIZE_256x128, fontface[] = "Arial", fontsize = 24, bold = 1, fontcolor = 0xFFFFFFFF, backcolor = 0, textalignment = 0)
{
	if(!SetObjectMaterialText(objectid, text, materialindex, materialsize, fontface, fontsize, bold, fontcolor, backcolor, textalignment)) return 0;
	if(ObjectsInfo[objectid][oCreated])
	{
		if(ObjectsInfo[objectid][oTextureid][materialindex] || ObjectsInfo[objectid][oMaterialColor][materialindex])
		{
			ObjectsInfo[objectid][oTextureid][materialindex] = 0;
			ObjectsInfo[objectid][oMaterialColor][materialindex] = 0;
		}
		ObjectsInfo[objectid][oTextIndex] = materialindex;
		strcpy(ObjectsInfo[objectid][oText], text, MAX_OBJECT_TEXT_LENGTH);
		strcpy(ObjectsInfo[objectid][oFont], fontface, MAX_FONT_NAME_LENGTH);
		ObjectsInfo[objectid][oTextAlignment] = textalignment;
		ObjectsInfo[objectid][oTextSize] = materialsize;
		ObjectsInfo[objectid][oFontColor] = fontcolor;
		ObjectsInfo[objectid][oBackColor] = backcolor;
		ObjectsInfo[objectid][oFontSize] = fontsize;
		ObjectsInfo[objectid][oBold] = bold;
	}
	return 1;
}

#if defined _ALS_SetObjectMaterialText
	#undef SetObjectMaterialText
#else
	#define _ALS_SetObjectMaterialText
#endif
#define SetObjectMaterialText uc_SetObjectMaterialText

uc_SetObjectPos(objectid, Float:X, Float:Y, Float:Z, bool:withcol = false)
{
	if(GetObjectModel(objectid) != -1 && ObjectsInfo[objectid][oCreated])
	{
		#if defined COLANDREAS
			if(withcol) CA_SetObjectPos(ObjectsInfo[objectid][oIndex], X, Y, Z);
		#else
			#pragma unused withcol
		#endif
		ObjectsInfo[objectid][oX] = X;
		ObjectsInfo[objectid][oY] = Y;
		ObjectsInfo[objectid][oZ] = Z;
	}
	return SetObjectPos(objectid, X, Y, Z);
}

#if defined _ALS_SetObjectPos
	#undef SetObjectPos
#else
	#define _ALS_SetObjectPos
#endif
#define SetObjectPos uc_SetObjectPos

uc_SetObjectRot(objectid, Float:RotX, Float:RotY, Float:RotZ, bool:withcol = false)
{
	if(GetObjectModel(objectid) != -1 && ObjectsInfo[objectid][oCreated])
	{
		#if defined COLANDREAS
			if(withcol) CA_SetObjectRot(ObjectsInfo[objectid][oIndex], RotX, RotY, RotZ);
		#else
			#pragma unused withcol
		#endif
		ObjectsInfo[objectid][oRotX] = RotX;
		ObjectsInfo[objectid][oRotY] = RotY;
		ObjectsInfo[objectid][oRotZ] = RotZ;
	}
	return SetObjectRot(objectid, RotX, RotY, RotZ);
}

#if defined _ALS_SetObjectRot
	#undef SetObjectRot
#else
	#define _ALS_SetObjectRot
#endif
#define SetObjectRot uc_SetObjectRot

original_DestroyObject(objectid) return DestroyObject(objectid);

uc_DestroyObject(objectid)
{
	if(GetObjectModel(objectid) != -1 && ObjectsInfo[objectid][oCreated])
	{
		#if defined COLANDREAS
			CA_DestroyObject(ObjectsInfo[objectid][oIndex]);
		#endif
		ObjectsInfo[objectid][oCreated] = false;
		for(new i = GetPlayerPoolSize(); i != -1; --i)
		{
			if(IsPlayerConnected(i) && CreatorInfo[i][ucCameraMode])
			{
				if(CreatorInfo[i][ucEditDialog]) ShowCreatorDialog(i, DIALOG_EDIT);
				if(CreatorInfo[i][ucSelectedObj] == objectid) CreatorInfo[i][ucSelectedObj] = 65535;
				if(CreatorInfo[i][ucHoldingObj] == objectid) CreatorInfo[i][ucHoldingObj] = 65535;
				if(CreatorInfo[i][ucClickedObj] == objectid) CreatorInfo[i][ucClickedObj] = 65535;
			}
		}
	}
	return DestroyObject(objectid);
}

#if defined _ALS_DestroyObject
	#undef DestroyObject
#else
	#define _ALS_DestroyObject
#endif
#define DestroyObject uc_DestroyObject

uc_CreateVehicle(modelid, Float:x, Float:y, Float:z, Float:angle, color1, color2, respawn_delay, addsiren = 0)
{
	new vehicleid = CreateVehicle(modelid, x, y, z, angle, color1, color2, respawn_delay, addsiren);
	if(vehicleid != INVALID_VEHICLE_ID)
	{
		VehiclesInfo[vehicleid][vCreated] = true;
		VehiclesInfo[vehicleid][vModelid] = modelid;
		VehiclesInfo[vehicleid][vX] = x;
		VehiclesInfo[vehicleid][vY] = y;
		VehiclesInfo[vehicleid][vZ] = z;
		VehiclesInfo[vehicleid][vRotZ] = angle;
		VehiclesInfo[vehicleid][vColor1] = color1;
		VehiclesInfo[vehicleid][vColor2] = color2;
		VehiclesInfo[vehicleid][vRespawnDelay] = respawn_delay;
		for(new i = GetPlayerPoolSize(); i != -1; --i)
		{
			if(IsPlayerConnected(i) && CreatorInfo[i][ucEditDialog]) ShowCreatorDialog(i, DIALOG_EDIT);
		}
	}
	return vehicleid;
}

#if defined _ALS_CreateVehicle
	#undef CreateVehicle
#else
	#define _ALS_CreateVehicle
#endif
#define CreateVehicle uc_CreateVehicle

uc_ChangeVehicleColor(vehicleid, color1, color2)
{
	if(!ChangeVehicleColor(vehicleid, color1, color2)) return 0;
	if(VehiclesInfo[vehicleid][vCreated])
	{
		VehiclesInfo[vehicleid][vColor1] = color1;
		VehiclesInfo[vehicleid][vColor2] = color2;
	}
	return 1;
}

#if defined _ALS_ChangeVehicleColor
	#undef ChangeVehicleColor
#else
	#define _ALS_ChangeVehicleColor
#endif
#define ChangeVehicleColor uc_ChangeVehicleColor

uc_DestroyVehicle(vehicleid)
{
	if(!DestroyVehicle(vehicleid)) return 0;
	VehiclesInfo[vehicleid][vCreated] = false;
	for(new i = GetPlayerPoolSize(); i != -1; --i)
	{
		if(IsPlayerConnected(i) && CreatorInfo[i][ucCameraMode])
		{
			if(CreatorInfo[i][ucEditDialog]) ShowCreatorDialog(i, DIALOG_EDIT);
			if(CreatorInfo[i][ucSelectedVeh] == vehicleid) CreatorInfo[i][ucSelectedVeh] = 65535;
			if(CreatorInfo[i][ucHoldingVeh] == vehicleid) CreatorInfo[i][ucHoldingVeh] = 65535;
			if(CreatorInfo[i][ucClickedVeh] == vehicleid) CreatorInfo[i][ucClickedVeh] = 65535;
		}
	}
	return 1;
}

#if defined _ALS_DestroyVehicle
	#undef DestroyVehicle
#else
	#define _ALS_DestroyVehicle
#endif
#define DestroyVehicle uc_DestroyVehicle

uc_CreateActor(modelid, Float:X, Float:Y, Float:Z, Float:Rotation)
{
	new actorid = CreateActor(modelid, X, Y, Z, Rotation);
	if(actorid != INVALID_ACTOR_ID)
	{
		ActorsInfo[actorid][aCreated] = true;
		ActorsInfo[actorid][aModelid] = modelid;
		ActorsInfo[actorid][aX] = X;
		ActorsInfo[actorid][aY] = Y;
		ActorsInfo[actorid][aZ] = Z;
		ActorsInfo[actorid][aRotZ] = Rotation;
		for(new i = GetPlayerPoolSize(); i != -1; --i)
		{
			if(IsPlayerConnected(i) && CreatorInfo[i][ucEditDialog]) ShowCreatorDialog(i, DIALOG_EDIT);
		}
	}
	return actorid;
}

#if defined _ALS_CreateActor
	#undef CreateActor
#else
	#define _ALS_CreateActor
#endif
#define CreateActor uc_CreateActor

uc_DestroyActor(actorid)
{
	if(!DestroyActor(actorid)) return 0;
	ActorsInfo[actorid][aCreated] = false;
	for(new i = GetPlayerPoolSize(); i != -1; --i)
	{
		if(IsPlayerConnected(i) && CreatorInfo[i][ucCameraMode])
		{
			if(CreatorInfo[i][ucEditDialog]) ShowCreatorDialog(i, DIALOG_EDIT);
			if(CreatorInfo[i][ucSelectedAct] == actorid) CreatorInfo[i][ucSelectedAct] = 65535;
			if(CreatorInfo[i][ucHoldingAct] == actorid) CreatorInfo[i][ucHoldingAct] = 65535;
			if(CreatorInfo[i][ucClickedAct] == actorid) CreatorInfo[i][ucClickedAct] = 65535;
		}
	}
	return 1;
}

#if defined _ALS_DestroyActor
	#undef DestroyActor
#else
	#define _ALS_DestroyActor
#endif
#define DestroyActor uc_DestroyActor

uc_CreatePickup(model, type, Float:X, Float:Y, Float:Z, virtualworld)
{
	new pickupid = CreatePickup(model, type, X, Y, Z, virtualworld);
	if(pickupid != -1)
	{
		new i;
		PickupsInfo[pickupid][pCreated] = true;
		PickupsInfo[pickupid][pModelid] = model;
		PickupsInfo[pickupid][pX] = X;
		PickupsInfo[pickupid][pY] = Y;
		PickupsInfo[pickupid][pZ] = Z;
		PickupsInfo[pickupid][pType] = type;
		PickupsInfo[pickupid][pSilentObj] = original_CreateObject(model, X, Y, Z, 0.0, 0.0, 0.0);
		for(i = MAX_TEXTURES_PER_OBJECT - 1; i != -1; --i) original_SetObjectMaterial(PickupsInfo[pickupid][pSilentObj], i, 0, "none", "none", 0);
		PickupsInfo[pickupid][pVirtualWorld] = virtualworld;
		for(i = GetPlayerPoolSize(); i != -1; --i)
		{
			if(IsPlayerConnected(i) && CreatorInfo[i][ucEditDialog]) ShowCreatorDialog(i, DIALOG_EDIT);
		}
	}
	return pickupid;
}

#if defined _ALS_CreatePickup
	#undef CreatePickup
#else
	#define _ALS_CreatePickup
#endif
#define CreatePickup uc_CreatePickup

uc_DestroyPickup(pickupid)
{
	if(!DestroyPickup(pickupid)) return 0;
	PickupsInfo[pickupid][pCreated] = false;
	original_DestroyObject(PickupsInfo[pickupid][pSilentObj]);
	for(new i = GetPlayerPoolSize(); i != -1; --i)
	{
		if(IsPlayerConnected(i) && CreatorInfo[i][ucCameraMode])
		{
			if(CreatorInfo[i][ucEditDialog]) ShowCreatorDialog(i, DIALOG_EDIT);
			if(CreatorInfo[i][ucSelectedPick] == pickupid) CreatorInfo[i][ucSelectedPick] = 65535;
			if(CreatorInfo[i][ucHoldingPick] == pickupid) CreatorInfo[i][ucHoldingPick] = 65535;
			if(CreatorInfo[i][ucClickedPick] == pickupid) CreatorInfo[i][ucClickedPick] = 65535;
		}
	}
	return 1;
}

#if defined _ALS_DestroyPickup
	#undef DestroyPickup
#else
	#define _ALS_DestroyPickup
#endif
#define DestroyPickup uc_DestroyPickup

UpdatePickupType(pickupid, type)
{
	if(-1 < pickupid < MAX_PICKUPS && PickupsInfo[pickupid][pCreated])
	{
		new pick = CreatePickup(PickupsInfo[pickupid][pModelid], type, PickupsInfo[pickupid][pX], PickupsInfo[pickupid][pY], PickupsInfo[pickupid][pZ], PickupsInfo[pickupid][pVirtualWorld]);
		if(pick != -1)
		{
			for(new i = GetPlayerPoolSize(); i != -1; --i)
			{
				if(IsPlayerConnected(i) && CreatorInfo[i][ucCameraMode])
				{
					if(CreatorInfo[i][ucSelectedPick] == pickupid) CreatorInfo[i][ucSelectedPick] = pick;
					if(CreatorInfo[i][ucHoldingPick] == pickupid) CreatorInfo[i][ucHoldingPick] = pick;
					if(CreatorInfo[i][ucClickedPick] == pickupid) CreatorInfo[i][ucClickedPick] = pick;
				}
			}
			DestroyPickup(pickupid);
			return 1;
		}
	}
	return 0;
}

UpdatePickupPos(pickupid, Float:X, Float:Y, Float:Z)
{
	if(-1 < pickupid < MAX_PICKUPS && PickupsInfo[pickupid][pCreated])
	{
		new pick = CreatePickup(PickupsInfo[pickupid][pModelid], PickupsInfo[pickupid][pType], X, Y, Z, PickupsInfo[pickupid][pVirtualWorld]);
		if(pick != -1)
		{
			for(new i = GetPlayerPoolSize(); i != -1; --i)
			{
				if(IsPlayerConnected(i) && CreatorInfo[i][ucCameraMode])
				{
					if(CreatorInfo[i][ucSelectedPick] == pickupid) CreatorInfo[i][ucSelectedPick] = pick;
					if(CreatorInfo[i][ucHoldingPick] == pickupid) CreatorInfo[i][ucHoldingPick] = pick;
					if(CreatorInfo[i][ucClickedPick] == pickupid) CreatorInfo[i][ucClickedPick] = pick;
				}
			}
			DestroyPickup(pickupid);
			return 1;
		}
	}
	return 0;
}

UpdatePickupVirtualWorld(pickupid, virtualworld)
{
	if(-1 < pickupid < MAX_PICKUPS && PickupsInfo[pickupid][pCreated])
	{
		new pick = CreatePickup(PickupsInfo[pickupid][pModelid], PickupsInfo[pickupid][pType], PickupsInfo[pickupid][pX], PickupsInfo[pickupid][pY], PickupsInfo[pickupid][pZ], virtualworld);
		if(pick != -1)
		{
			for(new i = GetPlayerPoolSize(); i != -1; --i)
			{
				if(IsPlayerConnected(i) && CreatorInfo[i][ucCameraMode])
				{
					if(CreatorInfo[i][ucSelectedPick] == pickupid) CreatorInfo[i][ucSelectedPick] = pick;
					if(CreatorInfo[i][ucHoldingPick] == pickupid) CreatorInfo[i][ucHoldingPick] = pick;
					if(CreatorInfo[i][ucClickedPick] == pickupid) CreatorInfo[i][ucClickedPick] = pick;
				}
			}
			DestroyPickup(pickupid);
			return 1;
		}
	}
	return 0;
}

uc_SetPlayerCheckpoint(playerid, Float:x, Float:y, Float:z, Float:size)
{
	if(!SetPlayerCheckpoint(playerid, x, y, z, size)) return 0;
	if(CreatorInfo[playerid][ucCameraMode] && CreatorInfo[playerid][ucEditDialog]) ShowCreatorDialog(playerid, DIALOG_EDIT);
	return 1;
}

#if defined _ALS_SetPlayerCheckpoint
	#undef SetPlayerCheckpoint
#else
	#define _ALS_SetPlayerCheckpoint
#endif
#define SetPlayerCheckpoint uc_SetPlayerCheckpoint

SetCheckpoint(Float:x, Float:y, Float:z, Float:size)
{
	CheckpointInfo[cpCreated] = true;
	#if defined COLANDREAS
		if(!CA_RayCastLine(x, y, 700.0, x, y, -1000.0, CheckpointInfo[cpX], CheckpointInfo[cpY], CheckpointInfo[cpZ])) CheckpointInfo[cpZ] = z;
	#else
		CheckpointInfo[cpZ] = z;
	#endif
	CheckpointInfo[cpX] = x;
	CheckpointInfo[cpY] = y;
	CheckpointInfo[cpSize] = size;
	CheckpointInfo[cpSilentObj] = original_CreateObject(1317, x, y, CheckpointInfo[cpZ], 0.0, 0.0, 0.0);
	original_SetObjectMaterial(CheckpointInfo[cpSilentObj], 0, 0, "none", "none", 0);
	for(new i = GetPlayerPoolSize(); i != -1; --i) SetPlayerCheckpoint(i, x, y, z, size);
	return 1;
}

original_DisableCheckpoint()
{
	for(new i = GetPlayerPoolSize(); i != -1; --i) DisablePlayerCheckpoint(i);
	return 1;
}

uc_DisablePlayerCheckpoint(playerid)
{
	if(!DisablePlayerCheckpoint(playerid)) return 0;
	if(CreatorInfo[playerid][ucCameraMode])
	{
		if(CreatorInfo[playerid][ucEditDialog]) ShowCreatorDialog(playerid, DIALOG_EDIT);
		if(CreatorInfo[playerid][ucSelectedCp] == 1) CreatorInfo[playerid][ucSelectedCp] = 65535;
		if(CreatorInfo[playerid][ucHoldingCp] == 1) CreatorInfo[playerid][ucHoldingCp] = 65535;
		if(CreatorInfo[playerid][ucClickedCp] == 1) CreatorInfo[playerid][ucClickedCp] = 65535;
	}
	return 1;
}

#if defined _ALS_DisablePlayerCheckpoint
	#undef DisablePlayerCheckpoint
#else
	#define _ALS_DisablePlayerCheckpoint
#endif
#define DisablePlayerCheckpoint uc_DisablePlayerCheckpoint

DisableCheckpoint()
{
	CheckpointInfo[cpCreated] = false;
	original_DestroyObject(CheckpointInfo[cpSilentObj]);
	for(new i = GetPlayerPoolSize(); i != -1; --i) DisablePlayerCheckpoint(i);
	return 1;
}

UpdateCpPos(Float:x, Float:y, Float:z)
{
	if(CheckpointInfo[cpCreated])
	{
		original_DestroyObject(CheckpointInfo[cpSilentObj]);
		return SetCheckpoint(x, y, z, CheckpointInfo[cpSize]);
	}
	return 0;
}

UpdateCpSize(Float:size)
{
	if(CheckpointInfo[cpCreated])
	{
		original_DisableCheckpoint();
		original_DestroyObject(CheckpointInfo[cpSilentObj]);
		return SetCheckpoint(CheckpointInfo[cpX], CheckpointInfo[cpY], CheckpointInfo[cpZ], size);
	}
	return 0;
}

uc_SetPlayerRaceCheckpoint(playerid, type, Float:x, Float:y, Float:z, Float:nextx, Float:nexty, Float:nextz, Float:size)
{
	if(!SetPlayerRaceCheckpoint(playerid, type, x, y, z, nextx, nexty, nextz, size)) return 0;
	if(CreatorInfo[playerid][ucCameraMode] && CreatorInfo[playerid][ucEditDialog]) ShowCreatorDialog(playerid, DIALOG_EDIT);
	return 1;
}

#if defined _ALS_SetPlayerRaceCheckpoint
	#undef SetPlayerRaceCheckpoint
#else
	#define _ALS_SetPlayerRaceCheckpoint
#endif
#define SetPlayerRaceCheckpoint uc_SetPlayerRaceCheckpoint

SetRaceCheckpoint(type, Float:x, Float:y, Float:z, Float:nextx, Float:nexty, Float:nextz, Float:size)
{
	RaceCpInfo[rcpCreated] = true;
	RaceCpInfo[rcpType] = type;
	RaceCpInfo[rcpX] = x;
	RaceCpInfo[rcpY] = y;
	RaceCpInfo[rcpZ] = z;
	RaceCpInfo[rcpNextX] = nextx;
	RaceCpInfo[rcpNextY] = nexty;
	RaceCpInfo[rcpNextZ] = nextz;
	RaceCpInfo[rcpSize] = size;
	RaceCpInfo[rcpSilentObj] = original_CreateObject(1317, x, y, RaceCpInfo[rcpZ], 0.0, 0.0, 0.0);
	original_SetObjectMaterial(RaceCpInfo[rcpSilentObj], 0, 0, "none", "none", 0);
	for(new i = GetPlayerPoolSize(); i != -1; --i) SetPlayerRaceCheckpoint(i, type, x, y, z, nextx, nexty, nextz, size);
	return 1;
}

original_DisableRaceCheckpoint()
{
	for(new i = GetPlayerPoolSize(); i != -1; --i) DisablePlayerRaceCheckpoint(i);
	return 1;
}

uc_DisablePlayerRaceCheckpoint(playerid)
{
	if(!DisablePlayerRaceCheckpoint(playerid)) return 0;
	if(CreatorInfo[playerid][ucCameraMode])
	{
		if(CreatorInfo[playerid][ucEditDialog]) ShowCreatorDialog(playerid, DIALOG_EDIT);
		if(CreatorInfo[playerid][ucSelectedRcp] == 1) CreatorInfo[playerid][ucSelectedRcp] = 65535;
		if(CreatorInfo[playerid][ucHoldingRcp] == 1) CreatorInfo[playerid][ucHoldingRcp] = 65535;
		if(CreatorInfo[playerid][ucClickedRcp] == 1) CreatorInfo[playerid][ucClickedRcp] = 65535;
	}
	return 1;
}

#if defined _ALS_DisablePlayerRaceCheckpoin
	#undef DisablePlayerRaceCheckpoint
#else
	#define _ALS_DisablePlayerRaceCheckpoin
#endif
#define DisablePlayerRaceCheckpoint uc_DisablePlayerRaceCheckpoint

DisableRaceCheckpoint()
{
	RaceCpInfo[rcpCreated] = false;
	original_DestroyObject(RaceCpInfo[rcpSilentObj]);
	for(new i = GetPlayerPoolSize(); i != -1; --i) DisablePlayerRaceCheckpoint(i);
	return 1;
}

UpdateRcpType(type)
{
	if(RaceCpInfo[rcpCreated])
	{
		original_DestroyObject(RaceCpInfo[rcpSilentObj]);
		return SetRaceCheckpoint(type, RaceCpInfo[rcpX], RaceCpInfo[rcpY], RaceCpInfo[rcpZ], RaceCpInfo[rcpNextX], RaceCpInfo[rcpNextY], RaceCpInfo[rcpNextZ], RaceCpInfo[rcpSize]);
	}
	return 0;
}

UpdateRcpPos(Float:x, Float:y, Float:z)
{
	if(RaceCpInfo[rcpCreated])
	{
		original_DestroyObject(RaceCpInfo[rcpSilentObj]);
		return SetRaceCheckpoint(RaceCpInfo[rcpType], x, y, z, RaceCpInfo[rcpNextX], RaceCpInfo[rcpNextY], RaceCpInfo[rcpNextZ], RaceCpInfo[rcpSize]);
	}
	return 0;
}

UpdateRcpNextPos(Float:nextx, Float:nexty, Float:nextz)
{
	if(RaceCpInfo[rcpCreated])
	{
		original_DestroyObject(RaceCpInfo[rcpSilentObj]);
		return SetRaceCheckpoint(RaceCpInfo[rcpType], RaceCpInfo[rcpX], RaceCpInfo[rcpY], RaceCpInfo[rcpZ], nextx, nexty, nextz, RaceCpInfo[rcpSize]);
	}
	return 0;
}

UpdateRcpSize(Float:size)
{
	if(RaceCpInfo[rcpCreated])
	{
		original_DisableRaceCheckpoint();
		original_DestroyObject(RaceCpInfo[rcpSilentObj]);
		return SetRaceCheckpoint(RaceCpInfo[rcpType], RaceCpInfo[rcpX], RaceCpInfo[rcpY], RaceCpInfo[rcpZ], RaceCpInfo[rcpNextX], RaceCpInfo[rcpNextY], RaceCpInfo[rcpNextZ], size);
	}
	return 0;
}

original_SetPlayerMapIcon(playerid, iconid, Float:x, Float:y, Float:z, markertype, color, style)
	return SetPlayerMapIcon(playerid, iconid, x, y, z, markertype, color, style);

uc_SetPlayerMapIcon(playerid, iconid, Float:x, Float:y, Float:z, markertype, color, style)
{
	if(!SetPlayerMapIcon(playerid, iconid, x, y, z, markertype, color, style)) return 0;
	if(CreatorInfo[playerid][ucCameraMode] && CreatorInfo[playerid][ucEditDialog]) ShowCreatorDialog(playerid, DIALOG_EDIT);
	return 1;
}

#if defined _ALS_SetPlayerMapIcon
	#undef SetPlayerMapIcon
#else
	#define _ALS_SetPlayerMapIcon
#endif
#define SetPlayerMapIcon uc_SetPlayerMapIcon

SetMapIcon(iconid, Float:x, Float:y, Float:z, markertype, color, style)
{
	IconsInfo[iconid][iCreated] = true;
	IconsInfo[iconid][iX] = x;
	IconsInfo[iconid][iY] = y;
	IconsInfo[iconid][iZ] = z;
	IconsInfo[iconid][iColor] = color;
	IconsInfo[iconid][iStyle] = style;
	IconsInfo[iconid][iType] = markertype;
	for(new i = GetPlayerPoolSize(); i != -1; --i) SetPlayerMapIcon(i, iconid, x, y, z, markertype, color, style);
	return 1;
}

original_RemovePlayerMapIcon(playerid, iconid) return RemovePlayerMapIcon(playerid, iconid);

uc_RemovePlayerMapIcon(playerid, iconid)
{
	if(!RemovePlayerMapIcon(playerid, iconid)) return 0;
	if(CreatorInfo[playerid][ucCameraMode])
	{
		if(CreatorInfo[playerid][ucEditDialog]) ShowCreatorDialog(playerid, DIALOG_EDIT);
		if(CreatorInfo[playerid][ucSelectedIco] == iconid) CreatorInfo[playerid][ucSelectedIco] = 65535;
		if(CreatorInfo[playerid][ucClickedIco] == iconid) CreatorInfo[playerid][ucClickedIco] = 65535;
	}
	return 1;
}

#if defined _ALS_RemovePlayerMapIcon
	#undef RemovePlayerMapIcon
#else
	#define _ALS_RemovePlayerMapIcon
#endif
#define RemovePlayerMapIcon uc_RemovePlayerMapIcon

RemoveMapIcon(iconid)
{
	IconsInfo[iconid][iCreated] = false;
	for(new i = GetPlayerPoolSize(); i != -1; --i) RemovePlayerMapIcon(i, iconid);
	return 1;
}

UpdateMapIconPos(iconid, Float:x, Float:y, Float:z)
{
	if(-1 < iconid < MAX_MAPICONS && IconsInfo[iconid][iCreated])
	{
		IconsInfo[iconid][iX] = x;
		IconsInfo[iconid][iY] = y;
		IconsInfo[iconid][iZ] = z;
		for(new i = GetPlayerPoolSize(); i != -1; --i)
		{
			if(IsPlayerConnected(i))
			{
				original_RemovePlayerMapIcon(i, iconid);
				original_SetPlayerMapIcon(i, iconid, x, y, z, IconsInfo[iconid][iType], IconsInfo[iconid][iColor], IconsInfo[iconid][iStyle]);
			}
		}
		return 1;
	}
	return 0;
}

UpdateMapIconColor(iconid, color)
{
	if(-1 < iconid < MAX_MAPICONS && IconsInfo[iconid][iCreated])
	{
		IconsInfo[iconid][iColor] = color;
		for(new i = GetPlayerPoolSize(); i != -1; --i)
		{
			if(IsPlayerConnected(i))
			{
				original_RemovePlayerMapIcon(i, iconid);
				original_SetPlayerMapIcon(i, iconid, IconsInfo[iconid][iX], IconsInfo[iconid][iY], IconsInfo[iconid][iZ], IconsInfo[iconid][iType], color, IconsInfo[iconid][iStyle]);
			}
		}
		return 1;
	}
	return 0;
}

UpdateMapIconStyle(iconid, style)
{
	if(-1 < iconid < MAX_MAPICONS && IconsInfo[iconid][iCreated])
	{
		IconsInfo[iconid][iStyle] = style;
		for(new i = GetPlayerPoolSize(); i != -1; --i)
		{
			if(IsPlayerConnected(i))
			{
				original_RemovePlayerMapIcon(i, iconid);
				original_SetPlayerMapIcon(i, iconid, IconsInfo[iconid][iX], IconsInfo[iconid][iY], IconsInfo[iconid][iZ], IconsInfo[iconid][iType], IconsInfo[iconid][iColor], style);
			}
		}
		return 1;
	}
	return 0;
}

uc_GangZoneCreate(Float:minx, Float:miny, Float:maxx, Float:maxy)
{
	new zone = GangZoneCreate(minx, miny, maxx, maxy);
	if(zone != INVALID_GANG_ZONE)
	{
		ZonesInfo[zone][gCreated] = true;
		ZonesInfo[zone][gMinX] = minx;
		ZonesInfo[zone][gMinY] = miny;
		ZonesInfo[zone][gMaxX] = maxx;
		ZonesInfo[zone][gMaxY] = maxy;
		ZonesInfo[zone][gColor] = -1;
		for(new i = GetPlayerPoolSize(); i != -1; --i)
		{
			if(IsPlayerConnected(i) && CreatorInfo[i][ucEditDialog]) ShowCreatorDialog(i, DIALOG_EDIT);
		}
	}
	return zone;
}

#if defined _ALS_GangZoneCreate
	#undef GangZoneCreate
#else
	#define _ALS_GangZoneCreate
#endif
#define GangZoneCreate uc_GangZoneCreate

uc_GangZoneShowForAll(zone, color)
{
	if(!GangZoneShowForAll(zone, color)) return 0;
	if(ZonesInfo[zone][gCreated]) ZonesInfo[zone][gColor] = color;
	return 1;
}

#if defined _ALS_GangZoneShowForAll
	#undef GangZoneShowForAll
#else
	#define _ALS_GangZoneShowForAll
#endif
#define GangZoneShowForAll uc_GangZoneShowForAll

uc_GangZoneDestroy(zone)
{
	if(-1 < zone < MAX_GANG_ZONES && ZonesInfo[zone][gCreated])
	{
		ZonesInfo[zone][gCreated] = false;
		for(new i = GetPlayerPoolSize(); i != -1; --i)
		{
			if(IsPlayerConnected(i) && CreatorInfo[i][ucCameraMode])
			{
				if(CreatorInfo[i][ucEditDialog]) ShowCreatorDialog(i, DIALOG_EDIT);
				if(CreatorInfo[i][ucSelectedGzn] == zone) CreatorInfo[i][ucSelectedGzn] = 65535;
				if(CreatorInfo[i][ucClickedGzn] == zone) CreatorInfo[i][ucClickedGzn] = 65535;
			}
		}
	}
	return GangZoneDestroy(zone);
}

#if defined _ALS_GangZoneDestroy
	#undef GangZoneDestroy
#else
	#define _ALS_GangZoneDestroy
#endif
#define GangZoneDestroy uc_GangZoneDestroy

UpdateGangZonePos(zone, Float:minx, Float:miny, Float:maxx, Float:maxy)
{
	if(-1 < zone < MAX_GANG_ZONES && ZonesInfo[zone][gCreated])
	{
		new gzone = GangZoneCreate(minx, miny, maxx, maxy);
		GangZoneHideForAll(zone);
		if(gzone != INVALID_GANG_ZONE)
		{
			GangZoneShowForAll(gzone, ZonesInfo[zone][gColor]);
			for(new i = GetPlayerPoolSize(); i != -1; --i)
			{
				if(IsPlayerConnected(i) && CreatorInfo[i][ucCameraMode])
				{
					if(CreatorInfo[i][ucSelectedGzn] == zone) CreatorInfo[i][ucSelectedGzn] = gzone;
					if(CreatorInfo[i][ucClickedGzn] == zone) CreatorInfo[i][ucClickedGzn] = gzone;
				}
			}
			GangZoneDestroy(zone);
			return 1;
		}
	}
	return 0;
}

UpdateGangZoneColor(zone, color)
{
	if(-1 < zone < MAX_GANG_ZONES && ZonesInfo[zone][gCreated])
	{
		GangZoneHideForAll(zone);
		GangZoneShowForAll(zone, color);
		return 1;
	}
	return 0;
}

uc_Create3DTextLabel(text[], color, Float:X, Float:Y, Float:Z, Float:DrawDistance, virtualworld, testLOS)
{
	if(!text[0]) return INVALID_3DTEXT_ID;
	new label = _:Create3DTextLabel(text, color, X, Y, Z, DrawDistance, virtualworld, testLOS);
	if(label != INVALID_3DTEXT_ID)
	{
		LabelsInfo[label][lCreated] = true;
		LabelsInfo[label][lX] = X;
		LabelsInfo[label][lY] = Y;
		LabelsInfo[label][lZ] = Z;
		LabelsInfo[label][lColor] = color;
		LabelsInfo[label][lTestLOS] = testLOS;
		LabelsInfo[label][lDrawDist] = DrawDistance;
		LabelsInfo[label][lSilentObj] = original_CreateObject(1239, X, Y, Z, 0.0, 0.0, 0.0);
		original_SetObjectMaterial(LabelsInfo[label][lSilentObj], 0, 0, "none", "none", 0);
		strcpy(LabelsInfo[label][lText], text, MAX_LABEL_TEXT_LENGTH);
		LabelsInfo[label][lVirtualWorld] = virtualworld;
		for(new i = GetPlayerPoolSize(); i != -1; --i)
		{
			if(IsPlayerConnected(i) && CreatorInfo[i][ucEditDialog]) ShowCreatorDialog(i, DIALOG_EDIT);
		}
	}
	return label;
}

#if defined _ALS_Create3DTextLabel
	#undef Create3DTextLabel
#else
	#define _ALS_Create3DTextLabel
#endif
#define Create3DTextLabel uc_Create3DTextLabel

uc_Update3DTextLabelText(id, color, text[])
{
	if(-1 < id < MAX_3DTEXT_GLOBAL && LabelsInfo[id][lCreated])
	{
		strcpy(LabelsInfo[id][lText], text, MAX_LABEL_TEXT_LENGTH);
		LabelsInfo[id][lColor] = color;
	}
	return Update3DTextLabelText(Text3D:id, color, text);
}

#if defined _ALS_Update3DTextLabelText
	#undef Update3DTextLabelText
#else
	#define _ALS_Update3DTextLabelText
#endif
#define Update3DTextLabelText uc_Update3DTextLabelText

uc_Delete3DTextLabel(id)
{
	if(!Delete3DTextLabel(Text3D:id)) return 0;
	LabelsInfo[id][lCreated] = false;
	original_DestroyObject(LabelsInfo[id][lSilentObj]);
	for(new i = GetPlayerPoolSize(); i != -1; --i)
	{
		if(IsPlayerConnected(i) && CreatorInfo[i][ucCameraMode])
		{
			if(CreatorInfo[i][ucEditDialog]) ShowCreatorDialog(i, DIALOG_EDIT);
			if(CreatorInfo[i][ucSelectedLab] == id) CreatorInfo[i][ucSelectedLab] = 65535;
			if(CreatorInfo[i][ucHoldingLab] == id) CreatorInfo[i][ucHoldingLab] = 65535;
			if(CreatorInfo[i][ucClickedLab] == id) CreatorInfo[i][ucClickedLab] = 65535;
		}
	}
	return 1;
}

#if defined _ALS_Delete3DTextLabel
	#undef Delete3DTextLabel
#else
	#define _ALS_Delete3DTextLabel
#endif
#define Delete3DTextLabel uc_Delete3DTextLabel

Update3DTextLabelPos(label, Float:X, Float:Y, Float:Z)
{
	if(-1 < label < MAX_3DTEXT_GLOBAL && LabelsInfo[label][lCreated])
	{
		new lab = Create3DTextLabel(LabelsInfo[label][lText], LabelsInfo[label][lColor], X, Y, Z, LabelsInfo[label][lDrawDist], LabelsInfo[label][lVirtualWorld], LabelsInfo[label][lTestLOS]);
		if(lab != INVALID_3DTEXT_ID)
		{
			for(new i = GetPlayerPoolSize(); i != -1; --i)
			{
				if(IsPlayerConnected(i) && CreatorInfo[i][ucCameraMode])
				{
					if(CreatorInfo[i][ucSelectedLab] == label) CreatorInfo[i][ucSelectedLab] = lab;
					if(CreatorInfo[i][ucHoldingLab] == label) CreatorInfo[i][ucHoldingLab] = lab;
					if(CreatorInfo[i][ucClickedLab] == label) CreatorInfo[i][ucClickedLab] = lab;
				}
			}
			Delete3DTextLabel(label);
			return 1;
		}
	}
	return 0;
}

Update3DTextLabelDrawDistance(label, Float:DrawDistance)
{
	if(-1 < label < MAX_3DTEXT_GLOBAL && LabelsInfo[label][lCreated])
	{
		new lab = Create3DTextLabel(LabelsInfo[label][lText], LabelsInfo[label][lColor], LabelsInfo[label][lX], LabelsInfo[label][lY], LabelsInfo[label][lZ], DrawDistance, LabelsInfo[label][lVirtualWorld], LabelsInfo[label][lTestLOS]);
		if(lab != INVALID_3DTEXT_ID)
		{
			for(new i = GetPlayerPoolSize(); i != -1; --i)
			{
				if(IsPlayerConnected(i) && CreatorInfo[i][ucCameraMode])
				{
					if(CreatorInfo[i][ucSelectedLab] == label) CreatorInfo[i][ucSelectedLab] = lab;
					if(CreatorInfo[i][ucHoldingLab] == label) CreatorInfo[i][ucHoldingLab] = lab;
					if(CreatorInfo[i][ucClickedLab] == label) CreatorInfo[i][ucClickedLab] = lab;
				}
			}
			Delete3DTextLabel(label);
			return 1;
		}
	}
	return 0;
}

Update3DTextLabelVirtualWorld(label, virtualworld)
{
	if(-1 < label < MAX_3DTEXT_GLOBAL && LabelsInfo[label][lCreated])
	{
		new lab = Create3DTextLabel(LabelsInfo[label][lText], LabelsInfo[label][lColor], LabelsInfo[label][lX], LabelsInfo[label][lY], LabelsInfo[label][lZ], LabelsInfo[label][lDrawDist], virtualworld, LabelsInfo[label][lTestLOS]);
		if(lab != INVALID_3DTEXT_ID)
		{
			for(new i = GetPlayerPoolSize(); i != -1; --i)
			{
				if(IsPlayerConnected(i) && CreatorInfo[i][ucCameraMode])
				{
					if(CreatorInfo[i][ucSelectedLab] == label) CreatorInfo[i][ucSelectedLab] = lab;
					if(CreatorInfo[i][ucHoldingLab] == label) CreatorInfo[i][ucHoldingLab] = lab;
					if(CreatorInfo[i][ucClickedLab] == label) CreatorInfo[i][ucClickedLab] = lab;
				}
			}
			Delete3DTextLabel(label);
			return 1;
		}
	}
	return 0;
}

Update3DTextLabelLOS(label, testLOS)
{
	if(-1 < label < MAX_3DTEXT_GLOBAL && LabelsInfo[label][lCreated])
	{
		new lab = Create3DTextLabel(LabelsInfo[label][lText], LabelsInfo[label][lColor], LabelsInfo[label][lX], LabelsInfo[label][lY], LabelsInfo[label][lZ], LabelsInfo[label][lDrawDist], LabelsInfo[label][lVirtualWorld], testLOS);
		if(lab != INVALID_3DTEXT_ID)
		{
			for(new i = GetPlayerPoolSize(); i != -1; --i)
			{
				if(IsPlayerConnected(i) && CreatorInfo[i][ucCameraMode])
				{
					if(CreatorInfo[i][ucSelectedLab] == label) CreatorInfo[i][ucSelectedLab] = lab;
					if(CreatorInfo[i][ucHoldingLab] == label) CreatorInfo[i][ucHoldingLab] = lab;
					if(CreatorInfo[i][ucClickedLab] == label) CreatorInfo[i][ucClickedLab] = lab;
				}
			}
			Delete3DTextLabel(label);
			return 1;
		}
	}
	return 0;
}

public OnFilterScriptInit()
{
	#if defined COLANDREAS
		CA_Init();
	#endif
	AimPoint = TextDrawCreate(318.0, 211.5, ".");
	TextDrawBackgroundColor(AimPoint, 255);
	TextDrawFont(AimPoint, 1);
	TextDrawLetterSize(AimPoint, 0.5, 1.8);
	TextDrawColor(AimPoint, -1);
	TextDrawSetOutline(AimPoint, 0);
	TextDrawSetProportional(AimPoint, 1);
	TextDrawSetShadow(AimPoint, 0);
	for(new i = GetPlayerPoolSize(); i != -1; --i)
	{
		if(IsPlayerConnected(i))
		{
			EnablePlayerCameraTarget(i, 1);
			CreatorInfo[i][ucHoldInfo] = CreatePlayerTextDraw(i, 315.0, 315.0, "_");
			PlayerTextDrawLetterSize(i, CreatorInfo[i][ucHoldInfo], 0.35, 0.8);
			PlayerTextDrawBackgroundColor(i, CreatorInfo[i][ucHoldInfo], 255);
			PlayerTextDrawSetProportional(i, CreatorInfo[i][ucHoldInfo], 1);
			PlayerTextDrawSetOutline(i, CreatorInfo[i][ucHoldInfo], 0);
			PlayerTextDrawAlignment(i, CreatorInfo[i][ucHoldInfo], 2);
			PlayerTextDrawSetShadow(i, CreatorInfo[i][ucHoldInfo], 0);
			PlayerTextDrawColor(i, CreatorInfo[i][ucHoldInfo], -1);
			PlayerTextDrawFont(i, CreatorInfo[i][ucHoldInfo], 1);
			CreatorInfo[i][ucSelectedObj] = 65535;
			CreatorInfo[i][ucSelectedVeh] = 65535;
			CreatorInfo[i][ucSelectedAct] = 65535;
			CreatorInfo[i][ucSelectedPick] = 65535;
			CreatorInfo[i][ucSelectedCp] = 65535;
			CreatorInfo[i][ucSelectedRcp] = 65535;
			CreatorInfo[i][ucSelectedIco] = 65535;
			CreatorInfo[i][ucSelectedGzn] = 65535;
			CreatorInfo[i][ucSelectedLab] = 65535;
			CreatorInfo[i][ucHoldingObj] = 65535;
			CreatorInfo[i][ucHoldingVeh] = 65535;
			CreatorInfo[i][ucHoldingAct] = 65535;
			CreatorInfo[i][ucHoldingPick] = 65535;
			CreatorInfo[i][ucHoldingCp] = 65535;
			CreatorInfo[i][ucHoldingRcp] = 65535;
			CreatorInfo[i][ucHoldingLab] = 65535;
		}
	}
	print("\n\t-------------------------");
	printf("Ultimate Creator v%s by Nexius loaded!", CREATOR_VERSION);
	print("\t-------------------------\n");
	return 1;
}

public OnFilterScriptExit()
{
	if(!IsEmptyMap())
	{
		static strtmp[MAX_MAPNAME_LENGTH];
		new year, month, day, hour, minute, sec;
		getdate(year, month, day);
		gettime(hour, minute, sec);
		format(strtmp, sizeof strtmp, "%02d-%02d-%d_%02d-%02d-%02d.txt", day, month, year, hour, minute, sec);
		SaveCreatorMap(strtmp);
		ClearMap();
	}
	TextDrawDestroy(AimPoint);
	for(new i = GetPlayerPoolSize(); i != -1; --i)
	{
		if(IsPlayerConnected(i))
		{
			PlayerTextDrawDestroy(i, CreatorInfo[i][ucHoldInfo]);
			if(CreatorInfo[i][ucCameraMode]) CancelFlyMode(i);
		}
	}
	print("\n\t-------------------------");
	printf("Ultimate Creator v%s by Nexius unloaded!", CREATOR_VERSION);
	print("\t-------------------------\n");
	return 1;
}

public OnPlayerConnect(playerid)
{
	EnablePlayerCameraTarget(playerid, 1);
	CreatorInfo[playerid][ucHoldInfo] = CreatePlayerTextDraw(playerid, 315.0, 315.0, "_");
	PlayerTextDrawLetterSize(playerid, CreatorInfo[playerid][ucHoldInfo], 0.35, 0.8);
	PlayerTextDrawBackgroundColor(playerid, CreatorInfo[playerid][ucHoldInfo], 255);
	PlayerTextDrawSetProportional(playerid, CreatorInfo[playerid][ucHoldInfo], 1);
	PlayerTextDrawSetOutline(playerid, CreatorInfo[playerid][ucHoldInfo], 0);
	PlayerTextDrawAlignment(playerid, CreatorInfo[playerid][ucHoldInfo], 2);
	PlayerTextDrawSetShadow(playerid, CreatorInfo[playerid][ucHoldInfo], 0);
	PlayerTextDrawColor(playerid, CreatorInfo[playerid][ucHoldInfo], -1);
	PlayerTextDrawFont(playerid, CreatorInfo[playerid][ucHoldInfo], 1);
	CreatorInfo[playerid][ucEditDialog] = false;
	CreatorInfo[playerid][ucCopyDefObj] = false;
	CreatorInfo[playerid][ucOldPos][0] = 0.0;
	CreatorInfo[playerid][ucOldPos][1] = 0.0;
	CreatorInfo[playerid][ucOldPos][2] = 0.0;
	CreatorInfo[playerid][ucOldAngle] = 0.0;
	CreatorInfo[playerid][ucFlyObject] = 0;
	return 1;
}

public OnPlayerSpawn(playerid)
{
	CreatorInfo[playerid][ucMode] = 0;
	CreatorInfo[playerid][ucLrOld] = 0;
	CreatorInfo[playerid][ucUdOld] = 0;
	CreatorInfo[playerid][ucAccelMul] = 0.0;
	CreatorInfo[playerid][ucCameraMode] = false;
	CreatorInfo[playerid][ucSelectedObj] = 65535;
	CreatorInfo[playerid][ucSelectedVeh] = 65535;
	CreatorInfo[playerid][ucSelectedAct] = 65535;
	CreatorInfo[playerid][ucSelectedPick] = 65535;
	CreatorInfo[playerid][ucSelectedCp] = 65535;
	CreatorInfo[playerid][ucSelectedRcp] = 65535;
	CreatorInfo[playerid][ucSelectedIco] = 65535;
	CreatorInfo[playerid][ucSelectedGzn] = 65535;
	CreatorInfo[playerid][ucSelectedLab] = 65535;
	CreatorInfo[playerid][ucHoldingObj] = 65535;
	CreatorInfo[playerid][ucHoldingVeh] = 65535;
	CreatorInfo[playerid][ucHoldingAct] = 65535;
	CreatorInfo[playerid][ucHoldingPick] = 65535;
	CreatorInfo[playerid][ucHoldingCp] = 65535;
	CreatorInfo[playerid][ucHoldingRcp] = 65535;
	CreatorInfo[playerid][ucHoldingLab] = 65535;
	PlayerTextDrawHide(playerid, CreatorInfo[playerid][ucHoldInfo]);
	DestroyPlayerObject(playerid, CreatorInfo[playerid][ucFlyObject]);
	SetTimerEx("CreatorSpawn", DELAY_AFTER_SPAWN, 0, "i", playerid);
	CreatorInfo[playerid][ucFlyObject] = 0;
	return 1;
}

public OnPlayerCommandText(playerid, cmdtext[])
{
	dcmd2(edit, 4, cmdtext);
	return 0;
}

public OnPlayerUpdate(playerid)
{
	if(CreatorInfo[playerid][ucCameraMode])
	{
		new obj = GetPlayerCameraTargetObject(playerid),
		veh = GetPlayerCameraTargetVehicle(playerid),
		act = GetPlayerCameraTargetActor(playerid),
		Float:PX, Float:PY, Float:PZ,
		Float:VX, Float:VY, Float:VZ,
		keys, ud, lr;
		GetPlayerKeys(playerid, keys, ud, lr);
		if(CreatorInfo[playerid][ucHoldingObj] != 65535)
		{
			new
				#if defined COLANDREAS
					Float:cX, Float:cY, Float:cZ,
					Float:rX, Float:rY, Float:rZ,
					Float:dZ, Float:tmp,
				#endif
				Float:obj_x, Float:obj_y, Float:obj_z, Float:dist;
			GetPlayerCameraPos(playerid, PX, PY, PZ);
			GetPlayerCameraFrontVector(playerid, VX, VY, VZ);
			#if defined COLANDREAS
				CA_GetModelBoundingSphere(GetObjectModel(CreatorInfo[playerid][ucHoldingObj]), tmp, tmp, dZ, dist);
			#endif
			dist += DIST_FROM_CAMERA;
			obj_x = PX + floatmul(VX, dist);
			obj_y = PY + floatmul(VY, dist);
			obj_z = PZ + floatmul(VZ, dist);
			#if defined COLANDREAS
				if(CA_RayCastLineAngle(PX, PY, PZ, obj_x, obj_y, obj_z, cX, cY, cZ, rX, rY, rZ))
				{
					SetObjectPos(CreatorInfo[playerid][ucHoldingObj], cX, cY, (cZ + (dZ / 1.9)));
					if(keys & KEY_WALK && keys & KEY_JUMP) GetObjectRot(CreatorInfo[playerid][ucHoldingObj], obj_x, obj_y, rZ);
					else GetObjectRot(CreatorInfo[playerid][ucHoldingObj], rX, rY, rZ);
					SetObjectRot(CreatorInfo[playerid][ucHoldingObj], rX, rY, rZ);
				}
				else
				{
			#endif
				SetObjectPos(CreatorInfo[playerid][ucHoldingObj], obj_x, obj_y, obj_z);
			#if defined COLANDREAS
				}
			#endif
		}
		else if(CreatorInfo[playerid][ucHoldingVeh] != 65535)
		{
			new
				#if defined COLANDREAS
					Float:vfX, Float:vfY, Float:vfZ,
				#endif
				Float:veh_x, Float:veh_y, Float:veh_z;
			GetPlayerCameraPos(playerid, PX, PY, PZ);
			GetPlayerCameraFrontVector(playerid, VX, VY, VZ);
			veh_x = PX + floatmul(VX, DIST_FROM_CAMERA);
			veh_y = PY + floatmul(VY, DIST_FROM_CAMERA);
			veh_z = PZ + floatmul(VZ, DIST_FROM_CAMERA);
			#if defined COLANDREAS
				if(CA_RayCastLine(PX, PY, PZ, veh_x, veh_y, veh_z, vfX, vfY, vfZ))
				{
					GetVehicleModelInfo(GetVehicleModel(CreatorInfo[playerid][ucHoldingVeh]), VEHICLE_MODEL_INFO_SIZE, veh_x, veh_y, veh_z);
					SetVehiclePos(CreatorInfo[playerid][ucHoldingVeh], vfX, vfY, (vfZ + ((veh_z / 1.9) * (veh_z < 1.0 ? 10.0 : 1.0))));
				}
				else
				{
			#endif
				SetVehiclePos(CreatorInfo[playerid][ucHoldingVeh], veh_x, veh_y, veh_z);
			#if defined COLANDREAS
				}
			#endif
		}
		else if(CreatorInfo[playerid][ucHoldingAct] != 65535)
		{
			new
				#if defined COLANDREAS
					Float:vfX, Float:vfY, Float:vfZ,
				#endif
				Float:act_x, Float:act_y, Float:act_z;
			GetPlayerCameraPos(playerid, PX, PY, PZ);
			GetPlayerCameraFrontVector(playerid, VX, VY, VZ);
			act_x = PX + floatmul(VX, DIST_FROM_CAMERA);
			act_y = PY + floatmul(VY, DIST_FROM_CAMERA);
			act_z = PZ + floatmul(VZ, DIST_FROM_CAMERA);
			#if defined COLANDREAS
				if(CA_RayCastLine(PX, PY, PZ, act_x, act_y, act_z, vfX, vfY, vfZ)) SetActorPos(CreatorInfo[playerid][ucHoldingAct], vfX, vfY, vfZ + 0.3);
				else
				{
			#endif
				SetActorPos(CreatorInfo[playerid][ucHoldingAct], act_x, act_y, act_z);
			#if defined COLANDREAS
				}
			#endif
		}
		else if(CreatorInfo[playerid][ucHoldingPick] != 65535)
		{
			new
				#if defined COLANDREAS
					Float:vfX, Float:vfY, Float:vfZ,
				#endif
				Float:pick_x, Float:pick_y, Float:pick_z;
			GetPlayerCameraPos(playerid, PX, PY, PZ);
			GetPlayerCameraFrontVector(playerid, VX, VY, VZ);
			pick_x = PX + floatmul(VX, DIST_FROM_CAMERA);
			pick_y = PY + floatmul(VY, DIST_FROM_CAMERA);
			pick_z = PZ + floatmul(VZ, DIST_FROM_CAMERA);
			#if defined COLANDREAS
				if(CA_RayCastLine(PX, PY, PZ, pick_x, pick_y, pick_z, vfX, vfY, vfZ)) UpdatePickupPos(CreatorInfo[playerid][ucHoldingPick], vfX, vfY, vfZ);
				else
				{
			#endif
				UpdatePickupPos(CreatorInfo[playerid][ucHoldingPick], pick_x, pick_y, pick_z);
			#if defined COLANDREAS
				}
			#endif
		}
		else if(CreatorInfo[playerid][ucHoldingCp] != 65535)
		{
			new
				#if defined COLANDREAS
					Float:vfX, Float:vfY, Float:vfZ,
				#endif
				Float:cp_x, Float:cp_y, Float:cp_z;
			GetPlayerCameraPos(playerid, PX, PY, PZ);
			GetPlayerCameraFrontVector(playerid, VX, VY, VZ);
			cp_x = PX + floatmul(VX, DIST_FROM_CAMERA);
			cp_y = PY + floatmul(VY, DIST_FROM_CAMERA);
			cp_z = PZ + floatmul(VZ, DIST_FROM_CAMERA);
			#if defined COLANDREAS
				if(CA_RayCastLine(PX, PY, PZ, cp_x, cp_y, cp_z, vfX, vfY, vfZ)) UpdateCpPos(vfX, vfY, vfZ);
				else
				{
			#endif
				UpdateCpPos(cp_x, cp_y, cp_z);
			#if defined COLANDREAS
				}
			#endif
		}
		else if(CreatorInfo[playerid][ucHoldingRcp] != 65535)
		{
			new
				#if defined COLANDREAS
					Float:vfX, Float:vfY, Float:vfZ,
				#endif
				Float:rcp_x, Float:rcp_y, Float:rcp_z;
			GetPlayerCameraPos(playerid, PX, PY, PZ);
			GetPlayerCameraFrontVector(playerid, VX, VY, VZ);
			rcp_x = PX + floatmul(VX, DIST_FROM_CAMERA);
			rcp_y = PY + floatmul(VY, DIST_FROM_CAMERA);
			rcp_z = PZ + floatmul(VZ, DIST_FROM_CAMERA);
			#if defined COLANDREAS
				if(CA_RayCastLine(PX, PY, PZ, rcp_x, rcp_y, rcp_z, vfX, vfY, vfZ)) UpdateRcpPos(vfX, vfY, vfZ);
				else
				{
			#endif
				UpdateRcpPos(rcp_x, rcp_y, rcp_z);
			#if defined COLANDREAS
				}
			#endif
		}
		else if(CreatorInfo[playerid][ucHoldingLab] != 65535)
		{
			new
				#if defined COLANDREAS
					Float:vfX, Float:vfY, Float:vfZ,
				#endif
				Float:lab_x, Float:lab_y, Float:lab_z;
			GetPlayerCameraPos(playerid, PX, PY, PZ);
			GetPlayerCameraFrontVector(playerid, VX, VY, VZ);
			lab_x = PX + floatmul(VX, DIST_FROM_CAMERA);
			lab_y = PY + floatmul(VY, DIST_FROM_CAMERA);
			lab_z = PZ + floatmul(VZ, DIST_FROM_CAMERA);
			#if defined COLANDREAS
				if(CA_RayCastLine(PX, PY, PZ, lab_x, lab_y, lab_z, vfX, vfY, vfZ)) Update3DTextLabelPos(CreatorInfo[playerid][ucHoldingLab], vfX, vfY, vfZ);
				else
				{
			#endif
				Update3DTextLabelPos(CreatorInfo[playerid][ucHoldingLab], lab_x, lab_y, lab_z);
			#if defined COLANDREAS
				}
			#endif
		}
		if(CreatorInfo[playerid][ucSelectedObj] != 65535)
		{
			static strtmp[64];
			GetObjectPos(CreatorInfo[playerid][ucSelectedObj], PX, PY, PZ);
			GetObjectRot(CreatorInfo[playerid][ucSelectedObj], VX, VY, VZ);
			GetSelectedObjectNextPos(keys, lr, ud, PX, PY, PZ, VX, VY, VZ);
			SetObjectPos(CreatorInfo[playerid][ucSelectedObj], PX, PY, PZ, true);
			SetObjectRot(CreatorInfo[playerid][ucSelectedObj], VX, VY, VZ, true);
			if(keys & KEY_FIRE) format(strtmp, sizeof strtmp, "Object %d (id %d)~n~x: %.4f, y: %.4f, z: %.4f", ObjectsInfo[CreatorInfo[playerid][ucSelectedObj]][oModelid], CreatorInfo[playerid][ucSelectedObj], VX, VY, VZ);
			else format(strtmp, sizeof strtmp, "Object %d (id %d)~n~x: %.4f, y: %.4f, z: %.4f", ObjectsInfo[CreatorInfo[playerid][ucSelectedObj]][oModelid], CreatorInfo[playerid][ucSelectedObj], PX, PY, PZ);
			PlayerTextDrawSetString(playerid, CreatorInfo[playerid][ucHoldInfo], strtmp);
			PlayerTextDrawShow(playerid, CreatorInfo[playerid][ucHoldInfo]);
		}
		else if(CreatorInfo[playerid][ucSelectedVeh] != 65535)
		{
			static strtmp[64];
			GetVehiclePos(CreatorInfo[playerid][ucSelectedVeh], PX, PY, PZ);
			GetVehicleZAngle(CreatorInfo[playerid][ucSelectedVeh], VZ);
			GetSelectedVehicleNextPos(keys, lr, ud, PX, PY, PZ, VZ);
			SetVehiclePos(CreatorInfo[playerid][ucSelectedVeh], PX, PY, PZ);
			SetVehicleZAngle(CreatorInfo[playerid][ucSelectedVeh], VZ);
			if(keys & KEY_FIRE) format(strtmp, sizeof strtmp, "Vehicle %d (id %d)~n~z: %.4f", VehiclesInfo[CreatorInfo[playerid][ucSelectedVeh]][vModelid], CreatorInfo[playerid][ucSelectedVeh], VZ);
			else format(strtmp, sizeof strtmp, "Vehicle %d (id %d)~n~x: %.4f, y: %.4f, z: %.4f", VehiclesInfo[CreatorInfo[playerid][ucSelectedVeh]][vModelid], CreatorInfo[playerid][ucSelectedVeh], PX, PY, PZ);
			PlayerTextDrawSetString(playerid, CreatorInfo[playerid][ucHoldInfo], strtmp);
			PlayerTextDrawShow(playerid, CreatorInfo[playerid][ucHoldInfo]);
		}
		else if(CreatorInfo[playerid][ucSelectedAct] != 65535)
		{
			static strtmp[64];
			GetActorPos(CreatorInfo[playerid][ucSelectedAct], PX, PY, PZ);
			GetActorFacingAngle(CreatorInfo[playerid][ucSelectedAct], VZ);
			GetSelectedActorNextPos(keys, lr, ud, PX, PY, PZ, VZ);
			SetActorPos(CreatorInfo[playerid][ucSelectedAct], PX, PY, PZ);
			SetActorFacingAngle(CreatorInfo[playerid][ucSelectedAct], VZ);
			if(keys & KEY_FIRE) format(strtmp, sizeof strtmp, "Actor %d (id %d)~n~z: %.4f", ActorsInfo[CreatorInfo[playerid][ucSelectedAct]][aModelid], CreatorInfo[playerid][ucSelectedAct], VZ);
			else format(strtmp, sizeof strtmp, "Actor %d (id %d)~n~x: %.4f, y: %.4f, z: %.4f", ActorsInfo[CreatorInfo[playerid][ucSelectedAct]][aModelid], CreatorInfo[playerid][ucSelectedAct], PX, PY, PZ);
			PlayerTextDrawSetString(playerid, CreatorInfo[playerid][ucHoldInfo], strtmp);
			PlayerTextDrawShow(playerid, CreatorInfo[playerid][ucHoldInfo]);
		}
		else if(CreatorInfo[playerid][ucSelectedPick] != 65535)
		{
			static strtmp[64];
			PX = PickupsInfo[CreatorInfo[playerid][ucSelectedPick]][pX];
			PY = PickupsInfo[CreatorInfo[playerid][ucSelectedPick]][pY];
			PZ = PickupsInfo[CreatorInfo[playerid][ucSelectedPick]][pZ];
			GetSelectedPickupNextPos(keys, lr, ud, PX, PY, PZ);
			UpdatePickupPos(CreatorInfo[playerid][ucSelectedPick], PX, PY, PZ);
			format(strtmp, sizeof strtmp, "Pickup %d (id %d)~n~x: %.4f, y: %.4f, z: %.4f", PickupsInfo[CreatorInfo[playerid][ucSelectedPick]][pModelid], CreatorInfo[playerid][ucSelectedPick], PX, PY, PZ);
			PlayerTextDrawSetString(playerid, CreatorInfo[playerid][ucHoldInfo], strtmp);
			PlayerTextDrawShow(playerid, CreatorInfo[playerid][ucHoldInfo]);
		}
		else if(CreatorInfo[playerid][ucSelectedCp] != 65535)
		{
			static strtmp[64];
			PX = CheckpointInfo[cpX];
			PY = CheckpointInfo[cpY];
			PZ = CheckpointInfo[cpZ];
			GetSelectedCheckPointNextPos(keys, lr, ud, PX, PY, PZ);
			UpdateCpPos(PX, PY, PZ);
			format(strtmp, sizeof strtmp, "Checkpoint (id %d)~n~x: %.4f, y: %.4f, z: %.4f", CreatorInfo[playerid][ucSelectedCp], PX, PY, PZ);
			PlayerTextDrawSetString(playerid, CreatorInfo[playerid][ucHoldInfo], strtmp);
			PlayerTextDrawShow(playerid, CreatorInfo[playerid][ucHoldInfo]);
		}
		else if(CreatorInfo[playerid][ucSelectedRcp] != 65535)
		{
			static strtmp[64];
			PX = RaceCpInfo[rcpX];
			PY = RaceCpInfo[rcpY];
			PZ = RaceCpInfo[rcpZ];
			GetSelectedRaceCpNextPos(keys, lr, ud, PX, PY, PZ);
			UpdateRcpPos(PX, PY, PZ);
			format(strtmp, sizeof strtmp, "Race checkpoint (id %d)~n~x: %.4f, y: %.4f, z: %.4f", CreatorInfo[playerid][ucSelectedRcp], PX, PY, PZ);
			PlayerTextDrawSetString(playerid, CreatorInfo[playerid][ucHoldInfo], strtmp);
			PlayerTextDrawShow(playerid, CreatorInfo[playerid][ucHoldInfo]);
		}
		else if(CreatorInfo[playerid][ucSelectedIco] != 65535)
		{
			static strtmp[64];
			PX = IconsInfo[CreatorInfo[playerid][ucSelectedIco]][iX];
			PY = IconsInfo[CreatorInfo[playerid][ucSelectedIco]][iY];
			PZ = IconsInfo[CreatorInfo[playerid][ucSelectedIco]][iZ];
			GetSelectedIconNextPos(keys, lr, ud, PX, PY, PZ);
			UpdateMapIconPos(CreatorInfo[playerid][ucSelectedIco], PX, PY, PZ);
			format(strtmp, sizeof strtmp, "Map icon %d (id %d)~n~x: %.4f, y: %.4f, z: %.4f", IconsInfo[CreatorInfo[playerid][ucSelectedIco]][iType], CreatorInfo[playerid][ucSelectedIco], PX, PY, PZ);
			PlayerTextDrawSetString(playerid, CreatorInfo[playerid][ucHoldInfo], strtmp);
			PlayerTextDrawShow(playerid, CreatorInfo[playerid][ucHoldInfo]);
		}
		else if(CreatorInfo[playerid][ucSelectedGzn] != 65535)
		{
			static strtmp[128];
			PX = ZonesInfo[CreatorInfo[playerid][ucSelectedGzn]][gMinX];
			PY = ZonesInfo[CreatorInfo[playerid][ucSelectedGzn]][gMinY];
			VX = ZonesInfo[CreatorInfo[playerid][ucSelectedGzn]][gMaxX];
			VY = ZonesInfo[CreatorInfo[playerid][ucSelectedGzn]][gMaxY];
			GetSelectedZoneNextPos(keys, lr, ud, PX, PY, VX, VY);
			UpdateGangZonePos(CreatorInfo[playerid][ucSelectedGzn], PX, PY, VX, VY);
			format(strtmp, sizeof strtmp, "Gang zone (id %d)~n~min x: %.4f, min y: %.4f,~n~max x: %.4f, max y: %.4f", CreatorInfo[playerid][ucSelectedGzn], PX, PY, VX, VY);
			PlayerTextDrawSetString(playerid, CreatorInfo[playerid][ucHoldInfo], strtmp);
			PlayerTextDrawShow(playerid, CreatorInfo[playerid][ucHoldInfo]);
		}
		else if(CreatorInfo[playerid][ucSelectedLab] != 65535)
		{
			static strtmp[64];
			PX = LabelsInfo[CreatorInfo[playerid][ucSelectedLab]][lX];
			PY = LabelsInfo[CreatorInfo[playerid][ucSelectedLab]][lY];
			PZ = LabelsInfo[CreatorInfo[playerid][ucSelectedLab]][lZ];
			GetSelectedLabelNextPos(keys, lr, ud, PX, PY, PZ);
			Update3DTextLabelPos(CreatorInfo[playerid][ucSelectedLab], PX, PY, PZ);
			format(strtmp, sizeof strtmp, "3D text (id %d)~n~x: %.4f, y: %.4f, z: %.4f", CreatorInfo[playerid][ucSelectedLab], PX, PY, PZ);
			PlayerTextDrawSetString(playerid, CreatorInfo[playerid][ucHoldInfo], strtmp);
			PlayerTextDrawShow(playerid, CreatorInfo[playerid][ucHoldInfo]);
		}
		else
		{
			if(obj != 65535)
			{
				static strtmp[64];
				new i, pid = -1, lid = -1;
				GetObjectPos(obj, PX, PY, PZ);
				for(i = MAX_PICKUPS - 1; i != -1; --i)
				{
					if(PickupsInfo[i][pCreated] && PickupsInfo[i][pSilentObj] == obj)
					{
						pid = i;
						break;
					}
				}
				if(pid != -1) format(strtmp, sizeof strtmp, "Pickup %d (id %d)~n~x: %.4f, y: %.4f, z: %.4f", PickupsInfo[pid][pModelid], pid, PX, PY, PZ);
				else
				{
					for(i = MAX_3DTEXT_GLOBAL - 1; i != -1; --i)
					{
						if(LabelsInfo[i][lCreated] && LabelsInfo[i][lSilentObj] == obj)
						{
							lid = i;
							break;
						}
					}
					if(lid != -1) format(strtmp, sizeof strtmp, "3D text (id %d)~n~x: %.4f, y: %.4f, z: %.4f", lid, PX, PY, PZ);
					else if(CheckpointInfo[cpCreated] && CheckpointInfo[cpSilentObj] == obj) format(strtmp, sizeof strtmp, "Checkpoint (id %d)~n~x: %.4f, y: %.4f, z: %.4f", 1, PX, PY, PZ);
					else if(RaceCpInfo[rcpCreated] && RaceCpInfo[rcpSilentObj] == obj) format(strtmp, sizeof strtmp, "Race checkpoint (id %d)~n~x: %.4f, y: %.4f, z: %.4f", 1, PX, PY, PZ);
					else format(strtmp, sizeof strtmp, "Object %d (id %d)~n~x: %.4f, y: %.4f, z: %.4f", ObjectsInfo[obj][oModelid], obj, PX, PY, PZ);
				}
				PlayerTextDrawSetString(playerid, CreatorInfo[playerid][ucHoldInfo], strtmp);
				PlayerTextDrawShow(playerid, CreatorInfo[playerid][ucHoldInfo]);
			}
			else if(veh != 65535)
			{
				static strtmp[64];
				GetVehiclePos(veh, PX, PY, PZ);
				format(strtmp, sizeof strtmp, "Vehicle %d (id %d)~n~x: %.4f, y: %.4f, z: %.4f", VehiclesInfo[veh][vModelid], veh, PX, PY, PZ);
				PlayerTextDrawSetString(playerid, CreatorInfo[playerid][ucHoldInfo], strtmp);
				PlayerTextDrawShow(playerid, CreatorInfo[playerid][ucHoldInfo]);
			}
			else if(act != 65535)
			{
				static strtmp[64];
				GetActorPos(act, PX, PY, PZ);
				format(strtmp, sizeof strtmp, "Actor %d (id %d)~n~x: %.4f, y: %.4f, z: %.4f", ActorsInfo[act][aModelid], act, PX, PY, PZ);
				PlayerTextDrawSetString(playerid, CreatorInfo[playerid][ucHoldInfo], strtmp);
				PlayerTextDrawShow(playerid, CreatorInfo[playerid][ucHoldInfo]);
			}
			else
			{
				#if defined COLANDREAS
					if(CreatorInfo[playerid][ucCopyDefObj])
					{
						new Float:dobj_x, Float:dobj_y, Float:dobj_z, Float:tmp, dmodel;
						GetPlayerCameraPos(playerid, PX, PY, PZ);
						GetPlayerCameraFrontVector(playerid, VX, VY, VZ);
						dobj_x = PX + floatmul(VX, DIST_FROM_CAMERA * 10);
						dobj_y = PY + floatmul(VY, DIST_FROM_CAMERA * 10);
						dobj_z = PZ + floatmul(VZ, DIST_FROM_CAMERA * 10);
						dmodel = CA_RayCastLine(PX, PY, PZ, dobj_x, dobj_y, dobj_z, tmp, tmp, tmp);
						if(dmodel)
						{
							static strtmp[32];
							if(dmodel == 20000) strtmp = "Water";
							else format(strtmp, sizeof strtmp, "Default object %d", dmodel);
							PlayerTextDrawSetString(playerid, CreatorInfo[playerid][ucHoldInfo], strtmp);
							PlayerTextDrawShow(playerid, CreatorInfo[playerid][ucHoldInfo]);
						}
						else PlayerTextDrawHide(playerid, CreatorInfo[playerid][ucHoldInfo]);
					}
					else
					{
				#endif
					PlayerTextDrawHide(playerid, CreatorInfo[playerid][ucHoldInfo]);
				#if defined COLANDREAS
					}
				#endif
			}
			if(CreatorInfo[playerid][ucMode] && (GetTickCount() - CreatorInfo[playerid][ucLastMove] > DELAY_LAST_CAM_MOVE)) MoveCamera(playerid, keys, PX, PY, PZ, VX, VY, VZ);
			if(CreatorInfo[playerid][ucUdOld] != ud || CreatorInfo[playerid][ucLrOld] != lr)
			{
				if((CreatorInfo[playerid][ucUdOld] || CreatorInfo[playerid][ucLrOld]) && !ud && !lr) FlyModeStopMovie(playerid);
				else
				{
					CreatorInfo[playerid][ucMode] = GetMoveDirectionFromKeys(ud, lr);
					MoveCamera(playerid, keys, PX, PY, PZ, VX, VY, VZ);
				}
			}
			CreatorInfo[playerid][ucUdOld] = ud;
			CreatorInfo[playerid][ucLrOld] = lr;
			return 0;
		}
	}
	return 1;
}

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	if(CreatorInfo[playerid][ucCameraMode])
	{
		switch(dialogid)
		{
			case DIALOG_CHOOSE_MAP:
			{
				if(response)
				{
					switch(listitem)
					{
						case 0: ShowCreatorDialog(playerid, DIALOG_NEW_MAP);
						case 1: ShowCreatorDialog(playerid, DIALOG_OPEN_MAP_WARN);
						case 2:
						{
							if(!MapName[0]) SendClientMessage(playerid, DEFAULT_COLOR, MAP_DOES_NOT_EXIST_ERROR);
							else if(!strcmp(MapName, "uc_blank")) ShowCreatorDialog(playerid, DIALOG_SAVE_MAP_AS);
							else
							{
								static strtmp[MAX_MAPNAME_LENGTH];
								if(strfindchar(MapName, '.') != -1) strcpy(strtmp, MapName, sizeof strtmp);
								else
								{
									strcpy(strtmp, MapName, sizeof strtmp);
									strcat(strtmp, ".txt");
								}
								if(SaveCreatorMap(strtmp))
								{
									static strtmp2[145], pname[MAX_PLAYER_NAME];
									GetPlayerName(playerid, pname, sizeof pname);
									format(strtmp2, sizeof strtmp2, MAP_SAVED, pname, strtmp);
									SendMessageToCreators(DEFAULT_COLOR, strtmp2);
								}
								else SendClientMessage(playerid, DEFAULT_COLOR, SAVE_MAP_ERROR);
							}
						}
						case 3:
						{
							if(!MapName[0]) SendClientMessage(playerid, DEFAULT_COLOR, MAP_DOES_NOT_EXIST_ERROR);
							else ShowCreatorDialog(playerid, DIALOG_SAVE_MAP_AS);
						}
						case 4: ShowCreatorDialog(playerid, DIALOG_DELETE_MAP);
					}
				}
				return 1;
			}
			case DIALOG_NEW_MAP:
			{
				if(response)
				{
					ClearMap();
					static strtmp[145], pname[MAX_PLAYER_NAME];
					GetPlayerName(playerid, pname, sizeof pname);
					format(strtmp, sizeof strtmp, MAP_CREATED, pname);
					SendMessageToCreators(DEFAULT_COLOR, strtmp);
					ShowCreatorDialog(playerid, DIALOG_MAIN);
				}
				else ShowCreatorDialog(playerid, DIALOG_CHOOSE_MAP);
				return 1;
			}
			case DIALOG_OPEN_MAP_WARN:
			{
				if(response) ShowCreatorDialog(playerid, DIALOG_OPEN_MAP);
				else ShowCreatorDialog(playerid, DIALOG_CHOOSE_MAP);
				return 1;
			}
			case DIALOG_OPEN_MAP:
			{
				if(response)
				{
					static strtmp[MAX_MAPNAME_LENGTH];
					if(strfindchar(inputtext, '.') != -1) strcpy(strtmp, inputtext, sizeof strtmp);
					else
					{
						strcpy(strtmp, inputtext, sizeof strtmp);
						strcat(strtmp, ".txt");
					}
					if(LoadCreatorMap(strtmp))
					{
						static strtmp2[145], pname[MAX_PLAYER_NAME];
						GetPlayerName(playerid, pname, sizeof pname);
						format(strtmp2, sizeof strtmp2, MAP_OPENED, pname, strtmp);
						SendMessageToCreators(DEFAULT_COLOR, strtmp2);
						strcpy(MapName, inputtext, sizeof MapName);
					}
					else
					{
						SendClientMessage(playerid, DEFAULT_COLOR, FILE_NOT_FOUND_ERROR);
						return ShowCreatorDialog(playerid, DIALOG_OPEN_MAP);
					}
				}
				else ShowCreatorDialog(playerid, DIALOG_CHOOSE_MAP);
				return 1;
			}
			case DIALOG_SAVE_MAP_AS:
			{
				if(response)
				{
					if(!inputtext[0] || strfindchar(inputtext, '/') != -1 ||
					strfind(inputtext, "\\") != -1 || strfindchar(inputtext, ':') != -1 ||
					strfindchar(inputtext, '*') != -1 || strfindchar(inputtext, '?') != -1 ||
					strfindchar(inputtext, '\"') != -1 || strfindchar(inputtext, '<') != -1 ||
					strfindchar(inputtext, '>') != -1 || strfindchar(inputtext, '|') != -1) return ShowCreatorDialog(playerid, DIALOG_SAVE_MAP_AS, INCORRECT_FILE_NAME_ERROR"\n\n"ENTER_MAP_NAME_FOR_SAVE);
					static strtmp[MAX_MAPNAME_LENGTH];
					if(strfindchar(inputtext, '.') != -1) strcpy(strtmp, inputtext, sizeof strtmp);
					else
					{
						strcpy(strtmp, inputtext, sizeof strtmp);
						strcat(strtmp, ".txt");
					}
					if(SaveCreatorMap(strtmp))
					{
						static strtmp2[145], pname[MAX_PLAYER_NAME];
						GetPlayerName(playerid, pname, sizeof pname);
						format(strtmp2, sizeof strtmp2, MAP_SAVED, pname, strtmp);
						SendMessageToCreators(DEFAULT_COLOR, strtmp2);
						strcpy(MapName, inputtext, sizeof MapName);
					}
					else SendClientMessage(playerid, DEFAULT_COLOR, SAVE_MAP_ERROR);
				}
				else ShowCreatorDialog(playerid, DIALOG_CHOOSE_MAP);
				return 1;
			}
			case DIALOG_DELETE_MAP:
			{
				if(response)
				{
					static strtmp[MAX_MAPNAME_LENGTH];
					if(strfindchar(inputtext, '.') != -1) strcpy(strtmp, inputtext, sizeof strtmp);
					else
					{
						strcpy(strtmp, inputtext, sizeof strtmp);
						strcat(strtmp, ".txt");
					}
					if(DeleteCreatorMap(strtmp))
					{
						static strtmp2[145], pname[MAX_PLAYER_NAME];
						GetPlayerName(playerid, pname, sizeof pname);
						format(strtmp2, sizeof strtmp2, MAP_DELETED, pname, strtmp);
						SendMessageToCreators(DEFAULT_COLOR, strtmp2);
					}
					else
					{
						SendClientMessage(playerid, DEFAULT_COLOR, FILE_NOT_FOUND_ERROR);
						ShowCreatorDialog(playerid, DIALOG_DELETE_MAP);
					}
				}
				else ShowCreatorDialog(playerid, DIALOG_CHOOSE_MAP);
				return 1;
			}
			case DIALOG_MAIN:
			{
				if(response)
				{
					switch(listitem)
					{
						case 0: ShowCreatorDialog(playerid, DIALOG_CREATE);
						case 1: ShowCreatorDialog(playerid, DIALOG_EDIT);
						case 2: ShowCreatorDialog(playerid, DIALOG_TELEPORT_INTO);
						case 3:
						{
							#if defined COLANDREAS
								CreatorInfo[playerid][ucCopyDefObj] = true;
							#else
								SendClientMessage(playerid, DEFAULT_COLOR, COLANDREAS_COMPATIBILITY_ERROR);
							#endif
						}
						case 4: ShowCreatorDialog(playerid, DIALOG_SETTINGS);
					}
				}
				else ShowCreatorDialog(playerid, DIALOG_CHOOSE_MAP);
			}
			case DIALOG_CREATE:
			{
				if(response)
				{
					switch(listitem)
					{
						case 0: ShowCreatorDialog(playerid, DIALOG_CREATE_OBJECT);
						case 1: ShowCreatorDialog(playerid, DIALOG_CREATE_VEHICLE);
						case 2: ShowCreatorDialog(playerid, DIALOG_CREATE_ACTOR);
						case 3: ShowCreatorDialog(playerid, DIALOG_CREATE_PICKUP);
						case 4:
						{
							if(!CheckpointInfo[cpCreated])
							{
								static strtmp[145];
								new
									Float:PX, Float:PY, Float:PZ,
									Float:VX, Float:VY, Float:VZ,
									Float:cp_x, Float:cp_y, Float:cp_z;
								GetPlayerCameraPos(playerid, PX, PY, PZ);
								GetPlayerCameraFrontVector(playerid, VX, VY, VZ);
								cp_x = PX + floatmul(VX, DIST_FROM_CAMERA);
								cp_y = PY + floatmul(VY, DIST_FROM_CAMERA);
								cp_z = PZ + floatmul(VZ, DIST_FROM_CAMERA);
								SetCheckpoint(cp_x, cp_y, cp_z, 1.0);
								CreatorInfo[playerid][ucHoldingCp] = 1;
								CreatorInfo[playerid][ucHoldingObj] = 65535;
								CreatorInfo[playerid][ucHoldingVeh] = 65535;
								CreatorInfo[playerid][ucHoldingAct] = 65535;
								CreatorInfo[playerid][ucHoldingPick] = 65535;
								CreatorInfo[playerid][ucHoldingRcp] = 65535;
								CreatorInfo[playerid][ucHoldingLab] = 65535;
								CreatorInfo[playerid][ucSelectedObj] = 65535;
								CreatorInfo[playerid][ucSelectedVeh] = 65535;
								CreatorInfo[playerid][ucSelectedAct] = 65535;
								CreatorInfo[playerid][ucSelectedPick] = 65535;
								CreatorInfo[playerid][ucSelectedCp] = 65535;
								CreatorInfo[playerid][ucSelectedRcp] = 65535;
								CreatorInfo[playerid][ucSelectedIco] = 65535;
								CreatorInfo[playerid][ucSelectedGzn] = 65535;
								CreatorInfo[playerid][ucSelectedLab] = 65535;
								format(strtmp, sizeof strtmp, CP_CREATED, 1);
								SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
							}
							else SendClientMessage(playerid, DEFAULT_COLOR, LIMIT_ERROR);
						}
						case 5: ShowCreatorDialog(playerid, DIALOG_CREATE_RCP);
						case 6: ShowCreatorDialog(playerid, DIALOG_CREATE_ICON);
						case 7:
						{
							new
								Float:PX, Float:PY,
								Float:minX, Float:minY,
								Float:maxX, Float:maxY;
							GetPlayerCameraPos(playerid, PX, PY, minX);
							GetBoundsOfGangZone(PX, PY, 100.0, 100.0, minX, minY, maxX, maxY);
							new zone = GangZoneCreate(minX, minY, maxX, maxY);
							if(zone != INVALID_GANG_ZONE)
							{
								static strtmp[145];
								GangZoneShowForAll(zone, 0xFFFFFFAA);
								CreatorInfo[playerid][ucSelectedGzn] = zone;
								CreatorInfo[playerid][ucHoldingObj] = 65535;
								CreatorInfo[playerid][ucHoldingVeh] = 65535;
								CreatorInfo[playerid][ucHoldingAct] = 65535;
								CreatorInfo[playerid][ucHoldingPick] = 65535;
								CreatorInfo[playerid][ucHoldingCp] = 65535;
								CreatorInfo[playerid][ucHoldingRcp] = 65535;
								CreatorInfo[playerid][ucHoldingLab] = 65535;
								CreatorInfo[playerid][ucSelectedObj] = 65535;
								CreatorInfo[playerid][ucSelectedVeh] = 65535;
								CreatorInfo[playerid][ucSelectedAct] = 65535;
								CreatorInfo[playerid][ucSelectedPick] = 65535;
								CreatorInfo[playerid][ucSelectedCp] = 65535;
								CreatorInfo[playerid][ucSelectedRcp] = 65535;
								CreatorInfo[playerid][ucSelectedIco] = 65535;
								CreatorInfo[playerid][ucSelectedLab] = 65535;
								format(strtmp, sizeof strtmp, ZONE_CREATED, zone);
								SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
							}
							else SendClientMessage(playerid, DEFAULT_COLOR, LIMIT_ERROR);
						}
						case 8: ShowCreatorDialog(playerid, DIALOG_CREATE_LABEL);
					}
				}
				else ShowCreatorDialog(playerid, DIALOG_MAIN);
				return 1;
			}
			case DIALOG_CREATE_OBJECT:
			{
				if(response)
				{
					new objectid;
					if(!(objectid = ReturnObjectID(inputtext))) objectid = strval(inputtext);
					if(inputtext[0] && !IsNumeric(inputtext) && !objectid)
					{
						new c;
						static strtmp2[128], strtmp[128 + MAX_MATCHES_COUNT + (MAX_OBJECT_NAME_LENGTH * MAX_MATCHES_COUNT)];
						strtmp[0] = EOS;
						strcat(strtmp, "ID\tName\n\n");
						for(new i, tmpid[6]; i < sizeof ObjectsArray; ++i)
						{
							if(strfind(ObjectsArray[i][oName], inputtext, true) != -1)
							{
								valstr(tmpid, ObjectsArray[i][oID]);
								strcat(strtmp, tmpid);
								strcat(strtmp, "\t");
								strcat(strtmp, ObjectsArray[i][oName]);
								strcat(strtmp, "\n");
								++c;
							}
							if(c >= MAX_MATCHES_COUNT)
							{
								format(strtmp2, sizeof strtmp2, "\n..."SHOW_FOUNDED_MATCHES, MAX_MATCHES_COUNT);
								strcat(strtmp, strtmp2);
								break;
							}
						}
						if(!c) format(strtmp, sizeof strtmp, NO_MATCHES_FOUND"\n\n"ENTER_OBJECT_NAME);
						return ShowCreatorDialog(playerid, DIALOG_CREATE_OBJECT, strtmp);
					}
					else if(!IsValidObjectModel(objectid)) return ShowCreatorDialog(playerid, DIALOG_CREATE_OBJECT, INCORRECT_OBJECT_ID_ERROR"\n\n"ENTER_OBJECT_NAME);
					new
						Float:PX, Float:PY, Float:PZ,
						Float:VX, Float:VY, Float:VZ,
						Float:obj_x, Float:obj_y, Float:obj_z;
					GetPlayerCameraPos(playerid, PX, PY, PZ);
					GetPlayerCameraFrontVector(playerid, VX, VY, VZ);
					obj_x = PX + floatmul(VX, DIST_FROM_CAMERA);
					obj_y = PY + floatmul(VY, DIST_FROM_CAMERA);
					obj_z = PZ + floatmul(VZ, DIST_FROM_CAMERA);
					new obj = CreateObject(objectid, obj_x, obj_y, obj_z, 0.0, 0.0, 0.0);
					if(obj != INVALID_OBJECT_ID)
					{
						static strtmp[145];
						CreatorInfo[playerid][ucHoldingObj] = obj;
						CreatorInfo[playerid][ucHoldingVeh] = 65535;
						CreatorInfo[playerid][ucHoldingAct] = 65535;
						CreatorInfo[playerid][ucHoldingPick] = 65535;
						CreatorInfo[playerid][ucHoldingCp] = 65535;
						CreatorInfo[playerid][ucHoldingRcp] = 65535;
						CreatorInfo[playerid][ucHoldingLab] = 65535;
						CreatorInfo[playerid][ucSelectedObj] = 65535;
						CreatorInfo[playerid][ucSelectedVeh] = 65535;
						CreatorInfo[playerid][ucSelectedAct] = 65535;
						CreatorInfo[playerid][ucSelectedPick] = 65535;
						CreatorInfo[playerid][ucSelectedCp] = 65535;
						CreatorInfo[playerid][ucSelectedRcp] = 65535;
						CreatorInfo[playerid][ucSelectedIco] = 65535;
						CreatorInfo[playerid][ucSelectedGzn] = 65535;
						CreatorInfo[playerid][ucSelectedLab] = 65535;
						format(strtmp, sizeof strtmp, OBJECT_CREATED, obj);
						SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
					}
					else SendClientMessage(playerid, DEFAULT_COLOR, LIMIT_ERROR);
				}
				else ShowCreatorDialog(playerid, DIALOG_CREATE);
				return 1;
			}
			case DIALOG_CREATE_VEHICLE:
			{
				if(response)
				{
					new vehicleid;
					if(!(vehicleid = ReturnVehicleID(inputtext))) vehicleid = strval(inputtext);
					if(inputtext[0] && !IsNumeric(inputtext) && !vehicleid)
					{
						new c;
						static strtmp2[128], strtmp[128 + MAX_MATCHES_COUNT + (MAX_VEHICLE_NAME_LENGTH * MAX_MATCHES_COUNT)];
						strtmp[0] = EOS;
						strcat(strtmp, "ID\tName\n\n");
						for(new i, tmpid[6]; i < sizeof VehicleNames; ++i)
						{
							if(strfind(VehicleNames[i], inputtext, true) != -1)
							{
								valstr(tmpid, i + 400);
								strcat(strtmp, tmpid);
								strcat(strtmp, "\t");
								strcat(strtmp, VehicleNames[i]);
								strcat(strtmp, "\n");
								++c;
							}
							if(c >= MAX_MATCHES_COUNT)
							{
								format(strtmp2, sizeof strtmp2, "\n..."SHOW_FOUNDED_MATCHES, MAX_MATCHES_COUNT);
								strcat(strtmp, strtmp2);
								break;
							}
						}
						if(!c) format(strtmp, sizeof strtmp, NO_MATCHES_FOUND"\n\n"ENTER_VEHICLE_NAME);
						return ShowCreatorDialog(playerid, DIALOG_CREATE_VEHICLE, strtmp);
					}
					else if(!(399 < vehicleid < 612)) return ShowCreatorDialog(playerid, DIALOG_CREATE_VEHICLE, INCORRECT_VEHICLE_ID_ERROR"\n\n"ENTER_VEHICLE_NAME);
					new
						Float:PX, Float:PY, Float:PZ,
						Float:VX, Float:VY, Float:VZ,
						Float:veh_x, Float:veh_y, Float:veh_z;
					GetPlayerCameraPos(playerid, PX, PY, PZ);
					GetPlayerCameraFrontVector(playerid, VX, VY, VZ);
					veh_x = PX + floatmul(VX, DIST_FROM_CAMERA);
					veh_y = PY + floatmul(VY, DIST_FROM_CAMERA);
					veh_z = PZ + floatmul(VZ, DIST_FROM_CAMERA);
					new veh = CreateVehicle(vehicleid, veh_x, veh_y, veh_z, 0.0, random(256), random(256), 1500);
					if(veh != INVALID_VEHICLE_ID)
					{
						static strtmp[145];
						CreatorInfo[playerid][ucHoldingVeh] = veh;
						CreatorInfo[playerid][ucHoldingObj] = 65535;
						CreatorInfo[playerid][ucHoldingAct] = 65535;
						CreatorInfo[playerid][ucHoldingPick] = 65535;
						CreatorInfo[playerid][ucHoldingCp] = 65535;
						CreatorInfo[playerid][ucHoldingRcp] = 65535;
						CreatorInfo[playerid][ucHoldingLab] = 65535;
						CreatorInfo[playerid][ucSelectedObj] = 65535;
						CreatorInfo[playerid][ucSelectedVeh] = 65535;
						CreatorInfo[playerid][ucSelectedAct] = 65535;
						CreatorInfo[playerid][ucSelectedPick] = 65535;
						CreatorInfo[playerid][ucSelectedCp] = 65535;
						CreatorInfo[playerid][ucSelectedRcp] = 65535;
						CreatorInfo[playerid][ucSelectedIco] = 65535;
						CreatorInfo[playerid][ucSelectedGzn] = 65535;
						CreatorInfo[playerid][ucSelectedLab] = 65535;
						format(strtmp, sizeof strtmp, VEHICLE_CREATED, veh);
						SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
					}
					else SendClientMessage(playerid, DEFAULT_COLOR, LIMIT_ERROR);
				}
				else ShowCreatorDialog(playerid, DIALOG_CREATE);
				return 1;
			}
			case DIALOG_CREATE_ACTOR:
			{
				if(response)
				{
					new actorid;
					if((actorid = ReturnSkinID(inputtext)) == -1 && IsNumeric(inputtext)) actorid = strval(inputtext);
					if(inputtext[0] && !IsNumeric(inputtext) && actorid == -1)
					{
						new c;
						static strtmp2[128], strtmp[128 + MAX_MATCHES_COUNT + (MAX_SKIN_NAME_LENGTH * MAX_MATCHES_COUNT)];
						strtmp[0] = EOS;
						strcat(strtmp, "ID\tName\n\n");
						for(new i, tmpid[6]; i < sizeof SkinNames; ++i)
						{
							if(strfind(SkinNames[i], inputtext, true) != -1)
							{
								valstr(tmpid, i);
								strcat(strtmp, tmpid);
								strcat(strtmp, "\t");
								strcat(strtmp, SkinNames[i]);
								strcat(strtmp, "\n");
								++c;
							}
							if(c >= MAX_MATCHES_COUNT)
							{
								format(strtmp2, sizeof strtmp2, "\n..."SHOW_FOUNDED_MATCHES, MAX_MATCHES_COUNT);
								strcat(strtmp, strtmp2);
								break;
							}
						}
						if(!c) format(strtmp, sizeof strtmp, NO_MATCHES_FOUND"\n\n"ENTER_SKIN_NAME);
						return ShowCreatorDialog(playerid, DIALOG_CREATE_ACTOR, strtmp);
					}
					else if(!(-1 < actorid < 312) || !inputtext[0]) return ShowCreatorDialog(playerid, DIALOG_CREATE_ACTOR, INCORRECT_SKIN_ID_ERROR"\n\n"ENTER_SKIN_NAME);
					new
						Float:PX, Float:PY, Float:PZ,
						Float:VX, Float:VY, Float:VZ,
						Float:act_x, Float:act_y, Float:act_z;
					GetPlayerCameraPos(playerid, PX, PY, PZ);
					GetPlayerCameraFrontVector(playerid, VX, VY, VZ);
					act_x = PX + floatmul(VX, DIST_FROM_CAMERA);
					act_y = PY + floatmul(VY, DIST_FROM_CAMERA);
					act_z = PZ + floatmul(VZ, DIST_FROM_CAMERA);
					new act = CreateActor(actorid, act_x, act_y, act_z, 0.0);
					if(act != INVALID_ACTOR_ID)
					{
						static strtmp[145];
						CreatorInfo[playerid][ucHoldingAct] = act;
						CreatorInfo[playerid][ucHoldingObj] = 65535;
						CreatorInfo[playerid][ucHoldingVeh] = 65535;
						CreatorInfo[playerid][ucHoldingPick] = 65535;
						CreatorInfo[playerid][ucHoldingCp] = 65535;
						CreatorInfo[playerid][ucHoldingRcp] = 65535;
						CreatorInfo[playerid][ucHoldingLab] = 65535;
						CreatorInfo[playerid][ucSelectedObj] = 65535;
						CreatorInfo[playerid][ucSelectedVeh] = 65535;
						CreatorInfo[playerid][ucSelectedAct] = 65535;
						CreatorInfo[playerid][ucSelectedPick] = 65535;
						CreatorInfo[playerid][ucSelectedCp] = 65535;
						CreatorInfo[playerid][ucSelectedRcp] = 65535;
						CreatorInfo[playerid][ucSelectedIco] = 65535;
						CreatorInfo[playerid][ucSelectedGzn] = 65535;
						CreatorInfo[playerid][ucSelectedLab] = 65535;
						format(strtmp, sizeof strtmp, ACTOR_CREATED, act);
						SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
					}
					else SendClientMessage(playerid, DEFAULT_COLOR, LIMIT_ERROR);
				}
				else ShowCreatorDialog(playerid, DIALOG_CREATE);
				return 1;
			}
			case DIALOG_CREATE_PICKUP:
			{
				if(response)
				{
					new pickupid;
					if(!(pickupid = ReturnObjectID(inputtext))) pickupid = strval(inputtext);
					if(inputtext[0] && !IsNumeric(inputtext) && !pickupid)
					{
						new c;
						static strtmp2[128], strtmp[128 + MAX_MATCHES_COUNT + (MAX_OBJECT_NAME_LENGTH * MAX_MATCHES_COUNT)];
						strtmp[0] = EOS;
						strcat(strtmp, "ID\tName\n\n");
						for(new i, tmpid[6]; i < sizeof ObjectsArray; ++i)
						{
							if(strfind(ObjectsArray[i][oName], inputtext, true) != -1)
							{
								valstr(tmpid, ObjectsArray[i][oID]);
								strcat(strtmp, tmpid);
								strcat(strtmp, "\t");
								strcat(strtmp, ObjectsArray[i][oName]);
								strcat(strtmp, "\n");
								++c;
							}
							if(c >= MAX_MATCHES_COUNT)
							{
								format(strtmp2, sizeof strtmp2, "\n..."SHOW_FOUNDED_MATCHES, MAX_MATCHES_COUNT);
								strcat(strtmp, strtmp2);
								break;
							}
						}
						if(!c) format(strtmp, sizeof strtmp, NO_MATCHES_FOUND"\n\n"ENTER_PICKUP_NAME);
						return ShowCreatorDialog(playerid, DIALOG_CREATE_PICKUP, strtmp);
					}
					else if(!IsValidObjectModel(pickupid)) return ShowCreatorDialog(playerid, DIALOG_CREATE_PICKUP, INCORRECT_PICKUP_ID_ERROR"\n\n"ENTER_PICKUP_NAME);
					new
						Float:PX, Float:PY, Float:PZ,
						Float:VX, Float:VY, Float:VZ,
						Float:pick_x, Float:pick_y, Float:pick_z;
					GetPlayerCameraPos(playerid, PX, PY, PZ);
					GetPlayerCameraFrontVector(playerid, VX, VY, VZ);
					pick_x = PX + floatmul(VX, DIST_FROM_CAMERA);
					pick_y = PY + floatmul(VY, DIST_FROM_CAMERA);
					pick_z = PZ + floatmul(VZ, DIST_FROM_CAMERA);
					new pick = CreatePickup(pickupid, 1, pick_x, pick_y, pick_z, 0);
					if(pick != -1)
					{
						static strtmp[145];
						CreatorInfo[playerid][ucHoldingPick] = pick;
						CreatorInfo[playerid][ucHoldingObj] = 65535;
						CreatorInfo[playerid][ucHoldingVeh] = 65535;
						CreatorInfo[playerid][ucHoldingAct] = 65535;
						CreatorInfo[playerid][ucHoldingCp] = 65535;
						CreatorInfo[playerid][ucHoldingRcp] = 65535;
						CreatorInfo[playerid][ucHoldingLab] = 65535;
						CreatorInfo[playerid][ucSelectedObj] = 65535;
						CreatorInfo[playerid][ucSelectedVeh] = 65535;
						CreatorInfo[playerid][ucSelectedAct] = 65535;
						CreatorInfo[playerid][ucSelectedPick] = 65535;
						CreatorInfo[playerid][ucSelectedCp] = 65535;
						CreatorInfo[playerid][ucSelectedRcp] = 65535;
						CreatorInfo[playerid][ucSelectedIco] = 65535;
						CreatorInfo[playerid][ucSelectedGzn] = 65535;
						CreatorInfo[playerid][ucSelectedLab] = 65535;
						format(strtmp, sizeof strtmp, PICKUP_CREATED, pick);
						SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
					}
					else SendClientMessage(playerid, DEFAULT_COLOR, LIMIT_ERROR);
				}
				else ShowCreatorDialog(playerid, DIALOG_CREATE);
				return 1;
			}
			case DIALOG_CREATE_RCP:
			{
				if(response && -1 < listitem < 5)
				{
					if(!RaceCpInfo[rcpCreated])
					{
						static strtmp[145];
						new
							Float:PX, Float:PY, Float:PZ,
							Float:VX, Float:VY, Float:VZ,
							Float:rcp_x, Float:rcp_y, Float:rcp_z;
						GetPlayerCameraPos(playerid, PX, PY, PZ);
						GetPlayerCameraFrontVector(playerid, VX, VY, VZ);
						rcp_x = PX + floatmul(VX, DIST_FROM_CAMERA);
						rcp_y = PY + floatmul(VY, DIST_FROM_CAMERA);
						rcp_z = PZ + floatmul(VZ, DIST_FROM_CAMERA);
						SetRaceCheckpoint(listitem, rcp_x, rcp_y, rcp_z, rcp_x, rcp_y, rcp_z, 3.0);
						CreatorInfo[playerid][ucHoldingRcp] = 1;
						CreatorInfo[playerid][ucHoldingObj] = 65535;
						CreatorInfo[playerid][ucHoldingVeh] = 65535;
						CreatorInfo[playerid][ucHoldingAct] = 65535;
						CreatorInfo[playerid][ucHoldingPick] = 65535;
						CreatorInfo[playerid][ucHoldingCp] = 65535;
						CreatorInfo[playerid][ucHoldingLab] = 65535;
						CreatorInfo[playerid][ucSelectedObj] = 65535;
						CreatorInfo[playerid][ucSelectedVeh] = 65535;
						CreatorInfo[playerid][ucSelectedAct] = 65535;
						CreatorInfo[playerid][ucSelectedPick] = 65535;
						CreatorInfo[playerid][ucSelectedCp] = 65535;
						CreatorInfo[playerid][ucSelectedRcp] = 65535;
						CreatorInfo[playerid][ucSelectedIco] = 65535;
						CreatorInfo[playerid][ucSelectedGzn] = 65535;
						CreatorInfo[playerid][ucSelectedLab] = 65535;
						format(strtmp, sizeof strtmp, RCP_CREATED, 1);
						SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
					}
					else SendClientMessage(playerid, DEFAULT_COLOR, LIMIT_ERROR);
				}
				else ShowCreatorDialog(playerid, DIALOG_CREATE);
				return 1;
			}
			case DIALOG_CREATE_ICON:
			{
				if(response)
				{
					new markertype;
					if((markertype = ReturnMapIconID(inputtext)) == -1 && IsNumeric(inputtext)) markertype = strval(inputtext);
					if(inputtext[0] && !IsNumeric(inputtext) && markertype == -1)
					{
						new c;
						static strtmp2[128], strtmp[128 + MAX_MATCHES_COUNT + (MAX_ICON_NAME_LENGTH * MAX_MATCHES_COUNT)];
						strtmp[0] = EOS;
						strcat(strtmp, "ID\tName\n\n");
						for(new i, tmpid[6]; i < sizeof MapIconNames; ++i)
						{
							if(strfind(MapIconNames[i], inputtext, true) != -1)
							{
								valstr(tmpid, i);
								strcat(strtmp, tmpid);
								strcat(strtmp, "\t");
								strcat(strtmp, MapIconNames[i]);
								strcat(strtmp, "\n");
								++c;
							}
							if(c >= MAX_MATCHES_COUNT)
							{
								format(strtmp2, sizeof strtmp2, "\n..."SHOW_FOUNDED_MATCHES, MAX_MATCHES_COUNT);
								strcat(strtmp, strtmp2);
								break;
							}
						}
						if(!c) format(strtmp, sizeof strtmp, NO_MATCHES_FOUND"\n\n"ENTER_ICON_NAME);
						return ShowCreatorDialog(playerid, DIALOG_CREATE_ICON, strtmp);
					}
					else if(!(-1 < markertype < 64) || !inputtext[0]) return ShowCreatorDialog(playerid, DIALOG_CREATE_ICON, INCORRECT_ICON_ID_ERROR"\n\n"ENTER_ICON_NAME"\n"INVALID_MAP_ICONS_WARNING);
					new Float:ico_x, Float:ico_y, Float:ico_z;
					GetPlayerCameraPos(playerid, ico_x, ico_y, ico_z);
					new ico = GetFreeMapIconID();
					if(ico != -1)
					{
						static strtmp[145];
						SetMapIcon(ico, ico_x, ico_y, ico_z, markertype, 0, 0);
						CreatorInfo[playerid][ucSelectedIco] = ico;
						CreatorInfo[playerid][ucHoldingObj] = 65535;
						CreatorInfo[playerid][ucHoldingVeh] = 65535;
						CreatorInfo[playerid][ucHoldingAct] = 65535;
						CreatorInfo[playerid][ucHoldingPick] = 65535;
						CreatorInfo[playerid][ucHoldingCp] = 65535;
						CreatorInfo[playerid][ucHoldingRcp] = 65535;
						CreatorInfo[playerid][ucHoldingLab] = 65535;
						CreatorInfo[playerid][ucSelectedObj] = 65535;
						CreatorInfo[playerid][ucSelectedVeh] = 65535;
						CreatorInfo[playerid][ucSelectedAct] = 65535;
						CreatorInfo[playerid][ucSelectedPick] = 65535;
						CreatorInfo[playerid][ucSelectedCp] = 65535;
						CreatorInfo[playerid][ucSelectedRcp] = 65535;
						CreatorInfo[playerid][ucSelectedGzn] = 65535;
						CreatorInfo[playerid][ucSelectedLab] = 65535;
						format(strtmp, sizeof strtmp, ICON_CREATED, ico);
						SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
					}
					else SendClientMessage(playerid, DEFAULT_COLOR, LIMIT_ERROR);
				}
				else ShowCreatorDialog(playerid, DIALOG_CREATE);
				return 1;
			}
			case DIALOG_CREATE_LABEL:
			{
				if(response)
				{
					if(!inputtext[0]) return ShowCreatorDialog(playerid, DIALOG_CREATE_LABEL, INCORRECT_LABEL_NAME_ERROR"\n\n"ENTER_TEXT);
					new
						Float:PX, Float:PY, Float:PZ,
						Float:VX, Float:VY, Float:VZ,
						Float:lab_x, Float:lab_y, Float:lab_z;
					GetPlayerCameraPos(playerid, PX, PY, PZ);
					GetPlayerCameraFrontVector(playerid, VX, VY, VZ);
					lab_x = PX + floatmul(VX, DIST_FROM_CAMERA);
					lab_y = PY + floatmul(VY, DIST_FROM_CAMERA);
					lab_z = PZ + floatmul(VZ, DIST_FROM_CAMERA);
					new lab = Create3DTextLabel(inputtext, 0xFFFFFFFF, lab_x, lab_y, lab_z, 30.0, 0, 0);
					if(lab != INVALID_3DTEXT_ID)
					{
						static strtmp[145];
						CreatorInfo[playerid][ucHoldingLab] = lab;
						CreatorInfo[playerid][ucHoldingObj] = 65535;
						CreatorInfo[playerid][ucHoldingVeh] = 65535;
						CreatorInfo[playerid][ucHoldingAct] = 65535;
						CreatorInfo[playerid][ucHoldingPick] = 65535;
						CreatorInfo[playerid][ucHoldingCp] = 65535;
						CreatorInfo[playerid][ucHoldingRcp] = 65535;
						CreatorInfo[playerid][ucSelectedObj] = 65535;
						CreatorInfo[playerid][ucSelectedVeh] = 65535;
						CreatorInfo[playerid][ucSelectedAct] = 65535;
						CreatorInfo[playerid][ucSelectedPick] = 65535;
						CreatorInfo[playerid][ucSelectedCp] = 65535;
						CreatorInfo[playerid][ucSelectedRcp] = 65535;
						CreatorInfo[playerid][ucSelectedIco] = 65535;
						CreatorInfo[playerid][ucSelectedGzn] = 65535;
						CreatorInfo[playerid][ucSelectedLab] = 65535;
						format(strtmp, sizeof strtmp, LABEL_CREATED, lab);
						SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
					}
					else SendClientMessage(playerid, DEFAULT_COLOR, LIMIT_ERROR);
				}
				else ShowCreatorDialog(playerid, DIALOG_CREATE);
				return 1;
			}
			case DIALOG_EDIT:
			{
				CreatorInfo[playerid][ucEditDialog] = false;
				if(response)
				{
					new i, c = -1;
					for(i = 0; i < sizeof ObjectsInfo; ++i)
					{
						if(ObjectsInfo[i][oCreated] && ++c == listitem)
						{
							CreatorInfo[playerid][ucClickedObj] = i;
							CreatorInfo[playerid][ucCallEditDialog] = false;
							ShowCreatorDialog(playerid, DIALOG_EDIT_OBJECT);
							break;
						}
					}
					if(c < listitem)
					{
						for(i = 0; i < sizeof VehiclesInfo; ++i)
						{
							if(VehiclesInfo[i][vCreated] && ++c == listitem)
							{
								CreatorInfo[playerid][ucClickedVeh] = i;
								CreatorInfo[playerid][ucCallEditDialog] = false;
								ShowCreatorDialog(playerid, DIALOG_EDIT_VEHICLE);
								break;
							}
						}
						if(c < listitem)
						{
							for(i = 0; i < sizeof ActorsInfo; ++i)
							{
								if(ActorsInfo[i][aCreated] && ++c == listitem)
								{
									CreatorInfo[playerid][ucClickedAct] = i;
									CreatorInfo[playerid][ucCallEditDialog] = false;
									ShowCreatorDialog(playerid, DIALOG_EDIT_ACTOR);
									break;
								}
							}
							if(c < listitem)
							{
								for(i = 0; i < sizeof PickupsInfo; ++i)
								{
									if(PickupsInfo[i][pCreated] && ++c == listitem)
									{
										CreatorInfo[playerid][ucClickedPick] = i;
										CreatorInfo[playerid][ucCallEditDialog] = false;
										ShowCreatorDialog(playerid, DIALOG_EDIT_PICKUP);
										break;
									}
								}
								if(c < listitem)
								{
									if(CheckpointInfo[cpCreated] && ++c == listitem)
									{
										CreatorInfo[playerid][ucClickedCp] = 1;
										CreatorInfo[playerid][ucCallEditDialog] = false;
										ShowCreatorDialog(playerid, DIALOG_EDIT_CP);
									}
									if(c < listitem)
									{
										if(RaceCpInfo[rcpCreated] && ++c == listitem)
										{
											CreatorInfo[playerid][ucClickedRcp] = 1;
											CreatorInfo[playerid][ucCallEditDialog] = false;
											ShowCreatorDialog(playerid, DIALOG_EDIT_RCP);
										}
										if(c < listitem)
										{
											for(i = 0; i < sizeof IconsInfo; ++i)
											{
												if(IconsInfo[i][iCreated] && ++c == listitem)
												{
													CreatorInfo[playerid][ucClickedIco] = i;
													CreatorInfo[playerid][ucCallEditDialog] = false;
													ShowCreatorDialog(playerid, DIALOG_EDIT_ICON);
													break;
												}
											}
											if(c < listitem)
											{
												for(i = 0; i < sizeof ZonesInfo; ++i)
												{
													if(ZonesInfo[i][gCreated] && ++c == listitem)
													{
														CreatorInfo[playerid][ucClickedGzn] = i;
														CreatorInfo[playerid][ucCallEditDialog] = false;
														ShowCreatorDialog(playerid, DIALOG_EDIT_ZONE);
														break;
													}
												}
												if(c < listitem)
												{
													for(i = 0; i < sizeof LabelsInfo; ++i)
													{
														if(LabelsInfo[i][lCreated] && ++c == listitem)
														{
															CreatorInfo[playerid][ucClickedLab] = i;
															CreatorInfo[playerid][ucCallEditDialog] = false;
															ShowCreatorDialog(playerid, DIALOG_EDIT_LABEL);
															break;
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
				else ShowCreatorDialog(playerid, DIALOG_MAIN);
				return 1;
			}
			case DIALOG_EDIT_OBJECT:
			{
				if(CreatorInfo[playerid][ucClickedObj] != 65535)
				{
					CreatorInfo[playerid][ucSelectedObj] = 65535;
					if(response)
					{
						switch(listitem)
						{
							case 0: CreatorInfo[playerid][ucSelectedObj] = CreatorInfo[playerid][ucClickedObj];
							case 1:
							{
								if(ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oCreated])
								{
									static strtmp[145];
									new Float:posX, Float:posY, Float:posZ;
									GetObjectPos(CreatorInfo[playerid][ucClickedObj], posX, posY, posZ);
									SetPlayerObjectPos(playerid, CreatorInfo[playerid][ucFlyObject], posX, posY, posZ);
									format(strtmp, sizeof strtmp, TELEPORTED_TO_OBJECT, CreatorInfo[playerid][ucClickedObj]);
									SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
								}
							}
							case 2:
							{
								if(ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oCreated])
								{
									static strtmp[145];
									new Float:posX, Float:posY, Float:posZ;
									GetPlayerObjectPos(playerid, CreatorInfo[playerid][ucFlyObject], posX, posY, posZ);
									SetObjectPos(CreatorInfo[playerid][ucClickedObj], posX, posY, posZ);
									format(strtmp, sizeof strtmp, TELEPORTED_OBJECT, CreatorInfo[playerid][ucClickedObj]);
									SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
								}
							}
							case 3:
							{
								if(ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oCreated])
								{
									new
										Float:obj_x, Float:obj_y, Float:obj_z,
										Float:obj_rx, Float:obj_ry, Float:obj_rz;
									GetObjectPos(CreatorInfo[playerid][ucClickedObj], obj_x, obj_y, obj_z);
									GetObjectRot(CreatorInfo[playerid][ucClickedObj], obj_rx, obj_ry, obj_rz);
									new cobj = CreateObject(ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oModelid], obj_x, obj_y, obj_z, obj_rx, obj_ry, obj_rz);
									if(cobj != INVALID_OBJECT_ID)
									{
										static strtmp[145];
										CreatorInfo[playerid][ucHoldingObj] = cobj;
										format(strtmp, sizeof strtmp, OBJECT_COPIED, cobj);
										SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
									}
									else SendClientMessage(playerid, DEFAULT_COLOR, LIMIT_ERROR);
								}
							}
							case 4:
							{
								if(CreatorInfo[playerid][ucHoldingObj] == CreatorInfo[playerid][ucClickedObj]) CreatorInfo[playerid][ucHoldingObj] = 65535;
								if(ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oCreated])
								{
									static strtmp[145];
									format(strtmp, sizeof strtmp, OBJECT_DELETED, CreatorInfo[playerid][ucClickedObj]);
									SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
									DestroyObject(CreatorInfo[playerid][ucClickedObj]);
								}
							}
							case 5: ShowCreatorDialog(playerid, DIALOG_EDIT_OBJECT_TXD_MAIN);
							case 6:
							{
								if(ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oTextIndex] == -1) ShowCreatorDialog(playerid, DIALOG_EDIT_OBJECT_TXT_MAIN);
								else ShowCreatorDialog(playerid, DIALOG_EDIT_OBJECT_TXT);
							}
							case 7: ShowCreatorDialog(playerid, DIALOG_EDIT_OBJECT_X);
							case 8: ShowCreatorDialog(playerid, DIALOG_EDIT_OBJECT_Y);
							case 9: ShowCreatorDialog(playerid, DIALOG_EDIT_OBJECT_Z);
							case 10: ShowCreatorDialog(playerid, DIALOG_EDIT_OBJECT_RX);
							case 11: ShowCreatorDialog(playerid, DIALOG_EDIT_OBJECT_RY);
							case 12: ShowCreatorDialog(playerid, DIALOG_EDIT_OBJECT_RZ);
						}
					}
					else if(!CreatorInfo[playerid][ucCallEditDialog]) ShowCreatorDialog(playerid, DIALOG_EDIT);
				}
				return 1;
			}
			case DIALOG_EDIT_OBJECT_TXD_MAIN:
			{
				if(CreatorInfo[playerid][ucClickedObj] != 65535 && ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oCreated])
				{
					if(response)
					{
						if(-1 < listitem < MAX_TEXTURES_PER_OBJECT)
						{
							CreatorInfo[playerid][ucClickedLayer] = listitem;
							ShowCreatorDialog(playerid, DIALOG_EDIT_OBJECT_TXD);
						}
					}
					else ShowCreatorDialog(playerid, DIALOG_EDIT_OBJECT);
				}
				return 1;
			}
			case DIALOG_EDIT_OBJECT_TXD:
			{
				if(CreatorInfo[playerid][ucClickedObj] != 65535 && ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oCreated])
				{
					if(response)
					{
						switch(listitem)
						{
							case 0:
							{
								static strtmp[145];
								SetObjectMaterial(CreatorInfo[playerid][ucClickedObj], CreatorInfo[playerid][ucClickedLayer], -1, "none", "none", ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oMaterialColor][CreatorInfo[playerid][ucClickedLayer]]);
								format(strtmp, sizeof strtmp, TEXTURE_RESET, CreatorInfo[playerid][ucClickedObj], CreatorInfo[playerid][ucClickedLayer]);
								SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
								return ShowCreatorDialog(playerid, DIALOG_EDIT_OBJECT_TXD);
							}
							case 1: ShowCreatorDialog(playerid, DIALOG_EDIT_OBJECT_TXD_ID);
							case 2: ShowCreatorDialog(playerid, DIALOG_EDIT_OBJECT_TXD_COLOR);
						}
					}
					else ShowCreatorDialog(playerid, DIALOG_EDIT_OBJECT_TXD_MAIN);
				}
				return 1;
			}
			case DIALOG_EDIT_OBJECT_TXD_ID:
			{
				if(CreatorInfo[playerid][ucClickedObj] != 65535 && ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oCreated])
				{
					if(response)
					{
						new textureid;
						if(!(textureid = ReturnTextureID(inputtext)) && IsNumeric(inputtext)) textureid = strval(inputtext);
						if(inputtext[0] && !IsNumeric(inputtext) && !textureid)
						{
							new c;
							static strtmp2[128], strtmp[128 + MAX_MATCHES_COUNT + ((MAX_TXD_NAME_LENGTH + MAX_TEXTURE_NAME_LENGTH) * MAX_MATCHES_COUNT)];
							strtmp[0] = EOS;
							strcat(strtmp, "ID\tTXD\t\t\tTexture\n\n");
							for(new i, tmpid[6]; i < sizeof TexturesArray; ++i)
							{
								if(strfind(TexturesArray[i][tTXDName], inputtext, true) != -1 || strfind(TexturesArray[i][tTextureName], inputtext, true) != -1)
								{
									valstr(tmpid, i);
									strcat(strtmp, tmpid);
									strcat(strtmp, "\t");
									strcat(strtmp, TexturesArray[i][tTXDName]);
									strcat(strtmp, "\t");
									strcat(strtmp, TexturesArray[i][tTextureName]);
									strcat(strtmp, "\n");
									++c;
								}
								if(c >= MAX_MATCHES_COUNT)
								{
									format(strtmp2, sizeof strtmp2, "\n..."SHOW_FOUNDED_MATCHES, MAX_MATCHES_COUNT);
									strcat(strtmp, strtmp2);
									break;
								}
							}
							if(!c) format(strtmp, sizeof strtmp, NO_MATCHES_FOUND"\n\n"ENTER_TEXTURE_NAME);
							return ShowCreatorDialog(playerid, DIALOG_EDIT_OBJECT_TXD_ID, strtmp);
						}
						else if(!(0 < textureid < sizeof TexturesArray)) return ShowCreatorDialog(playerid, DIALOG_EDIT_OBJECT_TXD_ID, INCORRECT_TEXTURE_ID_ERROR"\n\n"ENTER_TEXTURE_NAME);
						static strtmp[145];
						SetObjectMaterial(CreatorInfo[playerid][ucClickedObj], CreatorInfo[playerid][ucClickedLayer], TexturesArray[textureid][tModel], TexturesArray[textureid][tTXDName], TexturesArray[textureid][tTextureName], ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oMaterialColor][CreatorInfo[playerid][ucClickedLayer]]);
						format(strtmp, sizeof strtmp, TEXTURE_CHANGED, CreatorInfo[playerid][ucClickedObj], textureid, CreatorInfo[playerid][ucClickedLayer]);
						SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
					}
					ShowCreatorDialog(playerid, DIALOG_EDIT_OBJECT_TXD);
				}
				return 1;
			}
			case DIALOG_EDIT_OBJECT_TXD_COLOR:
			{
				if(CreatorInfo[playerid][ucClickedObj] != 65535 && ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oCreated])
				{
					if(response)
					{
						new color;
						if(!IsHex(inputtext))
						{
							if(!IsNumeric(inputtext)) return ShowCreatorDialog(playerid, DIALOG_EDIT_OBJECT_TXD_COLOR, INCORRECT_OBJECT_COLOR_ERROR"\n\n"ENTER_OBJECT_COLOR);
							else color = strval(inputtext);
						}
						else color = HexToInt(inputtext);
						static strtmp[145];
						SetObjectMaterial(CreatorInfo[playerid][ucClickedObj], CreatorInfo[playerid][ucClickedLayer], -1, "none", "none", color);
						format(strtmp, sizeof strtmp, OBJECT_COLOR_CHANGED, color, CreatorInfo[playerid][ucClickedObj]);
						SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
					}
					ShowCreatorDialog(playerid, DIALOG_EDIT_OBJECT_TXD);
				}
				return 1;
			}
			case DIALOG_EDIT_OBJECT_TXT_MAIN:
			{
				if(CreatorInfo[playerid][ucClickedObj] != 65535 && ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oCreated])
				{
					if(response)
					{
						new layer = strval(inputtext);
						if(!IsNumeric(inputtext) || !(-1 < layer < MAX_TEXTURES_PER_OBJECT))
						{
							ShowCreatorDialog(playerid, DIALOG_EDIT_OBJECT_TXT_MAIN);
							return SendClientMessage(playerid, DEFAULT_COLOR, INCORRECT_LAYER_ID_ERROR);
						}
						ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oTextIndex] = layer;
						ShowCreatorDialog(playerid, DIALOG_EDIT_OBJECT_TXT);
					}
					else ShowCreatorDialog(playerid, DIALOG_EDIT_OBJECT);
				}
				return 1;
			}
			case DIALOG_EDIT_OBJECT_TXT:
			{
				if(CreatorInfo[playerid][ucClickedObj] != 65535 && ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oCreated])
				{
					if(response)
					{
						switch(listitem)
						{
							case 0:
							{
								static strtmp[145];
								format(strtmp, sizeof strtmp, OBJECT_TEXT_RESET, CreatorInfo[playerid][ucClickedObj], ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oTextIndex]);
								SetObjectMaterial(CreatorInfo[playerid][ucClickedObj], ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oTextIndex], -1, "none", "none", ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oMaterialColor][ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oTextIndex]]);
								SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
								return ShowCreatorDialog(playerid, DIALOG_EDIT_OBJECT);
							}
							case 1: ShowCreatorDialog(playerid, DIALOG_EDIT_OBJECT_TXT_TEXT);
							case 2: ShowCreatorDialog(playerid, DIALOG_EDIT_OBJECT_TXT_SIZE);
							case 3: ShowCreatorDialog(playerid, DIALOG_EDIT_OBJECT_TXT_FONT);
							case 4: ShowCreatorDialog(playerid, DIALOG_EDIT_OBJECT_TXT_FSIZE);
							case 5: ShowCreatorDialog(playerid, DIALOG_EDIT_OBJECT_TXT_BOLD);
							case 6: ShowCreatorDialog(playerid, DIALOG_EDIT_OBJECT_TXT_FCOLOR);
							case 7: ShowCreatorDialog(playerid, DIALOG_EDIT_OBJECT_TXT_BCOLOR);
							case 8: ShowCreatorDialog(playerid, DIALOG_EDIT_OBJECT_TXT_ALIGN);
						}
					}
					else
					{
						if(ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oTextIndex] == -1) ShowCreatorDialog(playerid, DIALOG_EDIT_OBJECT_TXT_MAIN);
						else ShowCreatorDialog(playerid, DIALOG_EDIT_OBJECT);
					}
				}
				return 1;
			}
			case DIALOG_EDIT_OBJECT_TXT_TEXT:
			{
				if(CreatorInfo[playerid][ucClickedObj] != 65535 && ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oCreated])
				{
					if(response)
					{
						if(!inputtext[0]) return ShowCreatorDialog(playerid, DIALOG_EDIT_OBJECT_TXT_TEXT, INCORRECT_OBJECT_TEXT_ERROR"\n\n"ENTER_TEXT);
						static strtmp[145], font[MAX_FONT_NAME_LENGTH];
						strcpy(font, ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oFont], MAX_FONT_NAME_LENGTH);
						SetObjectMaterialText(CreatorInfo[playerid][ucClickedObj], inputtext, ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oTextIndex],
						ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oTextSize], font, ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oFontSize], ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oBold],
						ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oFontColor], ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oBackColor], ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oTextAlignment]);
						format(strtmp, sizeof strtmp, OBJECT_TEXT_CHANGED, CreatorInfo[playerid][ucClickedObj]);
						SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
					}
					ShowCreatorDialog(playerid, DIALOG_EDIT_OBJECT_TXT);
				}
				return 1;
			}
			case DIALOG_EDIT_OBJECT_TXT_SIZE:
			{
				if(CreatorInfo[playerid][ucClickedObj] != 65535 && ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oCreated])
				{
					if(response && -1 < listitem < 14)
					{
						static strtmp[145], text[MAX_OBJECT_TEXT_LENGTH], font[MAX_FONT_NAME_LENGTH];
						strcpy(text, ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oText], MAX_OBJECT_TEXT_LENGTH);
						strcpy(font, ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oFont], MAX_FONT_NAME_LENGTH);
						new size = (listitem + 1) * 10;
						SetObjectMaterialText(CreatorInfo[playerid][ucClickedObj], text, ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oTextIndex], size, font,
						ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oFontSize], ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oBold], ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oFontColor],
						ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oBackColor], ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oTextAlignment]);
						format(strtmp, sizeof strtmp, OBJECT_TEXT_SIZE_CHANGED, CreatorInfo[playerid][ucClickedObj], size);
						SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
					}
					ShowCreatorDialog(playerid, DIALOG_EDIT_OBJECT_TXT);
				}
				return 1;
			}
			case DIALOG_EDIT_OBJECT_TXT_FONT:
			{
				if(CreatorInfo[playerid][ucClickedObj] != 65535 && ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oCreated])
				{
					if(response)
					{
						if(!inputtext[0]) return ShowCreatorDialog(playerid, DIALOG_EDIT_OBJECT_TXT_FONT, INCORRECT_FONT_NAME_ERROR"\n\n"ENTER_FONT_NAME);
						static strtmp[145], text[MAX_OBJECT_TEXT_LENGTH];
						strcpy(text, ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oText], MAX_OBJECT_TEXT_LENGTH);
						SetObjectMaterialText(CreatorInfo[playerid][ucClickedObj], text, ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oTextIndex],
						ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oTextSize], inputtext, ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oFontSize], ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oBold],
						ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oFontColor], ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oBackColor], ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oTextAlignment]);
						format(strtmp, sizeof strtmp, FONT_CHANGED, CreatorInfo[playerid][ucClickedObj]);
						SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
					}
					ShowCreatorDialog(playerid, DIALOG_EDIT_OBJECT_TXT);
				}
				return 1;
			}
			case DIALOG_EDIT_OBJECT_TXT_FSIZE:
			{
				if(CreatorInfo[playerid][ucClickedObj] != 65535 && ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oCreated])
				{
					if(response)
					{
						new size = strval(inputtext);
						if(!IsNumeric(inputtext) || !(-1 < size < 256)) return ShowCreatorDialog(playerid, DIALOG_EDIT_OBJECT_TXT_FSIZE, INCORRECT_FONT_SIZE_ERROR"\n\n"ENTER_FONT_SIZE);
						static strtmp[145], text[MAX_OBJECT_TEXT_LENGTH], font[MAX_FONT_NAME_LENGTH];
						strcpy(text, ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oText], MAX_OBJECT_TEXT_LENGTH);
						strcpy(font, ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oFont], MAX_FONT_NAME_LENGTH);
						SetObjectMaterialText(CreatorInfo[playerid][ucClickedObj], text, ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oTextIndex],
						ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oTextSize], font, size, ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oBold], ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oFontColor],
						ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oBackColor], ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oTextAlignment]);
						format(strtmp, sizeof strtmp, FONT_SIZE_CHANGED, CreatorInfo[playerid][ucClickedObj], size);
						SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
					}
					ShowCreatorDialog(playerid, DIALOG_EDIT_OBJECT_TXT);
				}
				return 1;
			}
			case DIALOG_EDIT_OBJECT_TXT_BOLD:
			{
				if(CreatorInfo[playerid][ucClickedObj] != 65535 && ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oCreated])
				{
					if(response && -1 < listitem < 2)
					{
						new bold = !listitem;
						static strtmp[145], text[MAX_OBJECT_TEXT_LENGTH], font[MAX_FONT_NAME_LENGTH];
						strcpy(text, ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oText], MAX_OBJECT_TEXT_LENGTH);
						strcpy(font, ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oFont], MAX_FONT_NAME_LENGTH);
						SetObjectMaterialText(CreatorInfo[playerid][ucClickedObj], text, ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oTextIndex],
						ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oTextSize], font, ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oFontSize], bold, ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oFontColor],
						ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oBackColor], ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oTextAlignment]);
						format(strtmp, sizeof strtmp, OBJECT_TEXT_BOLD_CHANGED, CreatorInfo[playerid][ucClickedObj], bold);
						SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
					}
					ShowCreatorDialog(playerid, DIALOG_EDIT_OBJECT_TXT);
				}
				return 1;
			}
			case DIALOG_EDIT_OBJECT_TXT_FCOLOR:
			{
				if(CreatorInfo[playerid][ucClickedObj] != 65535 && ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oCreated])
				{
					if(response)
					{
						new color;
						if(!IsHex(inputtext))
						{
							if(!IsNumeric(inputtext)) return ShowCreatorDialog(playerid, DIALOG_EDIT_OBJECT_TXT_FCOLOR, INCORRECT_FONT_COLOR_ERROR"\n\n"ENTER_FONT_COLOR);
							else color = strval(inputtext);
						}
						else color = HexToInt(inputtext);
						static strtmp[145], text[MAX_OBJECT_TEXT_LENGTH], font[MAX_FONT_NAME_LENGTH];
						strcpy(text, ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oText], MAX_OBJECT_TEXT_LENGTH);
						strcpy(font, ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oFont], MAX_FONT_NAME_LENGTH);
						SetObjectMaterialText(CreatorInfo[playerid][ucClickedObj], text, ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oTextIndex],
						ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oTextSize], font, ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oFontSize], ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oBold],
						color, ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oBackColor], ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oTextAlignment]);
						format(strtmp, sizeof strtmp, FONT_COLOR_CHANGED, color, CreatorInfo[playerid][ucClickedObj]);
						SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
					}
					ShowCreatorDialog(playerid, DIALOG_EDIT_OBJECT_TXT);
				}
				return 1;
			}
			case DIALOG_EDIT_OBJECT_TXT_BCOLOR:
			{
				if(CreatorInfo[playerid][ucClickedObj] != 65535 && ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oCreated])
				{
					if(response)
					{
						new color;
						if(!IsHex(inputtext))
						{
							if(!IsNumeric(inputtext)) return ShowCreatorDialog(playerid, DIALOG_EDIT_OBJECT_TXT_BCOLOR, INCORRECT_BACK_COLOR_ERROR"\n\n"ENTER_BACK_COLOR);
							else color = strval(inputtext);
						}
						else color = HexToInt(inputtext);
						static strtmp[145], text[MAX_OBJECT_TEXT_LENGTH], font[MAX_FONT_NAME_LENGTH];
						strcpy(text, ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oText], MAX_OBJECT_TEXT_LENGTH);
						strcpy(font, ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oFont], MAX_FONT_NAME_LENGTH);
						SetObjectMaterialText(CreatorInfo[playerid][ucClickedObj], text, ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oTextIndex],
						ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oTextSize], font, ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oFontSize], ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oBold],
						ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oFontColor], color, ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oTextAlignment]);
						format(strtmp, sizeof strtmp, BACK_COLOR_CHANGED, color, CreatorInfo[playerid][ucClickedObj]);
						SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
					}
					ShowCreatorDialog(playerid, DIALOG_EDIT_OBJECT_TXT);
				}
				return 1;
			}
			case DIALOG_EDIT_OBJECT_TXT_ALIGN:
			{
				if(CreatorInfo[playerid][ucClickedObj] != 65535 && ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oCreated])
				{
					if(response && -1 < listitem < 3)
					{
						static strtmp[145], text[MAX_OBJECT_TEXT_LENGTH], font[MAX_FONT_NAME_LENGTH];
						strcpy(text, ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oText], MAX_OBJECT_TEXT_LENGTH);
						strcpy(font, ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oFont], MAX_FONT_NAME_LENGTH);
						SetObjectMaterialText(CreatorInfo[playerid][ucClickedObj], text, ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oTextIndex],
						ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oTextSize], font, ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oFontSize], ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oBold],
						ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oFontColor], ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oBackColor], listitem);
						format(strtmp, sizeof strtmp, ALIGNMENT_CHANGED, CreatorInfo[playerid][ucClickedObj], listitem);
						SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
					}
					ShowCreatorDialog(playerid, DIALOG_EDIT_OBJECT_TXT);
				}
				return 1;
			}
			case DIALOG_EDIT_OBJECT_X:
			{
				if(CreatorInfo[playerid][ucClickedObj] != 65535 && ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oCreated])
				{
					if(response)
					{
						if(!IsNumeric(inputtext))
						{
							ShowCreatorDialog(playerid, DIALOG_EDIT_OBJECT_X);
							return SendClientMessage(playerid, DEFAULT_COLOR, INCORRECT_COORD_X_ERROR);
						}
						static strtmp[145];
						new Float:X, Float:Y, Float:Z;
						GetObjectPos(CreatorInfo[playerid][ucClickedObj], X, Y, Z);
						X = floatstr(inputtext);
						SetObjectPos(CreatorInfo[playerid][ucClickedObj], X, Y, Z, true);
						format(strtmp, sizeof strtmp, OBJECT_TELEPORTED_TO_X, CreatorInfo[playerid][ucClickedObj], X);
						SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
					}
					ShowCreatorDialog(playerid, DIALOG_EDIT_OBJECT);
				}
				return 1;
			}
			case DIALOG_EDIT_OBJECT_Y:
			{
				if(CreatorInfo[playerid][ucClickedObj] != 65535 && ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oCreated])
				{
					if(response)
					{
						if(!IsNumeric(inputtext))
						{
							ShowCreatorDialog(playerid, DIALOG_EDIT_OBJECT_Y);
							return SendClientMessage(playerid, DEFAULT_COLOR, INCORRECT_COORD_Y_ERROR);
						}
						static strtmp[145];
						new Float:X, Float:Y, Float:Z;
						GetObjectPos(CreatorInfo[playerid][ucClickedObj], X, Y, Z);
						Y = floatstr(inputtext);
						SetObjectPos(CreatorInfo[playerid][ucClickedObj], X, Y, Z, true);
						format(strtmp, sizeof strtmp, OBJECT_TELEPORTED_TO_Y, CreatorInfo[playerid][ucClickedObj], Y);
						SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
					}
					ShowCreatorDialog(playerid, DIALOG_EDIT_OBJECT);
				}
				return 1;
			}
			case DIALOG_EDIT_OBJECT_Z:
			{
				if(CreatorInfo[playerid][ucClickedObj] != 65535 && ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oCreated])
				{
					if(response)
					{
						if(!IsNumeric(inputtext))
						{
							ShowCreatorDialog(playerid, DIALOG_EDIT_OBJECT_Z);
							return SendClientMessage(playerid, DEFAULT_COLOR, INCORRECT_COORD_Z_ERROR);
						}
						static strtmp[145];
						new Float:X, Float:Y, Float:Z;
						GetObjectPos(CreatorInfo[playerid][ucClickedObj], X, Y, Z);
						Z = floatstr(inputtext);
						SetObjectPos(CreatorInfo[playerid][ucClickedObj], X, Y, Z, true);
						format(strtmp, sizeof strtmp, OBJECT_TELEPORTED_TO_Z, CreatorInfo[playerid][ucClickedObj], Z);
						SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
					}
					ShowCreatorDialog(playerid, DIALOG_EDIT_OBJECT);
				}
				return 1;
			}
			case DIALOG_EDIT_OBJECT_RX:
			{
				if(CreatorInfo[playerid][ucClickedObj] != 65535 && ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oCreated])
				{
					if(response)
					{
						if(!IsNumeric(inputtext))
						{
							ShowCreatorDialog(playerid, DIALOG_EDIT_OBJECT_RX);
							return SendClientMessage(playerid, DEFAULT_COLOR, INCORRECT_ROT_X_ERROR);
						}
						static strtmp[145];
						new Float:rX, Float:rY, Float:rZ;
						GetObjectRot(CreatorInfo[playerid][ucClickedObj], rX, rY, rZ);
						rX = floatstr(inputtext);
						SetObjectRot(CreatorInfo[playerid][ucClickedObj], rX, rY, rZ, true);
						format(strtmp, sizeof strtmp, OBJECT_TELEPORTED_TO_ROT_X, CreatorInfo[playerid][ucClickedObj], rX);
						SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
					}
					ShowCreatorDialog(playerid, DIALOG_EDIT_OBJECT);
				}
				return 1;
			}
			case DIALOG_EDIT_OBJECT_RY:
			{
				if(CreatorInfo[playerid][ucClickedObj] != 65535 && ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oCreated])
				{
					if(response)
					{
						if(!IsNumeric(inputtext))
						{
							ShowCreatorDialog(playerid, DIALOG_EDIT_OBJECT_RY);
							return SendClientMessage(playerid, DEFAULT_COLOR, INCORRECT_ROT_Y_ERROR);
						}
						static strtmp[145];
						new Float:rX, Float:rY, Float:rZ;
						GetObjectRot(CreatorInfo[playerid][ucClickedObj], rX, rY, rZ);
						rY = floatstr(inputtext);
						SetObjectRot(CreatorInfo[playerid][ucClickedObj], rX, rY, rZ, true);
						format(strtmp, sizeof strtmp, OBJECT_TELEPORTED_TO_ROT_Y, CreatorInfo[playerid][ucClickedObj], rY);
						SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
					}
					ShowCreatorDialog(playerid, DIALOG_EDIT_OBJECT);
				}
				return 1;
			}
			case DIALOG_EDIT_OBJECT_RZ:
			{
				if(CreatorInfo[playerid][ucClickedObj] != 65535 && ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oCreated])
				{
					if(response)
					{
						if(!IsNumeric(inputtext))
						{
							ShowCreatorDialog(playerid, DIALOG_EDIT_OBJECT_RZ);
							return SendClientMessage(playerid, DEFAULT_COLOR, INCORRECT_ROT_Z_ERROR);
						}
						static strtmp[145];
						new Float:rX, Float:rY, Float:rZ;
						GetObjectRot(CreatorInfo[playerid][ucClickedObj], rX, rY, rZ);
						rZ = floatstr(inputtext);
						SetObjectRot(CreatorInfo[playerid][ucClickedObj], rX, rY, rZ, true);
						format(strtmp, sizeof strtmp, OBJECT_TELEPORTED_TO_ROT_Z, CreatorInfo[playerid][ucClickedObj], rZ);
						SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
					}
					ShowCreatorDialog(playerid, DIALOG_EDIT_OBJECT);
				}
				return 1;
			}
			case DIALOG_EDIT_VEHICLE:
			{
				if(CreatorInfo[playerid][ucClickedVeh] != 65535)
				{
					CreatorInfo[playerid][ucSelectedVeh] = 65535;
					if(response)
					{
						switch(listitem)
						{
							case 0: CreatorInfo[playerid][ucSelectedVeh] = CreatorInfo[playerid][ucClickedVeh];
							case 1:
							{
								if(VehiclesInfo[CreatorInfo[playerid][ucClickedVeh]][vCreated])
								{
									static strtmp[145];
									new Float:posX, Float:posY, Float:posZ;
									GetVehiclePos(CreatorInfo[playerid][ucClickedVeh], posX, posY, posZ);
									SetPlayerObjectPos(playerid, CreatorInfo[playerid][ucFlyObject], posX, posY, posZ);
									format(strtmp, sizeof strtmp, TELEPORTED_TO_VEHICLE, CreatorInfo[playerid][ucClickedVeh]);
									SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
								}
							}
							case 2:
							{
								if(VehiclesInfo[CreatorInfo[playerid][ucClickedVeh]][vCreated])
								{
									static strtmp[145];
									new Float:posX, Float:posY, Float:posZ;
									GetPlayerObjectPos(playerid, CreatorInfo[playerid][ucFlyObject], posX, posY, posZ);
									SetVehiclePos(CreatorInfo[playerid][ucClickedVeh], posX, posY, posZ);
									format(strtmp, sizeof strtmp, TELEPORTED_VEHICLE, CreatorInfo[playerid][ucClickedVeh]);
									SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
								}
							}
							case 3:
							{
								if(VehiclesInfo[CreatorInfo[playerid][ucClickedVeh]][vCreated])
								{
									new
										Float:veh_x, Float:veh_y,
										Float:veh_z, Float:veh_rz;
									GetVehiclePos(CreatorInfo[playerid][ucClickedVeh], veh_x, veh_y, veh_z);
									GetVehicleZAngle(CreatorInfo[playerid][ucClickedVeh], veh_rz);
									new cveh = CreateVehicle(VehiclesInfo[CreatorInfo[playerid][ucClickedVeh]][vModelid], veh_x, veh_y, veh_z, veh_rz, VehiclesInfo[CreatorInfo[playerid][ucClickedVeh]][vColor1], VehiclesInfo[CreatorInfo[playerid][ucClickedVeh]][vColor2], VehiclesInfo[CreatorInfo[playerid][ucClickedVeh]][vRespawnDelay]);
									if(cveh != INVALID_VEHICLE_ID)
									{
										static strtmp[145];
										CreatorInfo[playerid][ucHoldingVeh] = cveh;
										format(strtmp, sizeof strtmp, VEHICLE_COPIED, cveh);
										SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
									}
									else SendClientMessage(playerid, DEFAULT_COLOR, LIMIT_ERROR);
								}
							}
							case 4:
							{
								if(CreatorInfo[playerid][ucHoldingVeh] == CreatorInfo[playerid][ucClickedVeh]) CreatorInfo[playerid][ucHoldingVeh] = 65535;
								if(VehiclesInfo[CreatorInfo[playerid][ucClickedVeh]][vCreated])
								{
									static strtmp[145];
									format(strtmp, sizeof strtmp, VEHICLE_DELETED, CreatorInfo[playerid][ucClickedVeh]);
									SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
									DestroyVehicle(CreatorInfo[playerid][ucClickedVeh]);
								}
							}
							case 5:
							{
								if(VehiclesInfo[CreatorInfo[playerid][ucClickedVeh]][vCreated])
								{
									static strtmp[145];
									format(strtmp, sizeof strtmp, VEHICLE_REPAIRED, CreatorInfo[playerid][ucClickedVeh]);
									SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
									RepairVehicle(CreatorInfo[playerid][ucClickedVeh]);
								}
							}
							case 6: ShowCreatorDialog(playerid, DIALOG_EDIT_VEHICLE_X);
							case 7: ShowCreatorDialog(playerid, DIALOG_EDIT_VEHICLE_Y);
							case 8: ShowCreatorDialog(playerid, DIALOG_EDIT_VEHICLE_Z);
							case 9: ShowCreatorDialog(playerid, DIALOG_EDIT_VEHICLE_RZ);
							case 10: ShowCreatorDialog(playerid, DIALOG_EDIT_VEHICLE_DELAY);
							case 11: ShowCreatorDialog(playerid, DIALOG_EDIT_VEHICLE_COLOR_1);
							case 12: ShowCreatorDialog(playerid, DIALOG_EDIT_VEHICLE_COLOR_2);
						}
					}
					else if(!CreatorInfo[playerid][ucCallEditDialog]) ShowCreatorDialog(playerid, DIALOG_EDIT);
				}
				return 1;
			}
			case DIALOG_EDIT_VEHICLE_X:
			{
				if(CreatorInfo[playerid][ucClickedVeh] != 65535 && VehiclesInfo[CreatorInfo[playerid][ucClickedVeh]][vCreated])
				{
					if(response)
					{
						if(!IsNumeric(inputtext))
						{
							ShowCreatorDialog(playerid, DIALOG_EDIT_VEHICLE_X);
							return SendClientMessage(playerid, DEFAULT_COLOR, INCORRECT_COORD_X_ERROR);
						}
						static strtmp[145];
						new Float:X, Float:Y, Float:Z;
						GetVehiclePos(CreatorInfo[playerid][ucClickedVeh], X, Y, Z);
						X = floatstr(inputtext);
						SetVehiclePos(CreatorInfo[playerid][ucClickedVeh], X, Y, Z);
						format(strtmp, sizeof strtmp, VEHICLE_TELEPORTED_TO_X, CreatorInfo[playerid][ucClickedVeh], X);
						SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
					}
					ShowCreatorDialog(playerid, DIALOG_EDIT_VEHICLE);
				}
				return 1;
			}
			case DIALOG_EDIT_VEHICLE_Y:
			{
				if(CreatorInfo[playerid][ucClickedVeh] != 65535 && VehiclesInfo[CreatorInfo[playerid][ucClickedVeh]][vCreated])
				{
					if(response)
					{
						if(!IsNumeric(inputtext))
						{
							ShowCreatorDialog(playerid, DIALOG_EDIT_VEHICLE_Y);
							return SendClientMessage(playerid, DEFAULT_COLOR, INCORRECT_COORD_Y_ERROR);
						}
						static strtmp[145];
						new Float:X, Float:Y, Float:Z;
						GetVehiclePos(CreatorInfo[playerid][ucClickedVeh], X, Y, Z);
						Y = floatstr(inputtext);
						SetVehiclePos(CreatorInfo[playerid][ucClickedVeh], X, Y, Z);
						format(strtmp, sizeof strtmp, VEHICLE_TELEPORTED_TO_Y, CreatorInfo[playerid][ucClickedVeh], Y);
						SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
					}
					ShowCreatorDialog(playerid, DIALOG_EDIT_VEHICLE);
				}
				return 1;
			}
			case DIALOG_EDIT_VEHICLE_Z:
			{
				if(CreatorInfo[playerid][ucClickedVeh] != 65535 && VehiclesInfo[CreatorInfo[playerid][ucClickedVeh]][vCreated])
				{
					if(response)
					{
						if(!IsNumeric(inputtext))
						{
							ShowCreatorDialog(playerid, DIALOG_EDIT_VEHICLE_Z);
							return SendClientMessage(playerid, DEFAULT_COLOR, INCORRECT_COORD_Z_ERROR);
						}
						static strtmp[145];
						new Float:X, Float:Y, Float:Z;
						GetVehiclePos(CreatorInfo[playerid][ucClickedVeh], X, Y, Z);
						Z = floatstr(inputtext);
						SetVehiclePos(CreatorInfo[playerid][ucClickedVeh], X, Y, Z);
						format(strtmp, sizeof strtmp, VEHICLE_TELEPORTED_TO_Z, CreatorInfo[playerid][ucClickedVeh], Z);
						SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
					}
					ShowCreatorDialog(playerid, DIALOG_EDIT_VEHICLE);
				}
				return 1;
			}
			case DIALOG_EDIT_VEHICLE_RZ:
			{
				if(CreatorInfo[playerid][ucClickedVeh] != 65535 && VehiclesInfo[CreatorInfo[playerid][ucClickedVeh]][vCreated])
				{
					if(response)
					{
						if(!IsNumeric(inputtext))
						{
							ShowCreatorDialog(playerid, DIALOG_EDIT_VEHICLE_RZ);
							return SendClientMessage(playerid, DEFAULT_COLOR, INCORRECT_ROT_Z_ERROR);
						}
						static strtmp[145];
						new Float:rZ = floatstr(inputtext);
						SetVehicleZAngle(CreatorInfo[playerid][ucClickedVeh], rZ);
						format(strtmp, sizeof strtmp, VEHICLE_TELEPORTED_TO_ROT_Z, CreatorInfo[playerid][ucClickedVeh], rZ);
						SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
					}
					ShowCreatorDialog(playerid, DIALOG_EDIT_VEHICLE);
				}
				return 1;
			}
			case DIALOG_EDIT_VEHICLE_DELAY:
			{
				if(CreatorInfo[playerid][ucClickedVeh] != 65535 && VehiclesInfo[CreatorInfo[playerid][ucClickedVeh]][vCreated])
				{
					if(response)
					{
						if(!IsNumeric(inputtext))
						{
							ShowCreatorDialog(playerid, DIALOG_EDIT_VEHICLE_DELAY);
							return SendClientMessage(playerid, DEFAULT_COLOR, INCORRECT_RESPAWN_TIME_ERROR);
						}
						static strtmp[145];
						VehiclesInfo[CreatorInfo[playerid][ucClickedVeh]][vRespawnDelay] = strval(inputtext);
						format(strtmp, sizeof strtmp, RESPAWN_TIME_CHANGED, VehiclesInfo[CreatorInfo[playerid][ucClickedVeh]][vRespawnDelay], CreatorInfo[playerid][ucClickedVeh]);
						SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
					}
					ShowCreatorDialog(playerid, DIALOG_EDIT_VEHICLE);
				}
				return 1;
			}
			case DIALOG_EDIT_VEHICLE_COLOR_1:
			{
				if(CreatorInfo[playerid][ucClickedVeh] != 65535 && VehiclesInfo[CreatorInfo[playerid][ucClickedVeh]][vCreated])
				{
					if(response)
					{
						if(!IsNumeric(inputtext))
						{
							ShowCreatorDialog(playerid, DIALOG_EDIT_VEHICLE_COLOR_1);
							return SendClientMessage(playerid, DEFAULT_COLOR, INCORRECT_COLOR_1_ERROR);
						}
						static strtmp[145];
						new color = strval(inputtext);
						ChangeVehicleColor(CreatorInfo[playerid][ucClickedVeh], color, VehiclesInfo[CreatorInfo[playerid][ucClickedVeh]][vColor2]);
						format(strtmp, sizeof strtmp, COLOR_1_CHANGED, CreatorInfo[playerid][ucClickedVeh], color);
						SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
					}
					ShowCreatorDialog(playerid, DIALOG_EDIT_VEHICLE);
				}
				return 1;
			}
			case DIALOG_EDIT_VEHICLE_COLOR_2:
			{
				if(CreatorInfo[playerid][ucClickedVeh] != 65535 && VehiclesInfo[CreatorInfo[playerid][ucClickedVeh]][vCreated])
				{
					if(response)
					{
						if(!IsNumeric(inputtext))
						{
							ShowCreatorDialog(playerid, DIALOG_EDIT_VEHICLE_COLOR_2);
							return SendClientMessage(playerid, DEFAULT_COLOR, INCORRECT_COLOR_2_ERROR);
						}
						static strtmp[145];
						new color = strval(inputtext);
						ChangeVehicleColor(CreatorInfo[playerid][ucClickedVeh], VehiclesInfo[CreatorInfo[playerid][ucClickedVeh]][vColor1], color);
						format(strtmp, sizeof strtmp, COLOR_2_CHANGED, CreatorInfo[playerid][ucClickedVeh], color);
						SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
					}
					ShowCreatorDialog(playerid, DIALOG_EDIT_VEHICLE);
				}
				return 1;
			}
			case DIALOG_EDIT_ACTOR:
			{
				if(CreatorInfo[playerid][ucClickedAct] != 65535)
				{
					CreatorInfo[playerid][ucSelectedAct] = 65535;
					if(response)
					{
						switch(listitem)
						{
							case 0: CreatorInfo[playerid][ucSelectedAct] = CreatorInfo[playerid][ucClickedAct];
							case 1:
							{
								if(ActorsInfo[CreatorInfo[playerid][ucClickedAct]][aCreated])
								{
									static strtmp[145];
									new Float:posX, Float:posY, Float:posZ;
									GetActorPos(CreatorInfo[playerid][ucClickedAct], posX, posY, posZ);
									SetPlayerObjectPos(playerid, CreatorInfo[playerid][ucFlyObject], posX, posY, posZ);
									format(strtmp, sizeof strtmp, TELEPORTED_TO_ACTOR, CreatorInfo[playerid][ucClickedAct]);
									SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
								}
							}
							case 2:
							{
								if(ActorsInfo[CreatorInfo[playerid][ucClickedAct]][aCreated])
								{
									static strtmp[145];
									new Float:posX, Float:posY, Float:posZ;
									GetPlayerObjectPos(playerid, CreatorInfo[playerid][ucFlyObject], posX, posY, posZ);
									SetActorPos(CreatorInfo[playerid][ucClickedAct], posX, posY, posZ);
									format(strtmp, sizeof strtmp, TELEPORTED_ACTOR, CreatorInfo[playerid][ucClickedAct]);
									SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
								}
							}
							case 3:
							{
								if(ActorsInfo[CreatorInfo[playerid][ucClickedAct]][aCreated])
								{
									new
										Float:act_x, Float:act_y,
										Float:act_z, Float:act_rz;
									GetActorPos(CreatorInfo[playerid][ucClickedAct], act_x, act_y, act_z);
									GetActorFacingAngle(CreatorInfo[playerid][ucClickedAct], act_rz);
									new cact = CreateActor(ActorsInfo[CreatorInfo[playerid][ucClickedAct]][aModelid], act_x, act_y, act_z, act_rz);
									if(cact != INVALID_ACTOR_ID)
									{
										static strtmp[145];
										CreatorInfo[playerid][ucHoldingAct] = cact;
										format(strtmp, sizeof strtmp, ACTOR_COPIED, cact);
										SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
									}
									else SendClientMessage(playerid, DEFAULT_COLOR, LIMIT_ERROR);
								}
							}
							case 4:
							{
								if(CreatorInfo[playerid][ucHoldingAct] == CreatorInfo[playerid][ucClickedAct]) CreatorInfo[playerid][ucHoldingAct] = 65535;
								if(ActorsInfo[CreatorInfo[playerid][ucClickedAct]][aCreated])
								{
									static strtmp[145];
									format(strtmp, sizeof strtmp, ACTOR_DELETED, CreatorInfo[playerid][ucClickedAct]);
									SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
									DestroyActor(CreatorInfo[playerid][ucClickedAct]);
								}
							}
							case 5: ShowCreatorDialog(playerid, DIALOG_EDIT_ACTOR_X);
							case 6: ShowCreatorDialog(playerid, DIALOG_EDIT_ACTOR_Y);
							case 7: ShowCreatorDialog(playerid, DIALOG_EDIT_ACTOR_Z);
							case 8: ShowCreatorDialog(playerid, DIALOG_EDIT_ACTOR_RZ);
						}
					}
					else if(!CreatorInfo[playerid][ucCallEditDialog]) ShowCreatorDialog(playerid, DIALOG_EDIT);
				}
				return 1;
			}
			case DIALOG_EDIT_ACTOR_X:
			{
				if(CreatorInfo[playerid][ucClickedAct] != 65535 && ActorsInfo[CreatorInfo[playerid][ucClickedAct]][aCreated])
				{
					if(response)
					{
						if(!IsNumeric(inputtext))
						{
							ShowCreatorDialog(playerid, DIALOG_EDIT_ACTOR_X);
							return SendClientMessage(playerid, DEFAULT_COLOR, INCORRECT_COORD_X_ERROR);
						}
						static strtmp[145];
						new Float:X, Float:Y, Float:Z;
						GetActorPos(CreatorInfo[playerid][ucClickedAct], X, Y, Z);
						X = floatstr(inputtext);
						SetActorPos(CreatorInfo[playerid][ucClickedAct], X, Y, Z);
						format(strtmp, sizeof strtmp, ACTOR_TELEPORTED_TO_X, CreatorInfo[playerid][ucClickedAct], X);
						SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
					}
					ShowCreatorDialog(playerid, DIALOG_EDIT_ACTOR);
				}
				return 1;
			}
			case DIALOG_EDIT_ACTOR_Y:
			{
				if(CreatorInfo[playerid][ucClickedAct] != 65535 && ActorsInfo[CreatorInfo[playerid][ucClickedAct]][aCreated])
				{
					if(response)
					{
						if(!IsNumeric(inputtext))
						{
							ShowCreatorDialog(playerid, DIALOG_EDIT_ACTOR_Y);
							return SendClientMessage(playerid, DEFAULT_COLOR, INCORRECT_COORD_Y_ERROR);
						}
						static strtmp[145];
						new Float:X, Float:Y, Float:Z;
						GetActorPos(CreatorInfo[playerid][ucClickedAct], X, Y, Z);
						Y = floatstr(inputtext);
						SetActorPos(CreatorInfo[playerid][ucClickedAct], X, Y, Z);
						format(strtmp, sizeof strtmp, ACTOR_TELEPORTED_TO_Y, CreatorInfo[playerid][ucClickedAct], Y);
						SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
					}
					ShowCreatorDialog(playerid, DIALOG_EDIT_ACTOR);
				}
				return 1;
			}
			case DIALOG_EDIT_ACTOR_Z:
			{
				if(CreatorInfo[playerid][ucClickedAct] != 65535 && ActorsInfo[CreatorInfo[playerid][ucClickedAct]][aCreated])
				{
					if(response)
					{
						if(!IsNumeric(inputtext))
						{
							ShowCreatorDialog(playerid, DIALOG_EDIT_ACTOR_Z);
							return SendClientMessage(playerid, DEFAULT_COLOR, INCORRECT_COORD_Z_ERROR);
						}
						static strtmp[145];
						new Float:X, Float:Y, Float:Z;
						GetActorPos(CreatorInfo[playerid][ucClickedAct], X, Y, Z);
						Z = floatstr(inputtext);
						SetActorPos(CreatorInfo[playerid][ucClickedAct], X, Y, Z);
						format(strtmp, sizeof strtmp, ACTOR_TELEPORTED_TO_Z, CreatorInfo[playerid][ucClickedAct], Z);
						SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
					}
					ShowCreatorDialog(playerid, DIALOG_EDIT_ACTOR);
				}
				return 1;
			}
			case DIALOG_EDIT_ACTOR_RZ:
			{
				if(CreatorInfo[playerid][ucClickedAct] != 65535 && ActorsInfo[CreatorInfo[playerid][ucClickedAct]][aCreated])
				{
					if(response)
					{
						if(!IsNumeric(inputtext))
						{
							ShowCreatorDialog(playerid, DIALOG_EDIT_ACTOR_RZ);
							return SendClientMessage(playerid, DEFAULT_COLOR, INCORRECT_ROT_Z_ERROR);
						}
						static strtmp[145];
						new Float:rZ = floatstr(inputtext);
						SetActorFacingAngle(CreatorInfo[playerid][ucClickedAct], rZ);
						format(strtmp, sizeof strtmp, ACTOR_TELEPORTED_TO_ROT_Z, CreatorInfo[playerid][ucClickedAct], rZ);
						SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
					}
					ShowCreatorDialog(playerid, DIALOG_EDIT_ACTOR);
				}
				return 1;
			}
			case DIALOG_EDIT_PICKUP:
			{
				if(CreatorInfo[playerid][ucClickedPick] != 65535)
				{
					CreatorInfo[playerid][ucSelectedPick] = 65535;
					if(response)
					{
						switch(listitem)
						{
							case 0: CreatorInfo[playerid][ucSelectedPick] = CreatorInfo[playerid][ucClickedPick];
							case 1:
							{
								if(PickupsInfo[CreatorInfo[playerid][ucClickedPick]][pCreated])
								{
									static strtmp[145];
									SetPlayerObjectPos(playerid, CreatorInfo[playerid][ucFlyObject], PickupsInfo[CreatorInfo[playerid][ucClickedPick]][pX], PickupsInfo[CreatorInfo[playerid][ucClickedPick]][pY], PickupsInfo[CreatorInfo[playerid][ucClickedPick]][pZ]);
									format(strtmp, sizeof strtmp, TELEPORTED_TO_PICKUP, CreatorInfo[playerid][ucClickedPick]);
									SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
								}
							}
							case 2:
							{
								if(PickupsInfo[CreatorInfo[playerid][ucClickedPick]][pCreated])
								{
									static strtmp[145];
									new Float:posX, Float:posY, Float:posZ;
									GetPlayerObjectPos(playerid, CreatorInfo[playerid][ucFlyObject], posX, posY, posZ);
									UpdatePickupPos(CreatorInfo[playerid][ucClickedPick], posX, posY, posZ);
									format(strtmp, sizeof strtmp, TELEPORTED_PICKUP, CreatorInfo[playerid][ucClickedPick]);
									SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
								}
							}
							case 3:
							{
								if(PickupsInfo[CreatorInfo[playerid][ucClickedPick]][pCreated])
								{
									new cpick = CreatePickup(PickupsInfo[CreatorInfo[playerid][ucClickedPick]][pModelid], PickupsInfo[CreatorInfo[playerid][ucClickedPick]][pType], PickupsInfo[CreatorInfo[playerid][ucClickedPick]][pX],
									PickupsInfo[CreatorInfo[playerid][ucClickedPick]][pY], PickupsInfo[CreatorInfo[playerid][ucClickedPick]][pZ], PickupsInfo[CreatorInfo[playerid][ucClickedPick]][pVirtualWorld]);
									if(cpick != -1)
									{
										static strtmp[145];
										CreatorInfo[playerid][ucHoldingPick] = cpick;
										format(strtmp, sizeof strtmp, PICKUP_COPIED, cpick);
										SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
									}
									else SendClientMessage(playerid, DEFAULT_COLOR, LIMIT_ERROR);
								}
							}
							case 4:
							{
								if(CreatorInfo[playerid][ucHoldingPick] == CreatorInfo[playerid][ucClickedPick]) CreatorInfo[playerid][ucHoldingPick] = 65535;
								if(PickupsInfo[CreatorInfo[playerid][ucClickedPick]][pCreated])
								{
									static strtmp[145];
									format(strtmp, sizeof strtmp, PICKUP_DELETED, CreatorInfo[playerid][ucClickedPick]);
									SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
									DestroyPickup(CreatorInfo[playerid][ucClickedPick]);
								}
							}
							case 5: ShowCreatorDialog(playerid, DIALOG_EDIT_PICKUP_TYPE);
							case 6: ShowCreatorDialog(playerid, DIALOG_EDIT_PICKUP_X);
							case 7: ShowCreatorDialog(playerid, DIALOG_EDIT_PICKUP_Y);
							case 8: ShowCreatorDialog(playerid, DIALOG_EDIT_PICKUP_Z);
							case 9: ShowCreatorDialog(playerid, DIALOG_EDIT_PICKUP_VW);
						}
					}
					else if(!CreatorInfo[playerid][ucCallEditDialog]) ShowCreatorDialog(playerid, DIALOG_EDIT);
				}
				return 1;
			}
			case DIALOG_EDIT_PICKUP_TYPE:
			{
				if(CreatorInfo[playerid][ucClickedPick] != 65535 && PickupsInfo[CreatorInfo[playerid][ucClickedPick]][pCreated])
				{
					if(response)
					{
						if(!IsNumeric(inputtext))
						{
							ShowCreatorDialog(playerid, DIALOG_EDIT_PICKUP_TYPE);
							return SendClientMessage(playerid, DEFAULT_COLOR, INCORRECT_PICKUP_TYPE_ERROR);
						}
						static strtmp[145];
						UpdatePickupType(CreatorInfo[playerid][ucClickedPick], strval(inputtext));
						format(strtmp, sizeof strtmp, PICKUP_TYPE_CHANGED, PickupsInfo[CreatorInfo[playerid][ucClickedPick]][pType], CreatorInfo[playerid][ucClickedPick]);
						SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
					}
					ShowCreatorDialog(playerid, DIALOG_EDIT_PICKUP);
				}
				return 1;
			}
			case DIALOG_EDIT_PICKUP_X:
			{
				if(CreatorInfo[playerid][ucClickedPick] != 65535 && PickupsInfo[CreatorInfo[playerid][ucClickedPick]][pCreated])
				{
					if(response)
					{
						if(!IsNumeric(inputtext))
						{
							ShowCreatorDialog(playerid, DIALOG_EDIT_PICKUP_X);
							return SendClientMessage(playerid, DEFAULT_COLOR, INCORRECT_COORD_X_ERROR);
						}
						static strtmp[145];
						UpdatePickupPos(CreatorInfo[playerid][ucClickedPick], floatstr(inputtext), PickupsInfo[CreatorInfo[playerid][ucClickedPick]][pY], PickupsInfo[CreatorInfo[playerid][ucClickedPick]][pZ]);
						format(strtmp, sizeof strtmp, PICKUP_TELEPORTED_TO_X, CreatorInfo[playerid][ucClickedPick], PickupsInfo[CreatorInfo[playerid][ucClickedPick]][pX]);
						SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
					}
					ShowCreatorDialog(playerid, DIALOG_EDIT_PICKUP);
				}
				return 1;
			}
			case DIALOG_EDIT_PICKUP_Y:
			{
				if(CreatorInfo[playerid][ucClickedPick] != 65535 && PickupsInfo[CreatorInfo[playerid][ucClickedPick]][pCreated])
				{
					if(response)
					{
						if(!IsNumeric(inputtext))
						{
							ShowCreatorDialog(playerid, DIALOG_EDIT_PICKUP_Y);
							return SendClientMessage(playerid, DEFAULT_COLOR, INCORRECT_COORD_Y_ERROR);
						}
						static strtmp[145];
						UpdatePickupPos(CreatorInfo[playerid][ucClickedPick], PickupsInfo[CreatorInfo[playerid][ucClickedPick]][pX], floatstr(inputtext), PickupsInfo[CreatorInfo[playerid][ucClickedPick]][pZ]);
						format(strtmp, sizeof strtmp, PICKUP_TELEPORTED_TO_Y, CreatorInfo[playerid][ucClickedPick], PickupsInfo[CreatorInfo[playerid][ucClickedPick]][pY]);
						SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
					}
					ShowCreatorDialog(playerid, DIALOG_EDIT_PICKUP);
				}
				return 1;
			}
			case DIALOG_EDIT_PICKUP_Z:
			{
				if(CreatorInfo[playerid][ucClickedPick] != 65535 && PickupsInfo[CreatorInfo[playerid][ucClickedPick]][pCreated])
				{
					if(response)
					{
						if(!IsNumeric(inputtext))
						{
							ShowCreatorDialog(playerid, DIALOG_EDIT_PICKUP_Z);
							return SendClientMessage(playerid, DEFAULT_COLOR, INCORRECT_COORD_Z_ERROR);
						}
						static strtmp[145];
						UpdatePickupPos(CreatorInfo[playerid][ucClickedPick], PickupsInfo[CreatorInfo[playerid][ucClickedPick]][pX], PickupsInfo[CreatorInfo[playerid][ucClickedPick]][pY], floatstr(inputtext));
						format(strtmp, sizeof strtmp, PICKUP_TELEPORTED_TO_Z, CreatorInfo[playerid][ucClickedPick], PickupsInfo[CreatorInfo[playerid][ucClickedPick]][pZ]);
						SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
					}
					ShowCreatorDialog(playerid, DIALOG_EDIT_PICKUP);
				}
				return 1;
			}
			case DIALOG_EDIT_PICKUP_VW:
			{
				if(CreatorInfo[playerid][ucClickedPick] != 65535 && PickupsInfo[CreatorInfo[playerid][ucClickedPick]][pCreated])
				{
					if(response)
					{
						if(!IsNumeric(inputtext))
						{
							ShowCreatorDialog(playerid, DIALOG_EDIT_PICKUP_VW);
							return SendClientMessage(playerid, DEFAULT_COLOR, INCORRECT_VW_ERROR);
						}
						static strtmp[145];
						UpdatePickupVirtualWorld(CreatorInfo[playerid][ucClickedPick], strval(inputtext));
						format(strtmp, sizeof strtmp, PICKUP_VW_CHANGED, PickupsInfo[CreatorInfo[playerid][ucClickedPick]][pVirtualWorld], CreatorInfo[playerid][ucClickedPick]);
						SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
					}
					ShowCreatorDialog(playerid, DIALOG_EDIT_PICKUP);
				}
				return 1;
			}
			case DIALOG_EDIT_CP:
			{
				if(CreatorInfo[playerid][ucClickedCp] != 65535)
				{
					CreatorInfo[playerid][ucSelectedCp] = 65535;
					if(response)
					{
						switch(listitem)
						{
							case 0: CreatorInfo[playerid][ucSelectedCp] = CreatorInfo[playerid][ucClickedCp];
							case 1:
							{
								if(CheckpointInfo[cpCreated])
								{
									static strtmp[145];
									SetPlayerObjectPos(playerid, CreatorInfo[playerid][ucFlyObject], CheckpointInfo[cpX], CheckpointInfo[cpY], CheckpointInfo[cpZ]);
									format(strtmp, sizeof strtmp, TELEPORTED_TO_CP, CreatorInfo[playerid][ucClickedCp]);
									SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
								}
							}
							case 2:
							{
								if(CheckpointInfo[cpCreated])
								{
									static strtmp[145];
									new Float:posX, Float:posY, Float:posZ;
									GetPlayerObjectPos(playerid, CreatorInfo[playerid][ucFlyObject], posX, posY, posZ);
									UpdateCpPos(posX, posY, posZ);
									format(strtmp, sizeof strtmp, TELEPORTED_CP, CreatorInfo[playerid][ucClickedCp]);
									SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
								}
							}
							case 3:
							{
								if(CreatorInfo[playerid][ucHoldingCp] == CreatorInfo[playerid][ucClickedCp]) CreatorInfo[playerid][ucHoldingCp] = 65535;
								if(CheckpointInfo[cpCreated])
								{
									static strtmp[145];
									format(strtmp, sizeof strtmp, CP_DELETED, CreatorInfo[playerid][ucClickedCp]);
									SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
									DisableCheckpoint();
								}
							}
							case 4: ShowCreatorDialog(playerid, DIALOG_EDIT_CP_X);
							case 5: ShowCreatorDialog(playerid, DIALOG_EDIT_CP_Y);
							case 6: ShowCreatorDialog(playerid, DIALOG_EDIT_CP_SIZE);
						}
					}
					else if(!CreatorInfo[playerid][ucCallEditDialog]) ShowCreatorDialog(playerid, DIALOG_EDIT);
				}
				return 1;
			}
			case DIALOG_EDIT_CP_X:
			{
				if(CreatorInfo[playerid][ucClickedCp] != 65535 && CheckpointInfo[cpCreated])
				{
					if(response)
					{
						if(!IsNumeric(inputtext))
						{
							ShowCreatorDialog(playerid, DIALOG_EDIT_CP_X);
							return SendClientMessage(playerid, DEFAULT_COLOR, INCORRECT_COORD_X_ERROR);
						}
						static strtmp[145];
						UpdateCpPos(floatstr(inputtext), CheckpointInfo[cpY], CheckpointInfo[cpZ]);
						format(strtmp, sizeof strtmp, CP_TELEPORTED_TO_X, CreatorInfo[playerid][ucClickedCp], CheckpointInfo[cpX]);
						SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
					}
					ShowCreatorDialog(playerid, DIALOG_EDIT_CP);
				}
				return 1;
			}
			case DIALOG_EDIT_CP_Y:
			{
				if(CreatorInfo[playerid][ucClickedCp] != 65535 && CheckpointInfo[cpCreated])
				{
					if(response)
					{
						if(!IsNumeric(inputtext))
						{
							ShowCreatorDialog(playerid, DIALOG_EDIT_CP_Y);
							return SendClientMessage(playerid, DEFAULT_COLOR, INCORRECT_COORD_Y_ERROR);
						}
						static strtmp[145];
						UpdateCpPos(CheckpointInfo[cpX], floatstr(inputtext), CheckpointInfo[cpZ]);
						format(strtmp, sizeof strtmp, CP_TELEPORTED_TO_Y, CreatorInfo[playerid][ucClickedCp], CheckpointInfo[cpY]);
						SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
					}
					ShowCreatorDialog(playerid, DIALOG_EDIT_CP);
				}
				return 1;
			}
			case DIALOG_EDIT_CP_SIZE:
			{
				if(CreatorInfo[playerid][ucClickedCp] != 65535 && CheckpointInfo[cpCreated])
				{
					if(response)
					{
						if(!IsNumeric(inputtext))
						{
							ShowCreatorDialog(playerid, DIALOG_EDIT_CP_SIZE);
							return SendClientMessage(playerid, DEFAULT_COLOR, INCORRECT_SIZE_ERROR);
						}
						static strtmp[145];
						UpdateCpSize(floatstr(inputtext));
						format(strtmp, sizeof strtmp, CP_SIZE_CHANGED, CheckpointInfo[cpSize], CreatorInfo[playerid][ucClickedCp]);
						SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
					}
					ShowCreatorDialog(playerid, DIALOG_EDIT_CP);
				}
				return 1;
			}
			case DIALOG_EDIT_RCP:
			{
				if(CreatorInfo[playerid][ucClickedRcp] != 65535)
				{
					CreatorInfo[playerid][ucSelectedRcp] = 65535;
					if(response)
					{
						switch(listitem)
						{
							case 0: CreatorInfo[playerid][ucSelectedRcp] = CreatorInfo[playerid][ucClickedRcp];
							case 1:
							{
								if(RaceCpInfo[rcpCreated])
								{
									static strtmp[145];
									SetPlayerObjectPos(playerid, CreatorInfo[playerid][ucFlyObject], RaceCpInfo[rcpX], RaceCpInfo[rcpY], RaceCpInfo[rcpZ]);
									format(strtmp, sizeof strtmp, TELEPORTED_TO_RCP, CreatorInfo[playerid][ucClickedRcp]);
									SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
								}
							}
							case 2:
							{
								if(RaceCpInfo[rcpCreated])
								{
									static strtmp[145];
									new Float:posX, Float:posY, Float:posZ;
									GetPlayerObjectPos(playerid, CreatorInfo[playerid][ucFlyObject], posX, posY, posZ);
									UpdateRcpPos(posX, posY, posZ);
									format(strtmp, sizeof strtmp, TELEPORTED_RCP, CreatorInfo[playerid][ucClickedRcp]);
									SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
								}
							}
							case 3:
							{
								if(CreatorInfo[playerid][ucHoldingRcp] == CreatorInfo[playerid][ucClickedRcp]) CreatorInfo[playerid][ucHoldingRcp] = 65535;
								if(RaceCpInfo[rcpCreated])
								{
									static strtmp[145];
									format(strtmp, sizeof strtmp, RCP_DELETED, CreatorInfo[playerid][ucClickedRcp]);
									SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
									DisableRaceCheckpoint();
								}
							}
							case 4: ShowCreatorDialog(playerid, DIALOG_EDIT_RCP_TYPE);
							case 5: ShowCreatorDialog(playerid, DIALOG_EDIT_RCP_X);
							case 6: ShowCreatorDialog(playerid, DIALOG_EDIT_RCP_Y);
							case 7: ShowCreatorDialog(playerid, DIALOG_EDIT_RCP_Z);
							case 8: ShowCreatorDialog(playerid, DIALOG_EDIT_RCP_NEXTX);
							case 9: ShowCreatorDialog(playerid, DIALOG_EDIT_RCP_NEXTY);
							case 10: ShowCreatorDialog(playerid, DIALOG_EDIT_RCP_NEXTZ);
							case 11: ShowCreatorDialog(playerid, DIALOG_EDIT_RCP_SIZE);
						}
					}
					else if(!CreatorInfo[playerid][ucCallEditDialog]) ShowCreatorDialog(playerid, DIALOG_EDIT);
				}
				return 1;
			}
			case DIALOG_EDIT_RCP_TYPE:
			{
				if(CreatorInfo[playerid][ucClickedRcp] != 65535 && RaceCpInfo[rcpCreated])
				{
					if(response && -1 < listitem < 5)
					{
						static strtmp[145];
						UpdateRcpType(listitem);
						format(strtmp, sizeof strtmp, RCP_TYPE_CHANGED, RaceCpInfo[rcpType], CreatorInfo[playerid][ucClickedRcp]);
						SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
					}
					ShowCreatorDialog(playerid, DIALOG_EDIT_RCP);
				}
				return 1;
			}
			case DIALOG_EDIT_RCP_X:
			{
				if(CreatorInfo[playerid][ucClickedRcp] != 65535 && RaceCpInfo[rcpCreated])
				{
					if(response)
					{
						if(!IsNumeric(inputtext))
						{
							ShowCreatorDialog(playerid, DIALOG_EDIT_RCP_X);
							return SendClientMessage(playerid, DEFAULT_COLOR, INCORRECT_COORD_X_ERROR);
						}
						static strtmp[145];
						UpdateRcpPos(floatstr(inputtext), RaceCpInfo[rcpY], RaceCpInfo[rcpZ]);
						format(strtmp, sizeof strtmp, RCP_TELEPORTED_TO_X, CreatorInfo[playerid][ucClickedRcp], RaceCpInfo[rcpX]);
						SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
					}
					ShowCreatorDialog(playerid, DIALOG_EDIT_RCP);
				}
				return 1;
			}
			case DIALOG_EDIT_RCP_Y:
			{
				if(CreatorInfo[playerid][ucClickedRcp] != 65535 && RaceCpInfo[rcpCreated])
				{
					if(response)
					{
						if(!IsNumeric(inputtext))
						{
							ShowCreatorDialog(playerid, DIALOG_EDIT_RCP_Y);
							return SendClientMessage(playerid, DEFAULT_COLOR, INCORRECT_COORD_Y_ERROR);
						}
						static strtmp[145];
						UpdateRcpPos(RaceCpInfo[rcpX], floatstr(inputtext), RaceCpInfo[rcpZ]);
						format(strtmp, sizeof strtmp, RCP_TELEPORTED_TO_Y, CreatorInfo[playerid][ucClickedRcp], RaceCpInfo[rcpY]);
						SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
					}
					ShowCreatorDialog(playerid, DIALOG_EDIT_RCP);
				}
				return 1;
			}
			case DIALOG_EDIT_RCP_Z:
			{
				if(CreatorInfo[playerid][ucClickedRcp] != 65535 && RaceCpInfo[rcpCreated])
				{
					if(response)
					{
						if(!IsNumeric(inputtext))
						{
							ShowCreatorDialog(playerid, DIALOG_EDIT_RCP_Z);
							return SendClientMessage(playerid, DEFAULT_COLOR, INCORRECT_COORD_Z_ERROR);
						}
						static strtmp[145];
						UpdateRcpPos(RaceCpInfo[rcpX], RaceCpInfo[rcpY], floatstr(inputtext));
						format(strtmp, sizeof strtmp, RCP_TELEPORTED_TO_Z, CreatorInfo[playerid][ucClickedRcp], RaceCpInfo[rcpZ]);
						SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
					}
					ShowCreatorDialog(playerid, DIALOG_EDIT_RCP);
				}
				return 1;
			}
			case DIALOG_EDIT_RCP_NEXTX:
			{
				if(CreatorInfo[playerid][ucClickedRcp] != 65535 && RaceCpInfo[rcpCreated])
				{
					if(response)
					{
						if(!IsNumeric(inputtext))
						{
							ShowCreatorDialog(playerid, DIALOG_EDIT_RCP_NEXTX);
							return SendClientMessage(playerid, DEFAULT_COLOR, INCORRECT_NEXTX_ERROR);
						}
						static strtmp[145];
						UpdateRcpNextPos(floatstr(inputtext), RaceCpInfo[rcpNextY], RaceCpInfo[rcpNextZ]);
						format(strtmp, sizeof strtmp, RCP_NEXTX_CHANGED, CreatorInfo[playerid][ucClickedRcp], RaceCpInfo[rcpNextX]);
						SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
					}
					ShowCreatorDialog(playerid, DIALOG_EDIT_RCP);
				}
				return 1;
			}
			case DIALOG_EDIT_RCP_NEXTY:
			{
				if(CreatorInfo[playerid][ucClickedRcp] != 65535 && RaceCpInfo[rcpCreated])
				{
					if(response)
					{
						if(!IsNumeric(inputtext))
						{
							ShowCreatorDialog(playerid, DIALOG_EDIT_RCP_NEXTY);
							return SendClientMessage(playerid, DEFAULT_COLOR, INCORRECT_NEXTY_ERROR);
						}
						static strtmp[145];
						UpdateRcpNextPos(RaceCpInfo[rcpNextX], floatstr(inputtext), RaceCpInfo[rcpNextZ]);
						format(strtmp, sizeof strtmp, RCP_NEXTY_CHANGED, CreatorInfo[playerid][ucClickedRcp], RaceCpInfo[rcpNextY]);
						SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
					}
					ShowCreatorDialog(playerid, DIALOG_EDIT_RCP);
				}
				return 1;
			}
			case DIALOG_EDIT_RCP_NEXTZ:
			{
				if(CreatorInfo[playerid][ucClickedRcp] != 65535 && RaceCpInfo[rcpCreated])
				{
					if(response)
					{
						if(!IsNumeric(inputtext))
						{
							ShowCreatorDialog(playerid, DIALOG_EDIT_RCP_NEXTZ);
							return SendClientMessage(playerid, DEFAULT_COLOR, INCORRECT_NEXTZ_ERROR);
						}
						static strtmp[145];
						UpdateRcpNextPos(RaceCpInfo[rcpNextX], RaceCpInfo[rcpNextY], floatstr(inputtext));
						format(strtmp, sizeof strtmp, RCP_NEXTZ_CHANGED, CreatorInfo[playerid][ucClickedRcp], RaceCpInfo[rcpNextZ]);
						SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
					}
					ShowCreatorDialog(playerid, DIALOG_EDIT_RCP);
				}
				return 1;
			}
			case DIALOG_EDIT_RCP_SIZE:
			{
				if(CreatorInfo[playerid][ucClickedRcp] != 65535 && RaceCpInfo[rcpCreated])
				{
					if(response)
					{
						if(!IsNumeric(inputtext))
						{
							ShowCreatorDialog(playerid, DIALOG_EDIT_RCP_SIZE);
							return SendClientMessage(playerid, DEFAULT_COLOR, INCORRECT_SIZE_ERROR);
						}
						static strtmp[145];
						UpdateRcpSize(floatstr(inputtext));
						format(strtmp, sizeof strtmp, RCP_SIZE_CHANGED, RaceCpInfo[rcpSize], CreatorInfo[playerid][ucClickedRcp]);
						SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
					}
					ShowCreatorDialog(playerid, DIALOG_EDIT_RCP);
				}
				return 1;
			}
			case DIALOG_EDIT_ICON:
			{
				if(CreatorInfo[playerid][ucClickedIco] != 65535)
				{
					CreatorInfo[playerid][ucSelectedIco] = 65535;
					if(response)
					{
						switch(listitem)
						{
							case 0: CreatorInfo[playerid][ucSelectedIco] = CreatorInfo[playerid][ucClickedIco];
							case 1:
							{
								if(IconsInfo[CreatorInfo[playerid][ucClickedIco]][iCreated])
								{
									static strtmp[145];
									SetPlayerObjectPos(playerid, CreatorInfo[playerid][ucFlyObject], IconsInfo[CreatorInfo[playerid][ucClickedIco]][iX], IconsInfo[CreatorInfo[playerid][ucClickedIco]][iY], IconsInfo[CreatorInfo[playerid][ucClickedIco]][iZ]);
									format(strtmp, sizeof strtmp, TELEPORTED_TO_MAPICON, CreatorInfo[playerid][ucClickedLab]);
									SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
								}
							}
							case 2:
							{
								if(IconsInfo[CreatorInfo[playerid][ucClickedIco]][iCreated])
								{
									static strtmp[145];
									new Float:posX, Float:posY, Float:posZ;
									GetPlayerObjectPos(playerid, CreatorInfo[playerid][ucFlyObject], posX, posY, posZ);
									UpdateMapIconPos(CreatorInfo[playerid][ucClickedIco], posX, posY, posZ);
									format(strtmp, sizeof strtmp, TELEPORTED_MAPICON, CreatorInfo[playerid][ucClickedIco]);
									SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
								}
							}
							case 3:
							{
								if(IconsInfo[CreatorInfo[playerid][ucClickedIco]][iCreated])
								{
									new cico = GetFreeMapIconID();
									if(cico != -1)
									{
										static strtmp[145];
										SetMapIcon(cico, IconsInfo[CreatorInfo[playerid][ucClickedIco]][iX], IconsInfo[CreatorInfo[playerid][ucClickedIco]][iY], IconsInfo[CreatorInfo[playerid][ucClickedIco]][iZ],
										IconsInfo[CreatorInfo[playerid][ucClickedIco]][iType], IconsInfo[CreatorInfo[playerid][ucClickedIco]][iColor], IconsInfo[CreatorInfo[playerid][ucClickedIco]][iStyle]);
										CreatorInfo[playerid][ucSelectedIco] = cico;
										format(strtmp, sizeof strtmp, MAPICON_COPIED, cico);
										SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
									}
									else SendClientMessage(playerid, DEFAULT_COLOR, LIMIT_ERROR);
								}
							}
							case 4:
							{
								if(IconsInfo[CreatorInfo[playerid][ucClickedIco]][iCreated])
								{
									static strtmp[145];
									format(strtmp, sizeof strtmp, MAPICON_DELETED, CreatorInfo[playerid][ucClickedIco]);
									SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
									RemoveMapIcon(CreatorInfo[playerid][ucClickedIco]);
								}
							}
							case 5: ShowCreatorDialog(playerid, DIALOG_EDIT_ICON_X);
							case 6: ShowCreatorDialog(playerid, DIALOG_EDIT_ICON_Y);
							case 7: ShowCreatorDialog(playerid, DIALOG_EDIT_ICON_Z);
							case 8: ShowCreatorDialog(playerid, DIALOG_EDIT_ICON_COLOR);
							case 9: ShowCreatorDialog(playerid, DIALOG_EDIT_ICON_STYLE);
						}
					}
					else if(!CreatorInfo[playerid][ucCallEditDialog]) ShowCreatorDialog(playerid, DIALOG_EDIT);
				}
				return 1;
			}
			case DIALOG_EDIT_ICON_X:
			{
				if(CreatorInfo[playerid][ucClickedIco] != 65535 && IconsInfo[CreatorInfo[playerid][ucClickedIco]][iCreated])
				{
					if(response)
					{
						if(!IsNumeric(inputtext))
						{
							ShowCreatorDialog(playerid, DIALOG_EDIT_ICON_X);
							return SendClientMessage(playerid, DEFAULT_COLOR, INCORRECT_COORD_X_ERROR);
						}
						static strtmp[145];
						UpdateMapIconPos(CreatorInfo[playerid][ucClickedIco], floatstr(inputtext), IconsInfo[CreatorInfo[playerid][ucClickedIco]][iY], IconsInfo[CreatorInfo[playerid][ucClickedIco]][iZ]);
						format(strtmp, sizeof strtmp, MAPICON_TELEPORTED_TO_X, CreatorInfo[playerid][ucClickedIco], IconsInfo[CreatorInfo[playerid][ucClickedIco]][iX]);
						SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
					}
					ShowCreatorDialog(playerid, DIALOG_EDIT_ICON);
				}
				return 1;
			}
			case DIALOG_EDIT_ICON_Y:
			{
				if(CreatorInfo[playerid][ucClickedIco] != 65535 && IconsInfo[CreatorInfo[playerid][ucClickedIco]][iCreated])
				{
					if(response)
					{
						if(!IsNumeric(inputtext))
						{
							ShowCreatorDialog(playerid, DIALOG_EDIT_ICON_Y);
							return SendClientMessage(playerid, DEFAULT_COLOR, INCORRECT_COORD_Y_ERROR);
						}
						static strtmp[145];
						UpdateMapIconPos(CreatorInfo[playerid][ucClickedIco], IconsInfo[CreatorInfo[playerid][ucClickedIco]][iX], floatstr(inputtext), IconsInfo[CreatorInfo[playerid][ucClickedIco]][iZ]);
						format(strtmp, sizeof strtmp, MAPICON_TELEPORTED_TO_Y, CreatorInfo[playerid][ucClickedIco], IconsInfo[CreatorInfo[playerid][ucClickedIco]][iY]);
						SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
					}
					ShowCreatorDialog(playerid, DIALOG_EDIT_ICON);
				}
				return 1;
			}
			case DIALOG_EDIT_ICON_Z:
			{
				if(CreatorInfo[playerid][ucClickedIco] != 65535 && IconsInfo[CreatorInfo[playerid][ucClickedIco]][iCreated])
				{
					if(response)
					{
						if(!IsNumeric(inputtext))
						{
							ShowCreatorDialog(playerid, DIALOG_EDIT_ICON_Z);
							return SendClientMessage(playerid, DEFAULT_COLOR, INCORRECT_COORD_Z_ERROR);
						}
						static strtmp[145];
						UpdateMapIconPos(CreatorInfo[playerid][ucClickedIco], IconsInfo[CreatorInfo[playerid][ucClickedIco]][iX], IconsInfo[CreatorInfo[playerid][ucClickedIco]][iY], floatstr(inputtext));
						format(strtmp, sizeof strtmp, MAPICON_TELEPORTED_TO_Z, CreatorInfo[playerid][ucClickedIco], IconsInfo[CreatorInfo[playerid][ucClickedIco]][iZ]);
						SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
					}
					ShowCreatorDialog(playerid, DIALOG_EDIT_ICON);
				}
				return 1;
			}
			case DIALOG_EDIT_ICON_COLOR:
			{
				if(CreatorInfo[playerid][ucClickedIco] != 65535 && IconsInfo[CreatorInfo[playerid][ucClickedIco]][iCreated])
				{
					if(response)
					{
						new color;
						if(!IsHex(inputtext))
						{
							if(!IsNumeric(inputtext))
							{
								ShowCreatorDialog(playerid, DIALOG_EDIT_ICON_COLOR);
								return SendClientMessage(playerid, DEFAULT_COLOR, INCORRECT_ICON_COLOR_ERROR);
							}
							else color = strval(inputtext);
						}
						else color = HexToInt(inputtext);
						static strtmp[145];
						UpdateMapIconColor(CreatorInfo[playerid][ucClickedIco], color);
						format(strtmp, sizeof strtmp, MAPICON_COLOR_CHANGED, color, CreatorInfo[playerid][ucClickedIco]);
						SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
					}
					ShowCreatorDialog(playerid, DIALOG_EDIT_ICON);
				}
				return 1;
			}
			case DIALOG_EDIT_ICON_STYLE:
			{
				if(CreatorInfo[playerid][ucClickedIco] != 65535 && IconsInfo[CreatorInfo[playerid][ucClickedIco]][iCreated])
				{
					if(response && -1 < listitem < 4)
					{
						static strtmp[145];
						UpdateMapIconStyle(CreatorInfo[playerid][ucClickedIco], listitem);
						format(strtmp, sizeof strtmp, MAPICON_STYLE_CHANGED, listitem, CreatorInfo[playerid][ucClickedIco]);
						SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
					}
					ShowCreatorDialog(playerid, DIALOG_EDIT_ICON);
				}
				return 1;
			}
			case DIALOG_EDIT_ZONE:
			{
				if(CreatorInfo[playerid][ucClickedGzn] != 65535)
				{
					CreatorInfo[playerid][ucSelectedGzn] = 65535;
					if(response)
					{
						switch(listitem)
						{
							case 0: CreatorInfo[playerid][ucSelectedGzn] = CreatorInfo[playerid][ucClickedGzn];
							case 1:
							{
								if(ZonesInfo[CreatorInfo[playerid][ucClickedGzn]][gCreated])
								{
									static strtmp[145];
									new Float:posX, Float:posY, Float:posZ, Float:temp;
									GetCenterOfGangZone(ZonesInfo[CreatorInfo[playerid][ucClickedGzn]][gMinX], ZonesInfo[CreatorInfo[playerid][ucClickedGzn]][gMinY],
									ZonesInfo[CreatorInfo[playerid][ucClickedGzn]][gMaxX], ZonesInfo[CreatorInfo[playerid][ucClickedGzn]][gMaxY], posX, posY);
									#if defined COLANDREAS
										if(!CA_RayCastLine(posX, posY, 700.0, posX, posY, -1000.0, temp, temp, posZ))
											GetPlayerObjectPos(playerid, CreatorInfo[playerid][ucFlyObject], temp, temp, posZ);
										else posZ += 3.0;
									#else
										GetPlayerObjectPos(playerid, CreatorInfo[playerid][ucFlyObject], temp, temp, posZ);
									#endif
									SetPlayerObjectPos(playerid, CreatorInfo[playerid][ucFlyObject], posX, posY, posZ);
									format(strtmp, sizeof strtmp, TELEPORTED_TO_GANGZONE, CreatorInfo[playerid][ucClickedGzn]);
									SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
								}
							}
							case 2:
							{
								if(ZonesInfo[CreatorInfo[playerid][ucClickedGzn]][gCreated])
								{
									static strtmp[145];
									new
										Float:posX, Float:posY,
										Float:minX, Float:minY, Float:maxX, Float:maxY,
										Float:width = ZonesInfo[CreatorInfo[playerid][ucClickedGzn]][gMaxX] - ZonesInfo[CreatorInfo[playerid][ucClickedGzn]][gMinX],
										Float:height = ZonesInfo[CreatorInfo[playerid][ucClickedGzn]][gMaxY] - ZonesInfo[CreatorInfo[playerid][ucClickedGzn]][gMinY];
									GetPlayerObjectPos(playerid, CreatorInfo[playerid][ucFlyObject], posX, posY, minX);
									GetBoundsOfGangZone(posX, posY, width, height, minX, minY, maxX, maxY);
									UpdateGangZonePos(CreatorInfo[playerid][ucClickedGzn], minX, minY, maxX, maxY);
									format(strtmp, sizeof strtmp, TELEPORTED_GANGZONE, CreatorInfo[playerid][ucClickedGzn]);
									SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
								}
							}
							case 3:
							{
								if(ZonesInfo[CreatorInfo[playerid][ucClickedGzn]][gCreated])
								{
									new czone = GangZoneCreate(ZonesInfo[CreatorInfo[playerid][ucClickedGzn]][gMinX], ZonesInfo[CreatorInfo[playerid][ucClickedGzn]][gMinY],
									ZonesInfo[CreatorInfo[playerid][ucClickedGzn]][gMaxX], ZonesInfo[CreatorInfo[playerid][ucClickedGzn]][gMaxY]);
									if(czone != INVALID_GANG_ZONE)
									{
										static strtmp[145];
										GangZoneShowForAll(czone, ZonesInfo[CreatorInfo[playerid][ucClickedGzn]][gColor]);
										CreatorInfo[playerid][ucSelectedGzn] = czone;
										format(strtmp, sizeof strtmp, GANGZONE_COPIED, czone);
										SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
									}
									else SendClientMessage(playerid, DEFAULT_COLOR, LIMIT_ERROR);
								}
							}
							case 4:
							{
								if(ZonesInfo[CreatorInfo[playerid][ucClickedGzn]][gCreated])
								{
									static strtmp[145];
									format(strtmp, sizeof strtmp, GANGZONE_DELETED, CreatorInfo[playerid][ucClickedGzn]);
									SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
									GangZoneDestroy(CreatorInfo[playerid][ucClickedGzn]);
								}
							}
							case 5: ShowCreatorDialog(playerid, DIALOG_EDIT_ZONE_MINX);
							case 6: ShowCreatorDialog(playerid, DIALOG_EDIT_ZONE_MINY);
							case 7: ShowCreatorDialog(playerid, DIALOG_EDIT_ZONE_MAXX);
							case 8: ShowCreatorDialog(playerid, DIALOG_EDIT_ZONE_MAXY);
							case 9: ShowCreatorDialog(playerid, DIALOG_EDIT_ZONE_COLOR);
						}
					}
					else if(!CreatorInfo[playerid][ucCallEditDialog]) ShowCreatorDialog(playerid, DIALOG_EDIT);
				}
				return 1;
			}
			case DIALOG_EDIT_ZONE_MINX:
			{
				if(CreatorInfo[playerid][ucClickedGzn] != 65535 && ZonesInfo[CreatorInfo[playerid][ucClickedGzn]][gCreated])
				{
					if(response)
					{
						if(!IsNumeric(inputtext))
						{
							ShowCreatorDialog(playerid, DIALOG_EDIT_ZONE_MINX);
							return SendClientMessage(playerid, DEFAULT_COLOR, INCORRECT_COORD_MINX_ERROR);
						}
						static strtmp[145];
						UpdateGangZonePos(CreatorInfo[playerid][ucClickedGzn], floatstr(inputtext), ZonesInfo[CreatorInfo[playerid][ucClickedGzn]][gMinY], ZonesInfo[CreatorInfo[playerid][ucClickedGzn]][gMaxX], ZonesInfo[CreatorInfo[playerid][ucClickedGzn]][gMaxY]);
						format(strtmp, sizeof strtmp, GANGZONE_MINX_CHANGED, CreatorInfo[playerid][ucClickedGzn], ZonesInfo[CreatorInfo[playerid][ucClickedGzn]][gMinX]);
						SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
					}
					ShowCreatorDialog(playerid, DIALOG_EDIT_ZONE);
				}
				return 1;
			}
			case DIALOG_EDIT_ZONE_MINY:
			{
				if(CreatorInfo[playerid][ucClickedGzn] != 65535 && ZonesInfo[CreatorInfo[playerid][ucClickedGzn]][gCreated])
				{
					if(response)
					{
						if(!IsNumeric(inputtext))
						{
							ShowCreatorDialog(playerid, DIALOG_EDIT_ZONE_MINY);
							return SendClientMessage(playerid, DEFAULT_COLOR, INCORRECT_COORD_MINY_ERROR);
						}
						static strtmp[145];
						UpdateGangZonePos(CreatorInfo[playerid][ucClickedGzn], ZonesInfo[CreatorInfo[playerid][ucClickedGzn]][gMinX], floatstr(inputtext), ZonesInfo[CreatorInfo[playerid][ucClickedGzn]][gMaxX], ZonesInfo[CreatorInfo[playerid][ucClickedGzn]][gMaxY]);
						format(strtmp, sizeof strtmp, GANGZONE_MINY_CHANGED, CreatorInfo[playerid][ucClickedGzn], ZonesInfo[CreatorInfo[playerid][ucClickedGzn]][gMinY]);
						SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
					}
					ShowCreatorDialog(playerid, DIALOG_EDIT_ZONE);
				}
				return 1;
			}
			case DIALOG_EDIT_ZONE_MAXX:
			{
				if(CreatorInfo[playerid][ucClickedGzn] != 65535 && ZonesInfo[CreatorInfo[playerid][ucClickedGzn]][gCreated])
				{
					if(response)
					{
						if(!IsNumeric(inputtext))
						{
							ShowCreatorDialog(playerid, DIALOG_EDIT_ZONE_MAXX);
							return SendClientMessage(playerid, DEFAULT_COLOR, INCORRECT_COORD_MAXX_ERROR);
						}
						static strtmp[145];
						UpdateGangZonePos(CreatorInfo[playerid][ucClickedGzn], ZonesInfo[CreatorInfo[playerid][ucClickedGzn]][gMinX], ZonesInfo[CreatorInfo[playerid][ucClickedGzn]][gMinY], floatstr(inputtext), ZonesInfo[CreatorInfo[playerid][ucClickedGzn]][gMaxY]);
						format(strtmp, sizeof strtmp, GANGZONE_MAXX_CHANGED, CreatorInfo[playerid][ucClickedGzn], ZonesInfo[CreatorInfo[playerid][ucClickedGzn]][gMaxX]);
						SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
					}
					ShowCreatorDialog(playerid, DIALOG_EDIT_ZONE);
				}
				return 1;
			}
			case DIALOG_EDIT_ZONE_MAXY:
			{
				if(CreatorInfo[playerid][ucClickedGzn] != 65535 && ZonesInfo[CreatorInfo[playerid][ucClickedGzn]][gCreated])
				{
					if(response)
					{
						if(!IsNumeric(inputtext))
						{
							ShowCreatorDialog(playerid, DIALOG_EDIT_ZONE_MAXY);
							return SendClientMessage(playerid, DEFAULT_COLOR, INCORRECT_COORD_MAXY_ERROR);
						}
						static strtmp[145];
						UpdateGangZonePos(CreatorInfo[playerid][ucClickedGzn], ZonesInfo[CreatorInfo[playerid][ucClickedGzn]][gMinX], ZonesInfo[CreatorInfo[playerid][ucClickedGzn]][gMinY], ZonesInfo[CreatorInfo[playerid][ucClickedGzn]][gMaxX], floatstr(inputtext));
						format(strtmp, sizeof strtmp, GANGZONE_MAXY_CHANGED, CreatorInfo[playerid][ucClickedGzn], ZonesInfo[CreatorInfo[playerid][ucClickedGzn]][gMaxY]);
						SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
					}
					ShowCreatorDialog(playerid, DIALOG_EDIT_ZONE);
				}
				return 1;
			}
			case DIALOG_EDIT_ZONE_COLOR:
			{
				if(CreatorInfo[playerid][ucClickedGzn] != 65535 && ZonesInfo[CreatorInfo[playerid][ucClickedGzn]][gCreated])
				{
					if(response)
					{
						new color;
						if(!IsHex(inputtext))
						{
							if(!IsNumeric(inputtext))
							{
								ShowCreatorDialog(playerid, DIALOG_EDIT_ZONE_COLOR);
								return SendClientMessage(playerid, DEFAULT_COLOR, INCORRECT_ZONE_COLOR_ERROR);
							}
							else color = strval(inputtext);
						}
						else color = HexToInt(inputtext);
						static strtmp[145];
						UpdateGangZoneColor(CreatorInfo[playerid][ucClickedGzn], color);
						format(strtmp, sizeof strtmp, GANGZONE_COLOR_CHANGED, color, CreatorInfo[playerid][ucClickedGzn]);
						SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
					}
					ShowCreatorDialog(playerid, DIALOG_EDIT_ZONE);
				}
				return 1;
			}
			case DIALOG_EDIT_LABEL:
			{
				if(CreatorInfo[playerid][ucClickedLab] != 65535)
				{
					CreatorInfo[playerid][ucSelectedLab] = 65535;
					if(response)
					{
						switch(listitem)
						{
							case 0: CreatorInfo[playerid][ucSelectedLab] = CreatorInfo[playerid][ucClickedLab];
							case 1:
							{
								if(LabelsInfo[CreatorInfo[playerid][ucClickedLab]][lCreated])
								{
									static strtmp[145];
									SetPlayerObjectPos(playerid, CreatorInfo[playerid][ucFlyObject], LabelsInfo[CreatorInfo[playerid][ucClickedLab]][lX], LabelsInfo[CreatorInfo[playerid][ucClickedLab]][lY], LabelsInfo[CreatorInfo[playerid][ucClickedLab]][lZ]);
									format(strtmp, sizeof strtmp, TELEPORTED_TO_LABEL, CreatorInfo[playerid][ucClickedLab]);
									SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
								}
							}
							case 2:
							{
								if(LabelsInfo[CreatorInfo[playerid][ucClickedLab]][lCreated])
								{
									static strtmp[145];
									new Float:posX, Float:posY, Float:posZ;
									GetPlayerObjectPos(playerid, CreatorInfo[playerid][ucFlyObject], posX, posY, posZ);
									Update3DTextLabelPos(CreatorInfo[playerid][ucClickedLab], posX, posY, posZ);
									format(strtmp, sizeof strtmp, TELEPORTED_LABEL, CreatorInfo[playerid][ucClickedLab]);
									SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
								}
							}
							case 3:
							{
								if(LabelsInfo[CreatorInfo[playerid][ucClickedLab]][lCreated])
								{
									new clab = Create3DTextLabel(LabelsInfo[CreatorInfo[playerid][ucClickedLab]][lText], LabelsInfo[CreatorInfo[playerid][ucClickedLab]][lColor], LabelsInfo[CreatorInfo[playerid][ucClickedLab]][lX], LabelsInfo[CreatorInfo[playerid][ucClickedLab]][lY],
									LabelsInfo[CreatorInfo[playerid][ucClickedLab]][lZ], LabelsInfo[CreatorInfo[playerid][ucClickedLab]][lDrawDist], LabelsInfo[CreatorInfo[playerid][ucClickedLab]][lVirtualWorld], LabelsInfo[CreatorInfo[playerid][ucClickedLab]][lTestLOS]);
									if(clab != -1)
									{
										static strtmp[145];
										CreatorInfo[playerid][ucHoldingLab] = clab;
										format(strtmp, sizeof strtmp, LABEL_COPIED, clab);
										SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
									}
									else SendClientMessage(playerid, DEFAULT_COLOR, LIMIT_ERROR);
								}
							}
							case 4:
							{
								if(CreatorInfo[playerid][ucHoldingLab] == CreatorInfo[playerid][ucClickedLab]) CreatorInfo[playerid][ucHoldingLab] = 65535;
								if(LabelsInfo[CreatorInfo[playerid][ucClickedLab]][lCreated])
								{
									static strtmp[145];
									format(strtmp, sizeof strtmp, LABEL_DELETED, CreatorInfo[playerid][ucClickedLab]);
									SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
									Delete3DTextLabel(CreatorInfo[playerid][ucClickedLab]);
								}
							}
							case 5: ShowCreatorDialog(playerid, DIALOG_EDIT_LABEL_TEXT);
							case 6: ShowCreatorDialog(playerid, DIALOG_EDIT_LABEL_COLOR);
							case 7: ShowCreatorDialog(playerid, DIALOG_EDIT_LABEL_X);
							case 8: ShowCreatorDialog(playerid, DIALOG_EDIT_LABEL_Y);
							case 9: ShowCreatorDialog(playerid, DIALOG_EDIT_LABEL_Z);
							case 10: ShowCreatorDialog(playerid, DIALOG_EDIT_LABEL_DD);
							case 11: ShowCreatorDialog(playerid, DIALOG_EDIT_LABEL_VW);
							case 12: ShowCreatorDialog(playerid, DIALOG_EDIT_LABEL_LOS);
						}
					}
					else if(!CreatorInfo[playerid][ucCallEditDialog]) ShowCreatorDialog(playerid, DIALOG_EDIT);
				}
				return 1;
			}
			case DIALOG_EDIT_LABEL_TEXT:
			{
				if(CreatorInfo[playerid][ucClickedLab] != 65535 && LabelsInfo[CreatorInfo[playerid][ucClickedLab]][lCreated])
				{
					if(response)
					{
						if(!inputtext[0])
						{
							ShowCreatorDialog(playerid, DIALOG_EDIT_LABEL_TEXT);
							return SendClientMessage(playerid, DEFAULT_COLOR, INCORRECT_LABEL_NAME_ERROR);
						}
						static strtmp[145];
						Update3DTextLabelText(CreatorInfo[playerid][ucClickedLab], LabelsInfo[CreatorInfo[playerid][ucClickedLab]][lColor], inputtext);
						format(strtmp, sizeof strtmp, LABEL_TEXT_CHANGED, CreatorInfo[playerid][ucClickedLab]);
						SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
					}
					ShowCreatorDialog(playerid, DIALOG_EDIT_LABEL);
				}
				return 1;
			}
			case DIALOG_EDIT_LABEL_COLOR:
			{
				if(CreatorInfo[playerid][ucClickedLab] != 65535 && LabelsInfo[CreatorInfo[playerid][ucClickedLab]][lCreated])
				{
					if(response)
					{
						new color;
						if(!IsHex(inputtext))
						{
							if(!IsNumeric(inputtext))
							{
								ShowCreatorDialog(playerid, DIALOG_EDIT_LABEL_COLOR);
								return SendClientMessage(playerid, DEFAULT_COLOR, INCORRECT_LABEL_COLOR_ERROR);
							}
							else color = strval(inputtext);
						}
						else color = HexToInt(inputtext);
						static strtmp[145], text[MAX_LABEL_TEXT_LENGTH];
						strcpy(text, LabelsInfo[CreatorInfo[playerid][ucClickedLab]][lText], MAX_LABEL_TEXT_LENGTH);
						Update3DTextLabelText(CreatorInfo[playerid][ucClickedLab], color, text);
						format(strtmp, sizeof strtmp, LABEL_COLOR_CHANGED, color, CreatorInfo[playerid][ucClickedLab]);
						SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
					}
					ShowCreatorDialog(playerid, DIALOG_EDIT_LABEL);
				}
				return 1;
			}
			case DIALOG_EDIT_LABEL_X:
			{
				if(CreatorInfo[playerid][ucClickedLab] != 65535 && LabelsInfo[CreatorInfo[playerid][ucClickedLab]][lCreated])
				{
					if(response)
					{
						if(!IsNumeric(inputtext))
						{
							ShowCreatorDialog(playerid, DIALOG_EDIT_LABEL_X);
							return SendClientMessage(playerid, DEFAULT_COLOR, INCORRECT_COORD_X_ERROR);
						}
						static strtmp[145];
						Update3DTextLabelPos(CreatorInfo[playerid][ucClickedLab], floatstr(inputtext), LabelsInfo[CreatorInfo[playerid][ucClickedLab]][lY], LabelsInfo[CreatorInfo[playerid][ucClickedLab]][lZ]);
						format(strtmp, sizeof strtmp, LABEL_TELEPORTED_TO_X, CreatorInfo[playerid][ucClickedLab], LabelsInfo[CreatorInfo[playerid][ucClickedLab]][lX]);
						SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
					}
					ShowCreatorDialog(playerid, DIALOG_EDIT_LABEL);
				}
				return 1;
			}
			case DIALOG_EDIT_LABEL_Y:
			{
				if(CreatorInfo[playerid][ucClickedLab] != 65535 && LabelsInfo[CreatorInfo[playerid][ucClickedLab]][lCreated])
				{
					if(response)
					{
						if(!IsNumeric(inputtext))
						{
							ShowCreatorDialog(playerid, DIALOG_EDIT_LABEL_Y);
							return SendClientMessage(playerid, DEFAULT_COLOR, INCORRECT_COORD_Y_ERROR);
						}
						static strtmp[145];
						Update3DTextLabelPos(CreatorInfo[playerid][ucClickedLab], LabelsInfo[CreatorInfo[playerid][ucClickedLab]][lX], floatstr(inputtext), LabelsInfo[CreatorInfo[playerid][ucClickedLab]][lZ]);
						format(strtmp, sizeof strtmp, LABEL_TELEPORTED_TO_Y, CreatorInfo[playerid][ucClickedLab], LabelsInfo[CreatorInfo[playerid][ucClickedLab]][lY]);
						SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
					}
					ShowCreatorDialog(playerid, DIALOG_EDIT_LABEL);
				}
				return 1;
			}
			case DIALOG_EDIT_LABEL_Z:
			{
				if(CreatorInfo[playerid][ucClickedLab] != 65535 && LabelsInfo[CreatorInfo[playerid][ucClickedLab]][lCreated])
				{
					if(response)
					{
						if(!IsNumeric(inputtext))
						{
							ShowCreatorDialog(playerid, DIALOG_EDIT_LABEL_Z);
							return SendClientMessage(playerid, DEFAULT_COLOR, INCORRECT_COORD_Z_ERROR);
						}
						static strtmp[145];
						Update3DTextLabelPos(CreatorInfo[playerid][ucClickedLab], LabelsInfo[CreatorInfo[playerid][ucClickedLab]][lX], LabelsInfo[CreatorInfo[playerid][ucClickedLab]][lY], floatstr(inputtext));
						format(strtmp, sizeof strtmp, LABEL_TELEPORTED_TO_Z, CreatorInfo[playerid][ucClickedLab], LabelsInfo[CreatorInfo[playerid][ucClickedLab]][lZ]);
						SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
					}
					ShowCreatorDialog(playerid, DIALOG_EDIT_LABEL);
				}
				return 1;
			}
			case DIALOG_EDIT_LABEL_DD:
			{
				if(CreatorInfo[playerid][ucClickedLab] != 65535 && LabelsInfo[CreatorInfo[playerid][ucClickedLab]][lCreated])
				{
					if(response)
					{
						if(!IsNumeric(inputtext))
						{
							ShowCreatorDialog(playerid, DIALOG_EDIT_LABEL_DD);
							return SendClientMessage(playerid, DEFAULT_COLOR, INCORRECT_LABEL_DD_ERROR);
						}
						static strtmp[145];
						Update3DTextLabelDrawDistance(CreatorInfo[playerid][ucClickedLab], floatstr(inputtext));
						format(strtmp, sizeof strtmp, LABEL_DD_CHANGED, LabelsInfo[CreatorInfo[playerid][ucClickedLab]][lDrawDist], CreatorInfo[playerid][ucClickedLab]);
						SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
					}
					ShowCreatorDialog(playerid, DIALOG_EDIT_LABEL);
				}
				return 1;
			}
			case DIALOG_EDIT_LABEL_VW:
			{
				if(CreatorInfo[playerid][ucClickedLab] != 65535 && LabelsInfo[CreatorInfo[playerid][ucClickedLab]][lCreated])
				{
					if(response)
					{
						if(!IsNumeric(inputtext))
						{
							ShowCreatorDialog(playerid, DIALOG_EDIT_LABEL_VW);
							return SendClientMessage(playerid, DEFAULT_COLOR, INCORRECT_VW_ERROR);
						}
						static strtmp[145];
						Update3DTextLabelVirtualWorld(CreatorInfo[playerid][ucClickedLab], strval(inputtext));
						format(strtmp, sizeof strtmp, LABEL_VW_CHANGED, LabelsInfo[CreatorInfo[playerid][ucClickedLab]][lVirtualWorld], CreatorInfo[playerid][ucClickedLab]);
						SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
					}
					ShowCreatorDialog(playerid, DIALOG_EDIT_LABEL);
				}
				return 1;
			}
			case DIALOG_EDIT_LABEL_LOS:
			{
				if(CreatorInfo[playerid][ucClickedLab] != 65535 && LabelsInfo[CreatorInfo[playerid][ucClickedLab]][lCreated])
				{
					if(response && -1 < listitem < 2)
					{
						Update3DTextLabelLOS(CreatorInfo[playerid][ucClickedLab], listitem);
						switch(listitem)
						{
							case 0: SendClientMessage(playerid, DEFAULT_COLOR, LABEL_LOS_ENABLED);
							case 1: SendClientMessage(playerid, DEFAULT_COLOR, LABEL_LOS_DISABLED);
						}
					}
					ShowCreatorDialog(playerid, DIALOG_EDIT_LABEL);
				}
				return 1;
			}
			case DIALOG_TELEPORT_INTO:
			{
				if(response)
				{
					switch(listitem)
					{
						case 0: ShowCreatorDialog(playerid, DIALOG_TELEPORT_IN_POS);
						case 1: ShowCreatorDialog(playerid, DIALOG_TELEPORT_IN_INT);
						case 2: ShowCreatorDialog(playerid, DIALOG_TELEPORT_IN_VW);
					}
				}
				else ShowCreatorDialog(playerid, DIALOG_MAIN);
				return 1;
			}
			case DIALOG_TELEPORT_IN_POS:
			{
				if(response)
				{
					if(!inputtext[0])
					{
						ShowCreatorDialog(playerid, DIALOG_TELEPORT_IN_POS);
						return SendClientMessage(playerid, DEFAULT_COLOR, INCORRECT_COORDS_ERROR);
					}
					new pos[3][8];
					static strtmp[145];
					split(inputtext, pos, ',', sizeof pos, sizeof pos[]);
					SetPlayerObjectPos(playerid, CreatorInfo[playerid][ucFlyObject], floatstr(pos[0]), floatstr(pos[1]), floatstr(pos[2]));
					format(strtmp, sizeof strtmp, TELEPORTED_TO_COORDS, floatstr(pos[0]), floatstr(pos[1]), floatstr(pos[2]));
					SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
				}
				else ShowCreatorDialog(playerid, DIALOG_TELEPORT_INTO);
				return 1;
			}
			case DIALOG_TELEPORT_IN_INT:
			{
				if(response)
				{
					if(!IsNumeric(inputtext))
					{
						ShowCreatorDialog(playerid, DIALOG_TELEPORT_IN_INT);
						return SendClientMessage(playerid, DEFAULT_COLOR, INCORRECT_INTERIOR_ID_ERROR);
					}
					static strtmp2[145];
					new interior = strval(inputtext);
					SetPlayerInterior(playerid, interior);
					format(strtmp2, sizeof strtmp2, TELEPORTED_TO_INTERIOR, interior);
					SendClientMessage(playerid, DEFAULT_COLOR, strtmp2);
				}
				else ShowCreatorDialog(playerid, DIALOG_TELEPORT_INTO);
				return 1;
			}
			case DIALOG_TELEPORT_IN_VW:
			{
				if(response)
				{
					if(!IsNumeric(inputtext))
					{
						ShowCreatorDialog(playerid, DIALOG_TELEPORT_IN_VW);
						return SendClientMessage(playerid, DEFAULT_COLOR, INCORRECT_VW_ERROR);
					}
					static strtmp2[145];
					new vw = strval(inputtext);
					SetPlayerVirtualWorld(playerid, vw);
					format(strtmp2, sizeof strtmp2, TELEPORTED_TO_VW, vw);
					SendClientMessage(playerid, DEFAULT_COLOR, strtmp2);
				}
				else ShowCreatorDialog(playerid, DIALOG_TELEPORT_INTO);
				return 1;
			}
			case DIALOG_SETTINGS:
			{
				if(response)
				{
					switch(listitem)
					{
						case 0: ShowCreatorDialog(playerid, DIALOG_SETTINGS_WEATHER);
						case 1: ShowCreatorDialog(playerid, DIALOG_SETTINGS_TIME);
						case 2: ShowCreatorDialog(playerid, DIALOG_SETTINGS_GRAVITY);
					}
				}
				else ShowCreatorDialog(playerid, DIALOG_MAIN);
				return 1;
			}
			case DIALOG_SETTINGS_WEATHER:
			{
				if(response)
				{
					new weatherid = strval(inputtext);
					if(!IsNumeric(inputtext) || !(-1 < weatherid < 21))
					{
						ShowCreatorDialog(playerid, DIALOG_SETTINGS_WEATHER);
						return SendClientMessage(playerid, DEFAULT_COLOR, INCORRECT_WEATHER_ID_ERROR);
					}
					static strtmp2[145];
					SetWeather(weatherid);
					for(new i = GetPlayerPoolSize(); i != -1; --i) SetPlayerWeather(i, weatherid);
					format(strtmp2, sizeof strtmp2, WEATHER_ID_CHANGED, weatherid);
					SendClientMessage(playerid, DEFAULT_COLOR, strtmp2);
				}
				else ShowCreatorDialog(playerid, DIALOG_SETTINGS);
				return 1;
			}
			case DIALOG_SETTINGS_TIME:
			{
				if(response)
				{
					static strtmp2[145];
					SetWorldTime(listitem);
					format(strtmp2, sizeof strtmp2, TIME_CHANGED, listitem);
					SendClientMessage(playerid, DEFAULT_COLOR, strtmp2);
				}
				else ShowCreatorDialog(playerid, DIALOG_SETTINGS);
				return 1;
			}
			case DIALOG_SETTINGS_GRAVITY:
			{
				if(response)
				{
					new Float:gravity = floatstr(inputtext);
					if(!IsNumeric(inputtext) || !(-50.0 <= gravity <= 50.0))
					{
						ShowCreatorDialog(playerid, DIALOG_SETTINGS_GRAVITY);
						return SendClientMessage(playerid, DEFAULT_COLOR, INCORRECT_GRAVITY_ERROR);
					}
					static strtmp2[145];
					SetGravity(gravity);
					format(strtmp2, sizeof strtmp2, GRAVITY_CHANGED, gravity);
					SendClientMessage(playerid, DEFAULT_COLOR, strtmp2);
				}
				else ShowCreatorDialog(playerid, DIALOG_SETTINGS);
				return 1;
			}
		}
	}
	return 0;
}

public OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
	if(CreatorInfo[playerid][ucCameraMode])
	{
		new gtc = GetTickCount();
		if(newkeys & KEY_FIRE)
		{
			new obj = GetPlayerCameraTargetObject(playerid),
			veh = GetPlayerCameraTargetVehicle(playerid),
			act = GetPlayerCameraTargetActor(playerid);
			if(CreatorInfo[playerid][ucHoldingObj] != 65535)
			{
				if(!(newkeys & KEY_CROUCH) && !(oldkeys & KEY_CROUCH))
				{
					new Float:X, Float:Y, Float:Z, Float:rX, Float:rY, Float:rZ;
					GetObjectPos(CreatorInfo[playerid][ucHoldingObj], X, Y, Z);
					GetObjectRot(CreatorInfo[playerid][ucHoldingObj], rX, rY, rZ);
					SetObjectPos(CreatorInfo[playerid][ucHoldingObj], X, Y, Z, true);
					SetObjectRot(CreatorInfo[playerid][ucHoldingObj], rX, rY, rZ, true);
					CreatorInfo[playerid][ucHoldingObj] = 65535;
				}
			}
			else if(CreatorInfo[playerid][ucHoldingVeh] != 65535)
			{
				if(!(newkeys & KEY_CROUCH) && !(oldkeys & KEY_CROUCH)) CreatorInfo[playerid][ucHoldingVeh] = 65535;
			}
			else if(CreatorInfo[playerid][ucHoldingAct] != 65535)
			{
				if(!(newkeys & KEY_CROUCH) && !(oldkeys & KEY_CROUCH)) CreatorInfo[playerid][ucHoldingAct] = 65535;
			}
			else if(CreatorInfo[playerid][ucHoldingPick] != 65535)
			{
				if(!(newkeys & KEY_CROUCH) && !(oldkeys & KEY_CROUCH)) CreatorInfo[playerid][ucHoldingPick] = 65535;
			}
			else if(CreatorInfo[playerid][ucHoldingCp] != 65535)
			{
				if(!(newkeys & KEY_CROUCH) && !(oldkeys & KEY_CROUCH)) CreatorInfo[playerid][ucHoldingCp] = 65535;
			}
			else if(CreatorInfo[playerid][ucHoldingRcp] != 65535)
			{
				if(!(newkeys & KEY_CROUCH) && !(oldkeys & KEY_CROUCH)) CreatorInfo[playerid][ucHoldingRcp] = 65535;
			}
			else if(CreatorInfo[playerid][ucHoldingLab] != 65535)
			{
				if(!(newkeys & KEY_CROUCH) && !(oldkeys & KEY_CROUCH)) CreatorInfo[playerid][ucHoldingLab] = 65535;
			}
			else
			{
				CreatorInfo[playerid][ucSelectedObj] = 65535;
				CreatorInfo[playerid][ucSelectedVeh] = 65535;
				CreatorInfo[playerid][ucSelectedAct] = 65535;
				CreatorInfo[playerid][ucSelectedPick] = 65535;
				CreatorInfo[playerid][ucSelectedCp] = 65535;
				CreatorInfo[playerid][ucSelectedRcp] = 65535;
				CreatorInfo[playerid][ucSelectedIco] = 65535;
				CreatorInfo[playerid][ucSelectedGzn] = 65535;
				CreatorInfo[playerid][ucSelectedLab] = 65535;
				if(newkeys & KEY_CROUCH)
				{
					if(obj != 65535)
					{
						new
							Float:obj_x, Float:obj_y, Float:obj_z,
							Float:obj_rx, Float:obj_ry, Float:obj_rz,
							cobj = INVALID_OBJECT_ID, i, pid = -1, lid = -1;
						if(IsValidObject(obj))
						{
							GetObjectPos(obj, obj_x, obj_y, obj_z);
							GetObjectRot(obj, obj_rx, obj_ry, obj_rz);
							for(i = MAX_PICKUPS - 1; i != -1; --i)
							{
								if(PickupsInfo[i][pCreated] && PickupsInfo[i][pSilentObj] == obj)
								{
									pid = i;
									break;
								}
							}
							if(pid != -1)
							{
								new cpick = CreatePickup(PickupsInfo[pid][pModelid], PickupsInfo[pid][pType], obj_x, obj_y, obj_z, PickupsInfo[pid][pVirtualWorld]);
								if(cpick != -1)
								{
									static strtmp[145];
									CreatorInfo[playerid][ucHoldingPick] = cpick;
									format(strtmp, sizeof strtmp, PICKUP_COPIED, cpick);
									SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
								}
								else SendClientMessage(playerid, DEFAULT_COLOR, LIMIT_ERROR);
							}
							else
							{
								for(i = MAX_3DTEXT_GLOBAL - 1; i != -1; --i)
								{
									if(LabelsInfo[i][lCreated] && LabelsInfo[i][lSilentObj] == obj)
									{
										lid = i;
										break;
									}
								}
								if(lid != -1)
								{
									new clab = Create3DTextLabel(LabelsInfo[lid][lText], LabelsInfo[lid][lColor], obj_x, obj_y, obj_z, LabelsInfo[lid][lDrawDist], LabelsInfo[lid][lVirtualWorld], LabelsInfo[lid][lTestLOS]);
									if(clab != INVALID_3DTEXT_ID)
									{
										static strtmp[145];
										CreatorInfo[playerid][ucHoldingLab] = clab;
										format(strtmp, sizeof strtmp, LABEL_COPIED, clab);
										SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
									}
									else SendClientMessage(playerid, DEFAULT_COLOR, LIMIT_ERROR);
								}
								else if(!(CheckpointInfo[cpCreated] && CheckpointInfo[cpSilentObj] == obj) &&
								!(RaceCpInfo[rcpCreated] && RaceCpInfo[rcpSilentObj] == obj))
									cobj = CreateObject(GetObjectModel(obj), obj_x, obj_y, obj_z, obj_rx, obj_ry, obj_rz);
							}
						}
						else if(IsValidPlayerObject(playerid, obj))
						{
							GetPlayerObjectPos(playerid, obj, obj_x, obj_y, obj_z);
							GetPlayerObjectRot(playerid, obj, obj_rx, obj_ry, obj_rz);
							cobj = CreateObject(GetPlayerObjectModel(playerid, obj), obj_x, obj_y, obj_z, obj_rx, obj_ry, obj_rz);
						}
						if(pid == -1 && lid == -1 &&
						!(CheckpointInfo[cpCreated] && CheckpointInfo[cpSilentObj] == obj) &&
						!(RaceCpInfo[rcpCreated] && RaceCpInfo[rcpSilentObj] == obj))
						{
							if(cobj != INVALID_OBJECT_ID)
							{
								static strtmp[145];
								CreatorInfo[playerid][ucHoldingObj] = cobj;
								format(strtmp, sizeof strtmp, OBJECT_COPIED, cobj);
								SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
							}
							else SendClientMessage(playerid, DEFAULT_COLOR, LIMIT_ERROR);
						}
					}
					else if(veh != 65535)
					{
						new
							Float:veh_x, Float:veh_y,
							Float:veh_z, Float:veh_rz;
						GetVehiclePos(veh, veh_x, veh_y, veh_z);
						GetVehicleZAngle(veh, veh_rz);
						VehiclesInfo[veh][vModelid] = GetVehicleModel(veh);
						new cveh = CreateVehicle(VehiclesInfo[veh][vModelid], veh_x, veh_y, veh_z, veh_rz, VehiclesInfo[veh][vColor1], VehiclesInfo[veh][vColor2], VehiclesInfo[veh][vRespawnDelay]);
						if(cveh != INVALID_VEHICLE_ID)
						{
							static strtmp[145];
							CreatorInfo[playerid][ucHoldingVeh] = cveh;
							format(strtmp, sizeof strtmp, VEHICLE_COPIED, cveh);
							SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
						}
						else SendClientMessage(playerid, DEFAULT_COLOR, LIMIT_ERROR);
					}
					else if(act != 65535)
					{
						new
							Float:act_x, Float:act_y,
							Float:act_z, Float:act_rz;
						GetActorPos(act, act_x, act_y, act_z);
						GetActorFacingAngle(act, act_rz);
						new cact = CreateActor(ActorsInfo[act][aModelid], act_x, act_y, act_z, act_rz);
						if(cact != INVALID_ACTOR_ID)
						{
							static strtmp[145];
							CreatorInfo[playerid][ucHoldingAct] = cact;
							format(strtmp, sizeof strtmp, ACTOR_COPIED, cact);
							SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
						}
						else SendClientMessage(playerid, DEFAULT_COLOR, LIMIT_ERROR);
					}
				}
				else if(newkeys & KEY_ACTION)
				{
					if(obj != 65535)
					{
						if(ObjectsInfo[obj][oCreated])
						{
							static strtmp[145];
							format(strtmp, sizeof strtmp, OBJECT_DELETED, obj);
							SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
							DestroyObject(obj);
						}
						else if(IsValidObject(obj))
						{
							new i, pid = -1, lid = -1;
							for(i = MAX_PICKUPS - 1; i != -1; --i)
							{
								if(PickupsInfo[i][pCreated] && PickupsInfo[i][pSilentObj] == obj)
								{
									pid = i;
									break;
								}
							}
							if(pid != -1)
							{
								static strtmp[145];
								format(strtmp, sizeof strtmp, PICKUP_DELETED, pid);
								SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
								DestroyPickup(pid);
							}
							else if(CheckpointInfo[cpCreated] && CheckpointInfo[cpSilentObj] == obj)
							{
								static strtmp[145];
								format(strtmp, sizeof strtmp, CP_DELETED, 1);
								SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
								DisableCheckpoint();
							}
							else if(RaceCpInfo[rcpCreated] && RaceCpInfo[rcpSilentObj] == obj)
							{
								static strtmp[145];
								format(strtmp, sizeof strtmp, RCP_DELETED, 1);
								SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
								DisableRaceCheckpoint();
							}
							else
							{
								for(i = MAX_3DTEXT_GLOBAL - 1; i != -1; --i)
								{
									if(LabelsInfo[i][lCreated] && LabelsInfo[i][lSilentObj] == obj)
									{
										lid = i;
										break;
									}
								}
								if(lid != -1)
								{
									static strtmp[145];
									format(strtmp, sizeof strtmp, LABEL_DELETED, lid);
									SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
									Delete3DTextLabel(lid);
								}
							}
						}
					}
					else if(veh != 65535 && VehiclesInfo[veh][vCreated])
					{
						static strtmp[145];
						format(strtmp, sizeof strtmp, VEHICLE_DELETED, veh);
						SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
						DestroyVehicle(veh);
					}
					else if(act != 65535 && ActorsInfo[act][aCreated])
					{
						static strtmp[145];
						format(strtmp, sizeof strtmp, ACTOR_DELETED, act);
						SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
						DestroyActor(act);
					}
				}
				else if(gtc - CreatorInfo[playerid][ucLastLPressed] < DELAY_DOUBLE_CLICK_LEFT)
				{
					if(!(oldkeys & KEY_ACTION))
					{
						CreatorInfo[playerid][ucClickedObj] = 65535;
						CreatorInfo[playerid][ucClickedVeh] = 65535;
						CreatorInfo[playerid][ucClickedAct] = 65535;
						CreatorInfo[playerid][ucClickedPick] = 65535;
						CreatorInfo[playerid][ucClickedCp] = 65535;
						CreatorInfo[playerid][ucClickedRcp] = 65535;
						CreatorInfo[playerid][ucClickedIco] = 65535;
						CreatorInfo[playerid][ucClickedGzn] = 65535;
						CreatorInfo[playerid][ucClickedLab] = 65535;
						if(obj != 65535)
						{
							if(ObjectsInfo[obj][oCreated])
							{
								CreatorInfo[playerid][ucClickedObj] = obj;
								CreatorInfo[playerid][ucCallEditDialog] = true;
								ShowCreatorDialog(playerid, DIALOG_EDIT_OBJECT);
							}
							else if(IsValidObject(obj))
							{
								new i, pid = -1, lid = -1;
								for(i = MAX_PICKUPS - 1; i != -1; --i)
								{
									if(PickupsInfo[i][pCreated] && PickupsInfo[i][pSilentObj] == obj)
									{
										pid = i;
										break;
									}
								}
								if(pid != -1)
								{
									CreatorInfo[playerid][ucClickedPick] = pid;
									CreatorInfo[playerid][ucCallEditDialog] = true;
									ShowCreatorDialog(playerid, DIALOG_EDIT_PICKUP);
								}
								else if(CheckpointInfo[cpCreated] && CheckpointInfo[cpSilentObj] == obj)
								{
									CreatorInfo[playerid][ucClickedCp] = 1;
									CreatorInfo[playerid][ucCallEditDialog] = true;
									ShowCreatorDialog(playerid, DIALOG_EDIT_CP);
								}
								else if(RaceCpInfo[rcpCreated] && RaceCpInfo[rcpSilentObj] == obj)
								{
									CreatorInfo[playerid][ucClickedRcp] = 1;
									CreatorInfo[playerid][ucCallEditDialog] = true;
									ShowCreatorDialog(playerid, DIALOG_EDIT_RCP);
								}
								else
								{
									for(i = MAX_3DTEXT_GLOBAL - 1; i != -1; --i)
									{
										if(LabelsInfo[i][lCreated] && LabelsInfo[i][lSilentObj] == obj)
										{
											lid = i;
											break;
										}
									}
									if(lid != -1)
									{
										CreatorInfo[playerid][ucClickedLab] = lid;
										CreatorInfo[playerid][ucCallEditDialog] = true;
										ShowCreatorDialog(playerid, DIALOG_EDIT_LABEL);
									}
								}
							}
						}
						else if(veh != 65535 && VehiclesInfo[veh][vCreated])
						{
							CreatorInfo[playerid][ucClickedVeh] = veh;
							CreatorInfo[playerid][ucCallEditDialog] = true;
							ShowCreatorDialog(playerid, DIALOG_EDIT_VEHICLE);
						}
						else if(act != 65535 && ActorsInfo[act][aCreated])
						{
							CreatorInfo[playerid][ucClickedAct] = act;
							CreatorInfo[playerid][ucCallEditDialog] = true;
							ShowCreatorDialog(playerid, DIALOG_EDIT_ACTOR);
						}
					}
				}
				else if(obj != 65535)
				{
					if(ObjectsInfo[obj][oCreated]) CreatorInfo[playerid][ucSelectedObj] = obj;
					else if(IsValidObject(obj))
					{
						new i, pid = -1, lid = -1;
						for(i = MAX_PICKUPS - 1; i != -1; --i)
						{
							if(PickupsInfo[i][pCreated] && PickupsInfo[i][pSilentObj] == obj)
							{
								pid = i;
								break;
							}
						}
						if(pid != -1) CreatorInfo[playerid][ucSelectedPick] = pid;
						else if(CheckpointInfo[cpCreated] && CheckpointInfo[cpSilentObj] == obj) CreatorInfo[playerid][ucSelectedCp] = 1;
						else if(RaceCpInfo[rcpCreated] && RaceCpInfo[rcpSilentObj] == obj) CreatorInfo[playerid][ucSelectedRcp] = 1;
						else
						{
							for(i = MAX_3DTEXT_GLOBAL - 1; i != -1; --i)
							{
								if(LabelsInfo[i][lCreated] && LabelsInfo[i][lSilentObj] == obj)
								{
									lid = i;
									break;
								}
							}
							if(lid != -1) CreatorInfo[playerid][ucSelectedLab] = lid;
						}
					}
					FlyModeStopMovie(playerid);
				}
				else if(veh != 65535 && VehiclesInfo[veh][vCreated])
				{
					CreatorInfo[playerid][ucSelectedVeh] = veh;
					FlyModeStopMovie(playerid);
				}
				else if(act != 65535 && ActorsInfo[act][aCreated])
				{
					CreatorInfo[playerid][ucSelectedAct] = act;
					FlyModeStopMovie(playerid);
				}
				else
				{
					#if defined COLANDREAS
						if(CreatorInfo[playerid][ucCopyDefObj])
						{
							new
								Float:PX, Float:PY, Float:PZ,
								Float:VX, Float:VY, Float:VZ,
								Float:vfX, Float:vfY, Float:vfZ,
								Float:rx, Float:ry, Float:rz,
								Float:dobj_x, Float:dobj_y, Float:dobj_z, dmodel;
							GetPlayerCameraPos(playerid, PX, PY, PZ);
							GetPlayerCameraFrontVector(playerid, VX, VY, VZ);
							dobj_x = PX + floatmul(VX, DIST_FROM_CAMERA * 10);
							dobj_y = PY + floatmul(VY, DIST_FROM_CAMERA * 10);
							dobj_z = PZ + floatmul(VZ, DIST_FROM_CAMERA * 10);
							dmodel = CA_RayCastLineAngleEx(PX, PY, PZ, dobj_x, dobj_y, dobj_z, vfX, vfY, vfZ, rx, ry, rz, VX, VY, VZ, rx, ry, rz);
							if(dmodel && dmodel != 20000)
							{
								new cobj = CreateObject(dmodel, vfX, vfY, vfZ, rx, ry, rz);
								if(cobj != INVALID_OBJECT_ID)
								{
									static strtmp[145];
									format(strtmp, sizeof strtmp, OBJECT_CREATED, cobj);
									SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
									CreatorInfo[playerid][ucHoldingObj] = cobj;
								}
								else SendClientMessage(playerid, DEFAULT_COLOR, LIMIT_ERROR);
							}
						}
					#endif
				}
				if(!(oldkeys & KEY_FIRE)) CreatorInfo[playerid][ucLastLPressed] = gtc;
			}
			CreatorInfo[playerid][ucCopyDefObj] = false;
		}
		if(newkeys & KEY_HANDBRAKE && !(oldkeys & KEY_HANDBRAKE))
		{
			CreatorInfo[playerid][ucSelectedObj] = 65535;
			CreatorInfo[playerid][ucSelectedVeh] = 65535;
			CreatorInfo[playerid][ucSelectedAct] = 65535;
			CreatorInfo[playerid][ucSelectedPick] = 65535;
			CreatorInfo[playerid][ucSelectedCp] = 65535;
			CreatorInfo[playerid][ucSelectedRcp] = 65535;
			CreatorInfo[playerid][ucSelectedIco] = 65535;
			CreatorInfo[playerid][ucSelectedGzn] = 65535;
			CreatorInfo[playerid][ucSelectedLab] = 65535;
			if(CreatorInfo[playerid][ucHoldingObj] != 65535) CreatorInfo[playerid][ucHoldingObj] = 65535;
			else if(CreatorInfo[playerid][ucHoldingVeh] != 65535) CreatorInfo[playerid][ucHoldingVeh] = 65535;
			else if(CreatorInfo[playerid][ucHoldingAct] != 65535) CreatorInfo[playerid][ucHoldingAct] = 65535;
			else if(CreatorInfo[playerid][ucHoldingPick] != 65535) CreatorInfo[playerid][ucHoldingPick] = 65535;
			else if(CreatorInfo[playerid][ucHoldingCp] != 65535) CreatorInfo[playerid][ucHoldingCp] = 65535;
			else if(CreatorInfo[playerid][ucHoldingRcp] != 65535) CreatorInfo[playerid][ucHoldingRcp] = 65535;
			else if(CreatorInfo[playerid][ucHoldingLab] != 65535) CreatorInfo[playerid][ucHoldingLab] = 65535;
			else
			{
				new obj2 = GetPlayerCameraTargetObject(playerid),
				veh2 = GetPlayerCameraTargetVehicle(playerid),
				act2 = GetPlayerCameraTargetActor(playerid);
				if(newkeys & KEY_CROUCH)
				{
					if(obj2 != 65535)
					{
						new
							Float:obj_x, Float:obj_y, Float:obj_z,
							Float:obj_rx, Float:obj_ry, Float:obj_rz,
							cobj = INVALID_OBJECT_ID, i, pid = -1, lid = -1;
						if(IsValidObject(obj2))
						{
							GetObjectPos(obj2, obj_x, obj_y, obj_z);
							GetObjectRot(obj2, obj_rx, obj_ry, obj_rz);
							for(i = MAX_PICKUPS - 1; i != -1; --i)
							{
								if(PickupsInfo[i][pCreated] && PickupsInfo[i][pSilentObj] == obj2)
								{
									pid = i;
									break;
								}
							}
							if(pid != -1)
							{
								new cpick = CreatePickup(PickupsInfo[pid][pModelid], PickupsInfo[pid][pType], obj_x, obj_y, obj_z, PickupsInfo[pid][pVirtualWorld]);
								if(cpick != -1)
								{
									static strtmp[145];
									CreatorInfo[playerid][ucHoldingPick] = cpick;
									format(strtmp, sizeof strtmp, PICKUP_COPIED, cpick);
									SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
								}
								else SendClientMessage(playerid, DEFAULT_COLOR, LIMIT_ERROR);
							}
							else
							{
								for(i = MAX_3DTEXT_GLOBAL - 1; i != -1; --i)
								{
									if(LabelsInfo[i][lCreated] && LabelsInfo[i][lSilentObj] == obj2)
									{
										lid = i;
										break;
									}
								}
								if(lid != -1)
								{
									new clab = Create3DTextLabel(LabelsInfo[lid][lText], LabelsInfo[lid][lColor], obj_x, obj_y, obj_z, LabelsInfo[lid][lDrawDist], LabelsInfo[lid][lVirtualWorld], LabelsInfo[lid][lTestLOS]);
									if(clab != INVALID_3DTEXT_ID)
									{
										static strtmp[145];
										CreatorInfo[playerid][ucHoldingLab] = clab;
										format(strtmp, sizeof strtmp, LABEL_COPIED, clab);
										SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
									}
									else SendClientMessage(playerid, DEFAULT_COLOR, LIMIT_ERROR);
								}
								else if(!(CheckpointInfo[cpCreated] && CheckpointInfo[cpSilentObj] == obj2) &&
								!(RaceCpInfo[rcpCreated] && RaceCpInfo[rcpSilentObj] == obj2))
									cobj = CreateObject(GetObjectModel(obj2), obj_x, obj_y, obj_z, obj_rx, obj_ry, obj_rz);
							}
						}
						else if(IsValidPlayerObject(playerid, obj2))
						{
							GetPlayerObjectPos(playerid, obj2, obj_x, obj_y, obj_z);
							GetPlayerObjectRot(playerid, obj2, obj_rx, obj_ry, obj_rz);
							cobj = CreateObject(GetPlayerObjectModel(playerid, obj2), obj_x, obj_y, obj_z, obj_rx, obj_ry, obj_rz);
						}
						if(pid == -1 && lid == -1 &&
						!(CheckpointInfo[cpCreated] && CheckpointInfo[cpSilentObj] == obj2) &&
						!(RaceCpInfo[rcpCreated] && RaceCpInfo[rcpSilentObj] == obj2))
						{
							if(cobj != INVALID_OBJECT_ID)
							{
								static strtmp[145];
								CreatorInfo[playerid][ucHoldingObj] = cobj;
								format(strtmp, sizeof strtmp, OBJECT_COPIED, cobj);
								SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
							}
							else SendClientMessage(playerid, DEFAULT_COLOR, LIMIT_ERROR);
						}
					}
					else if(veh2 != 65535)
					{
						new
							Float:veh_x, Float:veh_y,
							Float:veh_z, Float:veh_rz;
						GetVehiclePos(veh2, veh_x, veh_y, veh_z);
						GetVehicleZAngle(veh2, veh_rz);
						VehiclesInfo[veh2][vModelid] = GetVehicleModel(veh2);
						new cveh = CreateVehicle(VehiclesInfo[veh2][vModelid], veh_x, veh_y, veh_z, veh_rz, VehiclesInfo[veh2][vColor1], VehiclesInfo[veh2][vColor2], VehiclesInfo[veh2][vRespawnDelay]);
						if(cveh != INVALID_VEHICLE_ID)
						{
							static strtmp[145];
							CreatorInfo[playerid][ucHoldingVeh] = cveh;
							format(strtmp, sizeof strtmp, VEHICLE_COPIED, cveh);
							SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
						}
						else SendClientMessage(playerid, DEFAULT_COLOR, LIMIT_ERROR);
					}
					else if(act2 != 65535)
					{
						new
							Float:act_x, Float:act_y,
							Float:act_z, Float:act_rz;
						GetActorPos(act2, act_x, act_y, act_z);
						GetActorFacingAngle(act2, act_rz);
						new cact = CreateActor(ActorsInfo[act2][aModelid], act_x, act_y, act_z, act_rz);
						if(cact != INVALID_ACTOR_ID)
						{
							static strtmp[145];
							CreatorInfo[playerid][ucHoldingAct] = cact;
							format(strtmp, sizeof strtmp, ACTOR_COPIED, cact);
							SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
						}
						else SendClientMessage(playerid, DEFAULT_COLOR, LIMIT_ERROR);
					}
				}
				else if(newkeys & KEY_ACTION)
				{
					if(obj2 != 65535)
					{
						if(ObjectsInfo[obj2][oCreated])
						{
							static strtmp[145];
							format(strtmp, sizeof strtmp, OBJECT_DELETED, obj2);
							SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
							DestroyObject(obj2);
						}
						else if(IsValidObject(obj2))
						{
							new i, pid = -1, lid = -1;
							for(i = MAX_PICKUPS - 1; i != -1; --i)
							{
								if(PickupsInfo[i][pCreated] && PickupsInfo[i][pSilentObj] == obj2)
								{
									pid = i;
									break;
								}
							}
							if(pid != -1)
							{
								static strtmp[145];
								format(strtmp, sizeof strtmp, PICKUP_DELETED, pid);
								SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
								DestroyPickup(pid);
							}
							else if(CheckpointInfo[cpCreated] && CheckpointInfo[cpSilentObj] == obj2)
							{
								static strtmp[145];
								format(strtmp, sizeof strtmp, CP_DELETED, 1);
								SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
								DisableCheckpoint();
							}
							else if(RaceCpInfo[rcpCreated] && RaceCpInfo[rcpSilentObj] == obj2)
							{
								static strtmp[145];
								format(strtmp, sizeof strtmp, RCP_DELETED, 1);
								SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
								DisableRaceCheckpoint();
							}
							else
							{
								for(i = MAX_3DTEXT_GLOBAL - 1; i != -1; --i)
								{
									if(LabelsInfo[i][lCreated] && LabelsInfo[i][lSilentObj] == obj2)
									{
										lid = i;
										break;
									}
								}
								if(lid != -1)
								{
									static strtmp[145];
									format(strtmp, sizeof strtmp, LABEL_DELETED, lid);
									SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
									Delete3DTextLabel(lid);
								}
							}
						}
					}
					else if(veh2 != 65535 && VehiclesInfo[veh2][vCreated])
					{
						static strtmp[145];
						format(strtmp, sizeof strtmp, VEHICLE_DELETED, veh2);
						SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
						DestroyVehicle(veh2);
					}
					else if(act2 != 65535 && ActorsInfo[act2][aCreated])
					{
						static strtmp[145];
						format(strtmp, sizeof strtmp, ACTOR_DELETED, act2);
						SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
						DestroyActor(act2);
					}
				}
				else if(obj2 != 65535)
				{
					if(ObjectsInfo[obj2][oCreated]) CreatorInfo[playerid][ucHoldingObj] = obj2;
					else if(IsValidObject(obj2))
					{
						new i, pid = -1, lid = -1;
						for(i = MAX_PICKUPS - 1; i != -1; --i)
						{
							if(PickupsInfo[i][pCreated] && PickupsInfo[i][pSilentObj] == obj2)
							{
								pid = i;
								break;
							}
						}
						if(pid != -1) CreatorInfo[playerid][ucHoldingPick] = pid;
						else if(CheckpointInfo[cpCreated] && CheckpointInfo[cpSilentObj] == obj2) CreatorInfo[playerid][ucHoldingCp] = 1;
						else if(RaceCpInfo[rcpCreated] && RaceCpInfo[rcpSilentObj] == obj2) CreatorInfo[playerid][ucHoldingRcp] = 1;
						else
						{
							for(i = MAX_3DTEXT_GLOBAL - 1; i != -1; --i)
							{
								if(LabelsInfo[i][lCreated] && LabelsInfo[i][lSilentObj] == obj2)
								{
									lid = i;
									break;
								}
							}
							if(lid != -1) CreatorInfo[playerid][ucHoldingLab] = lid;
						}
					}
				}
				else if(veh2 != 65535 && VehiclesInfo[veh2][vCreated]) CreatorInfo[playerid][ucHoldingVeh] = veh2;
				else if(act2 != 65535 && ActorsInfo[act2][aCreated]) CreatorInfo[playerid][ucHoldingAct] = act2;
				else
				{
					#if defined COLANDREAS
						if(CreatorInfo[playerid][ucCopyDefObj])
						{
							new
								Float:PX, Float:PY, Float:PZ,
								Float:VX, Float:VY, Float:VZ,
								Float:vfX, Float:vfY, Float:vfZ,
								Float:rx, Float:ry, Float:rz,
								Float:dobj_x, Float:dobj_y, Float:dobj_z, dmodel;
							GetPlayerCameraPos(playerid, PX, PY, PZ);
							GetPlayerCameraFrontVector(playerid, VX, VY, VZ);
							dobj_x = PX + floatmul(VX, DIST_FROM_CAMERA * 10);
							dobj_y = PY + floatmul(VY, DIST_FROM_CAMERA * 10);
							dobj_z = PZ + floatmul(VZ, DIST_FROM_CAMERA * 10);
							dmodel = CA_RayCastLineAngleEx(PX, PY, PZ, dobj_x, dobj_y, dobj_z, vfX, vfY, vfZ, rx, ry, rz, VX, VY, VZ, rx, ry, rz);
							if(dmodel && dmodel != 20000)
							{
								new cobj = CreateObject(dmodel, vfX, vfY, vfZ, rx, ry, rz);
								if(cobj != INVALID_OBJECT_ID)
								{
									static strtmp[145];
									format(strtmp, sizeof strtmp, OBJECT_CREATED, cobj);
									SendClientMessage(playerid, DEFAULT_COLOR, strtmp);
									CreatorInfo[playerid][ucHoldingObj] = cobj;
								}
								else SendClientMessage(playerid, DEFAULT_COLOR, LIMIT_ERROR);
							}
						}
					#endif
				}
				CreatorInfo[playerid][ucLastRPressed] = gtc;
			}
			CreatorInfo[playerid][ucCopyDefObj] = false;
		}
		if(newkeys & KEY_SPRINT || !(newkeys & KEY_JUMP || newkeys & KEY_WALK || oldkeys & KEY_JUMP || oldkeys & KEY_WALK) && oldkeys & KEY_HANDBRAKE && gtc - CreatorInfo[playerid][ucLastRPressed] > DELAY_DOUBLE_CLICK_RIGTH)
		{
			CreatorInfo[playerid][ucHoldingObj] = 65535;
			CreatorInfo[playerid][ucHoldingVeh] = 65535;
			CreatorInfo[playerid][ucHoldingAct] = 65535;
			CreatorInfo[playerid][ucHoldingPick] = 65535;
			CreatorInfo[playerid][ucHoldingCp] = 65535;
			CreatorInfo[playerid][ucHoldingRcp] = 65535;
			CreatorInfo[playerid][ucHoldingLab] = 65535;
			CreatorInfo[playerid][ucSelectedObj] = 65535;
			CreatorInfo[playerid][ucSelectedVeh] = 65535;
			CreatorInfo[playerid][ucSelectedAct] = 65535;
			CreatorInfo[playerid][ucSelectedPick] = 65535;
			CreatorInfo[playerid][ucSelectedCp] = 65535;
			CreatorInfo[playerid][ucSelectedRcp] = 65535;
			CreatorInfo[playerid][ucSelectedIco] = 65535;
			CreatorInfo[playerid][ucSelectedGzn] = 65535;
			CreatorInfo[playerid][ucSelectedLab] = 65535;
			CreatorInfo[playerid][ucCopyDefObj] = false;
		}
		if(newkeys & KEY_SECONDARY_ATTACK)
		{
			if(!MapName[0]) SetTimerEx("ShowCreatorDialogEx", DELAY_CALL_MAIN_MENU, 0, "ii", playerid, DIALOG_CHOOSE_MAP);
			else SetTimerEx("ShowCreatorDialogEx", DELAY_CALL_MAIN_MENU, 0, "ii", playerid, DIALOG_MAIN);
		}
	}
	return 1;
}

public OnVehicleDeath(vehicleid, killerid)
{
	if(VehiclesInfo[vehicleid][vCreated])
	{
		GetVehiclePos(vehicleid, VehiclesInfo[vehicleid][vX], VehiclesInfo[vehicleid][vY], VehiclesInfo[vehicleid][vZ]);
		GetVehicleZAngle(vehicleid, VehiclesInfo[vehicleid][vRotZ]);
		SetVehicleToRespawn(vehicleid);
		SetVehiclePos(vehicleid, VehiclesInfo[vehicleid][vX], VehiclesInfo[vehicleid][vY], VehiclesInfo[vehicleid][vZ]);
		SetVehicleZAngle(vehicleid, VehiclesInfo[vehicleid][vRotZ]);
	}
	return 1;
}

fpublic cmd_edit(playerid, params[])
{
	#if defined ONLY_FOR_ADMINS
		if(!IsPlayerAdmin(playerid)) return SendClientMessage(playerid, DEFAULT_COLOR, NOT_RCON_ADMIN_ERROR);
	#endif
	if(CreatorInfo[playerid][ucCameraMode]) CancelFlyMode(playerid);
	else if(PLAYER_STATE_ONFOOT <= GetPlayerState(playerid) <= PLAYER_STATE_PASSENGER) FlyMode(playerid);
	return 1;
}

fpublic ShowCreatorDialogEx(playerid, dialogid) return ShowCreatorDialog(playerid, dialogid);

fpublic CreatorSpawn(playerid)
{
	if(CreatorInfo[playerid][ucOldPos][0] || CreatorInfo[playerid][ucOldPos][1] || CreatorInfo[playerid][ucOldPos][2] || CreatorInfo[playerid][ucOldAngle])
	{
		SetPlayerFacingAngle(playerid, CreatorInfo[playerid][ucOldAngle]);
		SetPlayerPos(playerid, CreatorInfo[playerid][ucOldPos][0], CreatorInfo[playerid][ucOldPos][1], CreatorInfo[playerid][ucOldPos][2]);
	}
	CreatorInfo[playerid][ucOldPos][0] = 0.0;
	CreatorInfo[playerid][ucOldPos][1] = 0.0;
	CreatorInfo[playerid][ucOldPos][2] = 0.0;
	CreatorInfo[playerid][ucOldAngle] = 0.0;
	return 1;
}

ShowCreatorDialog(playerid, dialogid, text[] = "")
{
	switch(dialogid)
	{
		case DIALOG_CHOOSE_MAP:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_CHOOSE_MAP, DIALOG_STYLE_LIST, MAP_MANAGEMENT, text, OK_BUTTON, CANCEL_BUTTON);
			else ShowPlayerDialog(playerid, DIALOG_CHOOSE_MAP, DIALOG_STYLE_LIST, MAP_MANAGEMENT, NEW_MAP"\n"OPEN_MAP"\n"SAVE_MAP"\n"SAVE_MAP_AS"\n"DELETE_MAP, OK_BUTTON, CANCEL_BUTTON);
		}
		case DIALOG_NEW_MAP:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_NEW_MAP, DIALOG_STYLE_MSGBOX, NEW_MAP, text, OK_BUTTON, BACK_BUTTON);
			else ShowPlayerDialog(playerid, DIALOG_NEW_MAP, DIALOG_STYLE_MSGBOX, NEW_MAP, NEW_MAP_WARNING"\n"NEW_MAP_WARNING_2, OK_BUTTON, BACK_BUTTON);
		}
		case DIALOG_OPEN_MAP_WARN:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_OPEN_MAP_WARN, DIALOG_STYLE_MSGBOX, OPEN_MAP, text, OK_BUTTON, BACK_BUTTON);
			else ShowPlayerDialog(playerid, DIALOG_OPEN_MAP_WARN, DIALOG_STYLE_MSGBOX, OPEN_MAP, OPEN_MAP_WARNING"\n"NEW_MAP_WARNING_2, OK_BUTTON, BACK_BUTTON);
		}
		case DIALOG_OPEN_MAP:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_OPEN_MAP, DIALOG_STYLE_INPUT, OPEN_MAP, text, OK_BUTTON, BACK_BUTTON);
			else if(fexist("ucmaps.lst"))
			{
				new File:pfile;
				if((pfile = fopen("ucmaps.lst")))
				{
					static strtmp[256], strtmp2[MAX_MAPNAME_LENGTH];
					strtmp[0] = EOS;
					strtmp2[0] = EOS;
					while(fread(pfile, strtmp2)) strcat(strtmp, strtmp2);
					strcat(strtmp, "\n"ENTER_MAP_NAME_FOR_OPEN);
					ShowPlayerDialog(playerid, DIALOG_OPEN_MAP, DIALOG_STYLE_INPUT, OPEN_MAP, strtmp, OK_BUTTON, BACK_BUTTON);
					fclose(pfile);
				}
			}
			else ShowPlayerDialog(playerid, DIALOG_OPEN_MAP, DIALOG_STYLE_INPUT, OPEN_MAP, ENTER_MAP_NAME_FOR_OPEN, OK_BUTTON, BACK_BUTTON);
		}
		case DIALOG_SAVE_MAP_AS:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_SAVE_MAP_AS, DIALOG_STYLE_INPUT, SAVE_MAP_AS, text, OK_BUTTON, BACK_BUTTON);
			else ShowPlayerDialog(playerid, DIALOG_SAVE_MAP_AS, DIALOG_STYLE_INPUT, SAVE_MAP_AS, ENTER_MAP_NAME_FOR_SAVE, OK_BUTTON, BACK_BUTTON);
		}
		case DIALOG_DELETE_MAP:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_DELETE_MAP, DIALOG_STYLE_INPUT, DELETE_MAP, text, OK_BUTTON, BACK_BUTTON);
			else if(fexist("ucmaps.lst"))
			{
				new File:pfile;
				if((pfile = fopen("ucmaps.lst")))
				{
					static strtmp[256], strtmp2[MAX_MAPNAME_LENGTH];
					strtmp[0] = EOS;
					strtmp2[0] = EOS;
					while(fread(pfile, strtmp2)) strcat(strtmp, strtmp2);
					strcat(strtmp, "\n"ENTER_MAP_NAME_FOR_DELETE);
					ShowPlayerDialog(playerid, DIALOG_DELETE_MAP, DIALOG_STYLE_INPUT, DELETE_MAP, strtmp, OK_BUTTON, BACK_BUTTON);
					fclose(pfile);
				}
			}
			else ShowPlayerDialog(playerid, DIALOG_DELETE_MAP, DIALOG_STYLE_INPUT, DELETE_MAP, ENTER_MAP_NAME_FOR_DELETE, OK_BUTTON, BACK_BUTTON);
		}
		case DIALOG_MAIN:
		{
			if(!strcmp(MapName, "uc_blank"))
			{
				if(text[0]) ShowPlayerDialog(playerid, DIALOG_MAIN, DIALOG_STYLE_LIST, NEW_MAP, text, OK_BUTTON, BACK_BUTTON);
				else ShowPlayerDialog(playerid, DIALOG_MAIN, DIALOG_STYLE_LIST, NEW_MAP, CREATE"\n"EDIT"\n"TELEPORT_INTO"\n"COPY_DEFAULT_OBJECTS"\n"MAP_SETTINGS, OK_BUTTON, BACK_BUTTON);
			}
			else if(text[0]) ShowPlayerDialog(playerid, DIALOG_MAIN, DIALOG_STYLE_LIST, MapName, text, OK_BUTTON, BACK_BUTTON);
			else ShowPlayerDialog(playerid, DIALOG_MAIN, DIALOG_STYLE_LIST, MapName, CREATE"\n"EDIT"\n"TELEPORT_INTO"\n"COPY_DEFAULT_OBJECTS"\n"MAP_SETTINGS, OK_BUTTON, BACK_BUTTON);
		}
		case DIALOG_CREATE:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_CREATE, DIALOG_STYLE_LIST, CREATE, text, OK_BUTTON, BACK_BUTTON);
			else ShowPlayerDialog(playerid, DIALOG_CREATE, DIALOG_STYLE_LIST, CREATE, CREATE_OBJECT"\n"CREATE_VEHICLE"\n"CREATE_ACTOR"\n"CREATE_PICKUP"\n"CREATE_CP"\n"CREATE_RCP"\n"CREATE_ICON"\n"CREATE_ZONE"\n"CREATE_LABEL, OK_BUTTON, BACK_BUTTON);
		}
		case DIALOG_CREATE_OBJECT:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_CREATE_OBJECT, DIALOG_STYLE_INPUT, CREATE_OBJECT, text, OK_BUTTON, BACK_BUTTON);
			else ShowPlayerDialog(playerid, DIALOG_CREATE_OBJECT, DIALOG_STYLE_INPUT, CREATE_OBJECT, ENTER_OBJECT_NAME, OK_BUTTON, BACK_BUTTON);
		}
		case DIALOG_CREATE_VEHICLE:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_CREATE_VEHICLE, DIALOG_STYLE_INPUT, CREATE_VEHICLE, text, OK_BUTTON, BACK_BUTTON);
			else ShowPlayerDialog(playerid, DIALOG_CREATE_VEHICLE, DIALOG_STYLE_INPUT, CREATE_VEHICLE, ENTER_VEHICLE_NAME, OK_BUTTON, BACK_BUTTON);
		}
		case DIALOG_CREATE_ACTOR:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_CREATE_ACTOR, DIALOG_STYLE_INPUT, CREATE_ACTOR, text, OK_BUTTON, BACK_BUTTON);
			else ShowPlayerDialog(playerid, DIALOG_CREATE_ACTOR, DIALOG_STYLE_INPUT, CREATE_ACTOR, ENTER_SKIN_NAME, OK_BUTTON, BACK_BUTTON);
		}
		case DIALOG_CREATE_PICKUP:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_CREATE_PICKUP, DIALOG_STYLE_INPUT, CREATE_PICKUP, text, OK_BUTTON, BACK_BUTTON);
			else ShowPlayerDialog(playerid, DIALOG_CREATE_PICKUP, DIALOG_STYLE_INPUT, CREATE_PICKUP, ENTER_PICKUP_NAME, OK_BUTTON, BACK_BUTTON);
		}
		case DIALOG_CREATE_RCP:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_CREATE_RCP, DIALOG_STYLE_LIST, CREATE_RCP, text, OK_BUTTON, BACK_BUTTON);
			else ShowPlayerDialog(playerid, DIALOG_CREATE_RCP, DIALOG_STYLE_LIST, CREATE_RCP, RCP_TYPE_NORMAL" (0)\n"RCP_TYPE_FINISH" (1)\n"RCP_TYPE_NOTHING" (2)\n"RCP_TYPE_AIR_NORMAL" (3)\n"RCP_TYPE_AIR_FINISH" (4)", OK_BUTTON, BACK_BUTTON);
		}
		case DIALOG_CREATE_ICON:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_CREATE_ICON, DIALOG_STYLE_INPUT, CREATE_ICON, text, OK_BUTTON, BACK_BUTTON);
			else ShowPlayerDialog(playerid, DIALOG_CREATE_ICON, DIALOG_STYLE_INPUT, CREATE_ICON, ENTER_ICON_NAME"\n"INVALID_MAP_ICONS_WARNING, OK_BUTTON, BACK_BUTTON);
		}
		case DIALOG_CREATE_LABEL:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_CREATE_LABEL, DIALOG_STYLE_INPUT, CREATE_LABEL, text, OK_BUTTON, BACK_BUTTON);
			else ShowPlayerDialog(playerid, DIALOG_CREATE_LABEL, DIALOG_STYLE_INPUT, CREATE_LABEL, ENTER_TEXT, OK_BUTTON, BACK_BUTTON);
		}
		case DIALOG_EDIT:
		{
			if(text[0])
			{
				CreatorInfo[playerid][ucEditDialog] = true;
				ShowPlayerDialog(playerid, DIALOG_EDIT, DIALOG_STYLE_LIST, EDIT, text, OK_BUTTON, BACK_BUTTON);
			}
			else
			{
				new i;
				static strtmp[16384], strtmp2[145];
				strtmp[0] = EOS;
				for(i = 0; i < sizeof ObjectsInfo; ++i)
				{
					if(ObjectsInfo[i][oCreated])
					{
						format(strtmp2, sizeof strtmp2, OBJECT" %d (id %d)\n", ObjectsInfo[i][oModelid], i);
						strcat(strtmp, strtmp2);
					}
				}
				for(i = 0; i < sizeof VehiclesInfo; ++i)
				{
					if(VehiclesInfo[i][vCreated])
					{
						format(strtmp2, sizeof strtmp2, VEHICLE" %d (id %d)\n", VehiclesInfo[i][vModelid], i);
						strcat(strtmp, strtmp2);
					}
				}
				for(i = 0; i < sizeof ActorsInfo; ++i)
				{
					if(ActorsInfo[i][aCreated])
					{
						format(strtmp2, sizeof strtmp2, ACTOR" %d (id %d)\n", ActorsInfo[i][aModelid], i);
						strcat(strtmp, strtmp2);
					}
				}
				for(i = 0; i < sizeof PickupsInfo; ++i)
				{
					if(PickupsInfo[i][pCreated])
					{
						format(strtmp2, sizeof strtmp2, PICKUP" %d (id %d)\n", PickupsInfo[i][pModelid], i);
						strcat(strtmp, strtmp2);
					}
				}
				if(CheckpointInfo[cpCreated])
				{
					format(strtmp2, sizeof strtmp2, CHECKPOINT" (id %d)\n", 1);
					strcat(strtmp, strtmp2);
				}
				if(RaceCpInfo[rcpCreated])
				{
					format(strtmp2, sizeof strtmp2, RACECP" (id %d)\n", 1);
					strcat(strtmp, strtmp2);
				}
				for(i = 0; i < sizeof IconsInfo; ++i)
				{
					if(IconsInfo[i][iCreated])
					{
						format(strtmp2, sizeof strtmp2, MAPICON" (id %d)\n", i);
						strcat(strtmp, strtmp2);
					}
				}
				for(i = 0; i < sizeof ZonesInfo; ++i)
				{
					if(ZonesInfo[i][gCreated])
					{
						format(strtmp2, sizeof strtmp2, GANGZONE" (id %d)\n", i);
						strcat(strtmp, strtmp2);
					}
				}
				for(i = 0; i < sizeof LabelsInfo; ++i)
				{
					if(LabelsInfo[i][lCreated])
					{
						format(strtmp2, sizeof strtmp2, LABEL" (id %d)\n", i);
						strcat(strtmp, strtmp2);
					}
				}
				if(!strtmp[0])
				{
					SendClientMessage(playerid, DEFAULT_COLOR, EMPTY_MAP_ERROR);
					ShowCreatorDialog(playerid, DIALOG_MAIN);
				}
				else
				{
					CreatorInfo[playerid][ucEditDialog] = true;
					ShowPlayerDialog(playerid, DIALOG_EDIT, DIALOG_STYLE_LIST, EDIT, strtmp, OK_BUTTON, BACK_BUTTON);
				}
			}
		}
		case DIALOG_EDIT_OBJECT:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_EDIT_OBJECT, DIALOG_STYLE_LIST, EDIT_OBJECT, text, OK_BUTTON, BACK_BUTTON);
			else ShowPlayerDialog(playerid, DIALOG_EDIT_OBJECT, DIALOG_STYLE_LIST, EDIT_OBJECT, SELECT_OBJECT"\n"TELEPORT_TO_OBJECT"\n"TELEPORT_OBJECT"\n"COPY_OBJECT"\n"DELETE_OBJECT"\n"EDIT_MATERIAL"\n"EDIT_MATERIAL_TEXT"\n"COORD_X"\n"COORD_Y"\n"COORD_Z"\n"ROT_X"\n"ROT_Y"\n"ROT_Z, OK_BUTTON, BACK_BUTTON);
		}
		case DIALOG_EDIT_OBJECT_TXD_MAIN:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_EDIT_OBJECT_TXD_MAIN, DIALOG_STYLE_LIST, EDIT_MATERIAL, text, OK_BUTTON, BACK_BUTTON);
			else ShowPlayerDialog(playerid, DIALOG_EDIT_OBJECT_TXD_MAIN, DIALOG_STYLE_LIST, EDIT_MATERIAL, LAYER" 0\n"LAYER" 1\n"LAYER" 2\n"LAYER" 3\n"LAYER" 4\n"LAYER" 5\n"LAYER" 6\n"LAYER" 7\n"LAYER" 8\n"LAYER" 9\n"LAYER" 10\n"LAYER" 11\n"LAYER" 12\n"LAYER" 13\n"LAYER" 14\n"LAYER" 15", OK_BUTTON, BACK_BUTTON);
		}
		case DIALOG_EDIT_OBJECT_TXD:
		{
			static strtmp[32];
			format(strtmp, sizeof strtmp, LAYER" %d", CreatorInfo[playerid][ucClickedLayer]);
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_EDIT_OBJECT_TXD, DIALOG_STYLE_LIST, strtmp, text, OK_BUTTON, BACK_BUTTON);
			else
			{
				static strtmp2[128];
				format(strtmp2, sizeof strtmp2, RESET_TEXTURE"\n"OBJECT_TEXTURE" %d\n"OBJECT_COLOR" %d", ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oTextureid][CreatorInfo[playerid][ucClickedLayer]], ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oMaterialColor][CreatorInfo[playerid][ucClickedLayer]]);
				ShowPlayerDialog(playerid, DIALOG_EDIT_OBJECT_TXD, DIALOG_STYLE_LIST, strtmp, strtmp2, OK_BUTTON, BACK_BUTTON);
			}
		}
		case DIALOG_EDIT_OBJECT_TXD_ID:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_EDIT_OBJECT_TXD_ID, DIALOG_STYLE_INPUT, EDIT_TEXTURE, text, OK_BUTTON, BACK_BUTTON);
			else ShowPlayerDialog(playerid, DIALOG_EDIT_OBJECT_TXD_ID, DIALOG_STYLE_INPUT, EDIT_TEXTURE, ENTER_TEXTURE_NAME, OK_BUTTON, BACK_BUTTON);
		}
		case DIALOG_EDIT_OBJECT_TXD_COLOR:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_EDIT_OBJECT_TXD_COLOR, DIALOG_STYLE_INPUT, EDIT_OBJECT_COLOR, text, OK_BUTTON, BACK_BUTTON);
			else ShowPlayerDialog(playerid, DIALOG_EDIT_OBJECT_TXD_COLOR, DIALOG_STYLE_INPUT, EDIT_OBJECT_COLOR, ENTER_OBJECT_COLOR, OK_BUTTON, BACK_BUTTON);
		}
		case DIALOG_EDIT_OBJECT_TXT_MAIN:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_EDIT_OBJECT_TXT_MAIN, DIALOG_STYLE_INPUT, EDIT_MATERIAL_TEXT, text, OK_BUTTON, BACK_BUTTON);
			else ShowPlayerDialog(playerid, DIALOG_EDIT_OBJECT_TXT_MAIN, DIALOG_STYLE_INPUT, EDIT_MATERIAL_TEXT, ENTER_LAYER_ID, OK_BUTTON, BACK_BUTTON);
		}
		case DIALOG_EDIT_OBJECT_TXT:
		{
			static strtmp[32];
			format(strtmp, sizeof strtmp, LAYER" %d", ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oTextIndex]);
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_EDIT_OBJECT_TXT, DIALOG_STYLE_LIST, strtmp, text, OK_BUTTON, BACK_BUTTON);
			else
			{
				static strtmp2[256];
				format(strtmp2, sizeof strtmp2, RESET_TEXT"\n"OBJECT_TEXT" \"%s\"\n"OBJECT_TEXT_SIZE" %d\n"TEXT_FONT" %s\n"FONT_SIZE" %d\n"BOLD" %d\n"FONT_COLOR" %d\n"BACK_COLOR" %d\n"ALIGNMENT" %d", ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oText],
				ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oTextSize], ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oFont], ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oFontSize], ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oBold],
				ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oFontColor], ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oBackColor], ObjectsInfo[CreatorInfo[playerid][ucClickedObj]][oTextAlignment]);
				ShowPlayerDialog(playerid, DIALOG_EDIT_OBJECT_TXT, DIALOG_STYLE_LIST, strtmp, strtmp2, OK_BUTTON, BACK_BUTTON);
			}
		}
		case DIALOG_EDIT_OBJECT_TXT_TEXT:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_EDIT_OBJECT_TXT_TEXT, DIALOG_STYLE_INPUT, EDIT_TEXT, text, OK_BUTTON, BACK_BUTTON);
			else ShowPlayerDialog(playerid, DIALOG_EDIT_OBJECT_TXT_TEXT, DIALOG_STYLE_INPUT, EDIT_TEXT, ENTER_TEXT, OK_BUTTON, BACK_BUTTON);
		}
		case DIALOG_EDIT_OBJECT_TXT_SIZE:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_EDIT_OBJECT_TXT_SIZE, DIALOG_STYLE_LIST, EDIT_OBJECT_TEXT_SIZE, text, OK_BUTTON, BACK_BUTTON);
			else ShowPlayerDialog(playerid, DIALOG_EDIT_OBJECT_TXT_SIZE, DIALOG_STYLE_LIST, EDIT_OBJECT_TEXT_SIZE, "32x32 (10)\n64x32 (20)\n64x64 (30)\n128x32 (40)\n128x64 (50)\n128x128 (60)\n256x32 (70)\n256x64 (80)\n256x128 (90)\n256x256 (100)\n512x64 (110)\n512x128 (120)\n512x256 (130)\n512x512 (140)", OK_BUTTON, BACK_BUTTON);
		}
		case DIALOG_EDIT_OBJECT_TXT_FONT:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_EDIT_OBJECT_TXT_FONT, DIALOG_STYLE_INPUT, EDIT_FONT, text, OK_BUTTON, BACK_BUTTON);
			else ShowPlayerDialog(playerid, DIALOG_EDIT_OBJECT_TXT_FONT, DIALOG_STYLE_INPUT, EDIT_FONT, ENTER_FONT_NAME, OK_BUTTON, BACK_BUTTON);
		}
		case DIALOG_EDIT_OBJECT_TXT_FSIZE:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_EDIT_OBJECT_TXT_FSIZE, DIALOG_STYLE_INPUT, EDIT_FONT_SIZE, text, OK_BUTTON, BACK_BUTTON);
			else ShowPlayerDialog(playerid, DIALOG_EDIT_OBJECT_TXT_FSIZE, DIALOG_STYLE_INPUT, EDIT_FONT_SIZE, ENTER_FONT_SIZE, OK_BUTTON, BACK_BUTTON);
		}
		case DIALOG_EDIT_OBJECT_TXT_BOLD:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_EDIT_OBJECT_TXT_BOLD, DIALOG_STYLE_LIST, EDIT_OBJECT_TEXT_BOLD, text, OK_BUTTON, BACK_BUTTON);
			else ShowPlayerDialog(playerid, DIALOG_EDIT_OBJECT_TXT_BOLD, DIALOG_STYLE_LIST, EDIT_OBJECT_TEXT_BOLD, ENABLE_BOLD" (1)\n"DISABLE_BOLD" (0)", OK_BUTTON, BACK_BUTTON);
		}
		case DIALOG_EDIT_OBJECT_TXT_FCOLOR:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_EDIT_OBJECT_TXT_FCOLOR, DIALOG_STYLE_INPUT, EDIT_OBJECT_FONT_COLOR, text, OK_BUTTON, BACK_BUTTON);
			else ShowPlayerDialog(playerid, DIALOG_EDIT_OBJECT_TXT_FCOLOR, DIALOG_STYLE_INPUT, EDIT_OBJECT_FONT_COLOR, ENTER_FONT_COLOR, OK_BUTTON, BACK_BUTTON);
		}
		case DIALOG_EDIT_OBJECT_TXT_BCOLOR:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_EDIT_OBJECT_TXT_BCOLOR, DIALOG_STYLE_INPUT, EDIT_OBJECT_BACK_COLOR, text, OK_BUTTON, BACK_BUTTON);
			else ShowPlayerDialog(playerid, DIALOG_EDIT_OBJECT_TXT_BCOLOR, DIALOG_STYLE_INPUT, EDIT_OBJECT_BACK_COLOR, ENTER_BACK_COLOR, OK_BUTTON, BACK_BUTTON);
		}
		case DIALOG_EDIT_OBJECT_TXT_ALIGN:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_EDIT_OBJECT_TXT_ALIGN, DIALOG_STYLE_LIST, EDIT_OBJECT_TEXT_ALIGNMENT, text, OK_BUTTON, BACK_BUTTON);
			else ShowPlayerDialog(playerid, DIALOG_EDIT_OBJECT_TXT_ALIGN, DIALOG_STYLE_LIST, EDIT_OBJECT_TEXT_ALIGNMENT, ALIGNMENT_LEFT" (0)\n"ALIGNMENT_CENTER" (1)\n"ALIGNMENT_RIGHT" (2)", OK_BUTTON, BACK_BUTTON);
		}
		case DIALOG_EDIT_OBJECT_X:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_EDIT_OBJECT_X, DIALOG_STYLE_INPUT, COORD_X, text, OK_BUTTON, BACK_BUTTON);
			else
			{
				static strtmp[128];
				new Float:x, Float:y, Float:z;
				GetObjectPos(CreatorInfo[playerid][ucClickedObj], x, y, z);
				format(strtmp, sizeof strtmp, ENTER_COORD_X"\n"COORDS_NOW" X: %.4f, Y: %.4f, Z: %.4f", x, y, z);
				ShowPlayerDialog(playerid, DIALOG_EDIT_OBJECT_X, DIALOG_STYLE_INPUT, COORD_X, strtmp, OK_BUTTON, BACK_BUTTON);
			}
		}
		case DIALOG_EDIT_OBJECT_Y:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_EDIT_OBJECT_Y, DIALOG_STYLE_INPUT, COORD_Y, text, OK_BUTTON, BACK_BUTTON);
			else
			{
				static strtmp[128];
				new Float:x, Float:y, Float:z;
				GetObjectPos(CreatorInfo[playerid][ucClickedObj], x, y, z);
				format(strtmp, sizeof strtmp, ENTER_COORD_Y"\n"COORDS_NOW" X: %.4f, Y: %.4f, Z: %.4f", x, y, z);
				ShowPlayerDialog(playerid, DIALOG_EDIT_OBJECT_Y, DIALOG_STYLE_INPUT, COORD_Y, strtmp, OK_BUTTON, BACK_BUTTON);
			}
		}
		case DIALOG_EDIT_OBJECT_Z:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_EDIT_OBJECT_Z, DIALOG_STYLE_INPUT, COORD_Z, text, OK_BUTTON, BACK_BUTTON);
			else
			{
				static strtmp[128];
				new Float:x, Float:y, Float:z;
				GetObjectPos(CreatorInfo[playerid][ucClickedObj], x, y, z);
				format(strtmp, sizeof strtmp, ENTER_COORD_Z"\n"COORDS_NOW" X: %.4f, Y: %.4f, Z: %.4f", x, y, z);
				ShowPlayerDialog(playerid, DIALOG_EDIT_OBJECT_Z, DIALOG_STYLE_INPUT, COORD_Z, strtmp, OK_BUTTON, BACK_BUTTON);
			}
		}
		case DIALOG_EDIT_OBJECT_RX:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_EDIT_OBJECT_RX, DIALOG_STYLE_INPUT, ROT_X, text, OK_BUTTON, BACK_BUTTON);
			else
			{
				static strtmp[128];
				new Float:x, Float:y, Float:z;
				GetObjectRot(CreatorInfo[playerid][ucClickedObj], x, y, z);
				format(strtmp, sizeof strtmp, ENTER_ROT_X"\n"COORDS_NOW" X: %.4f, Y: %.4f, Z: %.4f", x, y, z);
				ShowPlayerDialog(playerid, DIALOG_EDIT_OBJECT_RX, DIALOG_STYLE_INPUT, ROT_X, strtmp, OK_BUTTON, BACK_BUTTON);
			}
		}
		case DIALOG_EDIT_OBJECT_RY:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_EDIT_OBJECT_RY, DIALOG_STYLE_INPUT, ROT_Y, text, OK_BUTTON, BACK_BUTTON);
			else
			{
				static strtmp[128];
				new Float:x, Float:y, Float:z;
				GetObjectRot(CreatorInfo[playerid][ucClickedObj], x, y, z);
				format(strtmp, sizeof strtmp, ENTER_ROT_Y"\n"COORDS_NOW" X: %.4f, Y: %.4f, Z: %.4f", x, y, z);
				ShowPlayerDialog(playerid, DIALOG_EDIT_OBJECT_RY, DIALOG_STYLE_INPUT, ROT_Y, strtmp, OK_BUTTON, BACK_BUTTON);
			}
		}
		case DIALOG_EDIT_OBJECT_RZ:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_EDIT_OBJECT_RZ, DIALOG_STYLE_INPUT, ROT_Z, text, OK_BUTTON, BACK_BUTTON);
			else
			{
				static strtmp[128];
				new Float:x, Float:y, Float:z;
				GetObjectRot(CreatorInfo[playerid][ucClickedObj], x, y, z);
				format(strtmp, sizeof strtmp, ENTER_ROT_Z"\n"COORDS_NOW" X: %.4f, Y: %.4f, Z: %.4f", x, y, z);
				ShowPlayerDialog(playerid, DIALOG_EDIT_OBJECT_RZ, DIALOG_STYLE_INPUT, ROT_Z, strtmp, OK_BUTTON, BACK_BUTTON);
			}
		}
		case DIALOG_EDIT_VEHICLE:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_EDIT_VEHICLE, DIALOG_STYLE_LIST, EDIT_VEHICLE, text, OK_BUTTON, BACK_BUTTON);
			else ShowPlayerDialog(playerid, DIALOG_EDIT_VEHICLE, DIALOG_STYLE_LIST, EDIT_VEHICLE, SELECT_VEHICLE"\n"TELEPORT_TO_VEHICLE"\n"TELEPORT_VEHICLE"\n"COPY_VEHICLE"\n"DELETE_VEHICLE"\n"REPAIR_VEHICLE"\n"COORD_X"\n"COORD_Y"\n"COORD_Z"\n"ROT_Z"\n"RESPAWN_TIME"\n"COLOR_1"\n"COLOR_2, OK_BUTTON, BACK_BUTTON);
		}
		case DIALOG_EDIT_VEHICLE_X:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_EDIT_VEHICLE_X, DIALOG_STYLE_INPUT, COORD_X, text, OK_BUTTON, BACK_BUTTON);
			else
			{
				static strtmp[128];
				new Float:x, Float:y, Float:z;
				GetVehiclePos(CreatorInfo[playerid][ucClickedVeh], x, y, z);
				format(strtmp, sizeof strtmp, ENTER_COORD_X"\n"COORDS_NOW" X: %.4f, Y: %.4f, Z: %.4f", x, y, z);
				ShowPlayerDialog(playerid, DIALOG_EDIT_VEHICLE_X, DIALOG_STYLE_INPUT, COORD_X, strtmp, OK_BUTTON, BACK_BUTTON);
			}
		}
		case DIALOG_EDIT_VEHICLE_Y:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_EDIT_VEHICLE_Y, DIALOG_STYLE_INPUT, COORD_Y, text, OK_BUTTON, BACK_BUTTON);
			else
			{
				static strtmp[128];
				new Float:x, Float:y, Float:z;
				GetVehiclePos(CreatorInfo[playerid][ucClickedVeh], x, y, z);
				format(strtmp, sizeof strtmp, ENTER_COORD_Y"\n"COORDS_NOW" X: %.4f, Y: %.4f, Z: %.4f", x, y, z);
				ShowPlayerDialog(playerid, DIALOG_EDIT_VEHICLE_Y, DIALOG_STYLE_INPUT, COORD_Y, strtmp, OK_BUTTON, BACK_BUTTON);
			}
		}
		case DIALOG_EDIT_VEHICLE_Z:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_EDIT_VEHICLE_Z, DIALOG_STYLE_INPUT, COORD_Z, text, OK_BUTTON, BACK_BUTTON);
			else
			{
				static strtmp[128];
				new Float:x, Float:y, Float:z;
				GetVehiclePos(CreatorInfo[playerid][ucClickedVeh], x, y, z);
				format(strtmp, sizeof strtmp, ENTER_COORD_Z"\n"COORDS_NOW" X: %.4f, Y: %.4f, Z: %.4f", x, y, z);
				ShowPlayerDialog(playerid, DIALOG_EDIT_VEHICLE_Z, DIALOG_STYLE_INPUT, COORD_Z, strtmp, OK_BUTTON, BACK_BUTTON);
			}
		}
		case DIALOG_EDIT_VEHICLE_RZ:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_EDIT_VEHICLE_RZ, DIALOG_STYLE_INPUT, ROT_Z, text, OK_BUTTON, BACK_BUTTON);
			else
			{
				new Float:z;
				static strtmp[128];
				GetVehicleZAngle(CreatorInfo[playerid][ucClickedVeh], z);
				format(strtmp, sizeof strtmp, ENTER_ROT_Z"\n"COORD_NOW" %.4f", z);
				ShowPlayerDialog(playerid, DIALOG_EDIT_VEHICLE_RZ, DIALOG_STYLE_INPUT, ROT_Z, strtmp, OK_BUTTON, BACK_BUTTON);
			}
		}
		case DIALOG_EDIT_VEHICLE_DELAY:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_EDIT_VEHICLE_DELAY, DIALOG_STYLE_INPUT, RESPAWN_TIME, text, OK_BUTTON, BACK_BUTTON);
			else
			{
				static strtmp[128];
				format(strtmp, sizeof strtmp, ENTER_RESPAWN_TIME"\n"RESPAWN_TIME_NOW, VehiclesInfo[CreatorInfo[playerid][ucClickedVeh]][vRespawnDelay]);
				ShowPlayerDialog(playerid, DIALOG_EDIT_VEHICLE_DELAY, DIALOG_STYLE_INPUT, RESPAWN_TIME, strtmp, OK_BUTTON, BACK_BUTTON);
			}
		}
		case DIALOG_EDIT_VEHICLE_COLOR_1:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_EDIT_VEHICLE_COLOR_1, DIALOG_STYLE_INPUT, COLOR_1, text, OK_BUTTON, BACK_BUTTON);
			else
			{
				static strtmp[128];
				format(strtmp, sizeof strtmp, ENTER_COLOR_1"\n"COLOR_NOW" %d", VehiclesInfo[CreatorInfo[playerid][ucClickedVeh]][vColor1]);
				ShowPlayerDialog(playerid, DIALOG_EDIT_VEHICLE_COLOR_1, DIALOG_STYLE_INPUT, COLOR_1, strtmp, OK_BUTTON, BACK_BUTTON);
			}
		}
		case DIALOG_EDIT_VEHICLE_COLOR_2:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_EDIT_VEHICLE_COLOR_2, DIALOG_STYLE_INPUT, COLOR_2, text, OK_BUTTON, BACK_BUTTON);
			else
			{
				static strtmp[128];
				format(strtmp, sizeof strtmp, ENTER_COLOR_2"\n"COLOR_NOW" %d", VehiclesInfo[CreatorInfo[playerid][ucClickedVeh]][vColor2]);
				ShowPlayerDialog(playerid, DIALOG_EDIT_VEHICLE_COLOR_2, DIALOG_STYLE_INPUT, COLOR_2, strtmp, OK_BUTTON, BACK_BUTTON);
			}
		}
		case DIALOG_EDIT_ACTOR:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_EDIT_ACTOR, DIALOG_STYLE_LIST, EDIT_ACTOR, text, OK_BUTTON, BACK_BUTTON);
			else ShowPlayerDialog(playerid, DIALOG_EDIT_ACTOR, DIALOG_STYLE_LIST, EDIT_ACTOR, SELECT_ACTOR"\n"TELEPORT_TO_ACTOR"\n"TELEPORT_ACTOR"\n"COPY_ACTOR"\n"DELETE_ACTOR"\n"COORD_X"\n"COORD_Y"\n"COORD_Z"\n"ROT_Z, OK_BUTTON, BACK_BUTTON);
		}
		case DIALOG_EDIT_ACTOR_X:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_EDIT_ACTOR_X, DIALOG_STYLE_INPUT, COORD_X, text, OK_BUTTON, BACK_BUTTON);
			else
			{
				static strtmp[128];
				new Float:x, Float:y, Float:z;
				GetActorPos(CreatorInfo[playerid][ucClickedAct], x, y, z);
				format(strtmp, sizeof strtmp, ENTER_COORD_X"\n"COORDS_NOW" X: %.4f, Y: %.4f, Z: %.4f", x, y, z);
				ShowPlayerDialog(playerid, DIALOG_EDIT_ACTOR_X, DIALOG_STYLE_INPUT, COORD_X, strtmp, OK_BUTTON, BACK_BUTTON);
			}
		}
		case DIALOG_EDIT_ACTOR_Y:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_EDIT_ACTOR_Y, DIALOG_STYLE_INPUT, COORD_Y, text, OK_BUTTON, BACK_BUTTON);
			else
			{
				static strtmp[128];
				new Float:x, Float:y, Float:z;
				GetActorPos(CreatorInfo[playerid][ucClickedAct], x, y, z);
				format(strtmp, sizeof strtmp, ENTER_COORD_Y"\n"COORDS_NOW" X: %.4f, Y: %.4f, Z: %.4f", x, y, z);
				ShowPlayerDialog(playerid, DIALOG_EDIT_ACTOR_Y, DIALOG_STYLE_INPUT, COORD_Y, strtmp, OK_BUTTON, BACK_BUTTON);
			}
		}
		case DIALOG_EDIT_ACTOR_Z:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_EDIT_ACTOR_Z, DIALOG_STYLE_INPUT, COORD_Z, text, OK_BUTTON, BACK_BUTTON);
			else
			{
				static strtmp[128];
				new Float:x, Float:y, Float:z;
				GetActorPos(CreatorInfo[playerid][ucClickedAct], x, y, z);
				format(strtmp, sizeof strtmp, ENTER_COORD_Z"\n"COORDS_NOW" X: %.4f, Y: %.4f, Z: %.4f", x, y, z);
				ShowPlayerDialog(playerid, DIALOG_EDIT_ACTOR_Z, DIALOG_STYLE_INPUT, COORD_Z, strtmp, OK_BUTTON, BACK_BUTTON);
			}
		}
		case DIALOG_EDIT_ACTOR_RZ:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_EDIT_ACTOR_RZ, DIALOG_STYLE_INPUT, ROT_Z, text, OK_BUTTON, BACK_BUTTON);
			else
			{
				new Float:z;
				static strtmp[128];
				GetActorFacingAngle(CreatorInfo[playerid][ucClickedAct], z);
				format(strtmp, sizeof strtmp, ENTER_ROT_Z"\n"COORD_NOW" %.4f", z);
				ShowPlayerDialog(playerid, DIALOG_EDIT_ACTOR_RZ, DIALOG_STYLE_INPUT, ROT_Z, strtmp, OK_BUTTON, BACK_BUTTON);
			}
		}
		case DIALOG_EDIT_PICKUP:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_EDIT_PICKUP, DIALOG_STYLE_LIST, EDIT_PICKUP, text, OK_BUTTON, BACK_BUTTON);
			else ShowPlayerDialog(playerid, DIALOG_EDIT_PICKUP, DIALOG_STYLE_LIST, EDIT_PICKUP, SELECT_PICKUP"\n"TELEPORT_TO_PICKUP"\n"TELEPORT_PICKUP"\n"COPY_PICKUP"\n"DELETE_PICKUP"\n"EDIT_PICKUP_TYPE"\n"COORD_X"\n"COORD_Y"\n"COORD_Z"\n"EDIT_VW, OK_BUTTON, BACK_BUTTON);
		}
		case DIALOG_EDIT_PICKUP_TYPE:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_EDIT_PICKUP_TYPE, DIALOG_STYLE_INPUT, EDIT_PICKUP_TYPE, text, OK_BUTTON, BACK_BUTTON);
			else
			{
				static strtmp[64];
				format(strtmp, sizeof strtmp, ENTER_PICKUP_TYPE"\n"TYPE_NOW" %d", PickupsInfo[CreatorInfo[playerid][ucClickedPick]][pType]);
				ShowPlayerDialog(playerid, DIALOG_EDIT_PICKUP_TYPE, DIALOG_STYLE_INPUT, EDIT_PICKUP_TYPE, strtmp, OK_BUTTON, BACK_BUTTON);
			}
		}
		case DIALOG_EDIT_PICKUP_X:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_EDIT_PICKUP_X, DIALOG_STYLE_INPUT, COORD_X, text, OK_BUTTON, BACK_BUTTON);
			else
			{
				static strtmp[128];
				format(strtmp, sizeof strtmp, ENTER_COORD_X"\n"COORDS_NOW" X: %.4f, Y: %.4f, Z: %.4f", PickupsInfo[CreatorInfo[playerid][ucClickedPick]][pX], PickupsInfo[CreatorInfo[playerid][ucClickedPick]][pY], PickupsInfo[CreatorInfo[playerid][ucClickedPick]][pZ]);
				ShowPlayerDialog(playerid, DIALOG_EDIT_PICKUP_X, DIALOG_STYLE_INPUT, COORD_X, strtmp, OK_BUTTON, BACK_BUTTON);
			}
		}
		case DIALOG_EDIT_PICKUP_Y:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_EDIT_PICKUP_Y, DIALOG_STYLE_INPUT, COORD_Y, text, OK_BUTTON, BACK_BUTTON);
			else
			{
				static strtmp[128];
				format(strtmp, sizeof strtmp, ENTER_COORD_Y"\n"COORDS_NOW" X: %.4f, Y: %.4f, Z: %.4f", PickupsInfo[CreatorInfo[playerid][ucClickedPick]][pX], PickupsInfo[CreatorInfo[playerid][ucClickedPick]][pY], PickupsInfo[CreatorInfo[playerid][ucClickedPick]][pZ]);
				ShowPlayerDialog(playerid, DIALOG_EDIT_PICKUP_Y, DIALOG_STYLE_INPUT, COORD_Y, strtmp, OK_BUTTON, BACK_BUTTON);
			}
		}
		case DIALOG_EDIT_PICKUP_Z:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_EDIT_PICKUP_Z, DIALOG_STYLE_INPUT, COORD_Z, text, OK_BUTTON, BACK_BUTTON);
			else
			{
				static strtmp[128];
				format(strtmp, sizeof strtmp, ENTER_COORD_Z"\n"COORDS_NOW" X: %.4f, Y: %.4f, Z: %.4f", PickupsInfo[CreatorInfo[playerid][ucClickedPick]][pX], PickupsInfo[CreatorInfo[playerid][ucClickedPick]][pY], PickupsInfo[CreatorInfo[playerid][ucClickedPick]][pZ]);
				ShowPlayerDialog(playerid, DIALOG_EDIT_PICKUP_Z, DIALOG_STYLE_INPUT, COORD_Z, strtmp, OK_BUTTON, BACK_BUTTON);
			}
		}
		case DIALOG_EDIT_PICKUP_VW:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_EDIT_PICKUP_VW, DIALOG_STYLE_INPUT, EDIT_VW, text, OK_BUTTON, BACK_BUTTON);
			else
			{
				static strtmp[128];
				format(strtmp, sizeof strtmp, ENTER_VW_ID"\n"VW_NOW" %d", PickupsInfo[CreatorInfo[playerid][ucClickedPick]][pVirtualWorld]);
				ShowPlayerDialog(playerid, DIALOG_EDIT_PICKUP_VW, DIALOG_STYLE_INPUT, EDIT_VW, strtmp, OK_BUTTON, BACK_BUTTON);
			}
		}
		case DIALOG_EDIT_CP:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_EDIT_CP, DIALOG_STYLE_LIST, EDIT_CHECKPOINT, text, OK_BUTTON, BACK_BUTTON);
			else ShowPlayerDialog(playerid, DIALOG_EDIT_CP, DIALOG_STYLE_LIST, EDIT_CHECKPOINT, SELECT_CHECKPOINT"\n"TELEPORT_TO_CHECKPOINT"\n"TELEPORT_CHECKPOINT"\n"DELETE_CHECKPOINT"\n"COORD_X"\n"COORD_Y"\n"EDIT_SIZE, OK_BUTTON, BACK_BUTTON);
		}
		case DIALOG_EDIT_CP_X:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_EDIT_CP_X, DIALOG_STYLE_INPUT, COORD_X, text, OK_BUTTON, BACK_BUTTON);
			else
			{
				static strtmp[128];
				format(strtmp, sizeof strtmp, ENTER_COORD_X"\n"COORDS_NOW" X: %.4f, Y: %.4f, Z: %.4f", CheckpointInfo[cpX], CheckpointInfo[cpY], CheckpointInfo[cpZ]);
				ShowPlayerDialog(playerid, DIALOG_EDIT_CP_X, DIALOG_STYLE_INPUT, COORD_X, strtmp, OK_BUTTON, BACK_BUTTON);
			}
		}
		case DIALOG_EDIT_CP_Y:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_EDIT_CP_Y, DIALOG_STYLE_INPUT, COORD_Y, text, OK_BUTTON, BACK_BUTTON);
			else
			{
				static strtmp[128];
				format(strtmp, sizeof strtmp, ENTER_COORD_Y"\n"COORDS_NOW" X: %.4f, Y: %.4f, Z: %.4f", CheckpointInfo[cpX], CheckpointInfo[cpY], CheckpointInfo[cpZ]);
				ShowPlayerDialog(playerid, DIALOG_EDIT_CP_Y, DIALOG_STYLE_INPUT, COORD_Y, strtmp, OK_BUTTON, BACK_BUTTON);
			}
		}
		case DIALOG_EDIT_CP_SIZE:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_EDIT_CP_SIZE, DIALOG_STYLE_INPUT, EDIT_SIZE, text, OK_BUTTON, BACK_BUTTON);
			else
			{
				static strtmp[128];
				format(strtmp, sizeof strtmp, ENTER_SIZE"\n"SIZE_NOW" %.1f", CheckpointInfo[cpSize]);
				ShowPlayerDialog(playerid, DIALOG_EDIT_CP_SIZE, DIALOG_STYLE_INPUT, EDIT_SIZE, strtmp, OK_BUTTON, BACK_BUTTON);
			}
		}
		case DIALOG_EDIT_RCP:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_EDIT_RCP, DIALOG_STYLE_LIST, EDIT_RACECP, text, OK_BUTTON, BACK_BUTTON);
			else ShowPlayerDialog(playerid, DIALOG_EDIT_RCP, DIALOG_STYLE_LIST, EDIT_RACECP, SELECT_RACECP"\n"TELEPORT_TO_RACECP"\n"TELEPORT_RACECP"\n"DELETE_RACECP"\n"EDIT_TYPE"\n"COORD_X"\n"COORD_Y"\n"COORD_Z"\n"COORD_NEXTX"\n"COORD_NEXTY"\n"COORD_NEXTZ"\n"EDIT_SIZE, OK_BUTTON, BACK_BUTTON);
		}
		case DIALOG_EDIT_RCP_TYPE:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_EDIT_RCP_TYPE, DIALOG_STYLE_TABLIST_HEADERS, EDIT_TYPE, text, OK_BUTTON, BACK_BUTTON);
			else
			{
				static strtmp[128];
				format(strtmp, sizeof strtmp, TYPE_NOW" %d\n"RCP_TYPE_NORMAL" (0)\n"RCP_TYPE_FINISH" (1)\n"RCP_TYPE_NOTHING" (2)\n"RCP_TYPE_AIR_NORMAL" (3)\n"RCP_TYPE_AIR_FINISH" (4)", RaceCpInfo[rcpType]);
				ShowPlayerDialog(playerid, DIALOG_EDIT_RCP_TYPE, DIALOG_STYLE_TABLIST_HEADERS, EDIT_TYPE, strtmp, OK_BUTTON, BACK_BUTTON);
			}
		}
		case DIALOG_EDIT_RCP_X:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_EDIT_RCP_X, DIALOG_STYLE_INPUT, COORD_X, text, OK_BUTTON, BACK_BUTTON);
			else
			{
				static strtmp[128];
				format(strtmp, sizeof strtmp, ENTER_COORD_X"\n"COORDS_NOW" X: %.4f, Y: %.4f, Z: %.4f", RaceCpInfo[rcpX], RaceCpInfo[rcpY], RaceCpInfo[rcpZ]);
				ShowPlayerDialog(playerid, DIALOG_EDIT_RCP_X, DIALOG_STYLE_INPUT, COORD_X, strtmp, OK_BUTTON, BACK_BUTTON);
			}
		}
		case DIALOG_EDIT_RCP_Y:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_EDIT_RCP_Y, DIALOG_STYLE_INPUT, COORD_Y, text, OK_BUTTON, BACK_BUTTON);
			else
			{
				static strtmp[128];
				format(strtmp, sizeof strtmp, ENTER_COORD_Y"\n"COORDS_NOW" X: %.4f, Y: %.4f, Z: %.4f", RaceCpInfo[rcpX], RaceCpInfo[rcpY], RaceCpInfo[rcpZ]);
				ShowPlayerDialog(playerid, DIALOG_EDIT_RCP_Y, DIALOG_STYLE_INPUT, COORD_Y, strtmp, OK_BUTTON, BACK_BUTTON);
			}
		}
		case DIALOG_EDIT_RCP_Z:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_EDIT_RCP_Z, DIALOG_STYLE_INPUT, COORD_Z, text, OK_BUTTON, BACK_BUTTON);
			else
			{
				static strtmp[128];
				format(strtmp, sizeof strtmp, ENTER_COORD_Z"\n"COORDS_NOW" X: %.4f, Y: %.4f, Z: %.4f", RaceCpInfo[rcpX], RaceCpInfo[rcpY], RaceCpInfo[rcpZ]);
				ShowPlayerDialog(playerid, DIALOG_EDIT_RCP_Z, DIALOG_STYLE_INPUT, COORD_Z, strtmp, OK_BUTTON, BACK_BUTTON);
			}
		}
		case DIALOG_EDIT_RCP_NEXTX:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_EDIT_RCP_NEXTX, DIALOG_STYLE_INPUT, COORD_NEXTX, text, OK_BUTTON, BACK_BUTTON);
			else
			{
				static strtmp[128];
				format(strtmp, sizeof strtmp, ENTER_COORD_X"\n"COORDS_NOW" X: %.4f, Y: %.4f, Z: %.4f", RaceCpInfo[rcpNextX], RaceCpInfo[rcpNextY], RaceCpInfo[rcpNextZ]);
				ShowPlayerDialog(playerid, DIALOG_EDIT_RCP_NEXTX, DIALOG_STYLE_INPUT, COORD_NEXTX, strtmp, OK_BUTTON, BACK_BUTTON);
			}
		}
		case DIALOG_EDIT_RCP_NEXTY:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_EDIT_RCP_NEXTY, DIALOG_STYLE_INPUT, COORD_NEXTY, text, OK_BUTTON, BACK_BUTTON);
			else
			{
				static strtmp[128];
				format(strtmp, sizeof strtmp, ENTER_COORD_Y"\n"COORDS_NOW" X: %.4f, Y: %.4f, Z: %.4f", RaceCpInfo[rcpNextX], RaceCpInfo[rcpNextY], RaceCpInfo[rcpNextZ]);
				ShowPlayerDialog(playerid, DIALOG_EDIT_RCP_NEXTY, DIALOG_STYLE_INPUT, COORD_NEXTY, strtmp, OK_BUTTON, BACK_BUTTON);
			}
		}
		case DIALOG_EDIT_RCP_NEXTZ:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_EDIT_RCP_NEXTZ, DIALOG_STYLE_INPUT, COORD_NEXTZ, text, OK_BUTTON, BACK_BUTTON);
			else
			{
				static strtmp[128];
				format(strtmp, sizeof strtmp, ENTER_COORD_Z"\n"COORDS_NOW" X: %.4f, Y: %.4f, Z: %.4f", RaceCpInfo[rcpNextX], RaceCpInfo[rcpNextY], RaceCpInfo[rcpNextZ]);
				ShowPlayerDialog(playerid, DIALOG_EDIT_RCP_NEXTZ, DIALOG_STYLE_INPUT, COORD_NEXTZ, strtmp, OK_BUTTON, BACK_BUTTON);
			}
		}
		case DIALOG_EDIT_RCP_SIZE:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_EDIT_RCP_SIZE, DIALOG_STYLE_INPUT, EDIT_SIZE, text, OK_BUTTON, BACK_BUTTON);
			else
			{
				static strtmp[128];
				format(strtmp, sizeof strtmp, ENTER_SIZE"\n"SIZE_NOW" %.1f", RaceCpInfo[rcpSize]);
				ShowPlayerDialog(playerid, DIALOG_EDIT_RCP_SIZE, DIALOG_STYLE_INPUT, EDIT_SIZE, strtmp, OK_BUTTON, BACK_BUTTON);
			}
		}
		case DIALOG_EDIT_ICON:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_EDIT_ICON, DIALOG_STYLE_LIST, EDIT_MAPICON, text, OK_BUTTON, BACK_BUTTON);
			else ShowPlayerDialog(playerid, DIALOG_EDIT_ICON, DIALOG_STYLE_LIST, EDIT_MAPICON, SELECT_MAPICON"\n"TELEPORT_TO_MAPICON"\n"TELEPORT_MAPICON"\n"COPY_MAPICON"\n"DELETE_MAPICON"\n"COORD_X"\n"COORD_Y"\n"COORD_Z"\n"EDIT_COLOR"\n"EDIT_STYLE, OK_BUTTON, BACK_BUTTON);
		}
		case DIALOG_EDIT_ICON_X:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_EDIT_ICON_X, DIALOG_STYLE_INPUT, COORD_X, text, OK_BUTTON, BACK_BUTTON);
			else
			{
				static strtmp[128];
				format(strtmp, sizeof strtmp, ENTER_COORD_X"\n"COORDS_NOW" X: %.4f, Y: %.4f, Z: %.4f", IconsInfo[CreatorInfo[playerid][ucClickedIco]][iX], IconsInfo[CreatorInfo[playerid][ucClickedIco]][iY], IconsInfo[CreatorInfo[playerid][ucClickedIco]][iZ]);
				ShowPlayerDialog(playerid, DIALOG_EDIT_ICON_X, DIALOG_STYLE_INPUT, COORD_X, strtmp, OK_BUTTON, BACK_BUTTON);
			}
		}
		case DIALOG_EDIT_ICON_Y:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_EDIT_ICON_Y, DIALOG_STYLE_INPUT, COORD_Y, text, OK_BUTTON, BACK_BUTTON);
			else
			{
				static strtmp[128];
				format(strtmp, sizeof strtmp, ENTER_COORD_Y"\n"COORDS_NOW" X: %.4f, Y: %.4f, Z: %.4f", IconsInfo[CreatorInfo[playerid][ucClickedIco]][iX], IconsInfo[CreatorInfo[playerid][ucClickedIco]][iY], IconsInfo[CreatorInfo[playerid][ucClickedIco]][iZ]);
				ShowPlayerDialog(playerid, DIALOG_EDIT_ICON_Y, DIALOG_STYLE_INPUT, COORD_Y, strtmp, OK_BUTTON, BACK_BUTTON);
			}
		}
		case DIALOG_EDIT_ICON_Z:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_EDIT_ICON_Z, DIALOG_STYLE_INPUT, COORD_Z, text, OK_BUTTON, BACK_BUTTON);
			else
			{
				static strtmp[128];
				format(strtmp, sizeof strtmp, ENTER_COORD_Z"\n"COORDS_NOW" X: %.4f, Y: %.4f, Z: %.4f", IconsInfo[CreatorInfo[playerid][ucClickedIco]][iX], IconsInfo[CreatorInfo[playerid][ucClickedIco]][iY], IconsInfo[CreatorInfo[playerid][ucClickedIco]][iZ]);
				ShowPlayerDialog(playerid, DIALOG_EDIT_ICON_Z, DIALOG_STYLE_INPUT, COORD_Z, strtmp, OK_BUTTON, BACK_BUTTON);
			}
		}
		case DIALOG_EDIT_ICON_COLOR:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_EDIT_ICON_COLOR, DIALOG_STYLE_INPUT, EDIT_COLOR, text, OK_BUTTON, BACK_BUTTON);
			else
			{
				static strtmp[128];
				format(strtmp, sizeof strtmp, ENTER_MAPICON_COLOR"\n"COLOR_NOW" %d", IconsInfo[CreatorInfo[playerid][ucClickedIco]][iColor]);
				ShowPlayerDialog(playerid, DIALOG_EDIT_ICON_COLOR, DIALOG_STYLE_INPUT, EDIT_COLOR, strtmp, OK_BUTTON, BACK_BUTTON);
			}
		}
		case DIALOG_EDIT_ICON_STYLE:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_EDIT_ICON_STYLE, DIALOG_STYLE_TABLIST_HEADERS, EDIT_STYLE, text, OK_BUTTON, BACK_BUTTON);
			else
			{
				static strtmp[256];
				format(strtmp, sizeof strtmp, MAPICON_STYLE_NOW" %d\n"MAPICON_STYLE_LOCAL" (0)\n"MAPICON_STYLE_GLOBAL" (1)\n"MAPICON_STYLE_LOCAL_CP" (2)\n"MAPICON_STYLE_GLOBAL_CP" (3)", IconsInfo[CreatorInfo[playerid][ucClickedIco]][iStyle]);
				ShowPlayerDialog(playerid, DIALOG_EDIT_ICON_STYLE, DIALOG_STYLE_TABLIST_HEADERS, EDIT_STYLE, strtmp, OK_BUTTON, BACK_BUTTON);
			}
		}
		case DIALOG_EDIT_ZONE:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_EDIT_ZONE, DIALOG_STYLE_LIST, EDIT_GANGZONE, text, OK_BUTTON, BACK_BUTTON);
			else ShowPlayerDialog(playerid, DIALOG_EDIT_ZONE, DIALOG_STYLE_LIST, EDIT_GANGZONE, SELECT_ZONE"\n"TELEPORT_TO_ZONE"\n"TELEPORT_ZONE"\n"COPY_ZONE"\n"DELETE_ZONE"\n"COORD_MINX"\n"COORD_MINY"\n"COORD_MAXX"\n"COORD_MAXY"\n"EDIT_COLOR, OK_BUTTON, BACK_BUTTON);
		}
		case DIALOG_EDIT_ZONE_MINX:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_EDIT_ZONE_MINX, DIALOG_STYLE_INPUT, COORD_MINX, text, OK_BUTTON, BACK_BUTTON);
			else
			{
				static strtmp[128];
				format(strtmp, sizeof strtmp, ENTER_COORD_MINX"\n"COORDS_NOW" min X: %.4f, min Y: %.4f, max X: %.4f, max Y: %.4f", ZonesInfo[CreatorInfo[playerid][ucClickedGzn]][gMinX], ZonesInfo[CreatorInfo[playerid][ucClickedGzn]][gMinY], ZonesInfo[CreatorInfo[playerid][ucClickedGzn]][gMaxX], ZonesInfo[CreatorInfo[playerid][ucClickedGzn]][gMaxY]);
				ShowPlayerDialog(playerid, DIALOG_EDIT_ZONE_MINX, DIALOG_STYLE_INPUT, COORD_MINX, strtmp, OK_BUTTON, BACK_BUTTON);
			}
		}
		case DIALOG_EDIT_ZONE_MINY:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_EDIT_ZONE_MINY, DIALOG_STYLE_INPUT, COORD_MINY, text, OK_BUTTON, BACK_BUTTON);
			else
			{
				static strtmp[128];
				format(strtmp, sizeof strtmp, ENTER_COORD_MINY"\n"COORDS_NOW" min X: %.4f, min Y: %.4f, max X: %.4f, max Y: %.4f", ZonesInfo[CreatorInfo[playerid][ucClickedGzn]][gMinX], ZonesInfo[CreatorInfo[playerid][ucClickedGzn]][gMinY], ZonesInfo[CreatorInfo[playerid][ucClickedGzn]][gMaxX], ZonesInfo[CreatorInfo[playerid][ucClickedGzn]][gMaxY]);
				ShowPlayerDialog(playerid, DIALOG_EDIT_ZONE_MINY, DIALOG_STYLE_INPUT, COORD_MINY, strtmp, OK_BUTTON, BACK_BUTTON);
			}
		}
		case DIALOG_EDIT_ZONE_MAXX:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_EDIT_ZONE_MAXX, DIALOG_STYLE_INPUT, COORD_MAXX, text, OK_BUTTON, BACK_BUTTON);
			else
			{
				static strtmp[128];
				format(strtmp, sizeof strtmp, ENTER_COORD_MAXX"\n"COORDS_NOW" min X: %.4f, min Y: %.4f, max X: %.4f, max Y: %.4f", ZonesInfo[CreatorInfo[playerid][ucClickedGzn]][gMinX], ZonesInfo[CreatorInfo[playerid][ucClickedGzn]][gMinY], ZonesInfo[CreatorInfo[playerid][ucClickedGzn]][gMaxX], ZonesInfo[CreatorInfo[playerid][ucClickedGzn]][gMaxY]);
				ShowPlayerDialog(playerid, DIALOG_EDIT_ZONE_MAXX, DIALOG_STYLE_INPUT, COORD_MAXX, strtmp, OK_BUTTON, BACK_BUTTON);
			}
		}
		case DIALOG_EDIT_ZONE_MAXY:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_EDIT_ZONE_MAXY, DIALOG_STYLE_INPUT, COORD_MAXY, text, OK_BUTTON, BACK_BUTTON);
			else
			{
				static strtmp[128];
				format(strtmp, sizeof strtmp, ENTER_COORD_MAXY"\n"COORDS_NOW" min X: %.4f, min Y: %.4f, max X: %.4f, max Y: %.4f", ZonesInfo[CreatorInfo[playerid][ucClickedGzn]][gMinX], ZonesInfo[CreatorInfo[playerid][ucClickedGzn]][gMinY], ZonesInfo[CreatorInfo[playerid][ucClickedGzn]][gMaxX], ZonesInfo[CreatorInfo[playerid][ucClickedGzn]][gMaxY]);
				ShowPlayerDialog(playerid, DIALOG_EDIT_ZONE_MAXY, DIALOG_STYLE_INPUT, COORD_MAXY, strtmp, OK_BUTTON, BACK_BUTTON);
			}
		}
		case DIALOG_EDIT_ZONE_COLOR:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_EDIT_ZONE_COLOR, DIALOG_STYLE_INPUT, EDIT_COLOR, text, OK_BUTTON, BACK_BUTTON);
			else
			{
				static strtmp[128];
				format(strtmp, sizeof strtmp, ENTER_GANGZONE_COLOR"\n"COLOR_NOW" %d", ZonesInfo[CreatorInfo[playerid][ucClickedGzn]][gColor]);
				ShowPlayerDialog(playerid, DIALOG_EDIT_ZONE_COLOR, DIALOG_STYLE_INPUT, EDIT_COLOR, strtmp, OK_BUTTON, BACK_BUTTON);
			}
		}
		case DIALOG_EDIT_LABEL:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_EDIT_LABEL, DIALOG_STYLE_LIST, EDIT_LABEL, text, OK_BUTTON, BACK_BUTTON);
			else ShowPlayerDialog(playerid, DIALOG_EDIT_LABEL, DIALOG_STYLE_LIST, EDIT_LABEL, SELECT_LABEL"\n"TELEPORT_TO_LABEL"\n"TELEPORT_LABEL"\n"COPY_LABEL"\n"DELETE_LABEL"\n"EDIT_TEXT"\n"EDIT_COLOR"\n"COORD_X"\n"COORD_Y"\n"COORD_Z"\n"LABEL_DD"\n"EDIT_VW"\n"LABEL_LOS, OK_BUTTON, BACK_BUTTON);
		}
		case DIALOG_EDIT_LABEL_TEXT:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_EDIT_LABEL_TEXT, DIALOG_STYLE_INPUT, EDIT_TEXT, text, OK_BUTTON, BACK_BUTTON);
			else
			{
				static strtmp[128 + MAX_LABEL_TEXT_LENGTH];
				format(strtmp, sizeof strtmp, ENTER_TEXT"\n"LABEL_TEXT_NOW" %s", LabelsInfo[CreatorInfo[playerid][ucClickedLab]][lText]);
				ShowPlayerDialog(playerid, DIALOG_EDIT_LABEL_TEXT, DIALOG_STYLE_INPUT, EDIT_TEXT, strtmp, OK_BUTTON, BACK_BUTTON);
			}
		}
		case DIALOG_EDIT_LABEL_COLOR:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_EDIT_LABEL_COLOR, DIALOG_STYLE_INPUT, EDIT_COLOR, text, OK_BUTTON, BACK_BUTTON);
			else
			{
				static strtmp[128];
				format(strtmp, sizeof strtmp, ENTER_LABEL_COLOR"\n"COLOR_NOW" %d", LabelsInfo[CreatorInfo[playerid][ucClickedLab]][lColor]);
				ShowPlayerDialog(playerid, DIALOG_EDIT_LABEL_COLOR, DIALOG_STYLE_INPUT, EDIT_COLOR, strtmp, OK_BUTTON, BACK_BUTTON);
			}
		}
		case DIALOG_EDIT_LABEL_X:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_EDIT_LABEL_X, DIALOG_STYLE_INPUT, COORD_X, text, OK_BUTTON, BACK_BUTTON);
			else
			{
				static strtmp[128];
				format(strtmp, sizeof strtmp, ENTER_COORD_X"\n"COORDS_NOW" X: %.4f, Y: %.4f, Z: %.4f", LabelsInfo[CreatorInfo[playerid][ucClickedLab]][lX], LabelsInfo[CreatorInfo[playerid][ucClickedLab]][lY], LabelsInfo[CreatorInfo[playerid][ucClickedLab]][lZ]);
				ShowPlayerDialog(playerid, DIALOG_EDIT_LABEL_X, DIALOG_STYLE_INPUT, COORD_X, strtmp, OK_BUTTON, BACK_BUTTON);
			}
		}
		case DIALOG_EDIT_LABEL_Y:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_EDIT_LABEL_Y, DIALOG_STYLE_INPUT, COORD_Y, text, OK_BUTTON, BACK_BUTTON);
			else
			{
				static strtmp[128];
				format(strtmp, sizeof strtmp, ENTER_COORD_Y"\n"COORDS_NOW" X: %.4f, Y: %.4f, Z: %.4f", LabelsInfo[CreatorInfo[playerid][ucClickedLab]][lX], LabelsInfo[CreatorInfo[playerid][ucClickedLab]][lY], LabelsInfo[CreatorInfo[playerid][ucClickedLab]][lZ]);
				ShowPlayerDialog(playerid, DIALOG_EDIT_LABEL_Y, DIALOG_STYLE_INPUT, COORD_Y, strtmp, OK_BUTTON, BACK_BUTTON);
			}
		}
		case DIALOG_EDIT_LABEL_Z:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_EDIT_LABEL_Z, DIALOG_STYLE_INPUT, COORD_Z, text, OK_BUTTON, BACK_BUTTON);
			else
			{
				static strtmp[128];
				format(strtmp, sizeof strtmp, ENTER_COORD_Z"\n"COORDS_NOW" X: %.4f, Y: %.4f, Z: %.4f", LabelsInfo[CreatorInfo[playerid][ucClickedLab]][lX], LabelsInfo[CreatorInfo[playerid][ucClickedLab]][lY], LabelsInfo[CreatorInfo[playerid][ucClickedLab]][lZ]);
				ShowPlayerDialog(playerid, DIALOG_EDIT_LABEL_Z, DIALOG_STYLE_INPUT, COORD_Z, strtmp, OK_BUTTON, BACK_BUTTON);
			}
		}
		case DIALOG_EDIT_LABEL_DD:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_EDIT_LABEL_DD, DIALOG_STYLE_INPUT, LABEL_DD, text, OK_BUTTON, BACK_BUTTON);
			else
			{
				static strtmp[128];
				format(strtmp, sizeof strtmp, ENTER_LABEL_DD"\n"LABEL_DD_NOW" %.4f", LabelsInfo[CreatorInfo[playerid][ucClickedLab]][lDrawDist]);
				ShowPlayerDialog(playerid, DIALOG_EDIT_LABEL_DD, DIALOG_STYLE_INPUT, LABEL_DD, strtmp, OK_BUTTON, BACK_BUTTON);
			}
		}
		case DIALOG_EDIT_LABEL_VW:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_EDIT_LABEL_VW, DIALOG_STYLE_INPUT, EDIT_VW, text, OK_BUTTON, BACK_BUTTON);
			else
			{
				static strtmp[128];
				format(strtmp, sizeof strtmp, ENTER_VW_ID"\n"VW_NOW" %d", LabelsInfo[CreatorInfo[playerid][ucClickedLab]][lVirtualWorld]);
				ShowPlayerDialog(playerid, DIALOG_EDIT_LABEL_VW, DIALOG_STYLE_INPUT, EDIT_VW, strtmp, OK_BUTTON, BACK_BUTTON);
			}
		}
		case DIALOG_EDIT_LABEL_LOS:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_EDIT_LABEL_LOS, DIALOG_STYLE_TABLIST_HEADERS, LABEL_LOS, text, OK_BUTTON, BACK_BUTTON);
			else
			{
				static strtmp[128];
				format(strtmp, sizeof strtmp, LABEL_LOS_NOW" %s\n"ENABLE_LABEL_LOS"\n"DISABLE_LABEL_LOS, LabelsInfo[CreatorInfo[playerid][ucClickedLab]][lTestLOS] ? (DISABLED) : (ENABLED));
				ShowPlayerDialog(playerid, DIALOG_EDIT_LABEL_LOS, DIALOG_STYLE_TABLIST_HEADERS, LABEL_LOS, strtmp, OK_BUTTON, BACK_BUTTON);
			}
		}
		case DIALOG_TELEPORT_INTO:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_TELEPORT_INTO, DIALOG_STYLE_LIST, TELEPORT_INTO, text, OK_BUTTON, BACK_BUTTON);
			else ShowPlayerDialog(playerid, DIALOG_TELEPORT_INTO, DIALOG_STYLE_LIST, TELEPORT_INTO, TELEPORT_TO_COORDS"\n"TELEPORT_TO_INT"\n"TELEPORT_TO_VW, OK_BUTTON, BACK_BUTTON);
		}
		case DIALOG_TELEPORT_IN_POS:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_TELEPORT_IN_POS, DIALOG_STYLE_INPUT, TELEPORT_TO_COORDS, text, OK_BUTTON, BACK_BUTTON);
			else
			{
				static strtmp[128];
				new Float:x, Float:y, Float:z;
				GetPlayerPos(playerid, x, y, z);
				format(strtmp, sizeof strtmp, ENTER_COORDS"\n"COORDS_NOW" X: %.4f, Y: %.4f, Z: %.4f", x, y, z);
				ShowPlayerDialog(playerid, DIALOG_TELEPORT_IN_POS, DIALOG_STYLE_INPUT, TELEPORT_TO_COORDS, strtmp, OK_BUTTON, BACK_BUTTON);
			}
		}
		case DIALOG_TELEPORT_IN_INT:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_TELEPORT_IN_INT, DIALOG_STYLE_INPUT, TELEPORT_TO_INT, text, OK_BUTTON, BACK_BUTTON);
			else
			{
				static strtmp[128];
				format(strtmp, sizeof strtmp, ENTER_INTERIOR"\n"INTERIOR_NOW" %d", GetPlayerInterior(playerid));
				ShowPlayerDialog(playerid, DIALOG_TELEPORT_IN_INT, DIALOG_STYLE_INPUT, TELEPORT_TO_INT, strtmp, OK_BUTTON, BACK_BUTTON);
			}
		}
		case DIALOG_TELEPORT_IN_VW:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_TELEPORT_IN_VW, DIALOG_STYLE_INPUT, TELEPORT_TO_VW, text, OK_BUTTON, BACK_BUTTON);
			else
			{
				static strtmp[128];
				format(strtmp, sizeof strtmp, ENTER_VW_ID"\n"VW_NOW" %d", GetPlayerVirtualWorld(playerid));
				ShowPlayerDialog(playerid, DIALOG_TELEPORT_IN_VW, DIALOG_STYLE_INPUT, TELEPORT_TO_VW, strtmp, OK_BUTTON, BACK_BUTTON);
			}
		}
		case DIALOG_SETTINGS:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_SETTINGS, DIALOG_STYLE_LIST, MAP_SETTINGS, text, OK_BUTTON, BACK_BUTTON);
			else ShowPlayerDialog(playerid, DIALOG_SETTINGS, DIALOG_STYLE_LIST, MAP_SETTINGS, EDIT_WEATHER"\n"EDIT_WORLDTIME"\n"EDIT_GRAVITY, OK_BUTTON, BACK_BUTTON);
		}
		case DIALOG_SETTINGS_WEATHER:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_SETTINGS_WEATHER, DIALOG_STYLE_INPUT, EDIT_WEATHER, text, OK_BUTTON, BACK_BUTTON);
			else
			{
				static strtmp[128], strtmp2[8];
				GetServerVarAsString("weather", strtmp2, sizeof strtmp2);
				format(strtmp, sizeof strtmp, ENTER_WEATHER_ID"\n"WEATHER_NOW" %d", strval(strtmp2));
				ShowPlayerDialog(playerid, DIALOG_SETTINGS_WEATHER, DIALOG_STYLE_INPUT, EDIT_WEATHER, strtmp, OK_BUTTON, BACK_BUTTON);
			}
		}
		case DIALOG_SETTINGS_TIME:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_SETTINGS_TIME, DIALOG_STYLE_TABLIST_HEADERS, EDIT_WORLDTIME, text, OK_BUTTON, BACK_BUTTON);
			else
			{
				static strtmp[256], strtmp2[8];
				GetServerVarAsString("worldtime", strtmp2, sizeof strtmp2);
				format(strtmp, sizeof strtmp, WORLDTIME_NOW" %d:00\n0:00\n1:00\n2:00\n3:00\n4:00\n5:00\n6:00\n7:00\n8:00\n9:00\n10:00\n11:00\n12:00\n13:00\n14:00\n15:00\n16:00\n17:00\n18:00\n19:00\n20:00\n21:00\n22:00\n23:00", strval(strtmp2));
				ShowPlayerDialog(playerid, DIALOG_SETTINGS_TIME, DIALOG_STYLE_TABLIST_HEADERS, EDIT_WORLDTIME, strtmp, OK_BUTTON, BACK_BUTTON);
			}
		}
		case DIALOG_SETTINGS_GRAVITY:
		{
			if(text[0]) ShowPlayerDialog(playerid, DIALOG_SETTINGS_GRAVITY, DIALOG_STYLE_INPUT, EDIT_GRAVITY, text, OK_BUTTON, BACK_BUTTON);
			else
			{
				static strtmp[128];
				format(strtmp, sizeof strtmp, ENTER_GRAVITY_VALUE"\n"GRAVITY_NOW" %f", GetGravity());
				ShowPlayerDialog(playerid, DIALOG_SETTINGS_GRAVITY, DIALOG_STYLE_INPUT, EDIT_GRAVITY, strtmp, OK_BUTTON, BACK_BUTTON);
			}
		}
	}
	return 1;
}

SendMessageToCreators(color, const message[])
{
	for(new i = GetPlayerPoolSize(); i != -1; --i)
	{
		if(IsPlayerConnected(i) && CreatorInfo[i][ucCameraMode]) SendClientMessage(i, color, message);
	}
	return 1;
}

GetSelectedObjectNextPos(keys, lr, ud, &Float:posX, &Float:posY, &Float:posZ, &Float:rotX, &Float:rotY, &Float:rotZ)
{
	if(lr == KEY_LEFT)
	{
		if(keys & KEY_WALK)
		{
			if(keys & KEY_FIRE) rotZ -= 1.0;
			else
			{
				posX -= 0.1 * floatsin(-rotZ, degrees);
				posY -= 0.1 * floatcos(-rotZ, degrees);
			}
		}
		else if(keys & KEY_JUMP)
		{
			if(keys & KEY_FIRE) rotZ -= 10.0;
			else
			{
				posX -= 0.8 * floatsin(-rotZ, degrees);
				posY -= 0.8 * floatcos(-rotZ, degrees);
			}
		}
		else if(keys & KEY_FIRE) rotZ -= 5.0;
		else
		{
			posX -= 0.3 * floatsin(-rotZ, degrees);
			posY -= 0.3 * floatcos(-rotZ, degrees);
		}
	}
	else if(lr == KEY_RIGHT)
	{
		if(keys & KEY_WALK)
		{
			if(keys & KEY_FIRE) rotZ += 1.0;
			else
			{
				posX += 0.1 * floatsin(-rotZ, degrees);
				posY += 0.1 * floatcos(-rotZ, degrees);
			}
		}
		else if(keys & KEY_JUMP)
		{
			if(keys & KEY_FIRE) rotZ += 10.0;
			else
			{
				posX += 0.8 * floatsin(-rotZ, degrees);
				posY += 0.8 * floatcos(-rotZ, degrees);
			}
		}
		else if(keys & KEY_FIRE) rotZ += 5.0;
		else
		{
			posX += 0.3 * floatsin(-rotZ, degrees);
			posY += 0.3 * floatcos(-rotZ, degrees);
		}
	}
	else if(ud == KEY_UP)
	{
		if(keys & KEY_WALK && keys & KEY_JUMP)
		{
			if(keys & KEY_FIRE) rotX += 5.0;
			else posZ += 0.3;
		}
		else if(keys & KEY_WALK)
		{
			if(keys & KEY_FIRE) rotY += 1.0;
			else
			{
				posY += 0.1 * floatsin(-rotZ, degrees);
				posX += 0.1 * floatcos(-rotZ, degrees);
			}
		}
		else if(keys & KEY_JUMP)
		{
			if(keys & KEY_FIRE) rotY += 10.0;
			else
			{
				posY += 0.8 * floatsin(-rotZ, degrees);
				posX += 0.8 * floatcos(-rotZ, degrees);
			}
		}
		else if(keys & KEY_FIRE) rotY += 5.0;
		else
		{
			posY += 0.3 * floatsin(-rotZ, degrees);
			posX += 0.3 * floatcos(-rotZ, degrees);
		}
	}
	else if(ud == KEY_DOWN)
	{
		if(keys & KEY_WALK && keys & KEY_JUMP)
		{
			if(keys & KEY_FIRE) rotX -= 5.0;
			else posZ -= 0.3;
		}
		else if(keys & KEY_WALK)
		{
			if(keys & KEY_FIRE) rotY -= 1.0;
			else
			{
				posY -= 0.1 * floatsin(-rotZ, degrees);
				posX -= 0.1 * floatcos(-rotZ, degrees);
			}
		}
		else if(keys & KEY_JUMP)
		{
			if(keys & KEY_FIRE) rotY -= 10.0;
			else
			{
				posY -= 0.8 * floatsin(-rotZ, degrees);
				posX -= 0.8 * floatcos(-rotZ, degrees);
			}
		}
		else if(keys & KEY_FIRE) rotY -= 5.0;
		else
		{
			posY -= 0.3 * floatsin(-rotZ, degrees);
			posX -= 0.3 * floatcos(-rotZ, degrees);
		}
	}
	return 1;
}

GetSelectedVehicleNextPos(keys, lr, ud, &Float:posX, &Float:posY, &Float:posZ, &Float:rotZ)
{
	if(lr == KEY_LEFT)
	{
		if(keys & KEY_WALK)
		{
			if(keys & KEY_FIRE) rotZ -= 1.0;
			else
			{
				posX -= 0.1 * floatsin(-rotZ, degrees);
				posY -= 0.1 * floatcos(-rotZ, degrees);
			}
		}
		else if(keys & KEY_JUMP)
		{
			if(keys & KEY_FIRE) rotZ -= 10.0;
			else
			{
				posX -= 0.8 * floatsin(-rotZ, degrees);
				posY -= 0.8 * floatcos(-rotZ, degrees);
			}
		}
		else if(keys & KEY_FIRE) rotZ -= 5.0;
		else
		{
			posX -= 0.3 * floatsin(-rotZ, degrees);
			posY -= 0.3 * floatcos(-rotZ, degrees);
		}
	}
	else if(lr == KEY_RIGHT)
	{
		if(keys & KEY_WALK)
		{
			if(keys & KEY_FIRE) rotZ += 1.0;
			else
			{
				posX += 0.1 * floatsin(-rotZ, degrees);
				posY += 0.1 * floatcos(-rotZ, degrees);
			}
		}
		else if(keys & KEY_JUMP)
		{
			if(keys & KEY_FIRE) rotZ += 10.0;
			else
			{
				posX += 0.8 * floatsin(-rotZ, degrees);
				posY += 0.8 * floatcos(-rotZ, degrees);
			}
		}
		else if(keys & KEY_FIRE) rotZ += 5.0;
		else
		{
			posX += 0.3 * floatsin(-rotZ, degrees);
			posY += 0.3 * floatcos(-rotZ, degrees);
		}
	}
	else if(ud == KEY_UP)
	{
		if(keys & KEY_WALK && keys & KEY_JUMP) posZ += 0.3;
		else if(keys & KEY_WALK)
		{
			posY += 0.1 * floatsin(-rotZ, degrees);
			posX += 0.1 * floatcos(-rotZ, degrees);
		}
		else if(keys & KEY_JUMP)
		{
			posY += 0.8 * floatsin(-rotZ, degrees);
			posX += 0.8 * floatcos(-rotZ, degrees);
		}
		else
		{
			posY += 0.3 * floatsin(-rotZ, degrees);
			posX += 0.3 * floatcos(-rotZ, degrees);
		}
	}
	else if(ud == KEY_DOWN)
	{
		if(keys & KEY_WALK && keys & KEY_JUMP) posZ -= 0.3;
		else if(keys & KEY_WALK)
		{
			posY -= 0.1 * floatsin(-rotZ, degrees);
			posX -= 0.1 * floatcos(-rotZ, degrees);
		}
		else if(keys & KEY_JUMP)
		{
			posY -= 0.8 * floatsin(-rotZ, degrees);
			posX -= 0.8 * floatcos(-rotZ, degrees);
		}
		else
		{
			posY -= 0.3 * floatsin(-rotZ, degrees);
			posX -= 0.3 * floatcos(-rotZ, degrees);
		}
	}
	return 1;
}

GetSelectedActorNextPos(keys, lr, ud, &Float:posX, &Float:posY, &Float:posZ, &Float:rotZ)
{
	if(lr == KEY_LEFT)
	{
		if(keys & KEY_WALK)
		{
			if(keys & KEY_FIRE) rotZ -= 1.0;
			else
			{
				posX -= 0.1 * floatsin(-rotZ, degrees);
				posY -= 0.1 * floatcos(-rotZ, degrees);
			}
		}
		else if(keys & KEY_JUMP)
		{
			if(keys & KEY_FIRE) rotZ -= 10.0;
			else
			{
				posX -= 0.8 * floatsin(-rotZ, degrees);
				posY -= 0.8 * floatcos(-rotZ, degrees);
			}
		}
		else if(keys & KEY_FIRE) rotZ -= 5.0;
		else
		{
			posX -= 0.3 * floatsin(-rotZ, degrees);
			posY -= 0.3 * floatcos(-rotZ, degrees);
		}
	}
	else if(lr == KEY_RIGHT)
	{
		if(keys & KEY_WALK)
		{
			if(keys & KEY_FIRE) rotZ += 1.0;
			else
			{
				posX += 0.1 * floatsin(-rotZ, degrees);
				posY += 0.1 * floatcos(-rotZ, degrees);
			}
		}
		else if(keys & KEY_JUMP)
		{
			if(keys & KEY_FIRE) rotZ += 10.0;
			else
			{
				posX += 0.8 * floatsin(-rotZ, degrees);
				posY += 0.8 * floatcos(-rotZ, degrees);
			}
		}
		else if(keys & KEY_FIRE) rotZ += 5.0;
		else
		{
			posX += 0.3 * floatsin(-rotZ, degrees);
			posY += 0.3 * floatcos(-rotZ, degrees);
		}
	}
	else if(ud == KEY_UP)
	{
		if(keys & KEY_WALK && keys & KEY_JUMP) posZ += 0.3;
		else if(keys & KEY_WALK)
		{
			posY += 0.1 * floatsin(-rotZ, degrees);
			posX += 0.1 * floatcos(-rotZ, degrees);
		}
		else if(keys & KEY_JUMP)
		{
			posY += 0.8 * floatsin(-rotZ, degrees);
			posX += 0.8 * floatcos(-rotZ, degrees);
		}
		else
		{
			posY += 0.3 * floatsin(-rotZ, degrees);
			posX += 0.3 * floatcos(-rotZ, degrees);
		}
	}
	else if(ud == KEY_DOWN)
	{
		if(keys & KEY_WALK && keys & KEY_JUMP) posZ -= 0.3;
		else if(keys & KEY_WALK)
		{
			posY -= 0.1 * floatsin(-rotZ, degrees);
			posX -= 0.1 * floatcos(-rotZ, degrees);
		}
		else if(keys & KEY_JUMP)
		{
			posY -= 0.8 * floatsin(-rotZ, degrees);
			posX -= 0.8 * floatcos(-rotZ, degrees);
		}
		else
		{
			posY -= 0.3 * floatsin(-rotZ, degrees);
			posX -= 0.3 * floatcos(-rotZ, degrees);
		}
	}
	return 1;
}

GetSelectedPickupNextPos(keys, lr, ud, &Float:posX, &Float:posY, &Float:posZ)
{
	if(lr == KEY_LEFT)
	{
		if(keys & KEY_WALK)
		{
			posX -= 0.1 * 0;
			posY -= 0.1 * 1;
		}
		else if(keys & KEY_JUMP)
		{
			posX -= 0.8 * 0;
			posY -= 0.8 * 1;
		}
		else
		{
			posX -= 0.3 * 0;
			posY -= 0.3 * 1;
		}
	}
	else if(lr == KEY_RIGHT)
	{
		if(keys & KEY_WALK)
		{
			posX += 0.1 * 0;
			posY += 0.1 * 1;
		}
		else if(keys & KEY_JUMP)
		{
			posX += 0.8 * 0;
			posY += 0.8 * 1;
		}
		else
		{
			posX += 0.3 * 0;
			posY += 0.3 * 1;
		}
	}
	else if(ud == KEY_UP)
	{
		if(keys & KEY_WALK && keys & KEY_JUMP) posZ += 0.3;
		else if(keys & KEY_WALK)
		{
			posY += 0.1 * 0;
			posX += 0.1 * 1;
		}
		else if(keys & KEY_JUMP)
		{
			posY += 0.8 * 0;
			posX += 0.8 * 1;
		}
		else
		{
			posY += 0.3 * 0;
			posX += 0.3 * 1;
		}
	}
	else if(ud == KEY_DOWN)
	{
		if(keys & KEY_WALK && keys & KEY_JUMP) posZ -= 0.3;
		else if(keys & KEY_WALK)
		{
			posY -= 0.1 * 0;
			posX -= 0.1 * 1;
		}
		else if(keys & KEY_JUMP)
		{
			posY -= 0.8 * 0;
			posX -= 0.8 * 1;
		}
		else
		{
			posY -= 0.3 * 0;
			posX -= 0.3 * 1;
		}
	}
	return 1;
}

GetSelectedCheckPointNextPos(keys, lr, ud, &Float:posX, &Float:posY, &Float:posZ)
{
	if(lr == KEY_LEFT)
	{
		if(keys & KEY_WALK)
		{
			posX -= 0.1 * 0;
			posY -= 0.1 * 1;
		}
		else if(keys & KEY_JUMP)
		{
			posX -= 0.8 * 0;
			posY -= 0.8 * 1;
		}
		else
		{
			posX -= 0.3 * 0;
			posY -= 0.3 * 1;
		}
	}
	else if(lr == KEY_RIGHT)
	{
		if(keys & KEY_WALK)
		{
			posX += 0.1 * 0;
			posY += 0.1 * 1;
		}
		else if(keys & KEY_JUMP)
		{
			posX += 0.8 * 0;
			posY += 0.8 * 1;
		}
		else
		{
			posX += 0.3 * 0;
			posY += 0.3 * 1;
		}
	}
	else if(ud == KEY_UP)
	{
		if(keys & KEY_WALK && keys & KEY_JUMP) posZ += 0.3;
		else if(keys & KEY_WALK)
		{
			posY += 0.1 * 0;
			posX += 0.1 * 1;
		}
		else if(keys & KEY_JUMP)
		{
			posY += 0.8 * 0;
			posX += 0.8 * 1;
		}
		else
		{
			posY += 0.3 * 0;
			posX += 0.3 * 1;
		}
	}
	else if(ud == KEY_DOWN)
	{
		if(keys & KEY_WALK && keys & KEY_JUMP) posZ -= 0.3;
		else if(keys & KEY_WALK)
		{
			posY -= 0.1 * 0;
			posX -= 0.1 * 1;
		}
		else if(keys & KEY_JUMP)
		{
			posY -= 0.8 * 0;
			posX -= 0.8 * 1;
		}
		else
		{
			posY -= 0.3 * 0;
			posX -= 0.3 * 1;
		}
	}
	return 1;
}

GetSelectedRaceCpNextPos(keys, lr, ud, &Float:posX, &Float:posY, &Float:posZ)
{
	if(lr == KEY_LEFT)
	{
		if(keys & KEY_WALK)
		{
			posX -= 0.1 * 0;
			posY -= 0.1 * 1;
		}
		else if(keys & KEY_JUMP)
		{
			posX -= 0.8 * 0;
			posY -= 0.8 * 1;
		}
		else
		{
			posX -= 0.3 * 0;
			posY -= 0.3 * 1;
		}
	}
	else if(lr == KEY_RIGHT)
	{
		if(keys & KEY_WALK)
		{
			posX += 0.1 * 0;
			posY += 0.1 * 1;
		}
		else if(keys & KEY_JUMP)
		{
			posX += 0.8 * 0;
			posY += 0.8 * 1;
		}
		else
		{
			posX += 0.3 * 0;
			posY += 0.3 * 1;
		}
	}
	else if(ud == KEY_UP)
	{
		if(keys & KEY_WALK && keys & KEY_JUMP) posZ += 0.3;
		else if(keys & KEY_WALK)
		{
			posY += 0.1 * 0;
			posX += 0.1 * 1;
		}
		else if(keys & KEY_JUMP)
		{
			posY += 0.8 * 0;
			posX += 0.8 * 1;
		}
		else
		{
			posY += 0.3 * 0;
			posX += 0.3 * 1;
		}
	}
	else if(ud == KEY_DOWN)
	{
		if(keys & KEY_WALK && keys & KEY_JUMP) posZ -= 0.3;
		else if(keys & KEY_WALK)
		{
			posY -= 0.1 * 0;
			posX -= 0.1 * 1;
		}
		else if(keys & KEY_JUMP)
		{
			posY -= 0.8 * 0;
			posX -= 0.8 * 1;
		}
		else
		{
			posY -= 0.3 * 0;
			posX -= 0.3 * 1;
		}
	}
	return 1;
}

GetSelectedIconNextPos(keys, lr, ud, &Float:posX, &Float:posY, &Float:posZ)
{
	if(lr == KEY_LEFT)
	{
		if(keys & KEY_WALK)
		{
			posX -= 0.1 * 0;
			posY -= 0.1 * 1;
		}
		else if(keys & KEY_JUMP)
		{
			posX -= 0.8 * 0;
			posY -= 0.8 * 1;
		}
		else
		{
			posX -= 0.3 * 0;
			posY -= 0.3 * 1;
		}
	}
	else if(lr == KEY_RIGHT)
	{
		if(keys & KEY_WALK)
		{
			posX += 0.1 * 0;
			posY += 0.1 * 1;
		}
		else if(keys & KEY_JUMP)
		{
			posX += 0.8 * 0;
			posY += 0.8 * 1;
		}
		else
		{
			posX += 0.3 * 0;
			posY += 0.3 * 1;
		}
	}
	else if(ud == KEY_UP)
	{
		if(keys & KEY_WALK && keys & KEY_JUMP) posZ += 0.3;
		else if(keys & KEY_WALK)
		{
			posY += 0.1 * 0;
			posX += 0.1 * 1;
		}
		else if(keys & KEY_JUMP)
		{
			posY += 0.8 * 0;
			posX += 0.8 * 1;
		}
		else
		{
			posY += 0.3 * 0;
			posX += 0.3 * 1;
		}
	}
	else if(ud == KEY_DOWN)
	{
		if(keys & KEY_WALK && keys & KEY_JUMP) posZ -= 0.3;
		else if(keys & KEY_WALK)
		{
			posY -= 0.1 * 0;
			posX -= 0.1 * 1;
		}
		else if(keys & KEY_JUMP)
		{
			posY -= 0.8 * 0;
			posX -= 0.8 * 1;
		}
		else
		{
			posY -= 0.3 * 0;
			posX -= 0.3 * 1;
		}
	}
	return 1;
}

GetSelectedZoneNextPos(keys, lr, ud, &Float:minX, &Float:minY, &Float:maxX, &Float:maxY)
{
	if(lr == KEY_LEFT)
	{
		if(keys & KEY_WALK && keys & KEY_JUMP) minX += 3.0;
		else if(keys & KEY_WALK) minX -= 1.0;
		else if(keys & KEY_JUMP) minX -= 8.0;
		else minX -= 3.0;
	}
	else if(lr == KEY_RIGHT)
	{
		if(keys & KEY_WALK && keys & KEY_JUMP) maxX -= 3.0;
		else if(keys & KEY_WALK) maxX += 1.0;
		else if(keys & KEY_JUMP) maxX += 8.0;
		else maxX += 3.0;
	}
	else if(ud == KEY_UP)
	{
		if(keys & KEY_WALK && keys & KEY_JUMP) maxY -= 3.0;
		else if(keys & KEY_WALK) maxY += 1.0;
		else if(keys & KEY_JUMP) maxY += 8.0;
		else maxY += 3.0;
	}
	else if(ud == KEY_DOWN)
	{
		if(keys & KEY_WALK && keys & KEY_JUMP) minY += 3.0;
		else if(keys & KEY_WALK) minY -= 1.0;
		else if(keys & KEY_JUMP) minY -= 8.0;
		else minY -= 3.0;
	}
	return 1;
}

GetSelectedLabelNextPos(keys, lr, ud, &Float:posX, &Float:posY, &Float:posZ)
{
	if(lr == KEY_LEFT)
	{
		if(keys & KEY_WALK)
		{
			posX -= 0.1 * 0;
			posY -= 0.1 * 1;
		}
		else if(keys & KEY_JUMP)
		{
			posX -= 0.8 * 0;
			posY -= 0.8 * 1;
		}
		else
		{
			posX -= 0.3 * 0;
			posY -= 0.3 * 1;
		}
	}
	else if(lr == KEY_RIGHT)
	{
		if(keys & KEY_WALK)
		{
			posX += 0.1 * 0;
			posY += 0.1 * 1;
		}
		else if(keys & KEY_JUMP)
		{
			posX += 0.8 * 0;
			posY += 0.8 * 1;
		}
		else
		{
			posX += 0.3 * 0;
			posY += 0.3 * 1;
		}
	}
	else if(ud == KEY_UP)
	{
		if(keys & KEY_WALK && keys & KEY_JUMP) posZ += 0.3;
		else if(keys & KEY_WALK)
		{
			posY += 0.1 * 0;
			posX += 0.1 * 1;
		}
		else if(keys & KEY_JUMP)
		{
			posY += 0.8 * 0;
			posX += 0.8 * 1;
		}
		else
		{
			posY += 0.3 * 0;
			posX += 0.3 * 1;
		}
	}
	else if(ud == KEY_DOWN)
	{
		if(keys & KEY_WALK && keys & KEY_JUMP) posZ -= 0.3;
		else if(keys & KEY_WALK)
		{
			posY -= 0.1 * 0;
			posX -= 0.1 * 1;
		}
		else if(keys & KEY_JUMP)
		{
			posY -= 0.8 * 0;
			posX -= 0.8 * 1;
		}
		else
		{
			posY -= 0.3 * 0;
			posX -= 0.3 * 1;
		}
	}
	return 1;
}

GetMoveDirectionFromKeys(ud, lr)
{
	if(lr < 0)
	{
		if(ud < 0) return 5;
		else if(ud > 0) return 7;
		else return 3;
	}
	else if(lr > 0)
	{
		if(ud < 0) return 6;
		else if(ud > 0) return 8;
		else return 4;
	}
	else if(ud < 0) return 1;
	else if(ud > 0) return 2;
	return 0;
}

MoveCamera(playerid, keys, Float:FVX, Float:FVY, Float:FVZ, Float:CPX, Float:CPY, Float:CPZ)
{
	new Float:speed;
	GetPlayerCameraFrontVector(playerid, FVX, FVY, FVZ);
	GetPlayerCameraPos(playerid, CPX, CPY, CPZ);
	switch(keys)
	{
		case KEY_WALK:
		{
			if(CreatorInfo[playerid][ucAccelMul] <= 0.5) CreatorInfo[playerid][ucAccelMul] += 0.01;
			speed = 50.0 * CreatorInfo[playerid][ucAccelMul];
		}
		case KEY_JUMP:
		{
			if(CreatorInfo[playerid][ucAccelMul] <= 1.5) CreatorInfo[playerid][ucAccelMul] += 0.15;
			speed = 150.0 * CreatorInfo[playerid][ucAccelMul];
		}
		default:
		{
			if(CreatorInfo[playerid][ucAccelMul] <= 1.0) CreatorInfo[playerid][ucAccelMul] += 0.05;
			speed = 100.0 * CreatorInfo[playerid][ucAccelMul];
		}
	}
	new Float:X, Float:Y, Float:Z;
	GetCameraNextPosition(CreatorInfo[playerid][ucMode], CPX, CPY, CPZ, FVX, FVY, FVZ, X, Y, Z);
	MovePlayerObject(playerid, CreatorInfo[playerid][ucFlyObject], X, Y, Z, speed);
	CreatorInfo[playerid][ucLastMove] = GetTickCount();
	return 1;
}

GetCameraNextPosition(move_mode, Float:CPX, Float:CPY, Float:CPZ, Float:FVX, Float:FVY, Float:FVZ, &Float:X, &Float:Y, &Float:Z)
{
	FVX *= 8000.0;
	FVY *= 8000.0;
	FVZ *= 8000.0;
	switch(move_mode)
	{
		case 1:
		{
			X = CPX + FVX;
			Y = CPY + FVY;
			Z = CPZ + FVZ;
		}
		case 2:
		{
			X = CPX - FVX;
			Y = CPY - FVY;
			Z = CPZ - FVZ;
		}
		case 3:
		{
			X = CPX - FVY;
			Y = CPY + FVX;
			Z = CPZ;
		}
		case 4:
		{
			X = CPX + FVY;
			Y = CPY - FVX;
			Z = CPZ;
		}
		case 7:
		{
			X = CPX + (-FVX - FVY);
			Y = CPY + (-FVY + FVX);
		 	Z = CPZ - FVZ;
		}
		case 8:
		{
			X = CPX + (-FVX + FVY);
			Y = CPY + (-FVY - FVX);
		 	Z = CPZ - FVZ;
		}
		case 5:
		{
			X = CPX + (FVX - FVY);
			Y = CPY + (FVY + FVX);
			Z = CPZ + FVZ;
		}
		case 6:
		{
			X = CPX + (FVX + FVY);
			Y = CPY + (FVY - FVX);
			Z = CPZ + FVZ;
		}
	}
	return 1;
}

FlyMode(playerid)
{
	new Float:X, Float:Y, Float:Z;
	if(!IsPlayerInAnyVehicle(playerid)) GetPlayerPos(playerid, X, Y, Z);
	else
	{
		GetVehiclePos(GetPlayerVehicleID(playerid), X, Y, Z);
		SetPlayerPos(playerid, X, Y, Z);
	}
	CreatorInfo[playerid][ucFlyObject] = CreatePlayerObject(playerid, 19300, X, Y, Z, 0.0, 0.0, 0.0);
	TogglePlayerSpectating(playerid, 1);
	AttachCameraToPlayerObject(playerid, CreatorInfo[playerid][ucFlyObject]);
	static strtmp[145], pname[MAX_PLAYER_NAME];
	GetPlayerName(playerid, pname, sizeof pname);
	format(strtmp, sizeof strtmp, EDIT_LON_IN_MSG, pname);
	SendMessageToCreators(DEFAULT_COLOR, strtmp);
	CreatorInfo[playerid][ucCameraMode] = true;
	TextDrawShowForPlayer(playerid, AimPoint);
	return 1;
}

FlyModeStopMovie(playerid)
{
	StopPlayerObject(playerid, CreatorInfo[playerid][ucFlyObject]);
	CreatorInfo[playerid][ucAccelMul] = 0.0;
	CreatorInfo[playerid][ucMode] = 0;
	return 1;
}

CancelFlyMode(playerid)
{
	GetPlayerFacingAngle(playerid, CreatorInfo[playerid][ucOldAngle]);
	GetPlayerPos(playerid, CreatorInfo[playerid][ucOldPos][0], CreatorInfo[playerid][ucOldPos][1], CreatorInfo[playerid][ucOldPos][2]);
	PlayerTextDrawHide(playerid, CreatorInfo[playerid][ucHoldInfo]);
	DestroyPlayerObject(playerid, CreatorInfo[playerid][ucFlyObject]);
	TogglePlayerSpectating(playerid, 0);
	CreatorInfo[playerid][ucSelectedObj] = 65535;
	CreatorInfo[playerid][ucSelectedVeh] = 65535;
	CreatorInfo[playerid][ucSelectedAct] = 65535;
	CreatorInfo[playerid][ucSelectedPick] = 65535;
	CreatorInfo[playerid][ucSelectedCp] = 65535;
	CreatorInfo[playerid][ucSelectedRcp] = 65535;
	CreatorInfo[playerid][ucSelectedIco] = 65535;
	CreatorInfo[playerid][ucSelectedGzn] = 65535;
	CreatorInfo[playerid][ucSelectedLab] = 65535;
	CreatorInfo[playerid][ucHoldingObj] = 65535;
	CreatorInfo[playerid][ucHoldingVeh] = 65535;
	CreatorInfo[playerid][ucHoldingAct] = 65535;
	CreatorInfo[playerid][ucHoldingPick] = 65535;
	CreatorInfo[playerid][ucHoldingCp] = 65535;
	CreatorInfo[playerid][ucHoldingRcp] = 65535;
	CreatorInfo[playerid][ucHoldingLab] = 65535;
	CreatorInfo[playerid][ucCameraMode] = false;
	CreatorInfo[playerid][ucCopyDefObj] = false;
	CreatorInfo[playerid][ucFlyObject] = 0;
	static strtmp[145], pname[MAX_PLAYER_NAME];
	GetPlayerName(playerid, pname, sizeof pname);
	format(strtmp, sizeof strtmp, EDIT_LOG_OUT_MSG, pname);
	SendMessageToCreators(DEFAULT_COLOR, strtmp);
	TextDrawHideForPlayer(playerid, AimPoint);
	return 1;
}

IsEmptyMap()
{
	new i;
	for(i = sizeof(ObjectsInfo) - 1; i != -1; --i)
	{
		if(ObjectsInfo[i][oCreated]) return 0;
	}
	for(i = sizeof(VehiclesInfo) - 1; i != -1; --i)
	{
		if(VehiclesInfo[i][vCreated]) return 0;
	}
	for(i = sizeof(ActorsInfo) - 1; i != -1; --i)
	{
		if(ActorsInfo[i][aCreated]) return 0;
	}
	for(i = sizeof(PickupsInfo) - 1; i != -1; --i)
	{
		if(PickupsInfo[i][pCreated]) return 0;
	}
	if(CheckpointInfo[cpCreated]) return 0;
	if(RaceCpInfo[rcpCreated]) return 0;
	for(i = sizeof(IconsInfo) - 1; i != -1; --i)
	{
		if(IconsInfo[i][iCreated]) return 0;
	}
	for(i = sizeof(ZonesInfo) - 1; i != -1; --i)
	{
		if(ZonesInfo[i][gCreated]) return 0;
	}
	for(i = sizeof(LabelsInfo) - 1; i != -1; --i)
	{
		if(LabelsInfo[i][lCreated]) return 0;
	}
	return 1;
}

ClearMap()
{
	new i;
	for(i = sizeof(ObjectsInfo) - 1; i != -1; --i)
	{
		if(ObjectsInfo[i][oCreated]) DestroyObject(i);
	}
	for(i = sizeof(VehiclesInfo) - 1; i != -1; --i)
	{
		if(VehiclesInfo[i][vCreated]) DestroyVehicle(i);
	}
	for(i = sizeof(ActorsInfo) - 1; i != -1; --i)
	{
		if(ActorsInfo[i][aCreated]) DestroyActor(i);
	}
	for(i = sizeof(PickupsInfo) - 1; i != -1; --i)
	{
		if(PickupsInfo[i][pCreated]) DestroyPickup(i);
	}
	if(CheckpointInfo[cpCreated]) DisableCheckpoint();
	if(RaceCpInfo[rcpCreated]) DisableRaceCheckpoint();
	for(i = sizeof(IconsInfo) - 1; i != -1; --i)
	{
		if(IconsInfo[i][iCreated]) RemoveMapIcon(i);
	}
	for(i = sizeof(ZonesInfo) - 1; i != -1; --i)
	{
		if(ZonesInfo[i][gCreated]) GangZoneDestroy(i);
	}
	for(i = sizeof(LabelsInfo) - 1; i != -1; --i)
	{
		if(LabelsInfo[i][lCreated]) Delete3DTextLabel(i);
	}
	MapName = "uc_blank";
	return 1;
}

SaveCreatorMap(const filename[])
{
	new File:pfile;
	static strtmp[256];
	strtmp[0] = EOS;
	if((pfile = fopen("ucmaps.lst")))
	{
		new bool:t;
		static strtmp2[MAX_MAPNAME_LENGTH];
		strcpy(strtmp2, filename, sizeof strtmp2);
		strcat(strtmp2, "\r\n");
		while(fread(pfile, strtmp))
		{
			if(!strcmp(strtmp, strtmp2, true))
			{
				t = true;
				break;
			}
		}
		if(!t) fwriteASCII(pfile, strtmp2);
		fclose(pfile);
	}
	if(fexist(filename)) fremove(filename);
	if((pfile = fopen(filename)))
	{
		new i, j, bool:anycreated, bool:withtxd;
		for(i = sizeof(ObjectsInfo) - 1; i != -1; --i)
		{
			if(ObjectsInfo[i][oCreated])
			{
				if(!anycreated) fwrite(pfile, "//Objects\r\n");
				anycreated = true;
				if(ObjectsInfo[i][oTextIndex] != -1)
				{
					fwrite(pfile, "new txdobj;\r\n");
					break;
				}
				for(j = MAX_TEXTURES_PER_OBJECT - 1; j != -1; --j)
				{
					if(ObjectsInfo[i][oTextureid][j] || ObjectsInfo[i][oMaterialColor][j])
					{
						fwrite(pfile, "new txdobj;\r\n");
						goto check_have_done;
					}
				}
			}
		}
		check_have_done:
		for(i = 0; i < sizeof ObjectsInfo; ++i)
		{
			if(ObjectsInfo[i][oCreated])
			{
				withtxd = false;
				GetObjectPos(i, ObjectsInfo[i][oX], ObjectsInfo[i][oY], ObjectsInfo[i][oZ]);
				GetObjectRot(i, ObjectsInfo[i][oRotX], ObjectsInfo[i][oRotY], ObjectsInfo[i][oRotZ]);
				if(ObjectsInfo[i][oTextIndex] != -1) withtxd = true;
				else
				{
					for(j = MAX_TEXTURES_PER_OBJECT - 1; j != -1; --j)
					{
						if(ObjectsInfo[i][oTextureid][j] || ObjectsInfo[i][oMaterialColor][j])
						{
							withtxd = true;
							break;
						}
					}
				}
				if(withtxd)
				{
					format(strtmp, sizeof strtmp, "txdobj = CreateObject(%d, %.4f, %.4f, %.4f, %.4f, %.4f, %.4f);\r\n",
					ObjectsInfo[i][oModelid], ObjectsInfo[i][oX], ObjectsInfo[i][oY], ObjectsInfo[i][oZ],
					ObjectsInfo[i][oRotX], ObjectsInfo[i][oRotY], ObjectsInfo[i][oRotZ]);
					fwrite(pfile, strtmp);
					if(ObjectsInfo[i][oTextIndex] != -1)
					{
						format(strtmp, sizeof strtmp, "SetObjectMaterialText(txdobj, \"%s\", %d, %d, \"%s\", %d, %d, %d, %d, %d);\r\n",
						ObjectsInfo[i][oText], ObjectsInfo[i][oTextIndex], ObjectsInfo[i][oTextSize], ObjectsInfo[i][oFont], ObjectsInfo[i][oFontSize],
						ObjectsInfo[i][oBold], ObjectsInfo[i][oFontColor], ObjectsInfo[i][oBackColor], ObjectsInfo[i][oTextAlignment]);
						fwriteASCII(pfile, strtmp);
					}
					for(j = 0; j < MAX_TEXTURES_PER_OBJECT; j++)
					{
						if(ObjectsInfo[i][oTextureid][j] || ObjectsInfo[i][oMaterialColor][j])
						{
							format(strtmp, sizeof strtmp, "SetObjectMaterial(txdobj, %d, %d, \"%s\", \"%s\", %d);\r\n",
							j, TexturesArray[ObjectsInfo[i][oTextureid][j]][tModel], TexturesArray[ObjectsInfo[i][oTextureid][j]][tTXDName],
							TexturesArray[ObjectsInfo[i][oTextureid][j]][tTextureName], ObjectsInfo[i][oMaterialColor][j]);
							fwrite(pfile, strtmp);
						}
					}
				}
				else
				{
					format(strtmp, sizeof strtmp, "CreateObject(%d, %.4f, %.4f, %.4f, %.4f, %.4f, %.4f);\r\n",
					ObjectsInfo[i][oModelid], ObjectsInfo[i][oX], ObjectsInfo[i][oY], ObjectsInfo[i][oZ],
					ObjectsInfo[i][oRotX], ObjectsInfo[i][oRotY], ObjectsInfo[i][oRotZ]);
					fwrite(pfile, strtmp);
				}
			}
		}
		for(i = sizeof(VehiclesInfo) - 1; i != -1; --i)
		{
			if(VehiclesInfo[i][vCreated])
			{
				if(anycreated) fwrite(pfile, "\r\n//Vehicles\r\n");
				else fwrite(pfile, "//Vehicles\r\n");
				anycreated = true;
				break;
			}
		}
		for(i = 0; i < sizeof VehiclesInfo; ++i)
		{
			if(VehiclesInfo[i][vCreated])
			{
				GetVehicleZAngle(i, VehiclesInfo[i][vRotZ]);
				GetVehiclePos(i, VehiclesInfo[i][vX], VehiclesInfo[i][vY], VehiclesInfo[i][vZ]);
				format(strtmp, sizeof strtmp, "CreateVehicle(%d, %.4f, %.4f, %.4f, %.4f, %d, %d, %d);\r\n",
				VehiclesInfo[i][vModelid], VehiclesInfo[i][vX], VehiclesInfo[i][vY], VehiclesInfo[i][vZ],
				VehiclesInfo[i][vRotZ], VehiclesInfo[i][vColor1], VehiclesInfo[i][vColor2], VehiclesInfo[i][vRespawnDelay]);
				fwrite(pfile, strtmp);
			}
		}
		for(i = sizeof(ActorsInfo) - 1; i != -1; --i)
		{
			if(ActorsInfo[i][aCreated])
			{
				if(anycreated) fwrite(pfile, "\r\n//Actors\r\n");
				else fwrite(pfile, "//Actors\r\n");
				anycreated = true;
				break;
			}
		}
		for(i = 0; i < sizeof ActorsInfo; ++i)
		{
			if(ActorsInfo[i][aCreated])
			{
				GetActorFacingAngle(i, ActorsInfo[i][aRotZ]);
				GetActorPos(i, ActorsInfo[i][aX], ActorsInfo[i][aY], ActorsInfo[i][aZ]);
				format(strtmp, sizeof strtmp, "CreateActor(%d, %.4f, %.4f, %.4f, %.4f);\r\n",
				ActorsInfo[i][aModelid], ActorsInfo[i][aX], ActorsInfo[i][aY], ActorsInfo[i][aZ], ActorsInfo[i][aRotZ]);
				fwrite(pfile, strtmp);
			}
		}
		for(i = sizeof(PickupsInfo) - 1; i != -1; --i)
		{
			if(PickupsInfo[i][pCreated])
			{
				if(anycreated) fwrite(pfile, "\r\n//Pickups\r\n");
				else fwrite(pfile, "//Pickups\r\n");
				anycreated = true;
				break;
			}
		}
		for(i = 0; i < sizeof PickupsInfo; ++i)
		{
			if(PickupsInfo[i][pCreated])
			{
				GetObjectPos(PickupsInfo[i][pSilentObj], PickupsInfo[i][pX], PickupsInfo[i][pY], PickupsInfo[i][pZ]);
				format(strtmp, sizeof strtmp, "CreatePickup(%d, %d, %.4f, %.4f, %.4f, %d);\r\n", PickupsInfo[i][pModelid],
				PickupsInfo[i][pType], PickupsInfo[i][pX], PickupsInfo[i][pY], PickupsInfo[i][pZ], PickupsInfo[i][pVirtualWorld]);
				fwrite(pfile, strtmp);
			}
		}
		if(CheckpointInfo[cpCreated])
		{
			if(anycreated) fwrite(pfile, "\r\n//Checkpoints\r\n");
			else fwrite(pfile, "//Checkpoints\r\n");
			anycreated = true;
			GetObjectPos(CheckpointInfo[cpSilentObj], CheckpointInfo[cpX], CheckpointInfo[cpY], CheckpointInfo[cpZ]);
			format(strtmp, sizeof strtmp, "SetPlayerCheckpoint(playerid, %.4f, %.4f, %.4f, %.1f);\r\n",
			CheckpointInfo[cpX], CheckpointInfo[cpY], CheckpointInfo[cpZ], CheckpointInfo[cpSize]);
			fwrite(pfile, strtmp);
		}
		if(RaceCpInfo[rcpCreated])
		{
			if(anycreated) fwrite(pfile, "\r\n//Race checkpoints\r\n");
			else fwrite(pfile, "//Race checkpoints\r\n");
			anycreated = true;
			GetObjectPos(RaceCpInfo[rcpSilentObj], RaceCpInfo[rcpX], RaceCpInfo[rcpY], RaceCpInfo[rcpZ]);
			format(strtmp, sizeof strtmp, "SetPlayerRaceCheckpoint(playerid, %d, %.4f, %.4f, %.4f, %.4f, %.4f, %.4f, %.1f);\r\n",
			RaceCpInfo[rcpType], RaceCpInfo[rcpX], RaceCpInfo[rcpY], RaceCpInfo[rcpZ], RaceCpInfo[rcpNextX], RaceCpInfo[rcpNextY], RaceCpInfo[rcpNextZ], RaceCpInfo[rcpSize]);
			fwrite(pfile, strtmp);
		}
		for(i = sizeof(IconsInfo) - 1; i != -1; --i)
		{
			if(IconsInfo[i][iCreated])
			{
				if(anycreated) fwrite(pfile, "\r\n//Map icons\r\n");
				else fwrite(pfile, "//Map icons\r\n");
				anycreated = true;
				break;
			}
		}
		for(i = 0; i < sizeof IconsInfo; ++i)
		{
			if(IconsInfo[i][iCreated])
			{
				format(strtmp, sizeof strtmp, "SetPlayerMapIcon(playerid, %d, %.4f, %.4f, %.4f, %d, %d, %d);\r\n", i, IconsInfo[i][iX],
				IconsInfo[i][iY], IconsInfo[i][iZ], IconsInfo[i][iType], IconsInfo[i][iColor], IconsInfo[i][iStyle]);
				fwrite(pfile, strtmp);
			}
		}
		for(i = sizeof(ZonesInfo) - 1; i != -1; --i)
		{
			if(ZonesInfo[i][gCreated])
			{
				if(anycreated) fwrite(pfile, "\r\n//Gang zones\r\n");
				else fwrite(pfile, "//Gang zones\r\n");
				fwrite(pfile, "new gzone;\r\n");
				anycreated = true;
				break;
			}
		}
		for(i = 0; i < sizeof ZonesInfo; ++i)
		{
			if(ZonesInfo[i][gCreated])
			{
				format(strtmp, sizeof strtmp, "gzone = GangZoneCreate(%.4f, %.4f, %.4f, %.4f);\r\n",
				ZonesInfo[i][gMinX], ZonesInfo[i][gMinY], ZonesInfo[i][gMaxX], ZonesInfo[i][gMaxY]);
				fwrite(pfile, strtmp);
				format(strtmp, sizeof strtmp, "GangZoneShowForAll(gzone, %d);\r\n", ZonesInfo[i][gColor]);
				fwrite(pfile, strtmp);
			}
		}
		for(i = sizeof(LabelsInfo) - 1; i != -1; --i)
		{
			if(LabelsInfo[i][lCreated])
			{
				if(anycreated) fwrite(pfile, "\r\n//3D text labels\r\n");
				else fwrite(pfile, "//3D text labels\r\n");
				anycreated = true;
				break;
			}
		}
		for(i = 0; i < sizeof LabelsInfo; ++i)
		{
			if(LabelsInfo[i][lCreated])
			{
				GetObjectPos(LabelsInfo[i][lSilentObj], LabelsInfo[i][lX], LabelsInfo[i][lY], LabelsInfo[i][lZ]);
				format(strtmp, sizeof strtmp, "Create3DTextLabel(\"%s\", %d, %.4f, %.4f, %.4f, %.4f, %d, %d);\r\n", LabelsInfo[i][lText],
				LabelsInfo[i][lColor], LabelsInfo[i][lX], LabelsInfo[i][lY], LabelsInfo[i][lZ], LabelsInfo[i][lDrawDist], LabelsInfo[i][lVirtualWorld], LabelsInfo[i][lTestLOS]);
				fwriteASCII(pfile, strtmp);
			}
		}
		fclose(pfile);
		return 1;
	}
	return 0;
}

LoadCreatorMap(const filename[])
{
	if(fexist(filename))
	{
		new File:pfile;
		if((pfile = fopen(filename)))
		{
			ClearMap();
			static strtmp[256];
			strtmp[0] = EOS;
			new
				found[10][64], i, pos, pos2,
				oc, vc, ac, pc, lc, gc, cc, rcc, ic;
			while(fread(pfile, strtmp))
			{
				if((i = strfind(strtmp, "CreateObject(", true)) != -1 && oc < MAX_OBJECTS)
				{
					strdel(strtmp, 0, i + 13);
					split(strtmp, found, ',', sizeof found, sizeof found[]);
					oc = CreateObject(strval(found[0]), floatstr(found[1]), floatstr(found[2]), floatstr(found[3]), floatstr(found[4]), floatstr(found[5]), floatstr(found[6]));
					#if defined CREATOR_DEBUG
						printf("CreateObject(%d, %0.4f, %0.4f, %0.4f, %0.4f, %0.4f, %0.4f);", strval(found[0]), floatstr(found[1]), floatstr(found[2]), floatstr(found[3]), floatstr(found[4]), floatstr(found[5]), floatstr(found[6]));
					#endif
					if(oc == INVALID_OBJECT_ID) oc = MAX_OBJECTS;
				}
				else if((i = strfind(strtmp, "CreateDynamicObject(", true)) != -1 && oc < MAX_OBJECTS)
				{
					strdel(strtmp, 0, i + 20);
					split(strtmp, found, ',', sizeof found, sizeof found[]);
					oc = CreateObject(strval(found[0]), floatstr(found[1]), floatstr(found[2]), floatstr(found[3]), floatstr(found[4]), floatstr(found[5]), floatstr(found[6]));
					#if defined CREATOR_DEBUG
						printf("CreateObject(%d, %0.4f, %0.4f, %0.4f, %0.4f, %0.4f, %0.4f);", strval(found[0]), floatstr(found[1]), floatstr(found[2]), floatstr(found[3]), floatstr(found[4]), floatstr(found[5]), floatstr(found[6]));
					#endif
					if(oc == INVALID_OBJECT_ID) oc = MAX_OBJECTS;
				}
				else if((i = strfind(strtmp, "CreateDynamicObjectEx(", true)) != -1 && oc < MAX_OBJECTS)
				{
					strdel(strtmp, 0, i + 22);
					split(strtmp, found, ',', sizeof found, sizeof found[]);
					oc = CreateObject(strval(found[0]), floatstr(found[1]), floatstr(found[2]), floatstr(found[3]), floatstr(found[4]), floatstr(found[5]), floatstr(found[6]));
					#if defined CREATOR_DEBUG
						printf("CreateObject(%d, %0.4f, %0.4f, %0.4f, %0.4f, %0.4f, %0.4f);", strval(found[0]), floatstr(found[1]), floatstr(found[2]), floatstr(found[3]), floatstr(found[4]), floatstr(found[5]), floatstr(found[6]));
					#endif
					if(oc == INVALID_OBJECT_ID) oc = MAX_OBJECTS;
				}
				else if((i = strfind(strtmp, "SetObjectMaterial(", true)) != -1 && 0 < oc < MAX_OBJECTS)
				{
					strdel(strtmp, 0, i + 18);
					split(strtmp, found, ',', sizeof found, sizeof found[]);
					if((pos = strfindchar(found[3], '\"')) != -1) strdel(found[3], 0, pos + 1);
					if((pos = strfindchar(found[3], '\"')) != -1) strdel(found[3], pos, strlen(found[3]));
					if((pos = strfindchar(found[4], '\"')) != -1) strdel(found[4], 0, pos + 1);
					if((pos = strfindchar(found[4], '\"')) != -1) strdel(found[4], pos, strlen(found[4]));
					while((pos = strfindchar(found[5], ' ')) != -1) strdel(found[5], pos, pos + 1);
					if(IsHex(found[5])) pos = HexToInt(found[5]);
					else pos = strval(found[5]);
					SetObjectMaterial(oc, strval(found[1]), strval(found[2]), found[3], found[4], pos);
					#if defined CREATOR_DEBUG
						printf("SetObjectMaterial(%d, %d, %d, \"%s\", \"%s\", %d);", oc, strval(found[1]), strval(found[2]), found[3], found[4], pos);
					#endif
				}
				else if((i = strfind(strtmp, "SetDynamicObjectMaterial(", true)) != -1 && 0 < oc < MAX_OBJECTS)
				{
					strdel(strtmp, 0, i + 25);
					split(strtmp, found, ',', sizeof found, sizeof found[]);
					if((pos = strfindchar(found[3], '\"')) != -1) strdel(found[3], 0, pos + 1);
					if((pos = strfindchar(found[3], '\"')) != -1) strdel(found[3], pos, strlen(found[3]));
					if((pos = strfindchar(found[4], '\"')) != -1) strdel(found[4], 0, pos + 1);
					if((pos = strfindchar(found[4], '\"')) != -1) strdel(found[4], pos, strlen(found[4]));
					while((pos = strfindchar(found[5], ' ')) != -1) strdel(found[5], pos, pos + 1);
					if(IsHex(found[5])) pos = HexToInt(found[5]);
					else pos = strval(found[5]);
					SetObjectMaterial(oc, strval(found[1]), strval(found[2]), found[3], found[4], pos);
					#if defined CREATOR_DEBUG
						printf("SetObjectMaterial(%d, %d, %d, \"%s\", \"%s\", %d);", oc, strval(found[1]), strval(found[2]), found[3], found[4], pos);
					#endif
				}
				else if((i = strfind(strtmp, "SetObjectMaterialText(", true)) != -1 && 0 < oc < MAX_OBJECTS)
				{
					strdel(strtmp, 0, i + 22);
					split(strtmp, found, ',', sizeof found, sizeof found[]);
					if((pos = strfindchar(found[1], '\"')) != -1) strdel(found[1], 0, pos + 1);
					if((pos = strfindchar(found[1], '\"')) != -1) strdel(found[1], pos, strlen(found[1]));
					if((pos = strfindchar(found[4], '\"')) != -1) strdel(found[4], 0, pos + 1);
					if((pos = strfindchar(found[4], '\"')) != -1) strdel(found[4], pos, strlen(found[4]));
					while((pos = strfindchar(found[7], ' ')) != -1) strdel(found[7], pos, pos + 1);
					while((pos = strfindchar(found[8], ' ')) != -1) strdel(found[8], pos, pos + 1);
					if(!found[4][0] || strfindchar(found[4], '_') != -1) found[4] = "Arial";
					if(!found[3][0] || strfindchar(found[3], '_') != -1) found[3][0] = 90;
					else found[3][0] = strval(found[3]);
					if(!found[5][0] || strfindchar(found[5], '_') != -1) found[5][0] = 24;
					else found[5][0] = strval(found[5]);
					if(!found[6][0] || strfindchar(found[6], '_') != -1) found[6][0] = 1;
					else found[6][0] = strval(found[6]);
					if(!found[7][0] || strfindchar(found[7], '_') != -1) pos = -1;
					else if(IsHex(found[7])) pos = HexToInt(found[7]);
					else pos = strval(found[7]);
					if(IsHex(found[8])) pos2 = HexToInt(found[8]);
					else pos2 = strval(found[8]);
					SetObjectMaterialText(oc, found[1], strval(found[2]), found[3][0], found[4], found[5][0], found[6][0], pos, pos2, strval(found[9]));
					#if defined CREATOR_DEBUG
						printf("SetObjectMaterialText(%d, \"%s\", %d, %d, \"%s\", %d, %d, %d, %d, %d);", oc, found[1], strval(found[2]), found[3][0], found[4], found[5][0], found[6][0], pos, pos2, strval(found[9]));
					#endif
				}
				else if((i = strfind(strtmp, "SetDynamicObjectMaterialText(", true)) != -1 && 0 < oc < MAX_OBJECTS)
				{
					strdel(strtmp, 0, i + 29);
					split(strtmp, found, ',', sizeof found, sizeof found[]);
					if((pos = strfindchar(found[2], '\"')) != -1) strdel(found[2], 0, pos + 1);
					if((pos = strfindchar(found[2], '\"')) != -1) strdel(found[2], pos, strlen(found[2]));
					if((pos = strfindchar(found[4], '\"')) != -1) strdel(found[4], 0, pos + 1);
					if((pos = strfindchar(found[4], '\"')) != -1) strdel(found[4], pos, strlen(found[4]));
					while((pos = strfindchar(found[7], ' ')) != -1) strdel(found[7], pos, pos + 1);
					while((pos = strfindchar(found[8], ' ')) != -1) strdel(found[8], pos, pos + 1);
					if(!found[4][0] || strfindchar(found[4], '_') != -1) found[4] = "Arial";
					if(!found[3][0] || strfindchar(found[3], '_') != -1) found[3][0] = 90;
					else found[3][0] = strval(found[3]);
					if(!found[5][0] || strfindchar(found[5], '_') != -1) found[5][0] = 24;
					else found[5][0] = strval(found[5]);
					if(!found[6][0] || strfindchar(found[6], '_') != -1) found[6][0] = 1;
					else found[6][0] = strval(found[6]);
					if(!found[7][0] || strfindchar(found[7], '_') != -1) pos = -1;
					else if(IsHex(found[7])) pos = HexToInt(found[7]);
					else pos = strval(found[7]);
					if(IsHex(found[8])) pos2 = HexToInt(found[8]);
					else pos2 = strval(found[8]);
					SetObjectMaterialText(oc, found[2], strval(found[1]), found[3][0], found[4], found[5][0], found[6][0], pos, pos2, strval(found[9]));
					#if defined CREATOR_DEBUG
						printf("SetObjectMaterialText(%d, \"%s\", %d, %d, \"%s\", %d, %d, %d, %d, %d);", oc, found[2], strval(found[1]), found[3][0], found[4], found[5][0], found[6][0], pos, pos2, strval(found[9]));
					#endif
				}
				else if((i = strfind(strtmp, "CreateVehicle(", true)) != -1 && vc < MAX_VEHICLES)
				{
					strdel(strtmp, 0, i + 14);
					split(strtmp, found, ',', sizeof found, sizeof found[]);
					vc = CreateVehicle(strval(found[0]), floatstr(found[1]), floatstr(found[2]), floatstr(found[3]), floatstr(found[4]), strval(found[5]), strval(found[6]), strval(found[7]));
					#if defined CREATOR_DEBUG
						printf("CreateVehicle(%d, %0.4f, %0.4f, %0.4f, %0.4f, %d, %d, %d);", strval(found[0]), floatstr(found[1]), floatstr(found[2]), floatstr(found[3]), floatstr(found[4]), strval(found[5]), strval(found[6]), strval(found[7]));
					#endif
					if(vc == INVALID_VEHICLE_ID) vc = MAX_VEHICLES;
				}
				else if((i = strfind(strtmp, "AddStaticVehicle(", true)) != -1 && vc < MAX_VEHICLES)
				{
					strdel(strtmp, 0, i + 17);
					split(strtmp, found, ',', sizeof found, sizeof found[]);
					vc = CreateVehicle(strval(found[0]), floatstr(found[1]), floatstr(found[2]), floatstr(found[3]), floatstr(found[4]), strval(found[5]), strval(found[6]), strval(found[7]));
					#if defined CREATOR_DEBUG
						printf("CreateVehicle(%d, %0.4f, %0.4f, %0.4f, %0.4f, %d, %d, %d);", strval(found[0]), floatstr(found[1]), floatstr(found[2]), floatstr(found[3]), floatstr(found[4]), strval(found[5]), strval(found[6]), strval(found[7]));
					#endif
					if(vc == INVALID_VEHICLE_ID) vc = MAX_VEHICLES;
				}
				else if((i = strfind(strtmp, "AddStaticVehicleEx(", true)) != -1 && vc < MAX_VEHICLES)
				{
					strdel(strtmp, 0, i + 19);
					split(strtmp, found, ',', sizeof found, sizeof found[]);
					vc = CreateVehicle(strval(found[0]), floatstr(found[1]), floatstr(found[2]), floatstr(found[3]), floatstr(found[4]), strval(found[5]), strval(found[6]), strval(found[7]));
					#if defined CREATOR_DEBUG
						printf("CreateVehicle(%d, %0.4f, %0.4f, %0.4f, %0.4f, %d, %d, %d);", strval(found[0]), floatstr(found[1]), floatstr(found[2]), floatstr(found[3]), floatstr(found[4]), strval(found[5]), strval(found[6]), strval(found[7]));
					#endif
					if(vc == INVALID_VEHICLE_ID) vc = MAX_VEHICLES;
				}
				else if((i = strfind(strtmp, "CreateActor(", true)) != -1 && ac < MAX_ACTORS)
				{
					strdel(strtmp, 0, i + 12);
					split(strtmp, found, ',', sizeof found, sizeof found[]);
					ac = CreateActor(strval(found[0]), floatstr(found[1]), floatstr(found[2]), floatstr(found[3]), floatstr(found[4]));
					#if defined CREATOR_DEBUG
						printf("CreateActor(%d, %0.4f, %0.4f, %0.4f, %0.4f);", strval(found[0]), floatstr(found[1]), floatstr(found[2]), floatstr(found[3]), floatstr(found[4]));
					#endif
					if(ac == INVALID_ACTOR_ID) ac = MAX_ACTORS;
				}
				else if((i = strfind(strtmp, "CreatePickup(", true)) != -1 && -1 < pc < MAX_PICKUPS)
				{
					strdel(strtmp, 0, i + 13);
					split(strtmp, found, ',', sizeof found, sizeof found[]);
					pc = CreatePickup(strval(found[0]), strval(found[1]), floatstr(found[2]), floatstr(found[3]), floatstr(found[4]), strval(found[5]));
					#if defined CREATOR_DEBUG
						printf("CreatePickup(%d, %d, %0.4f, %0.4f, %0.4f, %d);", strval(found[0]), strval(found[1]), floatstr(found[2]), floatstr(found[3]), floatstr(found[4]), strval(found[5]));
					#endif
					if(pc == -1) pc = MAX_PICKUPS;
				}
				else if((i = strfind(strtmp, "AddStaticPickup(", true)) != -1 && -1 < pc < MAX_PICKUPS)
				{
					strdel(strtmp, 0, i + 16);
					split(strtmp, found, ',', sizeof found, sizeof found[]);
					pc = CreatePickup(strval(found[0]), strval(found[1]), floatstr(found[2]), floatstr(found[3]), floatstr(found[4]), strval(found[5]));
					#if defined CREATOR_DEBUG
						printf("CreatePickup(%d, %d, %0.4f, %0.4f, %0.4f, %d);", strval(found[0]), strval(found[1]), floatstr(found[2]), floatstr(found[3]), floatstr(found[4]), strval(found[5]));
					#endif
					if(pc == -1) pc = MAX_PICKUPS;
				}
				else if((i = strfind(strtmp, "CreateDynamicPickup(", true)) != -1 && -1 < pc < MAX_PICKUPS)
				{
					strdel(strtmp, 0, i + 20);
					split(strtmp, found, ',', sizeof found, sizeof found[]);
					if(!found[5][0] || strfindchar(found[5], '_') != -1) pos = -1;
					else pos = strval(found[5]);
					pc = CreatePickup(strval(found[0]), strval(found[1]), floatstr(found[2]), floatstr(found[3]), floatstr(found[4]), pos);
					#if defined CREATOR_DEBUG
						printf("CreatePickup(%d, %d, %0.4f, %0.4f, %0.4f, %d);", strval(found[0]), strval(found[1]), floatstr(found[2]), floatstr(found[3]), floatstr(found[4]), pos);
					#endif
					if(pc == -1) pc = MAX_PICKUPS;
				}
				else if((i = strfind(strtmp, "SetPlayerCheckpoint(", true)) != -1 && cc < 1)
				{
					cc = 1;
					strdel(strtmp, 0, i + 20);
					split(strtmp, found, ',', sizeof found, sizeof found[]);
					SetCheckpoint(floatstr(found[1]), floatstr(found[2]), floatstr(found[3]), floatstr(found[4]));
					#if defined CREATOR_DEBUG
						printf("SetPlayerCheckpoint(playerid, %0.4f, %0.4f, %0.4f, %0.4f);", floatstr(found[1]), floatstr(found[2]), floatstr(found[3]), floatstr(found[4]));
					#endif
				}
				else if((i = strfind(strtmp, "CreateDynamicCP(", true)) != -1 && cc < 1)
				{
					cc = 1;
					strdel(strtmp, 0, i + 16);
					split(strtmp, found, ',', sizeof found, sizeof found[]);
					SetCheckpoint(floatstr(found[0]), floatstr(found[1]), floatstr(found[2]), floatstr(found[3]));
					#if defined CREATOR_DEBUG
						printf("SetPlayerCheckpoint(playerid, %0.4f, %0.4f, %0.4f, %0.4f);", floatstr(found[0]), floatstr(found[1]), floatstr(found[2]), floatstr(found[3]));
					#endif
				}
				else if((i = strfind(strtmp, "SetPlayerRaceCheckpoint(", true)) != -1 && rcc < 1)
				{
					rcc = 1;
					strdel(strtmp, 0, i + 24);
					split(strtmp, found, ',', sizeof found, sizeof found[]);
					SetRaceCheckpoint(strval(found[1]), floatstr(found[2]), floatstr(found[3]), floatstr(found[4]), floatstr(found[5]), floatstr(found[6]), floatstr(found[7]), floatstr(found[8]));
					#if defined CREATOR_DEBUG
						printf("SetPlayerRaceCheckpoint(playerid, %d, %0.4f, %0.4f, %0.4f, %0.4f, %0.4f, %0.4f, %0.4f);", strval(found[1]), floatstr(found[2]), floatstr(found[3]), floatstr(found[4]), floatstr(found[5]), floatstr(found[6]), floatstr(found[7]), floatstr(found[8]));
					#endif
				}
				else if((i = strfind(strtmp, "CreateDynamicRaceCP(", true)) != -1 && rcc < 1)
				{
					rcc = 1;
					strdel(strtmp, 0, i + 20);
					split(strtmp, found, ',', sizeof found, sizeof found[]);
					SetRaceCheckpoint(strval(found[0]), floatstr(found[1]), floatstr(found[2]), floatstr(found[3]), floatstr(found[4]), floatstr(found[5]), floatstr(found[6]), floatstr(found[7]));
					#if defined CREATOR_DEBUG
						printf("SetPlayerRaceCheckpoint(playerid, %d, %0.4f, %0.4f, %0.4f, %0.4f, %0.4f, %0.4f, %0.4f);", strval(found[0]), floatstr(found[1]), floatstr(found[2]), floatstr(found[3]), floatstr(found[4]), floatstr(found[5]), floatstr(found[6]), floatstr(found[7]));
					#endif
				}
				else if((i = strfind(strtmp, "SetPlayerMapIcon(", true)) != -1 && ic < MAX_MAPICONS)
				{
					ic++;
					strdel(strtmp, 0, i + 17);
					split(strtmp, found, ',', sizeof found, sizeof found[]);
					SetMapIcon(ic, floatstr(found[2]), floatstr(found[3]), floatstr(found[4]), strval(found[5]), strval(found[6]), strval(found[7]));
					#if defined CREATOR_DEBUG
						printf("SetPlayerMapIcon(playerid, %d, %0.4f, %0.4f, %0.4f, %d, %d, %d);", ic, floatstr(found[2]), floatstr(found[3]), floatstr(found[4]), strval(found[5]), strval(found[6]), strval(found[7]));
					#endif
				}
				else if((i = strfind(strtmp, "CreateDynamicMapIcon(", true)) != -1 && ic < MAX_MAPICONS)
				{
					ic++;
					strdel(strtmp, 0, i + 21);
					split(strtmp, found, ',', sizeof found, sizeof found[]);
					SetMapIcon(ic, floatstr(found[0]), floatstr(found[1]), floatstr(found[2]), strval(found[3]), strval(found[4]), strval(found[9]));
					#if defined CREATOR_DEBUG
						printf("SetPlayerMapIcon(playerid, %d, %0.4f, %0.4f, %0.4f, %d, %d, %d);", ic, floatstr(found[0]), floatstr(found[1]), floatstr(found[2]), strval(found[3]), strval(found[4]), strval(found[9]));
					#endif
				}
				else if((i = strfind(strtmp, "GangZoneCreate(", true)) != -1 && -1 < gc < MAX_GANG_ZONES)
				{
					strdel(strtmp, 0, i + 15);
					split(strtmp, found, ',', sizeof found, sizeof found[]);
					gc = GangZoneCreate(floatstr(found[0]), floatstr(found[1]), floatstr(found[2]), floatstr(found[3]));
					#if defined CREATOR_DEBUG
						printf("GangZoneCreate(%0.4f, %0.4f, %0.4f, %0.4f);", floatstr(found[0]), floatstr(found[1]), floatstr(found[2]), floatstr(found[3]));
					#endif
					if(gc == -1) gc = MAX_GANG_ZONES;
				}
				else if((i = strfind(strtmp, "GangZoneShowForAll(", true)) != -1 && -1 < gc < MAX_GANG_ZONES)
				{
					strdel(strtmp, 0, i + 19);
					split(strtmp, found, ',', sizeof found, sizeof found[]);
					while((pos = strfindchar(found[1], ' ')) != -1) strdel(found[1], pos, pos + 1);
					if(IsHex(found[1])) pos = HexToInt(found[1]);
					else pos = strval(found[1]);
					GangZoneShowForAll(gc, pos);
					#if defined CREATOR_DEBUG
						printf("GangZoneShowForAll(%d, %d);", gc, pos);
					#endif
				}
				else if((i = strfind(strtmp, "Create3DTextLabel(", true)) != -1 && lc < MAX_3DTEXT_GLOBAL)
				{
					strdel(strtmp, 0, i + 18);
					split(strtmp, found, ',', sizeof found, sizeof found[]);
					if((pos = strfindchar(found[0], '\"')) != -1) strdel(found[0], 0, pos + 1);
					if((pos = strfindchar(found[0], '\"')) != -1) strdel(found[0], pos, strlen(found[0]));
					while((pos = strfindchar(found[1], ' ')) != -1) strdel(found[1], pos, pos + 1);
					if(IsHex(found[1])) pos = HexToInt(found[1]);
					else pos = strval(found[1]);
					lc = _:Create3DTextLabel(found[0], pos, floatstr(found[2]), floatstr(found[3]), floatstr(found[4]), floatstr(found[5]), strval(found[6]), strval(found[7]));
					#if defined CREATOR_DEBUG
						printf("Create3DTextLabel(\"%s\", %d, %0.4f, %0.4f, %0.4f, %0.4f, %d, %d);", found[0], pos, floatstr(found[2]), floatstr(found[3]), floatstr(found[4]), floatstr(found[5]), strval(found[6]), strval(found[7]));
					#endif
					if(lc == INVALID_3DTEXT_ID) lc = MAX_3DTEXT_GLOBAL;
				}
				else if((i = strfind(strtmp, "CreateDynamic3DTextLabel(", true)) != -1 && lc < MAX_3DTEXT_GLOBAL)
				{
					strdel(strtmp, 0, i + 25);
					split(strtmp, found, ',', sizeof found, sizeof found[]);
					if((pos = strfindchar(found[0], '\"')) != -1) strdel(found[0], 0, pos + 1);
					if((pos = strfindchar(found[0], '\"')) != -1) strdel(found[0], pos, strlen(found[0]));
					while((pos = strfindchar(found[1], ' ')) != -1) strdel(found[1], pos, pos + 1);
					if(!found[9][0] || strfindchar(found[9], '_') != -1) pos2 = -1;
					if(IsHex(found[1])) pos = HexToInt(found[1]);
					else pos = strval(found[1]);
					lc = _:Create3DTextLabel(found[0], pos, floatstr(found[2]), floatstr(found[3]), floatstr(found[4]), floatstr(found[5]), pos2, strval(found[8]));
					#if defined CREATOR_DEBUG
						printf("Create3DTextLabel(\"%s\", %d, %0.4f, %0.4f, %0.4f, %0.4f, %d, %d);", found[0], pos, floatstr(found[2]), floatstr(found[3]), floatstr(found[4]), floatstr(found[5]), pos2, strval(found[8]));
					#endif
					if(lc == INVALID_3DTEXT_ID) lc = MAX_3DTEXT_GLOBAL;
				}
			}
			#if defined CREATOR_DEBUG
				printf("Loaded %d objects, %d vehicles, %d actors, %d pickups, %d checkpoints, %d race checkpoints, %d map icons, %d gangzones, %d 3D text labels",
				oc, vc, ac, pc, cc, rcc, ic, gc, lc);
			#endif
			fclose(pfile);
			return 1;
		}
	}
	return 0;
}

DeleteCreatorMap(const filename[])
{
	new File:pfile, File:fhandle = ftemp();
	if(fexist("ucmaps.lst") && (pfile = fopen("ucmaps.lst")) && fhandle)
	{
		static strtmp[MAX_MAPNAME_LENGTH];
		strtmp[0] = EOS;
		while(fread(pfile, strtmp)) fwrite(fhandle, strtmp);
		fclose(pfile);
		fremove("ucmaps.lst");
		if((pfile = fopen("ucmaps.lst")))
		{
			new bool:t;
			static strtmp2[MAX_MAPNAME_LENGTH];
			strcpy(strtmp2, filename, sizeof strtmp2);
			strcat(strtmp2, "\r\n");
			fseek(fhandle);
			while(fread(fhandle, strtmp))
			{
				if(strcmp(strtmp, strtmp2, true))
				{
					fwrite(pfile, strtmp);
					t = true;
				}
			}
			if(!t)
			{
				fclose(pfile);
				pfile = File:0;
				fremove("ucmaps.lst");
			}
		}
	}
	if(fhandle) fclose(fhandle);
	if(pfile) fclose(pfile);
	if(fexist(filename))
	{
		fremove(filename);
		return 1;
	}
	return 0;
}

IsNumeric(const string[])
{
	if(!string[0]) return 0;
	for(new i, l = strlen(string); i < l; ++i)
	{
		if(!(string[i] == '.' || '0' <= string[i] <= '9' || !i && (string[0] == '-' || string[0] == '+'))) return 0;
	}
	return 1;
}

split(const source[], destination[][], delim, destsize, destlen)
{
	for(new i, li, aNum, len, s = strlen(source), bool:t; i <= s && aNum < destsize; ++i)
	{
		if(source[i] == '\"') t = !t;
		if(source[i] == delim && !t || i == s)
		{
			len = strmid(destination[aNum], source, li, i, destlen);
			destination[aNum][len] = EOS;
			li = i + 1;
			aNum++;
		}
	}
	return 1;
}

strfindchar(const string[], sub)
{
	for(new i; string[i] != '\0'; ++i)
	{
		if(string[i] == sub) return i;
	}
	return -1;
}

fwriteASCII(File:fhandle, const string[])
{
	if(!fhandle) return 0;
	new stringlen = strlen(string);
	for(new i; i < stringlen; ++i) fputchar(fhandle, string[i], false);
	return stringlen;
}

HexToInt(const string[])
{
	if(!string[0]) return 0;
	new cur = 1, res = 0;
	for(new i = strlen(string); i != 0; --i)
	{
		res += cur * (string[i - 1] - ((string[i - 1] < 58) ? (48) : (55)));
		cur = cur * 16;
	}
	return res;
}

IsHex(const str[])
{
	if(str[0] != '0' || str[1] != 'x' && str[1] != 'X') return 0;
	new i = 2, cur;
	while(str[i])
	{
		cur = str[i++];
		if(!(('0' <= cur <= '9') || ('A' <= cur <= 'F') || ('a' <= cur <= 'f'))) return 0;
	}
	return 1;
}

GetBoundsOfGangZone(Float:cx, Float:cy, Float:width, Float:height, &Float:x1, &Float:y1, &Float:x2, &Float:y2)
{
	x1 = cx - (width / 2.0);
	x2 = cx + (width / 2.0);
	y1 = cy - (height / 2.0);
	y2 = cy + (height / 2.0);
}

GetCenterOfGangZone(Float:MinX, Float:MinY, Float:MaxX, Float:MaxY, &Float:X, &Float:Y)
{
	X = (MinX + MaxX) / 2;
	Y = (MinY + MaxY) / 2;
}

GetFreeMapIconID()
{
	for(new i; i < sizeof IconsInfo; ++i)
	{
		if(!IconsInfo[i][iCreated]) return i;
	}
	return -1;
}

GetTextureID(modelid, txd[], texture[])
{
	if(txd[0] && texture[0])
	{
		for(new i = sizeof(TexturesArray) - 1; i != -1; --i)
		{
			if(modelid == TexturesArray[i][tModel] &&
			!strcmp(txd, TexturesArray[i][tTXDName]) &&
			!strcmp(texture, TexturesArray[i][tTextureName])) return i;
		}
	}
	return -1;
}

IsValidObjectModel(modelid)
{
	for(new i = sizeof(ObjectsArray) - 1; i != -1; --i)
	{
		if(ObjectsArray[i][oID] == modelid) return 1;
	}
	return 0;
}

ReturnObjectID(const oname[])
{
	if(oname[0])
	{
		for(new i = sizeof(ObjectsArray) - 1; i != -1; --i)
		{
			if(!strcmp(ObjectsArray[i][oName], oname, true)) return ObjectsArray[i][oID];
		}
	}
	return 0;
}

ReturnVehicleID(const vname[])
{
	if(vname[0])
	{
		for(new i = sizeof(VehicleNames) - 1; i != -1; --i)
		{
			if(!strcmp(VehicleNames[i], vname, true)) return i + 400;
		}
	}
	return 0;
}

ReturnSkinID(const sname[])
{
	if(sname[0])
	{
		for(new i = sizeof(SkinNames) - 1; i != -1; --i)
		{
			if(SkinNames[i][0] && !strcmp(SkinNames[i], sname, true)) return i;
		}
	}
	return -1;
}

ReturnTextureID(const tname[])
{
	if(tname[0])
	{
		for(new i = sizeof(TexturesArray) - 1; i != -1; --i)
		{
			if(strfind(tname, TexturesArray[i][tTXDName], true) != -1 &&
			strfind(tname, TexturesArray[i][tTextureName], true) != -1) return i;
		}
	}
	return 0;
}

ReturnMapIconID(const iname[])
{
	if(iname[0])
	{
		for(new i = sizeof(MapIconNames) - 1; i != -1; --i)
		{
			if(MapIconNames[i][0] && !strcmp(MapIconNames[i], iname, true)) return i;
		}
	}
	return -1;
}
