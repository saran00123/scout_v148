.class public Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;
.super Ljava/lang/Object;
.source "OrientationUtils.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

.field private mClick:Z

.field private mClickLand:Z

.field private mClickPort:Z

.field private mEnable:Z

.field private mIsLand:I

.field private mIsPause:Z

.field private mRotateWithSystem:Z

.field private orientationEventListener:Landroid/view/OrientationEventListener;

.field private screenType:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V
    .registers 5

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 21
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->screenType:I

    const/4 v1, 0x0

    .line 24
    iput-boolean v1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mClick:Z

    .line 25
    iput-boolean v1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mClickLand:Z

    .line 27
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mEnable:Z

    .line 29
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mRotateWithSystem:Z

    .line 31
    iput-boolean v1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mIsPause:Z

    .line 38
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->activity:Landroid/app/Activity;

    .line 39
    iput-object p2, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    .line 40
    invoke-direct {p0}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;)Landroid/app/Activity;
    .registers 1

    .line 15
    iget-object p0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;)Z
    .registers 1

    .line 15
    iget-boolean p0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mRotateWithSystem:Z

    return p0
.end method

.method static synthetic access$200(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;)Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;
    .registers 1

    .line 15
    iget-object p0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    return-object p0
.end method

.method static synthetic access$300(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;)Z
    .registers 1

    .line 15
    iget-boolean p0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mIsPause:Z

    return p0
.end method

.method static synthetic access$400(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;)Z
    .registers 1

    .line 15
    iget-boolean p0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mClick:Z

    return p0
.end method

.method static synthetic access$402(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;Z)Z
    .registers 2

    .line 15
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mClick:Z

    return p1
.end method

.method static synthetic access$500(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;)I
    .registers 1

    .line 15
    iget p0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mIsLand:I

    return p0
.end method

.method static synthetic access$502(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;I)I
    .registers 2

    .line 15
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mIsLand:I

    return p1
.end method

.method static synthetic access$600(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;)Z
    .registers 1

    .line 15
    iget-boolean p0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mClickLand:Z

    return p0
.end method

.method static synthetic access$602(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;Z)Z
    .registers 2

    .line 15
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mClickLand:Z

    return p1
.end method

.method static synthetic access$700(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;)Z
    .registers 1

    .line 15
    iget-boolean p0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mClickPort:Z

    return p0
.end method

.method static synthetic access$702(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;Z)Z
    .registers 2

    .line 15
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mClickPort:Z

    return p1
.end method

.method static synthetic access$802(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;I)I
    .registers 2

    .line 15
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->screenType:I

    return p1
.end method

.method private init()V
    .registers 3

    .line 44
    new-instance v0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$1;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$1;-><init>(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->orientationEventListener:Landroid/view/OrientationEventListener;

    .line 127
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->orientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    return-void
.end method


# virtual methods
.method public backToProtVideo()I
    .registers 4

    .line 166
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mIsLand:I

    const/4 v1, 0x0

    if-lez v0, :cond_2d

    const/4 v0, 0x1

    .line 167
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mClick:Z

    .line 168
    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 169
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 170
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    invoke-virtual {v2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getEnlargeImageRes()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 171
    :cond_26
    iput v1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mIsLand:I

    .line 172
    iput-boolean v1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mClickPort:Z

    const/16 v0, 0x1f4

    return v0

    :cond_2d
    return v1
.end method

.method public getIsLand()I
    .registers 2

    .line 215
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mIsLand:I

    return v0
.end method

.method public getScreenType()I
    .registers 2

    .line 232
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->screenType:I

    return v0
.end method

.method public isClick()Z
    .registers 2

    .line 199
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mClick:Z

    return v0
.end method

.method public isClickLand()Z
    .registers 2

    .line 207
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mClickLand:Z

    return v0
.end method

.method public isClickPort()Z
    .registers 2

    .line 224
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mClickPort:Z

    return v0
.end method

.method public isEnable()Z
    .registers 2

    .line 180
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mEnable:Z

    return v0
.end method

.method public isPause()Z
    .registers 2

    .line 254
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mIsPause:Z

    return v0
.end method

.method public isRotateWithSystem()Z
    .registers 2

    .line 241
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mRotateWithSystem:Z

    return v0
.end method

.method public releaseListener()V
    .registers 2

    .line 193
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->orientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_7

    .line 194
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    :cond_7
    return-void
.end method

.method public resolveByClick()V
    .registers 5

    .line 134
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mIsLand:I

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isVerticalFullByVideoSize()Z

    move-result v0

    if-eqz v0, :cond_f

    return-void

    :cond_f
    const/4 v0, 0x1

    .line 137
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mClick:Z

    .line 138
    iget v1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mIsLand:I

    const/4 v2, 0x0

    if-nez v1, :cond_3a

    .line 139
    iput v2, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->screenType:I

    .line 140
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 141
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    invoke-virtual {v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_35

    .line 142
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    invoke-virtual {v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v1

    iget-object v3, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    invoke-virtual {v3}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getShrinkImageRes()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 144
    :cond_35
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mIsLand:I

    .line 145
    iput-boolean v2, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mClickLand:Z

    goto :goto_74

    .line 147
    :cond_3a
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->screenType:I

    .line 148
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 149
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_70

    .line 150
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isIfCurrentIsFullscreen()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 151
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    invoke-virtual {v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getShrinkImageRes()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_70

    .line 153
    :cond_61
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    invoke-virtual {v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getEnlargeImageRes()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 156
    :cond_70
    :goto_70
    iput v2, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mIsLand:I

    .line 157
    iput-boolean v2, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mClickPort:Z

    :goto_74
    return-void
.end method

.method public setClick(Z)V
    .registers 2

    .line 203
    iget-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mClick:Z

    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mClick:Z

    return-void
.end method

.method public setClickLand(Z)V
    .registers 2

    .line 211
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mClickLand:Z

    return-void
.end method

.method public setClickPort(Z)V
    .registers 2

    .line 228
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mClickPort:Z

    return-void
.end method

.method public setEnable(Z)V
    .registers 2

    .line 184
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mEnable:Z

    .line 185
    iget-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mEnable:Z

    if-eqz p1, :cond_c

    .line 186
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->orientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {p1}, Landroid/view/OrientationEventListener;->enable()V

    goto :goto_11

    .line 188
    :cond_c
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->orientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {p1}, Landroid/view/OrientationEventListener;->disable()V

    :goto_11
    return-void
.end method

.method public setIsLand(I)V
    .registers 2

    .line 219
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mIsLand:I

    return-void
.end method

.method public setIsPause(Z)V
    .registers 2

    .line 258
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mIsPause:Z

    return-void
.end method

.method public setRotateWithSystem(Z)V
    .registers 2

    .line 250
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mRotateWithSystem:Z

    return-void
.end method

.method public setScreenType(I)V
    .registers 2

    .line 236
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->screenType:I

    return-void
.end method
