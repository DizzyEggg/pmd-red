











static const struct ScriptCommand s_gs180_g0_s0_station_sref_script[] = { /* 0x82302f8 */
    DEBUGINFO,
    SELECT_MAP(180),
    BGM_STOP,
    JUMP_SCRIPT(COMMON_ENTER),
};

static const struct ScriptRef s_gs180_g0_s0_station_sref = { 404, 1, NULL /* ENTER_CONTROL */, s_gs180_g0_s0_station_sref_script }; /* 0x8230364 */

static const struct ScriptCommand s_gs180_g1_s0_station_sref_script[] = { /* 0x8230370 */
    DEBUGINFO,
    SELECT_MAP(180),
    SELECT_ENTITIES(-1, 0),
    BGM_SWITCH(14),
    { 0x22, 0x01,  0x001e,  0x00000000,  0x00000000, NULL },
    { 0xe3, 0x00,  0x0003,  0x00000000,  0x00000000, NULL },
    { 0x02, 0x00,  0x0000,  0x00000001,  0x00000000, NULL },
    RET,
};

static const struct ScriptRef s_gs180_g1_s0_station_sref = { 400, 7, NULL /* EVENT_CONTROL */, s_gs180_g1_s0_station_sref_script }; /* 0x82303f0 */

static const struct ScriptCommand s_gs180_g1_s0_eff0_script[] = { /* 0x82303fc */
    DEBUGINFO,
    { 0x99, 0x00,  0x0000,  0x00000000,  0x00000000, NULL },
    WAIT(1),
    { 0xe3, 0x00,  0x0004,  0x00000000,  0x00000000, NULL },
    WAIT(30),
    { 0x23, 0x00,  0x0050,  0x00000000,  0x00000000, NULL },
    { 0xe3, 0x00,  0x0004,  0x00000000,  0x00000000, NULL },
    END_DELETE,
};

static const struct ScriptCommand s_gs180_g1_s0_lives0_dlg0[] = { /* 0x823047c */
    DEBUGINFO,
    { 0x54, 0x00,  0x0002,  0x00000000,  0x00000000, NULL },
    { 0x59, 0x00,  0x0000,  0x00000064,  0x00000000, NULL },
    { 0x2d, 0x07,  0x0000,  0x00000000,  0x00000000, NULL },
    { 0xdf, 0x00,  0x0000,  0x00000000,  0x00000000, NULL },
    WAIT(30),
    { 0xe4, 0x00,  0x0006,  0x00000000,  0x00000000, NULL },
    { 0x6a, 0x00,  0x0100,  0x00000000, -0x00000064, NULL },
    WAIT(10),
    { 0xe4, 0x00,  0x0007,  0x00000000,  0x00000000, NULL },
    { 0xe4, 0x00,  0x0008,  0x00000000,  0x00000000, NULL },
    { 0xe3, 0x00,  0x0005,  0x00000000,  0x00000000, NULL },
    { 0x2d, 0x0a,  0x0000,  0x00000001,  0x00000000, NULL },
    { 0x2e, 0x0e,  0x0002,  0x00000000,  0x00000000, NULL },
    { 0x34, 0x00,  0x0002,  0x00000000,  0x00000000, _(" OH, YOU ARE HERE.\nBZBZBZZ!") },
    { 0x34, 0x00,  0x0002,  0x00000000,  0x00000000, _(" MY FRIENDS ARE IN THIS\nCAVERN. BZBZBZZ.") },
    { 0x34, 0x00,  0x0002,  0x00000000,  0x00000000, _(" MY FRIENDS SHOULD BE\nON B{VALUE_0}F. PLEASE HELP THEM!\nBZBZBZZZT!") },
    { 0x30, 0x00,  0x0000,  0x00000000,  0x00000000, NULL },
    { 0xe4, 0x00,  0x0006,  0x00000000,  0x00000000, NULL },
    { 0x93, 0x04,  0x000a,  0x00000022,  0x00000000, NULL },
    WAIT(30),
    { 0x54, 0x00,  0x002f,  0x00000000,  0x00000000, NULL },
    { 0xdd, 0x00,  0x0000,  0x00000000,  0x00000000, NULL },
    { 0x54, 0x00,  0x0002,  0x00000000,  0x00000000, NULL },
    WAIT(15),
    { 0x91, 0x08,  0x000a,  0x00000004,  0x00000000, NULL },
    WAIT(15),
    { 0xe4, 0x00,  0x0007,  0x00000000,  0x00000000, NULL },
    { 0xe4, 0x00,  0x0008,  0x00000000,  0x00000000, NULL },
    WAIT(30),
    { 0xe4, 0x00,  0x0004,  0x00000000,  0x00000000, NULL },
    { 0xe4, 0x00,  0x0006,  0x00000000,  0x00000000, NULL },
    { 0x53, 0x00,  0x0000,  0x0000001f,  0x00000000, NULL },
    { 0x6b, 0x00,  0x0099,  0x00000000,  0x00000000, NULL },
    { 0x52, 0x00,  0x0000,  0x0000001f,  0x00000000, NULL },
    { 0xe4, 0x00,  0x0003,  0x00000000,  0x00000000, NULL },
    HALT,
};


static const struct ScriptCommand s_gs180_g1_s0_lives1_dlg0[] = { /* 0x8230758 */
    DEBUGINFO,
    { 0x54, 0x00,  0x0002,  0x00000000,  0x00000000, NULL },
    { 0x59, 0x00,  0x0000,  0x00000064,  0x00000000, NULL },
    { 0x2d, 0x07,  0x0001,  0x00000000,  0x00000000, NULL },
    { 0xe3, 0x00,  0x0006,  0x00000000,  0x00000000, NULL },
    { 0x6a, 0x00,  0x0100,  0x00000000, -0x00000064, NULL },
    { 0xe3, 0x00,  0x0006,  0x00000000,  0x00000000, NULL },
    { 0x93, 0x04,  0x000a,  0x00000000,  0x00000000, NULL },
    WAIT(30),
    { 0x54, 0x00,  0x002f,  0x00000000,  0x00000000, NULL },
    { 0xdd, 0x00,  0x0000,  0x00000000,  0x00000000, NULL },
    { 0x54, 0x00,  0x0002,  0x00000000,  0x00000000, NULL },
    WAIT(15),
    { 0x91, 0x08,  0x000a,  0x00000004,  0x00000000, NULL },
    WAIT(15),
    { 0xe3, 0x00,  0x0006,  0x00000000,  0x00000000, NULL },
    { 0x53, 0x00,  0x0000,  0x0000001f,  0x00000000, NULL },
    WAIT(15),
    { 0x6b, 0x00,  0x0099,  0x00000000,  0x00000000, NULL },
    { 0x52, 0x00,  0x0000,  0x0000001f,  0x00000000, NULL },
    HALT,
};

static const struct ScriptCommand s_gs180_g1_s0_lives2_dlg0[] = { /* 0x82308a8 */
    DEBUGINFO,
    { 0x54, 0x00,  0x0002,  0x00000000,  0x00000000, NULL },
    { 0x2d, 0x07,  0x0002,  0x00000000,  0x00000000, NULL },
    { 0xe3, 0x00,  0x0007,  0x00000000,  0x00000000, NULL },
    { 0x91, 0x04,  0x0001,  0x00000000,  0x00000000, NULL },
    { 0xe4, 0x00,  0x0005,  0x00000000,  0x00000000, NULL },
    { 0xe3, 0x00,  0x0007,  0x00000000,  0x00000000, NULL },
    { 0x62, 0x00,  0x0080, -0x00000010,  0x00000000, NULL },
    { 0x93, 0x04,  0x000a,  0x00000041,  0x00000000, NULL },
    HALT,
};

static const struct ScriptCommand s_gs180_g1_s0_lives3_dlg0[] = { /* 0x8230948 */
    DEBUGINFO,
    { 0x54, 0x00,  0x0002,  0x00000000,  0x00000000, NULL },
    { 0x2d, 0x07,  0x0003,  0x00000000,  0x00000000, NULL },
    { 0xe3, 0x00,  0x0008,  0x00000000,  0x00000000, NULL },
    { 0x91, 0x04,  0x0002,  0x00000000,  0x00000000, NULL },
    { 0xe3, 0x00,  0x0008,  0x00000000,  0x00000000, NULL },
    { 0x62, 0x00,  0x0080,  0x00000010,  0x00000000, NULL },
    { 0x93, 0x04,  0x000a,  0x00000040,  0x00000000, NULL },
    HALT,
};

static const struct ScriptCommand s_gs180_g2_s0_station_sref_script[] = { /* 0x82309d8 */
    DEBUGINFO,
    SELECT_MAP(180),
    SELECT_ENTITIES(-1, 0),
    BGM_SWITCH(14),
    { 0x22, 0x01,  0x001e,  0x00000000,  0x00000000, NULL },
    { 0xe3, 0x00,  0x0003,  0x00000000,  0x00000000, NULL },
    { 0x02, 0x00,  0x0000,  0x00000001,  0x00000000, NULL },
    RET,
};

static const struct ScriptRef s_gs180_g2_s0_station_sref = { 400, 7, NULL /* EVENT_CONTROL */, s_gs180_g2_s0_station_sref_script }; /* 0x8230a58 */

static const struct ScriptCommand s_gs180_g2_s0_eff0_script[] = { /* 0x8230a64 */
    DEBUGINFO,
    { 0x99, 0x00,  0x0000,  0x00000000,  0x00000000, NULL },
    WAIT(1),
    { 0xe3, 0x00,  0x0004,  0x00000000,  0x00000000, NULL },
    WAIT(30),
    { 0x23, 0x00,  0x0050,  0x00000000,  0x00000000, NULL },
    { 0xe3, 0x00,  0x0004,  0x00000000,  0x00000000, NULL },
    END_DELETE,
};

static const struct ScriptCommand s_gs180_g2_s0_lives0_dlg0[] = { /* 0x8230ae4 */
    DEBUGINFO,
    { 0x54, 0x00,  0x0002,  0x00000000,  0x00000000, NULL },
    { 0x2d, 0x07,  0x0000,  0x00000000,  0x00000000, NULL },
    { 0x2d, 0x09,  0x0002,  0x0000003c,  0x00000000, NULL },
    { 0x59, 0x00,  0x0000,  0x00000064,  0x00000000, NULL },
    { 0xdf, 0x00,  0x0000,  0x00000000,  0x00000000, NULL },
    WAIT(30),
    { 0xe4, 0x00,  0x0006,  0x00000000,  0x00000000, NULL },
    { 0x6a, 0x00,  0x0100,  0x00000000, -0x00000064, NULL },
    { 0xe3, 0x00,  0x0005,  0x00000000,  0x00000000, NULL },
    WAIT(10),
    { 0xe4, 0x00,  0x0007,  0x00000000,  0x00000000, NULL },
    { 0xe4, 0x00,  0x0008,  0x00000000,  0x00000000, NULL },
    WAIT(30),
    { 0x2e, 0x03,  0x0001,  0x00000000,  0x00000000, NULL },
    { 0x34, 0x00,  0x0001,  0x00000000,  0x00000000, _(" The {NAME_2} are in\nthere somewhere.") },
    { 0xe4, 0x00,  0x0006,  0x00000000,  0x00000000, NULL },
    { 0xe3, 0x00,  0x0005,  0x00000000,  0x00000000, NULL },
    { 0x93, 0x04,  0x000a,  0x00000022,  0x00000000, NULL },
    MSG_VAR(2, PARTNER_TALK_KIND, 1),
    VARIANT(/* == */  1, _(" Let's give it our best\nand rescue them {NAME_0}!")),
    VARIANT_DEFAULT(_(" Let's do our best to rescue\nthem, {NAME_0}!")),
    { 0x30, 0x00,  0x0000,  0x00000000,  0x00000000, NULL },
    { 0xe4, 0x00,  0x0004,  0x00000000,  0x00000000, NULL },
    { 0xe4, 0x00,  0x0006,  0x00000000,  0x00000000, NULL },
    { 0xe4, 0x00,  0x0007,  0x00000000,  0x00000000, NULL },
    { 0xe4, 0x00,  0x0008,  0x00000000,  0x00000000, NULL },
    { 0x53, 0x00,  0x0000,  0x0000001f,  0x00000000, NULL },
    { 0x6b, 0x00,  0x0099,  0x00000001,  0x00000000, NULL },
    { 0x52, 0x00,  0x0000,  0x0000001f,  0x00000000, NULL },
    { 0xe4, 0x00,  0x0003,  0x00000000,  0x00000000, NULL },
    HALT,
};


static const struct ScriptCommand s_gs180_g2_s0_lives1_dlg0[] = { /* 0x8230d64 */
    DEBUGINFO,
    { 0x54, 0x00,  0x0002,  0x00000000,  0x00000000, NULL },
    { 0x2d, 0x07,  0x0001,  0x00000000,  0x00000000, NULL },
    { 0x59, 0x00,  0x0000,  0x00000064,  0x00000000, NULL },
    { 0xe3, 0x00,  0x0006,  0x00000000,  0x00000000, NULL },
    { 0x6a, 0x00,  0x0100,  0x00000000, -0x00000064, NULL },
    { 0xe4, 0x00,  0x0005,  0x00000000,  0x00000000, NULL },
    { 0xe3, 0x00,  0x0006,  0x00000000,  0x00000000, NULL },
    { 0x93, 0x04,  0x000a,  0x00000000,  0x00000000, NULL },
    { 0xe4, 0x00,  0x0005,  0x00000000,  0x00000000, NULL },
    { 0xe3, 0x00,  0x0006,  0x00000000,  0x00000000, NULL },
    { 0x53, 0x00,  0x0000,  0x0000001f,  0x00000000, NULL },
    WAIT(15),
    { 0x6b, 0x00,  0x0099,  0x00000001,  0x00000000, NULL },
    { 0x52, 0x00,  0x0000,  0x0000001f,  0x00000000, NULL },
    HALT,
};

static const struct ScriptCommand s_gs180_g2_s0_lives2_dlg0[] = { /* 0x8230e64 */
    DEBUGINFO,
    { 0x54, 0x00,  0x0002,  0x00000000,  0x00000000, NULL },
    { 0x2d, 0x07,  0x0002,  0x00000000,  0x00000000, NULL },
    { 0xe3, 0x00,  0x0007,  0x00000000,  0x00000000, NULL },
    { 0x91, 0x04,  0x0001,  0x00000000,  0x00000000, NULL },
    { 0xe4, 0x00,  0x0005,  0x00000000,  0x00000000, NULL },
    { 0xe3, 0x00,  0x0007,  0x00000000,  0x00000000, NULL },
    { 0x91, 0x14,  0x0002,  0x00000003,  0x00000000, NULL },
    HALT,
};

static const struct ScriptCommand s_gs180_g2_s0_lives3_dlg0[] = { /* 0x8230ef4 */
    DEBUGINFO,
    { 0x54, 0x00,  0x0002,  0x00000000,  0x00000000, NULL },
    { 0x2d, 0x07,  0x0003,  0x00000000,  0x00000000, NULL },
    { 0xe3, 0x00,  0x0008,  0x00000000,  0x00000000, NULL },
    { 0x91, 0x04,  0x0002,  0x00000000,  0x00000000, NULL },
    { 0xe3, 0x00,  0x0008,  0x00000000,  0x00000000, NULL },
    { 0x91, 0x14,  0x0001,  0x00000005,  0x00000000, NULL },
    HALT,
};

static const struct ScriptCommand s_gs180_g3_s0_station_sref_script[] = { /* 0x8230f74 */
    DEBUGINFO,
    SELECT_MAP(180),
    SELECT_ENTITIES(-1, 0),
    BGM_SWITCH(103),
    WAIT(30),
    { 0x27, 0x01,  0x0001,  0x0000003c,  0x00ffffff, NULL },
    { 0xe3, 0x00,  0x0003,  0x00000000,  0x00000000, NULL },
    { 0x23, 0x01,  0x003c,  0x00000000,  0x00000000, NULL },
    WAIT(30),
    RET,
};

static const struct ScriptRef s_gs180_g3_s0_station_sref = { 400, 7, NULL /* EVENT_CONTROL */, s_gs180_g3_s0_station_sref_script }; /* 0x8231014 */

static const struct ScriptCommand s_gs180_g3_s0_lives0_dlg0[] = { /* 0x8231020 */
    DEBUGINFO,
    { 0x54, 0x00,  0x0002,  0x00000000,  0x00000000, NULL },
    { 0x2d, 0x07,  0x0000,  0x00000000,  0x00000000, NULL },
    { 0xdf, 0x00,  0x0000,  0x00000000,  0x00000000, NULL },
    WAIT(90),
    { 0x2e, 0x03,  0x0003,  0x00000001,  0x00000000, NULL },
    { 0x2e, 0x0e,  0x0004,  0x00000001,  0x00000000, NULL },
    { 0x2e, 0x02,  0x0005,  0x00000001,  0x00000000, NULL },
    { 0xe4, 0x00,  0x0009,  0x00000000,  0x00000000, NULL },
    { 0xe4, 0x00,  0x0006,  0x00000000,  0x00000000, NULL },
    { 0xe4, 0x00,  0x0007,  0x00000000,  0x00000000, NULL },
    { 0xe4, 0x00,  0x0008,  0x00000000,  0x00000000, NULL },
    { 0xe3, 0x00,  0x0005,  0x00000000,  0x00000000, NULL },
    { 0x34, 0x00,  0x0004,  0x00000000,  0x00000000, _(" OUR BODIES SEPARATED.\nBZBZBZZ. REJOICE! BZBZBZZT!") },
    { 0xe4, 0x00,  0x0009,  0x00000000,  0x00000000, NULL },
    { 0x30, 0x00,  0x0000,  0x00000000,  0x00000000, NULL },
    WAIT(10),
    { 0xe4, 0x00,  0x000a,  0x00000000,  0x00000000, NULL },
    { 0xe3, 0x00,  0x0005,  0x00000000,  0x00000000, NULL },
    { 0x34, 0x00,  0x0005,  0x00000000,  0x00000000, _(" YAY! BZBZBZZT!") },
    { 0xe4, 0x00,  0x000a,  0x00000000,  0x00000000, NULL },
    { 0x30, 0x00,  0x0000,  0x00000000,  0x00000000, NULL },
    WAIT(10),
    { 0xe4, 0x00,  0x0009,  0x00000000,  0x00000000, NULL },
    { 0xe3, 0x00,  0x0005,  0x00000000,  0x00000000, NULL },
    { 0x34, 0x00,  0x0004,  0x00000000,  0x00000000, _(" YAY! BZBZBZZT!") },
    { 0xe4, 0x00,  0x0009,  0x00000000,  0x00000000, NULL },
    { 0x30, 0x00,  0x0000,  0x00000000,  0x00000000, NULL },
    WAIT(10),
    { 0xe4, 0x00,  0x0008,  0x00000000,  0x00000000, NULL },
    { 0xe3, 0x00,  0x0005,  0x00000000,  0x00000000, NULL },
    { 0x34, 0x00,  0x0003,  0x00000000,  0x00000000, _(" BE THANKFUL, YOU TWO.") },
    { 0x30, 0x00,  0x0000,  0x00000000,  0x00000000, NULL },
    { 0xe4, 0x00,  0x0008,  0x00000000,  0x00000000, NULL },
    { 0xe3, 0x00,  0x0005,  0x00000000,  0x00000000, NULL },
    WAIT(30),
    { 0xe4, 0x00,  0x0006,  0x00000000,  0x00000000, NULL },
    { 0xe4, 0x00,  0x0007,  0x00000000,  0x00000000, NULL },
    { 0xe4, 0x00,  0x0008,  0x00000000,  0x00000000, NULL },
    { 0xe4, 0x00,  0x0009,  0x00000000,  0x00000000, NULL },
    { 0xe4, 0x00,  0x000a,  0x00000000,  0x00000000, NULL },
    { 0xe3, 0x00,  0x0005,  0x00000000,  0x00000000, NULL },
    { 0x2e, 0x0f,  0x0002,  0x00000000,  0x00000000, NULL },
    { 0x34, 0x00,  0x0002,  0x00000000,  0x00000000, _(" YOU ARE OUR HERO.\nTHANK YOU. BZBZBZZ!") },
    { 0x30, 0x00,  0x0000,  0x00000000,  0x00000000, NULL },
    WAIT(30),
    { 0x3c, 0x2b,  0x0000,  0x00000003,  0x00000001, NULL },
    { 0x3c, 0x2c,  0x0000,  0x0000003a,  0x00000001, NULL },
    { 0x3c, 0x2c,  0x0000,  0x0000003f,  0x00000001, NULL },
    { 0x30, 0x00,  0x0000,  0x00000000,  0x00000000, NULL },
    WAIT(30),
    { 0xe4, 0x00,  0x0007,  0x00000000,  0x00000000, NULL },
    { 0xe4, 0x00,  0x0008,  0x00000000,  0x00000000, NULL },
    { 0xe4, 0x00,  0x0009,  0x00000000,  0x00000000, NULL },
    { 0xe4, 0x00,  0x000a,  0x00000000,  0x00000000, NULL },
    WAIT(30),
    { 0xe4, 0x00,  0x0006,  0x00000000,  0x00000000, NULL },
    { 0x91, 0x08,  0x0002,  0x00000000,  0x00000000, NULL },
    WAIT(90),
    { 0xe4, 0x00,  0x0003,  0x00000000,  0x00000000, NULL },
    HALT,
};




static const struct ScriptCommand s_gs180_g3_s0_lives1_dlg0[] = { /* 0x8231478 */
    DEBUGINFO,
    { 0x54, 0x00,  0x0002,  0x00000000,  0x00000000, NULL },
    { 0x2d, 0x07,  0x0001,  0x00000000,  0x00000000, NULL },
    { 0xe3, 0x00,  0x0006,  0x00000000,  0x00000000, NULL },
    { 0x91, 0x04,  0x000a,  0x00000005,  0x00000000, NULL },
    { 0xe3, 0x00,  0x0006,  0x00000000,  0x00000000, NULL },
    { 0x91, 0x04,  0x000a,  0x00000004,  0x00000000, NULL },
    { 0xe3, 0x00,  0x0006,  0x00000000,  0x00000000, NULL },
    { 0x91, 0x08,  0x0001,  0x00000000,  0x00000000, NULL },
    HALT,
};

static const struct ScriptCommand s_gs180_g3_s0_lives2_dlg0[] = { /* 0x8231518 */
    DEBUGINFO,
    { 0x54, 0x00,  0x0002,  0x00000000,  0x00000000, NULL },
    { 0x2d, 0x07,  0x0002,  0x00000000,  0x00000000, NULL },
    { 0x53, 0x00,  0x0000,  0x0000001f,  0x00000000, NULL },
    { 0xe3, 0x00,  0x0007,  0x00000000,  0x00000000, NULL },
    { 0x91, 0x04,  0x000a,  0x00000006,  0x00000000, NULL },
    { 0xe3, 0x00,  0x0007,  0x00000000,  0x00000000, NULL },
    { 0x91, 0x04,  0x000a,  0x00000000,  0x00000000, NULL },
    { 0xe4, 0x00,  0x0005,  0x00000000,  0x00000000, NULL },
    { 0xe3, 0x00,  0x0007,  0x00000000,  0x00000000, NULL },
    { 0x6b, 0x00,  0x0100,  0x00000003,  0x00000000, NULL },
    { 0x52, 0x00,  0x0000,  0x0000001f,  0x00000000, NULL },
    HALT,
};

static const struct ScriptCommand s_gs180_g3_s0_lives3_dlg0[] = { /* 0x82315e8 */
    DEBUGINFO,
    { 0x54, 0x00,  0x0002,  0x00000000,  0x00000000, NULL },
    { 0x2d, 0x07,  0x0003,  0x00000000,  0x00000000, NULL },
    { 0x53, 0x00,  0x0000,  0x0000001f,  0x00000000, NULL },
    { 0xe3, 0x00,  0x0008,  0x00000000,  0x00000000, NULL },
    { 0x91, 0x04,  0x000a,  0x00000006,  0x00000000, NULL },
    { 0xe3, 0x00,  0x0008,  0x00000000,  0x00000000, NULL },
    CALL_SCRIPT(SMILE_START_FUNC),
    { 0xe4, 0x00,  0x0005,  0x00000000,  0x00000000, NULL },
    { 0xe3, 0x00,  0x0008,  0x00000000,  0x00000000, NULL },
    CALL_SCRIPT(SMILE_END_FUNC),
    { 0xe4, 0x00,  0x0005,  0x00000000,  0x00000000, NULL },
    { 0xe3, 0x00,  0x0008,  0x00000000,  0x00000000, NULL },
    { 0x91, 0x04,  0x000a,  0x00000007,  0x00000000, NULL },
    { 0xe4, 0x00,  0x0005,  0x00000000,  0x00000000, NULL },
    { 0xe3, 0x00,  0x0008,  0x00000000,  0x00000000, NULL },
    { 0x6b, 0x00,  0x0100,  0x00000003,  0x00000000, NULL },
    { 0x52, 0x00,  0x0000,  0x0000001f,  0x00000000, NULL },
    HALT,
};

static const struct ScriptCommand s_gs180_g3_s0_lives4_dlg0[] = { /* 0x8231718 */
    DEBUGINFO,
    { 0x54, 0x00,  0x0002,  0x00000000,  0x00000000, NULL },
    { 0x2d, 0x07,  0x0004,  0x00000000,  0x00000000, NULL },
    { 0x53, 0x00,  0x0000,  0x0000001f,  0x00000000, NULL },
    { 0xe3, 0x00,  0x0009,  0x00000000,  0x00000000, NULL },
    CALL_SCRIPT(SMILE_START_FUNC),
    { 0x91, 0x04,  0x0001,  0x00000004,  0x00000000, NULL },
    { 0x91, 0x04,  0x0001,  0x00000000,  0x00000000, NULL },
    { 0x91, 0x04,  0x0001,  0x00000004,  0x00000000, NULL },
    { 0x91, 0x04,  0x0001,  0x00000000,  0x00000000, NULL },
    { 0xe4, 0x00,  0x0005,  0x00000000,  0x00000000, NULL },
    { 0xe3, 0x00,  0x0009,  0x00000000,  0x00000000, NULL },
    CALL_SCRIPT(SMILE_END_FUNC),
    { 0xe4, 0x00,  0x0005,  0x00000000,  0x00000000, NULL },
    { 0xe3, 0x00,  0x0009,  0x00000000,  0x00000000, NULL },
    CALL_SCRIPT(SMILE_START_FUNC),
    { 0x91, 0x04,  0x0001,  0x00000004,  0x00000000, NULL },
    { 0x91, 0x04,  0x0001,  0x00000000,  0x00000000, NULL },
    { 0xe4, 0x00,  0x0005,  0x00000000,  0x00000000, NULL },
    { 0xe3, 0x00,  0x0009,  0x00000000,  0x00000000, NULL },
    CALL_SCRIPT(SMILE_END_FUNC),
    { 0xe4, 0x00,  0x0005,  0x00000000,  0x00000000, NULL },
    { 0xe3, 0x00,  0x0009,  0x00000000,  0x00000000, NULL },
    { 0x91, 0x04,  0x000a,  0x00000000,  0x00000000, NULL },
    { 0xe3, 0x00,  0x0009,  0x00000000,  0x00000000, NULL },
    { 0x6b, 0x00,  0x0100,  0x00000002,  0x00000000, NULL },
    { 0x52, 0x00,  0x0000,  0x0000001f,  0x00000000, NULL },
    HALT,
};

static const struct ScriptCommand s_gs180_g3_s0_lives5_dlg0[] = { /* 0x82318d8 */
    DEBUGINFO,
    { 0x54, 0x00,  0x0002,  0x00000000,  0x00000000, NULL },
    { 0x2d, 0x07,  0x0005,  0x00000000,  0x00000000, NULL },
    { 0x53, 0x00,  0x0000,  0x0000001f,  0x00000000, NULL },
    { 0xe3, 0x00,  0x000a,  0x00000000,  0x00000000, NULL },
    CALL_SCRIPT(SMILE_START_FUNC),
    { 0x91, 0x04,  0x0001,  0x00000004,  0x00000000, NULL },
    { 0x91, 0x04,  0x0001,  0x00000000,  0x00000000, NULL },
    { 0xe4, 0x00,  0x0005,  0x00000000,  0x00000000, NULL },
    { 0xe3, 0x00,  0x000a,  0x00000000,  0x00000000, NULL },
    CALL_SCRIPT(SMILE_END_FUNC),
    { 0xe4, 0x00,  0x0005,  0x00000000,  0x00000000, NULL },
    { 0xe3, 0x00,  0x000a,  0x00000000,  0x00000000, NULL },
    { 0x91, 0x04,  0x000a,  0x00000001,  0x00000000, NULL },
    { 0xe3, 0x00,  0x000a,  0x00000000,  0x00000000, NULL },
    { 0x6b, 0x00,  0x0100,  0x00000002,  0x00000000, NULL },
    { 0x52, 0x00,  0x0000,  0x0000001f,  0x00000000, NULL },
    HALT,
};

static const struct GroundLivesData s_gs180_g1_s0_lives[] = { /* 0x82319f8 */
    /*  0 */ {   0,   4,   0,   0, {  23,  19, 0, CPOS_HALFTILE }, {
        [0] = s_gs180_g1_s0_lives0_dlg0,
    } },
    /*  1 */ {  34,   4,   0,   0, {  27,  19, 0, CPOS_HALFTILE }, {
        [0] = s_gs180_g1_s0_lives1_dlg0,
    } },
    /*  2 */ {  64,   4,   0,   0, {  23,  16, 0, CPOS_HALFTILE }, {
        [0] = s_gs180_g1_s0_lives2_dlg0,
    } },
    /*  3 */ {  65,   4,   0,   0, {  27,  16, 0, CPOS_HALFTILE }, {
        [0] = s_gs180_g1_s0_lives3_dlg0,
    } },
};

static const struct GroundLivesData s_gs180_g2_s0_lives[] = { /* 0x8231a58 */
    /*  0 */ {   0,   4,   0,   0, {  23,  19, 0, CPOS_HALFTILE }, {
        [0] = s_gs180_g2_s0_lives0_dlg0,
    } },
    /*  1 */ {  34,   4,   0,   0, {  27,  19, 0, CPOS_HALFTILE }, {
        [0] = s_gs180_g2_s0_lives1_dlg0,
    } },
    /*  2 */ {  64,   4,   0,   0, {  21,  16, 0, CPOS_HALFTILE }, {
        [0] = s_gs180_g2_s0_lives2_dlg0,
    } },
    /*  3 */ {  65,   4,   0,   0, {  29,  16, 0, CPOS_HALFTILE }, {
        [0] = s_gs180_g2_s0_lives3_dlg0,
    } },
};

static const struct GroundLivesData s_gs180_g3_s0_lives[] = { /* 0x8231ab8 */
    /*  0 */ {   0,   4,   0,   0, {  23,  20, 0, CPOS_HALFTILE }, {
        [0] = s_gs180_g3_s0_lives0_dlg0,
    } },
    /*  1 */ {  34,   4,   0,   0, {  27,  20, 0, CPOS_HALFTILE }, {
        [0] = s_gs180_g3_s0_lives1_dlg0,
    } },
    /*  2 */ {  64,   0,   0,   0, {  26,  15, CPOS_HALFTILE, CPOS_HALFTILE }, {
        [0] = s_gs180_g3_s0_lives2_dlg0,
    } },
    /*  3 */ {  65,   0,   0,   0, {  29,  17, 0, CPOS_HALFTILE }, {
        [0] = s_gs180_g3_s0_lives3_dlg0,
    } },
    /*  4 */ {  61,   0,   0,   0, {  23,  15, CPOS_HALFTILE, CPOS_HALFTILE }, {
        [0] = s_gs180_g3_s0_lives4_dlg0,
    } },
    /*  5 */ {  62,   0,   0,   0, {  21,  17, 0, CPOS_HALFTILE }, {
        [0] = s_gs180_g3_s0_lives5_dlg0,
    } },
};

static const struct GroundEffectData s_gs180_g1_s0_effs[] = { /* 0x8231b48 */
    /*  0 */ {   0,   0,   1,   1, {  25,  18, 0, CPOS_HALFTILE }, s_gs180_g1_s0_eff0_script },
};

static const struct GroundEffectData s_gs180_g2_s0_effs[] = { /* 0x8231b54 */
    /*  0 */ {   0,   0,   1,   1, {  25,  18, 0, CPOS_HALFTILE }, s_gs180_g2_s0_eff0_script },
};

static const struct GroundEffectData s_gs180_g3_s0_effs[] = { /* 0x8231b60 */
    /*  0 */ {   0,   0,   1,   1, {  25,  18, 0, CPOS_HALFTILE }, NULL },
};

static const struct ScriptRef * const (sStationScripts[]) = { /* 0x8231b6c */
    &s_gs180_g0_s0_station_sref,
    &s_gs180_g1_s0_station_sref,
    &s_gs180_g2_s0_station_sref,
    &s_gs180_g3_s0_station_sref,
};

static const struct GroundScriptSector s_gs180_g0_sectors[] = { /* 0x8231b7c */
    { 0,NULL, 0,NULL, 0,NULL, 0,NULL, 1,&sStationScripts[0], },
};

static const struct GroundScriptSector s_gs180_g1_sectors[] = { /* 0x8231ba4 */
    { LPARRAY(s_gs180_g1_s0_lives), 0,NULL, LPARRAY(s_gs180_g1_s0_effs), 0,NULL, 1,&sStationScripts[1], },
};

static const struct GroundScriptSector s_gs180_g2_sectors[] = { /* 0x8231bcc */
    { LPARRAY(s_gs180_g2_s0_lives), 0,NULL, LPARRAY(s_gs180_g2_s0_effs), 0,NULL, 1,&sStationScripts[2], },
};

static const struct GroundScriptSector s_gs180_g3_sectors[] = { /* 0x8231bf4 */
    { LPARRAY(s_gs180_g3_s0_lives), 0,NULL, LPARRAY(s_gs180_g3_s0_effs), 0,NULL, 1,&sStationScripts[3], },
};

static const struct GroundScriptGroup s_gs180_groups[] = { /* 0x8231c1c */
    { LPARRAY(s_gs180_g0_sectors) },
    { LPARRAY(s_gs180_g1_sectors) },
    { LPARRAY(s_gs180_g2_sectors) },
    { LPARRAY(s_gs180_g3_sectors) },
};

static const struct GroundLink s_gs180_links[] = { /* 0x8231c3c */
    /* link   0 */ { { /*x*/  24, /*y*/  10, /*flags*/ CPOS_HALFTILE, CPOS_HALFTILE }, /*w*/  1, /*h*/  1, /*ret*/ 2, /*?*/ 1 },
    /* link   1 */ { { /*x*/  24, /*y*/  10, /*flags*/ CPOS_HALFTILE, CPOS_HALFTILE }, /*w*/  1, /*h*/  1, /*ret*/ 2, /*?*/ 1 },
    /* link   2 */ { { /*x*/  18, /*y*/  33, /*flags*/ 0, CPOS_HALFTILE }, /*w*/  1, /*h*/  1, /*ret*/ 2, /*?*/ 1 },
    /* link   3 */ { { /*x*/  31, /*y*/  33, /*flags*/ 0, CPOS_HALFTILE }, /*w*/  1, /*h*/  1, /*ret*/ 2, /*?*/ 1 },
};

/*extern*/ const struct GroundScriptHeader gGroundScript_gs180 = { LPARRAY(s_gs180_groups), s_gs180_links }; /* 0x8231c5c */