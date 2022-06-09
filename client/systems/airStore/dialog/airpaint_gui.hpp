// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2019 A3Wasteland.com *
// ******************************************************************************************
#include "airstoreDefines.hpp"

#define airPaint_Button_textSize (0.04 * TEXT_SCALE)

class A3W_vehAirPaintMenu
{
	idd = A3W_airPaintIDD;
	movingEnable = true;
	enableSimulation = true;
	onLoad = "uiNamespace setVariable ['A3W_vehAirPaintMenu', _this select 0]; [] call repaintAirVehicle";
	onUnload = "uiNamespace setVariable ['A3W_vehAirPaintMenu', nil]";

	#define airPaint_MARGIN 0.02
	#define airPaint_MARGIN_X (FeedMenu_MARGIN * X_SCALE)
	#define airPaint_MARGIN_Y (FeedMenu_MARGIN * Y_SCALE)

	class ControlsBackground
	{
		#define airPaint_MainBG_W (0.475 * SZ_SCALE)
		#define airPaint_MainBG_H (0.65 * SZ_SCALE)
		#define airPaint_MainBG_X CENTER(1, airPaint_MainBG_W)
		#define airPaint_MainBG_Y CENTER(1, airPaint_MainBG_H)

		class MainBackground: IGUIBack
		{
			idc = -1;
			colorBackground[] = {0, 0, 0, 0.6};
			moving = true;

			x = airPaint_MainBG_X;
			y = airPaint_MainBG_Y;
			w = airPaint_MainBG_W;
			h = airPaint_MainBG_H;
		};

		class TopBar: IGUIBack
		{
			idc = -1;
			colorBackground[] = {A3W_UICOLOR_R, A3W_UICOLOR_G, A3W_UICOLOR_B, 0.8};

			#define airPaint_TopBar_H (0.05 * SZ_SCALE)

			x = airPaint_MainBG_X;
			y = airPaint_MainBG_Y;
			w = airPaint_MainBG_W;
			h = airPaint_TopBar_H;
		};

		class DialogTitleText: w_RscTextCenter
		{
			idc = -1;
			text = "Pay 'n' Spray";
			sizeEx = 0.06 * TEXT_SCALE;

			x = airPaint_MainBG_X;
			y = airPaint_MainBG_Y;
			w = airPaint_MainBG_W;
			h = airPaint_TopBar_H;
		};


		class ItemSelectedPrice: w_RscStructuredTextLeft
		{
			idc = airshop_veh_TEXT;
			size = 0.04 * TEXT_SCALE;

			x = airPaint_MainBG_X + (0.02 * SZ_SCALE);
			y = airPaint_MainBG_Y + (0.514 * SZ_SCALE);
			w = 0.4 * SZ_SCALE;
			h = 0.0689 * SZ_SCALE;
		};
	};

	class Controls
	{
		class ColorList: w_RscList
		{
			idc = airshop_color_list;
			//onLBSelChanged = "[] execVM 'client\systems\airStore\colorInfo.sqf'";
			font = "RobotoCondensed";
			sizeEx = 0.034 * TEXT_SCALE;
			rowHeight = 0.06 * TEXT_SCALE;

			#define airPaint_ColorList_W (0.207 * SZ_SCALE)
			#define airPaint_ColorList_H (0.4222 * SZ_SCALE)
			#define airPaint_ColorList_X (airPaint_MainBG_X + (0.02 * SZ_SCALE))
			#define airPaint_ColorList_Y (airPaint_MainBG_Y + (0.075 * SZ_SCALE))

			x = airPaint_ColorList_X;
			y = airPaint_ColorList_Y;
			w = airPaint_ColorList_W;
			h = airPaint_ColorList_H;
		};

		/*#define airPaint_DefParts_Tooltip "Some vehicles have optional or randomized parts.\nUnticking ""Default parts"" will disable randomization\nand let you choose parts below.\nAll parts affect vehicle weight."

		class DefaultPartsChk: w_RscCheckBox
		{
			idc = airshop_defparts_checkbox;
			tooltip = airPaint_DefParts_Tooltip;

			#define airPaint_DefPartsChk_W (0.03 * X_SCALE)
			#define airPaint_DefPartsChk_H (0.03 * Y_SCALE)
			#define airPaint_DefPartsChk_X (airPaint_ColorList_X + airPaint_ColorList_W + (0.02 * SZ_SCALE))
			#define airPaint_DefPartsChk_Y airPaint_ColorList_Y

			x = airPaint_DefPartsChk_X;
			y = airPaint_DefPartsChk_Y;
			w = airPaint_DefPartsChk_W;
			h = airPaint_DefPartsChk_H;
		};

		class DefaultPartsLabel: w_RscText
		{
			idc = -1;
			text = "Default parts";
			sizeEx = 0.04 * TEXT_SCALE;
			tooltip = airPaint_DefParts_Tooltip;

			#define airPaint_DefPartsLabel_W (0.12 * X_SCALE)
			#define airPaint_DefPartsLabel_H (0.03 * Y_SCALE)
			#define airPaint_DefPartsLabel_X (airPaint_DefPartsChk_X + airPaint_DefPartsChk_W) //+ (0.001 * X_SCALE))
			#define airPaint_DefPartsLabel_Y ((airPaint_DefPartsChk_Y + CENTER(airPaint_DefPartsChk_H, airPaint_DefPartsLabel_H)) - (0.0015 * Y_SCALE))

			x = airPaint_DefPartsLabel_X;
			y = airPaint_DefPartsLabel_Y;
			w = airPaint_DefPartsLabel_W;
			h = airPaint_DefPartsLabel_H;
		};*/

		class PartList: w_RscList
		{
			idc = airshop_part_list;
			//onLBSelChanged = ""; // handled in repaintAirVehicle.sqf
			font = "RobotoCondensed";
			sizeEx = 0.034 * TEXT_SCALE;
			rowHeight = 0.05 * TEXT_SCALE;
			colorSelect[] = {1, 1, 1, 1}; // primary
			colorSelect2[] = {1, 1, 1, 1}; // blink
			colorSelectBackground[] = {0.75, 0.75, 0.75, 0.25}; // primary
			colorSelectBackground2[] = {0.75, 0.75, 0.75, 0.25}; // blink
			colorPictureSelected[] = {1, 1, 1, 1};

			#define airPaint_PartList_MARGIN_Y (0.005 * Y_SCALE)
			#define airPaint_PartList_W (0.207 * SZ_SCALE)
			#define airPaint_PartList_H (0.4222 * SZ_SCALE)
			#define airPaint_PartList_X (airPaint_ColorList_X + airPaint_ColorList_W + (0.02 * SZ_SCALE))
			#define airPaint_PartList_Y airPaint_ColorList_Y

			x = airPaint_PartList_X;
			y = airPaint_PartList_Y;
			w = airPaint_PartList_W;
			h = airPaint_PartList_H;
		};

		class BuyButton: w_RscButton
		{
			idc = airshop_BuyButton_IDC;
			text = "Buy";
			sizeEx = airPaint_Button_textSize;

			x = airPaint_MainBG_X + (0.1227 * SZ_SCALE);
			y = airPaint_MainBG_Y + (0.59 * SZ_SCALE);
			w = 0.096 * SZ_SCALE;
			h = 0.040 * SZ_SCALE;
		};

		class CancelButton: w_RscButton
		{
			idc = 2;
			action = "closeDialog 0";
			text = "Cancel";
			sizeEx = airPaint_Button_textSize;

			x = airPaint_MainBG_X + (0.0167 * SZ_SCALE);
			y = airPaint_MainBG_Y + (0.59 * SZ_SCALE);
			w = 0.096 * SZ_SCALE;
			h = 0.040 * SZ_SCALE;
		};
	};
};
