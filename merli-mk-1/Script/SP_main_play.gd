extends Node2D
var PotionCount = 0 
var Modificator = 1
var Mis_TotalPotionCount = 0 
var Mision1Activa = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$LBL_Money.text = str(PotionCount)
	




func _on_but_right_panel_button_down() -> void:
	$BUT_RightPanel.visible = false
	$BUT_CloseRightPanel.visible = true
	$CR_RightPanel.visible = true
	$BUT_PanelMejoras.visible = true
	$BUT_PanelMisiones.visible = true
	$BUT_PanelEncargos.visible = true
	$BUT_PanelReputacion.visible = true
	$BUT_PanelConversaciones.visible = true
	$LBL_MejorasGnomos.visible = true
	$LBL_MejorasGnomosDesc.visible = true
	$BUT_MejorasGnomosCom.visible = true


func _on_but_left_panel_button_down() -> void:
	$BUT_LeftPanel.visible = false
	$BUT_CloseLeftPanel.visible = true
	$CR_LeftPanel.visible = true
	

func _on_but_close_left_panel_pressed() -> void:
	$BUT_LeftPanel.visible = true
	$BUT_CloseLeftPanel.visible = false
	$CR_LeftPanel.visible = false




func _on_but_potion_pressed() -> void:
	PotionCount = PotionCount + (1 * Modificator)
	if Mision1Activa == true: 
		$PB_Mision1.value += 1


func _on_but_close_right_panel_pressed() -> void:
	#Elementos visibles - vuelve a dashboard inicial
	$BUT_RightPanel.visible = true
	$BUT_CloseRightPanel.visible = false
	$CR_RightPanel.visible = false
	$BUT_PanelMejoras.visible = false
	$BUT_PanelMisiones.visible = false
	$BUT_PanelEncargos.visible = false
	$BUT_PanelReputacion.visible = false
	$BUT_PanelConversaciones.visible = false
	$LBL_MejorasGnomos.visible = false
	$LBL_MejorasGnomosDesc.visible = false
	$BUT_MejorasGnomosCom.visible = false
	$LBL_MisionDescription.visible = false
	$LBL_MisionName.visible = false
	$BUT_MisionActivated.visible = false
	
	


func _on_but_mejoras_gnomos_com_pressed() -> void:
	if PotionCount >= 24: 
		PotionCount = PotionCount - 24
		Modificator = 2
		$BUT_MejorasGnomosCom.disabled = true
		


func _on_but_panel_misiones_pressed() -> void:
	$BUT_MejorasGnomosCom.visible = false
	$LBL_MejorasGnomos.visible = false
	$LBL_MejorasGnomosDesc.visible = false
	
	$LBL_MisionDescription.visible = true
	$LBL_MisionName.visible = true
	$BUT_MisionActivated.visible = true


func _on_but_panel_mejoras_pressed() -> void:
	$BUT_MejorasGnomosCom.visible = true
	$LBL_MejorasGnomos.visible = true
	$LBL_MejorasGnomosDesc.visible = true
	
	$LBL_MisionDescription.visible = false
	$LBL_MisionName.visible = false
	$BUT_MisionActivated.visible = false

#activar mision 
func _on_but_mision_activated_pressed() -> void:
	Mision1Activa = true
	$BUT_MisionActivated.disabled = true
	$PB_Mision1.visible = true
	$LBL_MisionNameDashboard.visible = true
