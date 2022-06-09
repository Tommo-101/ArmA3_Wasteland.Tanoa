// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
#include "airstoreDefines.hpp"

#define AirStoreButton_textSize (0.04 * TEXT_SCALE)

class airshopd
{
	idd = airshop_DIALOG;
	movingEnable = true;
	enableSimulation = true;
	onLoad = "[[0], populateAirStore] execFSM 'call.fsm'";

	class ControlsBackground
	{
		#define AirStoreMainBG_W (0.8853 * SZ_SCALE)
		#define AirStoreMainBG_H (0.65 * SZ_SCALE)
		#define AirStoreMainBG_X CENTER(1, AirStoreMainBG_W)
		#define AirStoreMainBG_Y CENTER(1, AirStoreMainBG_H)

		class MainBackground: IGUIBack
		{
			idc = -1;
			colorBackground[] = {0, 0, 0, 0.6};
			moving = true;

			x = AirStoreMainBG_X;
			y = AirStoreMainBG_Y;
			w = AirStoreMainBG_W;
			h = AirStoreMainBG_H;
		};

		class TopBar: IGUIBack
		{
			idc = -1;
			colorBackground[] = {A3W_UICOLOR_R, A3W_UICOLOR_G, A3W_UICOLOR_B, 0.8};

			#define AirStoreTopBar_H (0.05 * SZ_SCALE)

			x = AirStoreMainBG_X;
			y = AirStoreMainBG_Y;
			w = AirStoreMainBG_W;
			h = AirStoreTopBar_H;
		};

		class ItemSelectedPrice: w_RscStructuredTextLeft
		{
			idc = airshop_veh_TEXT;
			size = 0.04 * TEXT_SCALE;

			x = AirStoreMainBG_X + (0.15 * SZ_SCALE);
			y = AirStoreMainBG_Y + (0.514 * SZ_SCALE);
			w = 0.119 * SZ_SCALE;
			h = 0.0689 * SZ_SCALE;
		};

		class DialogTitleText: w_RscTextCenter
		{
			idc = -1;
			text = "Aircraft Store";
			sizeEx = 0.06 * TEXT_SCALE;

			x = AirStoreMainBG_X;
			y = AirStoreMainBG_Y;
			w = AirStoreMainBG_W;
			h = AirStoreTopBar_H;
		};
	};

	class Controls
	{
		class SelectionList: w_RscList
		{
			idc = airshop_veh_list;
			onLBSelChanged = "call airInfo";
			font = "RobotoCondensed";
			sizeEx = 0.04 * TEXT_SCALE;
			rowHeight = 0.05 * TEXT_SCALE;
			colorPictureSelected[] = {0,0,0,1};

			x = AirStoreMainBG_X + (0.1533 * SZ_SCALE);
			y = AirStoreMainBG_Y + (0.075 * SZ_SCALE);
			w = 0.276 * SZ_SCALE;
			h = 0.4222 * SZ_SCALE;
		};

		class ColorList: w_RscList
		{
			idc = airshop_color_list;
			font = "RobotoCondensed";
			sizeEx = 0.034 * TEXT_SCALE;
			rowHeight = 0.06 * TEXT_SCALE;

			x = AirStoreMainBG_X + (0.4433 * SZ_SCALE);
			y = AirStoreMainBG_Y + (0.075 * SZ_SCALE);
			w = 0.207 * SZ_SCALE;
			h = 0.4222 * SZ_SCALE;
		};

		#define AirStore_DefParts_Tooltip "Some vehicles have optional or randomized parts.\nUnticking ""Default parts"" will disable randomization\nand let you choose parts below.\nAll parts affect vehicle weight."

		class DefaultPartsChk: w_RscCheckBox
		{
			idc = airshop_defparts_checkbox;
			tooltip = AirStore_DefParts_Tooltip;

			#define AirStore_DefPartsChk_W (0.03 * X_SCALE)
			#define AirStore_DefPartsChk_H (0.03 * Y_SCALE)
			#define AirStore_DefPartsChk_X AirStoreMainBG_X + (0.6643 * SZ_SCALE)
			#define AirStore_DefPartsChk_Y AirStoreMainBG_Y + (0.075 * SZ_SCALE)

			x = AirStore_DefPartsChk_X;
			y = AirStore_DefPartsChk_Y;
			w = AirStore_DefPartsChk_W;
			h = AirStore_DefPartsChk_H;
		};

		class DefaultPartsLabel: w_RscText
		{
			idc = -1;
			text = "Default parts";
			sizeEx = 0.04 * TEXT_SCALE;
			tooltip = AirStore_DefParts_Tooltip;

			#define AirStore_DefPartsLabel_W (0.12 * X_SCALE)
			#define AirStore_DefPartsLabel_H (0.03 * Y_SCALE)
			#define AirStore_DefPartsLabel_X (AirStore_DefPartsChk_X + AirStore_DefPartsChk_W) //+ (0.001 * X_SCALE))
			#define AirStore_DefPartsLabel_Y ((AirStore_DefPartsChk_Y + CENTER(AirStore_DefPartsChk_H, AirStore_DefPartsLabel_H)) - (0.0015 * Y_SCALE))

			x = AirStore_DefPartsLabel_X;
			y = AirStore_DefPartsLabel_Y;
			w = AirStore_DefPartsLabel_W;
			h = AirStore_DefPartsLabel_H;
		};

		class PartList: w_RscList
		{
			idc = airshop_part_list;
			font = "RobotoCondensed";
			sizeEx = 0.034 * TEXT_SCALE;
			rowHeight = 0.05 * TEXT_SCALE;
			colorSelect[] = {1, 1, 1, 1}; // primary
			colorSelect2[] = {1, 1, 1, 1}; // blink
			colorSelectBackground[] = {0.75, 0.75, 0.75, 0.25}; // primary
			colorSelectBackground2[] = {0.75, 0.75, 0.75, 0.25}; // blink
			colorPictureSelected[] = {1, 1, 1, 1};

			#define AirStore_PartList_MARGIN_Y (0.005 * Y_SCALE)
			#define AirStore_PartList_W (0.207 * SZ_SCALE)
			#define AirStore_PartList_H (0.4222 * SZ_SCALE - AirStore_DefPartsChk_H - AirStore_PartList_MARGIN_Y)
			#define AirStore_PartList_X AirStore_DefPartsChk_X
			#define AirStore_PartList_Y (AirStore_DefPartsChk_Y + AirStore_DefPartsChk_H + AirStore_PartList_MARGIN_Y)

			x = AirStore_PartList_X;
			y = AirStore_PartList_Y;
			w = AirStore_PartList_W;
			h = AirStore_PartList_H;
		};

		class BuyVehicle: w_RscButton
		{
			idc = airshop_BuyButton_IDC;
			action = "[0] execVM 'client\systems\airStore\buyVehicles.sqf'";
			text = "Buy";
			sizeEx = AirStoreButton_textSize;

			x = AirStoreMainBG_X + (0.334 * SZ_SCALE);
			y = AirStoreMainBG_Y + (0.507 * SZ_SCALE);
			w = 0.096 * SZ_SCALE;
			h = 0.040 * SZ_SCALE;
		};

		class CancelButton: w_RscButton
		{
			idc = -1;
			action = "closeDialog 0";
			text = "Cancel";
			sizeEx = AirStoreButton_textSize;

			x = AirStoreMainBG_X + (0.0167 * SZ_SCALE);
			y = AirStoreMainBG_Y + (0.59 * SZ_SCALE);
			w = 0.096 * SZ_SCALE;
			h = 0.040 * SZ_SCALE;
		};

		class StoreButton0: w_RscButton
		{
			idc = airshop_button0;
			action = "[0] call populateAirStore";
			text = "Civilian";
			sizeEx = AirStoreButton_textSize;

			x = AirStoreMainBG_X + (0.0167 * SZ_SCALE);
			y = AirStoreMainBG_Y + (0.075 * SZ_SCALE);
			w = 0.1173 * SZ_SCALE;
			h = 0.040 * SZ_SCALE;
		};

		class StoreButton1: w_RscButton
		{
			idc = airshop_button1;
			action = "[1] call populateAirStore";
			text = "Gunships";
			sizeEx = AirStoreButton_textSize;

			x = AirStoreMainBG_X + (0.0167 * SZ_SCALE);
			y = AirStoreMainBG_Y + (0.125 * SZ_SCALE);
			w = 0.1173 * SZ_SCALE;
			h = 0.040 * SZ_SCALE;
		};

		class StoreButton2: w_RscButton
		{
			idc = airshop_button2;
			action = "[2] call populateAirStore";
			text = "Combat Jets";
			sizeEx = AirStoreButton_textSize;

			x = AirStoreMainBG_X + (0.0167 * SZ_SCALE);
			y = AirStoreMainBG_Y + (0.175 * SZ_SCALE);
			w = 0.1173 * SZ_SCALE;
			h = 0.040 * SZ_SCALE;
		};

		class StoreButton3: w_RscButton
		{
			idc = airshop_button3;
			action = "[3] call populateAirStore";
			text = "Utility Planes";
			sizeEx = AirStoreButton_textSize;

			x = AirStoreMainBG_X + (0.0167 * SZ_SCALE);
			y = AirStoreMainBG_Y + (0.225 * SZ_SCALE);
			w = 0.1173 * SZ_SCALE;
			h = 0.040 * SZ_SCALE;
		};

		class StoreButton4: w_RscButton
		{
			idc = airshop_button4;
			action = "[4] call populateAirStore";
			text = "Utility Helis";
			sizeEx = AirStoreButton_textSize;

			x = AirStoreMainBG_X + (0.0167 * SZ_SCALE);
			y = AirStoreMainBG_Y + (0.275 * SZ_SCALE);
			w = 0.1173 * SZ_SCALE;
			h = 0.040 * SZ_SCALE;
		};

		class StoreButton5: w_RscButton
		{
			idc = airshop_button5;
			action = "[5] call populateAirStore";
			text = "Specialist";
			sizeEx = AirStoreButton_textSize;

			x = AirStoreMainBG_X + (0.0167 * SZ_SCALE);
			y = AirStoreMainBG_Y + (0.325 * SZ_SCALE);
			w = 0.1173 * SZ_SCALE;
			h = 0.040 * SZ_SCALE;
		};
	};
};
