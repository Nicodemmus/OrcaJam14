{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 6,
			"minor" : 1,
			"revision" : 7,
			"architecture" : "x64"
		}
,
		"rect" : [ 105.0, 62.0, 735.0, 568.0 ],
		"bgcolor" : [ 1.0, 1.0, 0.929412, 1.0 ],
		"bglocked" : 1,
		"openinpresentation" : 0,
		"default_fontsize" : 11.595187,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"boxes" : [ 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 1,
							"revision" : 7,
							"architecture" : "x64"
						}
,
						"rect" : [ 379.0, 117.0, 858.0, 640.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"visible" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-88",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 305.0, 611.0, 79.0, 20.0 ],
									"text" : "s keeptempo"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-87",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 447.5, 167.5, 32.5, 18.0 ],
									"text" : "0"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-85",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 605.75, 136.75, 32.5, 18.0 ],
									"text" : "1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-83",
									"maxclass" : "gswitch2",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 605.75, 177.5, 39.0, 32.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-80",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 654.0, 344.5, 222.0, 20.0 ],
									"text" : "if ($i1 > 2000) || ($i1 < -2000) then bang"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-61",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 220.0, 657.0, 34.0, 20.0 ],
									"text" : "print"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-60",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 513.75, 356.0, 34.0, 20.0 ],
									"text" : "print"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-51",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 282.0, 29.25, 20.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-49",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 324.0, 43.5, 50.0, 20.0 ],
									"text" : "del 100"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-47",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 221.75, 3.0, 64.0, 20.0 ],
									"text" : "r YouLose"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-43",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 390.75, 376.0, 61.0, 20.0 ],
									"text" : "s YouWin"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 73.5, 693.0, 66.0, 20.0 ],
									"text" : "s YouLose"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-32",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 349.75, 248.5, 32.5, 18.0 ],
									"text" : "0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-38",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 460.0, 356.0, 20.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-23",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 472.5, 393.0, 87.0, 18.0 ],
									"text" : "/maxtest/ Clap"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-46",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 63.0, 367.0, 226.0, 20.0 ],
									"text" : "if ($i1 < 2000 ) && ($i1 > -2000) then $i1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-44",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 390.75, 319.5, 103.0, 18.0 ],
									"text" : "/maxtest/ YouWin"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-40",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 390.75, 248.5, 59.25, 59.25 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-35",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 547.75, 81.0, 150.0, 20.0 ],
									"text" : "RESET BUTTON"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-27",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 422.25, 29.25, 125.5, 125.5 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-21",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 157.5, 693.0, 140.0, 20.0 ],
									"text" : "udpsend 127.0.0.1 5100"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-19",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 142.5, 651.0, 62.0, 32.0 ],
									"text" : "/maxtest/ YouLose"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-37",
									"maxclass" : "ezdac~",
									"numinlets" : 2,
									"numoutlets" : 0,
									"patching_rect" : [ 414.5, 561.5, 45.0, 45.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-33",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 390.75, 469.0, 34.0, 18.0 ],
									"text" : "start"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-30",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "bang" ],
									"patching_rect" : [ 400.0, 501.0, 74.0, 20.0 ],
									"text" : "play~ level1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-29",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 517.5, 501.0, 35.0, 18.0 ],
									"text" : "read"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-25",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"patching_rect" : [ 532.5, 552.0, 83.0, 20.0 ],
									"text" : "buffer~ level1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-10",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 358.5, 83.0, 32.5, 18.0 ],
									"text" : "0"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 312.5, 215.0, 107.0, 20.0 ],
									"text" : "if $i1 == 10 then 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 5,
									"numoutlets" : 4,
									"outlettype" : [ "int", "", "", "int" ],
									"patching_rect" : [ 312.5, 154.0, 73.0, 20.0 ],
									"text" : "counter 10"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 312.5, 295.0, 42.5, 42.5 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 305.0, 528.0, 50.0, 50.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 305.0, 487.0, 41.0, 20.0 ],
									"text" : "metro"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-70",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 237.5, 538.0, 32.5, 18.0 ],
									"text" : "0"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-68",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 43.5, 645.0, 50.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-66",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 15.75, 587.0, 88.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-45",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 119.0, 611.0, 120.0, 20.0 ],
									"text" : "if $i1 == 3 then bang"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-42",
									"maxclass" : "newobj",
									"numinlets" : 5,
									"numoutlets" : 4,
									"outlettype" : [ "int", "", "", "int" ],
									"patching_rect" : [ 142.5, 574.0, 73.0, 20.0 ],
									"text" : "counter 3"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-41",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 102.75, 552.0, 20.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-39",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 179.75, 487.0, 50.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-36",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 43.5, 518.0, 198.0, 20.0 ],
									"text" : "if ($i1 > 100) || ($i1 < -100) then $i1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-34",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 43.5, 487.0, 109.25, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-31",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 43.5, 456.0, 32.5, 20.0 ],
									"text" : "-"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-28",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 524.0, 418.0, 50.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-26",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 460.0, 418.0, 50.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-24",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 400.0, 418.0, 50.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-22",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 341.0, 418.0, 50.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-20",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 282.0, 418.0, 50.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-18",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 220.0, 418.0, 50.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-16",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 160.0, 418.0, 50.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-13",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 102.75, 418.0, 50.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "gswitch2",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 63.0, 287.0, 39.0, 32.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-7",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 43.5, 418.0, 50.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 10,
									"outlettype" : [ "", "", "", "", "", "", "", "", "", "" ],
									"patching_rect" : [ 102.75, 393.0, 140.5, 20.0 ],
									"text" : "bucket 10"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "float", "" ],
									"patching_rect" : [ 63.0, 329.5, 37.0, 20.0 ],
									"text" : "timer"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 63.0, 103.0, 168.0, 168.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "int", "int" ],
									"patching_rect" : [ 63.0, 64.0, 50.0, 20.0 ],
									"text" : "change"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 63.0, 40.0, 38.0, 20.0 ],
									"text" : "> -30"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-2",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 63.0, 3.0, 25.0, 25.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-1", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-1", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-1", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-1", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-1", 5 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-1", 6 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-1", 7 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-1", 8 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 3 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-83", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-61", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-70", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-87", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-34", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-40", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-41", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-68", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-44", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-44", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-60", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-44", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-85", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-44", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-45", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-46", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-46", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-46", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-47", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-49", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-49", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-51", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 3 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-70", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-80", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-83", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-83", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-83", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-85", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-83", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-87", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-88", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 350.0, 572.0, 69.0, 20.0 ],
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"description" : "",
						"digest" : "",
						"fontface" : 0,
						"fontname" : "Arial",
						"fontsize" : 12.0,
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p gettempo"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "levelmeter~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 350.0, 486.0, 128.0, 64.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "ezadc~",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 37.0, 103.0, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"frgb" : 0.0,
					"id" : "obj-14",
					"linecount" : 5,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 489.0, 613.0, 150.0, 73.0 ],
					"text" : "can you figure out how to use the drum to draw into the spectral envelope?\nCode above gives you the values x,yz for each stick"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 572.290527, 585.216797, 45.0, 20.0 ],
					"text" : "print R"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 512.518494, 586.250427, 43.0, 20.0 ],
					"text" : "print L"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"id" : "obj-42",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 572.523499, 564.550293, 43.0, 17.0 ],
					"text" : "r contR"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"id" : "obj-39",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 512.657715, 565.68457, 42.0, 17.0 ],
					"text" : "r contL"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"hidden" : 1,
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 147.0, 302.0, 72.0, 20.0 ],
					"text" : "prepend set"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"hidden" : 1,
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 147.0, 279.0, 30.470589, 20.0 ],
					"text" : "- 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 57.0, 471.0, 41.0, 20.0 ],
					"text" : "*~ 0.4"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"hidden" : 1,
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 256.0, 295.0, 70.0, 20.0 ],
					"text" : "loadmess 6"
				}

			}
, 			{
				"box" : 				{
					"arrowbgcolor" : [ 0.529412, 0.654902, 0.682353, 1.0 ],
					"fontface" : 1,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-51",
					"items" : [ "Through", ",", "Low", "Pass", ",", "High", "Pass", ",", "Brickwall", ",", "Notch", ",", "Nonporto", "Kwah", ",", "No", "Pass", ",", "Stardrive" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 257.0, 320.0, 123.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 1,
					"border" : 1,
					"id" : "obj-49",
					"maxclass" : "bpatcher",
					"name" : "IO.maxpat",
					"numinlets" : 2,
					"numoutlets" : 2,
					"offset" : [ -107.0, 0.0 ],
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 57.0, 541.0, 157.0, 164.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-45",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 278.0, 300.0, 69.0, 20.0 ],
					"text" : "Filter Type"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 57.0, 445.0, 101.0, 20.0 ],
					"text" : "pfft~ fp_fft 1024 2"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"compatibility" : 1,
					"contdata" : 1,
					"id" : "obj-27",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 139.0, 344.5, 332.0, 88.0 ],
					"setminmax" : [ 0.0, 1.0 ],
					"size" : 512
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.754706,
					"id" : "obj-26",
					"maxclass" : "preset",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "preset", "int", "preset", "int" ],
					"patching_rect" : [ 385.0, 324.0, 102.0, 17.0 ],
					"preset_data" : [ 						{
							"number" : 1,
							"data" : [ 516, "obj-27", "multislider", "list", 0.999998, 0.999998, 0.999998, 0.999998, 0.999998, 0.999998, 0.999998, 0.999998, 0.999998, 0.999998, 0.999998, 0.999998, 0.999998, 0.999998, 0.999998, 0.999998, 0.999998, 0.999998, 0.999998, 0.999998, 0.999998, 0.999998, 0.999998, 0.999998, 0.999998, 0.999998, 0.999998, 0.999998, 0.999998, 0.999998, 0.999998, 0.999998, 0.999998, 0.999998, 0.999998, 0.999998, 0.999998, 0.999998, 0.999998, 0.999998, 0.999998, 0.999998, 0.999998, 0.999998, 0.999998, 0.999998, 0.999998, 0.999998, 0.999998, 0.999998, 0.999998, 0.999998, 0.999998, 0.999998, 0.999998, 0.999998, 0.999998, 0.999998, 0.999998, 0.999998, 0.999998, 0.999998, 0.999998, 0.999998, 0.999998, 0.999998, 0.999998, 0.999998, 0.999998, 0.999998, 0.999998, 0.999998, 0.999998, 0.999998, 0.999998, 0.999998, 0.999998, 0.999998, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 ]
						}
, 						{
							"number" : 2,
							"data" : [ 516, "obj-27", "multislider", "list", 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.582677, 0.582677, 0.582677, 0.582677, 0.582677, 0.582677, 0.582677, 0.566929, 0.566929, 0.559055, 0.543307, 0.519685, 0.519685, 0.511811, 0.503937, 0.488189, 0.456693, 0.433071, 0.393701, 0.338583, 0.291339, 0.267717, 0.244094, 0.188976, 0.188976, 0.149606, 0.102362, 0.07874, 0.070866, 0.055118, 0.055118, 0.047244, 0.031496, 0.031496, 0.007874, 0.007874, 0.007874, 0.007874, 0.007874, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 ]
						}
, 						{
							"number" : 3,
							"data" : [ 516, "obj-27", "multislider", "list", 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.023622, 0.023622, 0.031496, 0.047244, 0.055118, 0.070866, 0.102362, 0.11811, 0.11811, 0.141732, 0.188976, 0.212598, 0.244094, 0.291339, 0.314961, 0.338583, 0.362205, 0.393701, 0.409449, 0.440945, 0.456693, 0.464567, 0.480315, 0.503937, 0.503937, 0.511811, 0.519685, 0.519685, 0.519685, 0.535433, 0.535433, 0.543307, 0.543307, 0.559055, 0.582677, 0.582677, 0.582677, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.606299, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.605426, 0.606202, 0.606977, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651, 0.604651 ]
						}
, 						{
							"number" : 4,
							"data" : [ 516, "obj-27", "multislider", "list", 0.456693, 0.456693, 0.456693, 0.456693, 0.456693, 0.456693, 0.456693, 0.456693, 0.456693, 0.456693, 0.456693, 0.456693, 0.456693, 0.456693, 0.456693, 0.456693, 0.456693, 0.456693, 0.456693, 0.456693, 0.456693, 0.456693, 0.456693, 0.456693, 0.456693, 0.456693, 0.456693, 0.456693, 0.456693, 0.456693, 0.456693, 0.456693, 0.456693, 0.456693, 0.456693, 0.456693, 0.456693, 0.456693, 0.456693, 0.456693, 0.456693, 0.456693, 0.456693, 0.456693, 0.456693, 0.456693, 0.456693, 0.456693, 0.456693, 0.456693, 0.456693, 0.456693, 0.456693, 0.456693, 0.456693, 0.456693, 0.456693, 0.456693, 0.456693, 0.456693, 0.456693, 0.456693, 0.456693, 0.456693, 0.456693, 0.456693, 0.456693, 0.456693, 0.456693, 0.456693, 0.456693, 0.456693, 0.456693, 0.456693, 0.456693, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 ]
						}
, 						{
							"number" : 5,
							"data" : [ 516, "obj-27", "multislider", "list", 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.023622, 0.023622, 0.023622, 0.023622, 0.023622, 0.023622, 0.031496, 0.031496, 0.023622, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.590551, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023, 0.593023 ]
						}
, 						{
							"number" : 6,
							"data" : [ 516, "obj-27", "multislider", "list", 1.0, 0.047244, 0.937008, 0.952756, 0.952756, 0.952756, 0.952756, 0.952756, 0.952756, 0.047244, 1.0, 0.299213, 0.299213, 0.299213, 0.299213, 0.299213, 0.92126, 0.905512, 0.905512, 0.314961, 0.047244, 0.322835, 0.322835, 1.0, 0.330709, 0.330709, 0.338583, 0.968504, 0.968504, 0.0, 0.590551, 0.590551, 0.606299, 0.622047, 0.637795, 0.645669, 0.346457, 0.377953, 0.401575, 0.425197, 0.440945, 0.464567, 0.488189, 0.511811, 0.07874, 0.07874, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 0.866142, 0.897638, 0.897638, 0.905512, 0.905512, 0.984252, 0.685039, 0.661417, 0.937008, 0.937008, 0.047244, 0.606299, 0.598425, 0.590551, 0.047244, 0.574803, 0.574803, 0.566929, 0.566929, 0.566929, 0.566929, 0.566929, 0.984252, 0.566929, 0.566929, 0.559055, 0.559055, 0.559055, 0.559055, 0.559055, 0.559055, 0.559055, 0.559055, 0.984252, 0.968504, 0.047244, 0.574803, 0.574803, 0.582677, 0.582677, 0.590551, 0.590551, 0.598425, 0.598425, 0.606299, 0.606299, 0.031496, 0.031496, 0.047244, 0.047244, 0.629921, 0.629921, 0.637795, 0.637795, 0.645669, 0.645669, 0.653543, 0.661417, 0.661417, 0.669291, 0.669291, 0.968504, 0.047244, 0.062992, 0.96063, 0.952756, 0.952756, 0.062992, 0.062992, 0.062992, 0.07874, 0.929134, 0.929134, 0.92126, 0.92126, 0.92126, 1.0, 1.0, 1.0, 0.094488, 1.0, 1.0, 0.133858, 1.0, 1.0, 1.0, 1.0, 1.0, 0.094488, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 0.094488, 0.11811, 0.086614, 0.07874, 0.07874, 0.07874, 0.984252, 0.07874, 0.07874, 0.07874, 0.07874, 0.07874, 0.07874, 0.07874, 0.07874, 0.086614, 0.086614, 0.094488, 0.094488, 0.102362, 0.110236, 0.07874, 0.11811, 0.125984, 0.133858, 1.0, 1.0, 1.0, 0.062992, 1.0, 1.0, 1.0, 0.07874, 0.07874, 0.07874, 1.0, 1.0, 1.0, 0.086614, 0.086614, 0.094488, 0.094488, 0.102362, 0.102362, 0.102362, 1.0, 1.0, 1.0, 1.0, 0.110236, 0.110236, 0.11811, 0.062992, 0.133858, 0.133858, 0.133858, 0.0, 0.0, 0.984252, 0.984252, 0.984252, 1.0, 0.015748, 0.015748, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 0.047244, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 0.047244, 0.07874, 0.070866, 0.062992, 0.062992, 0.015748, 0.015748, 0.047244, 0.047244, 0.968504, 0.047244, 0.047244, 0.047244, 0.047244, 0.047244, 1.0, 1.0, 1.0, 1.0, 1.0, 0.047244, 0.015748, 1.0, 1.0, 1.0, 1.0, 0.047244, 0.937008, 0.952756, 0.952756, 0.952756, 0.952756, 0.952756, 0.952756, 0.047244, 1.0, 0.299213, 0.299213, 0.299213, 0.299213, 0.299213, 0.92126, 0.905512, 0.905512, 0.314961, 0.047244, 0.322835, 0.322835, 1.0, 0.330709, 0.330709, 0.338583, 0.968504, 0.968504, 0.0, 0.590551, 0.590551, 0.606299, 0.622047, 0.637795, 0.645669, 0.346457, 0.377953, 0.401575, 0.425197, 0.440945, 0.464567, 0.488189, 0.511811, 0.07874, 0.07874, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 0.866142, 0.897638, 0.897638, 0.905512, 0.905512, 0.984252, 0.685039, 0.661417, 0.937008, 0.937008, 0.047244, 0.606299, 0.598425, 0.590551, 0.047244, 0.574803, 0.574803, 0.566929, 0.566929, 0.566929, 0.566929, 0.566929, 0.984252, 0.566929, 0.566929, 0.559055, 0.559055, 0.559055, 0.559055, 0.559055, 0.559055, 0.559055, 0.559055, 0.984252, 0.968504, 0.047244, 0.574803, 0.574803, 0.582677, 0.582677, 0.590551, 0.590551, 0.598425, 0.598425, 0.606299, 0.606299, 0.031496, 0.031496, 0.047244, 0.047244, 0.629921, 0.629921, 0.637795, 0.637795, 0.645669, 0.645669, 0.653543, 0.661417, 0.661417, 0.669291, 0.669291, 0.968504, 0.047244, 0.062992, 0.96063, 0.952756, 0.952756, 0.062992, 0.062992, 0.062992, 0.07874, 0.929134, 0.929134, 0.92126, 0.92126, 0.92126, 1.0, 1.0, 1.0, 0.094488, 1.0, 1.0, 0.133858, 1.0, 1.0, 1.0, 1.0, 1.0, 0.094488, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 0.094488, 0.11811, 0.086614, 0.07874, 0.07874, 0.07874, 0.984252, 0.07874, 0.07874, 0.07874, 0.07874, 0.07874, 0.07874, 0.07874, 0.07874, 0.086614, 0.086614, 0.094488, 0.094488, 0.102362, 0.110236, 0.07874, 0.11811, 0.125984, 0.133858, 1.0, 1.0, 1.0, 0.062992, 1.0, 1.0, 1.0, 0.07874, 0.07874, 0.07874, 1.0, 1.0, 1.0, 0.086614, 0.086614, 0.094488, 0.094488, 0.102362, 0.102362, 0.102362, 1.0, 1.0, 1.0, 1.0, 0.110236, 0.110236, 0.11811, 0.062992, 0.133858, 0.133858, 0.133858, 0.0, 0.0, 0.984252, 0.984252, 0.984252, 1.0, 0.015748, 0.015748, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 0.047244, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 0.047244, 0.07874, 0.070866, 0.062992, 0.062992, 0.015748, 0.015748, 0.047244, 0.047244, 0.968504, 0.047244, 0.047244, 0.047244, 0.047244, 0.047244, 1.0, 1.0, 1.0, 1.0, 1.0, 0.047244, 0.015748, 1.0, 1.0, 1.0, 1.0, 0.047244, 0.937008, 0.952756, 0.952756, 0.952756 ]
						}
, 						{
							"number" : 7,
							"data" : [ 516, "obj-27", "multislider", "list", 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 ]
						}
, 						{
							"number" : 8,
							"data" : [ 516, "obj-27", "multislider", "list", 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.709302, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.55814, 0.546512, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.767442, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.651163, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.837209, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.232558, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.755814, 0.395349, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.372093, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.732558, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.627907, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.348837, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.511628, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.244186, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 ]
						}
 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"hidden" : 1,
					"id" : "obj-25",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 385.0, 302.0, 30.470589, 20.0 ],
					"text" : "+ 1"
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"fontface" : 3,
					"fontname" : "Arial",
					"fontsize" : 14.0,
					"frgb" : 0.0,
					"id" : "obj-3",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 226.0, 514.0, 89.0, 23.0 ],
					"text" : "start audio",
					"textcolor" : [ 0.956863, 0.227451, 0.227451, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"fontname" : "Arial",
					"fontsize" : 20.0,
					"frgb" : 0.0,
					"id" : "obj-123",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 216.0, 512.0, 26.0, 29.0 ],
					"text" : "•",
					"textcolor" : [ 0.956863, 0.227451, 0.227451, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"fontface" : 3,
					"fontname" : "Arial",
					"fontsize" : 14.0,
					"frgb" : 0.0,
					"id" : "obj-52",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 482.0, 353.0, 140.0, 71.0 ],
					"text" : "choose \"No Pass\", then draw your own spectral envelope here.",
					"textcolor" : [ 0.956863, 0.227451, 0.227451, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"fontname" : "Arial",
					"fontsize" : 20.0,
					"frgb" : 0.0,
					"id" : "obj-53",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 472.0, 351.0, 26.0, 29.0 ],
					"text" : "•",
					"textcolor" : [ 0.956863, 0.227451, 0.227451, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"fontface" : 3,
					"fontname" : "Arial",
					"fontsize" : 14.0,
					"frgb" : 0.0,
					"id" : "obj-48",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 47.0, 114.0, 113.0, 23.0 ],
					"text" : "choose sounds",
					"textcolor" : [ 0.956863, 0.227451, 0.227451, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"fontname" : "Arial",
					"fontsize" : 20.0,
					"frgb" : 0.0,
					"id" : "obj-4",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 37.0, 112.0, 26.0, 29.0 ],
					"text" : "•",
					"textcolor" : [ 0.956863, 0.227451, 0.227451, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"fontface" : 3,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-110",
					"linecount" : 12,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 212.0, 103.0, 383.0, 172.0 ],
					"text" : "This graphic EQ implementation is based on a frequency-domain signal processing technique. The input signal is converted to a frequency-domain signal using the Fast Fourier Transform (FFT). It is then convolved (complex multiply) with another frequency-domain signal, based on a function describing the desired spectral attenuation. The resulting signal is then converted back to a time-domain signal using the inverse FFT (IFFT). The number of \"bands\" in this implementation is given by the FFT's window size. In this case, it is 1024 samples long, yielding 1024 / 2 = 512 bands, evenly covering the frequency range (sampling rate / 2). Each band's width in Hz is (1/2 * sampling rate) / 512. Probably around 43 Hz in your case.",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"frgb" : 0.0,
					"id" : "obj-47",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 400.0, 39.0, 94.0, 18.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 852.0, 213.0, 90.0, 29.0 ],
					"text" : "Z. Setel & C. Lippe",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"fontface" : 2,
					"fontname" : "Arial",
					"fontsize" : 12.754706,
					"frgb" : 0.0,
					"id" : "obj-80",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 20.0, 41.0, 289.0, 21.0 ],
					"text" : "Max Examples",
					"textcolor" : [ 0.93, 0.93, 0.97, 1.0 ],
					"varname" : "autohelp_top_digest"
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"fontface" : 3,
					"fontname" : "Arial",
					"fontsize" : 20.871338,
					"frgb" : 0.0,
					"id" : "obj-83",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 21.0, 12.0, 181.0, 30.0 ],
					"text" : "Forbidden Planet",
					"textcolor" : [ 0.93, 0.93, 0.97, 1.0 ],
					"varname" : "autohelp_top_title"
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"grad1" : [ 0.27, 0.35, 0.47, 1.0 ],
					"grad2" : [ 0.733333, 0.733333, 0.733333, 1.0 ],
					"id" : "obj-109",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 10.0, 484.0, 52.0 ],
					"varname" : "autohelp_top_panel"
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"grad1" : [ 0.27, 0.35, 0.47, 1.0 ],
					"grad2" : [ 0.733333, 0.733333, 0.733333, 1.0 ],
					"id" : "obj-111",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 204.0, 82.0, 400.0, 209.0 ],
					"varname" : "autohelp_top_panel[3]"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-26", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-6", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "fp_fft.maxpat",
				"bootpath" : "/PROGRA~1/CYCLIN~1/MAX6~1.1/examples/fft-fun/lib",
				"patcherrelativepath" : "../../../PROGRA~1/CYCLIN~1/MAX6~1.1/examples/fft-fun/lib",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "IO.maxpat",
				"bootpath" : "/PROGRA~1/CYCLIN~1/MAX6~1.1/examples/utilities/input_output IO/lib",
				"patcherrelativepath" : "../../../PROGRA~1/CYCLIN~1/MAX6~1.1/examples/utilities/input_output IO/lib",
				"type" : "JSON",
				"implicit" : 1
			}
 ]
	}

}
