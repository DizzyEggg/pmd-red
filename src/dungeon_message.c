#include "global.h"
#include "dungeon_message.h"
#include "dungeon.h"
#include "structs/dungeon_entity.h"
#include "code_803E46C.h"
#include "code_80130A8.h"
#include "code_800E9E4.h"
#include "menu_input.h"
#include "code_803E668.h"
#include "bg_palette_buffer.h"
#include "input.h"
#include "text2.h"
#include "pokemon.h"
#include "file_system.h"
#include "dungeon_util_1.h"
#include "code_800D090.h"
#include "dungeon_util.h"
#include "code_8045A00.h"
#include "exclusive_pokemon.h"
#include "dungeon_leader.h"
#include "text1.h"

void sub_80526D0(s32 r0);
static void PutStringsOnMessageLog(void);
static bool8 TryScrollLogDown(s32 a0);
static bool8 TryScrollLogUp(s32 a0);
static void CopyStringToMessageLog(const u8 *src, u32 a1, u32 a2);
static void CreateMessageLogArrow(bool8 upArrow, s32 y);
static void DisplayMessageAddToLog(Entity *r0, const char *str, u8 r2);
static bool8 sub_8052DC0(Entity *);

extern bool8 sub_8045888(Entity *r0);
extern u8 sub_803F428(Position *);
extern void sub_805E804(void);
extern void sub_803EAF0(s32, s32);
extern void sub_8052210(u32);
extern void sub_8040238(void);
extern void sub_8083E28(void);
extern bool8 sub_8008D8C(u32 strId);
extern u32 sub_8014140(s32 a0, const void *a1);
extern void sub_8083D30(void);
extern void sub_8083D08(void);
extern void sub_8007334(s32 a0);
extern void sub_80087EC(s32 a0, s32 a1, s32 a2, s32 a3, s32 a4);
extern void sub_8083CE0(u8 param_1);

extern u8 gUnknown_203B40C;
extern u8 gUnknown_202EE01;
extern Entity *gUnknown_202F1E8;
extern u8 gUnknown_203B434;
extern void (*gUnknown_203B08C)(s32);
extern void (*gUnknown_203B084)(s32 a0);
extern void (*gUnknown_203B080)(s32 a0);
extern u8 gAvailablePokemonNames[];
extern u8 gUnknown_202E5D8[];
extern u8 gUnknown_202DFE8[];
extern SpriteOAM gUnknown_202F1F0;
extern SpriteOAM gUnknown_202F200;
extern s32 gUnknown_202F1F8;
extern u8 gUnknown_202F1FC;
extern UnkTextStruct1 gUnknown_2027370[4];
extern s32 gUnknown_202EDCC;
extern u8 gFontPalette[];

extern const u8 gUnknown_80F7AF8[];
extern const u8 gUnknown_80F7AFC[];
extern const u8 gUnknown_80F7B04[];
extern const u16 gUnknown_80F7AEA[];

// Used for gUnknown_202F1FC
#define FLAG_CAN_SCROLL_UP      0x1
#define FLAG_CAN_SCROLL_DOWN    0x2

void sub_805229C(void)
{
    return sub_80526D0(0x50);
}

void TryDisplayDungeonLoggableMessage(Entity *pokemon, const char *str)
{
    if (sub_8045888(pokemon)){
        DisplayMessageAddToLog(pokemon, str, TRUE);
    }
}

UNUSED void TryDisplayDungeonLoggableMessage2(Entity *r0, const char *str)
{
    if (sub_8045888(r0)){
        DisplayMessageAddToLog(r0, str, FALSE);
    }
}

void DisplayDungeonLoggableMessageFalse(Entity *r0, const char *str)
{
    DisplayMessageAddToLog(r0, str, FALSE);
}

void TryDisplayDungeonLoggableMessage3(Entity *r0, Entity *r1, const char *str)
{
    u8 flag;
    flag = sub_8045888(r0) ? TRUE : FALSE;
    if(sub_8052DC0(r1) != 0)
    {
        flag = TRUE;
    }
    if(flag)
    {
        DisplayMessageAddToLog(r0, str, TRUE);
    }
}

void TryDisplayDungeonLoggableMessage4(Entity *r0, Entity *r1, const char *str)
{
    u8 flag;
    flag = sub_8045888(r0) ? TRUE : FALSE;
    if(sub_8052DC0(r1) != 0)
    {
        flag = TRUE;
    }
    if(flag)
    {
        DisplayMessageAddToLog(r0, str, FALSE);
    }
}

void TryDisplayDungeonLoggableMessage5(Entity *r0, Position *pos, const char *str)
{
    u8 flag;
    flag = sub_8045888(r0) ? TRUE : FALSE;
    if(sub_803F428(pos) != 0)
    {
        flag = TRUE;
    }
    if(flag)
    {
        DisplayMessageAddToLog(r0, str, TRUE);
    }
}

void DisplayDungeonLoggableMessageTrue(Entity *r0, const char *str)
{
    DisplayMessageAddToLog(r0, str, TRUE);
}

static void DisplayMessageAddToLog(Entity *r0, const char *str, bool8 r2)
{
    u8 txt[64];
    u32 r7;
    bool32 r8, r9;

    if (gUnknown_202F1E8 != r0) {
        r7 = 1;
    }
    else {
        r7 = gUnknown_203B434;
    }

    r8 = 1;
    gUnknown_202F1E8 = r0;
    gUnknown_203B434 = 0;
    r9 = FALSE;
    while (1) {
        while (1) {
            s32 val = gDungeon->unk1BDD4.unk1C060;
            if (++val == UNK_1BBD4_STR_COUNT) {
                val = 0;
            }

            if (val != gDungeon->unk1BDD4.unk1C062) {
                break;
            }
            sub_803E46C(0);
        }

        if (*str == '\0')
            break;

        gDungeon->unk1BDD4.unk1C054[gDungeon->unk1BDD4.unk1C060] = r7;
        str = xxx_format_string(str, txt, txt + 62, 128);
        if (*str == '\r') str++;
        if (*str == '\n') str++;
        CopyStringToMessageLog(txt, r7, r8);
        r7 = 0;
        r8 = 0;
        if (r2) {
            u8 *dst;

            r9 = TRUE;
            dst = gDungeon->unk1BDD4.unk0[gDungeon->unk1BDD4.unk1C060];
            ASM_MATCH_TRICK(dst);
            strncpy(dst, txt, 64);
            if (++gDungeon->unk1BDD4.unk1C060 == UNK_1BBD4_STR_COUNT) {
                gDungeon->unk1BDD4.unk1C060 = 0;
            }
        }
    }

    if (r9) {
        gDungeon->unk1BDD4.unk1C064 = 0xF0;
        if (gDungeon->unk1BDD4.unk1C06C == 0) {
            gDungeon->unk1BDD4.unk1C06C = 1;
        }
        sub_805E804();
    }
}

void xxx_draw_string_80524F0(void)
{
    struct UnkStructDungeon1BDD4 *strPtr = &gDungeon->unk1BDD4;

    switch (strPtr->unk1C06C) {
        case 0:
            break;
        case 1:
            if (sub_800EC74())
                break;
            sub_803EAF0(3, 0);
        // fall through
        case 2: {
            struct UnkDrawStringStruct sp;
            s32 id = strPtr->unk1C062;
            if (id == strPtr->unk1C060) {
                strPtr->unk1C06C = 0;
            }
            else {
                const u8 *txtPtr = strPtr->unk0[id];

                sp.unk0 = 4;
                sp.unk2 = strPtr->unk1C066;
                sp.unk10 = 7;
                sub_80073B8(0);
                if (strPtr->unk1C054[id] != 0 && strPtr->unk1C066 >= 8) {
                    sub_80078A4(0, 0, strPtr->unk1C066 - 1, 0xE0, 7);
                }

                while (1) {
                    txtPtr = xxx_handle_format_global(txtPtr, &sp);
                    if (*txtPtr == '\0' || *txtPtr == '\r' || *txtPtr == '\n')
                        break;
                    txtPtr = xxx_get_next_char_from_string(txtPtr, &sp.unk34);
                    if (sp.unk34 == 96) {
                        sp.unk0 += 6;
                    }
                    else {
                        sp.unk0 += xxx_call_draw_char(sp.unk0, sp.unk2, sp.unk34, sp.unk10, 0);
                    }
                }
                sub_80073E0(0);
                strPtr->unk1C064 = 240;
                if (++id == UNK_1BBD4_STR_COUNT) {
                    id = 0;
                }
                strPtr->unk1C062 = id;
                strPtr->unk1C066 += 11;
                if (strPtr->unk1C066 >= 48) {
                    strPtr->unk1C066 = 37;
                    strPtr->unk1C068 = 0;
                    strPtr->unk1C06C = 3;
                }
            }
            break;
        }
    case 3:
        strPtr->unk1C068++;
        gUnknown_203B08C(0);
        if (strPtr->unk1C068 > 10) {
            strPtr->unk1C06C = 2;
        }
        break;
    }

    if (strPtr->unk1C05E == 0 && strPtr->unk1C064 != 0 && --strPtr->unk1C064 == 0) {
        strPtr->unk1C06C = 0;
        sub_803EAF0(0, 0);
        sub_8052210(0);
    }
}

void sub_80526D0(s32 r0)
{
    struct UnkStructDungeon1BDD4 *strPtr = &gDungeon->unk1BDD4;
    while (strPtr->unk1C06C != 0 || gDungeon->unk1BDD4.unk1C060 != gDungeon->unk1BDD4.unk1C062) {
        sub_803E46C(r0);
    }
}

void sub_8052740(s32 a0)
{
    s32 i;
    struct UnkStructDungeon1BDD4 *strPtr = &gDungeon->unk1BDD4;

    sub_80526D0(a0);
    for (i = 0; i < 240; i++) {
        if (strPtr->unk1C064 < 180)
            break;
        if ((gRealInputs.held & AB_BUTTONS) == AB_BUTTONS)
            break;
        if (gRealInputs.pressed & JOY_EXCL_DPAD)
            break;
        sub_803E46C(a0);
    }
}

// Prints string in dialogue box and waits for A/B button press
#define PRINT_STRING_WAIT_PRESS(chosenMenuIndex)   \
{                                           \
    s32 unkPrintRet;                        \
                                            \
    do {                                    \
        DrawDialogueBoxString();            \
        sub_803E46C(9);                     \
        unkPrintRet = sub_80144A4(chosenMenuIndex);\
    } while (unkPrintRet != 0);             \
}

void DisplayDungeonMessage(struct MonDialogueSpriteInfo *monSpriteInfo, const u8 *str, bool8 a2)
{
    struct MonPortraitMsg monPortrait, *monPortraitPtr;
    s32 chosenMenuIndex;

    if (gUnknown_203B40C) {
        sub_8052740(10);
    }

    sub_803EAF0(2, 0);
    sub_8052210(0);

    monPortraitPtr = NULL;
    monPortrait.faceFile = NULL;
    monPortrait.faceData = NULL;
    if (!gDungeon->unk181e8.blinded
        && !gDungeon->unk181e8.hallucinating
        && monSpriteInfo != NULL
        && IsPokemonDialogueSpriteAvail(monSpriteInfo->species, monSpriteInfo->spriteId))
    {
        monPortrait.faceFile = GetDialogueSpriteDataPtr(monSpriteInfo->species);
        monPortrait.faceData = monPortrait.faceFile->data;
        monPortrait.pos.x = 2;
        monPortrait.pos.y = 9;
        monPortrait.spriteId = monSpriteInfo->spriteId;
        monPortrait.flip = FALSE;
        monPortrait.unkE = 0;
        monPortraitPtr = &monPortrait;
    }

    CreateMenuDialogueBoxAndPortrait(str, 0, 0, NULL, NULL, 3, 0, monPortraitPtr, (a2 != FALSE) ? 0x701 : 0x400);
    gDungeon->unk1BDD4.unk1C05F = 1;
    PRINT_STRING_WAIT_PRESS(&chosenMenuIndex);
    gDungeon->unk1BDD4.unk1C05F = 0;

    if (monPortrait.faceFile != NULL) {
        CloseFile(monPortrait.faceFile);
    }

    if (a2) {
        sub_805E804();
        sub_8040238();
        if (gUnknown_202EE01) {
            sub_803EAF0(0, 0);
        }
        else {
            sub_803EAF0(1, 0);
        }
    }

    sub_803E708(8, 9);
}

void DisplayDungeonLoggableMessage(Entity *a0, const u8 *str)
{
    DisplayDungeonMessage(NULL, str, TRUE);
    DisplayDungeonLoggableMessageFalse(a0, str);
}

struct Struct_sub_808CDB0
{
    Position pos;
    bool8 flip;
};

extern const struct Struct_sub_808CDB0 *sub_808CDB0(s32 a0);

void DisplayDungeonDialogue(const struct DungeonDialogueStruct *dialogueInfo)
{
    struct MonPortraitMsg monPortrait;
    s32 leaderId, partnerId, dialogueMonId;
    s32 chosenMenuIndex;
    Entity *leader = xxx_call_GetLeader();
    Entity *partner = GetPartnerEntity();
    struct MonPortraitMsg *monPortraitPtr = NULL;

    if (leader != NULL) {
        EntityInfo *leaderInfo = GetEntInfo(leader);
        PokemonStruct2 *monStruct2 = &gRecruitedPokemonRef->pokemon2[leaderInfo->teamIndex];

        sub_808DA0C(gAvailablePokemonNames, monStruct2);
        leaderId = leaderInfo->apparentID;
    }
    else {
        leaderId = MONSTER_NONE;
        strcpy(gAvailablePokemonNames, gUnknown_80F7AF8); // ??
    }

    if (partner != NULL) {
        EntityInfo *partnerInfo = GetEntInfo(partner);
        PokemonStruct2 *monStruct2 = &gRecruitedPokemonRef->pokemon2[partnerInfo->teamIndex];

        sub_808DA0C(gUnknown_202DFE8, monStruct2);
        partnerId = partnerInfo->apparentID;
    }
    else {
        partnerId = MONSTER_NONE;
        strcpy(gUnknown_202DFE8, gUnknown_80F7AF8); // ??
    }

    switch (dialogueInfo->unk4) {
        case 425:
            dialogueMonId = leaderId;
            sprintfStatic(gUnknown_202E5D8, gUnknown_80F7AFC, gAvailablePokemonNames);
            break;
        case 426:
            dialogueMonId = partnerId;
            sprintfStatic(gUnknown_202E5D8, gUnknown_80F7AFC, gUnknown_202DFE8);
            break;
        case 427:
            dialogueMonId = MONSTER_NONE;
            strcpy(gUnknown_202E5D8, gUnknown_80F7B04);
            break;
        default:
            dialogueMonId = dialogueInfo->unk4;
            CopyYellowMonsterNametoBuffer(gUnknown_202E5D8, dialogueMonId);
            break;
    }

    if (dialogueInfo->unk0 == 2 || dialogueInfo->unk0 == 3) {
        strcpy(gUnknown_202E5D8, gUnknown_80F7B04);
    }

    while (1) {
        if (dialogueInfo->unk6 == 0)
            break;
        if (dialogueInfo->unk6 == 7   && (dialogueMonId == MONSTER_SQUIRTLE || dialogueMonId == MONSTER_TOTODILE))
            break;
        if (dialogueInfo->unk6 == 1   && (dialogueMonId == MONSTER_BULBASAUR || dialogueMonId == MONSTER_CYNDAQUIL || dialogueMonId == MONSTER_MUDKIP || dialogueMonId == MONSTER_PIKACHU || dialogueMonId == MONSTER_CHARMANDER || dialogueMonId == MONSTER_TREECKO))
            break;
        if (dialogueInfo->unk6 == 280 && (dialogueMonId == MONSTER_TORCHIC || dialogueMonId == MONSTER_CHIKORITA))
            break;
        dialogueInfo++;
    }

    if (!gDungeon->unk181e8.blinded
        && !gDungeon->unk181e8.hallucinating
        && dialogueInfo->unk0 != 4
        && dialogueInfo->unk2 != 0x80
        && dialogueMonId != MONSTER_NONE)
    {
        const struct Struct_sub_808CDB0 *strPtr = sub_808CDB0(dialogueInfo->unk3);

        monPortraitPtr = &monPortrait;
        monPortraitPtr->faceFile = GetDialogueSpriteDataPtr(dialogueMonId);
        if (monPortraitPtr->faceFile != NULL) {
            monPortraitPtr->faceData = monPortraitPtr->faceFile->data;
            monPortraitPtr->unkE = 0;
            monPortraitPtr->spriteId = dialogueInfo->unk2;
            monPortraitPtr->flip = strPtr->flip;
            monPortraitPtr->pos.x = strPtr->pos.x;
            monPortraitPtr->pos.y = strPtr->pos.y;
            if (monPortraitPtr->pos.y < 2) {
                monPortraitPtr->pos.y = 2;
            }
        }
        else {
            monPortraitPtr = NULL;
        }
    }

    sub_8052740(10);
    sub_803EAF0(2, 0);
    sub_8052210(0);
    CreateDialogueBoxAndPortrait(dialogueInfo->str, 0, monPortraitPtr, gUnknown_80F7AEA[dialogueInfo->unk0]);
    PRINT_STRING_WAIT_PRESS(&chosenMenuIndex);

    if (monPortraitPtr != NULL) {
        CloseFile(monPortraitPtr->faceFile);
    }

    if (dialogueInfo->unk0 != 1 && dialogueInfo->unk0 != 3) {
        sub_8040238();
        sub_803EAF0(0, 0);
    }
    sub_803E708(8, 9);
}

bool32 DisplayDungeonYesNoMessage(struct MonDialogueSpriteInfo *monSpriteInfo, const u8 *str, bool32 defaultYes)
{
    struct MonPortraitMsg monPortrait, *monPortraitPtr;
    s32 chosenMenuIndex;

    sub_8052740(10);
    sub_803EAF0(2, 0);
    sub_8052210(0);

    monPortraitPtr = NULL;
    monPortrait.faceFile = NULL;
    monPortrait.faceData = NULL;
    if (!gDungeon->unk181e8.blinded
        && !gDungeon->unk181e8.hallucinating
        && monSpriteInfo != NULL
        && IsPokemonDialogueSpriteAvail(monSpriteInfo->species, monSpriteInfo->spriteId))
    {
        monPortrait.faceFile = GetDialogueSpriteDataPtr(monSpriteInfo->species);
        monPortrait.faceData = monPortrait.faceFile->data;
        monPortrait.pos.x = 2;
        monPortrait.pos.y = 9;
        monPortrait.spriteId = monSpriteInfo->spriteId;
        monPortrait.flip = FALSE;
        monPortrait.unkE = 0;
        monPortraitPtr = &monPortrait;
    }

    if (defaultYes == TRUE) {
        CreateYesNoDialogueBoxAndPortrait_DefaultYes(str, monPortraitPtr, 0x300); // Yes/No - cursor starts at Yes
    }
    else {
        CreateYesNoDialogueBoxAndPortrait_DefaultNo(str, monPortraitPtr, 0x300); // Yes/No - cursor starts at NO
    }

    PRINT_STRING_WAIT_PRESS(&chosenMenuIndex);

    if (monPortrait.faceFile != NULL) {
        CloseFile(monPortrait.faceFile);
    }

    sub_8040238();
    sub_803EAF0(0, 0);

    if (chosenMenuIndex == 1)
        return TRUE;
    else
        return FALSE;
}

s32 DisplayDungeonMenuMessage(struct MonDialogueSpriteInfo *monSpriteInfo, const u8 *str, const MenuItem *menuItems, u16 unkArg)
{
    struct MonPortraitMsg monPortrait, *monPortraitPtr;
    s32 chosenMenuIndex;

    sub_8052740(10);
    sub_803EAF0(2, 0);
    sub_8052210(0);

    monPortraitPtr = NULL;
    monPortrait.faceFile = NULL;
    monPortrait.faceData = NULL;
    if (!gDungeon->unk181e8.blinded
        && !gDungeon->unk181e8.hallucinating
        && monSpriteInfo != NULL
        && IsPokemonDialogueSpriteAvail(monSpriteInfo->species, monSpriteInfo->spriteId))
    {
        monPortrait.faceFile = GetDialogueSpriteDataPtr(monSpriteInfo->species);
        monPortrait.faceData = monPortrait.faceFile->data;
        monPortrait.pos.x = 2;
        monPortrait.pos.y = 9;
        monPortrait.spriteId = monSpriteInfo->spriteId;
        monPortrait.flip = FALSE;
        monPortrait.unkE = 0;
        monPortraitPtr = &monPortrait;
    }

    CreateMenuDialogueBoxAndPortrait(str, 0, -1, menuItems, NULL, 3, 0, monPortraitPtr, unkArg);
    PRINT_STRING_WAIT_PRESS(&chosenMenuIndex);

    if (monPortrait.faceFile != NULL) {
        CloseFile(monPortrait.faceFile);
    }

    sub_8040238();
    sub_803EAF0(0, 0);
    return chosenMenuIndex;
}

void sub_8052D44(s16 *ids, Entity *leader, Entity *partner)
{
    if (EntityExists(leader)) {
        SetMessageArgument(gAvailablePokemonNames, leader, 0);
        ids[0] = GetEntInfo(leader)->apparentID;
    }
    else {
        strcpy(gAvailablePokemonNames, gUnknown_80F7AF8);
        ids[0] = 0;
    }

    if (EntityExists(partner)) {
        SetMessageArgument(gUnknown_202DFE8, partner, 0);
        ids[1] = GetEntInfo(partner)->apparentID;
    }
    else {
        strcpy(gUnknown_202DFE8, gUnknown_80F7AF8);
        ids[1] = 0;
    }
}

static bool8 sub_8052DC0(Entity *entity)
{
    return sub_8045888(entity);
}

struct TutorialFlagMsg
{
    s32 flagId;
    const u8 *str;
};

extern const struct TutorialFlagMsg gUnknown_80FF020;
extern const struct TutorialFlagMsg gUnknown_80FF080;
extern const struct TutorialFlagMsg gUnknown_80FF0D8;
extern const struct TutorialFlagMsg gUnknown_80FF13C;
extern const struct TutorialFlagMsg gUnknown_80FF1B4;
extern const struct TutorialFlagMsg gMovementTutorial;
extern const struct TutorialFlagMsg gHungerTutorial;
extern const struct TutorialFlagMsg gFoodTutorial;
extern const struct TutorialFlagMsg gOranTutorial;
extern const struct TutorialFlagMsg gCheriTutorial;
extern const struct TutorialFlagMsg gBlastSeedTutorial;
extern const struct TutorialFlagMsg gUnknown_80FF4A0;
extern const struct TutorialFlagMsg gPechaTutorial;
extern const struct TutorialFlagMsg gSleepSeedTutorial;
extern const struct TutorialFlagMsg gMoneyTutorial;

extern const u8 *const gUnknown_80FF6F8;
extern const u8 *const gUnknown_80FF6A4;
extern const u8 gUnknown_8106990[]; // Possibly something menu related?

static inline bool32 DislayTutorialMsg(Entity *leader, const struct TutorialFlagMsg *tutorial, bool32 unkFunctionCall)
{
    const u8 *str;
    s32 flag = tutorial->flagId;
    bool8 flagDone = GetTutorialFlag(flag);

    if (!flagDone) {
        SetTutorialFlag(flag);
        sub_8083E28();
        str = tutorial->str;
        DisplayDungeonMessage(NULL, str, TRUE);
        if (unkFunctionCall) {
            DisplayDungeonLoggableMessageFalse(leader, str);
        }
        return TRUE;
    }
    return FALSE;
}

void TryDisplayGeneralTutorialMessage(void)
{
    Entity *leader = GetLeader();

    if (DislayTutorialMsg(leader, &gUnknown_80FF020, TRUE)) return;
    if (DislayTutorialMsg(leader, &gUnknown_80FF080, TRUE)) return;
    if (DislayTutorialMsg(leader, &gUnknown_80FF0D8, TRUE)) return;
    if (gDungeon->dungeonLocation.id == DUNGEON_THUNDERWAVE_CAVE) {
        if (DislayTutorialMsg(leader, &gUnknown_80FF13C, TRUE)) return;
        if (DislayTutorialMsg(leader, &gUnknown_80FF1B4, TRUE)) return;
        if (DislayTutorialMsg(leader, &gMovementTutorial, TRUE)) return;
        if (DislayTutorialMsg(leader, &gHungerTutorial, TRUE)) return;
    }
}

void TryDisplayItemPickupTutorialMessage(u8 itemId)
{
    u32 itemCategory = GetItemCategory(itemId);

    if (itemCategory == CATEGORY_FOOD_GUMMIES) {
        DislayTutorialMsg(NULL, &gFoodTutorial, FALSE);
    }
    else if (itemId == ITEM_ORAN_BERRY) {
        DislayTutorialMsg(NULL, &gOranTutorial, FALSE);
    }
    else if (itemId == ITEM_CHERI_BERRY) {
        DislayTutorialMsg(NULL, &gCheriTutorial, FALSE);
    }
    else if (itemId == ITEM_BLAST_SEED) {
        DislayTutorialMsg(NULL, &gBlastSeedTutorial, FALSE);
    }
    else if (itemId == ITEM_GRAVELEROCK) {
        DislayTutorialMsg(NULL, &gUnknown_80FF4A0, FALSE);
    }
    else if (itemId == ITEM_PECHA_BERRY) {
        DislayTutorialMsg(NULL, &gPechaTutorial, FALSE);
    }
    else if (itemId == ITEM_SLEEP_SEED) {
        DislayTutorialMsg(NULL, &gSleepSeedTutorial, FALSE);
    }
    else if (itemId == ITEM_POKE) {
        DislayTutorialMsg(NULL, &gMoneyTutorial, FALSE);
    }
}

void DisplayYouReachedDestFloorStr(void)
{
    if (gDungeon->unkA != 0) {
        DisplayDungeonMessage(NULL, gUnknown_80FF6F8, 1); // But the pokemon you seek isn't here...
    }
    else {
        DisplayDungeonMessage(NULL, gUnknown_80FF6A4, 1);
    }
}

// Used only for displaying Frosy Forest's text at floor 6
void sub_8052FB8(const u8 *str)
{
    s32 r8 = 0, r9, j;
    {
        s32 i;
        for (i = 1; i < 30; i++) {
            gUnknown_202B038[0][0][i] = 0;
        }
    }

    CreateMenuDialogueBoxAndPortrait(str, 0, 0, NULL, NULL, 2, 0, NULL, 0x30);
    r9 = 0;
    while (1) {
        if (r8 < 62) {
            r8++;
            for (j = 0; j < 8; j++) {
                SetBGPaletteBufferColorRGB(240 + j, &gFontPalette[j * 4], r8 / 2, NULL);
            }
        }
        else {
            r9++;
            if (r9 & 8) {
                u32 shape, tileNum, unk6, spriteX, mask, palNum;

                gUnknown_202F1F0.attrib1 &= ~SPRITEOAM_MASK_AFFINEMODE1;
                gUnknown_202F1F0.attrib1 &= ~SPRITEOAM_MASK_AFFINEMODE2;
                gUnknown_202F1F0.attrib1 &= ~SPRITEOAM_MASK_OBJMODE;
                gUnknown_202F1F0.attrib1 &= ~SPRITEOAM_MASK_MOSAIC;
                gUnknown_202F1F0.attrib1 &= ~SPRITEOAM_MASK_BPP;

                gUnknown_202F1F0.attrib1 &= ~SPRITEOAM_MASK_SHAPE;
                shape = 1;
                shape <<= SPRITEOAM_SHIFT_SHAPE;
                ASM_MATCH_TRICK(shape);
                gUnknown_202F1F0.attrib1 |= shape;

                tileNum = 0x3F0 << SPRITEOAM_SHIFT_TILENUM;
                gUnknown_202F1F0.attrib3 &= ~SPRITEOAM_MASK_TILENUM;
                gUnknown_202F1F0.attrib3 |= tileNum;

                gUnknown_202F1F0.attrib3 &= ~SPRITEOAM_MASK_PRIORITY;

                mask = 0xF;
                palNum = (15 & SPRITEOAM_MAX_PALETTENUM) << SPRITEOAM_SHIFT_PALETTENUM;
                gUnknown_202F1F0.attrib3 &= ~SPRITEOAM_MASK_PALETTENUM;
                gUnknown_202F1F0.attrib3 |= palNum;

                unk6 = 0x78 << SPRITEOAM_SHIFT_UNK6_4;
                gUnknown_202F1F0.unk6 &= mask;
                gUnknown_202F1F0.unk6 |= unk6;

                gUnknown_202F1F0.attrib2 &= ~SPRITEOAM_MASK_X;
                gUnknown_202F1F0.attrib2 &= ~SPRITEOAM_MASK_MATRIXNUM;

                spriteX = 0x70 & SPRITEOAM_MAX_X;
                gUnknown_202F1F0.attrib2 &= ~SPRITEOAM_MASK_SIZE;
                gUnknown_202F1F0.attrib2 |= spriteX;

                AddSprite(&gUnknown_202F1F0, 0x100, NULL, NULL);
            }
            if (gRealInputs.pressed & AB_BUTTONS)
                break;
        }
        DrawDialogueBoxString();
        sub_803E46C(9);
    }

    while (r8 >= 0) {
        for (j = 0; j < 8; j++) {
            SetBGPaletteBufferColorRGB(240 + j, &gFontPalette[j * 4], r8 / 2, NULL);
        }
        DrawDialogueBoxString();
        sub_803E46C(9);
        r8--;
    }

    xxx_call_save_unk_text_struct_800641C(NULL, TRUE, TRUE);
    sub_803E46C(9);
    sub_8040238();
    for (j = 0; j < 8; j++) {
        SetBGPaletteBufferColorArray(240 + j, &gFontPalette[j * 4]);
    }
    sub_803E708(8, 9);
}

const u8 *GetCurrentDungeonName(void)
{
    if (gDungeon->unk678 == 1) {
        return GetDungeonName1(DUNGEON_OUT_ON_RESCUE);
    }
    else {
        return GetDungeonName1(gDungeon->dungeonLocation.id);
    }
}

void ResetMessageLog(void)
{
    s32 i;

    gDungeon->unk16 = 0;
    gDungeon->unkB = 1;
    for (i = 0; i < MESSAGE_LOG_STRINGS_COUNT; i++) {
        gDungeon->messageLogStrings[i].str[0] = '\0';
        gDungeon->messageLogStrings[i].unk0 = 0;
        gDungeon->messageLogStrings[i].unk1 = 0;
        gDungeon->messageLogStrings[i].unk2 = 0;
    }
}

UNUSED void sub_8053200(void)
{
    gDungeon->unkB = 1;
}

static void CopyStringToMessageLog(const u8 *src, u32 a1, u32 a2)
{
    u8 *dst = &gDungeon->messageLogStrings[gDungeon->unk16].str[0];
    u8 *maxDst = &gDungeon->messageLogStrings[gDungeon->unk16].str[MESSAGE_LOG_BUFFER_SIZE - 1];
    gDungeon->messageLogStrings[gDungeon->unk16].unk0 = 1;
    gDungeon->messageLogStrings[gDungeon->unk16].unk1 = a1;
    gDungeon->messageLogStrings[gDungeon->unk16].unk2 = a2;

    while (*src != '\0') {
        if (*src == '\r') break;
        if (dst < maxDst) {
            *(dst++) = *src;
        }
        src++;
    }

    *dst = '\0';
    if (++gDungeon->unk16 >= MESSAGE_LOG_STRINGS_COUNT) {
        gDungeon->unk16 = 0;
    }

    gDungeon->unkB = 1;
}

#define MESSAGE_LOG_ROW_COUNT 8 // How many log messages are shown

bool32 DisplayMessageLog(void)
{
    bool8 unkRet;
    MenuInputStructSub menuInput;

    sub_801317C(&menuInput);
    sub_803EAF0(9, 0);
    do {
        sub_803E46C(13);
        unkRet = sub_8008D8C(0);
    } while (unkRet);

    gUnknown_202F1F8 = 0;
    gUnknown_202F1FC = 0;
    PutStringsOnMessageLog();

    while (1) {
        s32 unkVar;
        bool32 scroll = FALSE;

        gUnknown_202F1FC = 0;
        nullsub_34(&menuInput, 0);
        unkVar = sub_8014140(0, gUnknown_8106990);

        if (TryScrollLogUp(unkVar))
            scroll = TRUE;
        if (TryScrollLogDown(unkVar))
            scroll = TRUE;

        if (!scroll) {
            sub_803E46C(0xD);
        }

        if (gUnknown_202F1FC & FLAG_CAN_SCROLL_UP) {
            CreateMessageLogArrow(TRUE, -8);
        }
        if (gUnknown_202F1FC & FLAG_CAN_SCROLL_DOWN) {
            CreateMessageLogArrow(FALSE, 114);
        }

        if (!sub_80048C8()) {
            if (gRealInputs.pressed & B_BUTTON || menuInput.b_button) {
                sub_8083D30();
                break;
            }
            else if (gRealInputs.pressed & A_BUTTON) {
                sub_8083D08();
                break;
            }
        }
    }

    sub_803EAF0(0, 0);
    return TRUE;
}

static void PutStringsOnMessageLog(void)
{
    s32 i;
    s32 arrId = gDungeon->unk16;
    s32 y = 16;

    arrId -= 8;
    if (arrId < 0)
        arrId += MESSAGE_LOG_STRINGS_COUNT;

    sub_80073B8(0);
    for (i = 0; i < MESSAGE_LOG_ROW_COUNT; i++) {
        struct MessageLogString *msgLogString = &gDungeon->messageLogStrings[arrId];

        if (msgLogString->unk0) {
            if (msgLogString->unk1) {
                sub_80078A4(0, 0, y, 0xE0, 7);
            }
            PrintStringOnWindow(8, y + 3, msgLogString->str, 0, 0xD);
            y += 14;
        }
        if (++arrId >= MESSAGE_LOG_STRINGS_COUNT)
            arrId = 0;
    }

    sub_80073E0(0);
    sub_8007334(0);
}

static bool8 TryScrollLogUp(s32 a0)
{
    s32 i;
    struct MessageLogString *msgLogString;
    s32 y;
    s32 arrId;

    while (1)
    {
        arrId = gDungeon->unk16 + gUnknown_202F1F8;
        y = 2;
        arrId -= 9;
        while (arrId < 0) {
            arrId += MESSAGE_LOG_STRINGS_COUNT;
        }
        while (arrId >= MESSAGE_LOG_STRINGS_COUNT) {
            arrId -= MESSAGE_LOG_STRINGS_COUNT;
        }

        if (gDungeon->messageLogStrings[arrId].unk0 && gUnknown_202F1F8 > -12) {
            gUnknown_202F1FC |= FLAG_CAN_SCROLL_UP;
            if (gRealInputs.repeated & DPAD_UP)
                break;
            if (a0 == 1)
                break;
        }

        return FALSE;
    }
    sub_8083CE0(0);
    sub_80073B8(0);
    msgLogString = &gDungeon->messageLogStrings[arrId];
    if (msgLogString->unk0) {
        sub_80087EC(0, 0, 0, 0xD0, 0x10);
        if (msgLogString->unk1) {
            sub_80078A4(0, 0, y, 0xE0, 7);
        }
        PrintStringOnWindow(8, y + 3, msgLogString->str, 0, 0xD);
    }
    sub_80073E0(0);
    sub_803E46C(0xD);

    for (i = 0; i < 7; i++) {
        gUnknown_203B084(0);
        sub_803E46C(0xD);
    }

    gUnknown_202F1F8--;
    return TRUE;
}

static bool8 TryScrollLogDown(s32 a0)
{
    s32 i;
    struct MessageLogString *msgLogString;
    s32 y;
    s32 arrId;

    while (1)
    {
        arrId = gDungeon->unk16 + gUnknown_202F1F8;
        y = 128;
        while (arrId < 0) {
            arrId += MESSAGE_LOG_STRINGS_COUNT;
        }
        while (arrId >= MESSAGE_LOG_STRINGS_COUNT) {
            arrId -= MESSAGE_LOG_STRINGS_COUNT;
        }

        if (gUnknown_202F1F8 < 0) {
            gUnknown_202F1FC |= FLAG_CAN_SCROLL_DOWN;
            if (gRealInputs.repeated & DPAD_DOWN)
                break;
            if (a0 == 2)
                break;
        }

        return FALSE;
    }
    sub_8083CE0(0);
    sub_80073B8(0);
    msgLogString = &gDungeon->messageLogStrings[arrId];
    if (msgLogString->unk0) {
        sub_80087EC(0, 0, y, 0x68, 0x10);
        if (msgLogString->unk1) {
            sub_80078A4(0, 0, y, 0xE0, 7);
        }
        PrintStringOnWindow(8, y + 3, msgLogString->str, 0, 0xD);
    }
    sub_80073E0(0);
    sub_803E46C(0xD);

    for (i = 0; i < 7; i++) {
        gUnknown_203B080(0);
        sub_803E46C(0xD);
    }

    gUnknown_202F1F8++;
    return TRUE;
}

static void CreateMessageLogArrow(bool8 upArrow, s32 y)
{
    struct UnkTextStruct1 *unkStr = &gUnknown_2027370[0];
    if (!(gUnknown_202EDCC & 8)) {
        u32 matrixNum, xSprite, mask, ySprite, shape, yMask;

        gUnknown_202F200.attrib1 &= ~SPRITEOAM_MASK_AFFINEMODE1;
        gUnknown_202F200.attrib1 &= ~SPRITEOAM_MASK_AFFINEMODE2;
        gUnknown_202F200.attrib1 &= ~SPRITEOAM_MASK_OBJMODE;
        gUnknown_202F200.attrib1 &= ~SPRITEOAM_MASK_MOSAIC;
        gUnknown_202F200.attrib1 &= ~SPRITEOAM_MASK_BPP;

        matrixNum = (upArrow != FALSE) ? (16) : 0;
        // You may be thinking what is this empty loop doing here, but the better question is: Why do these unholy sprite macros exist?
        do {} while (0);
        matrixNum <<= 9;
        gUnknown_202F200.attrib2 &= ~SPRITEOAM_MASK_MATRIXNUM;
        gUnknown_202F200.attrib2 |= matrixNum;

        mask = 0xF;
        yMask = 0xFFF;
        ySprite = (yMask & (unkStr->unk2 * 8 + y)) << 4;
        gUnknown_202F200.unk6 &= mask;
        gUnknown_202F200.unk6 |= ySprite;

        xSprite = 0x1FF & ((unkStr->unk0 * 8) + 92);
        gUnknown_202F200.attrib2 &= ~SPRITEOAM_MASK_X;
        gUnknown_202F200.attrib2 |= xSprite;

        shape = 1;
        shape <<= SPRITEOAM_SHIFT_SHAPE;
        gUnknown_202F200.attrib1 &= ~SPRITEOAM_MASK_SHAPE;
        gUnknown_202F200.attrib1 |= shape;

        gUnknown_202F200.attrib2 &= ~SPRITEOAM_MASK_SIZE;

        gUnknown_202F200.attrib3 = 0xF3F0;

        AddSprite(&gUnknown_202F200, 127, NULL, NULL);
    }
}