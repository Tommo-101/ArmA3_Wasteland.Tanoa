// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2019 A3Wasteland.com *
// ******************************************************************************************
#include "specstoreDefines.hpp"

#define VehSpecPaint_Button_textSize (0.04 * TEXT_SCALE)

class A3W_vehSpecPaintMenu
{
	idd = A3W_specPaintIDD;
	movingEnable = true;
	enableSimulation = true;
	onLoad = "uiNamespace setVariable ['A3W_vehSpecPaintMenu', _this select 0]; [] call repaintSpecVehicle";
	onUnload = "uiNamespace setVariable ['A3W_vehSpecPaintMenu', nil]";

	#define VehSpecPaint_MARGIN 0.02
	#define VehSpecPaint_MARGIN_X (FeedMenu_MARGIN * X_SCALE)
	#define VehSpecPaint_MARGIN_Y (FeedMenu_MARGIN * Y_SCALE)

	class ControlsBackground
	{
		#define VehSpecPaint_MainBG_W (0.475 * SZ_SCALE)
		#define VehSpecPaint_MainBG_H (0.65 * SZ_SCALE)
		#define VehSpecPaint_MainBG_X CENTER(1, VehSpecPaint_MainBG_W)
		#define VehSpecPaint_MainBG_Y CENTER(1, VehSpecPaint_MainBG_H)

		class MainBackground: IGUIBack
		{
			idc = -1;
			colorBackground[] = {0, 0, 0, 0.6};
			moving = true;

			x = VehSpecPaint_MainBG_X;
			y = VehSpecPaint_MainBG_Y;
			w = VehSpecPaint_MainBG_W;
			h = VehSpecPaint_MainBG_H;
		};

		class TopBar: IGUIBack
		{
			idc = -1;
			colorBackground[] = {A3W_UICOLOR_R, A3W_UICOLOR_G, A3W_UICOLOR_B, 0.8};

			#define VehSpecPaint_TopBar_H (0.05 * SZ_SCALE)

			x = VehSpecPaint_MainBG_X;
			y = VehSpecPaint_MainBG_Y;
			w = VehSpecPaint_MainBG_W;
			h = VehSpecPaint_TopBar_H;
		};

		class DialogTitleText: w_RscTextCenter
		{
			idc = -1;
			text = "Pay 'n' Spray";
			sizeEx = 0.06 * TEXT_SCALE;

			x = VehSpecPaint_MainBG_X;
			y = VehSpecPaint_MainBG_Y;
			w = VehSpecPaint_MainBG_W;
			h = VehSpecPaint_TopBar_H;
		};


		class ItemSelectedPrice: w_RscStructuredTextLeft
		{
			idc = specshop_veh_TEXT;
			size = 0.04 * TEXT_SCALE;

			x = VehSpecPaint_MainBG_X + (0.02 * SZ_SCALE);
			y = VehSpecPaint_MainBG_Y + (0.514 * SZ_SCALE);
			w = 0.4 * SZ_SCALE;
			h = 0.0689 * SZ_SCALE;
		};
	};

	class Controls
	{
		class ColorList: w_RscList
		{
			idc = specshop_color_list;
			//onLBSelChanged = "[] execVM 'client\systems\vehicleStore\colorInfo.sqf'";
			font = "RobotoCondensed";
			sizeEx = 0.034 * TEXT_SCALE;
			rowHeight = 0.06 * TEXT_SCALE;

			#define VehSpecPaint_ColorList_W (0.207 * SZ_SCALE)
			#define VehSpecPaint_ColorList_H (0.4222 * SZ_SCALE)
			#define VehSpecPaint_ColorList_X (VehSpecPaint_MainBG_X + (0.02 * SZ_SCALE))
			#define VehSpecPaint_ColorList_Y (VehSpecPaint_MainBG_Y + (0.075 * SZ_SCALE))

			x = VehSpecPaint_ColorList_X;
			y = VehSpecPaint_ColorList_Y;
			w = VehSpecPaint_ColorList_W;
			h = VehSpecPaint_ColorList_H;
		};

		/*#define VehSpecPaint_DefParts_Tooltip "Some vehicles have optional or randomized parts.\nUnticking ""Default parts"" will disable randomization\nand let you choose parts below.\nAll parts affect vehicle weight."

		class DefaultPartsChk: w_RscCheckBox
		{
			idc = specshop_defparts_checkbox;
			tooltip = VehSpecPaint_DefParts_Tooltip;

			#define VehSpecPaint_DefPartsChk_W (0.03 * X_SCALE)
			#define VehSpecPaint_DefPartsChk_H (0.03 * Y_SCALE)
			#define VehSpecPaint_DefPartsChk_X (VehSpecPaint_ColorList_X + VehSpecPaint_ColorList_W + (0.02 * SZ_SCALE))
			#define VehSpecPaint_DefPartsChk_Y VehSpecPaint_ColorList_Y

			x = VehSpecPaint_DefPartsChk_X;
			y = VehSpecPaint_DefPartsChk_Y;
			w = VehSpecPaint_DefPartsChk_W;
			h = VehSpecPaint_DefPartsChk_H;
		};

		class DefaultPartsLabel: w_RscText
		{
			idc = -1;
			text = "Default parts";
			sizeEx = 0.04 * TEXT_SCALE;
			tooltip = VehSpecPaint_DefParts_Tooltip;

			#define VehSpecPaint_DefPartsLabel_W (0.12 * X_SCALE)
			#define VehSpecPaint_DefPartsLabel_H (0.03 * Y_SCALE)
			#define VehSpecPaint_DefPartsLabel_X (VehSpecPaint_DefPartsChk_X + VehSpecPaint_DefPartsChk_W) //+ (0.001 * X_SCALE))
			#define VehSpecPaint_DefPartsLabel_Y ((VehSpecPaint_DefPartsChk_Y + CENTER(VehSpecPaint_DefPartsChk_H, VehSpecPaint_DefPartsLabel_H)) - (0.0015 * Y_SCALE))

			x = VehSpecPaint_DefPartsLabel_X;
			y = VehSpecPaint_DefPartsLabel_Y;
			w = VehSpecPaint_DefPartsLabel_W;
			h = VehSpecPaint_DefPartsLabel_H;
		};*/

		class PartList: w_RscList
		{
			idc = specshop_part_list;
			//onLBSelChanged = ""; // handled in repaintSpecVehicle.sqf
			font = "RobotoCondensed";
			sizeEx = 0.034 * TEXT_SCALE;
			rowHeight = 0.05 * TEXT_SCALE;
			colorSelect[] = {1, 1, 1, 1}; // primary
			colorSelect2[] = {1, 1, 1, 1}; // blink
			colorSelectBackground[] = {0.75, 0.75, 0.75, 0.25}; // primary
			colorSelectBackground2[] = {0.75, 0.75, 0.75, 0.25}; // blink
			colorPictureSelected[] = {1, 1, 1, 1};

			#define VehSpecPaint_PartList_MARGIN_Y (0.005 * Y_SCALE)
			#define VehSpecPaint_PartList_W (0.207 * SZ_SCALE)
			#define VehSpecPaint_PartList_H (0.4222 * SZ_SCALE)
			#define VehSpecPaint_PartList_X (VehSpecPaint_ColorList_X + VehSpecPaint_ColorList_W + (0.02 * SZ_SCALE))
			#define VehSpecPaint_PartList_Y VehSpecPaint_ColorList_Y

			x = VehSpecPaint_PartList_X;
			y = VehSpecPaint_PartList_Y;
			w = VehSpecPaint_PartList_W;
			h = VehSpecPaint_PartList_H;
		};

		class BuyButton: w_RscButton
		{
			idc = specshop_BuyButton_IDC;
			text = "Buy";
			sizeEx = VehSpecPaint_Button_textSize;

			x = VehSpecPaint_MainBG_X + (0.1227 * SZ_SCALE);
			y = VehSpecPaint_MainBG_Y + (0.59 * SZ_SCALE);
			w = 0.096 * SZ_SCALE;
			h = 0.040 * SZ_SCALE;
		};

		class CancelButton: w_RscButton
		{
			idc = 2;
			action = "closeDialog 0";
			text = "Cancel";
			sizeEx = VehSpecPaint_Button_textSize;

			x = VehSpecPaint_MainBG_X + (0.0167 * SZ_SCALE);
			y = VehSpecPaint_MainBG_Y + (0.59 * SZ_SCALE);
			w = 0.096 * SZ_SCALE;
			h = 0.040 * SZ_SCALE;
		};
	};
};
