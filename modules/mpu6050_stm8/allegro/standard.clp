; Allegro sub-drawing file
; Created by Allegro PCB Designer; version= 17.2-2016 P028

_clp_lay_drw = axlDesignType(nil)
_clp_sym = nil
_clp_pbuf  = nil
_clp_cinfo = make_clp_coord_info()
_clp_cinfo->f_rotation = 0.0
_clp_cinfo->l_origin = '(0.0 0.0)
_clp_text_orient = make_axlTextOrientation()
_clp_pin_text = make_axlPinText()
_clp_cinfo->t_from_units = "millimeters"
_clp_cinfo->t_to_units = car(axlDBGetDesignUnits())
_clp_cinfo->preserve_shape_net = nil
_clp_cinfo->preserve_via_net = nil
_clp_cinfo->snapToObject = nil
_clp_cinfo->createNCLayers = nil
_clp_group_info = make_clp_group_info()
_clp_cinfo->group_info = _clp_group_info
_clp_accuracy =4
_clpCheckAccuracy(_clp_accuracy _clp_cinfo->t_from_units	 	_clp_cinfo->t_to_units)
(putprop _clp_cinfo (list (_clpAdjustPt -16.7:-9.27 _clp_cinfo)	
	(_clpAdjustPt 25.4136:11.62 _clp_cinfo)) 'l_extents)
(putprop _clp_cinfo (_clpAdjustPt '(0.0 0.0) _clp_cinfo) 'l_zeropt)
(unless (_clpSelectRotOrg _clp_cinfo)
	(error "CANCEL"))
_clp_clip_prop_value = _clpGetClipPropValue()

_clp_sym = _clpIsLayout()
_clp_pbuf = _clpPinBufStart(_clp_sym)
_clpInitPinText(_clp_pin_text "1" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("CUSTOMPAD" _clpAdjustPt(15:7.62 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt 0:0 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_dbid = _clpDBCreateSymbolSkeleton('("PAD_CUSTOM" "PACKAGE") _clpAdjustPt('(15.0 7.62) _clp_cinfo)
		nil (0.000 + _clp_cinfo->f_rotation) _clp_pbuf)


if( car(_clp_dbid) then
	_clp_dbid = caadr(_clp_dbid)
else
	_clp_dbid = -1)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(MECH_PIN_TO_MECH_PIN_SPACING "0.2032 MM")
	'(MECH_PIN_TO_CONDUCTOR_SPACING "0.2032 MM")
	'(FIXED t)
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_sym = _clp_dbid
(when (nequal _clp_sym  -1)
 t )
(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 0.000 "1" )
_clp_dbid = (_clpDBCreateText "P*"
	(_clpAdjustPt 14.365:7.62 _clp_cinfo)  _clp_text_orient 
	"REF DES/ASSEMBLY_TOP" _clp_sym)

_clp_path  = (_clpPathStart (list (_clpAdjustPt 13.65:6.72 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 13.65:8.52 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 16.35:8.52 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 16.35:6.72 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 13.65:6.72 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PLACE_BOUND_TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

(_clpDBCreateSymbolAutosilk _clp_sym)
_clp_sym = nil
_clp_sym = _clpIsLayout()
_clp_pbuf = _clpPinBufStart(_clp_sym)
_clpInitPinText(_clp_pin_text "1" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("CUSTOMPAD" _clpAdjustPt(15:5.08 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt 0:0 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_dbid = _clpDBCreateSymbolSkeleton('("PAD_CUSTOM" "PACKAGE") _clpAdjustPt('(15.0 5.08) _clp_cinfo)
		nil (0.000 + _clp_cinfo->f_rotation) _clp_pbuf)


if( car(_clp_dbid) then
	_clp_dbid = caadr(_clp_dbid)
else
	_clp_dbid = -1)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(MECH_PIN_TO_MECH_PIN_SPACING "0.2032 MM")
	'(MECH_PIN_TO_CONDUCTOR_SPACING "0.2032 MM")
	'(FIXED t)
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_sym = _clp_dbid
(when (nequal _clp_sym  -1)
 t )
(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 0.000 "1" )
_clp_dbid = (_clpDBCreateText "P*"
	(_clpAdjustPt 14.365:5.08 _clp_cinfo)  _clp_text_orient 
	"REF DES/ASSEMBLY_TOP" _clp_sym)

_clp_path  = (_clpPathStart (list (_clpAdjustPt 13.65:4.18 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 13.65:5.98 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 16.35:5.98 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 16.35:4.18 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 13.65:4.18 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PLACE_BOUND_TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

(_clpDBCreateSymbolAutosilk _clp_sym)
_clp_sym = nil
(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 0.000 "2" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt 11.3:7.25 _clp_cinfo)  _clp_text_orient 
	"BOARD GEOMETRY/SILKSCREEN_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

_clp_sym = _clpIsLayout()
_clp_pbuf = _clpPinBufStart(_clp_sym)
_clpInitPinText(_clp_pin_text "1" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("CUSTOMPAD" _clpAdjustPt(15:2.57 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt 0:0 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_dbid = _clpDBCreateSymbolSkeleton('("PAD_CUSTOM" "PACKAGE") _clpAdjustPt('(15.0 2.57) _clp_cinfo)
		nil (0.000 + _clp_cinfo->f_rotation) _clp_pbuf)


if( car(_clp_dbid) then
	_clp_dbid = caadr(_clp_dbid)
else
	_clp_dbid = -1)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(MECH_PIN_TO_MECH_PIN_SPACING "0.2032 MM")
	'(MECH_PIN_TO_CONDUCTOR_SPACING "0.2032 MM")
	'(FIXED t)
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_sym = _clp_dbid
(when (nequal _clp_sym  -1)
 t )
(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 0.000 "1" )
_clp_dbid = (_clpDBCreateText "P*"
	(_clpAdjustPt 14.365:2.57 _clp_cinfo)  _clp_text_orient 
	"REF DES/ASSEMBLY_TOP" _clp_sym)

_clp_path  = (_clpPathStart (list (_clpAdjustPt 13.65:1.67 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 13.65:3.47 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 16.35:3.47 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 16.35:1.67 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 13.65:1.67 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PLACE_BOUND_TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

(_clpDBCreateSymbolAutosilk _clp_sym)
_clp_sym = nil
_clp_sym = _clpIsLayout()
_clp_pbuf = _clpPinBufStart(_clp_sym)
_clpInitPinText(_clp_pin_text "1" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("CUSTOMPAD" _clpAdjustPt(15:0 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt 0:0 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_dbid = _clpDBCreateSymbolSkeleton('("PAD_CUSTOM" "PACKAGE") _clpAdjustPt('(15.0 0.0) _clp_cinfo)
		nil (0.000 + _clp_cinfo->f_rotation) _clp_pbuf)


if( car(_clp_dbid) then
	_clp_dbid = caadr(_clp_dbid)
else
	_clp_dbid = -1)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(MECH_PIN_TO_MECH_PIN_SPACING "0.2032 MM")
	'(MECH_PIN_TO_CONDUCTOR_SPACING "0.2032 MM")
	'(FIXED t)
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_sym = _clp_dbid
(when (nequal _clp_sym  -1)
 t )
(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 0.000 "1" )
_clp_dbid = (_clpDBCreateText "P*"
	(_clpAdjustPt 14.365:0 _clp_cinfo)  _clp_text_orient 
	"REF DES/ASSEMBLY_TOP" _clp_sym)

_clp_path  = (_clpPathStart (list (_clpAdjustPt 13.65:-0.9 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 13.65:0.9 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 16.35:0.9 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 16.35:-0.9 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 13.65:-0.9 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PLACE_BOUND_TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

(_clpDBCreateSymbolAutosilk _clp_sym)
_clp_sym = nil
_clp_sym = _clpIsLayout()
_clp_pbuf = _clpPinBufStart(_clp_sym)
_clpInitPinText(_clp_pin_text "1" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("CUSTOMPAD" _clpAdjustPt(15:-2.54 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt 0:0 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_dbid = _clpDBCreateSymbolSkeleton('("PAD_CUSTOM" "PACKAGE") _clpAdjustPt('(15.0 -2.54) _clp_cinfo)
		nil (0.000 + _clp_cinfo->f_rotation) _clp_pbuf)


if( car(_clp_dbid) then
	_clp_dbid = caadr(_clp_dbid)
else
	_clp_dbid = -1)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(MECH_PIN_TO_MECH_PIN_SPACING "0.2032 MM")
	'(MECH_PIN_TO_CONDUCTOR_SPACING "0.2032 MM")
	'(FIXED t)
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_sym = _clp_dbid
(when (nequal _clp_sym  -1)
 t )
(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 0.000 "1" )
_clp_dbid = (_clpDBCreateText "P*"
	(_clpAdjustPt 14.365:-2.54 _clp_cinfo)  _clp_text_orient 
	"REF DES/ASSEMBLY_TOP" _clp_sym)

_clp_path  = (_clpPathStart (list (_clpAdjustPt 13.65:-3.44 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 13.65:-1.64 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 16.35:-1.64 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 16.35:-3.44 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 13.65:-3.44 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PLACE_BOUND_TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

(_clpDBCreateSymbolAutosilk _clp_sym)
_clp_sym = nil
(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 0.000 "2" )
_clp_dbid = (_clpDBCreateText "DI1" 
	(_clpAdjustPt 11.45:2.25 _clp_cinfo)  _clp_text_orient 
	"BOARD GEOMETRY/SILKSCREEN_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 0.000 "2" )
_clp_dbid = (_clpDBCreateText "DI0" 
	(_clpAdjustPt 11.3:-0.45 _clp_cinfo)  _clp_text_orient 
	"BOARD GEOMETRY/SILKSCREEN_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 0.000 "2" )
_clp_dbid = (_clpDBCreateText "DO3" 
	(_clpAdjustPt 11.2:-3 _clp_cinfo)  _clp_text_orient 
	"BOARD GEOMETRY/SILKSCREEN_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

_clp_sym = _clpIsLayout()
_clp_pbuf = _clpPinBufStart(_clp_sym)
_clpInitPinText(_clp_pin_text "1" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("CUSTOMPAD" _clpAdjustPt(15:-5.08 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt 0:0 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_dbid = _clpDBCreateSymbolSkeleton('("PAD_CUSTOM" "PACKAGE") _clpAdjustPt('(15.0 -5.08) _clp_cinfo)
		nil (0.000 + _clp_cinfo->f_rotation) _clp_pbuf)


if( car(_clp_dbid) then
	_clp_dbid = caadr(_clp_dbid)
else
	_clp_dbid = -1)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(MECH_PIN_TO_MECH_PIN_SPACING "0.2032 MM")
	'(MECH_PIN_TO_CONDUCTOR_SPACING "0.2032 MM")
	'(FIXED t)
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_sym = _clp_dbid
(when (nequal _clp_sym  -1)
 t )
(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 0.000 "1" )
_clp_dbid = (_clpDBCreateText "P*"
	(_clpAdjustPt 14.365:-5.08 _clp_cinfo)  _clp_text_orient 
	"REF DES/ASSEMBLY_TOP" _clp_sym)

_clp_path  = (_clpPathStart (list (_clpAdjustPt 13.65:-5.98 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 13.65:-4.18 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 16.35:-4.18 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 16.35:-5.98 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 13.65:-5.98 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PLACE_BOUND_TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

(_clpDBCreateSymbolAutosilk _clp_sym)
_clp_sym = nil
(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 0.000 "2" )
_clp_dbid = (_clpDBCreateText "DO2" 
	(_clpAdjustPt 11.4:-5.45 _clp_cinfo)  _clp_text_orient 
	"BOARD GEOMETRY/SILKSCREEN_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

_clp_sym = _clpIsLayout()
_clp_pbuf = _clpPinBufStart(_clp_sym)
_clpInitPinText(_clp_pin_text "2" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(270.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("R74_102" _clpAdjustPt(9.85:9.199999999999999 _clp_cinfo) 	
	_clp_pin_text (270.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 0.75:0 _clp_cinfo) 180.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "1" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(90.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("R74_102" _clpAdjustPt(9.85:7.7 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -0.75:0 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_dbid = _clpDBCreateSymbolSkeleton('("CAP_SMD_0603" "PACKAGE") _clpAdjustPt('(9.85 8.449999999999999) _clp_cinfo)
		nil (90.000 + _clp_cinfo->f_rotation) _clp_pbuf)


if( car(_clp_dbid) then
	_clp_dbid = caadr(_clp_dbid)
else
	_clp_dbid = -1)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(MECH_PIN_TO_MECH_PIN_SPACING "0.2032 MM")
	'(MECH_PIN_TO_CONDUCTOR_SPACING "0.2032 MM")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_sym = _clp_dbid
(when (nequal _clp_sym  -1)
 t )
(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 90.000 "2" )
_clp_dbid = (_clpDBCreateText "C"
	(_clpAdjustPt 9:7.45 _clp_cinfo)  _clp_text_orient 
	"REF DES/SILKSCREEN_TOP" _clp_sym)

(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 90.000 "1" )
_clp_dbid = (_clpDBCreateText "C"
	(_clpAdjustPt 10.35:7.25 _clp_cinfo)  _clp_text_orient 
	"REF DES/ASSEMBLY_TOP" _clp_sym)

_clp_path  = (_clpPathStart (list (_clpAdjustPt 9.449999999999999:9.25 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.25:9.25 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.25:7.65 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.449999999999999:7.65 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.449999999999999:9.25 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 9.35:7.35 _clp_cinfo))
	(_clpMKSConvert 0.150000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.150000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.35:9.550000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.150000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.35:9.550000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.150000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.35:7.35 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.150000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.35:7.35 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 9.35:8.15 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.35:8.15 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.35:8.75 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.35:8.75 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.35:8.15 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ROUTE KEEPOUT/TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 10.35:7.55 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.35:9.35 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.35:9.35 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.35:7.55 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.35:7.55 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/DFA_BOUND_TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 10.35:7.55 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.35:9.35 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.35:9.35 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.35:7.55 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.35:7.55 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PLACE_BOUND_TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

(_clpDBCreateSymbolAutosilk _clp_sym)
_clp_sym = nil
_clp_sym = _clpIsLayout()
_clp_pbuf = _clpPinBufStart(_clp_sym)
_clpInitPinText(_clp_pin_text "2" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(270.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("R74_102" _clpAdjustPt(9.85:6.3 _clp_cinfo) 	
	_clp_pin_text (270.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 0.75:0 _clp_cinfo) 180.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "1" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(90.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("R74_102" _clpAdjustPt(9.85:4.8 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -0.75:0 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_dbid = _clpDBCreateSymbolSkeleton('("CAP_SMD_0603" "PACKAGE") _clpAdjustPt('(9.85 5.55) _clp_cinfo)
		nil (90.000 + _clp_cinfo->f_rotation) _clp_pbuf)


if( car(_clp_dbid) then
	_clp_dbid = caadr(_clp_dbid)
else
	_clp_dbid = -1)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(MECH_PIN_TO_MECH_PIN_SPACING "0.2032 MM")
	'(MECH_PIN_TO_CONDUCTOR_SPACING "0.2032 MM")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_sym = _clp_dbid
(when (nequal _clp_sym  -1)
 t )
(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 90.000 "2" )
_clp_dbid = (_clpDBCreateText "C"
	(_clpAdjustPt 9.050000000000001:4.65 _clp_cinfo)  _clp_text_orient 
	"REF DES/SILKSCREEN_TOP" _clp_sym)

(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 90.000 "1" )
_clp_dbid = (_clpDBCreateText "C"
	(_clpAdjustPt 10.35:4.35 _clp_cinfo)  _clp_text_orient 
	"REF DES/ASSEMBLY_TOP" _clp_sym)

_clp_path  = (_clpPathStart (list (_clpAdjustPt 9.449999999999999:6.35 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.25:6.35 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.25:4.75 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.449999999999999:4.75 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.449999999999999:6.35 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 9.35:4.45 _clp_cinfo))
	(_clpMKSConvert 0.150000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.150000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.35:6.65 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.150000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.35:6.65 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.150000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.35:4.45 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.150000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.35:4.45 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 9.35:5.25 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.35:5.25 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.35:5.85 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.35:5.85 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.35:5.25 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ROUTE KEEPOUT/TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 10.35:4.65 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.35:6.45 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.35:6.45 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.35:4.65 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.35:4.65 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/DFA_BOUND_TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 10.35:4.65 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.35:6.45 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.35:6.45 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.35:4.65 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.35:4.65 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PLACE_BOUND_TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 10.9:3.7 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.9:4.5648 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.6648:4.8 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.85:4.8 _clp_cinfo))
_clpPl = list(
	'(SYMBOL_ETCH t)
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/TOP" nil _clp_sym _clpPl)
_clpPl = nil

(_clpDBCreateSymbolAutosilk _clp_sym)
_clp_sym = nil
(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 0.000 "2" )
_clp_dbid = (_clpDBCreateText "PWM1" 
	(_clpAdjustPt 10.75:4.65 _clp_cinfo)  _clp_text_orient 
	"BOARD GEOMETRY/SILKSCREEN_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

_clp_sym = _clpIsLayout()
_clp_pbuf = _clpPinBufStart(_clp_sym)
_clpInitPinText(_clp_pin_text "2" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(90.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("R74_102" _clpAdjustPt(6.4:0.55 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 0.75:0 _clp_cinfo) 180.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "1" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(270.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("R74_102" _clpAdjustPt(6.4:2.05 _clp_cinfo) 	
	_clp_pin_text (270.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -0.75:0 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_dbid = _clpDBCreateSymbolSkeleton('("CAP_SMD_0603" "PACKAGE") _clpAdjustPt('(6.4 1.3) _clp_cinfo)
		nil (270.000 + _clp_cinfo->f_rotation) _clp_pbuf)


if( car(_clp_dbid) then
	_clp_dbid = caadr(_clp_dbid)
else
	_clp_dbid = -1)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(MECH_PIN_TO_MECH_PIN_SPACING "0.2032 MM")
	'(MECH_PIN_TO_CONDUCTOR_SPACING "0.2032 MM")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_sym = _clp_dbid
(when (nequal _clp_sym  -1)
 t )
(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 270.000 "2" )
_clp_dbid = (_clpDBCreateText "C"
	(_clpAdjustPt 3.8:-2 _clp_cinfo)  _clp_text_orient 
	"REF DES/SILKSCREEN_TOP" _clp_sym)

(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 270.000 "1" )
_clp_dbid = (_clpDBCreateText "C"
	(_clpAdjustPt 5.9:2.5 _clp_cinfo)  _clp_text_orient 
	"REF DES/ASSEMBLY_TOP" _clp_sym)

_clp_path  = (_clpPathStart (list (_clpAdjustPt 6.8:0.5 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 6:0.5 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 6:2.1 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 6.8:2.1 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 6.8:0.5 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 6.9:2.4 _clp_cinfo))
	(_clpMKSConvert 0.150000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.150000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 6.9:0.2 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.150000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 5.9:0.2 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.150000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 5.9:2.4 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.150000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 6.9:2.4 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 6.9:1.6 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 5.9:1.6 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 5.9:1 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 6.9:1 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 6.9:1.6 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ROUTE KEEPOUT/TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 5.9:2.2 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 5.9:0.4 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 6.9:0.4 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 6.9:2.2 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 5.9:2.2 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/DFA_BOUND_TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 5.9:2.2 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 5.9:0.4 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 6.9:0.4 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 6.9:2.2 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 5.9:2.2 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PLACE_BOUND_TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

(_clpDBCreateSymbolAutosilk _clp_sym)
_clp_sym = nil
printf(" 10 percent completed")
newline()

_clp_sym = _clpIsLayout()
_clp_pbuf = _clpPinBufStart(_clp_sym)
_clpInitPinText(_clp_pin_text "2" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("R74_102" _clpAdjustPt(10.9:3.7 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 0.85:0 _clp_cinfo) 180.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "1" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("R74_102" _clpAdjustPt(9.199999999999999:3.7 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt -0.85:0 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_dbid = _clpDBCreateSymbolSkeleton('("RES_SMD_0603" "PACKAGE") _clpAdjustPt('(10.05 3.7) _clp_cinfo)
		nil (0.000 + _clp_cinfo->f_rotation) _clp_pbuf)


if( car(_clp_dbid) then
	_clp_dbid = caadr(_clp_dbid)
else
	_clp_dbid = -1)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(MECH_PIN_TO_MECH_PIN_SPACING "0.2032 MM")
	'(MECH_PIN_TO_CONDUCTOR_SPACING "0.2032 MM")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_sym = _clp_dbid
(when (nequal _clp_sym  -1)
 t )
(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 0.000 "2" )
_clp_dbid = (_clpDBCreateText "R*"
	(_clpAdjustPt 7.15:-2.85 _clp_cinfo)  _clp_text_orient 
	"REF DES/SILKSCREEN_TOP" _clp_sym)

(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 0.000 "1" )
_clp_dbid = (_clpDBCreateText "R*"
	(_clpAdjustPt 8.85:3.2 _clp_cinfo)  _clp_text_orient 
	"REF DES/ASSEMBLY_TOP" _clp_sym)

_clp_path  = (_clpPathStart (list (_clpAdjustPt 10.85:4.1 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.85:3.3 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.25:3.3 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.25:4.1 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.85:4.1 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 8.949999999999999:4.2 _clp_cinfo))
	(_clpMKSConvert 0.150000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.150000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.15:4.2 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.150000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.15:3.2 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.150000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.949999999999999:3.2 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.150000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.949999999999999:4.2 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 8.83:3.125 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.83:4.275 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.27:4.275 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.27:3.125 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.83:3.125 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PLACE_BOUND_TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 8.949999999999999:3.2 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.949999999999999:4.2 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.15:4.2 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.15:3.2 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.949999999999999:3.2 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "MANUFACTURING/NO_PROBE_TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 9.75:4.2 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.75:3.2 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.35:3.2 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.35:4.2 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.75:4.2 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ROUTE KEEPOUT/TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 8.949999999999999:3.2 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.15:3.2 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.15:4.2 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.949999999999999:4.2 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.949999999999999:3.2 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/DFA_BOUND_TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

(_clpDBCreateSymbolAutosilk _clp_sym)
_clp_sym = nil
_clp_sym = _clpIsLayout()
_clp_pbuf = _clpPinBufStart(_clp_sym)
_clpInitPinText(_clp_pin_text "2" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("R74_102" _clpAdjustPt(10.9:2.1 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 0.85:0 _clp_cinfo) 180.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "1" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("R74_102" _clpAdjustPt(9.199999999999999:2.1 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt -0.85:0 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_dbid = _clpDBCreateSymbolSkeleton('("RES_SMD_0603" "PACKAGE") _clpAdjustPt('(10.05 2.1) _clp_cinfo)
		nil (0.000 + _clp_cinfo->f_rotation) _clp_pbuf)


if( car(_clp_dbid) then
	_clp_dbid = caadr(_clp_dbid)
else
	_clp_dbid = -1)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(MECH_PIN_TO_MECH_PIN_SPACING "0.2032 MM")
	'(MECH_PIN_TO_CONDUCTOR_SPACING "0.2032 MM")
	'(SYMBOL_EDITED t)
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_sym = _clp_dbid
(when (nequal _clp_sym  -1)
 t )
(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 0.000 "2" )
_clp_dbid = (_clpDBCreateText "R*"
	(_clpAdjustPt 7.15:-3.9 _clp_cinfo)  _clp_text_orient 
	"REF DES/SILKSCREEN_TOP" _clp_sym)

(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 0.000 "1" )
_clp_dbid = (_clpDBCreateText "R*"
	(_clpAdjustPt 8.85:1.6 _clp_cinfo)  _clp_text_orient 
	"REF DES/ASSEMBLY_TOP" _clp_sym)

_clp_path  = (_clpPathStart (list (_clpAdjustPt 10.85:2.5 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.85:1.7 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.25:1.7 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.25:2.5 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.85:2.5 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 8.949999999999999:2.6 _clp_cinfo))
	(_clpMKSConvert 0.150000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.150000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.15:2.6 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.150000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.15:1.6 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.150000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.949999999999999:1.6 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.150000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.949999999999999:2.6 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 8.83:1.525 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.83:2.675 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.27:2.675 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.27:1.525 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.83:1.525 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PLACE_BOUND_TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 8.949999999999999:1.6 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.949999999999999:2.6 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.15:2.6 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.15:1.6 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.949999999999999:1.6 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "MANUFACTURING/NO_PROBE_TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 9.75:2.6 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.75:1.6 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.35:1.6 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.35:2.6 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.75:2.6 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ROUTE KEEPOUT/TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 8.949999999999999:1.6 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.15:1.6 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.15:2.6 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.949999999999999:2.6 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.949999999999999:1.6 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/DFA_BOUND_TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_dbid = _clpDBCreateVia( "VIA" _clpAdjustPt(10.9:0.8 _clp_cinfo) 	
	nil nil _clp_cinfo->f_rotation _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 10.9:3.7 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.9:2.1 _clp_cinfo))
_clpPl = list(
	'(SYMBOL_ETCH t)
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/TOP" nil _clp_sym _clpPl)
_clpPl = nil

(_clpDBCreateSymbolAutosilk _clp_sym)
_clp_sym = nil
_clp_sym = _clpIsLayout()
_clp_pbuf = _clpPinBufStart(_clp_sym)
_clpInitPinText(_clp_pin_text "2" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(270.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("R74_102" _clpAdjustPt(0.6:5.85 _clp_cinfo) 	
	_clp_pin_text (270.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 0.85:0 _clp_cinfo) 180.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "1" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(90.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("R74_102" _clpAdjustPt(0.6:4.15 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -0.85:0 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_dbid = _clpDBCreateSymbolSkeleton('("RES_SMD_0603" "PACKAGE") _clpAdjustPt('(0.6 5.0) _clp_cinfo)
		nil (90.000 + _clp_cinfo->f_rotation) _clp_pbuf)


if( car(_clp_dbid) then
	_clp_dbid = caadr(_clp_dbid)
else
	_clp_dbid = -1)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(MECH_PIN_TO_MECH_PIN_SPACING "0.2032 MM")
	'(MECH_PIN_TO_CONDUCTOR_SPACING "0.2032 MM")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_sym = _clp_dbid
(when (nequal _clp_sym  -1)
 t )
(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 90.000 "2" )
_clp_dbid = (_clpDBCreateText "R*"
	(_clpAdjustPt -0.4:3.8 _clp_cinfo)  _clp_text_orient 
	"REF DES/SILKSCREEN_TOP" _clp_sym)

(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 90.000 "1" )
_clp_dbid = (_clpDBCreateText "R*"
	(_clpAdjustPt 1.1:3.8 _clp_cinfo)  _clp_text_orient 
	"REF DES/ASSEMBLY_TOP" _clp_sym)

_clp_path  = (_clpPathStart (list (_clpAdjustPt 0.2:5.8 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1:5.8 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1:4.2 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 0.2:4.2 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 0.2:5.8 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 0.1:3.9 _clp_cinfo))
	(_clpMKSConvert 0.150000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.150000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 0.1:6.1 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.150000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.1:6.1 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.150000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.1:3.9 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.150000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 0.1:3.9 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 1.175:3.78 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 0.025:3.78 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 0.025:6.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.175:6.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.175:3.78 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PLACE_BOUND_TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 1.1:3.9 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 0.1:3.9 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 0.1:6.1 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.1:6.1 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.1:3.9 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "MANUFACTURING/NO_PROBE_TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 0.1:4.7 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.1:4.7 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.1:5.3 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 0.1:5.3 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 0.1:4.7 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ROUTE KEEPOUT/TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 1.1:3.9 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.1:6.1 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 0.1:6.1 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 0.1:3.9 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.1:3.9 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/DFA_BOUND_TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 0.6:4.15 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 0.7401:4.15 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.4148:3.4753 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.9659:3.4753 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.0588:3.5682 _clp_cinfo))
_clpPl = list(
	'(SYMBOL_ETCH t)
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/TOP" nil _clp_sym _clpPl)
_clpPl = nil

(_clpDBCreateSymbolAutosilk _clp_sym)
_clp_sym = nil
_clp_sym = _clpIsLayout()
_clp_pbuf = _clpPinBufStart(_clp_sym)
_clpInitPinText(_clp_pin_text "2" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(270.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("R74_102" _clpAdjustPt(4.4:2.15 _clp_cinfo) 	
	_clp_pin_text (270.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 0.85:0 _clp_cinfo) 180.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "1" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(90.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("R74_102" _clpAdjustPt(4.4:0.45 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -0.85:0 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_dbid = _clpDBCreateSymbolSkeleton('("RES_SMD_0603" "PACKAGE") _clpAdjustPt('(4.4 1.3) _clp_cinfo)
		nil (90.000 + _clp_cinfo->f_rotation) _clp_pbuf)


if( car(_clp_dbid) then
	_clp_dbid = caadr(_clp_dbid)
else
	_clp_dbid = -1)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(MECH_PIN_TO_MECH_PIN_SPACING "0.2032 MM")
	'(MECH_PIN_TO_CONDUCTOR_SPACING "0.2032 MM")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_sym = _clp_dbid
(when (nequal _clp_sym  -1)
 t )
(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 270.000 "2" )
_clp_dbid = (_clpDBCreateText "R*"
	(_clpAdjustPt 2.25:-2.05 _clp_cinfo)  _clp_text_orient 
	"REF DES/SILKSCREEN_TOP" _clp_sym)

(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 90.000 "1" )
_clp_dbid = (_clpDBCreateText "R*"
	(_clpAdjustPt 4.9:0.1 _clp_cinfo)  _clp_text_orient 
	"REF DES/ASSEMBLY_TOP" _clp_sym)

_clp_path  = (_clpPathStart (list (_clpAdjustPt 4:2.1 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 4.8:2.1 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 4.8:0.5 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 4:0.5 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 4:2.1 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 3.9:0.2 _clp_cinfo))
	(_clpMKSConvert 0.150000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.150000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.9:2.4 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.150000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 4.9:2.4 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.150000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 4.9:0.2 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.150000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.9:0.2 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 4.975:0.08 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.825:0.08 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.825:2.52 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 4.975:2.52 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 4.975:0.08 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PLACE_BOUND_TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 4.9:0.2 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.9:0.2 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.9:2.4 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 4.9:2.4 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 4.9:0.2 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "MANUFACTURING/NO_PROBE_TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 3.9:1 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 4.9:1 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 4.9:1.6 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.9:1.6 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.9:1 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ROUTE KEEPOUT/TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 4.9:0.2 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 4.9:2.4 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.9:2.4 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.9:0.2 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 4.9:0.2 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/DFA_BOUND_TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

(_clpDBCreateSymbolAutosilk _clp_sym)
_clp_sym = nil
_clp_sym = _clpIsLayout()
_clp_pbuf = _clpPinBufStart(_clp_sym)
_clpInitPinText(_clp_pin_text "2" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(90.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("R74_102" _clpAdjustPt(3:0.55 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 0.75:0 _clp_cinfo) 180.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "1" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(270.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("R74_102" _clpAdjustPt(3:2.05 _clp_cinfo) 	
	_clp_pin_text (270.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -0.75:0 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_dbid = _clpDBCreateSymbolSkeleton('("CAP_SMD_0603" "PACKAGE") _clpAdjustPt('(3.0 1.3) _clp_cinfo)
		nil (270.000 + _clp_cinfo->f_rotation) _clp_pbuf)


if( car(_clp_dbid) then
	_clp_dbid = caadr(_clp_dbid)
else
	_clp_dbid = -1)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(MECH_PIN_TO_MECH_PIN_SPACING "0.2032 MM")
	'(MECH_PIN_TO_CONDUCTOR_SPACING "0.2032 MM")
	'(SYMBOL_EDITED t)
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_sym = _clp_dbid
(when (nequal _clp_sym  -1)
 t )
(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 270.000 "2" )
_clp_dbid = (_clpDBCreateText "C"
	(_clpAdjustPt 0.9:-2 _clp_cinfo)  _clp_text_orient 
	"REF DES/SILKSCREEN_TOP" _clp_sym)

(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 270.000 "1" )
_clp_dbid = (_clpDBCreateText "C"
	(_clpAdjustPt 2.5:2.5 _clp_cinfo)  _clp_text_orient 
	"REF DES/ASSEMBLY_TOP" _clp_sym)

_clp_path  = (_clpPathStart (list (_clpAdjustPt 3.4:0.5 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.6:0.5 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.6:2.1 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.4:2.1 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.4:0.5 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 3.5:2.4 _clp_cinfo))
	(_clpMKSConvert 0.150000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.150000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.5:0.2 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.150000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.5:0.2 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.150000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.5:2.4 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.150000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.5:2.4 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 3.5:1.6 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.5:1.6 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.5:1 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.5:1 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.5:1.6 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ROUTE KEEPOUT/TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 2.5:2.2 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.5:0.4 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.5:0.4 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.5:2.2 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.5:2.2 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/DFA_BOUND_TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 2.5:2.2 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.5:0.4 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.5:0.4 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.5:2.2 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.5:2.2 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PLACE_BOUND_TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_dbid = _clpDBCreateVia( "VIA" _clpAdjustPt(3:3.5682 _clp_cinfo) 	
	nil nil _clp_cinfo->f_rotation _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 3:3.5682 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3:2.05 _clp_cinfo))
_clpPl = list(
	'(SYMBOL_ETCH t)
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/TOP" nil _clp_sym _clpPl)
_clpPl = nil

(_clpDBCreateSymbolAutosilk _clp_sym)
_clp_sym = nil
printf(" 20 percent completed")
newline()

printf(" 30 percent completed")
newline()

_clp_sym = _clpIsLayout()
_clp_pbuf = _clpPinBufStart(_clp_sym)
_clpInitPinText(_clp_pin_text "2" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("R74_102" _clpAdjustPt(10.95:-5.4 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 0.85:0 _clp_cinfo) 180.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "1" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("R74_102" _clpAdjustPt(9.25:-5.4 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt -0.85:0 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_dbid = _clpDBCreateSymbolSkeleton('("RES_SMD_0603" "PACKAGE") _clpAdjustPt('(10.1 -5.4) _clp_cinfo)
		nil (0.000 + _clp_cinfo->f_rotation) _clp_pbuf)


if( car(_clp_dbid) then
	_clp_dbid = caadr(_clp_dbid)
else
	_clp_dbid = -1)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(MECH_PIN_TO_MECH_PIN_SPACING "0.2032 MM")
	'(MECH_PIN_TO_CONDUCTOR_SPACING "0.2032 MM")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_sym = _clp_dbid
(when (nequal _clp_sym  -1)
 t )
(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 0.000 "2" )
_clp_dbid = (_clpDBCreateText "R*"
	(_clpAdjustPt 2.6:-5.8 _clp_cinfo)  _clp_text_orient 
	"REF DES/SILKSCREEN_TOP" _clp_sym)

(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 0.000 "1" )
_clp_dbid = (_clpDBCreateText "R*"
	(_clpAdjustPt 8.9:-5.9 _clp_cinfo)  _clp_text_orient 
	"REF DES/ASSEMBLY_TOP" _clp_sym)

_clp_path  = (_clpPathStart (list (_clpAdjustPt 10.9:-5 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.9:-5.8 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.300000000000001:-5.8 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.300000000000001:-5 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.9:-5 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 9:-4.9 _clp_cinfo))
	(_clpMKSConvert 0.150000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.150000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.2:-4.9 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.150000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.2:-5.9 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.150000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9:-5.9 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.150000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9:-4.9 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 8.880000000000001:-5.975 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.880000000000001:-4.825 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.32:-4.825 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.32:-5.975 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.880000000000001:-5.975 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PLACE_BOUND_TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 9:-5.9 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9:-4.9 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.2:-4.9 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.2:-5.9 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9:-5.9 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "MANUFACTURING/NO_PROBE_TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 9.800000000000001:-4.9 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.800000000000001:-5.9 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.4:-5.9 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.4:-4.9 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.800000000000001:-4.9 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ROUTE KEEPOUT/TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 9:-5.9 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.2:-5.9 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.2:-4.9 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9:-4.9 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9:-5.9 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/DFA_BOUND_TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 9.25:-5.4 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.199999999999999:-5.4 _clp_cinfo))
_clpPl = list(
	'(SYMBOL_ETCH t)
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/TOP" nil _clp_sym _clpPl)
_clpPl = nil

(_clpDBCreateSymbolAutosilk _clp_sym)
_clp_sym = nil
_clp_sym = _clpIsLayout()
_clp_pbuf = _clpPinBufStart(_clp_sym)
_clpInitPinText(_clp_pin_text "2" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("R74_102" _clpAdjustPt(6.45:-5.4 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt 0.85:0 _clp_cinfo) 180.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "1" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("R74_102" _clpAdjustPt(8.15:-5.4 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -0.85:0 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_dbid = _clpDBCreateSymbolSkeleton('("RES_SMD_0603" "PACKAGE") _clpAdjustPt('(7.3 -5.4) _clp_cinfo)
		nil (180.000 + _clp_cinfo->f_rotation) _clp_pbuf)


if( car(_clp_dbid) then
	_clp_dbid = caadr(_clp_dbid)
else
	_clp_dbid = -1)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(MECH_PIN_TO_MECH_PIN_SPACING "0.2032 MM")
	'(MECH_PIN_TO_CONDUCTOR_SPACING "0.2032 MM")
	'(SYMBOL_EDITED t)
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_sym = _clp_dbid
(when (nequal _clp_sym  -1)
 t )
(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 0.000 "2" )
_clp_dbid = (_clpDBCreateText "R*"
	(_clpAdjustPt -0.25:-5.8 _clp_cinfo)  _clp_text_orient 
	"REF DES/SILKSCREEN_TOP" _clp_sym)

(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 180.000 "1" )
_clp_dbid = (_clpDBCreateText "R*"
	(_clpAdjustPt 8.5:-4.9 _clp_cinfo)  _clp_text_orient 
	"REF DES/ASSEMBLY_TOP" _clp_sym)

_clp_path  = (_clpPathStart (list (_clpAdjustPt 6.5:-5.8 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 6.5:-5 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.1:-5 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.1:-5.8 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 6.5:-5.8 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 8.4:-5.9 _clp_cinfo))
	(_clpMKSConvert 0.150000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.150000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 6.2:-5.9 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.150000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 6.2:-4.9 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.150000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.4:-4.9 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.150000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.4:-5.9 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 8.52:-4.825 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.52:-5.975 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 6.08:-5.975 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 6.08:-4.825 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.52:-4.825 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PLACE_BOUND_TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 8.4:-4.9 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.4:-5.9 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 6.2:-5.9 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 6.2:-4.9 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.4:-4.9 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "MANUFACTURING/NO_PROBE_TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 7.6:-5.9 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 7.6:-4.9 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 7:-4.9 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 7:-5.9 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 7.6:-5.9 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ROUTE KEEPOUT/TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 8.4:-4.9 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 6.2:-4.9 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 6.2:-5.9 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.4:-5.9 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.4:-4.9 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/DFA_BOUND_TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_dbid = _clpDBCreateVia( "VIA" _clpAdjustPt(9.199999999999999:-5.4 _clp_cinfo) 	
	nil nil _clp_cinfo->f_rotation _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 8.15:-5.4 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.199999999999999:-5.4 _clp_cinfo))
_clpPl = list(
	'(SYMBOL_ETCH t)
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/TOP" nil _clp_sym _clpPl)
_clpPl = nil

(_clpDBCreateSymbolAutosilk _clp_sym)
_clp_sym = nil
printf(" 40 percent completed")
newline()

_clp_sym = _clpIsLayout()
_clp_pbuf = _clpPinBufStart(_clp_sym)
_clpInitPinText(_clp_pin_text "2" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("R74_102" _clpAdjustPt(-4.45:9.300000000000001 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt 0.75:0 _clp_cinfo) 180.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "1" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("R74_102" _clpAdjustPt(-2.95:9.300000000000001 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -0.75:0 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_dbid = _clpDBCreateSymbolSkeleton('("LED_SMD_0603" "PACKAGE") _clpAdjustPt('(-3.7 9.300000000000001) _clp_cinfo)
		nil (180.000 + _clp_cinfo->f_rotation) _clp_pbuf)


if( car(_clp_dbid) then
	_clp_dbid = caadr(_clp_dbid)
else
	_clp_dbid = -1)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(MECH_PIN_TO_MECH_PIN_SPACING "0.2032 MM")
	'(MECH_PIN_TO_CONDUCTOR_SPACING "0.2032 MM")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_sym = _clp_dbid
(when (nequal _clp_sym  -1)
 t )
(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 0.000 "2" )
_clp_dbid = (_clpDBCreateText "LD*"
	(_clpAdjustPt 1.7:8.800000000000001 _clp_cinfo)  _clp_text_orient 
	"REF DES/SILKSCREEN_TOP" _clp_sym)

(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 180.000 "1" )
_clp_dbid = (_clpDBCreateText "LD*"
	(_clpAdjustPt -1:10.6 _clp_cinfo)  _clp_text_orient 
	"REF DES/ASSEMBLY_TOP" _clp_sym)

_clp_path  = (_clpPathStart (list (_clpAdjustPt -4.5:8.9 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -4.5:9.699999999999999 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -2.9:9.699999999999999 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -2.9:8.9 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -4.5:8.9 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -2.6:8.800000000000001 _clp_cinfo))
	(_clpMKSConvert 0.150000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.150000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -4.8:8.800000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.150000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -4.8:9.800000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.150000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -2.6:9.800000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.150000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -2.6:8.800000000000001 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -1.7394:9.875 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -1.7394:8.725 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -4.875:8.725 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -4.875:9.875 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -1.7394:9.875 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PLACE_BOUND_TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -2.6:9.800000000000001 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -2.6:8.800000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -4.8:8.800000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -4.8:9.800000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -2.6:9.800000000000001 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "MANUFACTURING/NO_PROBE_TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.4:8.800000000000001 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.4:9.800000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -4:9.800000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -4:8.800000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.4:8.800000000000001 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ROUTE KEEPOUT/TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -2.6:9.800000000000001 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -4.8:9.800000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -4.8:8.800000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -2.6:8.800000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -2.6:9.800000000000001 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/DFA_BOUND_TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -1.7394:9.300000000000001 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -1.7394:9.300000000000001 _clp_cinfo) nil
 	(_clpAdjustPt -2.1:9.300000000000001 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/SILKSCREEN_TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

(_clpDBCreateSymbolAutosilk _clp_sym)
_clp_sym = nil
_clp_sym = _clpIsLayout()
_clp_pbuf = _clpPinBufStart(_clp_sym)
_clpInitPinText(_clp_pin_text "2" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("R74_102" _clpAdjustPt(-6.5:9.300000000000001 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 0.85:0 _clp_cinfo) 180.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "1" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("R74_102" _clpAdjustPt(-8.199999999999999:9.300000000000001 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt -0.85:0 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_dbid = _clpDBCreateSymbolSkeleton('("RES_SMD_0603" "PACKAGE") _clpAdjustPt('(-7.35 9.300000000000001) _clp_cinfo)
		nil (0.000 + _clp_cinfo->f_rotation) _clp_pbuf)


if( car(_clp_dbid) then
	_clp_dbid = caadr(_clp_dbid)
else
	_clp_dbid = -1)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(MECH_PIN_TO_MECH_PIN_SPACING "0.2032 MM")
	'(MECH_PIN_TO_CONDUCTOR_SPACING "0.2032 MM")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_sym = _clp_dbid
(when (nequal _clp_sym  -1)
 t )
(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 0.000 "2" )
_clp_dbid = (_clpDBCreateText "R*"
	(_clpAdjustPt -0.8:8.800000000000001 _clp_cinfo)  _clp_text_orient 
	"REF DES/SILKSCREEN_TOP" _clp_sym)

(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 0.000 "1" )
_clp_dbid = (_clpDBCreateText "R*"
	(_clpAdjustPt -8.550000000000001:8.800000000000001 _clp_cinfo)  _clp_text_orient 
	"REF DES/ASSEMBLY_TOP" _clp_sym)

_clp_path  = (_clpPathStart (list (_clpAdjustPt -6.55:9.699999999999999 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -6.55:8.9 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -8.15:8.9 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -8.15:9.699999999999999 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -6.55:9.699999999999999 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -8.449999999999999:9.800000000000001 _clp_cinfo))
	(_clpMKSConvert 0.150000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.150000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -6.25:9.800000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.150000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -6.25:8.800000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.150000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -8.449999999999999:8.800000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.150000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -8.449999999999999:9.800000000000001 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -8.57:8.725 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -8.57:9.875 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -6.13:9.875 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -6.13:8.725 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -8.57:8.725 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PLACE_BOUND_TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -8.449999999999999:8.800000000000001 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -8.449999999999999:9.800000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -6.25:9.800000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -6.25:8.800000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -8.449999999999999:8.800000000000001 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "MANUFACTURING/NO_PROBE_TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -7.65:9.800000000000001 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -7.65:8.800000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -7.05:8.800000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -7.05:9.800000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -7.65:9.800000000000001 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ROUTE KEEPOUT/TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -8.449999999999999:8.800000000000001 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -6.25:8.800000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -6.25:9.800000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -8.449999999999999:9.800000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -8.449999999999999:8.800000000000001 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/DFA_BOUND_TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

(_clpDBCreateSymbolAutosilk _clp_sym)
_clp_sym = nil
_clp_sym = _clpIsLayout()
_clp_pbuf = _clpPinBufStart(_clp_sym)
_clpInitPinText(_clp_pin_text "" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(90.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("SMD325REC215" _clpAdjustPt(-9.199299999999999:4.7994 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 0.0994:2.8993 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "3" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(90.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("SMD095REX215" _clpAdjustPt(-3.3993:7.0994 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 2.3994:-2.9007 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "2" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(90.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("SMD095REX215" _clpAdjustPt(-3.3993:4.7994 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 0.0994:-2.9007 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "1" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(90.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("SMD095REX215" _clpAdjustPt(-3.3993:2.4994 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -2.2006:-2.9007 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_dbid = _clpDBCreateSymbolSkeleton('("SOT223" "PACKAGE") _clpAdjustPt('(-6.3 4.7) _clp_cinfo)
		nil (90.000 + _clp_cinfo->f_rotation) _clp_pbuf)


if( car(_clp_dbid) then
	_clp_dbid = caadr(_clp_dbid)
else
	_clp_dbid = -1)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(MECH_PIN_TO_MECH_PIN_SPACING "0.2032 MM")
	'(MECH_PIN_TO_CONDUCTOR_SPACING "0.2032 MM")
	'(SYMBOL_EDITED t)
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_sym = _clp_dbid
(when (nequal _clp_sym  -1)
 t )
(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 90.000 "2" )
_clp_dbid = (_clpDBCreateText "U*"
	(_clpAdjustPt -1.05:1.25 _clp_cinfo)  _clp_text_orient 
	"REF DES/SILKSCREEN_TOP" _clp_sym)

(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 90.000 "1" )
_clp_dbid = (_clpDBCreateText "U*"
	(_clpAdjustPt -6.25:3.65 _clp_cinfo)  _clp_text_orient 
	"REF DES/ASSEMBLY_TOP" _clp_sym)

_clp_path  = (_clpPathStart (list (_clpAdjustPt -10.6011:1.2491 _clp_cinfo))
	(_clpMKSConvert 0.254000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.254000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -10.6011:8.2509 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.254000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -2.0989:8.2509 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.254000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -2.0989:1.2491 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.254000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -10.6011:1.2491 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -4.5993:1.4994 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -8.0993:1.4994 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -8.0993:7.9994 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -4.5993:7.9994 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -4.5993:1.4994 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "PACKAGE GEOMETRY/ASSEMBLY_TOP" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -2.0493:1.2494 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -10.5493:1.2494 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -10.5493:8.2494 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -2.0493:8.2494 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -2.0493:1.2494 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PLACE_BOUND_TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -2.349:3.1496 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -4.4495:3.1496 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -4.4495:4.0998 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -2.349:4.0998 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -2.349:3.1496 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ROUTE KEEPOUT/TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -2.349:5.4502 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -4.3995:5.4502 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -4.3995:6.4504 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -2.349:6.4504 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -2.349:5.4502 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ROUTE KEEPOUT/TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -7.6503:1.8993 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -5.0497:1.8993 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -5.0497:7.7008 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -7.6503:7.7008 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -7.6503:1.8993 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ROUTE KEEPOUT/TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -1.05:2.5475 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -1.878:1.7195 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -2.0194:1.7195 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -2.7993:2.4994 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.3993:2.4994 _clp_cinfo))
_clpPl = list(
	'(SYMBOL_ETCH t)
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/TOP" nil _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.3993:4.7994 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -2.0195:4.7994 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -1.7276:5.0913 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -1.7276:6.924 _clp_cinfo))
_clpPl = list(
	'(SYMBOL_ETCH t)
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/TOP" nil _clp_sym _clpPl)
_clpPl = nil

(_clpDBCreateSymbolAutosilk _clp_sym)
_clp_sym = nil
printf(" 50 percent completed")
newline()

printf(" 60 percent completed")
newline()

(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 0.000 "2" )
_clp_dbid = (_clpDBCreateText "WWW.MLABVIET.COM" 
	(_clpAdjustPt -4.55:-7.3 _clp_cinfo)  _clp_text_orient 
	"BOARD GEOMETRY/SILKSCREEN_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

_clp_sym = _clpIsLayout()
_clp_pbuf = _clpPinBufStart(_clp_sym)
_clpInitPinText(_clp_pin_text "1" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("CUSTOMPAD" _clpAdjustPt(-15:5.08 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt 0:0 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_dbid = _clpDBCreateSymbolSkeleton('("PAD_CUSTOM" "PACKAGE") _clpAdjustPt('(-15.0 5.08) _clp_cinfo)
		nil (0.000 + _clp_cinfo->f_rotation) _clp_pbuf)


if( car(_clp_dbid) then
	_clp_dbid = caadr(_clp_dbid)
else
	_clp_dbid = -1)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(MECH_PIN_TO_MECH_PIN_SPACING "0.2032 MM")
	'(MECH_PIN_TO_CONDUCTOR_SPACING "0.2032 MM")
	'(FIXED t)
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_sym = _clp_dbid
(when (nequal _clp_sym  -1)
 t )
(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 0.000 "1" )
_clp_dbid = (_clpDBCreateText "P*"
	(_clpAdjustPt -15.635:5.08 _clp_cinfo)  _clp_text_orient 
	"REF DES/ASSEMBLY_TOP" _clp_sym)

_clp_path  = (_clpPathStart (list (_clpAdjustPt -16.35:4.18 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -16.35:5.98 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -13.65:5.98 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -13.65:4.18 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -16.35:4.18 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PLACE_BOUND_TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

(_clpDBCreateSymbolAutosilk _clp_sym)
_clp_sym = nil
_clp_sym = _clpIsLayout()
_clp_pbuf = _clpPinBufStart(_clp_sym)
_clpInitPinText(_clp_pin_text "1" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("CUSTOMPAD" _clpAdjustPt(-15:7.62 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt 0:0 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_dbid = _clpDBCreateSymbolSkeleton('("PAD_CUSTOM" "PACKAGE") _clpAdjustPt('(-15.0 7.62) _clp_cinfo)
		nil (0.000 + _clp_cinfo->f_rotation) _clp_pbuf)


if( car(_clp_dbid) then
	_clp_dbid = caadr(_clp_dbid)
else
	_clp_dbid = -1)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(MECH_PIN_TO_MECH_PIN_SPACING "0.2032 MM")
	'(MECH_PIN_TO_CONDUCTOR_SPACING "0.2032 MM")
	'(FIXED t)
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_sym = _clp_dbid
(when (nequal _clp_sym  -1)
 t )
(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 0.000 "1" )
_clp_dbid = (_clpDBCreateText "P*"
	(_clpAdjustPt -15.635:7.62 _clp_cinfo)  _clp_text_orient 
	"REF DES/ASSEMBLY_TOP" _clp_sym)

_clp_path  = (_clpPathStart (list (_clpAdjustPt -16.35:6.72 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -16.35:8.52 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -13.65:8.52 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -13.65:6.72 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -16.35:6.72 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PLACE_BOUND_TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

(_clpDBCreateSymbolAutosilk _clp_sym)
_clp_sym = nil
_clp_sym = _clpIsLayout()
_clp_pbuf = _clpPinBufStart(_clp_sym)
_clpInitPinText(_clp_pin_text "24" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(270.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("R82_30" _clpAdjustPt(4.25:8.262499999999999 _clp_cinfo) 	
	_clp_pin_text (270.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -1.25:1.9625 _clp_cinfo) 270.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "23" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(270.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("R82_30" _clpAdjustPt(4.75:8.262499999999999 _clp_cinfo) 	
	_clp_pin_text (270.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -0.75:1.9625 _clp_cinfo) 270.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "22" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(270.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("R82_30" _clpAdjustPt(5.25:8.262499999999999 _clp_cinfo) 	
	_clp_pin_text (270.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -0.25:1.9625 _clp_cinfo) 270.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "21" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(270.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("R82_30" _clpAdjustPt(5.75:8.262499999999999 _clp_cinfo) 	
	_clp_pin_text (270.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 0.25:1.9625 _clp_cinfo) 270.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "20" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(270.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("R82_30" _clpAdjustPt(6.25:8.262499999999999 _clp_cinfo) 	
	_clp_pin_text (270.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 0.75:1.9625 _clp_cinfo) 270.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "19" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(270.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("R82_30" _clpAdjustPt(6.75:8.262499999999999 _clp_cinfo) 	
	_clp_pin_text (270.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 1.25:1.9625 _clp_cinfo) 270.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "18" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("R82_30" _clpAdjustPt(7.4625:7.55 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 1.9625:1.25 _clp_cinfo) 180.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "17" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("R82_30" _clpAdjustPt(7.4625:7.05 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 1.9625:0.75 _clp_cinfo) 180.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "16" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("R82_30" _clpAdjustPt(7.4625:6.55 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 1.9625:0.25 _clp_cinfo) 180.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "15" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("R82_30" _clpAdjustPt(7.4625:6.05 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 1.9625:-0.25 _clp_cinfo) 180.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "14" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("R82_30" _clpAdjustPt(7.4625:5.55 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 1.9625:-0.75 _clp_cinfo) 180.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "13" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("R82_30" _clpAdjustPt(7.4625:5.05 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 1.9625:-1.25 _clp_cinfo) 180.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "12" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(90.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("R82_30" _clpAdjustPt(6.75:4.3375 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 1.25:-1.9625 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "11" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(90.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("R82_30" _clpAdjustPt(6.25:4.3375 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 0.75:-1.9625 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "10" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(90.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("R82_30" _clpAdjustPt(5.75:4.3375 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 0.25:-1.9625 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "9" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(90.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("R82_30" _clpAdjustPt(5.25:4.3375 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -0.25:-1.9625 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "8" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(90.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("R82_30" _clpAdjustPt(4.75:4.3375 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -0.75:-1.9625 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "7" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(90.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("R82_30" _clpAdjustPt(4.25:4.3375 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -1.25:-1.9625 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "6" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("R82_30" _clpAdjustPt(3.5375:5.05 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt -1.9625:-1.25 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "5" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("R82_30" _clpAdjustPt(3.5375:5.55 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt -1.9625:-0.75 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "4" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("R82_30" _clpAdjustPt(3.5375:6.05 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt -1.9625:-0.25 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "3" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("R82_30" _clpAdjustPt(3.5375:6.55 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt -1.9625:0.25 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "2" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("R82_30" _clpAdjustPt(3.5375:7.05 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt -1.9625:0.75 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "1" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("R82_30" _clpAdjustPt(3.5375:7.55 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt -1.9625:1.25 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_dbid = _clpDBCreateSymbolSkeleton('("QFN_24PIN_4_4_09" "PACKAGE") _clpAdjustPt('(5.5 6.3) _clp_cinfo)
		nil (0.000 + _clp_cinfo->f_rotation) _clp_pbuf)


if( car(_clp_dbid) then
	_clp_dbid = caadr(_clp_dbid)
else
	_clp_dbid = -1)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(MECH_PIN_TO_MECH_PIN_SPACING "0.2032 MM")
	'(MECH_PIN_TO_CONDUCTOR_SPACING "0.2032 MM")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_sym = _clp_dbid
(when (nequal _clp_sym  -1)
 t )
(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "3" )
_clp_dbid = (_clpDBCreateText "U*"
	(_clpAdjustPt 5.5:8.125 _clp_cinfo)  _clp_text_orient 
	"DEVICE TYPE/SILKSCREEN_TOP" _clp_sym)

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "2" )
_clp_dbid = (_clpDBCreateText "U*"
	(_clpAdjustPt 2.5:6.35 _clp_cinfo)  _clp_text_orient 
	"REF DES/SILKSCREEN_TOP" _clp_sym)

_clp_path  = (_clpPathStart (list (_clpAdjustPt 7.5:8.300000000000001 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 7.5:4.3 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.5:4.3 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.5:8.300000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 7.5:8.300000000000001 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 3.5:8.199999999999999 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.6:8.300000000000001 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 3.5:8.1 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.7:8.300000000000001 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 3.5:8 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.8:8.300000000000001 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 3.5:7.9 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.9:8.300000000000001 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 3.5:8.074999999999999 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.5:8.300000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.725:8.300000000000001 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 7.275:8.300000000000001 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 7.5:8.300000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 7.5:8.074999999999999 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 3.5:4.525 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.5:4.3 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.725:4.3 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 7.275:4.3 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 7.5:4.3 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 7.5:4.525 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 2.875:3.675 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.875:8.925000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.125:8.925000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.125:3.675 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.875:3.675 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PLACE_BOUND_TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 2.875:3.675 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.875:8.925000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.125:8.925000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.125:3.675 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.875:3.675 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/DFA_BOUND_TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 2.875:3.675 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.875:8.925000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.125:8.925000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.125:3.675 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.875:3.675 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "MANUFACTURING/NO_PROBE_TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 2.725:7.55 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.725:7.55 _clp_cinfo) t
 	(_clpAdjustPt 2.525:7.55 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/SILKSCREEN_TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 4.7:7.6 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 4.7:6.6 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 4.5:6.4 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 4.2:6.7 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 4.2:7.3 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 4.5:7.6 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 4.7:7.6 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PLACE_BOUND_TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 7.7:5.05 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.686400000000001:5.05 _clp_cinfo))
_clpPl = list(
	'(SYMBOL_ETCH t)
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/TOP" nil _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 7.4625:5.05 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 7.7:5.05 _clp_cinfo))
_clpPl = list(
	'(SYMBOL_ETCH t)
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/TOP" nil _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 7.4625:7.55 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.151999999999999:7.55 _clp_cinfo))
_clpPl = list(
	'(SYMBOL_ETCH t)
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/TOP" nil _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 4.3:7.5 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 4.3:5.1 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 6.7:5.1 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 6.7:7.5 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 4.3:7.5 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/BOTTOM" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 4.3:7.5 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 4.3:5.1 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 6.7:5.1 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 6.7:7.5 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 4.3:7.5 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

(_clpDBCreateSymbolAutosilk _clp_sym)
_clp_sym = nil
_clp_sym = _clpIsLayout()
_clp_pbuf = _clpPinBufStart(_clp_sym)
_clpInitPinText(_clp_pin_text "2" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("R74_102" _clpAdjustPt(-11.7:9.300000000000001 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt 0.85:0 _clp_cinfo) 180.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "1" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("R74_102" _clpAdjustPt(-10:9.300000000000001 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -0.85:0 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_dbid = _clpDBCreateSymbolSkeleton('("RES_SMD_0603" "PACKAGE") _clpAdjustPt('(-10.85 9.300000000000001) _clp_cinfo)
		nil (180.000 + _clp_cinfo->f_rotation) _clp_pbuf)


if( car(_clp_dbid) then
	_clp_dbid = caadr(_clp_dbid)
else
	_clp_dbid = -1)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(MECH_PIN_TO_MECH_PIN_SPACING "0.2032 MM")
	'(MECH_PIN_TO_CONDUCTOR_SPACING "0.2032 MM")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_sym = _clp_dbid
(when (nequal _clp_sym  -1)
 t )
(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 0.000 "2" )
_clp_dbid = (_clpDBCreateText "R*"
	(_clpAdjustPt -13.5:9.300000000000001 _clp_cinfo)  _clp_text_orient 
	"REF DES/SILKSCREEN_TOP" _clp_sym)

(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 180.000 "1" )
_clp_dbid = (_clpDBCreateText "R*"
	(_clpAdjustPt -9.65:9.800000000000001 _clp_cinfo)  _clp_text_orient 
	"REF DES/ASSEMBLY_TOP" _clp_sym)

_clp_path  = (_clpPathStart (list (_clpAdjustPt -11.65:8.9 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.65:9.699999999999999 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -10.05:9.699999999999999 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -10.05:8.9 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.65:8.9 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -9.75:8.800000000000001 _clp_cinfo))
	(_clpMKSConvert 0.150000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.150000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.95:8.800000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.150000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.95:9.800000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.150000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -9.75:9.800000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.150000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -9.75:8.800000000000001 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -9.630000000000001:9.875 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -9.630000000000001:8.725 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12.07:8.725 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12.07:9.875 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -9.630000000000001:9.875 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PLACE_BOUND_TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -9.75:9.800000000000001 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -9.75:8.800000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.95:8.800000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.95:9.800000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -9.75:9.800000000000001 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "MANUFACTURING/NO_PROBE_TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -10.55:8.800000000000001 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -10.55:9.800000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.15:9.800000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.15:8.800000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -10.55:8.800000000000001 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ROUTE KEEPOUT/TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -9.75:9.800000000000001 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.95:9.800000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.95:8.800000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -9.75:8.800000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -9.75:9.800000000000001 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/DFA_BOUND_TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

(_clpDBCreateSymbolAutosilk _clp_sym)
_clp_sym = nil
(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 0.000 "2" )
_clp_dbid = (_clpDBCreateText "PWM0" 
	(_clpAdjustPt -13.6:4.6 _clp_cinfo)  _clp_text_orient 
	"BOARD GEOMETRY/SILKSCREEN_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

printf(" 70 percent completed")
newline()

(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 0.000 "2" )
_clp_dbid = (_clpDBCreateText "5V" 
	(_clpAdjustPt -13.45:7.2 _clp_cinfo)  _clp_text_orient 
	"BOARD GEOMETRY/SILKSCREEN_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

_clp_sym = _clpIsLayout()
_clp_pbuf = _clpPinBufStart(_clp_sym)
_clpInitPinText(_clp_pin_text "1" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("CUSTOMPAD" _clpAdjustPt(-15:2.54 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt 0:0 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_dbid = _clpDBCreateSymbolSkeleton('("PAD_CUSTOM" "PACKAGE") _clpAdjustPt('(-15.0 2.54) _clp_cinfo)
		nil (0.000 + _clp_cinfo->f_rotation) _clp_pbuf)


if( car(_clp_dbid) then
	_clp_dbid = caadr(_clp_dbid)
else
	_clp_dbid = -1)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(MECH_PIN_TO_MECH_PIN_SPACING "0.2032 MM")
	'(MECH_PIN_TO_CONDUCTOR_SPACING "0.2032 MM")
	'(FIXED t)
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_sym = _clp_dbid
(when (nequal _clp_sym  -1)
 t )
(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 0.000 "1" )
_clp_dbid = (_clpDBCreateText "P*"
	(_clpAdjustPt -15.635:2.54 _clp_cinfo)  _clp_text_orient 
	"REF DES/ASSEMBLY_TOP" _clp_sym)

_clp_path  = (_clpPathStart (list (_clpAdjustPt -16.35:1.64 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -16.35:3.44 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -13.65:3.44 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -13.65:1.64 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -16.35:1.64 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PLACE_BOUND_TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

(_clpDBCreateSymbolAutosilk _clp_sym)
_clp_sym = nil
_clp_sym = _clpIsLayout()
_clp_pbuf = _clpPinBufStart(_clp_sym)
_clpInitPinText(_clp_pin_text "1" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("CUSTOMPAD" _clpAdjustPt(-15:0 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt 0:0 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_dbid = _clpDBCreateSymbolSkeleton('("PAD_CUSTOM" "PACKAGE") _clpAdjustPt('(-15.0 0.0) _clp_cinfo)
		nil (0.000 + _clp_cinfo->f_rotation) _clp_pbuf)


if( car(_clp_dbid) then
	_clp_dbid = caadr(_clp_dbid)
else
	_clp_dbid = -1)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(MECH_PIN_TO_MECH_PIN_SPACING "0.2032 MM")
	'(MECH_PIN_TO_CONDUCTOR_SPACING "0.2032 MM")
	'(FIXED t)
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_sym = _clp_dbid
(when (nequal _clp_sym  -1)
 t )
(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 0.000 "1" )
_clp_dbid = (_clpDBCreateText "P*"
	(_clpAdjustPt -15.635:0 _clp_cinfo)  _clp_text_orient 
	"REF DES/ASSEMBLY_TOP" _clp_sym)

_clp_path  = (_clpPathStart (list (_clpAdjustPt -16.35:-0.9 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -16.35:0.9 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -13.65:0.9 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -13.65:-0.9 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -16.35:-0.9 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PLACE_BOUND_TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

(_clpDBCreateSymbolAutosilk _clp_sym)
_clp_sym = nil
_clp_sym = _clpIsLayout()
_clp_pbuf = _clpPinBufStart(_clp_sym)
_clpInitPinText(_clp_pin_text "1" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("CUSTOMPAD" _clpAdjustPt(-15:-2.54 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt 0:0 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_dbid = _clpDBCreateSymbolSkeleton('("PAD_CUSTOM" "PACKAGE") _clpAdjustPt('(-15.0 -2.54) _clp_cinfo)
		nil (0.000 + _clp_cinfo->f_rotation) _clp_pbuf)


if( car(_clp_dbid) then
	_clp_dbid = caadr(_clp_dbid)
else
	_clp_dbid = -1)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(MECH_PIN_TO_MECH_PIN_SPACING "0.2032 MM")
	'(MECH_PIN_TO_CONDUCTOR_SPACING "0.2032 MM")
	'(FIXED t)
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_sym = _clp_dbid
(when (nequal _clp_sym  -1)
 t )
(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 0.000 "1" )
_clp_dbid = (_clpDBCreateText "P*"
	(_clpAdjustPt -15.635:-2.54 _clp_cinfo)  _clp_text_orient 
	"REF DES/ASSEMBLY_TOP" _clp_sym)

_clp_path  = (_clpPathStart (list (_clpAdjustPt -16.35:-3.44 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -16.35:-1.64 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -13.65:-1.64 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -13.65:-3.44 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -16.35:-3.44 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PLACE_BOUND_TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

(_clpDBCreateSymbolAutosilk _clp_sym)
_clp_sym = nil
_clp_sym = _clpIsLayout()
_clp_pbuf = _clpPinBufStart(_clp_sym)
_clpInitPinText(_clp_pin_text "20" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(270.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("SMD03REC12" _clpAdjustPt(-2.725:0.225 _clp_cinfo) 	
	_clp_pin_text (270.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -2.925:2.875 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "19" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(270.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("SMD03REC12" _clpAdjustPt(-2.725:-0.425 _clp_cinfo) 	
	_clp_pin_text (270.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -2.275:2.875 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "18" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(270.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("SMD03REC12" _clpAdjustPt(-2.725:-1.075 _clp_cinfo) 	
	_clp_pin_text (270.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -1.625:2.875 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "17" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(270.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("SMD03REC12" _clpAdjustPt(-2.725:-1.725 _clp_cinfo) 	
	_clp_pin_text (270.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -0.975:2.875 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "16" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(270.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("SMD03REC12" _clpAdjustPt(-2.725:-2.375 _clp_cinfo) 	
	_clp_pin_text (270.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -0.325:2.875 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "15" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(270.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("SMD03REC12" _clpAdjustPt(-2.725:-3.025 _clp_cinfo) 	
	_clp_pin_text (270.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 0.325:2.875 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "14" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(270.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("SMD03REC12" _clpAdjustPt(-2.725:-3.675 _clp_cinfo) 	
	_clp_pin_text (270.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 0.975:2.875 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "13" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(270.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("SMD03REC12" _clpAdjustPt(-2.725:-4.325 _clp_cinfo) 	
	_clp_pin_text (270.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 1.625:2.875 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "12" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(270.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("SMD03REC12" _clpAdjustPt(-2.725:-4.975 _clp_cinfo) 	
	_clp_pin_text (270.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 2.275:2.875 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "11" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(270.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("SMD03REC12" _clpAdjustPt(-2.725:-5.625 _clp_cinfo) 	
	_clp_pin_text (270.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 2.925:2.875 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "10" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(270.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("SMD03REC12" _clpAdjustPt(-8.475:-5.625 _clp_cinfo) 	
	_clp_pin_text (270.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 2.925:-2.875 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "9" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(270.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("SMD03REC12" _clpAdjustPt(-8.475:-4.975 _clp_cinfo) 	
	_clp_pin_text (270.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 2.275:-2.875 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "8" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(270.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("SMD03REC12" _clpAdjustPt(-8.475:-4.325 _clp_cinfo) 	
	_clp_pin_text (270.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 1.625:-2.875 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "7" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(270.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("SMD03REC12" _clpAdjustPt(-8.475:-3.675 _clp_cinfo) 	
	_clp_pin_text (270.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 0.975:-2.875 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "6" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(270.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("SMD03REC12" _clpAdjustPt(-8.475:-3.025 _clp_cinfo) 	
	_clp_pin_text (270.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 0.325:-2.875 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "5" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(270.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("SMD03REC12" _clpAdjustPt(-8.475:-2.375 _clp_cinfo) 	
	_clp_pin_text (270.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -0.325:-2.875 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "4" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(270.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("SMD03REC12" _clpAdjustPt(-8.475:-1.725 _clp_cinfo) 	
	_clp_pin_text (270.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -0.975:-2.875 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "3" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(270.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("SMD03REC12" _clpAdjustPt(-8.475:-1.075 _clp_cinfo) 	
	_clp_pin_text (270.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -1.625:-2.875 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "2" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(270.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("SMD03REC12" _clpAdjustPt(-8.475:-0.425 _clp_cinfo) 	
	_clp_pin_text (270.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -2.275:-2.875 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "1" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(270.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("SMD03REC12" _clpAdjustPt(-8.475:0.225 _clp_cinfo) 	
	_clp_pin_text (270.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -2.925:-2.875 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_dbid = _clpDBCreateSymbolSkeleton('("TSSOP20" "PACKAGE") _clpAdjustPt('(-5.6 -2.7) _clp_cinfo)
		nil (270.000 + _clp_cinfo->f_rotation) _clp_pbuf)


if( car(_clp_dbid) then
	_clp_dbid = caadr(_clp_dbid)
else
	_clp_dbid = -1)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(MECH_PIN_TO_MECH_PIN_SPACING "0.2032 MM")
	'(MECH_PIN_TO_CONDUCTOR_SPACING "0.2032 MM")
	'(SYMBOL_EDITED t)
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_sym = _clp_dbid
(when (nequal _clp_sym  -1)
 t )
(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 0.000 "2" )
_clp_dbid = (_clpDBCreateText "U*"
	(_clpAdjustPt -1.65:-0.35 _clp_cinfo)  _clp_text_orient 
	"REF DES/SILKSCREEN_TOP" _clp_sym)

(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 0.000 "1" )
_clp_dbid = (_clpDBCreateText "U*"
	(_clpAdjustPt -6:-1.1 _clp_cinfo)  _clp_text_orient 
	"REF DES/ASSEMBLY_TOP" _clp_sym)

_clp_path  = (_clpPathStart (list (_clpAdjustPt -1.9:0.6 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -1.9:-6 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -9.300000000000001:-6 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -9.300000000000001:0.6 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -1.9:0.6 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -1.9:0.6 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -1.9:-6 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -9.300000000000001:-6 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -9.300000000000001:0.6 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -1.9:0.6 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "REF DES/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -9.5764:0.2 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -9.5764:0.2 _clp_cinfo) nil
 	(_clpAdjustPt -9.800000000000001:0.2 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/SILKSCREEN_TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -1.9:0.6 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -9.300000000000001:0.6 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -9.300000000000001:-6 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -1.9:-6 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -1.9:0.6 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PLACE_BOUND_TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_dbid = _clpDBCreateVia( "VIA" _clpAdjustPt(2.075:-3.025 _clp_cinfo) 	
	nil nil _clp_cinfo->f_rotation _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_dbid = _clpDBCreateVia( "VIA" _clpAdjustPt(1.45:-4.975 _clp_cinfo) 	
	nil nil _clp_cinfo->f_rotation _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_dbid = _clpDBCreateVia( "VIA" _clpAdjustPt(1.75:-6.45 _clp_cinfo) 	
	nil nil _clp_cinfo->f_rotation _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_dbid = _clpDBCreateVia( "VIA" _clpAdjustPt(3.025:-1.075 _clp_cinfo) 	
	nil nil _clp_cinfo->f_rotation _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_dbid = _clpDBCreateVia( "VIA" _clpAdjustPt(2.035:0.335 _clp_cinfo) 	
	nil nil _clp_cinfo->f_rotation _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_dbid = _clpDBCreateVia( "VIA" _clpAdjustPt(-7.4432:-4.975 _clp_cinfo) 	
	nil nil _clp_cinfo->f_rotation _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_dbid = _clpDBCreateVia( "VIA" _clpAdjustPt(-12.325:-1.725 _clp_cinfo) 	
	nil nil _clp_cinfo->f_rotation _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 1.75:-6.45 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 0.925:-5.625 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -2.725:-5.625 _clp_cinfo))
_clpPl = list(
	'(SYMBOL_ETCH t)
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/TOP" nil _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 2.035:0.335 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.2213:1.1487 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.5025:1.1487 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -4.0013:0.6499 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -4.0013:-0.175 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.7513:-0.425 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -2.725:-0.425 _clp_cinfo))
_clpPl = list(
	'(SYMBOL_ETCH t)
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/TOP" nil _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -2.725:-1.075 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.025:-1.075 _clp_cinfo))
_clpPl = list(
	'(SYMBOL_ETCH t)
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/TOP" nil _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -2.725:-3.025 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.075:-3.025 _clp_cinfo))
_clpPl = list(
	'(SYMBOL_ETCH t)
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/TOP" nil _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -2.725:-4.975 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.45:-4.975 _clp_cinfo))
_clpPl = list(
	'(SYMBOL_ETCH t)
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/TOP" nil _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -8.475:-4.975 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -7.4432:-4.975 _clp_cinfo))
_clpPl = list(
	'(SYMBOL_ETCH t)
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/TOP" nil _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -8.475:-1.725 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12.325:-1.725 _clp_cinfo))
_clpPl = list(
	'(SYMBOL_ETCH t)
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/TOP" nil _clp_sym _clpPl)
_clpPl = nil

(_clpDBCreateSymbolAutosilk _clp_sym)
_clp_sym = nil
(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 0.000 "2" )
_clp_dbid = (_clpDBCreateText "RX" 
	(_clpAdjustPt -13.35:-0.4 _clp_cinfo)  _clp_text_orient 
	"BOARD GEOMETRY/SILKSCREEN_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 0.000 "2" )
_clp_dbid = (_clpDBCreateText "TX" 
	(_clpAdjustPt -13.4:2.1 _clp_cinfo)  _clp_text_orient 
	"BOARD GEOMETRY/SILKSCREEN_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 0.000 "2" )
_clp_dbid = (_clpDBCreateText "DO0" 
	(_clpAdjustPt -13.45:-3 _clp_cinfo)  _clp_text_orient 
	"BOARD GEOMETRY/SILKSCREEN_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

_clp_sym = _clpIsLayout()
_clp_pbuf = _clpPinBufStart(_clp_sym)
_clpInitPinText(_clp_pin_text "1" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("CUSTOMPAD" _clpAdjustPt(-15:-5.08 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt 0:0 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_dbid = _clpDBCreateSymbolSkeleton('("PAD_CUSTOM" "PACKAGE") _clpAdjustPt('(-15.0 -5.08) _clp_cinfo)
		nil (0.000 + _clp_cinfo->f_rotation) _clp_pbuf)


if( car(_clp_dbid) then
	_clp_dbid = caadr(_clp_dbid)
else
	_clp_dbid = -1)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(MECH_PIN_TO_MECH_PIN_SPACING "0.2032 MM")
	'(MECH_PIN_TO_CONDUCTOR_SPACING "0.2032 MM")
	'(FIXED t)
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_sym = _clp_dbid
(when (nequal _clp_sym  -1)
 t )
(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 0.000 "1" )
_clp_dbid = (_clpDBCreateText "P*"
	(_clpAdjustPt -15.635:-5.08 _clp_cinfo)  _clp_text_orient 
	"REF DES/ASSEMBLY_TOP" _clp_sym)

_clp_path  = (_clpPathStart (list (_clpAdjustPt -16.35:-5.98 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -16.35:-4.18 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -13.65:-4.18 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -13.65:-5.98 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -16.35:-5.98 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PLACE_BOUND_TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

(_clpDBCreateSymbolAutosilk _clp_sym)
_clp_sym = nil
_clp_sym = _clpIsLayout()
_clp_pbuf = _clpPinBufStart(_clp_sym)
_clpInitPinText(_clp_pin_text "2" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("R74_102" _clpAdjustPt(-11.8:-6.95 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt 0.75:0 _clp_cinfo) 180.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "1" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("R74_102" _clpAdjustPt(-10.3:-6.95 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -0.75:0 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_dbid = _clpDBCreateSymbolSkeleton('("CAP_SMD_0603" "PACKAGE") _clpAdjustPt('(-11.05 -6.95) _clp_cinfo)
		nil (180.000 + _clp_cinfo->f_rotation) _clp_pbuf)


if( car(_clp_dbid) then
	_clp_dbid = caadr(_clp_dbid)
else
	_clp_dbid = -1)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(MECH_PIN_TO_MECH_PIN_SPACING "0.2032 MM")
	'(MECH_PIN_TO_CONDUCTOR_SPACING "0.2032 MM")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_sym = _clp_dbid
(when (nequal _clp_sym  -1)
 t )
(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 0.000 "2" )
_clp_dbid = (_clpDBCreateText "C"
	(_clpAdjustPt -7.05:-7.3 _clp_cinfo)  _clp_text_orient 
	"REF DES/SILKSCREEN_TOP" _clp_sym)

(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 180.000 "1" )
_clp_dbid = (_clpDBCreateText "C"
	(_clpAdjustPt -9.85:-6.45 _clp_cinfo)  _clp_text_orient 
	"REF DES/ASSEMBLY_TOP" _clp_sym)

_clp_path  = (_clpPathStart (list (_clpAdjustPt -11.85:-7.35 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.85:-6.55 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -10.25:-6.55 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -10.25:-7.35 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.85:-7.35 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -9.949999999999999:-7.45 _clp_cinfo))
	(_clpMKSConvert 0.150000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.150000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12.15:-7.45 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.150000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12.15:-6.45 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.150000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -9.949999999999999:-6.45 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.150000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -9.949999999999999:-7.45 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -10.75:-7.45 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -10.75:-6.45 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.35:-6.45 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.35:-7.45 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -10.75:-7.45 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ROUTE KEEPOUT/TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -10.15:-6.45 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.95:-6.45 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.95:-7.45 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -10.15:-7.45 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -10.15:-6.45 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/DFA_BOUND_TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -10.15:-6.45 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.95:-6.45 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.95:-7.45 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -10.15:-7.45 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -10.15:-6.45 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PLACE_BOUND_TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

(_clpDBCreateSymbolAutosilk _clp_sym)
_clp_sym = nil
_clp_sym = _clpIsLayout()
_clp_pbuf = _clpPinBufStart(_clp_sym)
_clpInitPinText(_clp_pin_text "2" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("R74_102" _clpAdjustPt(-12.95:-6.95 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 0.75:0 _clp_cinfo) 180.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "1" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("R74_102" _clpAdjustPt(-14.45:-6.95 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt -0.75:0 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_dbid = _clpDBCreateSymbolSkeleton('("CAP_SMD_0603" "PACKAGE") _clpAdjustPt('(-13.7 -6.95) _clp_cinfo)
		nil (0.000 + _clp_cinfo->f_rotation) _clp_pbuf)


if( car(_clp_dbid) then
	_clp_dbid = caadr(_clp_dbid)
else
	_clp_dbid = -1)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(MECH_PIN_TO_MECH_PIN_SPACING "0.2032 MM")
	'(MECH_PIN_TO_CONDUCTOR_SPACING "0.2032 MM")
	'(SYMBOL_EDITED t)
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_sym = _clp_dbid
(when (nequal _clp_sym  -1)
 t )
(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 0.000 "2" )
_clp_dbid = (_clpDBCreateText "C"
	(_clpAdjustPt -8.75:-7.3 _clp_cinfo)  _clp_text_orient 
	"REF DES/SILKSCREEN_TOP" _clp_sym)

(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 0.000 "1" )
_clp_dbid = (_clpDBCreateText "C"
	(_clpAdjustPt -14.9:-7.45 _clp_cinfo)  _clp_text_orient 
	"REF DES/ASSEMBLY_TOP" _clp_sym)

_clp_path  = (_clpPathStart (list (_clpAdjustPt -12.9:-6.55 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12.9:-7.35 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -14.5:-7.35 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -14.5:-6.55 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12.9:-6.55 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -14.8:-6.45 _clp_cinfo))
	(_clpMKSConvert 0.150000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.150000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12.6:-6.45 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.150000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12.6:-7.45 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.150000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -14.8:-7.45 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.150000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -14.8:-6.45 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -14:-6.45 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -14:-7.45 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -13.4:-7.45 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -13.4:-6.45 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -14:-6.45 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ROUTE KEEPOUT/TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -14.6:-7.45 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12.8:-7.45 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12.8:-6.45 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -14.6:-6.45 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -14.6:-7.45 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/DFA_BOUND_TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -14.6:-7.45 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12.8:-7.45 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12.8:-6.45 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -14.6:-6.45 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -14.6:-7.45 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PLACE_BOUND_TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_dbid = _clpDBCreateVia( "VIA" _clpAdjustPt(-14.5:-6.95 _clp_cinfo) 	
	nil nil _clp_cinfo->f_rotation _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -14.45:-6.95 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -14.5:-6.95 _clp_cinfo))
_clpPl = list(
	'(SYMBOL_ETCH t)
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/TOP" nil _clp_sym _clpPl)
_clpPl = nil

(_clpDBCreateSymbolAutosilk _clp_sym)
_clp_sym = nil
_clp_sym = _clpIsLayout()
_clp_pbuf = _clpPinBufStart(_clp_sym)
_clpInitPinText(_clp_pin_text "4" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" t
	(270.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("SMD12SQ12" _clpAdjustPt(0.6:1.8 _clp_cinfo) 	
	_clp_pin_text (270.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 6:0 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() t)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "3" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" t
	(270.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("SMD12SQ12" _clpAdjustPt(0.6:3.8 _clp_cinfo) 	
	_clp_pin_text (270.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 4:0 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() t)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "2" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" t
	(270.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("SMD12SQ12" _clpAdjustPt(0.6:5.8 _clp_cinfo) 	
	_clp_pin_text (270.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 2:0 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() t)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "1" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" t
	(270.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("SMD12SQ12" _clpAdjustPt(0.6:7.8 _clp_cinfo) 	
	_clp_pin_text (270.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 0:0 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() t)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_dbid = _clpDBCreateSymbolSkeleton('("SWIM_SMD" "PACKAGE") _clpAdjustPt('(0.6 7.8) _clp_cinfo)
		t (90.000 + _clp_cinfo->f_rotation) _clp_pbuf)


if( car(_clp_dbid) then
	_clp_dbid = caadr(_clp_dbid)
else
	_clp_dbid = -1)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(MECH_PIN_TO_MECH_PIN_SPACING "0.2032 MM")
	'(MECH_PIN_TO_CONDUCTOR_SPACING "0.2032 MM")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_sym = _clp_dbid
(when (nequal _clp_sym  -1)
 t )
(_clpInitTextOrientation _clp_text_orient "LEFT" t _clp_cinfo->f_rotation + 90.000 "21" )
_clp_dbid = (_clpDBCreateText "J*"
	(_clpAdjustPt -0.8:7.1 _clp_cinfo)  _clp_text_orient 
	"REF DES/SILKSCREEN_BOTTOM" _clp_sym)

(_clpInitTextOrientation _clp_text_orient "LEFT" t _clp_cinfo->f_rotation + 90.000 "1" )
_clp_dbid = (_clpDBCreateText "J*"
	(_clpAdjustPt -0.7:8.6 _clp_cinfo)  _clp_text_orient 
	"REF DES/ASSEMBLY_BOTTOM" _clp_sym)

_clp_path  = (_clpPathStart (list (_clpAdjustPt -0.3:8.699999999999999 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -0.3:0.9 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.5:0.9 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.5:8.699999999999999 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -0.3:8.699999999999999 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_BOTTOM" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -0.3:8.699999999999999 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.5:8.699999999999999 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.5:0.9 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -0.3:0.9 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -0.3:8.699999999999999 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PLACE_BOUND_BOTTOM" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 3:4.45 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3:3.75 _clp_cinfo))
_clpPl = list(
	'(SYMBOL_ETCH t)
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/BOTTOM" nil _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 0.6:7.8 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3:5.4 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3:4.45 _clp_cinfo))
_clpPl = list(
	'(SYMBOL_ETCH t)
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/BOTTOM" nil _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 0.6:1.8 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 0.6:-3.85 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 0.65:-3.9 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.2:-3.9 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.25:-3.95 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.25:-5.75 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.2:-5.8 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12.0818:-5.8 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12.325:-5.5568 _clp_cinfo))
_clpPl = list(
	'(SYMBOL_ETCH t)
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/BOTTOM" nil _clp_sym _clpPl)
_clpPl = nil

(_clpDBCreateSymbolAutosilk _clp_sym)
_clp_sym = nil
(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 0.000 "2" )
_clp_dbid = (_clpDBCreateText "DO1" 
	(_clpAdjustPt -13.45:-5.55 _clp_cinfo)  _clp_text_orient 
	"BOARD GEOMETRY/SILKSCREEN_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

printf(" 80 percent completed")
newline()

printf(" 90 percent completed")
newline()

_clp_dbid = _clpDBCreateVia( "VIA" _clpAdjustPt(-12.4:8.35 _clp_cinfo) 	
	nil nil _clp_cinfo->f_rotation _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_dbid = _clpDBCreateVia( "VIA" _clpAdjustPt(-1.05:3.8 _clp_cinfo) 	
	nil nil _clp_cinfo->f_rotation _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_dbid = _clpDBCreateVia( "VIA" _clpAdjustPt(-0.6:8.8491 _clp_cinfo) 	
	nil nil _clp_cinfo->f_rotation _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_dbid = _clpDBCreateVia( "VIA" _clpAdjustPt(-1.4009:8.8491 _clp_cinfo) 	
	nil nil _clp_cinfo->f_rotation _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_dbid = _clpDBCreateVia( "VIA" _clpAdjustPt(7.8:4.45 _clp_cinfo) 	
	nil nil _clp_cinfo->f_rotation _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_dbid = _clpDBCreateVia( "VIA" _clpAdjustPt(-8.800000000000001:8.25 _clp_cinfo) 	
	nil nil _clp_cinfo->f_rotation _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_dbid = _clpDBCreateVia( "VIA" _clpAdjustPt(-0.75:9.800000000000001 _clp_cinfo) 	
	nil nil _clp_cinfo->f_rotation _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_dbid = _clpDBCreateVia( "VIA" _clpAdjustPt(3.65:8.25 _clp_cinfo) 	
	nil nil _clp_cinfo->f_rotation _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_dbid = _clpDBCreateVia( "VIA" _clpAdjustPt(11.75:-5 _clp_cinfo) 	
	nil nil _clp_cinfo->f_rotation _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_dbid = _clpDBCreateVia( "VIA" _clpAdjustPt(8.15:3.15 _clp_cinfo) 	
	nil nil _clp_cinfo->f_rotation _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_dbid = _clpDBCreateVia( "VIA" _clpAdjustPt(7.35:1.5 _clp_cinfo) 	
	nil nil _clp_cinfo->f_rotation _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_dbid = _clpDBCreateVia( "VIA" _clpAdjustPt(5.15:-3.65 _clp_cinfo) 	
	nil nil _clp_cinfo->f_rotation _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_dbid = _clpDBCreateVia( "VIA" _clpAdjustPt(5.35:-0.15 _clp_cinfo) 	
	nil nil _clp_cinfo->f_rotation _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_dbid = _clpDBCreateVia( "VIA" _clpAdjustPt(1.477:4.8688 _clp_cinfo) 	
	nil nil _clp_cinfo->f_rotation _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_dbid = _clpDBCreateVia( "VIA" _clpAdjustPt(4.65:7.15 _clp_cinfo) 	
	nil nil _clp_cinfo->f_rotation _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_dbid = _clpDBCreateVia( "VIA" _clpAdjustPt(4.65:5.45 _clp_cinfo) 	
	nil nil _clp_cinfo->f_rotation _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_dbid = _clpDBCreateVia( "VIA" _clpAdjustPt(6.35:5.45 _clp_cinfo) 	
	nil nil _clp_cinfo->f_rotation _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_dbid = _clpDBCreateVia( "VIA" _clpAdjustPt(5.55:5.45 _clp_cinfo) 	
	nil nil _clp_cinfo->f_rotation _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_dbid = _clpDBCreateVia( "VIA" _clpAdjustPt(4.65:6.25 _clp_cinfo) 	
	nil nil _clp_cinfo->f_rotation _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_dbid = _clpDBCreateVia( "VIA" _clpAdjustPt(5.55:6.25 _clp_cinfo) 	
	nil nil _clp_cinfo->f_rotation _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_dbid = _clpDBCreateVia( "VIA" _clpAdjustPt(6.35:6.25 _clp_cinfo) 	
	nil nil _clp_cinfo->f_rotation _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_dbid = _clpDBCreateVia( "VIA" _clpAdjustPt(6.35:7.15 _clp_cinfo) 	
	nil nil _clp_cinfo->f_rotation _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_dbid = _clpDBCreateVia( "VIA" _clpAdjustPt(5.55:7.15 _clp_cinfo) 	
	nil nil _clp_cinfo->f_rotation _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -15.15:10.3 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 15.1:10.3 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 15.1:-7.6 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -15.15:-7.6 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -15.15:10.3 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/OUTLINE" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -14.5:-6.95 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -13.7182:-6.95 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12.325:-5.5568 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/BOTTOM" nil _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -12.4:8.35 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.7904:8.35 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.7:8.4404 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.7:9.300000000000001 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/TOP" nil _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -12.325:-1.725 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12.4:-1.65 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12.4:8.35 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/BOTTOM" nil _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -12.325:-1.725 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12.325:-5.5568 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/BOTTOM" nil _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 6.4:0.55 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 6.4:-0.1247 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.4754:-0.1247 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 12.1871:0.587 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 12.1871:6.3342 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 13.4729:7.62 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/TOP" nil _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.3993:2.4994 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.9993:2.4994 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -5.95:0.5487 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -5.95:-3.25 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -6.375:-3.675 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -8.475:-3.675 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/TOP" nil _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -0.6:8.8491 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 13.3208:8.8491 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 14.5499:7.62 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 15:7.62 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/BOTTOM" nil _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -0.6:8.8491 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 0.6991000000000001:7.55 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.5375:7.55 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/TOP" nil _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -1.05:3.8 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -1.4009:4.1509 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -1.4009:8.8491 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/BOTTOM" nil _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 9.85:7.7 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 13.3929:7.7 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 13.4729:7.62 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/TOP" nil _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -1.05:2.5475 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -1.0025:2.5 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 0.6929:2.5 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.6429:0.55 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3:0.55 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/TOP" nil _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -1.05:3.8 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -1.05:2.5475 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/TOP" nil _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -1.4009:8.8491 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -0.6:8.8491 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/BOTTOM" nil _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -1.4009:8.8491 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -1.8518:9.300000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -2.95:9.300000000000001 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/TOP" nil _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -8.475:-3.675 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -10.675:-3.675 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.8:-4.8 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.8:-6.95 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/TOP" nil _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 9.85:7.7 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.062900000000001:7.7 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.912900000000001:7.55 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.151999999999999:7.55 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/TOP" nil _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 9.85:6.3 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.85:7.7 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/TOP" nil _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -12.95:-6.95 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.8:-6.95 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/TOP" nil _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 0.6:3.8 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -1.05:3.8 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/BOTTOM" nil _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 13.4729:7.62 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 15:7.62 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/TOP" nil _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -8.475:-3.025 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.1749:-3.025 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -13.2299:-5.08 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -15:-5.08 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/TOP" nil _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -8.475:-2.375 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -13.3079:-2.375 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -13.4729:-2.54 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -15:-2.54 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/TOP" nil _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -8.475:-1.075 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.925:-1.075 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -13:0 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -15:0 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/TOP" nil _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -8.475:-0.425 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.275:-0.425 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -14.24:2.54 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -15:2.54 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/TOP" nil _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -8.475:0.225 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -8.924899999999999:0.225 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -13.7799:5.08 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -15:5.08 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/TOP" nil _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.3993:7.0994 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.9994:7.0994 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -4.7508:7.8508 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -7.7125:7.8508 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -7.9433:7.62 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -15:7.62 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/TOP" nil _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -8.949999999999999:-6.9 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -9.75:-6.9 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -8.949999999999999:-6.25 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -8.949999999999999:-7.5 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -8.475:-5.625 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -8.475:-6.0798 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -7.5048:-7.05 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 13.03:-7.05 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 15:-5.08 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/TOP" nil _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -1.7276:6.924 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -1.75:6.9464 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -1.75:7.8 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -2.2278:8.277799999999999 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -7.8894:8.277799999999999 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -7.9172:8.25 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -8.800000000000001:8.25 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/TOP" nil _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 10.9:0.8 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 12.5:-0.8 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 12.5:-5.35 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.85:-6 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.800000000000001:-6 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.199999999999999:-5.4 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/BOTTOM" nil _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 3:4.45 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 7.8:4.45 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/BOTTOM" nil _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 7.7:5.05 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 7.7:4.55 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 7.8:4.45 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/TOP" nil _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 9.85:4.8 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.062900000000001:4.8 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.812900000000001:5.05 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.686400000000001:5.05 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/TOP" nil _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 10.9:0.8 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.9:2.1 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/TOP" nil _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 4.75:4.3375 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 4.75:3.1747 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 4.4:2.8247 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 4.4:2.15 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/TOP" nil _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 3:2.05 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.1:2.15 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 4.4:2.15 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/TOP" nil _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 2.0588:3.5682 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3:3.5682 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/TOP" nil _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 2.0588:3.5682 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.0588:5.924 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.0588:6.924 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -1.7276:6.924 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/TOP" nil _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 3:3.75 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3:3.5682 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/BOTTOM" nil _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -8.800000000000001:8.25 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -7.4432:6.8932 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -7.4432:-4.975 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/BOTTOM" nil _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -8.800000000000001:8.25 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -8.199999999999999:8.85 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -8.199999999999999:9.300000000000001 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/TOP" nil _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -10:9.300000000000001 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -8.199999999999999:9.300000000000001 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/TOP" nil _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -8.475:-4.325 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -9.3797:-4.325 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -10.3:-5.2453 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -10.3:-6.95 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/TOP" nil _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -8.699999999999999:10 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -1.55:10 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -1.55:8.550000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -8.699999999999999:8.550000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -8.699999999999999:10 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -6.5:9.300000000000001 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -4.45:9.300000000000001 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/TOP" nil _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 1.45:-4.975 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.875:-5.4 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 6.45:-5.4 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/TOP" nil _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 1.45:-4.975 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -2.875:-4.975 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.4:-4.45 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.4:9.1 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -2.7:9.800000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -0.75:9.800000000000001 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/BOTTOM" nil _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -0.75:9.800000000000001 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 4.35:9.800000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 4.75:9.4 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 4.75:8.262499999999999 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/TOP" nil _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 11.75:-5 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.8:-4.05 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.9:-4.05 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/BOTTOM" nil _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 3.65:8.25 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 4.2375:8.25 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 4.25:8.262499999999999 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/TOP" nil _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 8.9:-4.05 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.9:5.6976 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 6.3476:8.25 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.65:8.25 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/BOTTOM" nil _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 8.9:-4.05 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 7.65:-4.05 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 5.25:-6.45 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.75:-6.45 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/BOTTOM" nil _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 11.75:-5 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.35:-5.4 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.95:-5.4 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/TOP" nil _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -2.725:-4.325 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.6879:-4.325 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 13.4729:-2.54 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 15:-2.54 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/TOP" nil _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 15:5.08 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 13.4:5.08 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 12.75:4.43 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 12.75:0.1 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.75:-0.9 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 4.1001:-0.9 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.4501:-0.25 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -0.85:-0.25 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -1.325:0.225 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -2.725:0.225 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/TOP" nil _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 8.15:3.15 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.65:3.15 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.199999999999999:3.7 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/TOP" nil _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 8.15:3.15 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.15:1.4744 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 7.5756:0.9 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.7:0.9 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.65:0.85 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.65:-1.45 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.075:-3.025 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/BOTTOM" nil _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 6.75:4.3375 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 7.9375:3.15 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.15:3.15 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/TOP" nil _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 7.35:1.5 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.2:1.5 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.035:0.335 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/BOTTOM" nil _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 7.85:2.1 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 7.85:2 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 7.35:1.5 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/TOP" nil _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 7.85:2.1 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.199999999999999:2.1 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/TOP" nil _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 6.25:4.3375 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 6.25:3.7 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 7.85:2.1 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/TOP" nil _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 5.35:-0.15 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 5.7812:-0.5812000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 5.7812:-3.0188 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 5.15:-3.65 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/BOTTOM" nil _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 5.15:-3.65 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 5.125:-3.675 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -2.725:-3.675 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/TOP" nil _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 4.85:0.45 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 4.85:0.35 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 5.35:-0.15 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/TOP" nil _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 4.85:0.45 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 4.4:0.45 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/TOP" nil _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 5.25:4.3375 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 5.25:2.8199 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 5.4:2.6699 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 5.4:1 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 4.85:0.45 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/TOP" nil _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 3.025:-1.075 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.925:-1.075 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.45:-0.6 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.45:1.05 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.477:1.077 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.477:4.8688 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/BOTTOM" nil _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 1.477:4.8688 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 0.6265:4.8688 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 0.6:4.8953 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 0.6:5.8 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/BOTTOM" nil _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 1.477:4.8688 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.477:5.7878 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.4148:5.85 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 0.6:5.85 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/TOP" nil _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -2.725:-1.725 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.925:-1.725 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 13.3:-0.35 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 13.3:0.87 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 15:2.57 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/TOP" nil _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -2.725:-2.375 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 12.1749:-2.375 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 14.5499:0 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 15:0 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/TOP" nil _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 1.1:-1.75 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.1:1.4 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.3:1.4 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 2.3:2.65 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 7.15:2.65 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 7.15:-0.05 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.3:-0.05 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.3:2.65 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 0.6:-1.8 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 4.9:-1.8 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 4.9:-4.45 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 0.6:-4.45 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 0.6:-1.8 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -1.55:10 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.1:10 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.1:9.75 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -0.9:9.75 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.95:9.75 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.95:8.6 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -0.95:8.6 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -0.95:9.75 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -0.9:9.75 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 5.1:-5.4 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 6:-5.4 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 5.1:-4.75 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 5.1:-6.15 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 5.75:4.3375 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 5.75:3.3747 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 6.4:2.7247 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 6.4:2.05 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/TOP" nil _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 8:-1.75 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8:2.9 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.699999999999999:2.9 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 8.800000000000001:4.3 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.45:4.3 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.45:1.5 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.699999999999999:1.5 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.699999999999999:4.3 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.800000000000001:4.3 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 6.9:-1.8 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.4:-1.8 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.4:-4.1 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 6.9:-4.1 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 6.9:-1.8 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 6.25:8.262499999999999 _clp_cinfo))
	(_clpMKSConvert 0.300000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 6.25:8.979799999999999 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 6.4702:9.199999999999999 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.300000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.85:9.199999999999999 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "ETCH/TOP" nil _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -16.7:-7.6 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 16.8:-7.6 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 16.8:10.3 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -16.7:10.3 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -16.7:-7.6 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "PACKAGE KEEPIN/ALL" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -16.7:-7.6 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 16.8:-7.6 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 16.8:10.3 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -16.7:10.3 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -16.7:-7.6 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "ROUTE KEEPIN/ALL" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -11.6234:8.4412 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.33:8.789999999999999 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.7:9.3375 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12.07:8.789999999999999 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.7766:8.4412 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.6234:8.4412 _clp_cinfo) nil
 	(_clpAdjustPt -11.7:8.5701 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -14.175:-6.844 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -14.2845:-6.7346 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -14.5375:-6.95 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -14.2845:-7.1654 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -14.175:-7.056 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -14.175:-6.844 _clp_cinfo) nil
 	(_clpAdjustPt -14.2811:-6.95 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/BOTTOM" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -12.219:-2.05 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12.1096:-1.9405 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12.325:-1.6875 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12.5404:-1.9405 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12.431:-2.05 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12.219:-2.05 _clp_cinfo) nil
 	(_clpAdjustPt -12.325:-1.9439 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/BOTTOM" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -12:-1.619 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12.1095:-1.5096 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12.3625:-1.725 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12.1095:-1.9404 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12:-1.831 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12:-1.619 _clp_cinfo) nil
 	(_clpAdjustPt -12.1061:-1.725 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -12.5474:-1.4035 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12.5818:-1.5879 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12.3157:-1.7613 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12.1095:-1.5095 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12.294:-1.325 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12.5474:-1.4035 _clp_cinfo) nil
 	(_clpAdjustPt -12.39998511973909:-1.431118161249855 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/BOTTOM" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 0.69:0.6302 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.2:1.2 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 0.6:1.8375 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 0:1.2 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 0.51:0.6302 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 0.69:0.6302 _clp_cinfo) nil
 	(_clpAdjustPt 0.6:0.7502 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/BOTTOM" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -12.294:8.025 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12.1846:8.134499999999999 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12.4:8.387499999999999 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12.6154:8.134499999999999 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12.506:8.025 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12.294:8.025 _clp_cinfo) nil
 	(_clpAdjustPt -12.4:8.1311 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/BOTTOM" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -12.075:8.456 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12.1845:8.5654 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12.4375:8.35 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12.1845:8.134600000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12.075:8.244 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12.075:8.456 _clp_cinfo) nil
 	(_clpAdjustPt -12.1811:8.35 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -1.0759:8.9551 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -1.1854:9.064500000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -1.4384:8.8491 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -1.1854:8.633699999999999 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -1.0759:8.7431 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -1.0759:8.9551 _clp_cinfo) nil
 	(_clpAdjustPt -1.182:8.8491 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/BOTTOM" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -1.7057:9.0039 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -1.7057:8.8491 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -1.3744:8.8226 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -1.4009:9.1539 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -1.5557:9.1539 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -1.7057:9.0039 _clp_cinfo) nil
 	(_clpAdjustPt -1.5557:9.0039 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -1.2949:8.524100000000001 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -1.1855:8.6336 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -1.4009:8.8866 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -1.6163:8.6336 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -1.5069:8.524100000000001 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -1.2949:8.524100000000001 _clp_cinfo) nil
 	(_clpAdjustPt -1.4009:8.6302 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/BOTTOM" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -0.925:8.7431 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -0.8155:8.633699999999999 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -0.5625:8.8491 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -0.8155:9.064500000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -0.925:8.9551 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -0.925:8.7431 _clp_cinfo) nil
 	(_clpAdjustPt -0.8189:8.8491 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/BOTTOM" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -0.2952:8.6943 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -0.2952:8.8491 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -0.6265:8.8756 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -0.6:8.5443 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -0.4452:8.5443 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -0.2952:8.6943 _clp_cinfo) nil
 	(_clpAdjustPt -0.4452:8.6943 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -0.275:8.9551 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -0.3845:9.064500000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -0.6375:8.8491 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -0.3845:8.633699999999999 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -0.275:8.7431 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -0.275:8.9551 _clp_cinfo) nil
 	(_clpAdjustPt -0.3811:8.8491 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/BOTTOM" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -0.725:3.906 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -0.8345:4.0154 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -1.0875:3.8 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -0.8345:3.5846 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -0.725:3.694 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -0.725:3.906 _clp_cinfo) nil
 	(_clpAdjustPt -0.8311:3.8 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/BOTTOM" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -0.944:3.475 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -0.8346:3.5845 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -1.05:3.8375 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -1.2654:3.5845 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -1.156:3.475 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -0.944:3.475 _clp_cinfo) nil
 	(_clpAdjustPt -1.05:3.5811 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -1.3548:3.9548 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -1.3548:3.8 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -1.0235:3.7735 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -1.05:4.1048 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -1.2048:4.1048 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -1.3548:3.9548 _clp_cinfo) nil
 	(_clpAdjustPt -1.2048:3.9548 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/BOTTOM" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -12.0975:-6.8635 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12.58:-6.44 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12.9875:-6.95 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12.58:-7.46 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12.0975:-7.0365 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12.0975:-6.8635 _clp_cinfo) nil
 	(_clpAdjustPt -12.2201:-6.95 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 8.991199999999999:7.6234 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.34:7.33 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.887499999999999:7.7 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.34:8.07 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.991199999999999:7.7766 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.991199999999999:7.6234 _clp_cinfo) nil
 	(_clpAdjustPt 9.120100000000001:7.7 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 9.936500000000001:6.8475 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.36:7.33 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.85:7.7375 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.34:7.33 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.763500000000001:6.8475 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.936500000000001:6.8475 _clp_cinfo) nil
 	(_clpAdjustPt 9.85:6.9701 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 10.7088:7.7766 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.36:8.07 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.8125:7.7 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.36:7.33 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.7088:7.6234 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.7088:7.7766 _clp_cinfo) nil
 	(_clpAdjustPt 10.5799:7.7 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -12.6525:-7.0365 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12.17:-7.46 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.7625:-6.95 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12.17:-6.44 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12.6525:-6.8635 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12.6525:-7.0365 _clp_cinfo) nil
 	(_clpAdjustPt -12.5299:-6.95 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -11.8766:-6.0912 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12.17:-6.44 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.8:-6.9875 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.43:-6.44 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.7234:-6.0912 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.8766:-6.0912 _clp_cinfo) nil
 	(_clpAdjustPt -11.8:-6.2201 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 9.763500000000001:7.1525 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.34:6.67 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.85:6.2625 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.36:6.67 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.936500000000001:7.1525 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.763500000000001:7.1525 _clp_cinfo) nil
 	(_clpAdjustPt 9.85:7.0299 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 6.4769:-0.2535 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 6.91:0.18 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 6.4:0.5875 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 5.89:0.18 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 6.3231:-0.2535 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 6.4769:-0.2535 _clp_cinfo) nil
 	(_clpAdjustPt 6.4:-0.1247 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -0.5698:3.71 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 0:3.2 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 0.6375:3.8 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 0:4.4 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -0.5698:3.89 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -0.5698:3.71 _clp_cinfo) nil
 	(_clpAdjustPt -0.4498:3.8 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/BOTTOM" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -2.0975:9.3865 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -2.58:9.810000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -2.9875:9.300000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -2.58:8.789999999999999 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -2.0975:9.2135 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -2.0975:9.3865 _clp_cinfo) nil
 	(_clpAdjustPt -2.2201:9.300000000000001 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -15.15:-7.6 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 15.1:-7.6 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 15.1:10.3 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -15.15:10.3 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -15.15:-7.6 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/DESIGN_OUTLINE" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -4.6244:7.5744 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -4.4744:6.6244 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.2621:7.0388 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -2.3242:7.5744 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -4.4744:7.7244 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -4.6244:7.5744 _clp_cinfo) nil
 	(_clpAdjustPt -4.4744:7.5744 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -7.7682:-5.081 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -7.6587:-5.1904 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -7.4057:-4.975 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -7.6587:-4.7596 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -7.7682:-4.869 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -7.7682:-5.081 _clp_cinfo) nil
 	(_clpAdjustPt -7.6621:-4.975 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -7.5492:-4.65 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -7.6586:-4.7595 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -7.4432:-5.0125 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -7.2278:-4.7595 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -7.3372:-4.65 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -7.5492:-4.65 _clp_cinfo) nil
 	(_clpAdjustPt -7.4432:-4.7561 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/BOTTOM" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -9.0525:9.2135 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -8.57:8.789999999999999 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -8.1625:9.300000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -8.57:9.810000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -9.0525:9.3865 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -9.0525:9.2135 _clp_cinfo) nil
 	(_clpAdjustPt -8.9299:9.300000000000001 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -8.512000000000001:8.341699999999999 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -7.83:8.789999999999999 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -8.1846:9.334199999999999 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -8.569900000000001:9.810000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -8.719900000000001:8.4801 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -8.512000000000001:8.341699999999999 _clp_cinfo) nil
 	(_clpAdjustPt -8.569883237133238:8.4801 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -9.147500000000001:9.3865 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -9.630000000000001:9.810000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -10.0375:9.300000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -9.630000000000001:8.789999999999999 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -9.147500000000001:9.2135 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -9.147500000000001:9.3865 _clp_cinfo) nil
 	(_clpAdjustPt -9.270099999999999:9.300000000000001 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -8.645200000000001:8.5548 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -8.800000000000001:8.5548 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -8.826499999999999:8.2235 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -8.495200000000001:8.25 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -8.495200000000001:8.4048 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -8.645200000000001:8.5548 _clp_cinfo) nil
 	(_clpAdjustPt -8.645200000000001:8.4048 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -8.495200000000001:8.0952 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -8.495200000000001:8.25 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -8.826499999999999:8.2765 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -8.800000000000001:7.9452 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -8.645200000000001:7.9452 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -8.495200000000001:8.0952 _clp_cinfo) nil
 	(_clpAdjustPt -8.645200000000001:8.0952 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/BOTTOM" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -8.475:8.356 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -8.5845:8.465400000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -8.8375:8.25 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -8.5845:8.034599999999999 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -8.475:8.144 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -8.475:8.356 _clp_cinfo) nil
 	(_clpAdjustPt -8.581099999999999:8.25 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 3.106:3.2432 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.2154:3.3527 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3:3.6057 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.7846:3.3527 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.894:3.2432 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.106:3.2432 _clp_cinfo) nil
 	(_clpAdjustPt 3:3.3493 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 2.675:3.4622 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.7845:3.3528 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.0375:3.5682 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.7845:3.7836 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.675:3.6742 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.675:3.4622 _clp_cinfo) nil
 	(_clpAdjustPt 2.7811:3.5682 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 2.9135:2.9025 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.49:2.42 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3:2.0125 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.51:2.42 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.0865:2.9025 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.9135:2.9025 _clp_cinfo) nil
 	(_clpAdjustPt 3:2.7799 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 3.9266:2.2646 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.51:2.42 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.9628:2.0455 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.51:1.68 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.9539:2.0656 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.9266:2.2646 _clp_cinfo) nil
 	(_clpAdjustPt 3.829892879139698:2.149960555781476 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 3.5412:2.0734 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.89:1.78 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 4.4375:2.15 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.89:2.52 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.5412:2.2266 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.5412:2.0734 _clp_cinfo) nil
 	(_clpAdjustPt 3.6701:2.15 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 4.3231:2.9535 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.89:2.52 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 4.4:2.1125 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 4.91:2.52 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 4.4769:2.9535 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 4.3231:2.9535 _clp_cinfo) nil
 	(_clpAdjustPt 4.4:2.8247 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -1.8932:4.8804 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -2.3242:5.2744 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.4368:4.7994 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -2.3242:4.3244 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -1.8932:4.7184 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -1.8932:4.8804 _clp_cinfo) nil
 	(_clpAdjustPt -2.0195:4.7994 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 10.8234:2.9588 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.53:2.61 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.9:2.0625 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.27:2.61 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.9766:2.9588 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.8234:2.9588 _clp_cinfo) nil
 	(_clpAdjustPt 10.9:2.8299 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 10.9766:1.2412 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.27:1.59 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.9:2.1375 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.53:1.59 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.8234:1.2412 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.9766:1.2412 _clp_cinfo) nil
 	(_clpAdjustPt 10.9:1.3701 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 10.9766:2.8412 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.27:3.19 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.9:3.7375 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.53:3.19 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.8234:2.8412 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.9766:2.8412 _clp_cinfo) nil
 	(_clpAdjustPt 10.9:2.9701 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 10.8234:4.5588 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.53:4.21 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.9:3.6625 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.27:4.21 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.9766:4.5588 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.8234:4.5588 _clp_cinfo) nil
 	(_clpAdjustPt 10.9:4.4299 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 9.0025:-5.3135 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.52:-4.89 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.112500000000001:-5.4 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.52:-5.91 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.0025:-5.4865 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.0025:-5.3135 _clp_cinfo) nil
 	(_clpAdjustPt 8.879899999999999:-5.4 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 8.991199999999999:4.7234 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.34:4.43 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.887499999999999:4.8 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.34:5.17 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.991199999999999:4.8766 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.991199999999999:4.7234 _clp_cinfo) nil
 	(_clpAdjustPt 9.120100000000001:4.8 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 10.7088:4.8766 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.36:5.17 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.8125:4.8 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.36:4.43 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.7088:4.7234 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.7088:4.8766 _clp_cinfo) nil
 	(_clpAdjustPt 10.5799:4.8 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 8.875:-5.506 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.984500000000001:-5.6154 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.237500000000001:-5.4 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.984500000000001:-5.1846 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.875:-5.294 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.875:-5.506 _clp_cinfo) nil
 	(_clpAdjustPt 8.9811:-5.4 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 9.5048:-5.5548 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.5048:-5.4 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.173500000000001:-5.3735 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.199999999999999:-5.7048 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.354799999999999:-5.7048 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.5048:-5.5548 _clp_cinfo) nil
 	(_clpAdjustPt 9.354799999999999:-5.5548 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/BOTTOM" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 10.794:1.125 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.6846:1.0155 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.9:0.7625 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.1154:1.0155 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.006:1.125 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.794:1.125 _clp_cinfo) nil
 	(_clpAdjustPt 10.9:1.0189 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 11.2048:0.6452 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.2048:0.8 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.8735:0.8265 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.9:0.4952 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.0548:0.4952 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.2048:0.6452 _clp_cinfo) nil
 	(_clpAdjustPt 11.0548:0.6452 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/BOTTOM" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 7.5502:4.7757 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 7.5408:4.5663 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 7.8112:4.4142 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.015499999999999:4.6655 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 7.806:4.875 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 7.5502:4.7757 _clp_cinfo) nil
 	(_clpAdjustPt 7.700021983988225:4.768878262797704 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 7.475:4.344 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 7.5845:4.2346 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 7.8375:4.45 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 7.5845:4.6654 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 7.475:4.556 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 7.475:4.344 _clp_cinfo) nil
 	(_clpAdjustPt 7.5811:4.45 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/BOTTOM" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 3.5304:4.5561 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.1061:4.9804 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.9625:4.6 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.9625:4.3 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.1061:3.9196 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.5304:4.3439 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.5304:4.5561 _clp_cinfo) nil
 	(_clpAdjustPt 3.4243:4.45 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/BOTTOM" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -10.3766:-6.0912 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -10.67:-6.44 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -10.3:-6.9875 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -9.93:-6.44 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -10.2234:-6.0912 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -10.3766:-6.0912 _clp_cinfo) nil
 	(_clpAdjustPt -10.3:-6.2201 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -5.3025:9.2135 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -4.82:8.789999999999999 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -4.4125:9.300000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -4.82:9.810000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -5.3025:9.3865 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -5.3025:9.2135 _clp_cinfo) nil
 	(_clpAdjustPt -5.1799:9.300000000000001 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -5.6475:9.3865 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -6.13:9.810000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -6.5375:9.300000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -6.13:8.789999999999999 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -5.6475:9.2135 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -5.6475:9.3865 _clp_cinfo) nil
 	(_clpAdjustPt -5.7701:9.300000000000001 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 1.125:-5.081 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.2345:-5.1904 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.4875:-4.975 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.2345:-4.7596 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.125:-4.869 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.125:-5.081 _clp_cinfo) nil
 	(_clpAdjustPt 1.2311:-4.975 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 1.7548:-5.1298 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.7548:-4.975 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.4235:-4.9485 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.45:-5.2798 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.6048:-5.2798 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.7548:-5.1298 _clp_cinfo) nil
 	(_clpAdjustPt 1.6048:-5.1298 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 1.125:-5.081 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.2345:-5.1904 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.4875:-4.975 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.2345:-4.7596 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.125:-4.869 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.125:-5.081 _clp_cinfo) nil
 	(_clpAdjustPt 1.2311:-4.975 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/BOTTOM" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 5.5975:-5.4865 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 6.08:-5.91 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 6.4875:-5.4 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 6.08:-4.89 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 5.5975:-5.3135 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 5.5975:-5.4865 _clp_cinfo) nil
 	(_clpAdjustPt 5.7201:-5.4 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 1.4452:-6.2952 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.4452:-6.45 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.7765:-6.4765 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.75:-6.1452 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.5952:-6.1452 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.4452:-6.2952 _clp_cinfo) nil
 	(_clpAdjustPt 1.5952:-6.2952 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 2.075:-6.344 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.9655:-6.2346 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.7125:-6.45 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.9655:-6.6654 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.075:-6.556 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.075:-6.344 _clp_cinfo) nil
 	(_clpAdjustPt 1.9689:-6.45 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/BOTTOM" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 11.5952:-5.3048 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.75:-5.3048 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.7765:-4.9735 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.4452:-5 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.4452:-5.1548 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.5952:-5.3048 _clp_cinfo) nil
 	(_clpAdjustPt 11.5952:-5.1548 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 11.4452:-4.8452 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.4452:-5 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.7765:-5.0265 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.75:-4.6952 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.5952:-4.6952 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.4452:-4.8452 _clp_cinfo) nil
 	(_clpAdjustPt 11.5952:-4.8452 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/BOTTOM" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 11.4988:-5.3814 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.3197:-5.1578 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.9125:-5.4 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.3197:-5.6422 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.4988:-5.4186 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.4988:-5.3814 _clp_cinfo) nil
 	(_clpAdjustPt 11.35:-5.4 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 3.975:8.356 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.8655:8.465400000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.6125:8.25 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.8655:8.034599999999999 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.975:8.144 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.975:8.356 _clp_cinfo) nil
 	(_clpAdjustPt 3.8689:8.25 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 3.975:8.356 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.8655:8.465400000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.6125:8.25 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.8655:8.034599999999999 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.975:8.144 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.975:8.356 _clp_cinfo) nil
 	(_clpAdjustPt 3.8689:8.25 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/BOTTOM" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 8.793900000000001:-3.5196 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.3696:-3.9439 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.75:-4.0875 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.050000000000001:-4.0875 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.430400000000001:-3.9439 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.0061:-3.5196 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.793900000000001:-3.5196 _clp_cinfo) nil
 	(_clpAdjustPt 8.9:-3.6257 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/BOTTOM" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 1.75:-3.131 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.8595:-3.2404 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.1125:-3.025 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.8595:-2.8096 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.75:-2.919 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.75:-3.131 _clp_cinfo) nil
 	(_clpAdjustPt 1.8561:-3.025 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 2.2298:-2.7202 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.075:-2.7202 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.0485:-3.0515 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.3798:-3.025 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.3798:-2.8702 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.2298:-2.7202 _clp_cinfo) nil
 	(_clpAdjustPt 2.2298:-2.8702 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/BOTTOM" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 8.256:2.825 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.365399999999999:2.9345 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.15:3.1875 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 7.9346:2.9345 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.044000000000001:2.825 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.256:2.825 _clp_cinfo) nil
 	(_clpAdjustPt 8.15:2.9311 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/BOTTOM" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 7.7827:3.3048 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 7.9375:3.15 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.1846:3.1354 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.15:3.4548 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 7.7827:3.4548 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 7.7827:3.3048 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 8.475:3.256 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.365500000000001:3.3654 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.112500000000001:3.15 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.365500000000001:2.9346 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.475:3.044 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.475:3.256 _clp_cinfo) nil
 	(_clpAdjustPt 8.3689:3.15 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 8.69:3.04 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.57:3.19 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.2265:3.7265 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.83:4.21 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.541399999999999:3.2104 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.69:3.04 _clp_cinfo) nil
 	(_clpAdjustPt 8.69:3.189994483568075 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 1.7302:0.4898 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.7302:0.335 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.0615:0.3085 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.035:0.6398 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.8802:0.6398 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.7302:0.4898 _clp_cinfo) nil
 	(_clpAdjustPt 1.8802:0.4898 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 2.1898:0.6398 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.035:0.6398 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.0085:0.3085 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.3398:0.335 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.3398:0.4898 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.1898:0.6398 _clp_cinfo) nil
 	(_clpAdjustPt 2.1898:0.4898 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/BOTTOM" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 8.3475:2.0135 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.83:1.59 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.237500000000001:2.1 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.83:2.61 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.3475:2.1865 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.3475:2.0135 _clp_cinfo) nil
 	(_clpAdjustPt 8.4701:2.1 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 7.5048:1.8048 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 7.35:1.8048 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 7.3235:1.4735 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 7.6548:1.5 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 7.6548:1.6548 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 7.5048:1.8048 _clp_cinfo) nil
 	(_clpAdjustPt 7.5048:1.6548 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 7.025:1.394 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 7.1345:1.2846 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 7.3875:1.5 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 7.1345:1.7154 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 7.025:1.606 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 7.025:1.394 _clp_cinfo) nil
 	(_clpAdjustPt 7.1311:1.5 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/BOTTOM" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 5.0452:0.0048 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 5.0452:-0.15 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 5.3765:-0.1765 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 5.35:0.1548 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 5.1952:0.1548 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 5.0452:0.0048 _clp_cinfo) nil
 	(_clpAdjustPt 5.1952:0.0048 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 5.6548:-0.3048 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 5.6548:-0.15 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 5.3235:-0.1235 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 5.35:-0.4548 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 5.5048:-0.4548 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 5.6548:-0.3048 _clp_cinfo) nil
 	(_clpAdjustPt 5.5048:-0.3048 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/BOTTOM" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 4.8263:-3.802 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 4.9607:-3.8864 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 5.1873:-3.6462 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 4.9345:-3.4345 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 4.8:-3.569 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 4.8263:-3.802 _clp_cinfo) nil
 	(_clpAdjustPt 4.906109546740757:-3.675007141290636 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 5.3048:-3.3452 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 5.15:-3.3452 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 5.1235:-3.6765 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 5.4548:-3.65 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 5.4548:-3.4952 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 5.3048:-3.3452 _clp_cinfo) nil
 	(_clpAdjustPt 5.3048:-3.4952 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/BOTTOM" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 2.7:-1.181 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.8095:-1.2904 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.0625:-1.075 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.8095:-0.8596 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.7:-0.969 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.7:-1.181 _clp_cinfo) nil
 	(_clpAdjustPt 2.8061:-1.075 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 2.7:-1.181 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.8095:-1.2904 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.0625:-1.075 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.8095:-0.8596 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.7:-0.969 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.7:-1.181 _clp_cinfo) nil
 	(_clpAdjustPt 2.8061:-1.075 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/BOTTOM" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 1.152:4.7628 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.2615:4.6534 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.5145:4.8688 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.2615:5.0842 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.152:4.9748 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.152:4.7628 _clp_cinfo) nil
 	(_clpAdjustPt 1.2581:4.8688 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/BOTTOM" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 1.583:4.5438 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.6924:4.6533 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.477:4.9063 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.2616:4.6533 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.371:4.5438 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.583:4.5438 _clp_cinfo) nil
 	(_clpAdjustPt 1.477:4.6499 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/BOTTOM" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 1.371:5.1938 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.2616:5.0843 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.477:4.8313 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.6924:5.0843 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.583:5.1938 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.371:5.1938 _clp_cinfo) nil
 	(_clpAdjustPt 1.477:5.0877 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 0.6762:4.7661 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.1169:5.2002 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 0.6:5.8375 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 0.08309999999999999:5.2002 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 0.5238:4.7661 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 0.6762:4.7661 _clp_cinfo) nil
 	(_clpAdjustPt 0.6:4.8953 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/BOTTOM" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 1.4588:5.9266 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.11:6.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 0.5625:5.85 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.11:5.48 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.4588:5.7734 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.4588:5.9266 _clp_cinfo) nil
 	(_clpAdjustPt 1.3299:5.85 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 6.3231:2.8535 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 5.89:2.42 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 6.4:2.0125 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 6.91:2.42 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 6.4769:2.8535 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 6.3231:2.8535 _clp_cinfo) nil
 	(_clpAdjustPt 6.4:2.7247 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 8.991199999999999:9.1234 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.34:8.83 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.887499999999999:9.199999999999999 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.34:9.57 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.991199999999999:9.2766 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.991199999999999:9.1234 _clp_cinfo) nil
 	(_clpAdjustPt 9.120100000000001:9.199999999999999 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "ETCH/TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

printf(" 100 percent completed")
newline()

axlFlushDisplay()
