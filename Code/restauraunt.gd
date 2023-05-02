extends Node2D

@onready var minutes = 0
@onready var waiter = 0
@onready var waiterdisabled = false
@onready var waiterbagel = false
var bagelGrab = 0
@onready var hand = $TextureRect/AlexBackground/Sprite2D

func _ready():
	UniversalFunctions.update()
	UniversalFunctions.play_dialogue("null", "Bạn là Alex Thorley.", 0.05)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play("load")
	await $AnimationPlayer.animation_finished
	UniversalFunctions.play_dialogue("null", "Bạn đã đợi ở đây được 30 phút rồi.", 0.05)
	await $CanvasLayer/Dialogue.close
	UniversalFunctions.play_dialogue("null", "Cô phục vụ cứ liên tục lại gần hỏi bạn đã sẵn sàng gọi món chưa.", 0.05)
	await $CanvasLayer/Dialogue.close
	UniversalFunctions.play_dialogue("null", "Bạn chưa sẵn sàng. ", 0.05)
	await $CanvasLayer/Dialogue.close
	UniversalFunctions.play_dialogue("null", "Người kia vẫn chưa tới. ", 0.05)
	await $CanvasLayer/Dialogue.close
	UniversalFunctions.play_dialogue("null", "Bạn thắc mắc, không biết người kia đã quên béng vụ này luôn chưa. ", 0.05)
	await $CanvasLayer/Dialogue.close
	UniversalFunctions.play_dialogue("null", "Nhưng mà trong lòng bạn vẫn chẳng có cảm giác gì mấy.", 0.05)
	await $CanvasLayer/Dialogue.close
	UniversalFunctions.play_dialogue("null", "Mà có vẻ là người kia cũng sẽ không biết đâu.", 0.05)
	await $CanvasLayer/Dialogue.close
	UniversalFunctions.play_dialogue("null", "Người đó chưa từng gặp mặt bạn lần nào.", 0.05)
	await $CanvasLayer/Dialogue.close
	UniversalFunctions.play_dialogue("null", "Nhưng có lẽ là người đó sẽ có thể cảm nhận được điều đó.", 0.05)
	await $CanvasLayer/Dialogue.close
	$Timer.starting()
	await $Timer.timeout
	UniversalFunctions.play_dialogue("null", "Đây là một nhà hàng rất sang chảnh.", 0.05)
	await $CanvasLayer/Dialogue.close
	UniversalFunctions.play_dialogue("null", "Chắc chắn không phải là nơi quá khủng khiếp để bị cho leo cây.", 0.05)
	await $CanvasLayer/Dialogue.close
	UniversalFunctions.play_dialogue("null", "Hoặc không phải là nơi tệ nhất.", 0.05)
	await $CanvasLayer/Dialogue.close
	if waiter >= 1:
		UniversalFunctions.play_dialogue("null", "Bạn có thể order món bánh pho mát mà anh phục vụ đang cầm trên tay kia.", 0.05)
		await $CanvasLayer/Dialogue.close
		UniversalFunctions.play_dialogue("null", "Trông cũng khá ngon.", 0.05)
		await $CanvasLayer/Dialogue.close
		UniversalFunctions.play_dialogue("null", "Quả cherry đó.", 0.05)
		await $CanvasLayer/Dialogue.close
		UniversalFunctions.play_dialogue("null", "Trông rất tươi. ", 0.05)
		await $CanvasLayer/Dialogue.close
		UniversalFunctions.play_dialogue("null", "Bề mặt bóng loáng không tì vết.", 0.05)
		await $CanvasLayer/Dialogue.close
		UniversalFunctions.play_dialogue("null", "Mà cũng không phải là dấu hiệu tốt gì cho cam.", 0.05)
		await $CanvasLayer/Dialogue.close
		UniversalFunctions.play_dialogue("null", "Bạn mong rằng nó sẽ không được cho thêm một loại gelatin kì lạ trong suốt gì đó để khiến quả cherry đó trông ngon miệng hơn.", 0.05)
		await $CanvasLayer/Dialogue.close
		UniversalFunctions.play_dialogue("null", "Mà thứ này có họa tiết trông kì quặc thật đấy.", 0.05)
		await $CanvasLayer/Dialogue.close
	$Timer.starting()
	await $Timer.timeout
	if waiter >= 3:
		UniversalFunctions.play_dialogue("null", str("Chà, người kia hình như cũng chạy qua chạy lại chỗ này với cái bánh pho mát kia được tầm " + str(waiter) + " lần rồi đấy."), 0.05)
		await $CanvasLayer/Dialogue.close
		UniversalFunctions.play_dialogue("null", "Mà hình như anh ta đang đi theo... hình vòng tròn à?", 0.05)
		await $CanvasLayer/Dialogue.close
		$Timer.starting()
		await $Timer.timeout
		UniversalFunctions.play_dialogue("null", "À đúng rồi. Bạn không thể quay đầu lại được.", 0.05)
		await $CanvasLayer/Dialogue.close
		$Timer.starting()
		await $Timer.timeout
	UniversalFunctions.play_dialogue("null", "Bạn nên... order chút rượu. Nó có thể khiến tình thế bớt khó xử hơn đấy.", 0.05)
	await $CanvasLayer/Dialogue.close
	$Timer.starting()
	await $Timer.timeout
	UniversalFunctions.play_dialogue("null", "Mà nói thật nhá, ĐỊT MẸ luôn.", 0.05)
	await $CanvasLayer/Dialogue.close
	UniversalFunctions.play_dialogue("null", "Bình tĩnh lại đi Thorley!", 0.02)
	await $CanvasLayer/Dialogue.close
	UniversalFunctions.play_dialogue("null", "Bạn muốn tạo ấn tượng tốt vào buổi hẹn này mà đúng chứ!", 0.02)
	await $CanvasLayer/Dialogue.close
	UniversalFunctions.play_dialogue("null", "Chắc chắn người kia đang bị lạc tí thôi!", 0.02)
	await $CanvasLayer/Dialogue.close
	UniversalFunctions.play_dialogue("null", "Tầm vài phút nữa là tới rồi!", 0.02)
	await $CanvasLayer/Dialogue.close
	UniversalFunctions.play_dialogue("null", "Hợp lí mà!", 0.02)
	await $CanvasLayer/Dialogue.close
	UniversalFunctions.play_dialogue("null", "Chính bạn cũng đi muộn miết đấy thôi!", 0.02)
	await $CanvasLayer/Dialogue.close
	UniversalFunctions.play_dialogue("null", "Tầm vài trăm lần rồi đó!", 0.02)
	await $CanvasLayer/Dialogue.close
	UniversalFunctions.play_dialogue("null", "À khoan đã.", 0.06)
	await $CanvasLayer/Dialogue.close
	UniversalFunctions.play_dialogue("null", "Vẫn chưa đến mức đó đâu.", 0.05)
	await $CanvasLayer/Dialogue.close
	UniversalFunctions.play_dialogue("null", "Nên thành ra nghe cũng hơi sai sai ha.", 0.05)
	await $CanvasLayer/Dialogue.close
	waiterbagel = true
	UniversalFunctions.play_dialogue("null", "Với cả chỗ này cũng chẳng dễ tìm gì cho cam!", 0.02)
	await $CanvasLayer/Dialogue.close
	$Timer.starting()
	await $Timer.timeout
	UniversalFunctions.play_dialogue("null", "Ừm, nó khó tìm mà.", 0.05)
	await $CanvasLayer/Dialogue.close
	UniversalFunctions.play_dialogue("null", "Nhỉ?", 0.05)
	await $CanvasLayer/Dialogue.close
	UniversalFunctions.play_dialogue("null", "Ừm.", 0.05)
	await $CanvasLayer/Dialogue.close
	UniversalFunctions.play_dialogue("null", "Bạn chẳng nhớ nổi được tại sao mình lại đến được đây.", 0.05)
	await $CanvasLayer/Dialogue.close
	UniversalFunctions.play_dialogue("null", "Bạn cũng chẳng nhớ rằng mình đang đợi ai đó.", 0.05)
	await $CanvasLayer/Dialogue.close
	$Timer.starting()
	await $Timer.timeout
	if minutes >= 1:
		UniversalFunctions.play_dialogue("null", str("Bạn đã đợi được tầm " +str(30+minutes)+" phút rồi."), 0.05)
		await $CanvasLayer/Dialogue.close
		$Timer.starting()
		await $Timer.timeout
	UniversalFunctions.play_dialogue_auto("null", "Chắc là bạn nên về th", 0.05)
	await $CanvasLayer/Dialogue.autoclose
	hand.visible = false
	$AnimationPlayer.play("HandOutStandUp")
	UniversalFunctions.play_dialogue_auto("Alex Thorley", "\"Này! Xin lỗi nhé, tôi tới muộ", 0.05)
	await $CanvasLayer/Dialogue.autoclose
	$AnimationPlayer.play("AwkwardStareStanding")
	UniversalFunctions.play_dialogue("Alex Thorley", "\"Thật là... vãi chưởng?\"", 0.05)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play("NervousStareStanding")
	UniversalFunctions.play_dialogue("null", "\"VÃI LÍT\"", 0.05)
	await $CanvasLayer/Dialogue.close
	hand.visible = true
	$TextureRect/AlexBackground.position = Vector2(0,0)
	$AnimationPlayer.play("BlankStareSit")
	UniversalFunctions.play_dialogue("null", "Bạn nhìn xuống và nhìn vào chính bạn.", 0.05)
	await $CanvasLayer/Dialogue.close
	UniversalFunctions.play_dialogue("null", "Bạn không thể ngờ được thằng mọi chuyện sẽ tới nước này.", 0.05)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play("NervousStare")
	UniversalFunctions.play_dialogue("Alex Thorley", "\"...\"", 0.07)
	await $CanvasLayer/Dialogue.close
	UniversalFunctions.play_dialogue("null", "Giờ bạn đang nghĩ về việc tại sao bạn lại rơi vào tình huống này.", 0.05)
	await $CanvasLayer/Dialogue.close
	UniversalFunctions.play_dialogue("null", "\"...\"", 0.07)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play("BlankStare")
	waiterbagel = true
	UniversalFunctions.play_dialogue("null", "Bụng bạn sôi lên.", 0.05)
	await $CanvasLayer/Dialogue.close
	$TextureRect/TableDressing.visible = false
	$AnimationPlayer.play("MenuBlank")
	UniversalFunctions.play_dialogue("null", "Bạn cầm quyển thực đơn lên và xem qua nó.", 0.05)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play("MenuAwkward")
	UniversalFunctions.play_dialogue("Alex Thorley", "\"Vậy là, ừm. Bạn đã xem qua quyển thực đơn đó chưa thế?\"", 0.05)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play("MenuNervous")
	UniversalFunctions.play_dialogue("null", "\"Chắc là tôi sẽ gọi món Filet Mignon vậy.\"", 0.05)
	await $CanvasLayer/Dialogue.close
	$TextureRect/TableDressing.visible = true
	$AnimationPlayer.play("HandOutAwkward")
	UniversalFunctions.play_dialogue("Alex Thorley", "\"Được á. Tôi cũng sẽ gọi món đó luôn. Dù gì thì tôi biết mình muốn gì mà.\"", 0.05)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play("NervousStare")
	UniversalFunctions.play_dialogue("null", "Ừ. Cậu biết cậu muốn gì mà.", 0.05)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play_backwards("BlankStare")
	UniversalFunctions.play_dialogue("null", "Thi thoảng.", 0.05)
	await $CanvasLayer/Dialogue.close
	$TextureRect/TableDressing.visible = false
	$AnimationPlayer.play("MenuWaitressLook")
	UniversalFunctions.play_dialogue("null", "Cô phục vụ kia quay lại rồi. Cổ cũng chẳng thèm quan tâm việc có hai bạn đang ngồi ở bàn.", 0.05)
	await $CanvasLayer/Dialogue.close
	UniversalFunctions.play_dialogue("null", "Bạn chẳng thể thấy cổ hay nghe thấy cổ. Nhưng vẫn biết được cổ làm gì.", 0.05)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play("MenuWaitress")
	UniversalFunctions.play_dialogue("null", "Bạn gọi món, cô phục vụ kia đi ra chỗ khác.", 0.05)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play("BlankStare")
	UniversalFunctions.play_dialogue("null", "Khi cổ rời khỏi, bạn lại nhìn vào bạn.", 0.05)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play("HandOutEh")
	UniversalFunctions.play_dialogue("Alex Thorley", "\"Mà nói trước há, tôi cũng không phải là gu của tôi đâu...\"", 0.05)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play("NervousStare")
	UniversalFunctions.play_dialogue("null", "\"Ừ, tôi cũng thế.\"", 0.05)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play("AwkwardStare")
	UniversalFunctions.play_dialogue("Alex Thorley", "\"Tuyệt.\"", 0.05)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play("NervousStare")
	UniversalFunctions.play_dialogue("null", "\"Cưa đôi nhé\"", 0.05)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play("AwkwardStare")
	UniversalFunctions.play_dialogue("Alex Thorley", "\"Ừ.\"", 0.05)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play("BlankStare")
	UniversalFunctions.play_dialogue("null", "Bạn lại nhìn vào bạn.", 0.05)
	await $CanvasLayer/Dialogue.close
	$Timer.starting()
	await $Timer.timeout
	$AnimationPlayer.play("BlankStare")
	UniversalFunctions.play_dialogue("null", "Ôi mẹ ơi. Kì quặc quá đi mất.", 0.02)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play("BlankStare")
	waiterbagel = true
	UniversalFunctions.play_dialogue("null", "Mọi thứ im lặng quá. Bạn đang hẹn hò với chính bạn.", 0.02)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play("NervousStare")
	UniversalFunctions.play_dialogue("null", "Thậm chí mọi thứ còn tệ hơn khi bạn nghĩ rằng bạn sẽ đứng lên kia kìa.", 0.02)
	await $CanvasLayer/Dialogue.close
	UniversalFunctions.play_dialogue("null", "Đệt mợ!", 0.02)
	await $CanvasLayer/Dialogue.close
	UniversalFunctions.play_dialogue("null", "ĐỆT MỢ!", 0.02)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play("BlankStare")
	UniversalFunctions.play_dialogue("null", "Đệt.", 0.05)
	await $CanvasLayer/Dialogue.close
	$Timer.starting()
	await $Timer.timeout
	UniversalFunctions.play_dialogue("null", "Biết gì chưa... giờ bạn đang nhìn vào bạn ở ngay trước mặt bạn đó, mà trông bạn cũng không quá đơn giản nhỉ.", 0.05)
	await $CanvasLayer/Dialogue.close
	UniversalFunctions.play_dialogue("null", "Có lẽ đây là điều tốt, có khi nó còn gây điểm nhấn cho bạn cũng nên.", 0.05)
	await $CanvasLayer/Dialogue.close
	UniversalFunctions.play_dialogue("null", "Kiểu nó cũng khiến bạn dễ nhìn hơn ấy.", 0.05)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play("CuriousStare")
	UniversalFunctions.play_dialogue("null", "Bạn quá tự ti. Chiếc gương đã khiến bạn quá khắt khe với bản thân mình.", 0.05)
	await $CanvasLayer/Dialogue.close
	UniversalFunctions.play_dialogue("null", "Có lẽ cái cảm giác lo sợ kia khá là vô lí.", 0.05)
	await $CanvasLayer/Dialogue.close
	UniversalFunctions.play_dialogue("null", "Có lẽ người khác cũng chỉ nhìn thấy bạn như một người bình thường mà thôi...", 0.05)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play("HalfSmileStare")
	UniversalFunctions.play_dialogue("null", "Có khi có người sẽ nói rằng bạn trông... rất... đẹp.", 0.05)
	await $CanvasLayer/Dialogue.close
	UniversalFunctions.play_dialogue("null", "Ừ.", 0.05)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play("SmileStare")
	UniversalFunctions.play_dialogue("null", "Bạn đẹp vl.", 0.05)
	await $CanvasLayer/Dialogue.close
	if bagelGrab == 3:
		bagelGrab()
	else:
		filetMignon()
	
func bagelGrab():
	hand.visible = false
	$AnimationPlayer.play("MenuWaitressLook")
	UniversalFunctions.play_dialogue("null", "Cô phục vụ quay lại với món Filet Mignons trên tay.", 0.05)
	await $CanvasLayer/Dialogue.close
	hand.visible = true
	$TextureRect/TableDressing.texture = load("res://Sprites/bagelmeal.png")
	$TextureRect/TableDressing.visible = true
	$AnimationPlayer.play("LookingAtFood")
	UniversalFunctions.play_dialogue("null", "Trông...", 0.05)
	await $CanvasLayer/Dialogue.close
	hand.visible = false
	$AnimationPlayer.play("BlankStare")
	UniversalFunctions.play_dialogue("null", "...", 0.05)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play("BlankTalkStare")
	UniversalFunctions.play_dialogue("Alex Thorley", "Đây chỉ là một chiếc bánh mì vòng thôi mà.", 0.05)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play("BlankStare")
	UniversalFunctions.play_dialogue("null", "...", 0.05)
	await $CanvasLayer/Dialogue.close
	$Timer.starting()
	await $Timer.timeout
	$AnimationPlayer.play_backwards("load")
	await $AnimationPlayer.animation_finished
	UniversalFunctions.lastEnding = 3
	UniversalFunctions.speedrundisable = true
	get_tree().change_scene_to_file("res://Credits.tscn")
	
	
func filetMignon():
	hand.visible = false
	$AnimationPlayer.play("MenuWaitressLook")
	UniversalFunctions.play_dialogue("null", "Cô phục vụ quay lại với món Filet Mignons trên tay.", 0.05)
	await $CanvasLayer/Dialogue.close
	hand.visible = true
	$TextureRect/TableDressing.texture = load("res://Sprites/steak.png")
	$TextureRect/TableDressing.visible = true
	$AnimationPlayer.play("LookingAtFood")
	UniversalFunctions.play_dialogue("null", "Trông ngon quá.", 0.05)
	await $CanvasLayer/Dialogue.close
	UniversalFunctions.play_dialogue("null", "Bạn không thể cúi xuống nhìn phần ăn của bạn nhưng có thể thấy được phần ăn của bạn.", 0.05)
	await $CanvasLayer/Dialogue.close
	UniversalFunctions.play_dialogue("null", "Bạn đang ngồi trước mặt bạn.", 0.05)
	await $CanvasLayer/Dialogue.close
	UniversalFunctions.play_dialogue("null", "Kiểu kiểu thế. Ngọn nến cũng che mất một phần rồi. Nhưng bạn vẫn biết là nó trông khá ngon.", 0.05)
	await $CanvasLayer/Dialogue.close
	UniversalFunctions.play_dialogue("null", "Tất nhiên là chính bạn rồi.", 0.05)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play("CuttingFood")
	UniversalFunctions.play_dialogue("null", "Bạn cắt một miếng thịt.", 0.05)
	await $CanvasLayer/Dialogue.close
	UniversalFunctions.play_dialogue("null", "Là tái vừa.", 0.05)
	await $CanvasLayer/Dialogue.close
	UniversalFunctions.play_dialogue("null", "Tất nhiên bạn vẫn không thể cúi xuống nhìn rồi.", 0.05)
	await $CanvasLayer/Dialogue.close
	UniversalFunctions.play_dialogue("null", "Mà bạn khá ngạc nhiên vì bạn vẫn có thể cắt được thịt dù bạn chẳng hề nhìn thấy nó.", 0.05)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play("ChewingFood")
	UniversalFunctions.play_dialogue("null", "Bạn nhìn bạn cho miếng thịt vào miệng và nhai cùng một lúc với bạn.", 0.05)
	await $CanvasLayer/Dialogue.close
	$Timer.starting()
	await $Timer.timeout
	if minutes > 0 or UniversalFunctions.speedrundisable == true:
		food()
	else:
		stop()
			
			
			
func food():
	$AnimationPlayer.play("ThisSucks")
	UniversalFunctions.play_dialogue("Alex Thorley", "\"Ăn dở thật đấy.\"", 0.05)
	await $CanvasLayer/Dialogue.close
	hand.visible = false
	$AnimationPlayer.play("NervousStare")
	UniversalFunctions.play_dialogue("null", "\"Tôi cũng đang định nói vậy đây.\"", 0.05)
	await $CanvasLayer/Dialogue.close
	UniversalFunctions.play_dialogue("null", "\"Chắc là tôi sẽ cố ăn tiếp vậy.\"", 0.05)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play("HandOutAwkward")
	UniversalFunctions.play_dialogue("Alex Thorley", "\"Giống tôi rồi.\"", 0.05)
	await $CanvasLayer/Dialogue.close
	hand.visible = true
	$AnimationPlayer.play("ChewingFood")
	UniversalFunctions.play_dialogue("null", "Tuy là được phết nhiều bơ nhưng nó được nêm nếm tệ tới nỗi nó chỉ đơn thuần là một đống rác vô vị.", 0.05)
	await $CanvasLayer/Dialogue.close
	UniversalFunctions.play_dialogue("null", "Các nhà hàng sang chảnh hay làm thịt không ướp tí gì rồi gọi đó là sang.", 0.05)
	await $CanvasLayer/Dialogue.close
	UniversalFunctions.play_dialogue("null", "Bạn chẳng thể nếm được vị gì ngoài cái hương vị đầy sắt của miếng thịt đó, cảm giác chẳng dễ chịu gì cho cam.", 0.05)
	await $CanvasLayer/Dialogue.close
	UniversalFunctions.play_dialogue("null", "Và thực tế bạn chẳng cảm thấy có vị gì cả.", 0.05)
	await $CanvasLayer/Dialogue.close
	$Timer.starting()
	await $Timer.timeout
	hand.visible = false
	$AnimationPlayer.play("SmileStare")
	UniversalFunctions.play_dialogue("null", "\"Thôi thì ít nhất nó cũng không phải là một cái bánh mì vòng là may rồi.\"", 0.05)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play("HandOutSereneSmile")
	UniversalFunctions.play_dialogue("Alex Thorley", "\"Ha! Công nhận. Tôi có thể trở thành một người thấu hiểu được tôi đấy.\"", 0.05)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play("SmileStare")
	UniversalFunctions.play_dialogue("null", "\"Khoan đã... Cậu... hiểu...\"", 0.05)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play("Shocked")
	UniversalFunctions.play_dialogue("Alex Thorley", "\"...Trời đất... Cậu nói đúng rồi.\"", 0.05)
	await $CanvasLayer/Dialogue.close
	UniversalFunctions.play_dialogue("null", "\"Cậu là tôi mà! Lạy chứ, cậu là tôi mà!\"", 0.05)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play("SuperHappy")
	UniversalFunctions.play_dialogue("Alex Thorley", "[shake rate=15 level=15]\"THẬT LÀ VÃI CHƯỞNG!\"[/shake]", 0.05)
	await $CanvasLayer/Dialogue.close
	UniversalFunctions.play_dialogue("null", "[shake rate=15 level=15]\"ĐÂY ĐÚNG LÀ NGÀY HẠNH PHÚC NHẤT ĐỜI TÔI!\"[/shake]", 0.05)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play("SuperHappyVibrate")
	UniversalFunctions.play_dialogue("null", "Bạn đang rất cảm động và vui mừng.", 0.02)
	await $CanvasLayer/Dialogue.close
	UniversalFunctions.play_dialogue("null", "Bạn đã có một người hiểu được những gì bạn đã trải qua!", 0.02)
	await $CanvasLayer/Dialogue.close
	UniversalFunctions.play_dialogue("null", "Còn ai khác nữa chứ!", 0.02)
	await $CanvasLayer/Dialogue.close
	UniversalFunctions.play_dialogue("null", "Bạn cuối cùng đã khiến bạn đánh giá cao vẻ đẹp trên khuôn mặt bạn...", 0.02)
	await $CanvasLayer/Dialogue.close
	UniversalFunctions.play_dialogue("null", "Bạn đã khiến bản thân nhận ra rằng sự giản dị của chính bạn đáng yêu đến chừng nào.", 0.02)
	await $CanvasLayer/Dialogue.close
	UniversalFunctions.play_dialogue("null", "...", 0.07)
	await $CanvasLayer/Dialogue.close
	UniversalFunctions.options("Hôn", "Không hôn")
	await $CanvasLayer/Options.pressed
	if $CanvasLayer/Options.selected == "Hôn":
		kiss()
	elif $CanvasLayer/Options.selected == "Không hôn":
		do_not()
	
func do_not():
	$AnimationPlayer.play("HandOutHappy")
	UniversalFunctions.play_dialogue("Alex Thorley", "\"Trời đất, hãy thử nghĩ xem chúng ta có thể làm được gì đi! Giờ chúng ta đã có thể tự lo cho bản thân nơi công sở... Trở thành những người bạn cùng phòng mà sẽ không bao giờ xảy ra xích mích hay cãi cọ gì hết...\"", 0.05)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play("BlankStare")
	UniversalFunctions.play_dialogue("null", "\"À... nhắc mới nhớ... Chúng ta phải báo cáo về vụ này thôi. Dị thường đến thế này cơ mà.\"", 0.05)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play("AwkwardStare")
	UniversalFunctions.play_dialogue("Alex Thorley", "\"Ý tôi là, nếu như vấn đề này vẫn tiếp diễn và một trong hai người chúng ta vẫn còn tồn tại trước khi kịp báo cáo.\"", 0.05)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play("BlankStare")
	UniversalFunctions.play_dialogue("null", "\"...\"", 0.02)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play("NervousStare")
	UniversalFunctions.play_dialogue("Alex Thorley", "\"...\"", 0.02)
	await $CanvasLayer/Dialogue.close
	UniversalFunctions.play_dialogue("null", "\"Ầy, mẹ nó chứ.\"", 0.05)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play("HandOutAwkward")
	UniversalFunctions.play_dialogue("Alex Thorley", "\"Được rồi... đợi chút nhá. Giờ chúng ta chưa CHẮC CHẮC được điều gì cả, đúng chứ? Không có gì để đảm bảo việc một trong hai người sẽ không còn tồn tại nữa cả.\"", 0.05)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play("NervousStare")
	UniversalFunctions.play_dialogue("null", "\"Ừm, ,à ý tôi là... cái hồ sơ theo dõi...\"", 0.05)
	await $CanvasLayer/Dialogue.close
	UniversalFunctions.play_dialogue("Alex Thorley", "\"...\"", 0.02)
	await $CanvasLayer/Dialogue.close
	UniversalFunctions.play_dialogue("null", "\"...\"", 0.02)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play("HandOutAwkward")
	UniversalFunctions.play_dialogue("Alex Thorley", "\"Nói về nó mãi có vẻ cũng chẳng đi được đến đâu đâu ha.\"", 0.05)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play("HalfSmileStare")
	UniversalFunctions.play_dialogue("null", "Cả hai người bạn nhanh chóng xoay sở nhằm quên đi nỗi sợ hãi khi đang cố đắm chìm vào cuộc trò chuyện.", 0.05)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play("HandOutHappy")
	UniversalFunctions.play_dialogue("null", "Bạn đang phàn nàn với bạn về môi trường làm việc và cuộc đời bạn nó phi lý đến chừng nào.", 0.05)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play("SmileStare")
	UniversalFunctions.play_dialogue("null", "Bạn chẳng hề đoái hoài gì tới việc bạn đang ở nơi công cộng và các công dân có thể nghe thấy điều đó.", 0.05)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play("HandOutSereneSmile")
	UniversalFunctions.play_dialogue("null", "Người duy nhất mà bạn nhìn thấy chính là người phục vụ kia. Mà cũng chẳng có gì đáng quan ngại lắm.", 0.05)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play_backwards("load")
	await $AnimationPlayer.animation_finished
	$TextureRect/background.play("bedroom")
	$AudioStreamPlayer.stream = load("res://res://Resources/559853__migfus20__mysterious-piano-music-loop.mp3")
	$AudioStreamPlayer.playing = true
	$TextureRect/ChairTruck.visible = false
	$TextureRect/Table.visible = false
	$TextureRect/Waiter2.visible = false
	$TextureRect/Candle.visible = false
	$TextureRect/AlexBackground.visible = false
	$TextureRect/TableDressing.visible = false
	UniversalFunctions.play_dialogue("null", "Cuối cùng, bạn rời đi và trở về nơi ở tại điểm Tổ Chức chỉ định bạn ở đó.", 0.05)
	await $CanvasLayer/Dialogue.close
	UniversalFunctions.play_dialogue("null", "Cậu nói suốt từ đó đến tận lúc về đến đây luôn ha.", 0.05)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play("load")
	await $AnimationPlayer.animation_finished
	$AnimationPlayer.play("HandOutSereneSmile")
	UniversalFunctions.play_dialogue("Alex Thorley", "\"Ha! Tôi còn tưởng họ sẽ để ý tới chúng ta vì chúng ta cứ ở lại đó mà chẳng làm gì cơ?\"", 0.05)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play("SmileStare")
	UniversalFunctions.play_dialogue("null", "Cậu có đùa cợt về thứ gì đó trước khi cậu đến đó mà ha.", 0.05)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play("BlankStare")
	UniversalFunctions.play_dialogue("null", "Cái gì đó về việc... cậu... làm việc... ít đến chừng nào à?", 0.05)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play("CuriousStare")
	UniversalFunctions.play_dialogue("null", "Bạn để ý rằng bạn không biết điều gì đang xảy ra.", 0.05)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play("HandOutEh")
	UniversalFunctions.play_dialogue("Alex Thorley", "\"Tự nhiên cậu bị sao vậy?\"", 0.05)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play("CuriousStare")
	UniversalFunctions.play_dialogue("null", "\"Hả? Cậu vừa nói gì\"", 0.05)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play("HandOutAwkward")
	UniversalFunctions.play_dialogue("Alex Thorley", "\"Cậu đã... đùa cợt về việc chúng ta làm việc ít đến chừng nào?\"", 0.05)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play("NervousStare")
	UniversalFunctions.play_dialogue("null", "\"Không, ý tôi là, cụ thể hơn ấy.\"", 0.05)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play("AwkwardStare")
	await $AnimationPlayer.animation_finished
	$AnimationPlayer.play("AwkwardStare")
	await $AnimationPlayer.animation_finished
	UniversalFunctions.play_dialogue_auto("Alex Thorley", "\"Cái gì đó về việc cậu làm việc không quá", 0.05)
	await $CanvasLayer/Dialogue.autoclose
	$AnimationPlayer.play("Shocked")
	UniversalFunctions.play_dialogue("Alex Thorley", "\"À.\"", 0.05)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play("BlankStare")
	$Timer.starting()
	await $Timer.timeout
	$AnimationPlayer.play("AwkwardStare")
	UniversalFunctions.play_dialogue("Alex Thorley", "\"Cậu có nhớ là... Chúng ta đã nói gì trước khi về đến đây không?\"", 0.05)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play("BlankStare")
	UniversalFunctions.play_dialogue("null", "\"Không. Còn cậu? Cậu có nhớ gì về việc tại sao cậu lại đến muộn không?\"", 0.05)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play("AwkwardStare")
	UniversalFunctions.play_dialogue("Alex Thorley", "\"Không.\"", 0.05)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play("BlankStare")
	UniversalFunctions.play_dialogue("null", "\"...\"", 0.02)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play("NervousStare")
	UniversalFunctions.play_dialogue("Alex Thorley", "\"...\"", 0.02)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play("CuriousStare")
	UniversalFunctions.play_dialogue("null", "\"Tôi không cử động được.\"", 0.05)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play("BlankTalkStare")
	UniversalFunctions.play_dialogue("Alex Thorley", "\"Hả?\"", 0.05)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play("BlankStare")
	UniversalFunctions.play_dialogue("null", "\"Ừ, tôi không cử động được.\"", 0.05)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play("AwkwardStare")
	UniversalFunctions.play_dialogue("Alex Thorley", "\"Nhưng cậu vừa đi bộ tới đây mà?\"", 0.05)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play("BlankStare")
	UniversalFunctions.play_dialogue("null", "\"Ừ. Tôi biết.\"", 0.05)
	await $CanvasLayer/Dialogue.close
	$Timer.starting()
	await $Timer.timeout
	UniversalFunctions.play_dialogue("null", "Bạn đang xem xét đến khả năng cả hai bạn đã không còn tồn tại. Hoặc không ai đang tồn tại ngay cả trong thời điểm hiện tại.", 0.05)
	await $CanvasLayer/Dialogue.close
	$Timer.starting()
	await $Timer.timeout
	$AnimationPlayer.play("CuriousStare")
	UniversalFunctions.play_dialogue("null", "\"Cậu có nhớ gì về những thứ xảy ra trước buổi hẹn không?\"", 0.05)
	await $CanvasLayer/Dialogue.close
	
	if UniversalFunctions.lastEnding == null:
		$AnimationPlayer.play("BlankTalkStare")
		UniversalFunctions.play_dialogue("Alex Thorley", "\"Tôi không nhớ gì cả.\"", 0.05)
		await $CanvasLayer/Dialogue.close
	elif UniversalFunctions.lastEnding == 0:
		$AnimationPlayer.play("AwkwardStare")
		UniversalFunctions.play_dialogue("Alex Thorley", "\"Mọi thứ... như đang quay cuồng vậy.\"", 0.05)
		await $CanvasLayer/Dialogue.close
	elif UniversalFunctions.lastEnding == 1:
		$AnimationPlayer.play("HandOutHappy")
		UniversalFunctions.play_dialogue("Alex Thorley", "\"Tôi đã đang trên đường về nhà với người bạn mới gặp.\"", 0.05)
		await $CanvasLayer/Dialogue.close
	elif UniversalFunctions.lastEnding == 2:
		$AnimationPlayer.play("BlankTalkStare")
		UniversalFunctions.play_dialogue("Alex Thorley", "\"Và tôi đã ngồi... ngay tại đó. Nói chuyện với một ai khác.\"", 0.05)
		await $CanvasLayer/Dialogue.close
	elif UniversalFunctions.lastEnding == 2:
		$AnimationPlayer.play("BlankTalkStare")
		UniversalFunctions.play_dialogue("Alex Thorley", "\"Tôi còn nhớ về cái bánh mì vòng\"", 0.05)
		await $CanvasLayer/Dialogue.close
		
	
	$AnimationPlayer.play("HandOutAwkward")
	UniversalFunctions.play_dialogue("Alex Thorley", "\"Còn cậu?\"", 0.05)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play("NervousStare")
	UniversalFunctions.play_dialogue("null", "Bạn nhớ rất nhiều thứ về bản thân. Nhớ về định hướng đó. Nhớ về chiếc bánh mì đó và nhớ về việc bị cáo buộc tội giết người.", 0.05)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play("HalfSmileStare")
	UniversalFunctions.play_dialogue("null", "\"Tôi có nhớ về chiếc bánh mì vòng.\"", 0.05)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play("AwkwardStare")
	UniversalFunctions.play_dialogue("Alex Thorley", "\"Tôi cũng vậy.\"", 0.05)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play("NervousStare")
	UniversalFunctions.play_dialogue("null", "Bạn nhớ là bạn đã đọc. Đã viết. Đã nhìn vào trang web hiện ra trên màn hình.", 0.05)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play("BlankStare")
	$Timer.starting()
	await $Timer.timeout
	UniversalFunctions.play_dialogue("null", "Bạn không phải là Alex Thorley.", 0.05)
	await $CanvasLayer/Dialogue.close
	$Timer.starting()
	await $Timer.timeout
	UniversalFunctions.play_dialogue("null", "Và tất nhiên là bạn biết thừa mà.", 0.05)
	await $CanvasLayer/Dialogue.close
	$Timer.starting()
	await $Timer.timeout
	$AnimationPlayer.play("HandOutSereneSmile")
	UniversalFunctions.play_dialogue("Alex Thorley", "\"Ừm, rất vui vì được gặp cậu.\"", 0.05)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play("BlankTalkStare")
	UniversalFunctions.play_dialogue("Alex Thorley", "\"Tôi sẽ gặp lại cậu sau.\"", 0.05)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play("BlankStare")
	$Timer.starting()
	$AnimationPlayer.play_backwards("load")
	await $AnimationPlayer.animation_finished
	UniversalFunctions.lastEnding = 2
	get_tree().change_scene_to_file("res://Credits.tscn")
	
	
func kiss():
	$AnimationPlayer.play_backwards("load")
	await $AnimationPlayer.animation_finished
	UniversalFunctions.play_dialogue("null", "Bạn nhoài người về phía bản thân...", 0.06)
	await $CanvasLayer/Dialogue.close
	UniversalFunctions.play_dialogue("null", "Bạn đưa tay ra và giữ lấy khuôn mặt đang tươi cười của bạn...", 0.06)
	await $CanvasLayer/Dialogue.close
	UniversalFunctions.play_dialogue("null", "Rồi bạn nhắm mắt lại.", 0.07)
	await $CanvasLayer/Dialogue.close
	UniversalFunctions.play_dialogue("null", "Cảm nhận bở môi của bản thân trong chốc lát...", 0.05)
	await $CanvasLayer/Dialogue.close
	UniversalFunctions.play_dialogue("null", "Rồi bạn lùi lại và nhìn vào bản thân nốt lần cuối.", 0.05)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play("BlankStare")
	await $AnimationPlayer.animation_finished
	$AnimationPlayer.play("load")
	await $AnimationPlayer.animation_finished
	UniversalFunctions.play_dialogue("Alex Thorley", "\"...\"", 0.07)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play("NervousStare")
	UniversalFunctions.play_dialogue("null", "\"...\"", 0.07)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play("HandOutAwkward")
	UniversalFunctions.play_dialogue("Alex Thorley", "\"Ấu kế, cảm giác lạ lùng thật đấy.\"", 0.06)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play("NervousStare")
	UniversalFunctions.play_dialogue("null", "\"Ừ... chắc là...khỏi... có lần sau đi... ha.\"", 0.06)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play("AwkwardStare")
	UniversalFunctions.play_dialogue("Alex Thorley", "\"Ừa.\"", 0.06)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play("SmileStare")
	UniversalFunctions.play_dialogue("null", "\"Ơ mà! Nếu quên vụ này đi thì chúng ta có thể trở thành bạn tốt của nhau đấy!\"", 0.04)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play("HandOutSereneSmile")
	UniversalFunctions.play_dialogue("Alex Thorley", "\"Ừm! Cuối cùng tôi cũng có một người để cùng trò chuyện rồi! Một ai đó thấu hiểu được tôi!\"", 0.04)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play("HandOutStandUpEnd")
	UniversalFunctions.play_dialogue("null", "Bạn đứng dậy và chìa tay ra trước mặt bạn.", 0.05)
	await $CanvasLayer/Dialogue.close
	UniversalFunctions.play_dialogue("null", "\"Nào! Hãy cùng tới nơi nào đó vắng vắng đề bàn đủ thứ chuyện mà chúng ta không thể nói với ai khác thôi!\"", 0.04)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play_backwards("load")
	await $AnimationPlayer.animation_finished
	$TextureRect/background.play("crossing")
	$AudioStreamPlayer.stream = load("res://Resources/559850__migfus20__jazz-background-music-loop.mp3")
	$AudioStreamPlayer.playing = true
	$TextureRect/ChairTruck.visible = false
	$TextureRect/Table.visible = false
	$TextureRect/Waiter2.visible = false
	$TextureRect/Candle.visible = false
	$TextureRect/AlexBackground.visible = false
	$TextureRect/TableDressing.visible = false
	$AnimationPlayer.play("load")
	await $AnimationPlayer.animation_finished
	UniversalFunctions.play_dialogue("null", "Bạn ra ngoài với bạn, cả hai nói chuyện liên hồi. Bạn không biết là bạn đang nói về cái gì. Bạn không nghe thấy gì cả.", 0.04)
	await $CanvasLayer/Dialogue.close
	UniversalFunctions.play_dialogue("null", "Bạn quay lại và mỉm cười với chính mình khi đi qua ngã tư. Không gì có thể phá hủy tâm trạng hứng khởi đó của bạn cả.", 0.04)
	await $CanvasLayer/Dialogue.close
	$TextureRect/AlexBackground.visible = true
	$AnimationPlayer.play("StandingNight")
	await $AnimationPlayer.animation_finished
	$AnimationPlayer.play("StandingNightTalk")
	UniversalFunctions.play_dialogue_auto("null", "\"Có muốn ăn kem trước khi\"", 0.04)
	await $CanvasLayer/Dialogue.autoclose
	$AnimationPlayer.play("Truck")
	await $AnimationPlayer.animation_finished
	UniversalFunctions.play_dialogue("null", "Một chiếc xa tải từ đâu ra lao vào người bạn. Bạn chết ngay tại chỗ.", 0.04)
	await $CanvasLayer/Dialogue.close
	$Timer.starting()
	await $Timer.timeout
	UniversalFunctions.play_dialogue("null", "Ầy, địt mẹ nó chứ.", 0.04)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play_backwards("load")
	await $AnimationPlayer.animation_finished
	UniversalFunctions.lastEnding = 1
	get_tree().change_scene_to_file("res://Credits.tscn")


func stop():
	$AudioStreamPlayer.stop()
	waiterdisabled = true
	hand.visible = false
	$AnimationPlayer.play("STOP")
	UniversalFunctions.play_dialogue_auto_set("Alex Thorley", "[shake rate=15 level=15]\"NGƯNG HỘ CÁI!\"[/shake]", 0.02, 3)
	await $CanvasLayer/Dialogue.autoclose
	$AnimationPlayer.play("ThisSucks")
	UniversalFunctions.play_dialogue_auto_set("Alex Thorley", "\"Lạy hồn tôi\"", 0.02, 1.5)
	await $CanvasLayer/Dialogue.autoclose
	$AnimationPlayer.play("AwkwardStare")
	UniversalFunctions.play_dialogue_auto("Alex Thorley", "\"Xong chưa?\"", 0.07)
	await $CanvasLayer/Dialogue.autoclose
	$AnimationPlayer.play("NervousStare")
	$Timer.starting()
	await $Timer.timeout
	$AnimationPlayer.play("HandOutAwkward")
	UniversalFunctions.play_dialogue("Alex Thorley", "\"Này... tôi đúng là trông cũng khá tuyệt...\"", 0.07)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play("AwkwardStare")
	UniversalFunctions.play_dialogue("Alex Thorley", "\"Nhưng mà... cả hai người tiến triển nhanh quá rồi đó.\"", 0.07)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play("HandOutEh")
	UniversalFunctions.play_dialogue("Alex Thorley", "\"Tôi chưa sẵn sàng bắt đầu một mối quan hệ sớm đến thế đây.\"", 0.07)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play("ThisSucks")
	UniversalFunctions.play_dialogue("Alex Thorley", "\"À đấy, quả vừa nãy làm tôi chóng mặt kinh khủng.\"", 0.07)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play("HandOutHappy")
	UniversalFunctions.play_dialogue("Alex Thorley", "\"Vẫn tiếp tục giữ liên lạc với nhau chứu?\"", 0.07)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play("HandOutEh")
	UniversalFunctions.play_dialogue("Alex Thorley", "\"Ý tôi là... chắc chắn kiểu gì chúng ta cũng sẽ tới cùng một chỗ thôi mà.\"", 0.07)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play("AwkwardStareStanding")
	UniversalFunctions.play_dialogue("Alex Thorley", "\"Tạn biệt.\"", 0.07)
	await $CanvasLayer/Dialogue.close
	$AnimationPlayer.play_backwards("HandOutStandUp")
	UniversalFunctions.play_dialogue("null", "Có vẻ bạn sẽ không còn chơi hệ speedrun như thế nữa đâu ha.", 0.07)
	await $CanvasLayer/Dialogue.close
	$Timer.starting()
	await $Timer.timeout
	$AnimationPlayer.play_backwards("load")
	await $AnimationPlayer.animation_finished
	UniversalFunctions.lastEnding = 0
	UniversalFunctions.speedrundisable = true
	get_tree().change_scene_to_file("res://Credits.tscn")


func _on_Minutes_timeout():
	minutes += 1



func _on_Waiter_timeout():
	waiter += 1
	if waiterdisabled == false and waiterbagel == false:
		$TextureRect/Waiter2/WaiterAnims.play("move")
		$Waiter.stop()
		await $TextureRect/Waiter2/WaiterAnims.animation_finished
		$Waiter.start()
	elif waiterdisabled == false and waiterbagel == true:
		$TextureRect/BagelWaiter/Bagel3.visible = true
		$TextureRect/BagelWaiter/WaiterAnims.play("move")
		$Waiter.stop()
		await $TextureRect/Waiter2/WaiterAnims.animation_finished
		$Waiter.start()
		waiterbagel = false



func _on_Bagel3_pressed():
	$TextureRect/BagelWaiter/Bagel3.visible = false
	bagelGrab += 1
	print(bagelGrab)
	waiterbagel = false
	$Waiter.start()
