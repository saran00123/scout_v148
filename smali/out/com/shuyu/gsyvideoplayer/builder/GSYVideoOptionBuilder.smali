.class public Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;
.super Ljava/lang/Object;
.source "GSYVideoOptionBuilder.java"


# instance fields
.field protected mActionBar:Z

.field protected mAutoFullWithSize:Z

.field protected mBottomProgressDrawable:Landroid/graphics/drawable/Drawable;

.field protected mBottomShowProgressDrawable:Landroid/graphics/drawable/Drawable;

.field protected mBottomShowProgressThumbDrawable:Landroid/graphics/drawable/Drawable;

.field protected mCachePath:Ljava/io/File;

.field protected mCacheWithPlay:Z

.field protected mDialogProgressBarDrawable:Landroid/graphics/drawable/Drawable;

.field protected mDialogProgressHighLightColor:I

.field protected mDialogProgressNormalColor:I

.field protected mDismissControlTime:I

.field protected mEffectFilter:Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$ShaderInterface;

.field protected mEnlargeImageRes:I

.field protected mGSYVideoProgressListener:Lcom/shuyu/gsyvideoplayer/listener/GSYVideoProgressListener;

.field protected mHideKey:Z

.field protected mIsTouchWiget:Z

.field protected mIsTouchWigetFull:Z

.field protected mLockClickListener:Lcom/shuyu/gsyvideoplayer/listener/LockClickListener;

.field protected mLockLand:Z

.field protected mLooping:Z

.field protected mMapHeadData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mNeedLockFull:Z

.field protected mNeedShowWifiTip:Z

.field protected mOverrideExtension:Ljava/lang/String;

.field protected mPlayPosition:I

.field protected mPlayTag:Ljava/lang/String;

.field protected mReleaseWhenLossAudio:Z

.field protected mRotateViewAuto:Z

.field protected mRotateWithSystem:Z

.field protected mSeekOnStart:J

.field protected mSeekRatio:F

.field protected mSetUpLazy:Z

.field protected mShowFullAnimation:Z

.field protected mShowPauseCover:Z

.field protected mShrinkImageRes:I

.field protected mSounchTouch:Z

.field protected mSpeed:F

.field protected mStartAfterPrepared:Z

.field protected mStatusBar:Z

.field protected mThumbImageView:Landroid/view/View;

.field protected mThumbPlay:Z

.field protected mUrl:Ljava/lang/String;

.field protected mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;

.field protected mVideoTitle:Ljava/lang/String;

.field protected mVolumeProgressDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 30
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mShrinkImageRes:I

    .line 33
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mEnlargeImageRes:I

    const/16 v0, -0x16

    .line 36
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mPlayPosition:I

    const/16 v0, -0xb

    .line 39
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mDialogProgressHighLightColor:I

    .line 42
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mDialogProgressNormalColor:I

    const/16 v0, 0x9c4

    .line 45
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mDismissControlTime:I

    const-wide/16 v0, -0x1

    .line 48
    iput-wide v0, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mSeekOnStart:J

    const/high16 v0, 0x3f800000    # 1.0f

    .line 51
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mSeekRatio:F

    .line 54
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mSpeed:F

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mHideKey:Z

    .line 60
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mShowFullAnimation:Z

    const/4 v1, 0x0

    .line 63
    iput-boolean v1, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mAutoFullWithSize:Z

    .line 66
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mNeedShowWifiTip:Z

    .line 69
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mRotateViewAuto:Z

    .line 72
    iput-boolean v1, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mLockLand:Z

    .line 75
    iput-boolean v1, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mLooping:Z

    .line 78
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mIsTouchWiget:Z

    .line 81
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mIsTouchWigetFull:Z

    .line 84
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mShowPauseCover:Z

    .line 87
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mRotateWithSystem:Z

    .line 102
    iput-boolean v1, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mSetUpLazy:Z

    .line 105
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mStartAfterPrepared:Z

    .line 108
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mReleaseWhenLossAudio:Z

    .line 111
    iput-boolean v1, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mActionBar:Z

    .line 114
    iput-boolean v1, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mStatusBar:Z

    const-string v0, ""

    .line 117
    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mPlayTag:Ljava/lang/String;

    const/4 v0, 0x0

    .line 123
    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mVideoTitle:Ljava/lang/String;

    .line 159
    new-instance v0, Lcom/shuyu/gsyvideoplayer/render/effect/NoEffect;

    invoke-direct {v0}, Lcom/shuyu/gsyvideoplayer/render/effect/NoEffect;-><init>()V

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mEffectFilter:Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$ShaderInterface;

    return-void
.end method


# virtual methods
.method public build(Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;)V
    .registers 4

    .line 563
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mBottomShowProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mBottomShowProgressThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_b

    .line 564
    invoke-virtual {p1, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setBottomShowProgressBarDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 566
    :cond_b
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mBottomProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_12

    .line 567
    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setBottomProgressBarDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 569
    :cond_12
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mVolumeProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_19

    .line 570
    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setDialogVolumeProgressBar(Landroid/graphics/drawable/Drawable;)V

    .line 573
    :cond_19
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mDialogProgressBarDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_20

    .line 574
    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setDialogProgressBar(Landroid/graphics/drawable/Drawable;)V

    .line 577
    :cond_20
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mDialogProgressHighLightColor:I

    if-lez v0, :cond_2b

    iget v1, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mDialogProgressNormalColor:I

    if-lez v1, :cond_2b

    .line 578
    invoke-virtual {p1, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setDialogProgressColor(II)V

    .line 581
    :cond_2b
    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->build(Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    return-void
.end method

.method public build(Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V
    .registers 15

    .line 585
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mPlayTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setPlayTag(Ljava/lang/String;)V

    .line 586
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mPlayPosition:I

    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setPlayPosition(I)V

    .line 588
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mThumbPlay:Z

    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setThumbPlay(Z)V

    .line 590
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mThumbImageView:Landroid/view/View;

    if-eqz v0, :cond_16

    .line 591
    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setThumbImageView(Landroid/view/View;)V

    .line 594
    :cond_16
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mNeedLockFull:Z

    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setNeedLockFull(Z)V

    .line 596
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mLockClickListener:Lcom/shuyu/gsyvideoplayer/listener/LockClickListener;

    if-eqz v0, :cond_22

    .line 597
    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setLockClickListener(Lcom/shuyu/gsyvideoplayer/listener/LockClickListener;)V

    .line 600
    :cond_22
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mDismissControlTime:I

    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setDismissControlTime(I)V

    .line 603
    iget-wide v0, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mSeekOnStart:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_32

    .line 604
    invoke-virtual {p1, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setSeekOnStart(J)V

    .line 607
    :cond_32
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mShowFullAnimation:Z

    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setShowFullAnimation(Z)V

    .line 608
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mLooping:Z

    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setLooping(Z)V

    .line 609
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;

    if-eqz v0, :cond_43

    .line 610
    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setVideoAllCallBack(Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;)V

    .line 612
    :cond_43
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mGSYVideoProgressListener:Lcom/shuyu/gsyvideoplayer/listener/GSYVideoProgressListener;

    if-eqz v0, :cond_4a

    .line 613
    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setGSYVideoProgressListener(Lcom/shuyu/gsyvideoplayer/listener/GSYVideoProgressListener;)V

    .line 615
    :cond_4a
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mOverrideExtension:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setOverrideExtension(Ljava/lang/String;)V

    .line 616
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mAutoFullWithSize:Z

    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setAutoFullWithSize(Z)V

    .line 617
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mRotateViewAuto:Z

    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setRotateViewAuto(Z)V

    .line 618
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mLockLand:Z

    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setLockLand(Z)V

    .line 619
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mSpeed:F

    iget-boolean v1, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mSounchTouch:Z

    invoke-virtual {p1, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setSpeed(FZ)V

    .line 620
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mHideKey:Z

    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setHideKey(Z)V

    .line 621
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mIsTouchWiget:Z

    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setIsTouchWiget(Z)V

    .line 622
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mIsTouchWigetFull:Z

    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setIsTouchWigetFull(Z)V

    .line 623
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mNeedShowWifiTip:Z

    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setNeedShowWifiTip(Z)V

    .line 624
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mEffectFilter:Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$ShaderInterface;

    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setEffectFilter(Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$ShaderInterface;)V

    .line 625
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mStartAfterPrepared:Z

    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setStartAfterPrepared(Z)V

    .line 626
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mReleaseWhenLossAudio:Z

    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setReleaseWhenLossAudio(Z)V

    .line 627
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mActionBar:Z

    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setFullHideActionBar(Z)V

    .line 628
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mStatusBar:Z

    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setFullHideStatusBar(Z)V

    .line 629
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mEnlargeImageRes:I

    if-lez v0, :cond_99

    .line 630
    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setEnlargeImageRes(I)V

    .line 632
    :cond_99
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mShrinkImageRes:I

    if-lez v0, :cond_a0

    .line 633
    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setShrinkImageRes(I)V

    .line 635
    :cond_a0
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mShowPauseCover:Z

    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setShowPauseCover(Z)V

    .line 636
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mSeekRatio:F

    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setSeekRatio(F)V

    .line 637
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mRotateWithSystem:Z

    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setRotateWithSystem(Z)V

    .line 638
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mSetUpLazy:Z

    if-eqz v0, :cond_c2

    .line 639
    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mUrl:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mCacheWithPlay:Z

    iget-object v4, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mCachePath:Ljava/io/File;

    iget-object v5, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mMapHeadData:Ljava/util/Map;

    iget-object v6, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mVideoTitle:Ljava/lang/String;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setUpLazy(Ljava/lang/String;ZLjava/io/File;Ljava/util/Map;Ljava/lang/String;)Z

    goto :goto_d0

    .line 641
    :cond_c2
    iget-object v8, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mUrl:Ljava/lang/String;

    iget-boolean v9, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mCacheWithPlay:Z

    iget-object v10, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mCachePath:Ljava/io/File;

    iget-object v11, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mMapHeadData:Ljava/util/Map;

    iget-object v12, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mVideoTitle:Ljava/lang/String;

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setUp(Ljava/lang/String;ZLjava/io/File;Ljava/util/Map;Ljava/lang/String;)Z

    :goto_d0
    return-void
.end method

.method public setAutoFullWithSize(Z)Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;
    .registers 2

    .line 171
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mAutoFullWithSize:Z

    return-object p0
.end method

.method public setBottomProgressBarDrawable(Landroid/graphics/drawable/Drawable;)Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;
    .registers 2

    .line 460
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mBottomProgressDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setBottomShowProgressBarDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;
    .registers 3

    .line 451
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mBottomShowProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 452
    iput-object p2, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mBottomShowProgressThumbDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setCachePath(Ljava/io/File;)Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;
    .registers 2

    .line 414
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mCachePath:Ljava/io/File;

    return-object p0
.end method

.method public setCacheWithPlay(Z)Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;
    .registers 2

    .line 383
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mCacheWithPlay:Z

    return-object p0
.end method

.method public setDialogProgressBar(Landroid/graphics/drawable/Drawable;)Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;
    .registers 2

    .line 477
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mDialogProgressBarDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setDialogProgressColor(II)Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;
    .registers 3

    .line 485
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mDialogProgressHighLightColor:I

    .line 486
    iput p2, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mDialogProgressNormalColor:I

    return-object p0
.end method

.method public setDialogVolumeProgressBar(Landroid/graphics/drawable/Drawable;)Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;
    .registers 2

    .line 468
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mVolumeProgressDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setDismissControlTime(I)Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;
    .registers 2

    .line 521
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mDismissControlTime:I

    return-object p0
.end method

.method public setEffectFilter(Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$ShaderInterface;)Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;
    .registers 2

    .line 529
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mEffectFilter:Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$ShaderInterface;

    return-object p0
.end method

.method public setEnlargeImageRes(I)Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;
    .registers 2

    .line 278
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mEnlargeImageRes:I

    return-object p0
.end method

.method public setFullHideActionBar(Z)Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;
    .registers 2

    .line 553
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mActionBar:Z

    return-object p0
.end method

.method public setFullHideStatusBar(Z)Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;
    .registers 2

    .line 558
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mStatusBar:Z

    return-object p0
.end method

.method public setGSYVideoProgressListener(Lcom/shuyu/gsyvideoplayer/listener/GSYVideoProgressListener;)Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;
    .registers 2

    .line 433
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mGSYVideoProgressListener:Lcom/shuyu/gsyvideoplayer/listener/GSYVideoProgressListener;

    return-object p0
.end method

.method public setHideKey(Z)Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;
    .registers 2

    .line 241
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mHideKey:Z

    return-object p0
.end method

.method public setIsTouchWiget(Z)Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;
    .registers 2

    .line 250
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mIsTouchWiget:Z

    return-object p0
.end method

.method public setIsTouchWigetFull(Z)Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;
    .registers 2

    .line 259
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mIsTouchWigetFull:Z

    return-object p0
.end method

.method public setLockClickListener(Lcom/shuyu/gsyvideoplayer/listener/LockClickListener;)Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;
    .registers 2

    .line 511
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mLockClickListener:Lcom/shuyu/gsyvideoplayer/listener/LockClickListener;

    return-object p0
.end method

.method public setLockLand(Z)Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;
    .registers 2

    .line 216
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mLockLand:Z

    return-object p0
.end method

.method public setLooping(Z)Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;
    .registers 2

    .line 189
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mLooping:Z

    return-object p0
.end method

.method public setMapHeadData(Ljava/util/Map;)Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;"
        }
    .end annotation

    .line 424
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mMapHeadData:Ljava/util/Map;

    return-object p0
.end method

.method public setNeedLockFull(Z)Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;
    .registers 2

    .line 503
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mNeedLockFull:Z

    return-object p0
.end method

.method public setNeedShowWifiTip(Z)Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;
    .registers 2

    .line 268
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mNeedShowWifiTip:Z

    return-object p0
.end method

.method public setOverrideExtension(Ljava/lang/String;)Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;
    .registers 2

    .line 538
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mOverrideExtension:Ljava/lang/String;

    return-object p0
.end method

.method public setPlayPosition(I)Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;
    .registers 2

    .line 343
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mPlayPosition:I

    return-object p0
.end method

.method public setPlayTag(Ljava/lang/String;)Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;
    .registers 2

    .line 334
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mPlayTag:Ljava/lang/String;

    return-object p0
.end method

.method public setReleaseWhenLossAudio(Z)Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;
    .registers 2

    .line 404
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mReleaseWhenLossAudio:Z

    return-object p0
.end method

.method public setRotateViewAuto(Z)Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;
    .registers 2

    .line 208
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mRotateViewAuto:Z

    return-object p0
.end method

.method public setRotateWithSystem(Z)Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;
    .registers 2

    .line 324
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mRotateWithSystem:Z

    return-object p0
.end method

.method public setSeekOnStart(J)Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;
    .registers 3

    .line 353
    iput-wide p1, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mSeekOnStart:J

    return-object p0
.end method

.method public setSeekRatio(F)Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;
    .registers 3

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_6

    return-object p0

    .line 314
    :cond_6
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mSeekRatio:F

    return-object p0
.end method

.method public setSetUpLazy(Z)Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 548
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mSetUpLazy:Z

    return-object p0
.end method

.method public setShowFullAnimation(Z)Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;
    .registers 2

    .line 181
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mShowFullAnimation:Z

    return-object p0
.end method

.method public setShowPauseCover(Z)Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;
    .registers 2

    .line 301
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mShowPauseCover:Z

    return-object p0
.end method

.method public setShrinkImageRes(I)Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;
    .registers 2

    .line 288
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mShrinkImageRes:I

    return-object p0
.end method

.method public setSoundTouch(Z)Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;
    .registers 2

    .line 233
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mSounchTouch:Z

    return-object p0
.end method

.method public setSpeed(F)Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;
    .registers 2

    .line 224
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mSpeed:F

    return-object p0
.end method

.method public setStartAfterPrepared(Z)Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;
    .registers 2

    .line 393
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mStartAfterPrepared:Z

    return-object p0
.end method

.method public setThumbImageView(Landroid/view/View;)Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;
    .registers 2

    .line 442
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mThumbImageView:Landroid/view/View;

    return-object p0
.end method

.method public setThumbPlay(Z)Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;
    .registers 2

    .line 494
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mThumbPlay:Z

    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;
    .registers 2

    .line 363
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setVideoAllCallBack(Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;)Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;
    .registers 2

    .line 200
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;

    return-object p0
.end method

.method public setVideoTitle(Ljava/lang/String;)Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;
    .registers 2

    .line 373
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->mVideoTitle:Ljava/lang/String;

    return-object p0
.end method
