
// Guessing based off of 203B304
struct unkStruct_203B308
{
    // size: 0xB6 << 1
    u32 state;
    u32 unk4;
    u8 jobIndex;
    struct unkStruct_802C39C unkC;
    u32 menuAction1;
    u32 menuAction2;
    struct MenuStruct unk6C;
    struct MenuItem menuItems[8];
    u16 unkFC[8];
    struct UnkTextStruct2 unk10C[4];
};
extern struct unkStruct_203B308 *gPelipperBoard;


enum PelipperBoardStates {
    INITIALIZE_PELIPPER_BOARD,
    MAIN_PELIPPER_BOARD_MENU,
    // 2 is ???
    PELIPPER_BOARD_EXIT = 3,
    PELIPPER_JOB_INFO = 7,
    PELIPPER_JOB_LIST_MENU,
};
