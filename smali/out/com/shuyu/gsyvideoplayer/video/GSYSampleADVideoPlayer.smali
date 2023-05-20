.class public Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;
.super Lcom/shuyu/gsyvideoplayer/video/ListGSYVideoPlayer;
.source "GSYSampleADVideoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer$GSYADVideoModel;
    }
.end annotation


# instance fields
.field protected isAdModel:Z

.field protected isFirstPrepared:Z

.field protected mADTime:Landroid/widget/TextView;

.field protected mJumpAd:Landroid/view/View;

.field protected mWidgetContainer:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 45
    invoke-direct {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/ListGSYVideoPlayer;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 36
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;->isAdModel:Z

    .line 38
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;->isFirstPrepared:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/video/ListGSYVideoPlayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 36
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;->isAdModel:Z

    .line 38
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;->isFirstPrepared:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Boolean;)V
    .registers 3

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/video/ListGSYVideoPlayer;-><init>(Landroid/content/Context;Ljava/lang/Boolean;)V

    const/4 p1, 0x0

    .line 36
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;->isAdModel:Z

    .line 38
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;->isFirstPrepared:Z

    return-void
.end method


# virtual methods
.method protected changeAdUIState()V
    .registers 5

    .line 250
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;->mJumpAd:Landroid/view/View;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_15

    .line 251
    iget-boolean v3, p0, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;->isFirstPrepared:Z

    if-eqz v3, :cond_11

    iget-boolean v3, p0, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;->isAdModel:Z

    if-eqz v3, :cond_11

    move v3, v2

    goto :goto_12

    :cond_11
    move v3, v1

    :goto_12
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 253
    :cond_15
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;->mADTime:Landroid/widget/TextView;

    if-eqz v0, :cond_27

    .line 254
    iget-boolean v3, p0, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;->isFirstPrepared:Z

    if-eqz v3, :cond_23

    iget-boolean v3, p0, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;->isAdModel:Z

    if-eqz v3, :cond_23

    move v3, v2

    goto :goto_24

    :cond_23
    move v3, v1

    :goto_24
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 256
    :cond_27
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;->mWidgetContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_38

    .line 257
    iget-boolean v3, p0, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;->isFirstPrepared:Z

    if-eqz v3, :cond_34

    iget-boolean v3, p0, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;->isAdModel:Z

    if-eqz v3, :cond_34

    goto :goto_35

    :cond_34
    move v1, v2

    :goto_35
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 259
    :cond_38
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;->mBottomContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_59

    .line 260
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;->isFirstPrepared:Z

    if-eqz v0, :cond_46

    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;->isAdModel:Z

    if-eqz v0, :cond_46

    move v0, v2

    goto :goto_54

    :cond_46
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/shuyu/gsyvideoplayer/R$color;->bottom_container_bg:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 261
    :goto_54
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 263
    :cond_59
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;->mCurrentTimeTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    if-eqz v0, :cond_6e

    .line 264
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;->mCurrentTimeTextView:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;->isFirstPrepared:Z

    if-eqz v3, :cond_6a

    iget-boolean v3, p0, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;->isAdModel:Z

    if-eqz v3, :cond_6a

    move v3, v1

    goto :goto_6b

    :cond_6a
    move v3, v2

    :goto_6b
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 266
    :cond_6e
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;->mTotalTimeTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_82

    .line 267
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;->mTotalTimeTextView:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;->isFirstPrepared:Z

    if-eqz v3, :cond_7e

    iget-boolean v3, p0, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;->isAdModel:Z

    if-eqz v3, :cond_7e

    move v3, v1

    goto :goto_7f

    :cond_7e
    move v3, v2

    :goto_7f
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 269
    :cond_82
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;->mProgressBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_a3

    .line 270
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;->mProgressBar:Landroid/widget/SeekBar;

    iget-boolean v3, p0, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;->isFirstPrepared:Z

    if-eqz v3, :cond_91

    iget-boolean v3, p0, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;->isAdModel:Z

    if-eqz v3, :cond_91

    goto :goto_92

    :cond_91
    move v1, v2

    :goto_92
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;->mProgressBar:Landroid/widget/SeekBar;

    iget-boolean v1, p0, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;->isFirstPrepared:Z

    if-eqz v1, :cond_9f

    iget-boolean v1, p0, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;->isAdModel:Z

    if-nez v1, :cond_a0

    :cond_9f
    const/4 v2, 0x1

    :cond_a0
    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    :cond_a3
    return-void
.end method

.method protected cloneParams(Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V
    .registers 4

    .line 237
    invoke-super {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/video/ListGSYVideoPlayer;->cloneParams(Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    .line 238
    check-cast p1, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;

    .line 239
    check-cast p2, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;

    .line 240
    iget-boolean v0, p1, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;->isAdModel:Z

    iput-boolean v0, p2, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;->isAdModel:Z

    .line 241
    iget-boolean p1, p1, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;->isFirstPrepared:Z

    iput-boolean p1, p2, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;->isFirstPrepared:Z

    .line 242
    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;->changeAdUIState()V

    return-void
.end method

.method public getLayoutId()I
    .registers 2

    .line 71
    sget v0, Lcom/shuyu/gsyvideoplayer/R$layout;->video_layout_sample_ad:I

    return v0
.end method

.method protected hideAllWidget()V
    .registers 2

    .line 219
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;->isFirstPrepared:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;->isAdModel:Z

    if-eqz v0, :cond_9

    return-void

    .line 222
    :cond_9
    invoke-super {p0}, Lcom/shuyu/gsyvideoplayer/video/ListGSYVideoPlayer;->hideAllWidget()V

    return-void
.end method

.method protected init(Landroid/content/Context;)V
    .registers 3

    .line 54
    invoke-super {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/ListGSYVideoPlayer;->init(Landroid/content/Context;)V

    .line 55
    sget p1, Lcom/shuyu/gsyvideoplayer/R$id;->jump_ad:I

    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;->mJumpAd:Landroid/view/View;

    .line 56
    sget p1, Lcom/shuyu/gsyvideoplayer/R$id;->ad_time:I

    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;->mADTime:Landroid/widget/TextView;

    .line 57
    sget p1, Lcom/shuyu/gsyvideoplayer/R$id;->widget_container:I

    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;->mWidgetContainer:Landroid/view/ViewGroup;

    .line 58
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;->mJumpAd:Landroid/view/View;

    if-eqz p1, :cond_2b

    .line 59
    new-instance v0, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer$1;

    invoke-direct {v0, p0}, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer$1;-><init>(Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2b
    return-void
.end method

.method public onPrepared()V
    .registers 2

    .line 143
    invoke-super {p0}, Lcom/shuyu/gsyvideoplayer/video/ListGSYVideoPlayer;->onPrepared()V

    const/4 v0, 0x1

    .line 144
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;->isFirstPrepared:Z

    .line 145
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;->changeAdUIState()V

    return-void
.end method

.method public setAdUp(Ljava/util/ArrayList;ZI)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer$GSYADVideoModel;",
            ">;ZI)Z"
        }
    .end annotation

    .line 287
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;->setUp(Ljava/util/List;ZI)Z

    move-result p1

    return p1
.end method

.method public setAdUp(Ljava/util/ArrayList;ZILjava/io/File;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer$GSYADVideoModel;",
            ">;ZI",
            "Ljava/io/File;",
            ")Z"
        }
    .end annotation

    .line 300
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;->setUp(Ljava/util/List;ZILjava/io/File;)Z

    move-result p1

    return p1
.end method

.method public setAdUp(Ljava/util/ArrayList;ZILjava/io/File;Ljava/util/Map;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer$GSYADVideoModel;",
            ">;ZI",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 314
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/util/ArrayList;

    move-object v0, p0

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;->setUp(Ljava/util/List;ZILjava/io/File;Ljava/util/Map;)Z

    move-result p1

    return p1
.end method

.method protected setProgressAndTime(IIII)V
    .registers 6

    .line 227
    invoke-super {p0, p1, p2, p3, p4}, Lcom/shuyu/gsyvideoplayer/video/ListGSYVideoPlayer;->setProgressAndTime(IIII)V

    .line 228
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;->mADTime:Landroid/widget/TextView;

    if-eqz p1, :cond_22

    if-lez p3, :cond_22

    .line 229
    div-int/lit16 p4, p4, 0x3e8

    .line 230
    div-int/lit16 p3, p3, 0x3e8

    .line 231
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr p4, p3

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_22
    return-void
.end method

.method public setUp(Ljava/util/List;ZI)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shuyu/gsyvideoplayer/model/GSYVideoModel;",
            ">;ZI)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 84
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;->setUp(Ljava/util/List;ZILjava/io/File;)Z

    move-result p1

    return p1
.end method

.method public setUp(Ljava/util/List;ZILjava/io/File;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shuyu/gsyvideoplayer/model/GSYVideoModel;",
            ">;ZI",
            "Ljava/io/File;",
            ")Z"
        }
    .end annotation

    .line 98
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;->setUp(Ljava/util/List;ZILjava/io/File;Ljava/util/Map;)Z

    move-result p1

    return p1
.end method

.method public setUp(Ljava/util/List;ZILjava/io/File;Ljava/util/Map;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shuyu/gsyvideoplayer/model/GSYVideoModel;",
            ">;ZI",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 113
    invoke-virtual/range {v0 .. v6}, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;->setUp(Ljava/util/List;ZILjava/io/File;Ljava/util/Map;Z)Z

    move-result p1

    return p1
.end method

.method protected setUp(Ljava/util/List;ZILjava/io/File;Ljava/util/Map;Z)Z
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shuyu/gsyvideoplayer/model/GSYVideoModel;",
            ">;ZI",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    .line 129
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shuyu/gsyvideoplayer/model/GSYVideoModel;

    .line 130
    instance-of v3, v2, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer$GSYADVideoModel;

    if-eqz v3, :cond_33

    .line 131
    check-cast v2, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer$GSYADVideoModel;

    .line 132
    invoke-virtual {v2}, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer$GSYADVideoModel;->isSkip()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_27

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v4

    if-ge p3, v3, :cond_27

    add-int/lit8 v3, p3, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    .line 133
    invoke-virtual/range {v0 .. v6}, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;->setUp(Ljava/util/List;ZILjava/io/File;Ljava/util/Map;Z)Z

    move-result v0

    return v0

    .line 135
    :cond_27
    invoke-virtual {v2}, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer$GSYADVideoModel;->getType()I

    move-result v2

    sget v3, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer$GSYADVideoModel;->TYPE_AD:I

    if-ne v2, v3, :cond_30

    goto :goto_31

    :cond_30
    const/4 v4, 0x0

    :goto_31
    iput-boolean v4, p0, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;->isAdModel:Z

    .line 137
    :cond_33
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;->changeAdUIState()V

    .line 138
    invoke-super/range {p0 .. p6}, Lcom/shuyu/gsyvideoplayer/video/ListGSYVideoPlayer;->setUp(Ljava/util/List;ZILjava/io/File;Ljava/util/Map;Z)Z

    move-result v0

    return v0
.end method

.method protected touchDoubleUp()V
    .registers 2

    .line 169
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;->isAdModel:Z

    if-eqz v0, :cond_5

    return-void

    .line 172
    :cond_5
    invoke-super {p0}, Lcom/shuyu/gsyvideoplayer/video/ListGSYVideoPlayer;->touchDoubleUp()V

    return-void
.end method

.method protected touchSurfaceMove(FFF)V
    .registers 5

    .line 180
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;->mChangePosition:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;->isAdModel:Z

    if-eqz v0, :cond_9

    return-void

    .line 183
    :cond_9
    invoke-super {p0, p1, p2, p3}, Lcom/shuyu/gsyvideoplayer/video/ListGSYVideoPlayer;->touchSurfaceMove(FFF)V

    return-void
.end method

.method protected touchSurfaceMoveFullLogic(FF)V
    .registers 5

    .line 192
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;->mThreshold:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_e

    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;->mThreshold:I

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_3d

    .line 193
    :cond_e
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    .line 194
    iget-boolean v1, p0, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;->isAdModel:Z

    if-eqz v1, :cond_3a

    iget v1, p0, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;->mThreshold:I

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_3a

    int-to-float v0, v0

    iget v1, p0, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;->mDownX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;->mSeekEndOffset:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3a

    const/4 p1, 0x1

    .line 196
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;->mChangePosition:Z

    .line 197
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;->getCurrentPositionWhenPlaying()I

    move-result p1

    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;->mDownPosition:I

    goto :goto_3d

    .line 199
    :cond_3a
    invoke-super {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/video/ListGSYVideoPlayer;->touchSurfaceMoveFullLogic(FF)V

    :cond_3d
    :goto_3d
    return-void
.end method

.method protected touchSurfaceUp()V
    .registers 2

    .line 209
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;->mChangePosition:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;->isAdModel:Z

    if-eqz v0, :cond_9

    return-void

    .line 212
    :cond_9
    invoke-super {p0}, Lcom/shuyu/gsyvideoplayer/video/ListGSYVideoPlayer;->touchSurfaceUp()V

    return-void
.end method

.method protected updateStartImage()V
    .registers 4

    .line 150
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;->mStartButton:Landroid/view/View;

    if-eqz v0, :cond_29

    .line 151
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;->mStartButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_29

    .line 152
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;->mStartButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    .line 153
    iget v1, p0, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;->mCurrentState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_19

    .line 154
    sget v1, Lcom/shuyu/gsyvideoplayer/R$drawable;->video_click_pause_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_29

    .line 155
    :cond_19
    iget v1, p0, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;->mCurrentState:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_24

    .line 156
    sget v1, Lcom/shuyu/gsyvideoplayer/R$drawable;->video_click_play_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_29

    .line 158
    :cond_24
    sget v1, Lcom/shuyu/gsyvideoplayer/R$drawable;->video_click_play_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_29
    :goto_29
    return-void
.end method
