	#include "asm/constants/gba_constants.inc"
	#include "asm/macros.inc"

	.syntax unified

	.text



	thumb_func_start sub_8053704
sub_8053704:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x48
	str r0, [sp, 0x10]
	adds r7, r1, 0
	mov r8, r2
	mov r9, r3
	movs r0, 0
	str r0, [sp, 0x14]
	ldrh r1, [r2, 0x2]
	str r1, [sp, 0x18]
	bl _08055570
_08053724:
	adds r0, r5, 0
	bl EntityExists
	lsls r0, 24
	cmp r0, 0
	bne _08053734
	bl _0805556A
_08053734:
	str r7, [sp, 0x1C]
	ldr r2, [r5, 0x70]
	str r2, [sp, 0x24]
	movs r3, 0xAD
	lsls r3, 1
	adds r0, r2, r3
	add r1, sp, 0x20
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r0, [sp, 0x18]
	bl CanBeSnatched
	lsls r0, 24
	cmp r0, 0
	beq _080537B4
	ldr r6, _080537A4
	ldr r0, [r6]
	ldr r2, _080537A8
	adds r0, r2
	ldr r4, [r0]
	cmp r4, 0
	beq _080537B4
	adds r0, r4, 0
	bl GetEntityType
	cmp r0, 0x1
	beq _0805376C
	b _08053A1C
_0805376C:
	cmp r4, r7
	bne _08053772
	b _08053A1C
_08053772:
	ldr r1, [r4, 0x70]
	adds r1, 0x98
	ldr r0, [r6]
	ldr r3, _080537AC
	adds r0, r3
	ldr r1, [r1]
	ldr r0, [r0]
	cmp r1, r0
	beq _08053786
	b _08053A1C
_08053786:
	ldr r0, [sp, 0x24]
	adds r0, 0xFF
	ldrb r0, [r0]
	cmp r0, 0
	beq _08053792
	b _08053A1C
_08053792:
	ldr r0, _080537B0
	ldr r2, [r0]
	adds r0, r7, 0
	adds r1, r5, 0
	bl TryDisplayDungeonLoggableMessage3
	adds r5, r4, 0
	b _08053A1C
	.align 2, 0
_080537A4: .4byte gDungeon
_080537A8: .4byte 0x00017b30
_080537AC: .4byte 0x00017b3c
_080537B0: .4byte gUnknown_80FCD28
_080537B4:
	adds r0, r7, 0
	mov r1, r8
	bl GetMoveTypeForMonster
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x5
	bne _08053854
	ldr r2, _08053844
	ldr r0, [r2]
	ldr r1, _08053848
	adds r0, r1
	ldr r0, [r0]
	cmp r0, 0
	beq _08053854
	adds r4, r0, 0
	str r2, [sp, 0x44]
	bl GetEntityType
	ldr r2, [sp, 0x44]
	cmp r0, 0x1
	beq _080537E2
	b _08053A1C
_080537E2:
	ldr r6, [r4, 0x70]
	adds r1, r6, 0
	adds r1, 0x98
	ldr r0, [r2]
	ldr r2, _0805384C
	adds r0, r2
	ldr r1, [r1]
	ldr r0, [r0]
	cmp r1, r0
	beq _080537F8
	b _08053A1C
_080537F8:
	adds r0, r4, 0
	adds r1, r7, 0
	movs r2, 0x1
	movs r3, 0
	bl GetTreatmentBetweenMonsters
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	beq _0805380E
	b _08053A1C
_0805380E:
	ldr r0, [sp, 0x24]
	adds r0, 0xFF
	ldrb r0, [r0]
	cmp r0, 0
	bne _08053822
	adds r0, r6, 0
	adds r0, 0xFF
	ldrb r0, [r0]
	cmp r0, 0
	beq _08053828
_08053822:
	cmp r5, r4
	beq _08053828
	b _08053A1C
_08053828:
	adds r0, r4, 0
	bl sub_8042930
	ldr r0, _08053850
	ldr r2, [r0]
	adds r0, r7, 0
	adds r1, r5, 0
	bl TryDisplayDungeonLoggableMessage3
	adds r5, r4, 0
	movs r3, 0x1
	str r3, [sp, 0x2C]
	b _08053A1C
	.align 2, 0
_08053844: .4byte gDungeon
_08053848: .4byte 0x00017b2c
_0805384C: .4byte 0x00017b38
_08053850: .4byte gUnknown_80FCD0C
_08053854:
	adds r0, r5, 0
	movs r1, 0x2C
	bl HasHeldItem
	lsls r0, 24
	cmp r0, 0
	bne _08053864
	b _08053A1C
_08053864:
	adds r0, r5, 0
	movs r1, 0
	bl CannotAttack
	lsls r0, 24
	cmp r0, 0
	beq _08053874
	b _08053A1C
_08053874:
	adds r0, r7, 0
	mov r1, r8
	movs r2, 0
	bl GetMoveTargetAndRangeForPokemon
	movs r1, 0xF0
	ands r1, r0
	cmp r1, 0
	beq _08053888
	b _08053A1C
_08053888:
	ldr r1, [sp, 0x24]
	movs r2, 0x9E
	lsls r2, 1
	adds r0, r1, r2
	ldr r0, [r0]
	bl FixedPointToInt
	ldr r1, _080538C4
	movs r3, 0
	ldrsh r1, [r1, r3]
	cmp r0, r1
	bge _080538A2
	b _08053A1C
_080538A2:
	ldr r0, [sp, 0x24]
	adds r0, 0xFF
	ldrb r0, [r0]
	cmp r0, 0
	beq _080538AE
	b _08053A1C
_080538AE:
	ldr r0, [sp, 0x24]
	adds r0, 0x46
	ldrb r4, [r0]
	mov r10, r4
	bl IsBossFight
	lsls r0, 24
	cmp r0, 0
	beq _080538CC
	ldr r0, _080538C8
	b _080539FA
	.align 2, 0
_080538C4: .4byte gUnknown_80F5006
_080538C8: .4byte gUnknown_80FDD88
_080538CC:
	movs r0, 0
	str r0, [sp, 0x34]
	movs r2, 0x9E
	lsls r2, 1
	ldr r1, [sp, 0x24]
	adds r2, r1, r2
	str r2, [sp, 0x3C]
_080538DA:
	movs r3, 0x1
	add r10, r3
	movs r0, 0x7
	mov r1, r10
	ands r1, r0
	mov r10, r1
	movs r2, 0x4
	ldrsh r0, [r5, r2]
	ldr r1, _080539B4
	mov r3, r10
	lsls r2, r3, 2
	adds r2, r1
	movs r3, 0
	ldrsh r1, [r2, r3]
	adds r0, r1
	movs r3, 0x6
	ldrsh r1, [r5, r3]
	movs r3, 0x2
	ldrsh r2, [r2, r3]
	adds r1, r2
	bl GetTile
	ldr r0, [r0, 0x10]
	str r0, [sp, 0x38]
	bl EntityExists
	lsls r0, 24
	cmp r0, 0
	beq _080539DC
	ldr r0, [sp, 0x38]
	bl GetEntityType
	cmp r0, 0x1
	bne _080539DC
	adds r0, r5, 0
	bl sub_8045888
	lsls r0, 24
	mov r1, sp
	adds r1, 0xC
	str r1, [sp, 0x40]
	cmp r0, 0
	beq _0805397C
	movs r6, 0x17
_08053932:
	adds r0, r5, 0
	adds r1, r4, 0
	bl sub_806CE68
	movs r0, 0x2
	movs r1, 0x43
	bl sub_803E708
	adds r4, 0x1
	movs r2, 0x7
	ands r4, r2
	subs r6, 0x1
	cmp r6, 0
	bge _08053932
	cmp r4, r10
	beq _0805396C
	movs r6, 0x7
_08053954:
	adds r0, r5, 0
	adds r1, r4, 0
	bl sub_806CE68
	movs r0, 0x2
	movs r1, 0x43
	bl sub_803E708
	adds r4, 0x1
	ands r4, r6
	cmp r4, r10
	bne _08053954
_0805396C:
	adds r0, r5, 0
	adds r1, r4, 0
	bl sub_806CE68
	movs r0, 0x2
	movs r1, 0x43
	bl sub_803E708
_0805397C:
	ldr r3, [sp, 0x3C]
	ldr r4, [r3]
	ldr r0, _080539B8
	movs r2, 0
	ldrsh r1, [r0, r2]
	add r0, sp, 0x8
	bl IntToFixedPoint
	ldr r2, [sp, 0x8]
	ldr r0, [sp, 0x40]
	adds r1, r4, 0
	bl FixedPoint_Subtract
	ldr r0, [sp, 0xC]
	ldr r3, [sp, 0x3C]
	str r0, [r3]
	mov r0, r8
	ldrh r1, [r0, 0x2]
	ldr r0, _080539BC
	cmp r1, r0
	bne _080539C4
	ldr r0, _080539C0
	ldr r2, [r0]
	adds r0, r7, 0
	adds r1, r5, 0
	bl TryDisplayDungeonLoggableMessage3
	b _080539D0
	.align 2, 0
_080539B4: .4byte gAdjacentTileOffsets
_080539B8: .4byte gUnknown_80F5006
_080539BC: .4byte 0x00000163
_080539C0: .4byte gUnknown_80FDDA8
_080539C4:
	ldr r0, _080539D8
	ldr r2, [r0]
	adds r0, r7, 0
	adds r1, r5, 0
	bl TryDisplayDungeonLoggableMessage3
_080539D0:
	str r5, [sp, 0x20]
	ldr r5, [sp, 0x38]
	b _080539E8
	.align 2, 0
_080539D8: .4byte gUnknown_80FDD20
_080539DC:
	ldr r1, [sp, 0x34]
	adds r1, 0x1
	str r1, [sp, 0x34]
	cmp r1, 0x7
	bgt _080539E8
	b _080538DA
_080539E8:
	ldr r2, [sp, 0x34]
	cmp r2, 0x8
	bne _08053A1C
	mov r3, r8
	ldrh r1, [r3, 0x2]
	ldr r0, _08053A08
	cmp r1, r0
	bne _08053A10
	ldr r0, _08053A0C
_080539FA:
	ldr r2, [r0]
	adds r0, r7, 0
	adds r1, r5, 0
	bl TryDisplayDungeonLoggableMessage3
	b _08053A1C
	.align 2, 0
_08053A08: .4byte 0x00000163
_08053A0C: .4byte gUnknown_80FDDAC
_08053A10:
	ldr r0, _08053AD8
	ldr r2, [r0]
	adds r0, r7, 0
	adds r1, r5, 0
	bl TryDisplayDungeonLoggableMessage3
_08053A1C:
	ldr r1, _08053ADC
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	ldr r1, _08053AE0
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	ldr r0, [r5, 0x70]
	str r0, [sp, 0x24]
	movs r6, 0xAD
	lsls r6, 1
	adds r1, r0, r6
	movs r0, 0
	strb r0, [r1]
	ldr r1, [sp, 0x24]
	ldrb r0, [r1, 0x6]
	cmp r0, 0
	beq _08053A4C
	movs r2, 0xB6
	lsls r2, 1
	adds r1, r2
	ldr r0, [r7, 0x4]
	str r0, [r1]
_08053A4C:
	adds r0, r5, 0
	bl sub_806A1E8
	adds r0, r7, 0
	adds r1, r5, 0
	bl TrySendImmobilizeSleepEndMsg
	movs r4, 0
	adds r0, r7, 0
	mov r1, r8
	bl MoveMatchesChargingStatus
	lsls r0, 24
	cmp r0, 0
	bne _08053A7E
	mov r3, r8
	ldrh r1, [r3, 0x2]
	adds r0, r7, 0
	bl sub_805755C
	lsls r0, 24
	lsrs r0, 24
	negs r1, r0
	orrs r1, r0
	lsrs r4, r1, 31
_08053A7E:
	ldr r0, [sp, 0x2C]
	cmp r0, 0
	beq _08053A86
	b _08053BAE
_08053A86:
	ldr r0, [sp, 0x24]
	adds r0, 0xC4
	ldrb r0, [r0]
	cmp r0, 0x5
	bne _08053AE8
	ldr r0, [sp, 0x18]
	bl IsReflectedByMagicCoat
	lsls r0, 24
	cmp r0, 0
	beq _08053B5C
	adds r0, r7, 0
	adds r1, r5, 0
	bl sub_8055988
	lsls r0, 24
	cmp r0, 0
	beq _08053B5C
	ldr r0, _08053AE4
	ldr r2, [r0]
	adds r0, r7, 0
	adds r1, r5, 0
	bl TryDisplayDungeonLoggableMessage3
	adds r0, r5, 0
	bl sub_8041B48
	adds r0, r5, 0
	adds r1, r7, 0
	bl sub_80559DC
	adds r5, r7, 0
	ldr r1, [r7, 0x70]
	str r1, [sp, 0x24]
	adds r0, r1, r6
	add r2, sp, 0x2C
	ldrb r2, [r2]
	strb r2, [r0]
	movs r3, 0x1
	str r3, [sp, 0x30]
	b _08053B5C
	.align 2, 0
_08053AD8: .4byte gUnknown_80FDD48
_08053ADC: .4byte gUnknown_202F208
_08053AE0: .4byte gUnknown_202F20C
_08053AE4: .4byte gUnknown_80FC52C
_08053AE8:
	cmp r0, 0xB
	bne _08053B5C
	adds r0, r7, 0
	mov r1, r8
	movs r2, 0
	bl GetMoveTargetAndRangeForPokemon
	lsls r0, 16
	asrs r1, r0, 16
	ldr r0, _08053C88
	ldr r2, [sp, 0x18]
	cmp r2, r0
	beq _08053B5C
	adds r0, 0x32
	cmp r2, r0
	beq _08053B5C
	cmp r4, 0
	bne _08053B5C
	movs r0, 0xF
	ands r0, r1
	cmp r0, 0
	beq _08053B20
	cmp r0, 0x4
	beq _08053B20
	cmp r0, 0x5
	beq _08053B20
	cmp r0, 0x2
	bne _08053B5C
_08053B20:
	adds r0, r7, 0
	adds r1, r5, 0
	bl sub_8055988
	lsls r0, 24
	cmp r0, 0
	beq _08053B5C
	ldr r0, _08053C8C
	ldr r2, [r0]
	adds r0, r7, 0
	adds r1, r5, 0
	bl TryDisplayDungeonLoggableMessage3
	adds r0, r5, 0
	bl sub_8041BA8
	adds r0, r5, 0
	adds r1, r7, 0
	bl sub_80559DC
	adds r5, r7, 0
	ldr r3, [r7, 0x70]
	str r3, [sp, 0x24]
	movs r0, 0xAD
	lsls r0, 1
	adds r1, r3, r0
	movs r0, 0
	strb r0, [r1]
	movs r1, 0x1
	str r1, [sp, 0x30]
_08053B5C:
	ldr r2, [sp, 0x2C]
	cmp r2, 0
	bne _08053BAE
	ldr r0, [sp, 0x24]
	adds r0, 0xC4
	ldrb r0, [r0]
	cmp r0, 0x7
	bne _08053BAE
	adds r0, r7, 0
	mov r1, r8
	movs r2, 0
	bl GetMoveTargetAndRangeForPokemon
	lsls r0, 16
	movs r1, 0xF0
	lsls r1, 12
	ands r1, r0
	asrs r1, 16
	cmp r1, 0
	beq _08053B90
	cmp r1, 0x4
	beq _08053B90
	cmp r1, 0x5
	beq _08053B90
	cmp r1, 0x2
	bne _08053BAE
_08053B90:
	cmp r4, 0
	bne _08053BAE
	ldr r0, _08053C90
	adds r1, r5, 0
	movs r2, 0
	bl SetMessageArgument
	ldr r0, _08053C94
	ldr r2, [r0]
	adds r0, r7, 0
	adds r1, r5, 0
	bl TryDisplayDungeonLoggableMessage3
	movs r3, 0
	str r3, [sp, 0x28]
_08053BAE:
	adds r0, r5, 0
	mov r1, r8
	bl sub_80571F0
	lsls r0, 24
	cmp r0, 0
	beq _08053BC0
	movs r0, 0
	str r0, [sp, 0x28]
_08053BC0:
	ldr r1, [sp, 0x28]
	cmp r1, 0
	beq _08053C4A
	adds r0, r5, 0
	movs r1, 0x3C
	bl HasAbility
	lsls r0, 24
	cmp r0, 0
	beq _08053BFA
	mov r0, r8
	bl IsSoundMove
	lsls r0, 24
	cmp r0, 0
	beq _08053BFA
	ldr r0, _08053C90
	adds r1, r5, 0
	movs r2, 0
	bl SetMessageArgument
	ldr r0, _08053C98
	ldr r2, [r0]
	adds r0, r7, 0
	adds r1, r5, 0
	bl TryDisplayDungeonLoggableMessage3
	movs r2, 0
	str r2, [sp, 0x28]
_08053BFA:
	ldr r3, [sp, 0x28]
	cmp r3, 0
	beq _08053C4A
	movs r0, 0
	ldr r1, [sp, 0x30]
	cmp r1, 0
	bne _08053C0A
	movs r0, 0x1
_08053C0A:
	adds r2, r0, 0
	mov r3, r8
	ldrh r1, [r3, 0x2]
	cmp r1, 0x68
	beq _08053C20
	ldr r0, _08053C9C
	cmp r1, r0
	beq _08053C20
	subs r0, 0x4
	cmp r1, r0
	bne _08053C22
_08053C20:
	movs r2, 0
_08053C22:
	str r2, [sp]
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	movs r3, 0
	bl sub_8056B34
	lsls r0, 24
	cmp r0, 0
	bne _08053C3A
	movs r0, 0
	str r0, [sp, 0x28]
_08053C3A:
	ldr r1, [sp, 0x28]
	cmp r1, 0
	beq _08053C4A
	ldr r2, [sp, 0x2C]
	cmp r2, 0
	beq _08053C4A
	movs r3, 0
	str r3, [sp, 0x28]
_08053C4A:
	adds r0, r5, 0
	bl sub_8045888
	lsls r0, 24
	cmp r0, 0
	beq _08053C6A
	movs r0, 0x4
	movs r1, 0x4A
	bl sub_803E708
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	movs r3, 0
	bl sub_8041168
_08053C6A:
	ldr r0, [sp, 0x28]
	cmp r0, 0
	beq _08053C72
	b _08053D72
_08053C72:
	ldr r0, [r7, 0x70]
	ldrb r0, [r0, 0x7]
	cmp r0, 0
	beq _08053CA0
	movs r1, 0xAB
	lsls r1, 1
	adds r0, r7, 0
	bl sub_80421C0
	b _08053CA8
	.align 2, 0
_08053C88: .4byte 0x00000163
_08053C8C: .4byte gUnknown_80FC558
_08053C90: .4byte gUnknown_202DFE8
_08053C94: .4byte gUnknown_80FC574
_08053C98: .4byte gUnknown_8100524
_08053C9C: .4byte 0x00000131
_08053CA0:
	ldr r1, _08053CC4
	adds r0, r7, 0
	bl sub_80421C0
_08053CA8:
	ldr r0, _08053CC8
	ldr r1, [r5, 0x70]
	movs r2, 0
	bl SetMessageArgument_2
	cmp r7, r5
	bne _08053CD0
	ldr r0, _08053CCC
	ldr r2, [r0]
	adds r0, r7, 0
	adds r1, r7, 0
	bl TryDisplayDungeonLoggableMessage3
	b _08053D10
	.align 2, 0
_08053CC4: .4byte 0x00000157
_08053CC8: .4byte gUnknown_202DFE8
_08053CCC: .4byte gUnknown_80F9380
_08053CD0:
	adds r0, r7, 0
	adds r1, r5, 0
	movs r2, 0x1
	movs r3, 0
	bl GetTreatmentBetweenMonsters
	lsls r0, 24
	cmp r0, 0
	bne _08053CEC
	ldr r0, _08053CE8
	b _08053CF4
	.align 2, 0
_08053CE8: .4byte gUnknown_80F9384
_08053CEC:
	ldr r1, [sp, 0x2C]
	cmp r1, 0
	beq _08053D04
	ldr r0, _08053D00
_08053CF4:
	ldr r2, [r0]
	adds r0, r7, 0
	adds r1, r5, 0
	bl TryDisplayDungeonLoggableMessage3
	b _08053D10
	.align 2, 0
_08053D00: .4byte gUnknown_80F93A4
_08053D04:
	ldr r0, _08053D48
	ldr r2, [r0]
	adds r0, r7, 0
	adds r1, r5, 0
	bl TryDisplayDungeonLoggableMessage3
_08053D10:
	adds r0, r5, 0
	bl sub_8045888
	lsls r0, 24
	cmp r0, 0
	beq _08053D2A
	ldr r0, _08053D4C
	movs r3, 0x1
	negs r3, r3
	adds r1, r5, 0
	movs r2, 0x1
	bl sub_803ED30
_08053D2A:
	ldr r2, [sp, 0x18]
	cmp r2, 0xCC
	beq _08053D50
	cmp r2, 0xCE
	bne _08053D60
	movs r0, 0x1
	str r0, [sp]
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_8059FC8
	b _08053D60
	.align 2, 0
_08053D48: .4byte gUnknown_80F9364
_08053D4C: .4byte 0x0000270f
_08053D50:
	movs r0, 0x1
	str r0, [sp]
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_8059E54
_08053D60:
	bl sub_8044B28
	lsls r0, 24
	cmp r0, 0
	beq _08053D6E
	bl _080555A2
_08053D6E:
	bl _08055568
_08053D72:
	ldr r0, [sp, 0x24]
	adds r0, 0xFB
	ldrb r3, [r0]
	mov r10, r3
	ldr r2, [sp, 0x24]
	ldrb r1, [r2, 0x6]
	adds r6, r0, 0
	cmp r1, 0
	beq _08053DA8
	mov r3, r8
	ldrh r1, [r3, 0x2]
	ldr r0, _08053E88
	cmp r1, r0
	beq _08053D9E
	mov r0, r9
	cmp r0, 0
	bne _08053D9E
	mov r1, r10
	cmp r1, 0
	bne _08053D9E
	movs r0, 0x1
	strb r0, [r6]
_08053D9E:
	ldr r2, [sp, 0x68]
	cmp r2, 0x1
	bne _08053DA8
	movs r0, 0x2
	strb r0, [r6]
_08053DA8:
	ldr r3, [sp, 0x24]
	movs r0, 0xB2
	lsls r0, 1
	adds r4, r3, r0
	ldrb r0, [r4]
	cmp r0, 0xFF
	bne _08053DCE
	adds r0, r5, 0
	movs r1, 0xE3
	bl sub_80717A4
	lsls r0, 24
	cmp r0, 0
	beq _08053DCE
	adds r0, r5, 0x4
	adds r1, r7, 0x4
	bl GetDirectionTowardsPosition
	strb r0, [r4]
_08053DCE:
	ldr r1, [sp, 0x24]
	ldr r2, _08053E8C
	adds r4, r1, r2
	ldrb r0, [r4]
	cmp r0, 0xFF
	bne _08053DF2
	adds r0, r5, 0
	movs r1, 0x19
	bl sub_80717A4
	lsls r0, 24
	cmp r0, 0
	beq _08053DF2
	adds r0, r5, 0x4
	adds r1, r7, 0x4
	bl GetDirectionTowardsPosition
	strb r0, [r4]
_08053DF2:
	adds r0, r5, 0
	movs r1, 0x39
	bl HasAbility
	lsls r0, 24
	cmp r0, 0
	beq _08053E4A
	adds r0, r7, 0
	adds r1, r5, 0
	movs r2, 0x1
	movs r3, 0
	bl GetTreatmentBetweenMonsters
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _08053E4A
	mov r3, r8
	ldrh r1, [r3, 0x2]
	ldr r0, _08053E88
	cmp r1, r0
	beq _08053E4A
	subs r0, 0x3
	cmp r1, r0
	beq _08053E4A
	mov r0, r9
	cmp r0, 0
	bne _08053E4A
	ldrb r0, [r3, 0x4]
	cmp r0, 0
	beq _08053E4A
	ldrb r1, [r3, 0x1]
	movs r4, 0x10
	movs r0, 0x10
	ands r0, r1
	cmp r0, 0
	bne _08053E42
	adds r0, r7, 0
	bl sub_8042950
_08053E42:
	mov r1, r8
	ldrb r0, [r1, 0x1]
	orrs r0, r4
	strb r0, [r1, 0x1]
_08053E4A:
	adds r0, r7, 0
	mov r1, r8
	movs r2, 0
	bl GetMoveTargetAndRangeForPokemon
	movs r1, 0xF
	ands r1, r0
	cmp r1, 0
	bne _08053E64
	adds r0, r7, 0
	adds r1, r5, 0
	bl SetShopkeeperAggression
_08053E64:
	ldr r2, [sp, 0x24]
	movs r3, 0xAC
	lsls r3, 1
	adds r0, r2, r3
	movs r1, 0x1
	strb r1, [r0]
	movs r0, 0xCE
	lsls r0, 1
	ldr r1, [sp, 0x18]
	cmp r1, r0
	bls _08053E7E
	bl _080554C0
_08053E7E:
	lsls r0, r1, 2
	ldr r1, _08053E90
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08053E88: .4byte 0x00000163
_08053E8C: .4byte 0x00000165
_08053E90: .4byte _08053E94
	.align 2, 0
_08053E94:
	.4byte _08054520
	.4byte _08054DB8
	.4byte _08054C18
	.4byte _08054888
	.4byte _08054878
	.4byte _08054D80
	.4byte _08054D8E
	.4byte _08054FB0
	.4byte _08054FE8
	.4byte _08054508
	.4byte _08054FF6
	.4byte _08055270
	.4byte _08055190
	.4byte _080548C8
	.4byte _080552B6
	.4byte _08054E1A
	.4byte _0805527E
	.4byte _080551F2
	.4byte _08054508
	.4byte _080549C8
	.4byte _08054EEC
	.4byte _08054968
	.4byte _08054EDE
	.4byte _0805528C
	.4byte _08054B18
	.4byte _08055422
	.4byte _08054E1A
	.4byte _08054AB8
	.4byte _08054508
	.4byte _0805529A
	.4byte _080547A8
	.4byte _08055200
	.4byte _0805460A
	.4byte _08054948
	.4byte _08054878
	.4byte _0805519E
	.4byte _080545AE
	.4byte _0805514A
	.4byte _08054CD4
	.4byte _08054508
	.4byte _08055396
	.4byte _08054EB4
	.4byte _08054A68
	.4byte _08054C28
	.4byte _08054A58
	.4byte _08054E8A
	.4byte _080547A8
	.4byte _08054DD4
	.4byte _080553DC
	.4byte _0805504A
	.4byte _080554A0
	.4byte _08054CD4
	.4byte _0805455E
	.4byte _0805456E
	.4byte _080552D2
	.4byte _080549B8
	.4byte _08055004
	.4byte _0805453E
	.4byte _08054F94
	.4byte _08054818
	.4byte _08054D56
	.4byte _08054CE2
	.4byte _080547B8
	.4byte _08054788
	.4byte _08054868
	.4byte _08054868
	.4byte _08054F16
	.4byte _08055112
	.4byte _080545AE
	.4byte _080545FA
	.4byte _08054F94
	.4byte _080546D8
	.4byte _08054F86
	.4byte _08054928
	.4byte _0805459E
	.4byte _08054D64
	.4byte _08054AD8
	.4byte _080550DA
	.4byte _08054E52
	.4byte _08054878
	.4byte _08054AD8
	.4byte _080545AE
	.4byte _080546E8
	.4byte _08054ED0
	.4byte _08054878
	.4byte _080550CC
	.4byte _0805462A
	.4byte _080545AE
	.4byte _08054E28
	.4byte _0805462A
	.4byte _080545AE
	.4byte _08054B78
	.4byte _08055120
	.4byte _080546E8
	.4byte _08054C48
	.4byte _08054CC6
	.4byte _080551D6
	.4byte _08054928
	.4byte _08054FA2
	.4byte _08054A38
	.4byte _08054B58
	.4byte _0805457E
	.4byte _08055090
	.4byte _080547E8
	.4byte _08055238
	.4byte _08054C18
	.4byte _08054A88
	.4byte _080546F8
	.4byte _08054DF0
	.4byte _0805464A
	.4byte _08054A78
	.4byte _08054878
	.4byte _08054B98
	.4byte _0805512E
	.4byte _080546F8
	.4byte _08055414
	.4byte _08054AF8
	.4byte _08054C78
	.4byte _0805452E
	.4byte _0805536C
	.4byte _08054768
	.4byte _080550DA
	.4byte _08054DC6
	.4byte _080550E8
	.4byte _08054858
	.4byte _080545FA
	.4byte _08054508
	.4byte _080547B8
	.4byte _08055104
	.4byte _08054898
	.4byte _08054BF8
	.4byte _080545CA
	.4byte _08054508
	.4byte _08054778
	.4byte _08054BE8
	.4byte _08054B08
	.4byte _08054508
	.4byte _080553B2
	.4byte _08055388
	.4byte _08054798
	.4byte _08054AE8
	.4byte _08054BD8
	.4byte _08054EA6
	.4byte _080545FA
	.4byte _08054768
	.4byte _08054508
	.4byte _08054EA6
	.4byte _08054738
	.4byte _080549F8
	.4byte _08054748
	.4byte _080545DA
	.4byte _08054B48
	.4byte _08054838
	.4byte _08054FBE
	.4byte _08054508
	.4byte _080550F6
	.4byte _08054FDA
	.4byte _0805456E
	.4byte _08054508
	.4byte _08054A48
	.4byte _08055166
	.4byte _08054508
	.4byte _080546C8
	.4byte _08054508
	.4byte _08054B38
	.4byte _08054C38
	.4byte _08054508
	.4byte _08054508
	.4byte _08054508
	.4byte _08054988
	.4byte _08054AC8
	.4byte _080548C8
	.4byte _080550BE
	.4byte _08054C58
	.4byte _08054508
	.4byte _08054508
	.4byte _08054508
	.4byte _080548B8
	.4byte _08054508
	.4byte _08054508
	.4byte _08054508
	.4byte _080549D8
	.4byte _08054508
	.4byte _080553C0
	.4byte _08055468
	.4byte _08055246
	.4byte _08054A28
	.4byte _08054F5C
	.4byte _08054758
	.4byte _08054508
	.4byte _08054508
	.4byte _080548C8
	.4byte _080548E8
	.4byte _08054908
	.4byte _080548A8
	.4byte _080549B8
	.4byte _080548D8
	.4byte _08054EC2
	.4byte _08054BA8
	.4byte _080548D8
	.4byte _0805463A
	.4byte _08054508
	.4byte _08054A28
	.4byte _08054AF8
	.4byte _0805509E
	.4byte _08054FCC
	.4byte _08054D28
	.4byte _080547D8
	.4byte _08054508
	.4byte _08054C98
	.4byte _08054B28
	.4byte _08054508
	.4byte _08054DAA
	.4byte _08054E98
	.4byte _08054CB8
	.4byte _08054A08
	.4byte _08054AC8
	.4byte _08054A98
	.4byte _08054C78
	.4byte _0805461A
	.4byte _080553A4
	.4byte _08054788
	.4byte _08054508
	.4byte _0805520E
	.4byte _08054DC6
	.4byte _08054E7C
	.4byte _08054828
	.4byte _08054D0C
	.4byte _0805521C
	.4byte _08055066
	.4byte _0805456E
	.4byte _08054878
	.4byte _08054C68
	.4byte _08054DE2
	.4byte _080546F8
	.4byte _08054768
	.4byte _08055182
	.4byte _08054D1A
	.4byte _0805458E
	.4byte _0805458E
	.4byte _08054508
	.4byte _08054508
	.4byte _0805458E
	.4byte _08054918
	.4byte _0805469C
	.4byte _08055174
	.4byte _08054938
	.4byte _080545DA
	.4byte _08054508
	.4byte _08055012
	.4byte _08054508
	.4byte _080545AE
	.4byte _08054F24
	.4byte _08054B78
	.4byte _080552E0
	.4byte _080546D8
	.4byte _08055074
	.4byte _08055254
	.4byte _08054A28
	.4byte _08054C08
	.4byte _08054508
	.4byte _08054778
	.4byte _0805456E
	.4byte _0805535E
	.4byte _080547C8
	.4byte _080549A8
	.4byte _08055326
	.4byte _08054AA8
	.4byte _08054958
	.4byte _0805530A
	.4byte _0805457E
	.4byte _08054788
	.4byte _08054D3A
	.4byte _08054EA6
	.4byte _080548C8
	.4byte _08054728
	.4byte _080547F8
	.4byte _08054BB8
	.4byte _0805513C
	.4byte _0805463A
	.4byte _0805463A
	.4byte _080548F8
	.4byte _080552A8
	.4byte _080546B8
	.4byte _08054958
	.4byte _08054508
	.4byte _080553F8
	.4byte _08054CB8
	.4byte _08054978
	.4byte _08054778
	.4byte _08054508
	.4byte _080545FA
	.4byte _0805456E
	.4byte _080551C8
	.4byte _08054B88
	.4byte _08054E0C
	.4byte _08054E60
	.4byte _08054508
	.4byte _08054D72
	.4byte _08054928
	.4byte _08054508
	.4byte _080550B0
	.4byte _08054A18
	.4byte _08054788
	.4byte _08055090
	.4byte _080550B0
	.4byte _08054508
	.4byte _08054DAA
	.4byte _08054508
	.4byte _08054708
	.4byte _080547C8
	.4byte _08054508
	.4byte _08054508
	.4byte _080551E4
	.4byte _08054EFA
	.4byte _080552D2
	.4byte _080551BA
	.4byte _08055074
	.4byte _08054C38
	.4byte _080549E8
	.4byte _08054AD8
	.4byte _08054508
	.4byte _08054508
	.4byte _08054508
	.4byte _08054D48
	.4byte _08054680
	.4byte _08054808
	.4byte _08055492
	.4byte _08055406
	.4byte _08054DFE
	.4byte _0805544C
	.4byte _08054F32
	.4byte _08054664
	.4byte _080549B8
	.4byte _080553EA
	.4byte _08054718
	.4byte _080545AE
	.4byte _08055430
	.4byte _08054BC8
	.4byte _08054E1A
	.4byte _08054CE2
	.4byte _08054848
	.4byte _08054768
	.4byte _08054998
	.4byte _0805457E
	.4byte _0805457E
	.4byte _08054508
	.4byte _08054508
	.4byte _08054E6E
	.4byte _08054FA2
	.4byte _08054508
	.4byte _08054A88
	.4byte _0805454E
	.4byte _08054508
	.4byte _08054AF8
	.4byte _08054512
	.4byte _080554C0
	.4byte _08054CF0
	.4byte _080554C0
	.4byte _080554C0
	.4byte _08054508
	.4byte _0805529A
	.4byte _08054508
	.4byte _08055158
	.4byte _08054CA8
	.4byte _08055318
	.4byte _08054508
	.4byte _08054F24
	.4byte _08054958
	.4byte _08054F5C
	.4byte _080552EE
	.4byte _08054B68
	.4byte _08054CC6
	.4byte _08054F40
	.4byte _08055058
	.4byte _080552FC
	.4byte _08055476
	.4byte _08055484
	.4byte _080553CE
	.4byte _08055326
	.4byte _08055090
	.4byte _08054E44
	.4byte _080548C8
	.4byte _08054F08
	.4byte _0805543E
	.4byte _08055350
	.4byte _08054C88
	.4byte _08054E36
	.4byte _08054F6A
	.4byte _08055020
	.4byte _08055334
	.4byte _080551AC
	.4byte _080545EA
	.4byte _0805545A
	.4byte _08054D9C
	.4byte _08055342
	.4byte _08055082
	.4byte _080554AE
	.4byte _08055262
	.4byte _0805522A
	.4byte _08054F4E
	.4byte _08054CFE
	.4byte _080554C0
	.4byte _0805537A
	.4byte _080554C0
	.4byte _080554C0
	.4byte _080554A0
	.4byte _080552C4
	.4byte _080554C0
	.4byte _08054F78
	.4byte _0805502E
	.4byte _080554C0
	.4byte _0805503C
_08054508:
	movs r3, 0x80
	lsls r3, 1
	mov r2, r9
	str r2, [sp]
	b _080545B6
_08054512:
	mov r3, r9
	str r3, [sp]
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	movs r3, 0x80
	b _080545BC
_08054520:
	mov r0, r9
	str r0, [sp]
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	movs r3, 0
	b _080545BC
_0805452E:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_8058F04
	bl _080554BA
_0805453E:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_8058270
	bl _080554BA
_0805454E:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_805B968
	bl _080554BA
_0805455E:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_805816C
	bl _080554BA
_0805456E:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_80581D0
	bl _080554BA
_0805457E:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_8058B3C
	bl _080554BA
_0805458E:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_805A568
	bl _080554BA
_0805459E:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl FocusEnergyMoveAction
	bl _080554BA
_080545AE:
	movs r3, 0x80
	lsls r3, 1
	mov r1, r9
	str r1, [sp]
_080545B6:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
_080545BC:
	bl sub_8055640
	negs r1, r0
	orrs r1, r0
	lsrs r4, r1, 31
	bl _080554C2
_080545CA:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_80590D4
	bl _080554BA
_080545DA:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_80595EC
	bl _080554BA
_080545EA:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_805C138
	bl _080554BA
_080545FA:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_805B17C
	bl _080554BA
_0805460A:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl WhirlpoolMoveAction
	bl _080554BA
_0805461A:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl SurfMoveAction
	bl _080554BA
_0805462A:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_805889C
	bl _080554BA
_0805463A:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_8059E0C
	bl _080554BA
_0805464A:
	ldr r0, _08054660
	ldr r3, [r0]
	mov r2, r9
	str r2, [sp]
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	bl sub_8058C98
	bl _080554BA
	.align 2, 0
_08054660: .4byte gUnknown_8106A50
_08054664:
	ldr r0, _0805467C
	ldr r3, [r0]
	mov r0, r9
	str r0, [sp]
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	bl sub_8058C98
	bl _080554BA
	.align 2, 0
_0805467C: .4byte gUnknown_8106A4C
_08054680:
	ldr r0, _08054698
	ldr r3, [r0]
	mov r1, r9
	str r1, [sp]
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	bl sub_805B3FC
	bl _080554BA
	.align 2, 0
_08054698: .4byte gUnknown_8106A4C
_0805469C:
	ldr r0, _080546B4
	ldr r3, [r0]
	mov r2, r9
	str r2, [sp]
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	bl sub_805A5E8
	bl _080554BA
	.align 2, 0
_080546B4: .4byte gUnknown_8106A4C
_080546B8:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_805B074
	bl _080554BA
_080546C8:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_8059928
	bl _080554BA
_080546D8:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_8058580
	bl _080554BA
_080546E8:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_8058930
	bl _080554BA
_080546F8:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_8058C00
	bl _080554BA
_08054708:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_805B324
	bl _080554BA
_08054718:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_805B910
	bl _080554BA
_08054728:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_805AE74
	bl _080554BA
_08054738:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_8059540
	bl _080554BA
_08054748:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_80595A0
	bl _080554BA
_08054758:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_8059D00
	bl _080554BA
_08054768:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_8058FBC
	bl _080554BA
_08054778:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_8059190
	bl _080554BA
_08054788:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_8058430
	bl _080554BA
_08054798:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_8059424
	bl _080554BA
_080547A8:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_8057C88
	bl _080554BA
_080547B8:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_80583D8
	bl _080554BA
_080547C8:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_805AC90
	bl _080554BA
_080547D8:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl TriAttackMoveAction
	bl _080554BA
_080547E8:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_8058B84
	bl _080554BA
_080547F8:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_805AECC
	bl _080554BA
_08054808:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_805B454
	bl _080554BA
_08054818:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_80582C4
	bl _080554BA
_08054828:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_805A408
	bl _080554BA
_08054838:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_8059714
	bl _080554BA
_08054848:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_805B808
	bl _080554BA
_08054858:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_8059050
	bl _080554BA
_08054868:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_8058478
	bl _080554BA
_08054878:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_80576F8
	bl _080554BA
_08054888:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl YawnMoveAction
	bl _080554BA
_08054898:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_8059080
	bl _080554BA
_080548A8:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_8059D98
	bl _080554BA
_080548B8:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_8059AF8
	bl _080554BA
_080548C8:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_8059AA8
	bl _080554BA
_080548D8:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_8059DA4
	bl _080554BA
_080548E8:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_8059D48
	bl _080554BA
_080548F8:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_805B028
	bl _080554BA
_08054908:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_8059D58
	bl _080554BA
_08054918:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl TickleMoveAction
	bl _080554BA
_08054928:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_8058638
	bl _080554BA
_08054938:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_805A688
	bl _080554BA
_08054948:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_8057D7C
	bl _080554BA
_08054958:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_805B0BC
	bl _080554BA
_08054968:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl PainSplitMoveAction
	bl _080554BA
_08054978:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_805B164
	bl _080554BA
_08054988:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_8059A18
	bl _080554BA
_08054998:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_805B884
	bl _080554BA
_080549A8:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl BulkUpMoveAction
	bl _080554BA
_080549B8:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_80582D4
	bl _080554BA
_080549C8:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl RageMoveAction
	bl _080554BA
_080549D8:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_8059B94
	bl _080554BA
_080549E8:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_805B3B4
	bl _080554BA
_080549F8:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_8059588
	bl _080554BA
_08054A08:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_805A2B0
	bl _080554BA
_08054A18:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_805B2FC
	bl _080554BA
_08054A28:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_8059CD8
	bl _080554BA
_08054A38:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_8058A7C
	bl _080554BA
_08054A48:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_80598CC
	bl _080554BA
_08054A58:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_8057F7C
	bl _080554BA
_08054A68:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_8057ED0
	bl _080554BA
_08054A78:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_8058CEC
	bl _080554BA
_08054A88:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_8058BF0
	bl _080554BA
_08054A98:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_805A2C8
	bl _080554BA
_08054AA8:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_805AD34
	bl _080554BA
_08054AB8:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_8057C68
	bl _080554BA
_08054AC8:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_8059A2C
	bl _080554BA
_08054AD8:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_80586DC
	bl _080554BA
_08054AE8:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_805946C
	bl _080554BA
_08054AF8:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_8058E5C
	bl _080554BA
_08054B08:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_80591E4
	bl _080554BA
_08054B18:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_8057BC4
	bl _080554BA
_08054B28:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_805A210
	bl _080554BA
_08054B38:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_8059988
	bl _080554BA
_08054B48:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl SolarBeamMoveAction
	bl _080554BA
_08054B58:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl SkyAttackMoveAction
	bl _080554BA
_08054B68:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_805BE90
	bl _080554BA
_08054B78:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_80588B8
	bl _080554BA
_08054B88:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl WrapMoveAction
	bl _080554BA
_08054B98:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_8058D38
	bl _080554BA
_08054BA8:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_8059DC4
	bl _080554BA
_08054BB8:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl PresentMoveAction
	bl _080554BA
_08054BC8:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl ReflectMoveAction
	bl _080554BA
_08054BD8:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl SandstormMoveAction
	bl _080554BA
_08054BE8:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl SafeguardMoveAction
	bl _080554BA
_08054BF8:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl MistMoveAction
	bl _080554BA
_08054C08:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl LightScreenMoveAction
	bl _080554BA
_08054C18:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_805768C
	bl _080554BA
_08054C28:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_8057F24
	bl _080554BA
_08054C38:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_80599EC
	bl _080554BA
_08054C48:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_80589D4
	bl _080554BA
_08054C58:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_8059AC4
	bl _080554BA
_08054C68:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_805A4D4
	bl _080554BA
_08054C78:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_8058EE0
	bl _080554BA
_08054C88:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl ScannerOrbAction
	bl _080554BA
_08054C98:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_805A120
	bl _080554BA
_08054CA8:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_805BA50
	bl _080554BA
_08054CB8:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_805A2A0
	b _080554BA
_08054CC6:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_8058A08
	b _080554BA
_08054CD4:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl CounterMoveAction
	b _080554BA
_08054CE2:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl BideMoveAction
	b _080554BA
_08054CF0:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_805836C
	b _080554BA
_08054CFE:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl TrapperOrbAction
	b _080554BA
_08054D0C:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_805A450
	b _080554BA
_08054D1A:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl CurseMoveAction
	b _080554BA
_08054D28:
	movs r0, 0
	str r0, [sp]
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_8059FC8
	b _080554BA
_08054D3A:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_805AE3C
	b _080554BA
_08054D48:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_805B3E0
	b _080554BA
_08054D56:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl RazorWindMoveAction
	b _080554BA
_08054D64:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl FocusPunchMoveAction
	b _080554BA
_08054D72:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl MagicCoatMoveAction
	b _080554BA
_08054D80:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl NightmareMoveAction
	b _080554BA
_08054D8E:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_8057748
	b _080554BA
_08054D9C:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_805C1BC
	b _080554BA
_08054DAA:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl MudWaterSportMoveAction
	b _080554BA
_08054DB8:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_8057634
	b _080554BA
_08054DC6:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_805A3DC
	b _080554BA
_08054DD4:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_8057FF4
	b _080554BA
_08054DE2:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_805A4FC
	b _080554BA
_08054DF0:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_8058C48
	b _080554BA
_08054DFE:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl LeechSeedMoveAction
	b _080554BA
_08054E0C:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl SpikesMoveAction
	b _080554BA
_08054E1A:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_80578EC
	b _080554BA
_08054E28:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_80588A8
	b _080554BA
_08054E36:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl RadarOrbAction
	b _080554BA
_08054E44:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_805BC70
	b _080554BA
_08054E52:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_80587E8
	b _080554BA
_08054E60:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_805B264
	b _080554BA
_08054E6E:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl SkullBashMoveAction
	b _080554BA
_08054E7C:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl WishMoveAction
	b _080554BA
_08054E8A:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_8057FCC
	b _080554BA
_08054E98:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_805A258
	b _080554BA
_08054EA6:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_8059528
	b _080554BA
_08054EB4:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_8057E6C
	b _080554BA
_08054EC2:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_8059DB4
	b _080554BA
_08054ED0:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_8058838
	b _080554BA
_08054EDE:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl TormentMoveAction
	b _080554BA
_08054EEC:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_8057974
	b _080554BA
_08054EFA:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_805B388
	b _080554BA
_08054F08:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_805BC98
	b _080554BA
_08054F16:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_80584C0
	b _080554BA
_08054F24:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_805BB74
	b _080554BA
_08054F32:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_805B668
	b _080554BA
_08054F40:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl LuminousOrbAction
	b _080554BA
_08054F4E:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl FillInOrbAction
	b _080554BA
_08054F5C:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_8059CF0
	b _080554BA
_08054F6A:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_805BF34
	b _080554BA
_08054F78:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl StairsOrbAction
	b _080554BA
_08054F86:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl BrickBreakMoveAction
	b _080554BA
_08054F94:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_80582AC
	b _080554BA
_08054FA2:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_8058A54
	b _080554BA
_08054FB0:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl VitalThrowMoveAction
	b _080554BA
_08054FBE:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl FlyMoveAction
	b _080554BA
_08054FCC:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_8059F38
	b _080554BA
_08054FDA:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl DiveMoveAction
	b _080554BA
_08054FE8:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl DigMoveAction
	b _080554BA
_08054FF6:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_8057824
	b _080554BA
_08055004:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_805825C
	b _080554BA
_08055012:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl KnockOffMoveAction
	b _080554BA
_08055020:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl TrapbustOrbAction
	b _080554BA
_0805502E:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl LongtossOrbAction
	b _080554BA
_0805503C:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl PierceOrbAction
	b _080554BA
_0805504A:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl GrudgeMoveAction
	b _080554BA
_08055058:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl PetrifyOrbAction
	b _080554BA
_08055066:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_805A4C0
	b _080554BA
_08055074:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_805AAD0
	b _080554BA
_08055082:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl ShockerOrbAction
	b _080554BA
_08055090:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_805B314
	b _080554BA
_0805509E:
	movs r0, 0
	str r0, [sp]
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_8059E54
	b _080554BA
_080550B0:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl ProtectMoveAction
	b _080554BA
_080550BE:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_8059AB8
	b _080554BA
_080550CC:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_8058858
	b _080554BA
_080550DA:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_8058770
	b _080554BA
_080550E8:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_8059004
	b _080554BA
_080550F6:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_80597F0
	b _080554BA
_08055104:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl ChargeMoveAction
	b _080554BA
_08055112:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_8058548
	b _080554BA
_08055120:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_80588F4
	b _080554BA
_0805512E:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_8058D44
	b _080554BA
_0805513C:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_805AFA4
	b _080554BA
_0805514A:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl SmokescreenMoveAction
	b _080554BA
_08055158:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_805BA44
	b _080554BA
_08055166:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl StockpileMoveAction
	b _080554BA
_08055174:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl SpitUpMoveAction
	b _080554BA
_08055182:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl SwallowMoveAction
	b _080554BA
_08055190:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl RainDanceMoveAction
	b _080554BA
_0805519E:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_8057D9C
	b _080554BA
_080551AC:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl InvisifyOrbAction
	b _080554BA
_080551BA:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl MirrorCoatMoveAction
	b _080554BA
_080551C8:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl PerishSongMoveAction
	b _080554BA
_080551D6:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_8058A18
	b _080554BA
_080551E4:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl DestinyBondMoveAction
	b _080554BA
_080551F2:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl EncoreMoveAction
	b _080554BA
_08055200:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_8057CD0
	b _080554BA
_0805520E:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl SunnyDayMoveAction
	b _080554BA
_0805521C:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_805A464
	b _080554BA
_0805522A:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_805C2A0
	b _080554BA
_08055238:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl EndureMoveAction
	b _080554BA
_08055246:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl HelpingHandMoveAction
	b _080554BA
_08055254:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl BellyDrumMoveAction
	b _080554BA
_08055262:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_805C288
	b _080554BA
_08055270:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_805783C
	b _080554BA
_0805527E:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_80578FC
	b _080554BA
_0805528C:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_8057BB4
	b _080554BA
_0805529A:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl RockSmashMoveAction
	b _080554BA
_080552A8:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl TransformMoveAction
	b _080554BA
_080552B6:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl HailMoveAction
	b _080554BA
_080552C4:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl MobileOrbAction
	b _080554BA
_080552D2:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_8058234
	b _080554BA
_080552E0:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_805A85C
	b _080554BA
_080552EE:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl TransferOrbAction
	b _080554BA
_080552FC:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_805BB98
	b _080554BA
_0805530A:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_805AD54
	b _080554BA
_08055318:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl ReboundOrbAction
	b _080554BA
_08055326:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_805AD04
	b _080554BA
_08055334:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_805C080
	b _080554BA
_08055342:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_805C1E4
	b _080554BA
_08055350:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl EscapeOrbAction
	b _080554BA
_0805535E:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl SecretPowerMoveAction
	b _080554BA
_0805536C:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl NaturePowerMoveAction
	b _080554BA
_0805537A:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_805C3F8
	b _080554BA
_08055388:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl SketchMoveAction
	b _080554BA
_08055396:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_8057E50
	b _080554BA
_080553A4:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl RolePlayMoveAction
	b _080554BA
_080553B2:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl SkillSwapMoveAction
	b _080554BA
_080553C0:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl ConversionMoveAction
	b _080554BA
_080553CE:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl CleanseOrbAction
	b _080554BA
_080553DC:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_805805C
	b _080554BA
_080553EA:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl SnatchMoveAction
	b _080554BA
_080553F8:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl HandleColorChange
	b _080554BA
_08055406:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_805B53C
	b _080554BA
_08055414:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl PsychUpMoveAction
	b _080554BA
_08055422:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl SnoreMoveAction
	b _080554BA
_08055430:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl RecycleMoveAction
	b _080554BA
_0805543E:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl SilenceOrbAction
	b _080554BA
_0805544C:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_805B618
	b _080554BA
_0805545A:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl IdentifyOrbAction
	b _080554BA
_08055468:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl Conversion2MoveAction
	b _080554BA
_08055476:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_805BEB8
	b _080554BA
_08055484:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_805BEC8
	b _080554BA
_08055492:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl MimicMoveAction
	b _080554BA
_080554A0:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_805C45C
	b _080554BA
_080554AE:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	bl sub_805C208
_080554BA:
	lsls r0, 24
	lsrs r4, r0, 24
	b _080554C2
_080554C0:
	movs r4, 0
_080554C2:
	bl sub_8044B28
	lsls r0, 24
	cmp r0, 0
	bne _080555A2
	ldr r0, [sp, 0x20]
	bl EntityExists
	lsls r0, 24
	cmp r0, 0
	beq _080554E6
	ldr r3, [sp, 0x20]
	ldr r0, [r3, 0x70]
	adds r0, 0x46
	ldrb r1, [r0]
	adds r0, r3, 0
	bl sub_806CE68
_080554E6:
	cmp r4, 0
	bne _08055510
	adds r0, r7, 0
	bl EntityExists
	lsls r0, 24
	cmp r0, 0
	beq _08055530
	adds r0, r5, 0
	bl EntityExists
	lsls r0, 24
	cmp r0, 0
	beq _08055530
	ldr r1, [sp, 0x24]
	ldrb r0, [r1, 0x6]
	cmp r0, 0
	beq _08055530
	mov r2, r10
	strb r2, [r6]
	b _08055530
_08055510:
	mov r0, r8
	bl MoveCausesPaused
	lsls r0, 24
	cmp r0, 0
	beq _08055530
	adds r0, r7, 0
	movs r1, 0
	bl sub_8057308
	lsls r0, 24
	cmp r0, 0
	beq _08055530
	ldr r1, _08055614
	movs r0, 0x1
	strb r0, [r1]
_08055530:
	adds r0, r5, 0
	bl EntityExists
	lsls r0, 24
	cmp r0, 0
	beq _08055548
	ldr r3, [sp, 0x24]
	movs r0, 0xAC
	lsls r0, 1
	adds r1, r3, r0
	movs r0, 0x1
	strb r0, [r1]
_08055548:
	ldr r1, [sp, 0x18]
	cmp r1, 0x89
	beq _08055568
	adds r0, r7, 0
	bl sub_8055DDC
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	bl sub_8069F9C
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, r8
	bl sub_806A120
_08055568:
	ldr r7, [sp, 0x1C]
_0805556A:
	ldr r2, [sp, 0x14]
	adds r2, 0x1
	str r2, [sp, 0x14]
_08055570:
	ldr r3, [sp, 0x14]
	cmp r3, 0x3F
	bgt _080555A2
	movs r0, 0
	str r0, [sp, 0x20]
	lsls r0, r3, 2
	ldr r1, [sp, 0x10]
	adds r0, r1
	ldr r5, [r0]
	movs r2, 0x1
	str r2, [sp, 0x28]
	movs r3, 0
	str r3, [sp, 0x2C]
	movs r0, 0
	str r0, [sp, 0x30]
	cmp r5, 0
	beq _080555A2
	adds r0, r7, 0
	bl EntityExists
	lsls r0, 24
	cmp r0, 0
	beq _080555A2
	bl _08053724
_080555A2:
	bl sub_8044B28
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0
	bne _08055604
	adds r0, r7, 0
	bl EntityExists
	lsls r0, 24
	cmp r0, 0
	beq _080555D6
	ldr r0, [r7, 0x70]
	movs r2, 0xAA
	lsls r2, 1
	adds r1, r0, r2
	ldrb r0, [r1]
	cmp r0, 0
	beq _080555D6
	strb r4, [r1]
	adds r0, r7, 0
	adds r1, r7, 0
	movs r2, 0
	movs r3, 0
	bl sub_807D148
_080555D6:
	adds r0, r7, 0
	bl EntityExists
	lsls r0, 24
	cmp r0, 0
	beq _08055604
	ldr r0, [r7, 0x70]
	ldr r3, _08055618
	adds r1, r0, r3
	ldrb r0, [r1]
	cmp r0, 0
	beq _08055604
	movs r0, 0
	strb r0, [r1]
	ldr r1, _0805561C
	ldr r2, [r1]
	str r0, [sp]
	str r0, [sp, 0x4]
	adds r0, r7, 0
	adds r1, r7, 0
	movs r3, 0x2
	bl LowerAttackStageTarget
_08055604:
	add sp, 0x48
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08055614: .4byte gUnknown_202F222
_08055618: .4byte 0x00000155
_0805561C: .4byte gUnknown_8106A50
	thumb_func_end sub_8053704

	thumb_func_start sub_8055620
sub_8055620:
	push {r4,lr}
	sub sp, 0x4
	movs r4, 0x80
	lsls r4, 1
	str r3, [sp]
	adds r3, r4, 0
	bl sub_8055640
	cmp r0, 0
	beq _08055636
	movs r0, 0x1
_08055636:
	add sp, 0x4
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_8055620

	thumb_func_start sub_8055640
sub_8055640:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x24
	adds r6, r0, 0
	mov r10, r1
	adds r5, r2, 0
	mov r9, r3
	ldr r7, [sp, 0x44]
	adds r1, r5, 0
	bl GetMoveTypeForMonster
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	adds r0, r6, 0
	adds r1, r5, 0
	bl GetMovePower
	mov r8, r0
	adds r0, r5, 0
	bl GetMoveCritChance
	str r0, [sp]
	add r0, sp, 0x14
	str r0, [sp, 0x4]
	mov r0, r9
	str r0, [sp, 0x8]
	ldrh r0, [r5, 0x2]
	str r0, [sp, 0xC]
	movs r0, 0x1
	str r0, [sp, 0x10]
	adds r0, r6, 0
	mov r1, r10
	adds r2, r4, 0
	mov r3, r8
	bl sub_806EAF4
	adds r0, r5, 0
	adds r1, r7, 0
	bl sub_8057600
	lsls r0, 16
	asrs r0, 16
	str r0, [sp]
	adds r0, r6, 0
	mov r1, r10
	adds r2, r5, 0
	add r3, sp, 0x14
	bl sub_8055728
	add sp, 0x24
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_8055640

	thumb_func_start sub_80556BC
sub_80556BC:
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, 0x24
	adds r6, r0, 0
	mov r9, r1
	adds r4, r2, 0
	adds r5, r3, 0
	ldr r7, [sp, 0x40]
	lsls r4, 24
	lsrs r4, 24
	adds r1, r5, 0
	bl GetMovePower
	mov r8, r0
	adds r0, r5, 0
	bl GetMoveCritChance
	str r0, [sp]
	add r0, sp, 0x14
	str r0, [sp, 0x4]
	str r7, [sp, 0x8]
	ldrh r0, [r5, 0x2]
	str r0, [sp, 0xC]
	movs r0, 0x1
	str r0, [sp, 0x10]
	adds r0, r6, 0
	mov r1, r9
	adds r2, r4, 0
	mov r3, r8
	bl sub_806EAF4
	adds r0, r5, 0
	ldr r1, [sp, 0x44]
	bl sub_8057600
	lsls r0, 16
	asrs r0, 16
	str r0, [sp]
	adds r0, r6, 0
	mov r1, r9
	adds r2, r5, 0
	add r3, sp, 0x14
	bl sub_8055728
	add sp, 0x24
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_80556BC

	thumb_func_start sub_8055728
sub_8055728:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x10
	adds r6, r0, 0
	adds r4, r1, 0
	adds r5, r2, 0
	mov r8, r3
	ldr r0, [sp, 0x30]
	lsls r0, 16
	asrs r0, 16
	mov r9, r0
	movs r7, 0x1
	str r7, [sp]
	adds r0, r6, 0
	movs r3, 0x1
	bl sub_8056B34
	lsls r0, 24
	cmp r0, 0
	beq _080557C0
	movs r0, 0
	mov r10, r0
	ldrh r1, [r5, 0x2]
	movs r0, 0x9D
	lsls r0, 1
	cmp r1, r0
	bne _08055768
	movs r1, 0x1
	mov r10, r1
_08055768:
	adds r0, r4, 0
	movs r1, 0x2E
	bl HasAbility
	lsls r0, 24
	cmp r0, 0
	beq _08055790
	ldr r0, _080557AC
	ldr r1, [r0]
	ldr r0, _080557B0
	adds r2, r1, r0
	ldr r0, _080557B4
	strh r0, [r2]
	ldr r2, _080557B8
	adds r0, r1, r2
	str r4, [r0]
	ldr r0, _080557BC
	adds r1, r0
	ldrh r0, [r4, 0x26]
	str r0, [r1]
_08055790:
	str r7, [sp]
	mov r1, r9
	str r1, [sp, 0x4]
	str r7, [sp, 0x8]
	movs r0, 0
	str r0, [sp, 0xC]
	adds r0, r6, 0
	adds r1, r4, 0
	mov r2, r8
	mov r3, r10
	bl HandleDealingDamage
	b _08055826
	.align 2, 0
_080557AC: .4byte gDungeon
_080557B0: .4byte 0x00000662
_080557B4: .4byte 0x000003e7
_080557B8: .4byte 0x00017b34
_080557BC: .4byte 0x00017b40
_080557C0:
	ldr r0, _08055808
	ldr r1, [r4, 0x70]
	movs r2, 0
	bl SetMessageArgument_2
	adds r0, r6, 0
	bl sub_8045888
	lsls r0, 24
	cmp r0, 0
	beq _08055814
	adds r0, r4, 0
	bl sub_8045888
	lsls r0, 24
	cmp r0, 0
	beq _08055814
	ldr r0, _0805580C
	movs r3, 0x1
	negs r3, r3
	adds r1, r4, 0
	movs r2, 0x1
	bl sub_803ED30
	ldr r0, _08055810
	ldr r2, [r0]
	adds r0, r6, 0
	adds r1, r4, 0
	bl TryDisplayDungeonLoggableMessage4
	adds r0, r6, 0
	adds r1, r4, 0
	bl sub_8042238
	b _08055820
	.align 2, 0
_08055808: .4byte gUnknown_202DFE8
_0805580C: .4byte 0x0000270f
_08055810: .4byte gUnknown_80F9688
_08055814:
	ldr r0, _08055834
	ldr r2, [r0]
	adds r0, r6, 0
	adds r1, r4, 0
	bl TryDisplayDungeonLoggableMessage3
_08055820:
	movs r0, 0x1
	mov r2, r8
	strb r0, [r2, 0xF]
_08055826:
	mov r1, r8
	ldrb r0, [r1, 0xF]
	cmp r0, 0
	beq _08055838
	movs r0, 0
	b _08055854
	.align 2, 0
_08055834: .4byte gUnknown_80F9688
_08055838:
	adds r0, r4, 0
	bl EntityExists
	lsls r0, 24
	cmp r0, 0
	beq _08055850
	ldr r0, [r4, 0x70]
	movs r2, 0xAD
	lsls r2, 1
	adds r1, r0, r2
	movs r0, 0x1
	strb r0, [r1]
_08055850:
	mov r1, r8
	ldr r0, [r1]
_08055854:
	add sp, 0x10
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_8055728

	thumb_func_start sub_8055864
sub_8055864:
	push {r4-r7,lr}
	sub sp, 0x20
	adds r4, r0, 0
	adds r7, r1, 0
	adds r5, r2, 0
	adds r6, r3, 0
	adds r1, r5, 0
	bl GetMoveTypeForMonster
	adds r2, r0, 0
	lsls r2, 24
	lsrs r2, 24
	add r0, sp, 0x10
	str r0, [sp]
	adds r0, r4, 0
	adds r1, r7, 0
	adds r3, r6, 0
	bl sub_806F2BC
	adds r0, r5, 0
	ldr r1, [sp, 0x34]
	bl sub_8057600
	lsls r0, 16
	asrs r0, 16
	movs r5, 0x1
	str r5, [sp]
	str r0, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	str r0, [sp, 0xC]
	adds r0, r4, 0
	adds r1, r7, 0
	add r2, sp, 0x10
	movs r3, 0
	bl HandleDealingDamage
	add r0, sp, 0x10
	ldrb r0, [r0, 0xF]
	cmp r0, 0
	beq _080558BA
	movs r0, 0
	b _080558D2
_080558BA:
	adds r0, r7, 0
	bl EntityExists
	lsls r0, 24
	cmp r0, 0
	beq _080558D0
	ldr r0, [r7, 0x70]
	movs r1, 0xAD
	lsls r1, 1
	adds r0, r1
	strb r5, [r0]
_080558D0:
	ldr r0, [sp, 0x10]
_080558D2:
	add sp, 0x20
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_8055864

	thumb_func_start sub_80558DC
sub_80558DC:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x14
	movs r4, 0x1
	movs r2, 0
	mov r9, r2
	ldr r1, [r1, 0x70]
	mov r10, r1
	bl GetMoveType
	lsls r0, 24
	lsrs r1, r0, 24
	cmp r1, 0x1
	beq _08055902
	cmp r1, 0x7
	bne _08055906
_08055902:
	movs r5, 0x1
	mov r9, r5
_08055906:
	ldr r6, _08055944
	mov r8, r6
	mov r3, r10
	adds r3, 0x5C
	ldr r7, _08055948
	mov r12, r7
	lsls r0, r1, 3
	adds r0, r1
	lsls r0, 2
	str r0, [sp, 0x10]
	adds r2, r3, 0
_0805591C:
	mov r0, sp
	mov r1, r8
	ldm r1!, {r5-r7}
	stm r0!, {r5-r7}
	ldr r1, [r1]
	str r1, [r0]
	mov r0, r9
	cmp r0, 0
	beq _0805594C
	ldrb r0, [r2]
	cmp r0, 0xE
	bne _0805594C
	mov r0, r10
	adds r0, 0xF5
	ldrb r0, [r0]
	cmp r0, 0
	bne _0805594C
	movs r0, 0
	b _0805595A
	.align 2, 0
_08055944: .4byte gUnknown_81069BC
_08055948: .4byte gTypeEffectivenessChart
_0805594C:
	ldrb r0, [r2]
	lsls r0, 1
	ldr r1, [sp, 0x10]
	adds r0, r1
	add r0, r12
	movs r5, 0
	ldrsh r0, [r0, r5]
_0805595A:
	lsls r0, 2
	add r0, sp
	ldr r0, [r0]
	muls r4, r0
	cmp r4, 0
	beq _0805596E
	adds r2, 0x1
	adds r0, r3, 0x1
	cmp r2, r0
	ble _0805591C
_0805596E:
	adds r0, r4, 0
	cmp r0, 0
	beq _08055976
	movs r0, 0x1
_08055976:
	add sp, 0x14
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_80558DC

	thumb_func_start sub_8055988
sub_8055988:
	push {r4,lr}
	adds r2, r0, 0
	adds r4, r1, 0
	cmp r2, r4
	beq _080559D4
	movs r0, 0x4
	ldrsh r1, [r2, r0]
	movs r3, 0x4
	ldrsh r0, [r4, r3]
	subs r1, r0
	cmp r1, 0
	bge _080559A2
	negs r1, r1
_080559A2:
	cmp r1, 0x1
	bgt _080559D4
	movs r0, 0x6
	ldrsh r1, [r2, r0]
	movs r3, 0x6
	ldrsh r0, [r4, r3]
	subs r1, r0
	cmp r1, 0
	bge _080559B6
	negs r1, r1
_080559B6:
	cmp r1, 0x1
	bgt _080559D4
	adds r0, r4, 0x4
	adds r1, r2, 0x4
	bl GetDirectionTowardsPosition
	adds r1, r0, 0
	adds r0, r4, 0
	bl CanAttackInDirection
	lsls r0, 24
	cmp r0, 0
	beq _080559D4
	movs r0, 0x1
	b _080559D6
_080559D4:
	movs r0, 0
_080559D6:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_8055988

	thumb_func_start sub_80559DC
sub_80559DC:
	push {r4,r5,lr}
	adds r5, r0, 0
	ldr r4, [r5, 0x70]
	adds r0, r5, 0x4
	adds r1, 0x4
	bl GetDirectionTowardsPosition
	adds r1, r0, 0
	movs r2, 0x7
	ands r0, r2
	adds r4, 0x46
	strb r0, [r4]
	adds r0, r5, 0
	bl sub_806CE68
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end sub_80559DC

	thumb_func_start sub_8055A00
sub_8055A00:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x34
	adds r5, r0, 0
	mov r9, r1
	str r2, [sp, 0x20]
	str r3, [sp, 0x24]
	ldr r0, [r5, 0x70]
	mov r10, r0
	mov r7, r9
	cmp r7, 0x3
	ble _08055A22
	movs r0, 0
	b _08055DB4
_08055A22:
	movs r0, 0xBC
	lsls r0, 1
	add r0, r10
	movs r1, 0
	movs r2, 0
	strh r2, [r0]
	ldr r0, _08055A4C
	add r0, r10
	strb r1, [r0]
	mov r0, r10
	adds r0, 0xBC
	ldrb r0, [r0]
	cmp r0, 0x1
	bne _08055A58
	ldr r0, _08055A50
	adds r1, r5, 0
	bl SetMessageArgument
	ldr r0, _08055A54
	b _08055A8A
	.align 2, 0
_08055A4C: .4byte 0x00000159
_08055A50: .4byte gAvailablePokemonNames
_08055A54: .4byte gUnknown_80FC714
_08055A58:
	cmp r0, 0x7
	bne _08055A74
	ldr r0, _08055A6C
	adds r1, r5, 0
	movs r2, 0
	bl SetMessageArgument
	ldr r0, _08055A70
	b _08055A8A
	.align 2, 0
_08055A6C: .4byte gAvailablePokemonNames
_08055A70: .4byte gUnknown_80FC718
_08055A74:
	mov r0, r10
	adds r0, 0xAC
	ldrb r0, [r0]
	cmp r0, 0x4
	bne _08055AA0
	ldr r0, _08055A98
	adds r1, r5, 0
	movs r2, 0
	bl SetMessageArgument
	ldr r0, _08055A9C
_08055A8A:
	ldr r1, [r0]
	adds r0, r5, 0
	bl TryDisplayDungeonLoggableMessage
	movs r0, 0
	b _08055DB4
	.align 2, 0
_08055A98: .4byte gAvailablePokemonNames
_08055A9C: .4byte gUnknown_80FC6A8
_08055AA0:
	ldr r0, _08055B24
	strb r1, [r0]
	ldr r0, _08055B28
	str r2, [r0]
	ldr r0, _08055B2C
	strb r1, [r0]
	adds r0, r7, 0x1
	movs r2, 0
	movs r6, 0x3
	movs r1, 0xC0
	lsls r1, 1
	add r1, r10
_08055AB8:
	strh r2, [r1]
	subs r1, 0x2
	subs r6, 0x1
	cmp r6, 0
	bge _08055AB8
	movs r6, 0
	movs r3, 0x1
	adds r7, r0, 0
	cmp r7, 0x3
	bgt _08055B06
	lsls r2, r7, 3
	mov r1, r10
	adds r0, r1, r2
	movs r4, 0x8C
	lsls r4, 1
	adds r0, r4
	ldrb r1, [r0]
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _08055B06
	movs r0, 0x2
	mov r8, r0
	adds r0, r2, r4
	mov r1, r10
	adds r2, r0, r1
_08055AEC:
	adds r6, 0x1
	cmp r6, 0x3
	bgt _08055B06
	adds r3, 0x1
	adds r2, 0x8
	adds r7, 0x1
	cmp r7, 0x3
	bgt _08055B06
	ldrb r1, [r2]
	mov r0, r8
	ands r0, r1
	cmp r0, 0
	bne _08055AEC
_08055B06:
	movs r0, 0
	str r0, [sp, 0x28]
	cmp r3, 0x1
	ble _08055B12
	movs r1, 0x1
	str r1, [sp, 0x28]
_08055B12:
	mov r7, r9
	lsls r0, r7, 3
	movs r1, 0x8C
	lsls r1, 1
	adds r0, r1
	add r0, r10
	mov r8, r0
	b _08055CB4
	.align 2, 0
_08055B24: .4byte gUnknown_202F222
_08055B28: .4byte gUnknown_202F208
_08055B2C: .4byte gUnknown_202F221
_08055B30:
	mov r1, r8
	ldrh r0, [r1, 0x2]
	cmp r0, 0x19
	beq _08055B3C
	cmp r0, 0xE3
	bne _08055B4E
_08055B3C:
	adds r0, r5, 0
	bl IsSleeping
	lsls r0, 24
	cmp r0, 0
	bne _08055B5E
	adds r0, r5, 0
	movs r1, 0x1
	b _08055B52
_08055B4E:
	adds r0, r5, 0
	movs r1, 0
_08055B52:
	bl CannotAttack
	lsls r0, 24
	cmp r0, 0
	beq _08055B5E
	b _08055CCE
_08055B5E:
	ldr r0, _08055B9C
	ldrb r0, [r0]
	cmp r0, 0
	beq _08055B68
	b _08055CCE
_08055B68:
	ldrb r1, [r6]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	bne _08055B74
	b _08055C82
_08055B74:
	movs r2, 0x1
	movs r0, 0
	str r0, [sp, 0x2C]
	adds r0, r5, 0
	adds r1, r6, 0
	str r2, [sp, 0x30]
	bl MoveMatchesChargingStatus
	lsls r0, 24
	lsrs r4, r0, 24
	ldrb r0, [r6, 0x4]
	ldr r2, [sp, 0x30]
	cmp r0, 0
	beq _08055BA0
	cmp r4, 0
	bne _08055BBA
	movs r1, 0x1
	str r1, [sp, 0x2C]
	b _08055BBA
	.align 2, 0
_08055B9C: .4byte gUnknown_202F221
_08055BA0:
	cmp r4, 0
	bne _08055BBA
	ldr r0, _08055C08
	adds r1, r6, 0
	movs r2, 0
	bl sub_80928C0
	ldr r0, _08055C0C
	ldr r1, [r0]
	adds r0, r5, 0
	bl TryDisplayDungeonLoggableMessage
	movs r2, 0
_08055BBA:
	cmp r2, 0
	beq _08055C82
	ldr r0, _08055C10
	ldr r0, [r0]
	mov r9, r0
	ldr r0, _08055C14
	add r0, r10
	strb r4, [r0]
	ldrh r0, [r6, 0x2]
	cmp r0, 0xE5
	bne _08055C20
	ldr r0, [r6]
	ldr r1, [r6, 0x4]
	str r0, [sp, 0x8]
	str r1, [sp, 0xC]
	adds r0, r5, 0
	bl sub_8057144
	lsls r0, 16
	ldr r2, _08055C18
	ldr r1, [sp, 0x8]
	ands r1, r2
	orrs r1, r0
	str r1, [sp, 0x8]
	ldr r0, _08055C08
	add r1, sp, 0x8
	movs r2, 0
	bl sub_80928C0
	ldr r0, _08055C1C
	ldr r1, [r0]
	adds r0, r5, 0
	bl TryDisplayDungeonLoggableMessage
	ldr r0, [sp, 0x28]
	str r0, [sp]
	add r1, sp, 0x8
	str r1, [sp, 0x4]
	b _08055C26
	.align 2, 0
_08055C08: .4byte gFormatItems
_08055C0C: .4byte gUnknown_80F93C8
_08055C10: .4byte gUnknown_202F208
_08055C14: .4byte 0x00000159
_08055C18: .4byte 0x0000ffff
_08055C1C: .4byte gUnknown_80FD2DC
_08055C20:
	ldr r0, [sp, 0x28]
	str r0, [sp]
	str r6, [sp, 0x4]
_08055C26:
	adds r0, r5, 0
	ldr r1, [sp, 0x20]
	ldr r2, [sp, 0x24]
	ldr r3, [sp, 0x54]
	bl sub_8055FA0
	lsls r0, 24
	lsrs r0, 24
	ldr r1, [sp, 0x2C]
	cmp r1, 0
	beq _08055C56
	cmp r0, 0
	beq _08055C56
	ldrb r1, [r6, 0x1]
	movs r0, 0x4
	ands r0, r1
	cmp r0, 0
	beq _08055C50
	movs r0, 0xFB
	ands r0, r1
	b _08055C54
_08055C50:
	movs r0, 0x8
	orrs r0, r1
_08055C54:
	strb r0, [r6, 0x1]
_08055C56:
	ldr r0, _08055C70
	ldr r0, [r0]
	cmp r9, r0
	bne _08055C82
	ldr r0, [sp, 0x24]
	cmp r0, 0
	bne _08055C78
	ldr r0, _08055C74
	ldr r1, [r0]
	adds r0, r5, 0
	bl TryDisplayDungeonLoggableMessage
	b _08055C82
	.align 2, 0
_08055C70: .4byte gUnknown_202F208
_08055C74: .4byte gUnknown_80FC690
_08055C78:
	ldr r0, _08055DC4
	ldr r1, [r0]
	adds r0, r5, 0
	bl TryDisplayDungeonLoggableMessage
_08055C82:
	movs r0, 0x1
	bl sub_804178C
	adds r0, r5, 0
	bl EntityExists
	lsls r0, 24
	cmp r0, 0
	beq _08055CCE
	bl sub_8044B28
	lsls r0, 24
	cmp r0, 0
	bne _08055CCE
	movs r1, 0x8
	add r8, r1
	adds r7, 0x1
	cmp r7, 0x3
	bgt _08055CCE
	mov r0, r8
	ldrb r1, [r0]
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _08055CCE
_08055CB4:
	mov r6, r8
	adds r0, r5, 0
	bl EntityExists
	lsls r0, 24
	cmp r0, 0
	beq _08055CCE
	bl sub_8044B28
	lsls r0, 24
	cmp r0, 0
	bne _08055CCE
	b _08055B30
_08055CCE:
	adds r0, r5, 0
	bl EntityExists
	lsls r0, 24
	cmp r0, 0
	beq _08055D54
	movs r6, 0
_08055CDC:
	lsls r0, r6, 1
	movs r1, 0xBD
	lsls r1, 1
	add r1, r10
	adds r1, r0
	ldrh r0, [r1]
	cmp r0, 0
	beq _08055D4E
	add r4, sp, 0x10
	adds r1, r0, 0
	adds r0, r4, 0
	bl sub_8092AA8
	ldrb r1, [r4]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _08055D48
	ldrh r0, [r4, 0x2]
	cmp r0, 0xE5
	bne _08055D36
	ldr r0, [sp, 0x10]
	ldr r1, [sp, 0x14]
	str r0, [sp, 0x18]
	str r1, [sp, 0x1C]
	adds r0, r5, 0
	bl sub_8057144
	lsls r0, 16
	ldr r2, _08055DC8
	ldr r1, [sp, 0x18]
	ands r1, r2
	orrs r1, r0
	str r1, [sp, 0x18]
	add r4, sp, 0x18
	ldr r0, _08055DCC
	adds r1, r4, 0
	movs r2, 0
	bl sub_80928C0
	ldr r0, _08055DD0
	ldr r1, [r0]
	adds r0, r5, 0
	bl TryDisplayDungeonLoggableMessage
_08055D36:
	ldr r1, [sp, 0x28]
	str r1, [sp]
	str r4, [sp, 0x4]
	adds r0, r5, 0
	movs r1, 0
	ldr r2, [sp, 0x24]
	ldr r3, [sp, 0x54]
	bl sub_8055FA0
_08055D48:
	movs r0, 0x1
	bl sub_804178C
_08055D4E:
	adds r6, 0x1
	cmp r6, 0x3
	ble _08055CDC
_08055D54:
	adds r0, r5, 0
	bl EntityExists
	lsls r0, 24
	cmp r0, 0
	beq _08055DB2
	adds r0, r5, 0
	bl sub_8071DA4
	adds r0, r5, 0
	bl EntityExists
	lsls r0, 24
	cmp r0, 0
	beq _08055DB2
	ldr r1, _08055DD4
	ldrb r0, [r1]
	cmp r0, 0
	beq _08055DB2
	movs r0, 0
	strb r0, [r1]
	adds r0, r5, 0
	bl EntityExists
	lsls r0, 24
	cmp r0, 0
	beq _08055DB2
	ldr r4, [r5, 0x70]
	ldr r1, _08055DD8
	adds r0, r5, 0
	movs r2, 0x1
	bl CalculateStatusTurns
	adds r3, r0, 0
	movs r0, 0
	str r0, [sp]
	adds r0, r5, 0
	adds r1, r5, 0
	movs r2, 0x1
	bl PausedStatusTarget
	adds r4, 0xFB
	ldrb r0, [r4]
	cmp r0, 0
	bne _08055DB2
	movs r0, 0x1
	strb r0, [r4]
_08055DB2:
	movs r0, 0x1
_08055DB4:
	add sp, 0x34
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.align 2, 0
_08055DC4: .4byte gUnknown_80FC6A4
_08055DC8: .4byte 0x0000ffff
_08055DCC: .4byte gFormatItems
_08055DD0: .4byte gUnknown_80FD2DC
_08055DD4: .4byte gUnknown_202F222
_08055DD8: .4byte gUnknown_80F4E70
	thumb_func_end sub_8055A00

	thumb_func_start sub_8055DDC
sub_8055DDC:
	push {r4-r7,lr}
	adds r4, r0, 0
	bl EntityExists
	lsls r0, 24
	cmp r0, 0
	bne _08055DEC
	b _08055F62
_08055DEC:
	ldr r6, [r4, 0x70]
	movs r7, 0xBC
	lsls r7, 1
	adds r5, r6, r7
	ldrh r1, [r5]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _08055E10
	ldr r0, _08055F68
	ldr r1, [r0]
	adds r0, r4, 0
	bl TryDisplayDungeonLoggableMessage
	adds r0, r4, 0
	adds r1, r4, 0
	bl ImmobilizedStatusTarget
_08055E10:
	ldrh r1, [r5]
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _08055E2C
	ldr r0, _08055F6C
	ldr r1, [r0]
	adds r0, r4, 0
	bl TryDisplayDungeonLoggableMessage
	adds r0, r4, 0
	adds r1, r4, 0
	bl ImmobilizedStatusTarget
_08055E2C:
	ldrh r1, [r5]
	movs r0, 0x4
	ands r0, r1
	cmp r0, 0
	beq _08055E48
	ldr r0, _08055F70
	ldr r1, [r0]
	adds r0, r4, 0
	bl TryDisplayDungeonLoggableMessage
	adds r0, r4, 0
	adds r1, r4, 0
	bl ImmobilizedStatusTarget
_08055E48:
	ldrh r1, [r5]
	movs r0, 0x8
	ands r0, r1
	cmp r0, 0
	beq _08055E66
	ldr r0, _08055F74
	ldr r1, [r0]
	adds r0, r4, 0
	bl TryDisplayDungeonLoggableMessage
	adds r0, r4, 0
	adds r1, r4, 0
	movs r2, 0x1
	bl ParalyzeStatusTarget
_08055E66:
	ldrh r1, [r5]
	movs r0, 0x10
	ands r0, r1
	cmp r0, 0
	beq _08055E84
	ldr r0, _08055F78
	ldr r1, [r0]
	adds r0, r4, 0
	bl TryDisplayDungeonLoggableMessage
	adds r0, r4, 0
	adds r1, r4, 0
	movs r2, 0x1
	bl ParalyzeStatusTarget
_08055E84:
	ldrh r1, [r5]
	movs r0, 0x20
	ands r0, r1
	cmp r0, 0
	beq _08055EA2
	ldr r0, _08055F7C
	ldr r1, [r0]
	adds r0, r4, 0
	bl TryDisplayDungeonLoggableMessage
	adds r0, r4, 0
	adds r1, r4, 0
	movs r2, 0x1
	bl PoisonedStatusTarget
_08055EA2:
	ldrh r1, [r5]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _08055EC0
	ldr r0, _08055F80
	ldr r1, [r0]
	adds r0, r4, 0
	bl TryDisplayDungeonLoggableMessage
	adds r0, r4, 0
	adds r1, r4, 0
	movs r2, 0x1
	bl PoisonedStatusTarget
_08055EC0:
	ldrh r1, [r5]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _08055EEA
	ldr r0, _08055F84
	ldr r1, [r0]
	adds r0, r4, 0
	bl TryDisplayDungeonLoggableMessage
	ldr r1, _08055F88
	adds r0, r4, 0
	movs r2, 0x1
	bl CalculateStatusTurns
	adds r2, r0, 0
	adds r0, r4, 0
	adds r1, r4, 0
	movs r3, 0x1
	bl sub_8075C58
_08055EEA:
	ldrh r1, [r5]
	movs r0, 0x80
	lsls r0, 1
	ands r0, r1
	cmp r0, 0
	beq _08055F0C
	ldr r0, _08055F8C
	ldr r1, [r0]
	adds r0, r4, 0
	bl TryDisplayDungeonLoggableMessage
	adds r0, r4, 0
	adds r1, r4, 0
	movs r2, 0x1
	movs r3, 0x1
	bl BurnedStatusTarget
_08055F0C:
	ldrh r1, [r5]
	movs r0, 0x80
	lsls r0, 2
	ands r0, r1
	cmp r0, 0
	beq _08055F2C
	ldr r0, _08055F90
	ldr r1, [r0]
	adds r0, r4, 0
	bl TryDisplayDungeonLoggableMessage
	adds r0, r4, 0
	adds r1, r4, 0
	movs r2, 0x1
	bl InfatuateStatusTarget
_08055F2C:
	adds r5, r6, r7
	ldrh r1, [r5]
	movs r0, 0x80
	lsls r0, 3
	ands r0, r1
	cmp r0, 0
	beq _08055F5E
	ldr r0, _08055F94
	adds r1, r4, 0
	movs r2, 0
	bl SetMessageArgument
	ldr r0, _08055F98
	ldr r1, [r0]
	adds r0, r4, 0
	bl TryDisplayDungeonLoggableMessage
	adds r0, r4, 0
	bl sub_80428A0
	ldr r0, _08055F9C
	ldrh r1, [r0]
	adds r0, r6, 0
	adds r0, 0xFA
	strb r1, [r0]
_08055F5E:
	movs r0, 0
	strh r0, [r5]
_08055F62:
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08055F68: .4byte gUnknown_80FEEA4
_08055F6C: .4byte gUnknown_80FEEC8
_08055F70: .4byte gUnknown_80FEEEC
_08055F74: .4byte gUnknown_80FEF0C
_08055F78: .4byte gUnknown_80FEF30
_08055F7C: .4byte gUnknown_80FEF4C
_08055F80: .4byte gUnknown_80FEF50
_08055F84: .4byte gUnknown_80FEF54
_08055F88: .4byte gUnknown_80F4E74
_08055F8C: .4byte gUnknown_80FEF74
_08055F90: .4byte gUnknown_80FEF98
_08055F94: .4byte gAvailablePokemonNames
_08055F98: .4byte gUnknown_80FEFD0
_08055F9C: .4byte gUnknown_80F5004
	thumb_func_end sub_8055DDC

	thumb_func_start sub_8055FA0
sub_8055FA0:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x130
	adds r5, r0, 0
	adds r6, r1, 0
	mov r10, r2
	str r3, [sp, 0x120]
	ldr r7, [sp, 0x154]
	movs r0, 0
	mov r8, r0
	str r0, [sp, 0xC]
	movs r0, 0x1
	bl sub_804178C
	ldrh r1, [r7, 0x2]
	movs r0, 0xA5
	lsls r0, 1
	cmp r1, r0
	bne _08056010
	movs r0, 0x69
	bl DungeonRandInt
	ldr r1, _08056004
	str r0, [r1]
	add r4, sp, 0x110
	ldr r1, _08056008
	lsls r0, 3
	adds r0, r1
	ldrh r1, [r0]
	adds r0, r4, 0
	bl InitPokemonMove
	ldrb r1, [r7]
	add r0, sp, 0x110
	strb r1, [r0]
	ldrb r0, [r7, 0x1]
	strb r0, [r4, 0x1]
	ldr r0, _0805600C
	ldr r2, [r0]
	mov r1, r10
	str r1, [sp]
	movs r0, 0x1
	str r0, [sp, 0x4]
	mov r0, r8
	str r0, [sp, 0x8]
	b _08056056
	.align 2, 0
_08056004: .4byte gUnknown_202F228
_08056008: .4byte gUnknown_80F59C8
_0805600C: .4byte gUnknown_80FECBC
_08056010:
	cmp r1, 0x77
	bne _08056068
	ldr r0, _08056108
	ldr r0, [r0]
	ldr r1, _0805610C
	adds r0, r1
	movs r2, 0
	ldrsh r0, [r0, r2]
	cmp r0, 0
	bge _08056026
	movs r0, 0
_08056026:
	cmp r0, 0x4A
	ble _0805602C
	movs r0, 0x4A
_0805602C:
	add r4, sp, 0x118
	ldr r1, _08056110
	lsls r0, 3
	adds r0, r1
	ldrh r1, [r0]
	adds r0, r4, 0
	bl InitPokemonMove
	ldrb r1, [r7]
	add r0, sp, 0x118
	strb r1, [r0]
	ldrb r0, [r7, 0x1]
	strb r0, [r4, 0x1]
	ldr r0, _08056114
	ldr r2, [r0]
	mov r0, r10
	str r0, [sp]
	movs r0, 0x1
	str r0, [sp, 0x4]
	mov r1, r8
	str r1, [sp, 0x8]
_08056056:
	adds r0, r5, 0
	adds r1, r7, 0
	add r3, sp, 0xC
	bl sub_8056468
	movs r0, 0x1
	bl sub_804178C
	adds r7, r4, 0
_08056068:
	movs r2, 0
	str r2, [sp, 0x128]
	adds r0, r5, 0
	adds r1, r7, 0
	movs r2, 0x1
	bl GetMoveTargetAndRangeForPokemon
	movs r4, 0xF0
	adds r1, r4, 0
	ands r1, r0
	cmp r1, 0x50
	bne _08056084
	movs r0, 0xA
	str r0, [sp, 0x128]
_08056084:
	adds r0, r5, 0
	adds r1, r7, 0
	movs r2, 0x1
	bl GetMoveTargetAndRangeForPokemon
	adds r1, r4, 0
	ands r1, r0
	cmp r1, 0x80
	bne _080560CC
	movs r1, 0x1
	str r1, [sp, 0x128]
	ldrh r0, [r7, 0x2]
	cmp r0, 0x97
	bne _080560AE
	adds r0, r5, 0
	bl GetApparentWeather
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	beq _080560CC
_080560AE:
	ldrh r0, [r7, 0x2]
	bl DoesMoveCharge
	lsls r0, 24
	cmp r0, 0
	beq _080560CC
	adds r0, r5, 0
	adds r1, r7, 0
	bl MoveMatchesChargingStatus
	lsls r0, 24
	cmp r0, 0
	bne _080560CC
	movs r2, 0
	str r2, [sp, 0x128]
_080560CC:
	ldr r0, _08056118
	ldr r1, [r5, 0x70]
	movs r2, 0
	bl SetMessageArgument_2
	ldr r0, _0805611C
	adds r1, r7, 0
	movs r2, 0
	bl sub_80928C0
	adds r0, r5, 0
	adds r1, r7, 0
	bl MoveMatchesChargingStatus
	lsls r0, 24
	cmp r0, 0
	beq _08056124
	ldr r0, _08056120
	ldr r0, [r0]
	mov r8, r0
	ldr r0, [r5, 0x70]
	adds r0, 0xFF
	movs r1, 0
	strb r1, [r0]
	adds r0, r5, 0
	adds r1, r7, 0
	movs r2, 0x1
	bl sub_805744C
	b _08056142
	.align 2, 0
_08056108: .4byte gDungeon
_0805610C: .4byte 0x00003a0e
_08056110: .4byte gNaturePowerMoveTable
_08056114: .4byte gUnknown_80FECE0
_08056118: .4byte gAvailablePokemonNames
_0805611C: .4byte gFormatItems
_08056120: .4byte gUnknown_80FC72C
_08056124:
	mov r0, r10
	cmp r0, 0
	bne _08056132
	ldrh r0, [r7, 0x2]
	bl GetMoveUseText
	b _08056136
_08056132:
	ldr r0, _08056194
	ldr r0, [r0]
_08056136:
	mov r8, r0
	adds r0, r5, 0
	adds r1, r7, 0
	movs r2, 0x1
	bl CanMonsterUseMove
_08056142:
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0
	beq _08056156
	cmp r6, 0
	beq _08056156
	adds r0, r5, 0
	adds r1, r7, 0
	bl sub_806ACE8
_08056156:
	ldr r0, [r5, 0x70]
	adds r0, 0xEC
	ldrb r0, [r0]
	cmp r0, 0x1
	bne _080561A0
	ldrh r0, [r7, 0x2]
	bl FailsWhileMuzzled
	lsls r0, 24
	cmp r0, 0
	beq _080561A0
	ldr r0, _08056198
	adds r1, r5, 0
	movs r2, 0
	bl SetMessageArgument
	adds r0, r5, 0
	mov r1, r8
	bl TryDisplayDungeonLoggableMessage
	movs r0, 0xA
	movs r1, 0x3F
	bl sub_803E708
	ldr r0, _0805619C
_08056188:
	ldr r1, [r0]
	adds r0, r5, 0
	bl TryDisplayDungeonLoggableMessage
_08056190:
	movs r0, 0
	b _08056446
	.align 2, 0
_08056194: .4byte gUnknown_80F9158
_08056198: .4byte gAvailablePokemonNames
_0805619C: .4byte gUnknown_80FC710
_080561A0:
	cmp r4, 0
	bne _08056214
	ldr r0, _080561D4
	ldr r1, [r5, 0x70]
	movs r2, 0
	bl SetMessageArgument_2
	mov r1, r10
	cmp r1, 0
	bne _080561E0
	ldr r0, _080561D8
	adds r1, r7, 0
	movs r2, 0
	bl sub_80928C0
	adds r0, r5, 0
	mov r1, r8
	bl TryDisplayDungeonLoggableMessage
	movs r0, 0xA
	movs r1, 0x3F
	bl sub_803E708
	ldr r0, _080561DC
	b _08056188
	.align 2, 0
_080561D4: .4byte gAvailablePokemonNames
_080561D8: .4byte gFormatItems
_080561DC: .4byte gUnknown_80FC6D0
_080561E0:
	ldr r0, _0805620C
	mov r2, r10
	lsls r1, r2, 24
	lsrs r1, 24
	movs r2, 0
	bl BufferItemName
	adds r0, r5, 0
	mov r1, r8
	bl TryDisplayDungeonLoggableMessage
	movs r0, 0xA
	movs r1, 0x3F
	bl sub_803E708
	ldr r0, _08056210
	ldr r1, [r0]
	adds r0, r5, 0
	bl TryDisplayDungeonLoggableMessage
	b _08056190
	.align 2, 0
_0805620C: .4byte gFormatItems
_08056210: .4byte gUnknown_80FC6FC
_08056214:
	ldr r0, _0805625C
	movs r1, 0
	str r1, [r0]
	ldr r0, _08056260
	str r1, [r0]
	ldr r0, _08056264
	str r1, [r0]
	ldr r0, _08056268
	strb r1, [r0]
	ldr r0, _0805626C
	strb r1, [r0]
	ldr r0, _08056270
	strb r1, [r0]
	ldr r0, _08056274
	str r1, [r0]
	ldr r0, _08056278
	strb r1, [r0]
	ldr r0, [sp, 0x150]
	cmp r0, 0
	beq _0805624C
	ldr r0, [r5, 0x70]
	ldr r2, _0805627C
	adds r1, r0, r2
	ldrb r0, [r1]
	cmp r0, 0x3
	bhi _0805624C
	adds r0, 0x1
	strb r0, [r1]
_0805624C:
	adds r0, r7, 0
	bl sub_8057070
	str r0, [sp, 0x124]
	movs r0, 0
	mov r9, r0
	b _080563E4
	.align 2, 0
_0805625C: .4byte gUnknown_202F214
_08056260: .4byte gUnknown_202F20C
_08056264: .4byte gUnknown_202F210
_08056268: .4byte gUnknown_202F218
_0805626C: .4byte gUnknown_202F219
_08056270: .4byte gUnknown_202F21A
_08056274: .4byte gUnknown_202F21C
_08056278: .4byte gUnknown_202F220
_0805627C: .4byte 0x00000153
_08056280:
	adds r0, r5, 0
	bl EntityExists
	lsls r0, 24
	cmp r0, 0
	bne _0805628E
	b _08056444
_0805628E:
	bl sub_8044B28
	lsls r0, 24
	cmp r0, 0
	beq _0805629A
	b _08056444
_0805629A:
	ldr r4, [r5, 0x70]
	ldr r0, [sp, 0x120]
	cmp r0, 0
	bne _080562AC
	ldrh r0, [r7, 0x2]
	cmp r0, 0x19
	beq _080562AC
	cmp r0, 0xE3
	bne _080562BE
_080562AC:
	adds r0, r5, 0
	bl IsSleeping
	lsls r0, 24
	cmp r0, 0
	bne _080562CE
	adds r0, r5, 0
	movs r1, 0x1
	b _080562C2
_080562BE:
	adds r0, r5, 0
	movs r1, 0
_080562C2:
	bl CannotAttack
	lsls r0, 24
	cmp r0, 0
	beq _080562CE
	b _08056400
_080562CE:
	movs r1, 0xA5
	lsls r1, 1
	adds r0, r4, r1
	movs r6, 0
	strb r6, [r0]
	ldrh r0, [r7, 0x2]
	cmp r0, 0x9
	bne _080562F4
	ldr r4, [r5, 0x70]
	movs r0, 0x8
	bl DungeonRandInt
	adds r4, 0x46
	strb r0, [r4]
	adds r0, r5, 0
	bl TargetTileInFront
	movs r2, 0
	str r2, [sp, 0x12C]
_080562F4:
	ldr r0, _080563A0
	str r6, [r0]
	str r6, [sp, 0xC]
	ldr r0, [sp, 0x128]
	cmp r0, 0x1
	bhi _08056324
	add r0, sp, 0xC
	adds r1, r5, 0
	adds r2, r7, 0
	bl sub_8056CE8
	add r0, sp, 0xC
	adds r1, r5, 0
	bl sub_80574C4
	mov r1, r9
	cmp r1, 0
	beq _08056324
	ldr r2, [sp, 0x12C]
	cmp r2, 0
	beq _08056324
	ldr r0, [sp, 0xC]
	cmp r0, 0
	beq _08056400
_08056324:
	mov r0, r10
	str r0, [sp]
	movs r0, 0
	mov r1, r9
	cmp r1, 0
	bne _08056332
	movs r0, 0x1
_08056332:
	str r0, [sp, 0x4]
	ldr r2, [sp, 0x128]
	str r2, [sp, 0x8]
	adds r0, r5, 0
	adds r1, r7, 0
	mov r2, r8
	add r3, sp, 0xC
	bl sub_8056468
	lsls r0, 24
	lsrs r4, r0, 24
	movs r0, 0
	mov r8, r0
	ldr r0, _080563A0
	ldr r0, [r0]
	cmp r0, 0
	beq _08056358
	bl sub_806A1E8
_08056358:
	ldr r1, [r5, 0x70]
	adds r0, r1, 0
	adds r0, 0xBC
	ldrb r0, [r0]
	cmp r0, 0x2
	beq _0805637C
	cmp r0, 0x4
	beq _0805637C
	movs r2, 0xB6
	lsls r2, 1
	adds r0, r1, r2
	mov r2, r8
	strh r2, [r0]
	movs r2, 0xB7
	lsls r2, 1
	adds r0, r1, r2
	mov r1, r8
	strh r1, [r0]
_0805637C:
	ldr r1, _080563A4
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	ldr r2, [sp, 0x128]
	cmp r2, 0
	beq _080563A8
	mov r0, r10
	str r0, [sp]
	ldr r1, [sp, 0x150]
	str r1, [sp, 0x4]
	adds r0, r5, 0
	adds r1, r7, 0
	adds r3, r4, 0
	bl sub_80566F8
	b _080563B8
	.align 2, 0
_080563A0: .4byte gUnknown_203B438
_080563A4: .4byte gUnknown_202F214
_080563A8:
	ldr r2, [sp, 0x150]
	str r2, [sp]
	add r0, sp, 0xC
	adds r1, r5, 0
	adds r2, r7, 0
	mov r3, r10
	bl sub_8053704
_080563B8:
	adds r0, r5, 0
	bl EntityExists
	lsls r0, 24
	cmp r0, 0
	beq _08056400
	adds r0, r5, 0
	bl sub_806CF18
	ldr r0, [r5, 0x70]
	movs r2, 0xA5
	lsls r2, 1
	adds r1, r0, r2
	ldrb r0, [r1]
	cmp r0, 0
	bne _080563E0
	strb r0, [r1]
	adds r0, r5, 0
	bl sub_8079764
_080563E0:
	movs r0, 0x1
	add r9, r0
_080563E4:
	ldr r1, [sp, 0x124]
	cmp r9, r1
	bge _08056400
	movs r2, 0x1
	str r2, [sp, 0x12C]
	ldr r0, _08056458
	ldrb r0, [r0]
	cmp r0, 0
	bne _08056400
	ldr r0, _0805645C
	ldrb r0, [r0]
	cmp r0, 0
	bne _08056400
	b _08056280
_08056400:
	ldr r0, _08056460
	ldrb r0, [r0]
	cmp r0, 0
	beq _08056418
	adds r0, r5, 0
	adds r1, r5, 0
	bl SendImmobilizeEndMessage
	adds r0, r5, 0
	adds r1, r5, 0
	bl SendLinkedEndMessage
_08056418:
	ldr r0, _08056464
	ldrb r0, [r0]
	cmp r0, 0
	beq _08056444
	adds r0, r5, 0
	bl EntityExists
	lsls r0, 24
	cmp r0, 0
	beq _08056444
	ldr r4, [r5, 0x70]
	adds r0, r5, 0
	adds r1, r5, 0
	movs r2, 0
	bl ConfuseStatusTarget
	adds r4, 0xFB
	ldrb r0, [r4]
	cmp r0, 0
	bne _08056444
	movs r0, 0x1
	strb r0, [r4]
_08056444:
	movs r0, 0x1
_08056446:
	add sp, 0x130
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.align 2, 0
_08056458: .4byte gUnknown_202F220
_0805645C: .4byte gUnknown_202F221
_08056460: .4byte gUnknown_202F21A
_08056464: .4byte gUnknown_202F219
	thumb_func_end sub_8055FA0

	thumb_func_start sub_8056468
sub_8056468:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x4
	adds r6, r0, 0
	mov r8, r1
	mov r9, r2
	adds r4, r3, 0
	ldr r0, [sp, 0x28]
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp]
	movs r0, 0
	mov r10, r0
	adds r0, r6, 0
	bl sub_8045888
	lsls r0, 24
	lsrs r0, 24
	negs r1, r0
	orrs r1, r0
	lsrs r7, r1, 31
	mov r2, r9
	cmp r2, 0
	beq _08056518
	movs r5, 0
	b _080564A6
_080564A2:
	adds r4, 0x4
	adds r5, 0x1
_080564A6:
	cmp r5, 0x40
	bgt _080564BC
	ldr r0, [r4]
	cmp r0, 0
	beq _080564BC
	bl sub_8045888
	lsls r0, 24
	cmp r0, 0
	beq _080564A2
	movs r7, 0x1
_080564BC:
	cmp r7, 0
	beq _080564F2
	ldr r0, _080564DC
	ldr r1, [r6, 0x70]
	movs r2, 0
	bl SetMessageArgument_2
	ldr r0, [sp, 0x24]
	cmp r0, 0
	bne _080564E4
	ldr r0, _080564E0
	mov r1, r8
	movs r2, 0
	bl sub_80928C0
	b _080564F2
	.align 2, 0
_080564DC: .4byte gAvailablePokemonNames
_080564E0: .4byte gFormatItems
_080564E4:
	ldr r0, _08056508
	ldr r2, [sp, 0x24]
	lsls r1, r2, 24
	lsrs r1, 24
	movs r2, 0
	bl BufferItemName
_080564F2:
	mov r0, r8
	ldrh r1, [r0, 0x2]
	ldr r0, _0805650C
	cmp r1, r0
	beq _08056510
	adds r0, r6, 0
	mov r1, r9
	bl DisplayDungeonLoggableMessageTrue
	b _08056518
	.align 2, 0
_08056508: .4byte gFormatItems
_0805650C: .4byte 0x00000163
_08056510:
	adds r0, r6, 0
	mov r1, r9
	bl DisplayDungeonLoggableMessageFalse
_08056518:
	cmp r7, 0
	beq _08056544
	ldr r2, [sp]
	cmp r2, 0
	beq _0805652A
	adds r0, r6, 0
	mov r1, r8
	movs r2, 0x1
	b _08056530
_0805652A:
	adds r0, r6, 0
	mov r1, r8
	movs r2, 0
_08056530:
	bl sub_8040BB0
	lsls r0, 24
	lsrs r0, 24
	mov r10, r0
	adds r0, r6, 0
	mov r1, r8
	bl sub_8040DA0
	b _08056550
_08056544:
	ldr r0, [r6, 0x70]
	adds r0, 0x46
	ldrb r1, [r0]
	adds r0, r6, 0
	bl sub_806CE68
_08056550:
	mov r0, r10
	add sp, 0x4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_8056468

	thumb_func_start sub_8056564
sub_8056564:
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, 0x18
	adds r6, r0, 0
	adds r5, r1, 0
	adds r7, r2, 0
	adds r4, r3, 0
	ldr r0, [r6, 0x70]
	mov r8, r0
	ldr r0, _08056680
	ldr r0, [r0]
	ldr r1, _08056684
	adds r0, r1
	ldrb r0, [r0]
	mov r9, r0
	cmp r0, 0
	beq _0805658C
	b _080566E4
_0805658C:
	mov r2, r8
	movs r1, 0x4
	ldrsh r0, [r2, r1]
	bl GetBodySize
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x3
	bls _080565A4
	cmp r4, 0x1
	bne _080565A4
	b _080566E4
_080565A4:
	ldrh r4, [r7, 0x2]
	adds r0, r6, 0
	bl GetApparentWeather
	adds r1, r0, 0
	lsls r1, 24
	lsrs r1, 24
	adds r0, r4, 0
	movs r2, 0x1
	bl sub_80412E0
	lsls r0, 16
	lsrs r0, 16
	bl sub_800ECB8
	movs r2, 0x6
	ldrsh r4, [r0, r2]
	movs r1, 0
	ldrsh r0, [r5, r1]
	lsls r1, r0, 1
	adds r1, r0
	lsls r1, 11
	movs r0, 0x2
	ldrsh r2, [r5, r0]
	lsls r0, r2, 1
	adds r0, r2
	lsls r0, 11
	movs r2, 0x80
	lsls r2, 5
	adds r3, r0, r2
	movs r2, 0xC0
	lsls r2, 4
	adds r0, r1, r2
	cmp r0, 0
	bge _080565EC
	adds r0, 0xFF
_080565EC:
	lsls r0, 8
	lsrs r0, 16
	ldr r1, _08056688
	ldr r2, [sp, 0x14]
	ands r2, r1
	orrs r2, r0
	str r2, [sp, 0x14]
	adds r0, r3, 0
	cmp r0, 0
	bge _08056602
	adds r0, 0xFF
_08056602:
	lsls r0, 8
	lsrs r0, 16
	lsls r0, 16
	ldr r1, _0805668C
	ands r2, r1
	orrs r2, r0
	str r2, [sp, 0x14]
	cmp r4, 0
	beq _080566E4
	ldrh r4, [r7, 0x2]
	adds r0, r6, 0
	bl GetApparentWeather
	adds r1, r0, 0
	lsls r1, 24
	lsrs r1, 24
	adds r0, r4, 0
	movs r2, 0x1
	bl sub_80412E0
	lsls r0, 16
	lsrs r0, 16
	bl sub_800EF10
	bl sub_800EF64
	movs r0, 0x5E
	bl sub_803E46C
	mov r0, r8
	movs r1, 0x4
	ldrsh r5, [r0, r1]
	ldrh r4, [r7, 0x2]
	adds r0, r6, 0
	bl GetApparentWeather
	adds r1, r0, 0
	lsls r1, 24
	lsrs r1, 24
	adds r0, r4, 0
	movs r2, 0x1
	bl sub_80412E0
	adds r1, r0, 0
	lsls r1, 16
	lsrs r1, 16
	adds r0, r5, 0
	bl sub_800E710
	adds r2, r0, 0
	movs r0, 0x1
	negs r0, r0
	cmp r2, r0
	beq _08056690
	add r0, sp, 0x8
	adds r1, r6, 0
	adds r1, 0x28
	lsls r2, 24
	lsrs r2, 24
	bl sub_800569C
	b _08056694
	.align 2, 0
_08056680: .4byte gDungeon
_08056684: .4byte 0x0001820a
_08056688: .4byte 0xffff0000
_0805668C: .4byte 0x0000ffff
_08056690:
	mov r2, r9
	str r2, [sp, 0x8]
_08056694:
	ldrh r4, [r7, 0x2]
	adds r0, r6, 0
	bl GetApparentWeather
	adds r1, r0, 0
	lsls r1, 24
	lsrs r1, 24
	adds r0, r4, 0
	movs r2, 0x1
	bl sub_80412E0
	mov r1, sp
	strh r0, [r1]
	mov r2, r8
	ldrh r0, [r2, 0x4]
	strh r0, [r1, 0x2]
	ldr r0, [r6, 0xC]
	cmp r0, 0
	bge _080566BC
	adds r0, 0xFF
_080566BC:
	asrs r0, 8
	strh r0, [r1, 0x4]
	mov r1, sp
	ldr r0, [r6, 0x10]
	cmp r0, 0
	bge _080566CA
	adds r0, 0xFF
_080566CA:
	asrs r0, 8
	strh r0, [r1, 0x6]
	mov r0, r8
	adds r0, 0x46
	ldrb r0, [r0]
	str r0, [sp, 0xC]
	movs r0, 0
	str r0, [sp, 0x10]
	add r1, sp, 0x14
	mov r0, sp
	bl sub_800E308
	b _080566E8
_080566E4:
	movs r0, 0x1
	negs r0, r0
_080566E8:
	add sp, 0x18
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_8056564

	thumb_func_start sub_80566F8
sub_80566F8:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x54
	mov r10, r0
	str r1, [sp, 0x1C]
	str r2, [sp, 0x20]
	lsls r3, 24
	lsrs r3, 24
	str r3, [sp, 0x24]
	movs r0, 0
	str r0, [sp, 0x34]
	movs r7, 0
	mov r1, r10
	ldr r6, [r1, 0x70]
	ldr r2, [sp, 0x1C]
	ldrh r0, [r2, 0x2]
	bl sub_800ED20
	movs r1, 0x2
	str r1, [sp, 0x44]
	cmp r0, 0x1
	beq _08056736
	movs r2, 0x6
	str r2, [sp, 0x44]
	cmp r0, 0x2
	bne _08056736
	movs r0, 0x3
	str r0, [sp, 0x44]
_08056736:
	mov r1, r10
	ldrh r0, [r1, 0x6]
	lsls r0, 16
	ldrh r3, [r1, 0x4]
	orrs r3, r0
	str r3, [sp, 0xC]
	ldr r1, _08056814
	adds r2, r6, 0
	adds r2, 0x46
	ldrb r0, [r2]
	lsls r0, 2
	adds r0, r1
	movs r1, 0
	ldrsh r6, [r0, r1]
	str r6, [sp, 0x28]
	movs r1, 0x2
	ldrsh r6, [r0, r1]
	str r6, [sp, 0x2C]
	movs r6, 0
	str r6, [sp, 0x30]
	mov r8, r2
	ldr r0, [sp, 0x20]
	cmp r6, r0
	bge _080567EC
	add r0, sp, 0xC
	movs r2, 0
	ldrsh r1, [r0, r2]
	cmp r1, 0
	blt _080567EC
	asrs r0, r3, 16
	cmp r0, 0
	blt _080567EC
	cmp r1, 0x37
	bgt _080567EC
	cmp r0, 0x1F
	bgt _080567EC
	add r6, sp, 0xC
_08056780:
	ldrh r0, [r6]
	ldr r1, [sp, 0x28]
	adds r0, r1
	lsls r0, 16
	lsrs r0, 16
	ldr r2, _08056818
	ands r2, r3
	orrs r2, r0
	asrs r0, r2, 16
	ldr r1, [sp, 0x2C]
	adds r0, r1
	lsls r0, 16
	ldr r1, _0805681C
	ands r1, r2
	orrs r1, r0
	str r1, [sp, 0xC]
	adds r7, 0x1
	movs r2, 0
	ldrsh r0, [r6, r2]
	asrs r1, 16
	bl GetTile
	adds r2, r0, 0
	ldrh r1, [r2]
	movs r0, 0x3
	ands r0, r1
	cmp r0, 0
	beq _080567EC
	ldr r0, [r2, 0x10]
	cmp r0, 0
	beq _080567C6
	bl GetEntityType
	cmp r0, 0x1
	beq _080567EC
_080567C6:
	ldr r0, [sp, 0x30]
	adds r0, 0x1
	str r0, [sp, 0x30]
	ldr r1, [sp, 0x20]
	cmp r0, r1
	bge _080567EC
	movs r0, 0
	ldrsh r2, [r6, r0]
	cmp r2, 0
	blt _080567EC
	ldr r0, [sp, 0xC]
	asrs r1, r0, 16
	adds r3, r0, 0
	cmp r1, 0
	blt _080567EC
	cmp r2, 0x37
	bgt _080567EC
	cmp r1, 0x1F
	ble _08056780
_080567EC:
	ldr r2, [sp, 0x1C]
	ldrh r1, [r2, 0x2]
	mov r0, r10
	bl sub_805755C
	lsls r0, 24
	cmp r0, 0
	beq _08056820
	mov r0, r10
	ldr r1, [sp, 0x1C]
	bl MoveMatchesChargingStatus
	lsls r0, 24
	cmp r0, 0
	bne _08056820
	movs r6, 0x1
	negs r6, r6
	str r6, [sp, 0x40]
	b _0805682E
	.align 2, 0
_08056814: .4byte gAdjacentTileOffsets
_08056818: .4byte 0xffff0000
_0805681C: .4byte 0x0000ffff
_08056820:
	mov r0, r10
	add r1, sp, 0xC
	ldr r2, [sp, 0x1C]
	ldr r3, [sp, 0x20]
	bl sub_8056564
	str r0, [sp, 0x40]
_0805682E:
	mov r0, r10
	ldrh r1, [r0, 0x4]
	add r0, sp, 0xC
	strh r1, [r0]
	mov r2, r10
	ldrh r1, [r2, 0x6]
	strh r1, [r0, 0x2]
	ldr r1, _08056874
	mov r6, r8
	ldrb r0, [r6]
	lsls r0, 2
	adds r0, r1
	movs r2, 0
	ldrsh r1, [r0, r2]
	str r1, [sp, 0x28]
	movs r1, 0x2
	ldrsh r6, [r0, r1]
	str r6, [sp, 0x2C]
	movs r0, 0x18
	ldr r1, [sp, 0x44]
	bl __divsi3
	adds r1, r7, 0
	muls r1, r0
	ldr r2, [sp, 0x20]
	cmp r2, 0x1
	ble _08056878
	adds r6, r1, 0
	adds r6, 0x8
	str r6, [sp, 0x38]
	cmp r6, 0x3F
	ble _0805687C
	movs r0, 0x40
	str r0, [sp, 0x38]
	b _0805687C
	.align 2, 0
_08056874: .4byte gAdjacentTileOffsets
_08056878:
	movs r2, 0x20
	str r2, [sp, 0x38]
_0805687C:
	movs r6, 0
	mov r9, r6
	movs r0, 0x80
	lsls r0, 12
	bl __divsi3
	str r0, [sp, 0x48]
	ldr r1, _0805696C
	mov r2, r8
	ldrb r0, [r2]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	str r0, [sp, 0x3C]
	ldr r0, _08056970
	ldr r0, [r0]
	ldr r6, _08056974
	adds r0, r6
	movs r1, 0x1
	strb r1, [r0]
	movs r0, 0
	str r0, [sp, 0x30]
	ldr r1, [sp, 0x20]
	cmp r0, r1
	blt _080568B0
	b _08056AB6
_080568B0:
	add r0, sp, 0xC
	movs r2, 0
	ldrsh r1, [r0, r2]
	cmp r1, 0
	bge _080568BC
	b _08056AB6
_080568BC:
	ldrh r0, [r0, 0x2]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0
	bge _080568C8
	b _08056AB6
_080568C8:
	cmp r1, 0x37
	ble _080568CE
	b _08056AB6
_080568CE:
	cmp r0, 0x1F
	ble _080568D4
	b _08056AB6
_080568D4:
	add r7, sp, 0xC
_080568D6:
	ldr r6, [sp, 0xC]
	ldrh r0, [r7]
	ldr r1, [sp, 0x28]
	adds r0, r1
	strh r0, [r7]
	ldrh r0, [r7, 0x2]
	ldr r2, [sp, 0x2C]
	adds r0, r2
	strh r0, [r7, 0x2]
	add r0, sp, 0xC
	bl sub_803F428
	lsls r0, 24
	cmp r0, 0
	bne _080568F6
	b _08056A00
_080568F6:
	ldr r0, _08056970
	ldr r0, [r0]
	ldr r1, _08056978
	adds r0, r1
	ldrb r0, [r0]
	cmp r0, 0
	beq _08056906
	b _08056A00
_08056906:
	lsls r1, r6, 16
	asrs r1, 16
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 11
	movs r2, 0xC0
	lsls r2, 4
	adds r4, r0, r2
	asrs r1, r6, 16
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 11
	movs r6, 0x80
	lsls r6, 5
	adds r5, r0, r6
	ldr r1, [sp, 0x28]
	lsls r0, r1, 8
	ldr r6, [sp, 0x44]
	adds r2, r6, 0
	muls r2, r0
	str r2, [sp, 0x4C]
	ldr r1, [sp, 0x2C]
	lsls r0, r1, 8
	adds r2, r6, 0
	muls r2, r0
	str r2, [sp, 0x50]
	movs r6, 0
	movs r0, 0x18
	ldr r1, [sp, 0x44]
	bl __divsi3
	mov r8, r0
	cmp r6, r8
	bge _08056A0E
_0805694A:
	ldr r0, [sp, 0x40]
	cmp r0, 0
	blt _080569D4
	ldr r1, [sp, 0x24]
	cmp r1, 0
	beq _0805697C
	mov r0, r9
	cmp r0, 0
	bge _0805695E
	adds r0, 0xFF
_0805695E:
	asrs r0, 8
	bl sin_abs_4096
	ldr r2, [sp, 0x38]
	adds r3, r0, 0
	muls r3, r2
	b _0805697E
	.align 2, 0
_0805696C: .4byte gUnknown_81069D4
_08056970: .4byte gDungeon
_08056974: .4byte 0x0001c05e
_08056978: .4byte 0x0001820a
_0805697C:
	movs r3, 0
_0805697E:
	adds r0, r4, 0
	cmp r4, 0
	bge _08056986
	adds r0, 0xFF
_08056986:
	lsls r0, 8
	lsrs r0, 16
	ldr r1, _080569F0
	ldr r2, [sp, 0x10]
	ands r2, r1
	orrs r2, r0
	str r2, [sp, 0x10]
	subs r0, r5, r3
	cmp r0, 0
	bge _0805699C
	adds r0, 0xFF
_0805699C:
	lsls r0, 8
	lsrs r0, 16
	lsls r0, 16
	ldr r1, _080569F4
	ands r2, r1
	orrs r2, r0
	str r2, [sp, 0x10]
	adds r2, r5, 0
	cmp r2, 0
	bge _080569B2
	adds r2, 0xFF
_080569B2:
	asrs r2, 8
	ldr r0, _080569F8
	ldr r0, [r0]
	ldr r1, _080569FC
	adds r0, r1
	movs r1, 0
	ldrsh r0, [r0, r1]
	subs r2, r0
	lsrs r0, r2, 31
	adds r2, r0
	asrs r2, 1
	ldr r0, [sp, 0x3C]
	adds r2, r0
	ldr r0, [sp, 0x40]
	add r1, sp, 0x10
	bl sub_800E3AC
_080569D4:
	movs r0, 0x30
	bl sub_803E46C
	ldr r1, [sp, 0x4C]
	adds r4, r1
	ldr r2, [sp, 0x50]
	adds r5, r2
	ldr r0, [sp, 0x48]
	add r9, r0
	adds r6, 0x1
	cmp r6, r8
	blt _0805694A
	b _08056A0E
	.align 2, 0
_080569F0: .4byte 0xffff0000
_080569F4: .4byte 0x0000ffff
_080569F8: .4byte gDungeon
_080569FC: .4byte 0x000181f2
_08056A00:
	movs r0, 0x18
	ldr r1, [sp, 0x44]
	bl __divsi3
	ldr r1, [sp, 0x48]
	muls r0, r1
	add r9, r0
_08056A0E:
	movs r2, 0
	ldrsh r0, [r7, r2]
	movs r6, 0x2
	ldrsh r1, [r7, r6]
	bl GetTile
	adds r6, r0, 0
	ldrh r1, [r6]
	movs r0, 0x3
	ands r0, r1
	cmp r0, 0
	beq _08056AB6
	ldr r0, [r6, 0x10]
	cmp r0, 0
	beq _08056A8E
	bl GetEntityType
	cmp r0, 0x1
	bne _08056A8E
	ldr r0, [r6, 0x10]
	ldr r1, [sp, 0x1C]
	bl sub_80571F0
	lsls r0, 24
	cmp r0, 0
	bne _08056A8E
	ldr r0, [sp, 0x34]
	cmp r0, 0
	bgt _08056AB6
	movs r4, 0
	mov r2, r10
	ldr r1, [r2, 0x70]
	adds r0, r1, 0
	adds r0, 0xBC
	ldrb r2, [r0]
	cmp r2, 0x2
	beq _08056A64
	adds r0, 0x2C
	ldrb r0, [r0]
	cmp r0, 0x1
	beq _08056A64
	cmp r2, 0x4
	bne _08056A66
_08056A64:
	movs r4, 0x1
_08056A66:
	mov r0, r10
	ldr r1, [sp, 0x1C]
	movs r2, 0
	bl GetMoveTargetAndRangeForPokemon
	adds r2, r0, 0
	lsls r2, 16
	asrs r2, 16
	ldr r0, [r6, 0x10]
	str r0, [sp]
	ldr r6, [sp, 0x1C]
	str r6, [sp, 0x4]
	str r4, [sp, 0x8]
	ldr r0, [sp, 0x34]
	add r1, sp, 0x14
	mov r3, r10
	bl sub_8056F80
	str r0, [sp, 0x34]
	b _08056AB6
_08056A8E:
	ldr r0, [sp, 0x30]
	adds r0, 0x1
	str r0, [sp, 0x30]
	ldr r1, [sp, 0x20]
	cmp r0, r1
	bge _08056AB6
	movs r2, 0
	ldrsh r1, [r7, r2]
	cmp r1, 0
	blt _08056AB6
	ldrh r0, [r7, 0x2]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0
	blt _08056AB6
	cmp r1, 0x37
	bgt _08056AB6
	cmp r0, 0x1F
	bgt _08056AB6
	b _080568D6
_08056AB6:
	ldr r6, [sp, 0x40]
	cmp r6, 0
	blt _08056AC2
	adds r0, r6, 0
	bl sub_800DC14
_08056AC2:
	movs r0, 0x1
	bl sub_804178C
	ldr r0, _08056AF4
	ldr r0, [r0]
	ldr r1, _08056AF8
	adds r0, r1
	movs r2, 0
	strb r2, [r0]
	ldr r6, [sp, 0x34]
	cmp r6, 0
	ble _08056AFC
	lsls r1, r6, 2
	add r0, sp, 0x14
	adds r1, r0
	str r2, [r1]
	ldr r1, [sp, 0x78]
	str r1, [sp]
	mov r1, r10
	ldr r2, [sp, 0x1C]
	ldr r3, [sp, 0x74]
	bl sub_8053704
	b _08056B22
	.align 2, 0
_08056AF4: .4byte gDungeon
_08056AF8: .4byte 0x0001c05e
_08056AFC:
	ldr r0, [sp, 0x20]
	cmp r0, 0x1
	bne _08056B22
	add r0, sp, 0xC
	bl sub_803F428
	lsls r0, 24
	cmp r0, 0
	beq _08056B22
	movs r0, 0x1
	movs r1, 0x4A
	bl sub_803E708
	mov r0, r10
	movs r1, 0
	ldr r2, [sp, 0x1C]
	add r3, sp, 0xC
	bl sub_8041168
_08056B22:
	add sp, 0x54
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_80566F8

	thumb_func_start sub_8056B34
sub_8056B34:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x4
	adds r7, r0, 0
	adds r6, r1, 0
	mov r8, r2
	adds r1, r3, 0
	ldr r4, [sp, 0x24]
	lsls r4, 24
	lsrs r4, 24
	mov r0, r8
	bl GetMoveAccuracyOrAIChance
	adds r5, r0, 0
	movs r0, 0x64
	bl DungeonRandInt
	str r0, [sp]
	ldr r0, [r7, 0x70]
	mov r9, r0
	ldr r1, [r6, 0x70]
	mov r10, r1
	cmp r4, 0
	beq _08056B70
	cmp r7, r6
	bne _08056B70
	b _08056CD4
_08056B70:
	mov r0, r8
	ldrh r1, [r0, 0x2]
	ldr r0, _08056CC4
	cmp r1, r0
	bne _08056B8A
	adds r0, r7, 0
	movs r1, 0x4
	bl IQSkillIsEnabled
	lsls r0, 24
	cmp r0, 0
	beq _08056B8A
	b _08056CD4
_08056B8A:
	mov r0, r9
	adds r0, 0xDC
	ldrb r0, [r0]
	cmp r0, 0x1
	bne _08056B96
	b _08056CD4
_08056B96:
	cmp r0, 0x2
	bne _08056B9C
	b _08056CBE
_08056B9C:
	cmp r5, 0x64
	ble _08056BA2
	b _08056CD4
_08056BA2:
	adds r0, r6, 0
	movs r1, 0x23
	bl HasHeldItem
	lsls r0, 24
	cmp r0, 0
	beq _08056BB6
	ldr r0, _08056CC8
	ldr r0, [r0]
	subs r5, r0
_08056BB6:
	adds r0, r6, 0
	movs r1, 0x5
	bl IQSkillIsEnabled
	lsls r0, 24
	cmp r0, 0
	beq _08056BCA
	ldr r0, _08056CCC
	ldr r0, [r0]
	subs r5, r0
_08056BCA:
	mov r1, r9
	movs r0, 0x24
	ldrsh r4, [r1, r0]
	adds r0, r7, 0
	movs r1, 0x33
	bl HasAbility
	lsls r0, 24
	cmp r0, 0
	beq _08056BE0
	adds r4, 0x2
_08056BE0:
	mov r1, r8
	ldrh r0, [r1, 0x2]
	cmp r0, 0x40
	bne _08056BFC
	adds r0, r7, 0
	bl GetApparentWeather
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x4
	beq _08056CD4
	cmp r0, 0x1
	bne _08056BFC
	subs r4, 0x2
_08056BFC:
	cmp r4, 0
	bge _08056C02
	movs r4, 0
_08056C02:
	cmp r4, 0x14
	ble _08056C08
	movs r4, 0x14
_08056C08:
	ldr r1, _08056CD0
	lsls r0, r4, 2
	adds r0, r1
	ldr r0, [r0]
	cmp r0, 0
	bge _08056C16
	movs r0, 0
_08056C16:
	movs r1, 0xC8
	lsls r1, 7
	cmp r0, r1
	ble _08056C20
	adds r0, r1, 0
_08056C20:
	muls r5, r0
	adds r0, r5, 0
	cmp r5, 0
	bge _08056C2A
	adds r0, 0xFF
_08056C2A:
	asrs r5, r0, 8
	mov r0, r10
	movs r1, 0x26
	ldrsh r4, [r0, r1]
	adds r0, 0xF5
	ldrb r0, [r0]
	cmp r0, 0
	beq _08056C3C
	movs r4, 0xA
_08056C3C:
	adds r0, r6, 0
	bl GetApparentWeather
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x2
	bne _08056C5A
	adds r0, r6, 0
	movs r1, 0x1D
	bl HasAbility
	lsls r0, 24
	cmp r0, 0
	beq _08056C5A
	adds r4, 0x2
_08056C5A:
	adds r0, r7, 0
	movs r1, 0x30
	bl HasAbility
	lsls r0, 24
	cmp r0, 0
	beq _08056C86
	mov r0, r8
	bl GetMoveType
	lsls r0, 24
	lsrs r0, 24
	bl IsTypePhysical
	movs r1, 0
	lsls r0, 24
	cmp r0, 0
	bne _08056C80
	movs r1, 0x1
_08056C80:
	cmp r1, 0
	bne _08056C86
	adds r4, 0x2
_08056C86:
	cmp r4, 0
	bge _08056C8C
	movs r4, 0
_08056C8C:
	cmp r4, 0x14
	ble _08056C92
	movs r4, 0x14
_08056C92:
	ldr r0, _08056CD0
	lsls r1, r4, 2
	adds r0, 0x54
	adds r1, r0
	ldr r0, [r1]
	cmp r0, 0
	bge _08056CA2
	movs r0, 0
_08056CA2:
	movs r1, 0xC8
	lsls r1, 7
	cmp r0, r1
	ble _08056CAC
	adds r0, r1, 0
_08056CAC:
	muls r5, r0
	adds r0, r5, 0
	cmp r5, 0
	bge _08056CB6
	adds r0, 0xFF
_08056CB6:
	asrs r5, r0, 8
	ldr r0, [sp]
	cmp r0, r5
	blt _08056CD4
_08056CBE:
	movs r0, 0
	b _08056CD6
	.align 2, 0
_08056CC4: .4byte 0x00000163
_08056CC8: .4byte gUnknown_80F519C
_08056CCC: .4byte gUnknown_80F51A0
_08056CD0: .4byte gUnknown_80F50F4
_08056CD4:
	movs r0, 0x1
_08056CD6:
	add sp, 0x4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_8056B34

	thumb_func_start sub_8056CE8
sub_8056CE8:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x18
	str r0, [sp, 0x10]
	adds r5, r1, 0
	mov r8, r2
	movs r0, 0
	mov r9, r0
	movs r3, 0
	ldr r1, [r5, 0x70]
	adds r0, r1, 0
	adds r0, 0xBC
	ldrb r2, [r0]
	cmp r2, 0x2
	beq _08056D18
	adds r0, 0x2C
	ldrb r0, [r0]
	cmp r0, 0x1
	beq _08056D18
	cmp r2, 0x4
	bne _08056D1A
_08056D18:
	movs r3, 0x1
_08056D1A:
	mov r10, r3
	movs r1, 0
	ldr r0, [r5, 0x70]
	adds r0, 0xBC
	ldrb r0, [r0]
	cmp r0, 0x2
	beq _08056D2C
	cmp r0, 0x4
	bne _08056D2E
_08056D2C:
	movs r1, 0x1
_08056D2E:
	str r1, [sp, 0x14]
	adds r0, r5, 0
	movs r1, 0x7
	bl IQSkillIsEnabled
	lsls r0, 24
	cmp r0, 0
	beq _08056D44
	movs r1, 0
	str r1, [sp, 0x14]
	mov r10, r1
_08056D44:
	adds r0, r5, 0
	mov r1, r8
	movs r2, 0
	bl GetMoveTargetAndRangeForPokemon
	lsls r0, 16
	asrs r7, r0, 16
	movs r0, 0xF
	ands r0, r7
	cmp r0, 0x4
	bne _08056D86
	adds r0, r5, 0
	mov r1, r8
	bl MoveMatchesChargingStatus
	lsls r0, 24
	lsrs r4, r0, 24
	mov r2, r8
	ldrh r0, [r2, 0x2]
	cmp r0, 0x97
	bne _08056D7E
	adds r0, r5, 0
	bl GetApparentWeather
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _08056D7E
	movs r4, 0x1
_08056D7E:
	movs r7, 0x73
	cmp r4, 0
	beq _08056D86
	movs r7, 0
_08056D86:
	movs r1, 0xF0
	ands r1, r7
	cmp r1, 0
	bne _08056DA6
	adds r0, r5, 0
	bl sub_80696A8
	cmp r0, 0
	bne _08056D9A
	b _08056F64
_08056D9A:
	str r0, [sp]
	mov r0, r8
	str r0, [sp, 0x4]
	mov r1, r10
	str r1, [sp, 0x8]
	b _08056F56
_08056DA6:
	cmp r1, 0x10
	beq _08056DAE
	cmp r1, 0x20
	bne _08056E34
_08056DAE:
	ldr r0, [r5, 0x70]
	cmp r1, 0x20
	bne _08056DBC
	adds r0, 0x46
	ldrb r4, [r0]
	movs r0, 0x8
	b _08056DCA
_08056DBC:
	adds r0, 0x46
	ldrb r0, [r0]
	subs r4, r0, 0x1
	movs r0, 0x3
	cmp r0, 0
	bne _08056DCA
	b _08056F64
_08056DCA:
	adds r6, r0, 0
_08056DCC:
	movs r0, 0x7
	ands r4, r0
	ldr r0, _08056E28
	lsls r3, r4, 2
	adds r3, r0
	ldrh r0, [r3]
	ldrh r2, [r5, 0x4]
	adds r0, r2
	lsls r0, 16
	lsrs r0, 16
	ldr r2, _08056E2C
	ldr r1, [sp, 0xC]
	ands r1, r2
	orrs r1, r0
	str r1, [sp, 0xC]
	ldrh r2, [r3, 0x2]
	ldrh r0, [r5, 0x6]
	adds r2, r0
	lsls r2, 16
	ldr r0, _08056E30
	ands r1, r0
	orrs r1, r2
	str r1, [sp, 0xC]
	add r0, sp, 0xC
	bl sub_804AD0C
	cmp r0, 0
	beq _08056E1C
	str r0, [sp]
	mov r1, r8
	str r1, [sp, 0x4]
	mov r2, r10
	str r2, [sp, 0x8]
	mov r0, r9
	ldr r1, [sp, 0x10]
	adds r2, r7, 0
	adds r3, r5, 0
	bl sub_8056F80
	mov r9, r0
_08056E1C:
	subs r6, 0x1
	adds r4, 0x1
	cmp r6, 0
	bne _08056DCC
	b _08056F64
	.align 2, 0
_08056E28: .4byte gAdjacentTileOffsets
_08056E2C: .4byte 0xffff0000
_08056E30: .4byte 0x0000ffff
_08056E34:
	cmp r1, 0x30
	bne _08056E9C
	movs r6, 0
_08056E3A:
	ldr r0, _08056E74
	ldr r0, [r0]
	lsls r1, r6, 2
	ldr r2, _08056E78
	adds r0, r2
	adds r0, r1
	ldr r4, [r0]
	adds r0, r4, 0
	bl EntityExists
	lsls r0, 24
	cmp r0, 0
	beq _08056E94
	adds r0, r5, 0
	adds r1, r4, 0
	bl sub_8045A70
	lsls r0, 24
	cmp r0, 0
	beq _08056E94
	cmp r4, r5
	bne _08056E7C
	str r5, [sp]
	mov r0, r8
	str r0, [sp, 0x4]
	ldr r1, [sp, 0x14]
	str r1, [sp, 0x8]
	b _08056E86
	.align 2, 0
_08056E74: .4byte gDungeon
_08056E78: .4byte 0x000135cc
_08056E7C:
	str r4, [sp]
	mov r2, r8
	str r2, [sp, 0x4]
	mov r0, r10
	str r0, [sp, 0x8]
_08056E86:
	mov r0, r9
	ldr r1, [sp, 0x10]
	adds r2, r7, 0
	adds r3, r5, 0
	bl sub_8056F80
	mov r9, r0
_08056E94:
	adds r6, 0x1
	cmp r6, 0x13
	ble _08056E3A
	b _08056F64
_08056E9C:
	cmp r1, 0x40
	bne _08056EEA
	movs r4, 0
	adds r0, r5, 0
	bl sub_80696FC
	cmp r0, 0
	beq _08056ED0
	mov r4, r9
	str r0, [sp]
	mov r1, r8
	str r1, [sp, 0x4]
	mov r2, r10
	str r2, [sp, 0x8]
	adds r0, r4, 0
	ldr r1, [sp, 0x10]
	adds r2, r7, 0
	adds r3, r5, 0
	bl sub_8056F80
	mov r9, r0
	mov r1, r9
	eors r1, r4
	negs r0, r1
	orrs r0, r1
	lsrs r4, r0, 31
_08056ED0:
	cmp r4, 0
	bne _08056F64
	adds r0, r5, 0
	bl sub_806977C
	cmp r0, 0
	beq _08056F64
	str r0, [sp]
	mov r0, r8
	str r0, [sp, 0x4]
	mov r1, r10
	str r1, [sp, 0x8]
	b _08056F56
_08056EEA:
	cmp r1, 0x50
	beq _08056F64
	cmp r1, 0x80
	bne _08056F00
	adds r0, r5, 0
	bl sub_80696FC
	cmp r0, 0
	beq _08056F64
	str r0, [sp]
	b _08056F4E
_08056F00:
	cmp r1, 0x60
	bne _08056F48
	movs r6, 0
_08056F06:
	ldr r0, _08056F40
	ldr r0, [r0]
	lsls r1, r6, 2
	ldr r2, _08056F44
	adds r0, r2
	adds r0, r1
	ldr r4, [r0]
	adds r0, r4, 0
	bl EntityExists
	lsls r0, 24
	cmp r0, 0
	beq _08056F38
	str r4, [sp]
	mov r0, r8
	str r0, [sp, 0x4]
	mov r1, r10
	str r1, [sp, 0x8]
	mov r0, r9
	ldr r1, [sp, 0x10]
	adds r2, r7, 0
	adds r3, r5, 0
	bl sub_8056F80
	mov r9, r0
_08056F38:
	adds r6, 0x1
	cmp r6, 0x13
	ble _08056F06
	b _08056F64
	.align 2, 0
_08056F40: .4byte gDungeon
_08056F44: .4byte 0x000135cc
_08056F48:
	cmp r1, 0x70
	bne _08056F64
	str r5, [sp]
_08056F4E:
	mov r2, r8
	str r2, [sp, 0x4]
	mov r0, r10
	str r0, [sp, 0x8]
_08056F56:
	mov r0, r9
	ldr r1, [sp, 0x10]
	adds r2, r7, 0
	adds r3, r5, 0
	bl sub_8056F80
	mov r9, r0
_08056F64:
	mov r1, r9
	lsls r0, r1, 2
	ldr r2, [sp, 0x10]
	adds r0, r2
	movs r1, 0
	str r1, [r0]
	add sp, 0x18
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_8056CE8

	thumb_func_start sub_8056F80
sub_8056F80:
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	adds r5, r0, 0
	mov r8, r1
	adds r4, r3, 0
	ldr r7, [sp, 0x18]
	ldr r0, [sp, 0x20]
	lsls r2, 16
	asrs r2, 16
	lsls r0, 24
	lsrs r0, 24
	mov r12, r0
	movs r6, 0
	ldr r1, [r7, 0x70]
	ldr r3, [sp, 0x1C]
	ldrh r0, [r3, 0x2]
	cmp r0, 0xFC
	bne _08056FAA
	cmp r4, r7
	beq _08057060
_08056FAA:
	ldrb r0, [r1, 0x8]
	cmp r0, 0x1
	beq _08057060
	adds r0, r1, 0
	adds r0, 0xA4
	ldrb r0, [r0]
	cmp r0, 0x4
	beq _08057060
	cmp r0, 0x1
	beq _08057060
	mov r0, r12
	cmp r0, 0
	bne _0805702C
	movs r0, 0xF
	ands r0, r2
	cmp r0, 0
	beq _08056FD0
	cmp r0, 0x4
	bne _08056FE6
_08056FD0:
	adds r0, r4, 0
	adds r1, r7, 0
	movs r2, 0x1
	movs r3, 0
	bl GetTreatmentBetweenMonsters
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _0805702E
	b _0805702C
_08056FE6:
	cmp r0, 0x1
	bne _08056FFE
	adds r0, r4, 0
	adds r1, r7, 0
	movs r2, 0x1
	movs r3, 0
	bl GetTreatmentBetweenMonsters
	lsls r0, 24
	cmp r0, 0
	bne _0805702E
	b _0805702C
_08056FFE:
	cmp r0, 0x2
	beq _0805702C
	cmp r0, 0x5
	bne _0805700C
	cmp r4, r7
	beq _0805702E
	b _0805702C
_0805700C:
	cmp r0, 0x6
	bne _08057028
	adds r0, r4, 0
	adds r1, r7, 0
	movs r2, 0x1
	movs r3, 0
	bl GetTreatmentBetweenMonsters
	lsls r0, 24
	cmp r0, 0
	bne _0805702E
	cmp r4, r7
	beq _0805702E
	b _0805702C
_08057028:
	cmp r0, 0x3
	bne _0805702E
_0805702C:
	movs r6, 0x1
_0805702E:
	adds r0, r7, 0
	ldr r1, [sp, 0x1C]
	bl sub_80571F0
	lsls r0, 24
	cmp r0, 0
	beq _0805703E
	movs r6, 0
_0805703E:
	cmp r6, 0
	beq _08057060
	cmp r5, 0x3F
	bgt _08057060
	lsls r0, r5, 2
	add r0, r8
	str r7, [r0]
	ldr r0, [r7, 0x70]
	ldrb r0, [r0, 0x6]
	cmp r0, 0
	bne _0805705E
	ldr r1, _0805706C
	ldr r0, [r1]
	cmp r0, 0
	bne _0805705E
	str r7, [r1]
_0805705E:
	adds r5, 0x1
_08057060:
	adds r0, r5, 0
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805706C: .4byte gUnknown_203B438
	thumb_func_end sub_8056F80

	.align 2, 0