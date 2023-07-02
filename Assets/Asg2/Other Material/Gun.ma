//Maya ASCII 2023 scene
//Name: Gun.ma
//Last modified: Fri, Jun 30, 2023 04:22:22 PM
//Codeset: 1252
requires maya "2023";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202211021031-847a9f9623";
fileInfo "osv" "Windows 10 Home v2009 (Build: 19045)";
fileInfo "UUID" "65DCDE3A-4972-1E60-E7B0-31AA7CFEAA85";
createNode transform -s -n "persp";
	rename -uid "5E664CB5-4D92-FE0E-694E-7A9671BE3C90";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1492.3967500343135 634.06831418616184 2609.3629878543325 ;
	setAttr ".r" -type "double3" -3.3383527296049564 36.199999999996663 2.4633760124257205e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "89612FE2-426D-F672-EC75-F6BDC8A63712";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".fcp" 100000;
	setAttr ".coi" 3179.5087232214528;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 373.9066030250363 0 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "5ED5DD48-4E92-EC85-454C-EEA5ECCD78BD";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 5000.1000000000004 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "208B9BE6-4B82-E0DC-887C-B98EC314BA74";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 5000.1000000000004;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "E5969D20-46A1-FE0C-7981-21B741DB9B5B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 5000.1000000000004 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "8798F65A-4B8C-9369-74FA-57A5D2EF78BA";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 5000.1000000000004;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "4BBF74B2-456E-F8F3-7AEA-D687AF078648";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5000.1000000000004 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "22D8C6DA-4DCC-A3B8-4EC3-ED8AE72AD6A8";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 5000.1000000000004;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "Gun";
	rename -uid "2CEB4866-4EC2-AAE7-71A9-43959855E048";
	setAttr ".t" -type "double3" 0 373.9066030250363 0 ;
	setAttr ".s" -type "double3" 151.26998024874376 151.26998024874376 151.26998024874376 ;
createNode mesh -n "GunShape" -p "Gun";
	rename -uid "CAEFC3D7-4912-543D-1BCF-5D991A0E230C";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.49999988079071045 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".db" yes;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "06D1684F-4033-3A79-3B8D-CC89E67C421B";
	setAttr -s 4 ".lnk";
	setAttr -s 4 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "1B741268-4745-EA92-5CD3-5FA85AAFDD7A";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "28DBC7F8-4D90-AEC0-4B7F-A2BD717FE0D7";
createNode displayLayerManager -n "layerManager";
	rename -uid "A9BAFE0D-4ECC-F8CB-7A1C-8ABAEB52E91B";
createNode displayLayer -n "defaultLayer";
	rename -uid "7508078A-48A8-7FF8-7525-AD851F3EFCAF";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "E7B2C261-4DC9-E3D5-5E97-5C8C5A112088";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "9D2B7EEB-4F67-241A-4DB6-49A3779FC3DE";
	setAttr ".g" yes;
createNode polyCube -n "polyCube1";
	rename -uid "5A372BF1-4BB6-519D-C688-4A8A12916793";
	setAttr ".cuv" 4;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "66425BED-46C3-6600-30DA-1DA6F5C716EC";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n"
		+ "            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n"
		+ "            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n"
		+ "        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n"
		+ "            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n"
		+ "            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n"
		+ "            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n"
		+ "            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n"
		+ "            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n"
		+ "            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1119\n            -height 733\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n"
		+ "            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n"
		+ "            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n"
		+ "            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n"
		+ "                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n"
		+ "                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n"
		+ "                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n"
		+ "                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n"
		+ "                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n"
		+ "\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n"
		+ "                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n"
		+ "                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n"
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1119\\n    -height 733\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1119\\n    -height 733\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 100 -size 5000 -divisions 1 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "4E88231F-4173-AD85-102C-29B05A423BA0";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 62 -ast 0 -aet 62 ";
	setAttr ".st" 6;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "2C2A4493-49BF-F314-CA26-138DF2B680F2";
	setAttr ".ics" -type "componentList" 1 "f[5]";
	setAttr ".ix" -type "matrix" 151.26998024874376 0 0 0 0 151.26998024874376 0 0 0 0 151.26998024874376 0
		 0 373.9066030250363 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -771.52667 373.90662 0 ;
	setAttr ".rs" 54362;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -771.52665533414097 298.27161290066442 -75.634990124371882 ;
	setAttr ".cbx" -type "double3" -771.52665533414097 449.54159314940819 75.634990124371882 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak1";
	rename -uid "B348E8B9-4FC8-6537-78E9-10887E3C0D46";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[0]" -type "float3" -4.6003289 0 0 ;
	setAttr ".tk[2]" -type "float3" -4.6003289 0 0 ;
	setAttr ".tk[4]" -type "float3" -4.6003289 0 0 ;
	setAttr ".tk[6]" -type "float3" -4.6003289 0 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "AA3D8128-4536-92CB-0C8A-54AC73542ED6";
	setAttr ".ics" -type "componentList" 1 "f[5]";
	setAttr ".ix" -type "matrix" 151.26998024874376 0 0 0 0 151.26998024874376 0 0 0 0 151.26998024874376 0
		 0 373.9066030250363 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -771.52667 373.90662 0 ;
	setAttr ".rs" 49435;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -771.52665533414097 338.14914197816626 -35.757483587853642 ;
	setAttr ".cbx" -type "double3" -771.52665533414097 409.66410013748009 35.757483587853642 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak2";
	rename -uid "57DCE5E7-4510-3FAE-CE1B-5DB8ECCA40C5";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[8]" -type "float3" -2.6645353e-15 0.26361802 0.26361811 ;
	setAttr ".tk[9]" -type "float3" -2.6645353e-15 0.26361802 -0.26361811 ;
	setAttr ".tk[10]" -type "float3" -2.6645353e-15 -0.26361826 -0.26361811 ;
	setAttr ".tk[11]" -type "float3" -2.6645353e-15 -0.26361826 0.26361811 ;
createNode polySubdFace -n "polySubdFace1";
	rename -uid "789B19DB-4C82-6913-2591-7FA143C60B0D";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".duv" 8;
	setAttr ".sbm" 1;
createNode polyTweak -n "polyTweak3";
	rename -uid "9EC558C8-4A44-3C7C-D153-20A5A1645518";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[12]" -type "float3" -3.093745 0 0 ;
	setAttr ".tk[13]" -type "float3" -3.093745 0 0 ;
	setAttr ".tk[14]" -type "float3" -3.093745 0 0 ;
	setAttr ".tk[15]" -type "float3" -3.093745 0 0 ;
createNode polySubdFace -n "polySubdFace2";
	rename -uid "F5518531-4685-CEA1-7F0E-C49A60F3A80F";
	setAttr ".ics" -type "componentList" 1 "f[19]";
	setAttr ".duv" 3;
	setAttr ".sbm" 1;
createNode polySubdFace -n "polySubdFace3";
	rename -uid "A16A4382-43D1-DD2F-B3B4-0C89C71C0A63";
	setAttr ".ics" -type "componentList" 1 "f[15]";
	setAttr ".duv" 3;
	setAttr ".sbm" 1;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "9A4DFC42-4E4E-FD4B-FC90-FB9B46C84BC1";
	setAttr ".ics" -type "componentList" 1 "f[22]";
	setAttr ".ix" -type "matrix" 151.26998024874376 0 0 0 0 151.26998024874376 0 0 0 0 151.26998024874376 0
		 0 373.9066030250363 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -506.78864 298.2717 2.2540983e-06 ;
	setAttr ".rs" 35245;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -559.73626200229955 298.2716850318119 -47.336412680157679 ;
	setAttr ".cbx" -type "double3" -453.84102927080517 298.27168954000865 47.336417188354403 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak4";
	rename -uid "6962B307-4EC1-2A4A-75CF-D6B47CBBA48A";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk";
	setAttr ".tk[30]" -type "float3" 0 0 -0.14626004 ;
	setAttr ".tk[31]" -type "float3" 0 0 0.14626004 ;
	setAttr ".tk[32]" -type "float3" 0 0 -0.14626004 ;
	setAttr ".tk[33]" -type "float3" 0 0 0.14626004 ;
	setAttr ".tk[34]" -type "float3" 0 0 -0.14626004 ;
	setAttr ".tk[35]" -type "float3" 0 0 0.14626004 ;
	setAttr ".tk[36]" -type "float3" 0 0 -0.14626004 ;
	setAttr ".tk[37]" -type "float3" 0 0 0.14626004 ;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	rename -uid "17D5D653-4F36-24A8-7986-F6983A02990C";
	setAttr ".ics" -type "componentList" 1 "f[24]";
	setAttr ".ix" -type "matrix" 151.26998024874376 0 0 0 0 151.26998024874376 0 0 0 0 151.26998024874376 0
		 0 373.9066030250363 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -83.207809 298.27173 2.2540983e-06 ;
	setAttr ".rs" 52175;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -136.1554122238629 298.27172109738569 -47.336412680157679 ;
	setAttr ".cbx" -type "double3" -30.260213303843862 298.27172109738569 47.336417188354403 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak5";
	rename -uid "F2B5D8E9-4F8A-C301-450B-2BB91B92C1D7";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[38]" -type "float3" -0.28351289 -1.9331007 0 ;
	setAttr ".tk[39]" -type "float3" -0.28351289 -1.9331007 0 ;
	setAttr ".tk[40]" -type "float3" -0.28351289 -1.9331007 0 ;
	setAttr ".tk[41]" -type "float3" -0.28351289 -1.9331007 0 ;
createNode lambert -n "lambert2";
	rename -uid "CFF42FF9-4036-9D91-C3DC-13BE1C83BABA";
	setAttr ".c" -type "float3" 0.0601 0.052999999 0.052999999 ;
createNode shadingEngine -n "lambert2SG";
	rename -uid "F306D0F0-4282-56EE-9DF5-4A880C697DED";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "C500BA79-497C-212F-4AE4-7C85A2D73376";
createNode groupId -n "groupId2";
	rename -uid "28C2353B-4328-5240-42F7-B295D70A3731";
	setAttr ".ihi" 0;
createNode lambert -n "lambert3";
	rename -uid "D90003E5-45D6-6859-2AD6-CCBAB09FDC99";
	setAttr ".c" -type "float3" 0.063500002 0.40360001 0.54000002 ;
createNode shadingEngine -n "lambert3SG";
	rename -uid "5EFC3350-45F6-1BED-7B91-1B95D1326D4E";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "C3D7A5CE-424E-999D-D0CF-1A96F688D02C";
createNode groupParts -n "groupParts1";
	rename -uid "8938C844-4A33-6BF8-77FB-6097F2760B1A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 4 "f[0:4]" "f[6:9]" "f[14:21]" "f[23]";
	setAttr ".irc" -type "componentList" 4 "f[5]" "f[10:13]" "f[22]" "f[24:32]";
createNode groupId -n "groupId1";
	rename -uid "470F4C10-4D7D-4711-C2FA-6AA1181EF4E9";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "71D702F7-477A-BE0C-ADC5-ECADB6D6E286";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 4 "f[5]" "f[10:13]" "f[22]" "f[24:32]";
createNode groupId -n "groupId3";
	rename -uid "1941F472-40B2-FBBC-5DCC-0EBFDAD6069E";
	setAttr ".ihi" 0;
createNode polyAutoProj -n "polyAutoProj1";
	rename -uid "E979132F-409E-D5D3-0553-F28EF727B040";
	setAttr ".cch" yes;
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:32]";
	setAttr ".ix" -type "matrix" 151.26998024874376 0 0 0 0 151.26998024874376 0 0 0 0 151.26998024874376 0
		 0 373.9066030250363 0 1;
	setAttr ".s" -type "double3" 1315.1523534104413 1315.1523534104413 1315.1523534104413 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweak -n "polyTweak6";
	rename -uid "2A0216F2-4546-9872-B52B-8AA5453446D2";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[42]" -type "float3" 0 -1.9331005 0 ;
	setAttr ".tk[43]" -type "float3" 0 -1.9331005 0 ;
	setAttr ".tk[44]" -type "float3" 0 -1.9331005 0 ;
	setAttr ".tk[45]" -type "float3" 0 -1.9331005 0 ;
createNode polyPlanarProj -n "polyPlanarProj1";
	rename -uid "481789E0-4E19-28D9-E214-DF82224E32B6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:32]";
	setAttr ".ix" -type "matrix" 151.26998024874376 0 0 0 0 151.26998024874376 0 0 0 0 151.26998024874376 0
		 0 373.9066030250363 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -557.0721435546875 223.64314270019531 14.040481567382812 ;
	setAttr ".ro" -type "double3" -3.3383527079020117 36.199998913936263 1.7594714680185653e-07 ;
	setAttr ".ps" -type "double2" 1127.0647916175601 474.20957109129267 ;
	setAttr ".per" yes;
	setAttr ".cam" -type "matrix" 1.5690895318984985 -0.10208997130393982 -0.58960461616516113 -0.58960342407226562
		 -7.1953488451201063e-18 2.9633574485778809 -0.058232400566339493 -0.05823228508234024
		 -1.1483999490737915 -0.13948826491832733 -0.80559253692626953 -0.8055909276008606
		 654.88818359375 -1362.6368408203125 3018.730712890625 3018.9248046875;
	setAttr ".prgt" 1119;
	setAttr ".ptop" 733;
createNode polyAutoProj -n "polyAutoProj2";
	rename -uid "47869A4B-4135-0FFD-D210-54B9CACCF2BE";
	setAttr ".cch" yes;
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:32]";
	setAttr ".ix" -type "matrix" 151.26998024874376 0 0 0 0 151.26998024874376 0 0 0 0 151.26998024874376 0
		 0 373.9066030250363 0 1;
	setAttr ".s" -type "double3" 1315.1523534104413 1315.1523534104413 1315.1523534104413 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "8FF8D7E6-4705-9CD9-A67C-4EA33AC1AE1C";
	setAttr ".uopa" yes;
	setAttr -s 27 ".uvtk";
	setAttr ".uvtk[36]" -type "float2" -0.54915851 0 ;
	setAttr ".uvtk[37]" -type "float2" -0.54915851 0 ;
	setAttr ".uvtk[38]" -type "float2" -0.54915851 0 ;
	setAttr ".uvtk[39]" -type "float2" -0.54915851 0 ;
	setAttr ".uvtk[40]" -type "float2" -0.54915851 0 ;
	setAttr ".uvtk[41]" -type "float2" -0.54915851 0 ;
	setAttr ".uvtk[42]" -type "float2" -0.54915851 0 ;
	setAttr ".uvtk[43]" -type "float2" -0.54915851 0 ;
	setAttr ".uvtk[44]" -type "float2" -0.54915851 0 ;
	setAttr ".uvtk[45]" -type "float2" -0.54915851 0 ;
	setAttr ".uvtk[46]" -type "float2" -0.54915851 0 ;
	setAttr ".uvtk[47]" -type "float2" -0.54915851 0 ;
	setAttr ".uvtk[48]" -type "float2" -0.54915851 0 ;
	setAttr ".uvtk[49]" -type "float2" -0.54915851 0 ;
	setAttr ".uvtk[50]" -type "float2" -0.54915851 0 ;
	setAttr ".uvtk[51]" -type "float2" -0.54915851 0 ;
	setAttr ".uvtk[52]" -type "float2" -0.54915851 -1.4901161e-08 ;
	setAttr ".uvtk[53]" -type "float2" -0.54915851 -1.4901161e-08 ;
	setAttr ".uvtk[54]" -type "float2" -0.54915851 -1.4901161e-08 ;
	setAttr ".uvtk[55]" -type "float2" -0.54915851 -1.4901161e-08 ;
	setAttr ".uvtk[56]" -type "float2" -0.54915851 1.4901161e-08 ;
	setAttr ".uvtk[57]" -type "float2" -0.54915851 1.4901161e-08 ;
	setAttr ".uvtk[58]" -type "float2" -0.54915851 1.4901161e-08 ;
	setAttr ".uvtk[59]" -type "float2" -0.54915851 1.4901161e-08 ;
	setAttr ".uvtk[60]" -type "float2" -0.54915851 -2.0721927e-08 ;
	setAttr ".uvtk[61]" -type "float2" -0.54915851 -2.0721927e-08 ;
createNode polyMapSewMove -n "polyMapSewMove1";
	rename -uid "989A52DF-4411-3008-A000-6C91C0D3BFDE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[0]" "e[35:41]";
createNode polyTweakUV -n "polyTweakUV2";
	rename -uid "FA7E1DE4-4E69-D2F2-6BD7-D7B723B2733B";
	setAttr ".uopa" yes;
	setAttr -s 5 ".uvtk";
	setAttr ".uvtk[32]" -type "float2" -0.0075977594 -2.9074727e-06 ;
	setAttr ".uvtk[33]" -type "float2" -0.0075977594 -2.8818613e-06 ;
	setAttr ".uvtk[34]" -type "float2" -0.0075977594 -2.8818613e-06 ;
	setAttr ".uvtk[35]" -type "float2" -0.0075977594 -2.9074727e-06 ;
createNode polyMapSewMove -n "polyMapSewMove2";
	rename -uid "812E76EE-4C54-D46E-89D4-7289E10E6967";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[1]";
createNode polyTweakUV -n "polyTweakUV3";
	rename -uid "89A198DA-4966-8228-FB7D-F7A855249E57";
	setAttr ".uopa" yes;
	setAttr -s 12 ".uvtk";
	setAttr ".uvtk[78]" -type "float2" -0.015009671 1.7751474e-05 ;
	setAttr ".uvtk[79]" -type "float2" -0.015009671 -2.9115472e-06 ;
	setAttr ".uvtk[80]" -type "float2" -0.015005976 -2.9115472e-06 ;
	setAttr ".uvtk[81]" -type "float2" -0.015005976 -3.1618401e-07 ;
	setAttr ".uvtk[82]" -type "float2" -0.015005976 2.2691675e-06 ;
	setAttr ".uvtk[83]" -type "float2" -0.015005976 4.8470683e-06 ;
	setAttr ".uvtk[84]" -type "float2" -0.015005976 7.4398704e-06 ;
	setAttr ".uvtk[85]" -type "float2" -0.015005976 1.0032672e-05 ;
	setAttr ".uvtk[86]" -type "float2" -0.015005976 1.2625474e-05 ;
	setAttr ".uvtk[87]" -type "float2" -0.015005976 1.5188474e-05 ;
	setAttr ".uvtk[88]" -type "float2" -0.015005976 1.7751474e-05 ;
createNode polyMapSewMove -n "polyMapSewMove3";
	rename -uid "A0E8CA14-4DAF-7AC7-0A2D-79BC06388638";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[2]";
createNode polyTweakUV -n "polyTweakUV4";
	rename -uid "EF0A6B2A-4DDD-55E9-D34F-4B8D9A112CA3";
	setAttr ".uopa" yes;
	setAttr -s 44 ".uvtk";
	setAttr ".uvtk[32]" -type "float2" 0.015204467 -0.37467146 ;
	setAttr ".uvtk[33]" -type "float2" 0.015204467 0.018242111 ;
	setAttr ".uvtk[34]" -type "float2" -0.054950409 0.018242106 ;
	setAttr ".uvtk[35]" -type "float2" -0.054950409 -0.37467146 ;
	setAttr ".uvtk[36]" -type "float2" 0.15552247 -0.37467027 ;
	setAttr ".uvtk[37]" -type "float2" 0.15552247 -0.32555741 ;
	setAttr ".uvtk[38]" -type "float2" 0.085362114 -0.32555804 ;
	setAttr ".uvtk[39]" -type "float2" 0.085362114 -0.37467086 ;
	setAttr ".uvtk[40]" -type "float2" 0.15552247 -0.27644187 ;
	setAttr ".uvtk[41]" -type "float2" 0.14239457 -0.27644187 ;
	setAttr ".uvtk[42]" -type "float2" 0.098487265 -0.27644187 ;
	setAttr ".uvtk[43]" -type "float2" 0.085362114 -0.27644107 ;
	setAttr ".uvtk[44]" -type "float2" 0.14239457 -0.22732627 ;
	setAttr ".uvtk[45]" -type "float2" 0.15552247 -0.22732627 ;
	setAttr ".uvtk[46]" -type "float2" 0.098487265 -0.22732627 ;
	setAttr ".uvtk[47]" -type "float2" 0.085362114 -0.22732687 ;
	setAttr ".uvtk[48]" -type "float2" 0.15552247 -0.17821348 ;
	setAttr ".uvtk[49]" -type "float2" 0.085362114 -0.17821407 ;
	setAttr ".uvtk[50]" -type "float2" 0.15552247 -0.12909788 ;
	setAttr ".uvtk[51]" -type "float2" 0.085362114 -0.1290985 ;
	setAttr ".uvtk[52]" -type "float2" 0.15552247 -0.079985082 ;
	setAttr ".uvtk[53]" -type "float2" 0.14239457 -0.079985082 ;
	setAttr ".uvtk[54]" -type "float2" 0.098487265 -0.079985082 ;
	setAttr ".uvtk[55]" -type "float2" 0.085362114 -0.079984307 ;
	setAttr ".uvtk[56]" -type "float2" 0.14239457 -0.030872256 ;
	setAttr ".uvtk[57]" -type "float2" 0.15552247 -0.030872256 ;
	setAttr ".uvtk[58]" -type "float2" 0.098487265 -0.030872256 ;
	setAttr ".uvtk[59]" -type "float2" 0.085362114 -0.030871481 ;
	setAttr ".uvtk[60]" -type "float2" 0.15552247 0.018240586 ;
	setAttr ".uvtk[61]" -type "float2" 0.085362114 0.018241351 ;
	setAttr ".uvtk[62]" -type "float2" 0.27090681 -2.0721927e-08 ;
	setAttr ".uvtk[63]" -type "float2" 0.27090997 -2.0721927e-08 ;
	setAttr ".uvtk[64]" -type "float2" 0.27090997 2.0623207e-05 ;
	setAttr ".uvtk[65]" -type "float2" 0.27090681 2.0623207e-05 ;
	setAttr ".uvtk[78]" -type "float2" -0.12512928 0.01824211 ;
	setAttr ".uvtk[79]" -type "float2" -0.12512928 -0.030861072 ;
	setAttr ".uvtk[80]" -type "float2" -0.12512928 -0.07996428 ;
	setAttr ".uvtk[81]" -type "float2" -0.12512928 -0.1290895 ;
	setAttr ".uvtk[82]" -type "float2" -0.12512928 -0.1782147 ;
	setAttr ".uvtk[83]" -type "float2" -0.12512928 -0.2273179 ;
	setAttr ".uvtk[84]" -type "float2" -0.12512928 -0.27644306 ;
	setAttr ".uvtk[85]" -type "float2" -0.12512928 -0.32556826 ;
	setAttr ".uvtk[86]" -type "float2" -0.12512928 -0.37467146 ;
createNode polyMapSewMove -n "polyMapSewMove4";
	rename -uid "6FCCB69C-422E-6DEF-2680-D189E852BEE4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[20]";
createNode polyTweakUV -n "polyTweakUV5";
	rename -uid "25136215-4E4B-DC2E-48D2-F4A84B5FE81D";
	setAttr ".uopa" yes;
	setAttr -s 5 ".uvtk";
	setAttr ".uvtk[87]" -type "float2" 0.26362193 5.1259995e-06 ;
	setAttr ".uvtk[88]" -type "float2" 0.26362348 5.1259995e-06 ;
	setAttr ".uvtk[89]" -type "float2" 0.26362348 1.5459955e-05 ;
	setAttr ".uvtk[90]" -type "float2" 0.26362193 1.5459955e-05 ;
createNode polyMapSewMove -n "polyMapSewMove5";
	rename -uid "69732FAC-4380-7B85-6D22-6FADB8A8C542";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[21]";
createNode polyTweakUV -n "polyTweakUV6";
	rename -uid "9B7DF034-42C4-F21F-D992-F7831ECB7C15";
	setAttr ".uopa" yes;
	setAttr -s 5 ".uvtk";
	setAttr ".uvtk[66]" -type "float2" 0.25634056 -2.0721927e-08 ;
	setAttr ".uvtk[67]" -type "float2" 0.25634366 -2.0721927e-08 ;
	setAttr ".uvtk[68]" -type "float2" 0.25634366 2.0610401e-05 ;
	setAttr ".uvtk[69]" -type "float2" 0.25634056 2.0610401e-05 ;
createNode polyMapSewMove -n "polyMapSewMove6";
	rename -uid "E59F9049-4846-AF3F-4D30-BE9C36A24AFE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[23]";
createNode polyTweakUV -n "polyTweakUV7";
	rename -uid "B270F79B-4227-183D-263B-30AAD89BBE32";
	setAttr ".uopa" yes;
	setAttr -s 15 ".uvtk";
	setAttr ".uvtk[24]" -type "float2" 0.0060750842 -0.33007318 ;
	setAttr ".uvtk[25]" -type "float2" 0.0060750842 -0.33007318 ;
	setAttr ".uvtk[26]" -type "float2" 0.0060750842 -0.33007318 ;
	setAttr ".uvtk[27]" -type "float2" 0.0060750842 -0.33007318 ;
	setAttr ".uvtk[62]" -type "float2" -0.71369863 0.44094187 ;
	setAttr ".uvtk[63]" -type "float2" -0.739106 0.44094187 ;
	setAttr ".uvtk[64]" -type "float2" -0.73910594 0.27467978 ;
	setAttr ".uvtk[65]" -type "float2" -0.71369863 0.27467978 ;
	setAttr ".uvtk[66]" -type "float2" -0.76451474 0.44094187 ;
	setAttr ".uvtk[67]" -type "float2" -0.78992629 0.44094187 ;
	setAttr ".uvtk[68]" -type "float2" -0.78992629 0.27467978 ;
	setAttr ".uvtk[69]" -type "float2" -0.76451474 0.27467978 ;
	setAttr ".uvtk[87]" -type "float2" -0.68828833 0.44094187 ;
	setAttr ".uvtk[88]" -type "float2" -0.68828833 0.27467984 ;
createNode polyMapSewMove -n "polyMapSewMove7";
	rename -uid "92F90E9D-4CBD-47F7-E193-1F95263EA42A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[69]";
createNode polyTweakUV -n "polyTweakUV8";
	rename -uid "25CD7466-4015-2566-926E-B99A448B1BDF";
	setAttr ".uopa" yes;
	setAttr -s 5 ".uvtk";
	setAttr ".uvtk[99]" -type "float2" 0.10434499 -0.075502515 ;
	setAttr ".uvtk[100]" -type "float2" -0.080024004 -0.075502396 ;
	setAttr ".uvtk[101]" -type "float2" -0.080024004 -0.58463347 ;
	setAttr ".uvtk[102]" -type "float2" 0.10434499 -0.58463347 ;
createNode polyMapSewMove -n "polyMapSewMove8";
	rename -uid "A2BE93A3-4F4D-6496-DD9B-7A87B0F1F528";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[72]";
createNode polyTweakUV -n "polyTweakUV9";
	rename -uid "FDB70896-407A-1CD1-9375-F4BCDA7190C1";
	setAttr ".uopa" yes;
	setAttr -s 5 ".uvtk";
	setAttr ".uvtk[28]" -type "float2" 0.018235594 -0.33006269 ;
	setAttr ".uvtk[29]" -type "float2" 0.018235594 -0.33006269 ;
	setAttr ".uvtk[30]" -type "float2" 0.018235594 -0.33006269 ;
	setAttr ".uvtk[31]" -type "float2" 0.018235594 -0.33006269 ;
createNode polyMapSewMove -n "polyMapSewMove9";
	rename -uid "6AD0B89E-45F7-D349-2D83-3BB4FC20798F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[74]";
createNode polyTweakUV -n "polyTweakUV10";
	rename -uid "938427E5-44D6-EDC5-0567-93ADE91C84F8";
	setAttr ".uopa" yes;
	setAttr -s 13 ".uvtk";
	setAttr ".uvtk[20]" -type "float2" 0.11693913 -0.25456035 ;
	setAttr ".uvtk[21]" -type "float2" 0.28177696 -0.25456035 ;
	setAttr ".uvtk[22]" -type "float2" 0.28177696 0.25457072 ;
	setAttr ".uvtk[23]" -type "float2" 0.11693913 0.25457072 ;
	setAttr ".uvtk[89]" -type "float2" -0.018669188 0 ;
	setAttr ".uvtk[90]" -type "float2" -0.018669188 0 ;
	setAttr ".uvtk[91]" -type "float2" 0.018669188 0 ;
	setAttr ".uvtk[92]" -type "float2" 0.018669188 0 ;
	setAttr ".uvtk[93]" -type "float2" -0.018669128 0 ;
	setAttr ".uvtk[94]" -type "float2" -0.018669128 0 ;
	setAttr ".uvtk[95]" -type "float2" 0.018669188 0 ;
	setAttr ".uvtk[96]" -type "float2" 0.018669188 0 ;
createNode polyMapSewMove -n "polyMapSewMove10";
	rename -uid "4E02927D-4BE0-980C-9D26-C09BE33C449D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[66]";
createNode polyTweakUV -n "polyTweakUV11";
	rename -uid "7E154DAE-48BA-5489-FBEC-00B1575AA0C7";
	setAttr ".uopa" yes;
	setAttr -s 5 ".uvtk";
	setAttr ".uvtk[16]" -type "float2" -0.28177214 -0.10168685 ;
	setAttr ".uvtk[17]" -type "float2" -0.11694455 -0.10168709 ;
	setAttr ".uvtk[18]" -type "float2" -0.11694384 0.407444 ;
	setAttr ".uvtk[19]" -type "float2" -0.28177142 0.40744424 ;
createNode polyMapSewMove -n "polyMapSewMove11";
	rename -uid "0E0E257C-489F-0D18-A9DF-6381B4FD78ED";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[64]";
createNode polyTweakUV -n "polyTweakUV12";
	rename -uid "B1580F6C-406C-F268-C6E2-C38E5637FD0A";
	setAttr ".uopa" yes;
	setAttr -s 5 ".uvtk";
	setAttr ".uvtk[89]" -type "float2" 0.016919434 0.15683231 ;
	setAttr ".uvtk[90]" -type "float2" 0.20129877 0.15683231 ;
	setAttr ".uvtk[91]" -type "float2" 0.20129877 0.66596341 ;
	setAttr ".uvtk[92]" -type "float2" 0.016919434 0.66596341 ;
createNode polyMapSewMove -n "polyMapSewMove12";
	rename -uid "ED394928-4384-9944-0492-E6AC31A8589F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[62]";
createNode polyTweakUV -n "polyTweakUV13";
	rename -uid "B4492004-42C2-5F1B-4BE8-BA886ABB80AB";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk[0:3]" -type "float2" -0.084085003 -0.7232157 -0.21576603
		 -0.78474116 -0.15423816 -0.91642731 -0.022557136 -0.85490185;
createNode polyMapSewMove -n "polyMapSewMove13";
	rename -uid "CF7E9ECD-409D-A4D8-5E43-F2A13422B6D7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[5]";
createNode polyTweakUV -n "polyTweakUV14";
	rename -uid "D149B3CB-4DFD-1790-B175-938C3009F4B1";
	setAttr ".uopa" yes;
	setAttr -s 9 ".uvtk";
	setAttr ".uvtk[8]" -type "float2" 0.053685926 -0.44878876 ;
	setAttr ".uvtk[9]" -type "float2" 0.053685926 -0.37863353 ;
	setAttr ".uvtk[10]" -type "float2" 0.035196375 -0.39712855 ;
	setAttr ".uvtk[11]" -type "float2" 0.035196375 -0.43029919 ;
	setAttr ".uvtk[12]" -type "float2" -0.016466562 -0.37863353 ;
	setAttr ".uvtk[13]" -type "float2" 0.0020229779 -0.39712855 ;
	setAttr ".uvtk[14]" -type "float2" -0.016466562 -0.44878876 ;
	setAttr ".uvtk[15]" -type "float2" 0.0020229779 -0.43029919 ;
createNode polyMapSewMove -n "polyMapSewMove14";
	rename -uid "84BAC795-40C6-463F-7001-489A69FAF7A5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[4]";
createNode polyTweakUV -n "polyTweakUV15";
	rename -uid "25A5742A-424B-C500-E7A3-318EB7AA5B1E";
	setAttr ".uopa" yes;
	setAttr -s 5 ".uvtk";
	setAttr ".uvtk[66]" -type "float2" 0.88010901 -0.21114686 ;
	setAttr ".uvtk[67]" -type "float2" 0.88010901 -0.21114102 ;
	setAttr ".uvtk[68]" -type "float2" 0.88010377 -0.21114102 ;
	setAttr ".uvtk[69]" -type "float2" 0.88010377 -0.21114686 ;
createNode polyMapSewMove -n "polyMapSewMove15";
	rename -uid "F6D83026-439E-6D76-9516-F88A9118AEE9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[68]";
createNode polyTweakUV -n "polyTweakUV16";
	rename -uid "B8600904-46DE-0F1B-ACE1-1BADF134C7D4";
	setAttr ".uopa" yes;
	setAttr -s 5 ".uvtk";
	setAttr ".uvtk[68]" -type "float2" 0.4110004 -0.55791765 ;
	setAttr ".uvtk[69]" -type "float2" 0.4110004 -0.55791759 ;
	setAttr ".uvtk[70]" -type "float2" 0.4110004 -0.55791759 ;
	setAttr ".uvtk[71]" -type "float2" 0.4110004 -0.55791765 ;
createNode polyMapSewMove -n "polyMapSewMove16";
	rename -uid "48ADF0E5-4CDA-82E2-56EF-8E92BE3AFE5E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[73]";
createNode polyTweakUV -n "polyTweakUV17";
	rename -uid "643C0A34-4148-531D-7330-079B11627493";
	setAttr ".uopa" yes;
	setAttr -s 5 ".uvtk";
	setAttr ".uvtk[4]" -type "float2" -0.064154029 -0.19499153 ;
	setAttr ".uvtk[5]" -type "float2" -0.089558214 -0.19499153 ;
	setAttr ".uvtk[6]" -type "float2" -0.089558214 -0.22039783 ;
	setAttr ".uvtk[7]" -type "float2" -0.064154029 -0.22039783 ;
createNode polyMapSewMove -n "polyMapSewMove17";
	rename -uid "B030EDCA-42FB-FB64-C20D-C5A2B202E30F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[22]";
createNode polyTweakUV -n "polyTweakUV18";
	rename -uid "E6E85F99-4191-E49C-A399-9C974AF5BDFE";
	setAttr ".uopa" yes;
	setAttr -s 83 ".uvtk[0:82]" -type "float2" -0.0037537853 0.063738748
		 -0.0037540055 0.043281309 0.016704235 0.043281082 0.016704468 0.063738525 -0.06503576
		 0.2647903 -0.05278166 0.2647903 -0.05278166 0.27704537 -0.06503576 0.27704537 -0.003753976
		 0.19877253 -0.0037537853 0.17831349 0.001638182 0.18370716 0.0016380952 0.19338055
		 0.016704468 0.17831367 0.011312392 0.18370725 0.016704265 0.19877273 0.011312298
		 0.19338065 -0.37119079 0.054997288 -0.45360449 -0.054819621 -0.11439438 -0.30938438
		 -0.031980805 -0.19956765 -0.54579365 -0.17766283 -0.62821257 -0.28748623 -0.28900218
		 -0.54205191 -0.20658448 -0.43222734 -0.24816057 0.14863041 -0.16574678 0.038813725
		 0.17346285 0.29337916 0.091048986 0.40319565 -0.073562622 -0.084022582 0.0088561382
		 -0.1938462 0.34806606 0.060718697 0.26564732 0.17054246 0.037161913 0.063738525 0.037161913
		 0.17831367 -0.024212832 0.17831331 -0.024212832 0.16399185 -0.0037537853 0.16399202
		 -0.024212832 0.14966954 -0.020384679 0.14966954 -0.0075811301 0.14966954 -0.0037537853
		 0.14966932 -0.020384679 0.13534725 -0.024212832 0.13534725 -0.0075811301 0.13534725
		 -0.0037537853 0.13534743 -0.024212832 0.12102575 -0.0037537853 0.12102593 -0.024212832
		 0.10670346 -0.0037537853 0.10670363 -0.024212832 0.092381954 -0.020384679 0.092381954
		 -0.0075811301 0.092381954 -0.0037537853 0.092381738 -0.020384679 0.078060471 -0.024212832
		 0.078060471 -0.0075811301 0.078060471 -0.0037537853 0.078060247 -0.024212832 0.063738972
		 -0.06503576 0.18460152 -0.05278172 0.18460152 -0.040526949 0.18460152 -0.028270885
		 0.18460152 -0.028270885 0.2647903 -0.040526949 0.2647903 -0.16614845 -0.6342451 -0.083731957
		 -0.52441955 0.21388473 0.49538082 0.29629901 0.38556436 0.057626352 0.063738525 0.057626352
		 0.078057222 0.057626352 0.092375912 0.057626352 0.10670102 0.057626352 0.12102611
		 0.057626352 0.13534479 0.057626352 0.1496699 0.057626352 0.163995 0.057626352 0.17831367
		 -0.077291206 0.18460152 -0.077291206 0.2647903 -0.72040212 -0.41032961 -0.38119206
		 -0.66489458 -0.34034511 0.27146655 -0.0011353621 0.52603191;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "F8B242AB-42F4-7B14-BB9F-68B830865438";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -121.42856660343372 -392.85712724640319 ;
	setAttr ".tgi[0].vh" -type "double2" 122.61904274660468 392.85712724640319 ;
	setAttr -s 4 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 61.428569793701172;
	setAttr ".tgi[0].ni[0].y" 138.57142639160156;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" -245.71427917480469;
	setAttr ".tgi[0].ni[1].y" 138.57142639160156;
	setAttr ".tgi[0].ni[1].nvs" 1923;
	setAttr ".tgi[0].ni[2].x" -245.71427917480469;
	setAttr ".tgi[0].ni[2].y" 138.57142639160156;
	setAttr ".tgi[0].ni[2].nvs" 1923;
	setAttr ".tgi[0].ni[3].x" 61.428569793701172;
	setAttr ".tgi[0].ni[3].y" 138.57142639160156;
	setAttr ".tgi[0].ni[3].nvs" 1923;
select -ne :time1;
	setAttr ".o" 0;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 4 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 7 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "groupId1.id" "GunShape.iog.og[0].gid";
connectAttr "lambert3SG.mwc" "GunShape.iog.og[0].gco";
connectAttr "groupId3.id" "GunShape.iog.og[1].gid";
connectAttr "lambert2SG.mwc" "GunShape.iog.og[1].gco";
connectAttr "polyTweakUV18.out" "GunShape.i";
connectAttr "groupId2.id" "GunShape.ciog.cog[0].cgid";
connectAttr "polyTweakUV18.uvtk[0]" "GunShape.uvst[0].uvtw";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyTweak1.out" "polyExtrudeFace1.ip";
connectAttr "GunShape.wm" "polyExtrudeFace1.mp";
connectAttr "polyCube1.out" "polyTweak1.ip";
connectAttr "polyTweak2.out" "polyExtrudeFace2.ip";
connectAttr "GunShape.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak2.ip";
connectAttr "polyTweak3.out" "polySubdFace1.ip";
connectAttr "polyExtrudeFace2.out" "polyTweak3.ip";
connectAttr "polySubdFace1.out" "polySubdFace2.ip";
connectAttr "polySubdFace2.out" "polySubdFace3.ip";
connectAttr "polyTweak4.out" "polyExtrudeFace3.ip";
connectAttr "GunShape.wm" "polyExtrudeFace3.mp";
connectAttr "polySubdFace3.out" "polyTweak4.ip";
connectAttr "polyTweak5.out" "polyExtrudeFace4.ip";
connectAttr "GunShape.wm" "polyExtrudeFace4.mp";
connectAttr "polyExtrudeFace3.out" "polyTweak5.ip";
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "GunShape.iog.og[1]" "lambert2SG.dsm" -na;
connectAttr "groupId3.msg" "lambert2SG.gn" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "lambert2.msg" "materialInfo1.m";
connectAttr "lambert3.oc" "lambert3SG.ss";
connectAttr "GunShape.iog.og[0]" "lambert3SG.dsm" -na;
connectAttr "groupId1.msg" "lambert3SG.gn" -na;
connectAttr "lambert3SG.msg" "materialInfo2.sg";
connectAttr "lambert3.msg" "materialInfo2.m";
connectAttr "polyExtrudeFace4.out" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "groupParts1.og" "groupParts2.ig";
connectAttr "groupId3.id" "groupParts2.gi";
connectAttr "polyTweak6.out" "polyAutoProj1.ip";
connectAttr "GunShape.wm" "polyAutoProj1.mp";
connectAttr "groupParts2.og" "polyTweak6.ip";
connectAttr "polyAutoProj1.out" "polyPlanarProj1.ip";
connectAttr "GunShape.wm" "polyPlanarProj1.mp";
connectAttr "polyPlanarProj1.out" "polyAutoProj2.ip";
connectAttr "GunShape.wm" "polyAutoProj2.mp";
connectAttr "polyAutoProj2.out" "polyTweakUV1.ip";
connectAttr "polyTweakUV1.out" "polyMapSewMove1.ip";
connectAttr "polyMapSewMove1.out" "polyTweakUV2.ip";
connectAttr "polyTweakUV2.out" "polyMapSewMove2.ip";
connectAttr "polyMapSewMove2.out" "polyTweakUV3.ip";
connectAttr "polyTweakUV3.out" "polyMapSewMove3.ip";
connectAttr "polyMapSewMove3.out" "polyTweakUV4.ip";
connectAttr "polyTweakUV4.out" "polyMapSewMove4.ip";
connectAttr "polyMapSewMove4.out" "polyTweakUV5.ip";
connectAttr "polyTweakUV5.out" "polyMapSewMove5.ip";
connectAttr "polyMapSewMove5.out" "polyTweakUV6.ip";
connectAttr "polyTweakUV6.out" "polyMapSewMove6.ip";
connectAttr "polyMapSewMove6.out" "polyTweakUV7.ip";
connectAttr "polyTweakUV7.out" "polyMapSewMove7.ip";
connectAttr "polyMapSewMove7.out" "polyTweakUV8.ip";
connectAttr "polyTweakUV8.out" "polyMapSewMove8.ip";
connectAttr "polyMapSewMove8.out" "polyTweakUV9.ip";
connectAttr "polyTweakUV9.out" "polyMapSewMove9.ip";
connectAttr "polyMapSewMove9.out" "polyTweakUV10.ip";
connectAttr "polyTweakUV10.out" "polyMapSewMove10.ip";
connectAttr "polyMapSewMove10.out" "polyTweakUV11.ip";
connectAttr "polyTweakUV11.out" "polyMapSewMove11.ip";
connectAttr "polyMapSewMove11.out" "polyTweakUV12.ip";
connectAttr "polyTweakUV12.out" "polyMapSewMove12.ip";
connectAttr "polyMapSewMove12.out" "polyTweakUV13.ip";
connectAttr "polyTweakUV13.out" "polyMapSewMove13.ip";
connectAttr "polyMapSewMove13.out" "polyTweakUV14.ip";
connectAttr "polyTweakUV14.out" "polyMapSewMove14.ip";
connectAttr "polyMapSewMove14.out" "polyTweakUV15.ip";
connectAttr "polyTweakUV15.out" "polyMapSewMove15.ip";
connectAttr "polyMapSewMove15.out" "polyTweakUV16.ip";
connectAttr "polyTweakUV16.out" "polyMapSewMove16.ip";
connectAttr "polyMapSewMove16.out" "polyTweakUV17.ip";
connectAttr "polyTweakUV17.out" "polyMapSewMove17.ip";
connectAttr "polyMapSewMove17.out" "polyTweakUV18.ip";
connectAttr "lambert2SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "lambert2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "lambert3.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "lambert3SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert3.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "GunShape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
// End of Gun.ma
