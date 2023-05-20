.class public final enum Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;
.super Ljava/lang/Enum;
.source "RollerEyeApi.java"

# interfaces
.implements Lcom/pilotlab/rollereye/Api/RollerEyeApi$jsonCommd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/Api/RollerEyeApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Command"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;",
        ">;",
        "Lcom/pilotlab/rollereye/Api/RollerEyeApi$jsonCommd;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

.field public static final enum CONNECT_NAS:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

.field public static final enum CONSOLE_SCRATCH_MSG:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

.field public static final enum DEBUG_BIST:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

.field public static final enum DEBUG_FACTORY_TEST:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

.field public static final enum DEBUG_GET_CONNECT_STATUS:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

.field public static final enum DEBUG_GET_LOG:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

.field public static final enum DEBUG_GET_WIFI_CONFIG_INFO:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

.field public static final enum DELETE_NAS:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

.field public static final enum DELETE_NAS_FILES:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

.field public static final enum DEMO_CES:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

.field public static final enum DEMO_IR:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

.field public static final enum DEVICE_SN:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

.field public static final enum DEVICE_WIFI:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

.field public static final enum DOWNLOAD_BEGIN:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

.field public static final enum DOWNLOAD_END:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

.field public static final enum DOWNLOAD_RETRY:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

.field public static final enum ERROR_SCRATCH_SCRIPT:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

.field public static final enum GET_NAS_CONFIG:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

.field public static final enum GET_NAS_DIRECTORY:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

.field public static final enum GET_NAS_STATUS:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

.field public static final enum HIGHLIGH_SCRATCH_BLOCK:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

.field public static final enum INIT_IMU:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

.field public static final enum NAV_BACK:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

.field public static final enum NAV_CANCEL:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

.field public static final enum NAV_DELETE:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

.field public static final enum NAV_LIST:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

.field public static final enum NAV_OUT:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

.field public static final enum NAV_PATROL:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

.field public static final enum NAV_QUERY_POSE:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

.field public static final enum NAV_SAVE:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

.field public static final enum NAV_START:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

.field public static final enum NAV_WAYPOINT:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

.field public static final enum OTA_CACHE_VERSION:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

.field public static final enum OTA_DOWNLOAD:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

.field public static final enum OTA_QUERY_NEW_VERSION:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

.field public static final enum OTA_STATUS:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

.field public static final enum OTA_UPDATE:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

.field public static final enum P2P_INFO:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

.field public static final enum RECORD_DELETE_FILE:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

.field public static final enum RECORD_GET_FILE:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

.field public static final enum RECORD_START:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

.field public static final enum RECORD_STATUS:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

.field public static final enum RECORD_STOP:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

.field public static final enum RESET:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

.field public static final enum ROOT:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

.field public static final enum SCAN_NASLIST:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

.field public static final enum SEND_SCRATCH_SCRIPT:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

.field public static final enum SET_NAS_CONFIG:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

.field public static final enum STOP_SCRATCH_SCRIPT:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

.field public static final enum SWITCH_WIFI:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

.field public static final enum SYSTEM_CONFIG:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

.field public static final enum SYSTEM_DEBUG_IBEACON:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

.field public static final enum SYSTEM_GET_PARAM:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

.field public static final enum SYSTEM_REBOOT:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

.field public static final enum SYSTEM_SET_PARAM:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

.field public static final enum SYSTEM_STATUS:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

.field public static final enum TIMERTASK_ADD:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

.field public static final enum TIMERTASK_DELETE:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

.field public static final enum TIMERTASK_EDIT:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

.field public static final enum TIMERTASK_LIST:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

.field public static final enum VIDEO_SET_RESOLUTION:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

.field public static final enum WIFICONFIG_BIND:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

.field public static final enum WIFICONFIG_WIFI:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

.field public static final enum WIFI_LIST:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;


# instance fields
.field private cmd:Ljava/lang/String;

.field private id:I


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 87
    new-instance v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const/4 v1, 0x0

    const-string v2, "DEVICE_SN"

    const/16 v3, 0x3e9

    const-string v4, "sn"

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->DEVICE_SN:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    new-instance v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const/4 v2, 0x1

    const-string v3, "WIFICONFIG_WIFI"

    const/16 v4, 0x3ea

    const-string v5, "wifi"

    invoke-direct {v0, v3, v2, v4, v5}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->WIFICONFIG_WIFI:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    new-instance v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const/4 v3, 0x2

    const-string v4, "WIFICONFIG_BIND"

    const/16 v5, 0x3eb

    const-string v6, "bind"

    invoke-direct {v0, v4, v3, v5, v6}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->WIFICONFIG_BIND:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 88
    new-instance v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const/4 v4, 0x3

    const-string v5, "DOWNLOAD_BEGIN"

    const/16 v6, 0x3ec

    const-string v7, "download_begin"

    invoke-direct {v0, v5, v4, v6, v7}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->DOWNLOAD_BEGIN:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    new-instance v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const/4 v5, 0x4

    const-string v6, "DOWNLOAD_END"

    const/16 v7, 0x3ed

    const-string v8, "download_end"

    invoke-direct {v0, v6, v5, v7, v8}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->DOWNLOAD_END:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 89
    new-instance v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const/4 v6, 0x5

    const-string v7, "DOWNLOAD_RETRY"

    const/16 v8, 0x3ee

    const-string v9, "download_retry"

    invoke-direct {v0, v7, v6, v8, v9}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->DOWNLOAD_RETRY:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    new-instance v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const/4 v7, 0x6

    const-string v8, "P2P_INFO"

    const/16 v9, 0x3ef

    const-string v10, "p2p"

    invoke-direct {v0, v8, v7, v9, v10}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->P2P_INFO:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 90
    new-instance v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const/4 v8, 0x7

    const-string v9, "RECORD_START"

    const/16 v10, 0x7d1

    const-string v11, "record_start"

    invoke-direct {v0, v9, v8, v10, v11}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->RECORD_START:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    new-instance v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const/16 v9, 0x8

    const-string v10, "RECORD_STATUS"

    const/16 v11, 0x7d2

    const-string v12, "record_status"

    invoke-direct {v0, v10, v9, v11, v12}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->RECORD_STATUS:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    new-instance v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const/16 v10, 0x9

    const-string v11, "RECORD_STOP"

    const/16 v12, 0x7d3

    const-string v13, "record_stop"

    invoke-direct {v0, v11, v10, v12, v13}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->RECORD_STOP:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 91
    new-instance v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const/16 v11, 0xa

    const-string v12, "RECORD_GET_FILE"

    const/16 v13, 0x7d4

    const-string v14, "record_get_file_list"

    invoke-direct {v0, v12, v11, v13, v14}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->RECORD_GET_FILE:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    new-instance v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const/16 v12, 0xb

    const-string v13, "RECORD_DELETE_FILE"

    const/16 v14, 0x7d5

    const-string v15, "record_delete_file"

    invoke-direct {v0, v13, v12, v14, v15}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->RECORD_DELETE_FILE:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 92
    new-instance v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const/16 v13, 0xc

    const-string v14, "DEVICE_WIFI"

    const/16 v15, 0x3f0

    const-string v12, "wifi_mod"

    invoke-direct {v0, v14, v13, v15, v12}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->DEVICE_WIFI:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    new-instance v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const/16 v12, 0xd

    const-string v14, "WIFI_LIST"

    const/16 v15, 0x3f1

    const-string v13, "get_wifi_list"

    invoke-direct {v0, v14, v12, v15, v13}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->WIFI_LIST:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    new-instance v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const/16 v13, 0xe

    const-string v14, "SWITCH_WIFI"

    const/16 v15, 0x3f2

    const-string v12, "wifi_switch"

    invoke-direct {v0, v14, v13, v15, v12}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->SWITCH_WIFI:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 93
    new-instance v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const-string v12, "SYSTEM_REBOOT"

    const/16 v14, 0xf

    const/16 v15, 0xbb8

    const-string v13, "reboot"

    invoke-direct {v0, v12, v14, v15, v13}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->SYSTEM_REBOOT:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    new-instance v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const-string v12, "SYSTEM_STATUS"

    const/16 v13, 0x10

    const/16 v14, 0xbb9

    const-string v15, "status"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->SYSTEM_STATUS:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    new-instance v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const-string v12, "SYSTEM_CONFIG"

    const/16 v13, 0x11

    const/16 v14, 0xbba

    const-string v15, "config"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->SYSTEM_CONFIG:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 94
    new-instance v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const-string v12, "SYSTEM_DEBUG_IBEACON"

    const/16 v13, 0x12

    const/16 v14, 0xbbb

    const-string v15, "ibeacon"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->SYSTEM_DEBUG_IBEACON:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 95
    new-instance v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const-string v12, "SYSTEM_SET_PARAM"

    const/16 v13, 0x13

    const/16 v14, 0xbbc

    const-string v15, "set_param"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->SYSTEM_SET_PARAM:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    new-instance v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const-string v12, "SYSTEM_GET_PARAM"

    const/16 v13, 0x14

    const/16 v14, 0xbbd

    const-string v15, "get_param"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->SYSTEM_GET_PARAM:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 96
    new-instance v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const-string v12, "VIDEO_SET_RESOLUTION"

    const/16 v13, 0x15

    const/16 v14, 0x7d6

    const-string v15, "set_resolution"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->VIDEO_SET_RESOLUTION:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 97
    new-instance v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const-string v12, "SEND_SCRATCH_SCRIPT"

    const/16 v13, 0x16

    const/16 v14, 0xfa1

    const-string v15, "send_scrath_script"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->SEND_SCRATCH_SCRIPT:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    new-instance v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const-string v12, "STOP_SCRATCH_SCRIPT"

    const/16 v13, 0x17

    const/16 v14, 0xfa2

    const-string v15, "stopProgramming"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->STOP_SCRATCH_SCRIPT:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 98
    new-instance v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const-string v12, "ERROR_SCRATCH_SCRIPT"

    const/16 v13, 0x18

    const/16 v14, 0xfa3

    const-string v15, "programmingException"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->ERROR_SCRATCH_SCRIPT:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    new-instance v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const-string v12, "HIGHLIGH_SCRATCH_BLOCK"

    const/16 v13, 0x19

    const/16 v14, 0xfa4

    const-string v15, "programmingMeta"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->HIGHLIGH_SCRATCH_BLOCK:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    new-instance v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const-string v12, "CONSOLE_SCRATCH_MSG"

    const/16 v13, 0x1a

    const/16 v14, 0xfa5

    const-string v15, "programmingMsg"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->CONSOLE_SCRATCH_MSG:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 99
    new-instance v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const-string v12, "NAV_QUERY_POSE"

    const/16 v13, 0x1b

    const/16 v14, 0x1389

    const-string v15, "nav_query_pose"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->NAV_QUERY_POSE:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    new-instance v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const-string v12, "NAV_START"

    const/16 v13, 0x1c

    const/16 v14, 0x138a

    const-string v15, "nav_start"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->NAV_START:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    new-instance v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const-string v12, "NAV_SAVE"

    const/16 v13, 0x1d

    const/16 v14, 0x138b

    const-string v15, "nav_save"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->NAV_SAVE:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 100
    new-instance v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const-string v12, "NAV_DELETE"

    const/16 v13, 0x1e

    const/16 v14, 0x138c

    const-string v15, "nav_delete"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->NAV_DELETE:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    new-instance v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const-string v12, "NAV_LIST"

    const/16 v13, 0x1f

    const/16 v14, 0x138d

    const-string v15, "nav_list"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->NAV_LIST:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    new-instance v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const-string v12, "NAV_PATROL"

    const/16 v13, 0x20

    const/16 v14, 0x138e

    const-string v15, "nav_patrol"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->NAV_PATROL:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 101
    new-instance v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const-string v12, "NAV_BACK"

    const/16 v13, 0x21

    const/16 v14, 0x138f

    const-string v15, "nav_back"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->NAV_BACK:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    new-instance v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const-string v12, "NAV_CANCEL"

    const/16 v13, 0x22

    const/16 v14, 0x1390

    const-string v15, "nav_cancel"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->NAV_CANCEL:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    new-instance v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const-string v12, "NAV_OUT"

    const/16 v13, 0x23

    const/16 v14, 0x1391

    const-string v15, "nav_out"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->NAV_OUT:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    new-instance v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const-string v12, "NAV_WAYPOINT"

    const/16 v13, 0x24

    const/16 v14, 0x1392

    const-string v15, "nav_waypoint"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->NAV_WAYPOINT:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 102
    new-instance v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const-string v12, "TIMERTASK_LIST"

    const/16 v13, 0x25

    const/16 v14, 0x1771

    const-string v15, "timer_task_list"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->TIMERTASK_LIST:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    new-instance v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const-string v12, "TIMERTASK_DELETE"

    const/16 v13, 0x26

    const/16 v14, 0x1772

    const-string v15, "timer_task_delete"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->TIMERTASK_DELETE:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 103
    new-instance v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const-string v12, "TIMERTASK_ADD"

    const/16 v13, 0x27

    const/16 v14, 0x1773

    const-string v15, "timer_task_add"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->TIMERTASK_ADD:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    new-instance v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const-string v12, "TIMERTASK_EDIT"

    const/16 v13, 0x28

    const/16 v14, 0x1774

    const-string v15, "timer_task_edit"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->TIMERTASK_EDIT:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 104
    new-instance v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const-string v12, "OTA_QUERY_NEW_VERSION"

    const/16 v13, 0x29

    const/16 v14, 0xbbe

    const-string v15, "queryOtaVer"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->OTA_QUERY_NEW_VERSION:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    new-instance v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const-string v12, "OTA_DOWNLOAD"

    const/16 v13, 0x2a

    const/16 v14, 0xbbf

    const-string v15, "startOtaDownload"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->OTA_DOWNLOAD:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    new-instance v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const-string v12, "OTA_UPDATE"

    const/16 v13, 0x2b

    const/16 v14, 0xbc0

    const-string v15, "startOtaInstall"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->OTA_UPDATE:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    new-instance v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const-string v12, "OTA_CACHE_VERSION"

    const/16 v13, 0x2c

    const/16 v14, 0xbc2

    const-string v15, "getCurrentVer"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->OTA_CACHE_VERSION:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    new-instance v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const-string v12, "OTA_STATUS"

    const/16 v13, 0x2d

    const/16 v14, 0xbc3

    const-string v15, "getOtaStatus"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->OTA_STATUS:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 105
    new-instance v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const-string v12, "RESET"

    const/16 v13, 0x2e

    const/16 v14, 0xbc4

    const-string v15, "reset"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->RESET:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    new-instance v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const-string v12, "DEMO_CES"

    const/16 v13, 0x2f

    const/16 v14, 0x2329

    const-string v15, "demo_ces"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->DEMO_CES:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    new-instance v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const-string v12, "DEMO_IR"

    const/16 v13, 0x30

    const/16 v14, 0x232a

    const-string v15, "debug_ir"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->DEMO_IR:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 106
    new-instance v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const-string v12, "SCAN_NASLIST"

    const/16 v13, 0x31

    const/16 v14, 0xbc5

    const-string v15, "scanNasList"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->SCAN_NASLIST:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    new-instance v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const-string v12, "CONNECT_NAS"

    const/16 v13, 0x32

    const/16 v14, 0xbc6

    const-string v15, "connectNas"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->CONNECT_NAS:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    new-instance v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const-string v12, "GET_NAS_DIRECTORY"

    const/16 v13, 0x33

    const/16 v14, 0xbc7

    const-string v15, "getNasDirectory"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->GET_NAS_DIRECTORY:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 107
    new-instance v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const-string v12, "GET_NAS_CONFIG"

    const/16 v13, 0x34

    const/16 v14, 0xbc8

    const-string v15, "getNasConfig"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->GET_NAS_CONFIG:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    new-instance v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const-string v12, "SET_NAS_CONFIG"

    const/16 v13, 0x35

    const/16 v14, 0xbc9

    const-string v15, "setNasConfig"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->SET_NAS_CONFIG:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    new-instance v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const-string v12, "DELETE_NAS_FILES"

    const/16 v13, 0x36

    const/16 v14, 0xbca

    const-string v15, "deleteNasFiles"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->DELETE_NAS_FILES:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 108
    new-instance v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const-string v12, "DELETE_NAS"

    const/16 v13, 0x37

    const/16 v14, 0xbcb

    const-string v15, "deleteNas"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->DELETE_NAS:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    new-instance v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const-string v12, "GET_NAS_STATUS"

    const/16 v13, 0x38

    const/16 v14, 0xbcc

    const-string v15, "getNasStatus"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->GET_NAS_STATUS:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    new-instance v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const-string v12, "INIT_IMU"

    const/16 v13, 0x39

    const/16 v14, 0xbcd

    const-string v15, "initIMU"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->INIT_IMU:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    new-instance v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const-string v12, "ROOT"

    const/16 v13, 0x3a

    const/16 v14, 0xbce

    const-string v15, "ROOT"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->ROOT:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 109
    new-instance v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const-string v12, "DEBUG_GET_WIFI_CONFIG_INFO"

    const/16 v13, 0x3b

    const/16 v14, 0x232b

    const-string v15, "getWiFiConfigInfo"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->DEBUG_GET_WIFI_CONFIG_INFO:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    new-instance v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const-string v12, "DEBUG_FACTORY_TEST"

    const/16 v13, 0x3c

    const/16 v14, 0x2328

    const-string v15, "factoryTest"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->DEBUG_FACTORY_TEST:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    new-instance v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const-string v12, "DEBUG_GET_CONNECT_STATUS"

    const/16 v13, 0x3d

    const/16 v14, 0x232c

    const-string v15, "getConnectServerStatus"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->DEBUG_GET_CONNECT_STATUS:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    new-instance v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const-string v12, "DEBUG_BIST"

    const/16 v13, 0x3e

    const/16 v14, 0x232d

    const-string v15, "bist"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->DEBUG_BIST:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    new-instance v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const-string v12, "DEBUG_GET_LOG"

    const/16 v13, 0x3f

    const/16 v14, 0x232e

    const-string v15, "getSystemLog"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->DEBUG_GET_LOG:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const/16 v0, 0x40

    .line 85
    new-array v0, v0, [Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    sget-object v12, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->DEVICE_SN:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    aput-object v12, v0, v1

    sget-object v1, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->WIFICONFIG_WIFI:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    aput-object v1, v0, v2

    sget-object v1, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->WIFICONFIG_BIND:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    aput-object v1, v0, v3

    sget-object v1, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->DOWNLOAD_BEGIN:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    aput-object v1, v0, v4

    sget-object v1, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->DOWNLOAD_END:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    aput-object v1, v0, v5

    sget-object v1, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->DOWNLOAD_RETRY:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    aput-object v1, v0, v6

    sget-object v1, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->P2P_INFO:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    aput-object v1, v0, v7

    sget-object v1, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->RECORD_START:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    aput-object v1, v0, v8

    sget-object v1, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->RECORD_STATUS:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    aput-object v1, v0, v9

    sget-object v1, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->RECORD_STOP:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    aput-object v1, v0, v10

    sget-object v1, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->RECORD_GET_FILE:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    aput-object v1, v0, v11

    sget-object v1, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->RECORD_DELETE_FILE:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->DEVICE_WIFI:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->WIFI_LIST:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->SWITCH_WIFI:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->SYSTEM_REBOOT:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->SYSTEM_STATUS:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->SYSTEM_CONFIG:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->SYSTEM_DEBUG_IBEACON:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->SYSTEM_SET_PARAM:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->SYSTEM_GET_PARAM:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->VIDEO_SET_RESOLUTION:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->SEND_SCRATCH_SCRIPT:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->STOP_SCRATCH_SCRIPT:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->ERROR_SCRATCH_SCRIPT:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->HIGHLIGH_SCRATCH_BLOCK:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->CONSOLE_SCRATCH_MSG:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->NAV_QUERY_POSE:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->NAV_START:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->NAV_SAVE:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->NAV_DELETE:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->NAV_LIST:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->NAV_PATROL:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->NAV_BACK:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    sget-object v1, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->NAV_CANCEL:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sget-object v1, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->NAV_OUT:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    sget-object v1, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->NAV_WAYPOINT:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const/16 v2, 0x24

    aput-object v1, v0, v2

    sget-object v1, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->TIMERTASK_LIST:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const/16 v2, 0x25

    aput-object v1, v0, v2

    sget-object v1, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->TIMERTASK_DELETE:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const/16 v2, 0x26

    aput-object v1, v0, v2

    sget-object v1, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->TIMERTASK_ADD:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const/16 v2, 0x27

    aput-object v1, v0, v2

    sget-object v1, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->TIMERTASK_EDIT:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const/16 v2, 0x28

    aput-object v1, v0, v2

    sget-object v1, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->OTA_QUERY_NEW_VERSION:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const/16 v2, 0x29

    aput-object v1, v0, v2

    sget-object v1, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->OTA_DOWNLOAD:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    sget-object v1, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->OTA_UPDATE:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    sget-object v1, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->OTA_CACHE_VERSION:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    sget-object v1, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->OTA_STATUS:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    sget-object v1, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->RESET:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    sget-object v1, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->DEMO_CES:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    sget-object v1, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->DEMO_IR:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const/16 v2, 0x30

    aput-object v1, v0, v2

    sget-object v1, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->SCAN_NASLIST:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const/16 v2, 0x31

    aput-object v1, v0, v2

    sget-object v1, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->CONNECT_NAS:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const/16 v2, 0x32

    aput-object v1, v0, v2

    sget-object v1, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->GET_NAS_DIRECTORY:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const/16 v2, 0x33

    aput-object v1, v0, v2

    sget-object v1, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->GET_NAS_CONFIG:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const/16 v2, 0x34

    aput-object v1, v0, v2

    sget-object v1, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->SET_NAS_CONFIG:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const/16 v2, 0x35

    aput-object v1, v0, v2

    sget-object v1, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->DELETE_NAS_FILES:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const/16 v2, 0x36

    aput-object v1, v0, v2

    sget-object v1, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->DELETE_NAS:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const/16 v2, 0x37

    aput-object v1, v0, v2

    sget-object v1, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->GET_NAS_STATUS:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const/16 v2, 0x38

    aput-object v1, v0, v2

    sget-object v1, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->INIT_IMU:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const/16 v2, 0x39

    aput-object v1, v0, v2

    sget-object v1, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->ROOT:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    sget-object v1, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->DEBUG_GET_WIFI_CONFIG_INFO:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    sget-object v1, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->DEBUG_FACTORY_TEST:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    sget-object v1, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->DEBUG_GET_CONNECT_STATUS:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    sget-object v1, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->DEBUG_BIST:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    sget-object v1, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->DEBUG_GET_LOG:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    sput-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->$VALUES:[Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 115
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 116
    iput p3, p0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->id:I

    .line 117
    iput-object p4, p0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->cmd:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;
    .registers 2

    .line 85
    const-class v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    return-object p0
.end method

.method public static values()[Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;
    .registers 1

    .line 85
    sget-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->$VALUES:[Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    invoke-virtual {v0}, [Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    return-object v0
.end method


# virtual methods
.method public getCmd()Ljava/lang/String;
    .registers 2

    .line 125
    iget-object v0, p0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->cmd:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .registers 2

    .line 121
    iget v0, p0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->id:I

    return v0
.end method

.method public to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 6

    .line 131
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "id"

    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "cmd"

    .line 134
    iget-object v2, p0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->cmd:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_24} :catch_32

    const-string v1, "body"

    if-eqz p1, :cond_2c

    .line 136
    :try_start_28
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_36

    .line 137
    :cond_2c
    sget-object p1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_31
    .catch Lorg/json/JSONException; {:try_start_28 .. :try_end_31} :catch_32

    goto :goto_36

    :catch_32
    move-exception p1

    .line 140
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 142
    :goto_36
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
