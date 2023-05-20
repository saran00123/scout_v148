.class public Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;
.super Ljava/lang/Object;
.source "IjkMediaCodecInfo.java"


# static fields
.field public static final RANK_ACCEPTABLE:I = 0x2bc

.field public static final RANK_LAST_CHANCE:I = 0x258

.field public static final RANK_MAX:I = 0x3e8

.field public static final RANK_NON_STANDARD:I = 0x64

.field public static final RANK_NO_SENSE:I = 0x0

.field public static final RANK_SECURE:I = 0x12c

.field public static final RANK_SOFTWARE:I = 0xc8

.field public static final RANK_TESTED:I = 0x320

.field private static final TAG:Ljava/lang/String; = "IjkMediaCodecInfo"

.field private static sKnownCodecList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mCodecInfo:Landroid/media/MediaCodecInfo;

.field public mMimeType:Ljava/lang/String;

.field public mRank:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->mRank:I

    return-void
.end method

.method private static declared-synchronized getKnownCodecList()Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-class v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;

    monitor-enter v0

    .line 34
    :try_start_3
    sget-object v1, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    if-eqz v1, :cond_b

    .line 35
    sget-object v1, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1b2

    monitor-exit v0

    return-object v1

    .line 37
    :cond_b
    :try_start_b
    new-instance v1, Ljava/util/TreeMap;

    sget-object v2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    sput-object v1, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    .line 45
    sget-object v1, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string v2, "OMX.Nvidia.h264.decode"

    const/16 v3, 0x320

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v1, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string v2, "OMX.Nvidia.h264.decode.secure"

    const/16 v4, 0x12c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v1, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string v2, "OMX.Intel.hw_vd.h264"

    const/16 v4, 0x321

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v1, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string v2, "OMX.Intel.VideoDecoder.AVC"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v1, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string v2, "OMX.qcom.video.decoder.avc"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v1, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string v2, "OMX.ittiam.video.decoder.avc"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v1, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string v2, "OMX.SEC.avc.dec"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v1, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string v2, "OMX.SEC.AVC.Decoder"

    const/16 v4, 0x31f

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v1, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string v2, "OMX.SEC.avcdec"

    const/16 v5, 0x31e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v1, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string v2, "OMX.SEC.avc.sw.dec"

    const/16 v5, 0xc8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v1, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string v2, "OMX.Exynos.avc.dec"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v1, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string v2, "OMX.Exynos.AVC.Decoder"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v1, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string v2, "OMX.k3.video.decoder.avc"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v1, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string v2, "OMX.IMG.MSVDX.Decoder.AVC"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v1, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string v2, "OMX.TI.DUCATI1.VIDEO.DECODER"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v1, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string v2, "OMX.rk.video_decoder.avc"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v1, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string v2, "OMX.amlogic.avc.decoder.awesome"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v1, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string v2, "OMX.MARVELL.VIDEO.HW.CODA7542DECODER"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v1, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string v2, "OMX.MARVELL.VIDEO.H264DECODER"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v1, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string v2, "OMX.Action.Video.Decoder"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v1, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string v2, "OMX.allwinner.video.decoder.avc"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v1, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string v2, "OMX.BRCM.vc4.decoder.avc"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v1, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string v2, "OMX.brcm.video.h264.hw.decoder"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v1, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string v2, "OMX.brcm.video.h264.decoder"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v1, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string v2, "OMX.cosmo.video.decoder.avc"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v1, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string v2, "OMX.duos.h264.decoder"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v1, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string v2, "OMX.hantro.81x0.video.decoder"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v1, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string v2, "OMX.hantro.G1.video.decoder"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v1, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string v2, "OMX.hisi.video.decoder"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v1, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string v2, "OMX.LG.decoder.video.avc"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v1, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string v2, "OMX.MS.AVC.Decoder"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v1, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string v2, "OMX.RENESAS.VIDEO.DECODER.H264"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v1, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string v2, "OMX.RTK.video.decoder"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v1, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string v2, "OMX.sprd.h264.decoder"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v1, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string v2, "OMX.ST.VFM.H264Dec"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v1, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string v2, "OMX.vpu.video_decoder.avc"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v1, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string v2, "OMX.WMT.decoder.avc"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v1, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string v2, "OMX.bluestacks.hw.decoder"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v1, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string v2, "OMX.google.h264.decoder"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v1, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string v2, "OMX.google.h264.lc.decoder"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v1, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string v2, "OMX.k3.ffmpeg.decoder"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v1, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string v2, "OMX.ffmpeg.video.decoder"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v1, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string v2, "OMX.sprd.soft.h264.decoder"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v1, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;
    :try_end_1b0
    .catchall {:try_start_b .. :try_end_1b0} :catchall_1b2

    monitor-exit v0

    return-object v1

    :catchall_1b2
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getLevelName(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3c

    const/4 v0, 0x2

    if-eq p0, v0, :cond_39

    sparse-switch p0, :sswitch_data_40

    const-string p0, "0"

    return-object p0

    :sswitch_c
    const-string p0, "52"

    return-object p0

    :sswitch_f
    const-string p0, "51"

    return-object p0

    :sswitch_12
    const-string p0, "5"

    return-object p0

    :sswitch_15
    const-string p0, "42"

    return-object p0

    :sswitch_18
    const-string p0, "41"

    return-object p0

    :sswitch_1b
    const-string p0, "4"

    return-object p0

    :sswitch_1e
    const-string p0, "32"

    return-object p0

    :sswitch_21
    const-string p0, "31"

    return-object p0

    :sswitch_24
    const-string p0, "3"

    return-object p0

    :sswitch_27
    const-string p0, "22"

    return-object p0

    :sswitch_2a
    const-string p0, "21"

    return-object p0

    :sswitch_2d
    const-string p0, "2"

    return-object p0

    :sswitch_30
    const-string p0, "13"

    return-object p0

    :sswitch_33
    const-string p0, "12"

    return-object p0

    :sswitch_36
    const-string p0, "11"

    return-object p0

    :cond_39
    const-string p0, "1b"

    return-object p0

    :cond_3c
    const-string p0, "1"

    return-object p0

    nop

    :sswitch_data_40
    .sparse-switch
        0x4 -> :sswitch_36
        0x8 -> :sswitch_33
        0x10 -> :sswitch_30
        0x20 -> :sswitch_2d
        0x40 -> :sswitch_2a
        0x80 -> :sswitch_27
        0x100 -> :sswitch_24
        0x200 -> :sswitch_21
        0x400 -> :sswitch_1e
        0x800 -> :sswitch_1b
        0x1000 -> :sswitch_18
        0x2000 -> :sswitch_15
        0x4000 -> :sswitch_12
        0x8000 -> :sswitch_f
        0x10000 -> :sswitch_c
    .end sparse-switch
.end method

.method public static getProfileLevelName(II)Ljava/lang/String;
    .registers 6

    .line 228
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 229
    invoke-static {p0}, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->getProfileName(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->getLevelName(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x2

    aput-object p0, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x3

    aput-object p0, v1, p1

    const-string p0, " %s Profile Level %s (%d,%d)"

    .line 228
    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getProfileName(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2e

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2b

    const/4 v0, 0x4

    if-eq p0, v0, :cond_28

    const/16 v0, 0x8

    if-eq p0, v0, :cond_25

    const/16 v0, 0x10

    if-eq p0, v0, :cond_22

    const/16 v0, 0x20

    if-eq p0, v0, :cond_1f

    const/16 v0, 0x40

    if-eq p0, v0, :cond_1c

    const-string p0, "Unknown"

    return-object p0

    :cond_1c
    const-string p0, "High444"

    return-object p0

    :cond_1f
    const-string p0, "High422"

    return-object p0

    :cond_22
    const-string p0, "High10"

    return-object p0

    :cond_25
    const-string p0, "High"

    return-object p0

    :cond_28
    const-string p0, "Extends"

    return-object p0

    :cond_2b
    const-string p0, "Main"

    return-object p0

    :cond_2e
    const-string p0, "Baseline"

    return-object p0
.end method

.method public static setupCandidate(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;
    .registers 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_9c

    .line 140
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_b

    goto/16 :goto_9c

    .line 144
    :cond_b
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v1

    .line 145
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_16

    return-object v0

    .line 148
    :cond_16
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "omx."

    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0x258

    const/4 v3, 0x0

    const/16 v4, 0xc8

    if-nez v1, :cond_2d

    const/16 v2, 0x64

    goto/16 :goto_91

    :cond_2d
    const-string v1, "omx.pv"

    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_37

    :goto_35
    move v2, v4

    goto :goto_91

    :cond_37
    const-string v1, "omx.google."

    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_40

    goto :goto_35

    :cond_40
    const-string v1, "omx.ffmpeg."

    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_49

    goto :goto_35

    :cond_49
    const-string v1, "omx.k3.ffmpeg."

    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_52

    goto :goto_35

    :cond_52
    const-string v1, "omx.avcodec."

    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5b

    goto :goto_35

    :cond_5b
    const-string v1, "omx.ittiam."

    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_65

    :goto_63
    move v2, v3

    goto :goto_91

    :cond_65
    const-string v1, "omx.mtk."

    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_77

    .line 168
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_74

    goto :goto_63

    :cond_74
    const/16 v2, 0x320

    goto :goto_91

    .line 173
    :cond_77
    invoke-static {}, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->getKnownCodecList()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_88

    .line 175
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_91

    .line 179
    :cond_88
    :try_start_88
    invoke-virtual {p0, p1}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v0
    :try_end_8c
    .catch Ljava/lang/Throwable; {:try_start_88 .. :try_end_8c} :catch_91

    if-eqz v0, :cond_91

    const/16 v0, 0x2bc

    move v2, v0

    .line 190
    :catch_91
    :cond_91
    :goto_91
    new-instance v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;

    invoke-direct {v0}, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;-><init>()V

    .line 191
    iput-object p0, v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->mCodecInfo:Landroid/media/MediaCodecInfo;

    .line 192
    iput v2, v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->mRank:I

    .line 193
    iput-object p1, v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->mMimeType:Ljava/lang/String;

    :cond_9c
    :goto_9c
    return-object v0
.end method


# virtual methods
.method public dumpProfileLevels(Ljava/lang/String;)V
    .registers 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    const-string v0, "IjkMediaCodecInfo"

    .line 199
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_9

    return-void

    .line 203
    :cond_9
    :try_start_9
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->mCodecInfo:Landroid/media/MediaCodecInfo;

    .line 204
    invoke-virtual {v1, p1}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_32

    .line 208
    iget-object v2, p1, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    if-eqz v2, :cond_32

    .line 209
    iget-object p1, p1, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    array-length v2, p1

    move v3, v1

    move v4, v3

    move v5, v4

    :goto_1c
    if-ge v3, v2, :cond_34

    aget-object v6, p1, v3

    if-nez v6, :cond_23

    goto :goto_2f

    .line 213
    :cond_23
    iget v7, v6, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 214
    iget v6, v6, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    :goto_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_32
    move v4, v1

    move v5, v4

    .line 219
    :cond_34
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 221
    invoke-static {v4, v5}, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->getProfileLevelName(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 220
    invoke-static {p1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 219
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_48} :catch_49

    goto :goto_4e

    :catch_49
    const-string p1, "profile-level: exception"

    .line 223
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4e
    return-void
.end method
