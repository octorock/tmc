SCRIPT_START script_08016384
	BeginBlock 
	EndBlock 
	Jump script_08016384
	JumpIf script_08016384
	JumpIfNot script_08016384
	JumpTable script_08016384, script_08016384
	JumpAbsolute script_08016384
	JumpAbsoluteIf script_08016384
	JumpAbsoluteIfNot script_08016384
	JumpAbsoluteTable script_08016384, script_08016384
	Call script_08016384
	CallWithArg script_08016384, 0x12345678
	LoadRoomEntityList script_08016384
	TestBit 0x00000001
	CheckInventory1 0x0001
	CheckInventory2 0x0001
	HasRoomItemForSale 
	CheckLocalFlag 0x0067
.ifdef JP
	CheckLocalFlagByOffset 0x0100, 0x0069
.else
.ifdef EU
	CheckLocalFlagByOffset 0x0100, 0x0069
.else
	CheckLocalFlagByOffset 0x0100, 0x006b
.endif
.endif
	CheckGlobalFlag 0x0013
	CheckRoomFlag 0x0000
	CheckPlayerInRegion 0x0000, 0x0000, 0x0000
	CheckPlayerInRegion2 0x0000
	CheckEntityInteractType 
	_0807E30C 
	HasRupees 0x00c8
	_0807E3E8 
	CheckKinstoneFused 0x0001
	BuyItem 0x006c, 0x0000
	_0807E48C 0x0020
	_0807E4CC 0x00000000
	_0807E4EC 0x00000000
	_0807E514 0x00000000
	CheckPlayerFlags 0x00000080
	_0807E564 
	EntityHasHeight 
	ComparePlayerAction 0x0001
	ComparePlayerAnimationState 0x0004
	_0807E5F8 0x00000001
	_0807E610 0x00000002
	SetLocalFlag 0x0067
	SetLocalFlagByOffset 0x0100, 0x0001
	ClearLocalFlag 0x0067
	SetGlobalFlag 0x0013
	ClearGlobalFlag 0x0013
	SetRoomFlag 0x0000
	ClearRoomFlag 0x0000
	Wait 0x001e
	WaitForSomething 0x00000001
	WaitForSomething2 0x00000002
	WaitPlayerAction8 
	WaitForPlayerAction0x17 
	WaitFor_1 
	WaitFor_2 
	_0807E778 0x0004
	_0807E788 0x0000ffff
