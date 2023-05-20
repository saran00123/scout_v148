.class public Lcom/pilotlab/rollereye/Services/RTSPServices;
.super Ljava/lang/Object;
.source "RTSPServices.java"


# instance fields
.field public currentVolume:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 16
    iput v0, p0, Lcom/pilotlab/rollereye/Services/RTSPServices;->currentVolume:I

    return-void
.end method


# virtual methods
.method public cleanMute(Landroid/content/Context;)V
    .registers 5

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    const/4 v0, 0x3

    .line 26
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    iput v1, p0, Lcom/pilotlab/rollereye/Services/RTSPServices;->currentVolume:I

    .line 27
    iget v1, p0, Lcom/pilotlab/rollereye/Services/RTSPServices;->currentVolume:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return-void
.end method

.method public destroy()V
    .registers 1

    .line 68
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/Services/RTSPServices;->releaseVideo()V

    return-void
.end method

.method public mute(Landroid/content/Context;)V
    .registers 4

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    const/4 v0, 0x3

    .line 20
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    iput v1, p0, Lcom/pilotlab/rollereye/Services/RTSPServices;->currentVolume:I

    const/4 v1, 0x0

    .line 21
    invoke-virtual {p1, v0, v1, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return-void
.end method

.method public prepare()V
    .registers 6

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    new-instance v1, Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;

    const/4 v2, 0x1

    const-string v3, "rtsp_flags"

    const-string v4, "prefer_tcp"

    invoke-direct {v1, v2, v3, v4}, Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    new-instance v1, Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;

    const-string v3, "rtsp_transport"

    const-string v4, "tcp"

    invoke-direct {v1, v2, v3, v4}, Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    new-instance v1, Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;

    const-string v3, "allowed_media_types"

    const-string v4, "all"

    invoke-direct {v1, v2, v3, v4}, Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    new-instance v1, Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;

    const-string v3, "timeout"

    const/16 v4, 0x4e20

    invoke-direct {v1, v2, v3, v4}, Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;-><init>(ILjava/lang/String;I)V

    .line 42
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v1, Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;

    const-string v3, "buffer_size"

    const/16 v4, 0x524

    invoke-direct {v1, v2, v3, v4}, Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;-><init>(ILjava/lang/String;I)V

    .line 44
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    new-instance v1, Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;

    const-string v3, "infbuf"

    invoke-direct {v1, v2, v3, v2}, Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;-><init>(ILjava/lang/String;I)V

    .line 46
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    new-instance v1, Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;

    const-string v3, "analyzemaxduration"

    const/16 v4, 0x64

    invoke-direct {v1, v2, v3, v4}, Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;-><init>(ILjava/lang/String;I)V

    .line 48
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    new-instance v1, Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;

    const-string v3, "probesize"

    const/16 v4, 0x2800

    invoke-direct {v1, v2, v3, v4}, Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;-><init>(ILjava/lang/String;I)V

    .line 50
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    new-instance v1, Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;

    const-string v3, "flush_packets"

    invoke-direct {v1, v2, v3, v2}, Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;-><init>(ILjava/lang/String;I)V

    .line 52
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    new-instance v1, Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;

    const-string v3, "dns_cache_clear"

    invoke-direct {v1, v2, v3, v2}, Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;-><init>(ILjava/lang/String;I)V

    .line 54
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    new-instance v1, Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;

    const-string v3, "dns_cache_timeout"

    const/4 v4, -0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;-><init>(ILjava/lang/String;I)V

    .line 56
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    new-instance v1, Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;

    const/4 v2, 0x4

    const-string v3, "packet-buffering"

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;-><init>(ILjava/lang/String;I)V

    .line 59
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->instance()Lcom/shuyu/gsyvideoplayer/GSYVideoManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->setOptionModelList(Ljava/util/List;)V

    return-void
.end method

.method public releaseVideo()V
    .registers 1

    .line 64
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->releaseAllVideos()V

    return-void
.end method
