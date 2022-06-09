// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
#include "specstoreDefines.hpp"

#define SpecStoreButton_textSize (0.04 * TEXT_SCALE)

class specshopd
{
	idd = specshop_DIALOG;
	movingEnable = true;
	enableSimulation = true;
	onLoad = "[[0], populateSpecStore] execFSM 'call.fsm'";

	class ControlsBackground
	{
		#define SpecStoreMainBG_W (0.8853 * SZ_SCALE)
		#define SpecStoreMainBG_H (0.65 * SZ_SCALE)
		#define SpecStoreMainBG_X CENTER(1, SpecStoreMainBG_W)
		#define SpecStoreMainBG_Y CENTER(1, SpecStoreMainBG_H)

		class MainBackground: IGUIBack
		{
			idc = -1;
			colorBackground[] = {0, 0, 0, 0.6};
			moving = true;

			x = SpecStoreMainBG_X;
			y = SpecStoreMainBG_Y;
			w = SpecStoreMainBG_W;
			h = SpecStoreMainBG_H;
		};

		class TopBar: IGUIBack
		{
			idc = -1;
			colorBackground[] = {A3W_UICOLOR_R, A3W_UICOLOR_G, A3W_UICOLOR_B, 0.8};

			#define SpecStoreTopBar_H (0.05 * SZ_SCALE)

			x = SpecStoreMainBG_X;
			y = SpecStoreMainBG_Y;
			w = SpecStoreMainBG_W;
			h = SpecStoreTopBar_H;
		};

		class ItemSelectedPrice: w_RscStructuredTextLeft
		{
			idc = specshop_veh_TEXT;
			size = 0.04 * TEXT_SCALE;

			x = SpecStoreMainBG_X + (0.15 * SZ_SCALE);
			y = SpecStoreMainBG_Y + (0.514 * SZ_SCALE);
			w = 0.119 * SZ_SCALE;
			h = 0.0689 * SZ_SCALE;
		};

		class DialogTitleText: w_RscTextCenter
		{
			idc = -1;
			text = "SpecOps Store";
			sizeEx = 0.06 * TEXT_SCALE;

			x = SpecStoreMainBG_X;
			y = SpecStoreMainBG_Y;
			w = SpecStoreMainBG_W;
			h = SpecStoreTopBar_H;
		};
	};

	class Controls
	{
		class SelectionList: w_RscList
		{
			idc = specshop_veh_list;
			onLBSelChanged = "call specInfo";
			font = "RobotoCondensed";
			sizeEx = 0.04 * TEXT_SCALE;
			rowHeight = 0.05 * TEXT_SCALE;
			colorPictureSelected[] = {0,0,0,1};

			x = SpecStoreMainBG_X + (0.1533 * SZ_SCALE);
			y = SpecStoreMainBG_Y + (0.075 * SZ_SCALE);
			w = 0.276 * SZ_SCALE;
			h = 0.4222 * SZ_SCALE;
		};

		class ColorList: w_RscList
		{
			idc = specshop_color_list;
			//onLBSelChanged = "[] execVM 'client\systems\vehicleStore\colorInfo.sqf'";
			font = "RobotoCondensed";
			sizeEx = 0.034 * TEXT_SCALE;
			rowHeight = 0.06 * TEXT_SCALE;

			x = SpecStoreMainBG_X + (0.4433 * SZ_SCALE);
			y = SpecStoreMainBG_Y + (0.075 * SZ_SCALE);
			w = 0.207 * SZ_SCALE;
			h = 0.4222 * SZ_SCALE;
		};

		#define SpecStore_DefParts_Tooltip "Some vehicles have optional or randomized parts.\nUnticking ""Default parts"" will disable randomization\nand let you choose parts below.\nAll parts affect vehicle weight."

		class DefaultPartsChk: w_RscCheckBox
		{
			idc = specshop_defparts_checkbox;
			tooltip = SpecStore_DefParts_Tooltip;

			#define SpecStore_DefPartsChk_W (0.03 * X_SCALE)
			#define SpecStore_DefPartsChk_H (0.03 * Y_SCALE)
			#define SpecStore_DefPartsChk_X SpecStoreMainBG_X + (0.6643 * SZ_SCALE)
			#define SpecStore_DefPartsChk_Y SpecStoreMainBG_Y + (0.075 * SZ_SCALE)

			x = SpecStore_DefPartsChk_X;
			y = SpecStore_DefPartsChk_Y;
			w = SpecStore_DefPartsChk_W;
			h = SpecStore_DefPartsChk_H;
		};

		class DefaultPartsLabel: w_RscText
		{
			idc = -1;
			text = "Default parts";
			sizeEx = 0.04 * TEXT_SCALE;
			tooltip = SpecStore_DefParts_Tooltip;

			#define SpecStore_DefPartsLabel_W (0.12 * X_SCALE)
			#define SpecStore_DefPartsLabel_H (0.03 * Y_SCALE)
			#define SpecStore_DefPartsLabel_X (SpecStore_DefPartsChk_X + SpecStore_DefPartsChk_W) //+ (0.001 * X_SCALE))
			#define SpecStore_DefPartsLabel_Y ((SpecStore_DefPartsChk_Y + CENTER(SpecStore_DefPartsChk_H, SpecStore_DefPartsLabel_H)) - (0.0015 * Y_SCALE))

			x = SpecStore_DefPartsLabel_X;
			y = SpecStore_DefPartsLabel_Y;
			w = SpecStore_DefPartsLabel_W;
			h = SpecStore_DefPartsLabel_H;
		};

		class PartList: w_RscList
		{
			idc = specshop_part_list;
			//onLBSelChanged = ""; // handled in loadVehicleStore.sqf
			font = "RobotoCondensed";
			sizeEx = 0.034 * TEXT_SCALE;
			rowHeight = 0.05 * TEXT_SCALE;
			colorSelect[] = {1, 1, 1, 1}; // primary
			colorSelect2[] = {1, 1, 1, 1}; // blink
			colorSelectBackground[] = {0.75, 0.75, 0.75, 0.25}; // primary
			colorSelectBackground2[] = {0.75, 0.75, 0.75, 0.25}; // blink
			colorPictureSelected[] = {1, 1, 1, 1};

			#define SpecStore_PartList_MARGIN_Y (0.005 * Y_SCALE)
			#define SpecStore_PartList_W (0.207 * SZ_SCALE)
			#define SpecStore_PartList_H (0.4222 * SZ_SCALE - SpecStore_DefPartsChk_H - SpecStore_PartList_MARGIN_Y)
			#define SpecStore_PartList_X SpecStore_DefPartsChk_X
			#define SpecStore_PartList_Y (SpecStore_DefPartsChk_Y + SpecStore_DefPartsChk_H + SpecStore_PartList_MARGIN_Y)

			x = SpecStore_PartList_X;
			y = SpecStore_PartList_Y;
			w = SpecStore_PartList_W;
			h = SpecStore_PartList_H;
		};

		class BuyVehicle: w_RscButton
		{
			idc = specshop_BuyButton_IDC;
			action = "[0] execVM 'client\systems\specStore\buyVehicles.sqf'";
			text = "Buy";
			sizeEx = SpecStoreButton_textSize;

			x = SpecStoreMainBG_X + (0.334 * SZ_SCALE);
			y = SpecStoreMainBG_Y + (0.507 * SZ_SCALE);
			w = 0.096 * SZ_SCALE;
			h = 0.040 * SZ_SCALE;
		};

		class CancelButton: w_RscButton
		{
			idc = -1;
			action = "closeDialog 0";
			text = "Cancel";
			sizeEx = SpecStoreButton_textSize;

			x = SpecStoreMainBG_X + (0.0167 * SZ_SCALE);
			y = SpecStoreMainBG_Y + (0.59 * SZ_SCALE);
			w = 0.096 * SZ_SCALE;
			h = 0.040 * SZ_SCALE;
		};

		class StoreButton0: w_RscButton
		{
			idc = specshop_button0;
			action = "[0] call populateSpecStore";
			text = "Drones";
			sizeEx = SpecStoreButton_textSize;

			x = SpecStoreMainBG_X + (0.0167 * SZ_SCALE);
			y = SpecStoreMainBG_Y + (0.075 * SZ_SCALE);
			w = 0.1173 * SZ_SCALE;
			h = 0.040 * SZ_SCALE;
		};

		class StoreButton1: w_RscButton
		{
			idc = specshop_button1;
			action = "[1] call populateSpecStore";
			text = "Anti-Air";
			sizeEx = SpecStoreButton_textSize;

			x = SpecStoreMainBG_X + (0.0167 * SZ_SCALE);
			y = SpecStoreMainBG_Y + (0.125 * SZ_SCALE);
			w = 0.1173 * SZ_SCALE;
			h = 0.040 * SZ_SCALE;
		};

		class StoreButton2: w_RscButton
		{
			idc = specshop_button2;
			action = "[2] call populateSpecStore";
			text = "Jets";
			sizeEx = SpecStoreButton_textSize;

			x = SpecStoreMainBG_X + (0.0167 * SZ_SCALE);
			y = SpecStoreMainBG_Y + (0.175 * SZ_SCALE);
			w = 0.1173 * SZ_SCALE;
			h = 0.040 * SZ_SCALE;
		};

		class StoreButton3: w_RscButton
		{
			idc = specshop_button3;
			action = "[3] call populateSpecStore";
			text = "Utility";
			sizeEx = SpecStoreButton_textSize;

			x = SpecStoreMainBG_X + (0.0167 * SZ_SCALE);
			y = SpecStoreMainBG_Y + (0.225 * SZ_SCALE);
			w = 0.1173 * SZ_SCALE;
			h = 0.040 * SZ_SCALE;
		};

		class StoreButton4: w_RscButton
		{
			idc = specshop_button4;
			action = "[4] call populateSpecStore";
			text = "Helicopters";
			sizeEx = SpecStoreButton_textSize;

			x = SpecStoreMainBG_X + (0.0167 * SZ_SCALE);
			y = SpecStoreMainBG_Y + (0.275 * SZ_SCALE);
			w = 0.1173 * SZ_SCALE;
			h = 0.040 * SZ_SCALE;
		};

		class StoreButton5: w_RscButton
		{
			idc = specshop_button5;
			action = "[5] call populateSpecStore";
			text = "Armored";
			sizeEx = SpecStoreButton_textSize;

			x = SpecStoreMainBG_X + (0.0167 * SZ_SCALE);
			y = SpecStoreMainBG_Y + (0.325 * SZ_SCALE);
			w = 0.1173 * SZ_SCALE;
			h = 0.040 * SZ_SCALE;
		};
		/*
		class StoreButton6: w_RscButton
		{
			idc = specshop_button6;
			action = "[6] call populateSpecStore";
			text = "Boats";
			sizeEx = SpecStoreButton_textSize;

			x = SpecStoreMainBG_X + (0.0167 * SZ_SCALE);
			y = SpecStoreMainBG_Y + (0.375 * SZ_SCALE);
			w = 0.1173 * SZ_SCALE;
			h = 0.040 * SZ_SCALE;
		};*/

		// Submarines transferred in Boats
		/*
		class StoreButton6: w_RscButton
		{
			idc = specshop_button6;
			action = "[6] call populateSpecStore";
			text = "Submarines";
			sizeEx = SpecStoreButton_textSize;

			x = SpecStoreMainBG_X + (0.0167 * SZ_SCALE);
			y = SpecStoreMainBG_Y + (0.375 * SZ_SCALE);
			w = 0.1173 * SZ_SCALE;
			h = 0.040 * SZ_SCALE;
		};
		*/
	};
};
