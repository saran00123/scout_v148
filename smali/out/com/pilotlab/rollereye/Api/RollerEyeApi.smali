.class public Lcom/pilotlab/rollereye/Api/RollerEyeApi;
.super Ljava/lang/Object;
.source "RollerEyeApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;,
        Lcom/pilotlab/rollereye/Api/RollerEyeApi$jsonCommd;
    }
.end annotation


# static fields
.field public static final TAG_CONNECT_NAS:I = 0xbc6

.field public static final TAG_CONSOLE_SCRATCH_MSG:I = 0xfa5

.field public static final TAG_DEBUG_BIST:I = 0x232d

.field public static final TAG_DEBUG_DEMO_CES:I = 0x2329

.field public static final TAG_DEBUG_FACTORY_TEST:I = 0x2328

.field public static final TAG_DEBUG_GET_CONNECT_STATUS:I = 0x232c

.field public static final TAG_DEBUG_GET_LOG:I = 0x232e

.field public static final TAG_DEBUG_GET_WIFI_CONFIG_INFO:I = 0x232b

.field public static final TAG_DEBUG_IR:I = 0x232a

.field public static final TAG_DELETE_NAS:I = 0xbcb

.field public static final TAG_DELETE_NAS_FILES:I = 0xbca

.field public static final TAG_DEVICE_SN:I = 0x3e9

.field public static final TAG_DEVICE_WIFI:I = 0x3f0

.field public static final TAG_DOWNLOAD_BEGIN:I = 0x3ec

.field public static final TAG_DOWNLOAD_END:I = 0x3ed

.field public static final TAG_DOWNLOAD_RETRY:I = 0x3ee

.field public static final TAG_ERROR_SCRATCH_SCRIPT:I = 0xfa3

.field public static final TAG_GET_NAS_CONFIG:I = 0xbc8

.field public static final TAG_GET_NAS_DIRECTORY:I = 0xbc7

.field public static final TAG_GET_NAS_STATUS:I = 0xbcc

.field public static final TAG_HIGHLIGH_SCRATCH_BLOCK:I = 0xfa4

.field public static final TAG_INIT_IMU:I = 0xbcd

.field public static final TAG_NAV_BACK:I = 0x138f

.field public static final TAG_NAV_CANCEL:I = 0x1390

.field public static final TAG_NAV_DELETE:I = 0x138c

.field public static final TAG_NAV_LIST:I = 0x138d

.field public static final TAG_NAV_OUT:I = 0x1391

.field public static final TAG_NAV_PATROL:I = 0x138e

.field public static final TAG_NAV_QUERY_POSE:I = 0x1389

.field public static final TAG_NAV_SAVE:I = 0x138b

.field public static final TAG_NAV_START:I = 0x138a

.field public static final TAG_NAV_WAYPOINT:I = 0x1392

.field public static final TAG_OTA_CACHE_VERSION:I = 0xbc2

.field public static final TAG_OTA_DOWNLOAD:I = 0xbbf

.field public static final TAG_OTA_QUERY_NEW_VERSION:I = 0xbbe

.field public static final TAG_OTA_STATUS:I = 0xbc3

.field public static final TAG_OTA_UPDATE:I = 0xbc0

.field public static final TAG_P2P_INFO:I = 0x3ef

.field public static final TAG_RECORD_DELETE_FILE:I = 0x7d5

.field public static final TAG_RECORD_GET_FILE:I = 0x7d4

.field public static final TAG_RECORD_START:I = 0x7d1

.field public static final TAG_RECORD_STATUS:I = 0x7d2

.field public static final TAG_RECORD_STOP:I = 0x7d3

.field public static final TAG_RESET:I = 0xbc4

.field public static final TAG_ROOT:I = 0xbce

.field public static final TAG_SCAN_NASLIST:I = 0xbc5

.field public static final TAG_SEND_SCRATCH_SCRIPT:I = 0xfa1

.field public static final TAG_SET_NAS_CONFIG:I = 0xbc9

.field public static final TAG_STOP_SCRATCH_SCRIPT:I = 0xfa2

.field public static final TAG_SWITCH_WIFI:I = 0x3f2

.field public static final TAG_SYSTEM_CONFIG:I = 0xbba

.field public static final TAG_SYSTEM_DEBUG_IBEACON:I = 0xbbb

.field public static final TAG_SYSTEM_GET_PARAM:I = 0xbbd

.field public static final TAG_SYSTEM_REBOOT:I = 0xbb8

.field public static final TAG_SYSTEM_SET_PARAM:I = 0xbbc

.field public static final TAG_SYSTEM_STATUS:I = 0xbb9

.field public static final TAG_TIMERTASK_ADD:I = 0x1773

.field public static final TAG_TIMERTASK_DELETE:I = 0x1772

.field public static final TAG_TIMERTASK_EDIT:I = 0x1774

.field public static final TAG_TIMERTASK_LIST:I = 0x1771

.field public static final TAG_VIDEO_SET_RESOLUTION:I = 0x7d6

.field public static final TAG_WIFICONFIG_BIND:I = 0x3eb

.field public static final TAG_WIFICONFIG_WIFI:I = 0x3ea

.field public static final TAG_WIFI_LIST:I = 0x3f1


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
