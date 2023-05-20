.class public Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;
.super Ljava/lang/Object;
.source "ListVideoUtil.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private autoRotation:Z

.field private cachePath:Ljava/io/File;

.field private context:Landroid/content/Context;

.field private fullLandFrist:Z

.field private fullViewContainer:Landroid/view/ViewGroup;

.field private gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

.field private handler:Landroid/os/Handler;

.field private hideActionBar:Z

.field private hideKey:Z

.field private hideStatusBar:Z

.field private isFull:Z

.field private isLoop:Z

.field private isSmall:Z

.field private listItemRect:[I

.field private listItemSize:[I

.field private listParams:Landroid/view/ViewGroup$LayoutParams;

.field private listParent:Landroid/view/ViewGroup;

.field private mTitle:Ljava/lang/String;

.field private mapHeadData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private needLockFull:Z

.field protected needShowWifiTip:Z

.field private orientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

.field private playPosition:I

.field private showFullAnimation:Z

.field private speed:I

.field private systemUiVisibility:I

.field private url:Ljava/lang/String;

.field private videoAllCallBack:Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "NULL"

    .line 42
    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->TAG:Ljava/lang/String;

    const/4 v0, -0x1

    .line 57
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->playPosition:I

    const/4 v0, 0x1

    .line 58
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->speed:I

    .line 65
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->hideKey:Z

    .line 66
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->needLockFull:Z

    .line 67
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->needShowWifiTip:Z

    .line 74
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->fullLandFrist:Z

    .line 75
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->autoRotation:Z

    .line 76
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->showFullAnimation:Z

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->handler:Landroid/os/Handler;

    .line 82
    new-instance v0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-direct {v0, p1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    .line 83
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    return-object p0
.end method

.method static synthetic access$100(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;)V
    .registers 2

    .line 37
    invoke-direct {p0, p1}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->resolveMaterialToNormal(Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)Ljava/lang/String;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->url:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)Ljava/lang/String;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)Z
    .registers 1

    .line 37
    iget-boolean p0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->hideKey:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)Landroid/content/Context;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)I
    .registers 1

    .line 37
    iget p0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->systemUiVisibility:I

    return p0
.end method

.method static synthetic access$1500(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)Z
    .registers 1

    .line 37
    iget-boolean p0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->hideActionBar:Z

    return p0
.end method

.method static synthetic access$1600(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)Z
    .registers 1

    .line 37
    iget-boolean p0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->hideStatusBar:Z

    return p0
.end method

.method static synthetic access$1700(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)[I
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->listItemRect:[I

    return-object p0
.end method

.method static synthetic access$1800(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)[I
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->listItemSize:[I

    return-object p0
.end method

.method static synthetic access$1900(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)V
    .registers 1

    .line 37
    invoke-direct {p0}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->resolveToNormal()V

    return-void
.end method

.method static synthetic access$200(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)Landroid/view/ViewGroup;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->fullViewContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)Landroid/os/Handler;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V
    .registers 2

    .line 37
    invoke-direct {p0, p1}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->resolveMaterialFullVideoShow(Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    return-void
.end method

.method static synthetic access$400(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;I)V
    .registers 2

    .line 37
    invoke-direct {p0, p1}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->resolveChangeFirstLogic(I)V

    return-void
.end method

.method static synthetic access$502(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;Z)Z
    .registers 2

    .line 37
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->isFull:Z

    return p1
.end method

.method static synthetic access$600(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->orientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    return-object p0
.end method

.method static synthetic access$700(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)Landroid/view/ViewGroup$LayoutParams;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->listParams:Landroid/view/ViewGroup$LayoutParams;

    return-object p0
.end method

.method static synthetic access$800(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)Landroid/view/ViewGroup;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->listParent:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$900(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->videoAllCallBack:Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;

    return-object p0
.end method

.method private isCurrentViewPlaying(ILjava/lang/String;)Z
    .registers 3

    .line 382
    invoke-direct {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->isPlayView(ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private isPlayView(ILjava/lang/String;)Z
    .registers 4

    .line 378
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->playPosition:I

    if-ne v0, p1, :cond_e

    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->TAG:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method private resolveChangeFirstLogic(I)V
    .registers 7

    .line 339
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->isFullLandFrist()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 340
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$6;

    invoke-direct {v1, p0}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$6;-><init>(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 349
    :cond_11
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setIfCurrentIsFullscreen(Z)V

    .line 350
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->videoAllCallBack:Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;

    if-eqz p1, :cond_33

    const-string p1, "onEnterFullscreen"

    .line 351
    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    .line 352
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->videoAllCallBack:Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->url:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->mTitle:Ljava/lang/String;

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    aput-object v3, v2, v0

    invoke-interface {p1, v1, v2}, Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;->onEnterFullscreen(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_33
    return-void
.end method

.method private resolveFullAdd()V
    .registers 3

    .line 227
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->fullViewContainer:Landroid/view/ViewGroup;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 228
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->fullViewContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/16 v0, 0x32

    .line 229
    invoke-direct {p0, v0}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->resolveChangeFirstLogic(I)V

    return-void
.end method

.method private resolveMaterialAnimation()V
    .registers 8

    const/4 v0, 0x2

    .line 236
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->listItemRect:[I

    .line 237
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->listItemSize:[I

    .line 238
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->context:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->hideStatusBar:Z

    iget-boolean v2, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->hideActionBar:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->saveLocationStatus(Landroid/content/Context;ZZ)V

    .line 239
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 240
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v2, -0x1000000

    .line 241
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 242
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->listItemSize:[I

    const/4 v4, 0x0

    aget v5, v3, v4

    const/4 v6, 0x1

    aget v3, v3, v6

    invoke-direct {v2, v5, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 243
    iget-object v3, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->listItemRect:[I

    aget v5, v3, v4

    aget v3, v3, v6

    invoke-virtual {v2, v5, v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 244
    iget-object v3, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v1, v3, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->fullViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$3;

    invoke-direct {v1, p0}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$3;-><init>(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private resolveMaterialFullVideoShow(Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V
    .registers 4

    .line 261
    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x0

    .line 262
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    const/4 v1, -0x1

    .line 263
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 264
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v1, 0x11

    .line 265
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 266
    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    .line 267
    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setIfCurrentIsFullscreen(Z)V

    return-void
.end method

.method private resolveMaterialToNormal(Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;)V
    .registers 7

    .line 308
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->showFullAnimation:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->fullViewContainer:Landroid/view/ViewGroup;

    instance-of v0, v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1c

    .line 309
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->orientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->backToProtVideo()I

    move-result v0

    .line 310
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$5;

    invoke-direct {v2, p0, p1}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$5;-><init>(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;)V

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1f

    .line 330
    :cond_1c
    invoke-direct {p0}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->resolveToNormal()V

    :goto_1f
    return-void
.end method

.method private resolveToFull()V
    .registers 4

    .line 186
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    iput v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->systemUiVisibility:I

    .line 187
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->context:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->hideActionBar:Z

    iget-boolean v2, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->hideStatusBar:Z

    invoke-static {v0, v1, v2}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->hideSupportActionBar(Landroid/content/Context;ZZ)V

    .line 188
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->hideKey:Z

    if-eqz v0, :cond_24

    .line 189
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->hideNavKey(Landroid/content/Context;)V

    :cond_24
    const/4 v0, 0x1

    .line 191
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->isFull:Z

    .line 192
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 193
    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v2}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput-object v2, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->listParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v1, :cond_40

    .line 195
    iput-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->listParent:Landroid/view/ViewGroup;

    .line 196
    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 198
    :cond_40
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v1, v0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setIfCurrentIsFullscreen(Z)V

    .line 199
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getShrinkImageRes()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 200
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getBackButton()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 202
    new-instance v0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->context:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-direct {v0, v1, v2}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;-><init>(Landroid/app/Activity;Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->orientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    .line 203
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->orientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->isAutoRotation()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->setEnable(Z)V

    .line 204
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getBackButton()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$2;

    invoke-direct {v1, p0}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$2;-><init>(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->showFullAnimation:Z

    if-eqz v0, :cond_94

    .line 211
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->fullViewContainer:Landroid/view/ViewGroup;

    instance-of v0, v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_90

    .line 213
    invoke-direct {p0}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->resolveMaterialAnimation()V

    goto :goto_97

    .line 215
    :cond_90
    invoke-direct {p0}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->resolveFullAdd()V

    goto :goto_97

    .line 219
    :cond_94
    invoke-direct {p0}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->resolveFullAdd()V

    :goto_97
    return-void
.end method

.method private resolveToNormal()V
    .registers 6

    .line 275
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->orientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->backToProtVideo()I

    move-result v0

    .line 276
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$4;

    invoke-direct {v2, p0}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$4;-><init>(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)V

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private saveLocationStatus(Landroid/content/Context;ZZ)V
    .registers 7

    .line 360
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->listParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->listItemRect:[I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 361
    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    .line 362
    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->getActionBarHeight(Landroid/app/Activity;)I

    move-result p1

    const/4 v1, 0x1

    if-eqz p2, :cond_1b

    .line 364
    iget-object p2, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->listItemRect:[I

    aget v2, p2, v1

    sub-int/2addr v2, v0

    aput v2, p2, v1

    :cond_1b
    if-eqz p3, :cond_24

    .line 367
    iget-object p2, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->listItemRect:[I

    aget p3, p2, v1

    sub-int/2addr p3, p1

    aput p3, p2, v1

    .line 369
    :cond_24
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->listItemSize:[I

    const/4 p2, 0x0

    iget-object p3, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->listParent:Landroid/view/ViewGroup;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getWidth()I

    move-result p3

    aput p3, p1, p2

    .line 370
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->listItemSize:[I

    iget-object p2, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->listParent:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result p2

    aput p2, p1, v1

    return-void
.end method


# virtual methods
.method public addVideoPlayer(ILandroid/view/View;Ljava/lang/String;Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 6

    .line 97
    invoke-virtual {p4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 98
    invoke-direct {p0, p1, p3}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->isCurrentViewPlaying(ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_24

    .line 99
    iget-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->isFull:Z

    if-nez p1, :cond_2e

    .line 100
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_1a

    .line 102
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 103
    :cond_1a
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {p4, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 p1, 0x4

    .line 104
    invoke-virtual {p5, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2e

    :cond_24
    const/4 p1, 0x0

    .line 107
    invoke-virtual {p5, p1}, Landroid/view/View;->setVisibility(I)V

    .line 108
    invoke-virtual {p4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 109
    invoke-virtual {p4, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2e
    :goto_2e
    return-void
.end method

.method public backFromFull()Z
    .registers 3

    .line 390
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->fullViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_f

    const/4 v0, 0x1

    .line 392
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-direct {p0, v1}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->resolveMaterialToNormal(Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;)V

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public getCachePath()Ljava/io/File;
    .registers 2

    .line 572
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->cachePath:Ljava/io/File;

    return-object v0
.end method

.method public getCurrentPositionWhenPlaying()I
    .registers 2

    .line 602
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getCurrentPositionWhenPlaying()I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .registers 2

    .line 555
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getDuration()I

    move-result v0

    return v0
.end method

.method public getGsyVideoPlayer()Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;
    .registers 2

    .line 609
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    return-object v0
.end method

.method public getMapHeadData()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 591
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->mapHeadData:Ljava/util/Map;

    return-object v0
.end method

.method public getPlayPosition()I
    .registers 2

    .line 528
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->playPosition:I

    return v0
.end method

.method public getPlayTAG()Ljava/lang/String;
    .registers 2

    .line 532
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeed()I
    .registers 2

    .line 560
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->speed:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 583
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isAutoRotation()Z
    .registers 2

    .line 461
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->autoRotation:Z

    return v0
.end method

.method public isFull()Z
    .registers 2

    .line 448
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->isFull:Z

    return v0
.end method

.method public isFullLandFrist()Z
    .registers 2

    .line 474
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->fullLandFrist:Z

    return v0
.end method

.method public isHideActionBar()Z
    .registers 2

    .line 505
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->hideActionBar:Z

    return v0
.end method

.method public isHideKey()Z
    .registers 2

    .line 613
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->hideKey:Z

    return v0
.end method

.method public isHideStatusBar()Z
    .registers 2

    .line 492
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->hideStatusBar:Z

    return v0
.end method

.method public isLoop()Z
    .registers 2

    .line 541
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->isLoop:Z

    return v0
.end method

.method public isNeedLockFull()Z
    .registers 2

    .line 624
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->needLockFull:Z

    return v0
.end method

.method public isNeedShowWifiTip()Z
    .registers 2

    .line 635
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->needShowWifiTip:Z

    return v0
.end method

.method public isShowFullAnimation()Z
    .registers 2

    .line 487
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->showFullAnimation:Z

    return v0
.end method

.method public isSmall()Z
    .registers 2

    .line 536
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->isSmall:Z

    return v0
.end method

.method public releaseVideoPlayer()V
    .registers 2

    .line 401
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_d

    .line 403
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_d
    const/4 v0, -0x1

    .line 404
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->playPosition:I

    const-string v0, "NULL"

    .line 405
    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->TAG:Ljava/lang/String;

    .line 406
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->orientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    if-eqz v0, :cond_1b

    .line 407
    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->releaseListener()V

    :cond_1b
    return-void
.end method

.method public resolveFullBtn()V
    .registers 2

    .line 172
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->fullViewContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_5

    return-void

    .line 175
    :cond_5
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->isFull:Z

    if-nez v0, :cond_d

    .line 176
    invoke-direct {p0}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->resolveToFull()V

    goto :goto_12

    .line 178
    :cond_d
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-direct {p0, v0}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->resolveMaterialToNormal(Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;)V

    :goto_12
    return-void
.end method

.method public setAutoRotation(Z)V
    .registers 2

    .line 457
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->autoRotation:Z

    return-void
.end method

.method public setCachePath(Ljava/io/File;)V
    .registers 2

    .line 579
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->cachePath:Ljava/io/File;

    return-void
.end method

.method public setFullLandFrist(Z)V
    .registers 2

    .line 470
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->fullLandFrist:Z

    return-void
.end method

.method public setFullViewContainer(Landroid/view/ViewGroup;)V
    .registers 2

    .line 441
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->fullViewContainer:Landroid/view/ViewGroup;

    return-void
.end method

.method public setHideActionBar(Z)V
    .registers 2

    .line 514
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->hideActionBar:Z

    return-void
.end method

.method public setHideKey(Z)V
    .registers 2

    .line 620
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->hideKey:Z

    return-void
.end method

.method public setHideStatusBar(Z)V
    .registers 2

    .line 501
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->hideStatusBar:Z

    return-void
.end method

.method public setLoop(Z)V
    .registers 2

    .line 548
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->isLoop:Z

    return-void
.end method

.method public setMapHeadData(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 595
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->mapHeadData:Ljava/util/Map;

    return-void
.end method

.method public setNeedLockFull(Z)V
    .registers 2

    .line 631
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->needLockFull:Z

    return-void
.end method

.method public setNeedShowWifiTip(Z)V
    .registers 2

    .line 642
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->needShowWifiTip:Z

    return-void
.end method

.method public setPlayPositionAndTag(ILjava/lang/String;)V
    .registers 3

    .line 120
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->playPosition:I

    .line 121
    iput-object p2, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public setShowFullAnimation(Z)V
    .registers 2

    .line 483
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->showFullAnimation:Z

    return-void
.end method

.method public setSpeed(I)V
    .registers 2

    .line 567
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->speed:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2

    .line 587
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setVideoAllCallBack(Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;)V
    .registers 3

    .line 523
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->videoAllCallBack:Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;

    .line 524
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v0, p1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setVideoAllCallBack(Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;)V

    return-void
.end method

.method public showSmallVideo(Landroid/graphics/Point;ZZ)V
    .registers 6

    .line 419
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getCurrentState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    .line 420
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->showSmallVideo(Landroid/graphics/Point;ZZ)Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    const/4 p1, 0x1

    .line 421
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->isSmall:Z

    :cond_11
    return-void
.end method

.method public smallVideoToNormal()V
    .registers 2

    const/4 v0, 0x0

    .line 430
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->isSmall:Z

    .line 431
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->hideSmallVideo()V

    return-void
.end method

.method public startPlay(Ljava/lang/String;)V
    .registers 10

    .line 131
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->isSmall()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 132
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->smallVideoToNormal()V

    .line 135
    :cond_9
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->url:Ljava/lang/String;

    .line 137
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->release()V

    .line 139
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    iget-boolean v1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->isLoop:Z

    invoke-virtual {v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setLooping(Z)V

    .line 141
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    iget v1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->speed:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setSpeed(F)V

    .line 143
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    iget-boolean v1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->needShowWifiTip:Z

    invoke-virtual {v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setNeedShowWifiTip(Z)V

    .line 145
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    iget-boolean v1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->needLockFull:Z

    invoke-virtual {v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setNeedLockFull(Z)V

    .line 147
    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->cachePath:Ljava/io/File;

    iget-object v6, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->mapHeadData:Ljava/util/Map;

    iget-object v7, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->mTitle:Ljava/lang/String;

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setUp(Ljava/lang/String;ZLjava/io/File;Ljava/util/Map;Ljava/lang/String;)Z

    .line 149
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->mTitle:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4d

    .line 150
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getTitleTextView()Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    :cond_4d
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getTitleTextView()Landroid/widget/TextView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 157
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getBackButton()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 160
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object p1

    new-instance v0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$1;

    invoke-direct {v0, p0}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$1;-><init>(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->startPlayLogic()V

    return-void
.end method
