.class public Lcom/google/android/exoplayer2/ui/StyledPlayerView;
.super Landroid/widget/FrameLayout;
.source "StyledPlayerView.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/ads/AdsLoader$AdViewProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ui/StyledPlayerView$ComponentListener;,
        Lcom/google/android/exoplayer2/ui/StyledPlayerView$ShowBuffering;
    }
.end annotation


# static fields
.field private static final PICTURE_TYPE_FRONT_COVER:I = 0x3

.field private static final PICTURE_TYPE_NOT_SET:I = -0x1

.field public static final SHOW_BUFFERING_ALWAYS:I = 0x2

.field public static final SHOW_BUFFERING_NEVER:I = 0x0

.field public static final SHOW_BUFFERING_WHEN_PLAYING:I = 0x1

.field private static final SURFACE_TYPE_NONE:I = 0x0

.field private static final SURFACE_TYPE_SPHERICAL_GL_SURFACE_VIEW:I = 0x3

.field private static final SURFACE_TYPE_SURFACE_VIEW:I = 0x1

.field private static final SURFACE_TYPE_TEXTURE_VIEW:I = 0x2

.field private static final SURFACE_TYPE_VIDEO_DECODER_GL_SURFACE_VIEW:I = 0x4


# instance fields
.field private final adOverlayFrameLayout:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final artworkView:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final bufferingView:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final componentListener:Lcom/google/android/exoplayer2/ui/StyledPlayerView$ComponentListener;

.field private final contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private controllerAutoShow:Z

.field private controllerHideDuringAds:Z

.field private controllerHideOnTouch:Z

.field private controllerShowTimeoutMs:I

.field private controllerVisibilityListener:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$VisibilityListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private customErrorMessage:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private defaultArtwork:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private errorMessageProvider:Lcom/google/android/exoplayer2/util/ErrorMessageProvider;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/util/ErrorMessageProvider<",
            "-",
            "Lcom/google/android/exoplayer2/ExoPlaybackException;",
            ">;"
        }
    .end annotation
.end field

.field private final errorMessageView:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private isTouching:Z

.field private keepContentOnPlayerReset:Z

.field private final overlayFrameLayout:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private player:Lcom/google/android/exoplayer2/Player;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private showBuffering:I

.field private final shutterView:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final surfaceView:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private textureViewRotation:I

.field private useArtwork:Z

.field private useController:Z

.field private useSensorRotation:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 333
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 337
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 23
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 342
    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 344
    new-instance v3, Lcom/google/android/exoplayer2/ui/StyledPlayerView$ComponentListener;

    invoke-direct {v3, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView$ComponentListener;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)V

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->componentListener:Lcom/google/android/exoplayer2/ui/StyledPlayerView$ComponentListener;

    .line 346
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->isInEditMode()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_49

    .line 347
    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    .line 348
    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->shutterView:Landroid/view/View;

    .line 349
    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->surfaceView:Landroid/view/View;

    .line 350
    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->artworkView:Landroid/widget/ImageView;

    .line 351
    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    .line 352
    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->bufferingView:Landroid/view/View;

    .line 353
    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->errorMessageView:Landroid/widget/TextView;

    .line 354
    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 355
    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->adOverlayFrameLayout:Landroid/widget/FrameLayout;

    .line 356
    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->overlayFrameLayout:Landroid/widget/FrameLayout;

    .line 357
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 358
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_3e

    .line 359
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->configureEditModeLogoV23(Landroid/content/res/Resources;Landroid/widget/ImageView;)V

    goto :goto_45

    .line 361
    :cond_3e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->configureEditModeLogo(Landroid/content/res/Resources;Landroid/widget/ImageView;)V

    .line 363
    :goto_45
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->addView(Landroid/view/View;)V

    return-void

    .line 369
    :cond_49
    sget v3, Lcom/google/android/exoplayer2/ui/R$layout;->exo_styled_player_view:I

    const/16 v5, 0x1388

    const/4 v6, 0x1

    .line 380
    iput-boolean v6, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->useSensorRotation:Z

    const/4 v7, 0x0

    if-eqz v2, :cond_d9

    .line 383
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    sget-object v9, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerView:[I

    invoke-virtual {v8, v2, v9, v7, v7}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 385
    :try_start_5d
    sget v9, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerView_shutter_background_color:I

    invoke-virtual {v8, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v9

    .line 386
    sget v10, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerView_shutter_background_color:I

    .line 387
    invoke-virtual {v8, v10, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    .line 388
    sget v11, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerView_player_layout_id:I

    .line 389
    invoke-virtual {v8, v11, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 390
    sget v11, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerView_use_artwork:I

    invoke-virtual {v8, v11, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    .line 391
    sget v12, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerView_default_artwork:I

    .line 392
    invoke-virtual {v8, v12, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    .line 393
    sget v13, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerView_use_controller:I

    invoke-virtual {v8, v13, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    .line 394
    sget v14, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerView_surface_type:I

    invoke-virtual {v8, v14, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    .line 395
    sget v15, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerView_resize_mode:I

    invoke-virtual {v8, v15, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    .line 396
    sget v4, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerView_show_timeout:I

    .line 397
    invoke-virtual {v8, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 398
    sget v4, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerView_hide_on_touch:I

    .line 399
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 400
    sget v7, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerView_auto_show:I

    .line 401
    invoke-virtual {v8, v7, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 402
    sget v6, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerView_show_buffering:I

    move/from16 v16, v3

    const/4 v3, 0x0

    invoke-virtual {v8, v6, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    .line 403
    sget v3, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerView_keep_content_on_player_reset:I

    move/from16 v17, v4

    iget-boolean v4, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->keepContentOnPlayerReset:Z

    .line 404
    invoke-virtual {v8, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->keepContentOnPlayerReset:Z

    .line 407
    sget v3, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerView_hide_during_ads:I

    const/4 v4, 0x1

    .line 408
    invoke-virtual {v8, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 409
    sget v4, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerView_use_sensor_rotation:I

    move/from16 v18, v3

    iget-boolean v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->useSensorRotation:Z

    .line 410
    invoke-virtual {v8, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->useSensorRotation:Z
    :try_end_c7
    .catchall {:try_start_5d .. :try_end_c7} :catchall_d4

    .line 412
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    move/from16 v3, v16

    move/from16 v4, v17

    move/from16 v8, v18

    move/from16 v16, v5

    move v5, v7

    goto :goto_e6

    :catchall_d4
    move-exception v0

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 413
    throw v0

    :cond_d9
    move/from16 v16, v5

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    .line 416
    :goto_e6
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    invoke-virtual {v7, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const/high16 v3, 0x40000

    .line 417
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->setDescendantFocusability(I)V

    .line 420
    sget v3, Lcom/google/android/exoplayer2/ui/R$id;->exo_content_frame:I

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    .line 421
    iget-object v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    if-eqz v3, :cond_103

    .line 422
    invoke-static {v3, v15}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->setResizeModeRaw(Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;I)V

    .line 426
    :cond_103
    sget v3, Lcom/google/android/exoplayer2/ui/R$id;->exo_shutter:I

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->shutterView:Landroid/view/View;

    .line 427
    iget-object v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->shutterView:Landroid/view/View;

    if-eqz v3, :cond_114

    if-eqz v9, :cond_114

    .line 428
    invoke-virtual {v3, v10}, Landroid/view/View;->setBackgroundColor(I)V

    .line 432
    :cond_114
    iget-object v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    if-eqz v3, :cond_160

    if-eqz v14, :cond_160

    .line 433
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v3, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/4 v7, 0x2

    if-eq v14, v7, :cond_14b

    const/4 v7, 0x3

    if-eq v14, v7, :cond_139

    const/4 v7, 0x4

    if-eq v14, v7, :cond_131

    .line 450
    new-instance v7, Landroid/view/SurfaceView;

    invoke-direct {v7, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v7, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->surfaceView:Landroid/view/View;

    goto :goto_152

    .line 447
    :cond_131
    new-instance v7, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView;

    invoke-direct {v7, v0}, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v7, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->surfaceView:Landroid/view/View;

    goto :goto_152

    .line 441
    :cond_139
    new-instance v7, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;

    invoke-direct {v7, v0}, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 442
    iget-object v9, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->componentListener:Lcom/google/android/exoplayer2/ui/StyledPlayerView$ComponentListener;

    invoke-virtual {v7, v9}, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->setSingleTapListener(Lcom/google/android/exoplayer2/ui/spherical/SingleTapListener;)V

    .line 443
    iget-boolean v9, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->useSensorRotation:Z

    invoke-virtual {v7, v9}, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->setUseSensorRotation(Z)V

    .line 444
    iput-object v7, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->surfaceView:Landroid/view/View;

    goto :goto_152

    .line 438
    :cond_14b
    new-instance v7, Landroid/view/TextureView;

    invoke-direct {v7, v0}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v7, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->surfaceView:Landroid/view/View;

    .line 453
    :goto_152
    iget-object v7, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->surfaceView:Landroid/view/View;

    invoke-virtual {v7, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 454
    iget-object v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    iget-object v7, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->surfaceView:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v3, v7, v9}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->addView(Landroid/view/View;I)V

    goto :goto_163

    :cond_160
    const/4 v3, 0x0

    .line 456
    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->surfaceView:Landroid/view/View;

    .line 460
    :goto_163
    sget v3, Lcom/google/android/exoplayer2/ui/R$id;->exo_ad_overlay:I

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->adOverlayFrameLayout:Landroid/widget/FrameLayout;

    .line 463
    sget v3, Lcom/google/android/exoplayer2/ui/R$id;->exo_overlay:I

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->overlayFrameLayout:Landroid/widget/FrameLayout;

    .line 466
    sget v3, Lcom/google/android/exoplayer2/ui/R$id;->exo_artwork:I

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->artworkView:Landroid/widget/ImageView;

    if-eqz v11, :cond_189

    .line 467
    iget-object v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->artworkView:Landroid/widget/ImageView;

    if-eqz v3, :cond_189

    const/4 v3, 0x1

    goto :goto_18a

    :cond_189
    const/4 v3, 0x0

    :goto_18a
    iput-boolean v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->useArtwork:Z

    if-eqz v12, :cond_198

    .line 469
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v12}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->defaultArtwork:Landroid/graphics/drawable/Drawable;

    .line 473
    :cond_198
    sget v3, Lcom/google/android/exoplayer2/ui/R$id;->exo_subtitles:I

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/ui/SubtitleView;

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    .line 474
    iget-object v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    if-eqz v3, :cond_1ae

    .line 475
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setUserDefaultStyle()V

    .line 476
    iget-object v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setUserDefaultTextSize()V

    .line 480
    :cond_1ae
    sget v3, Lcom/google/android/exoplayer2/ui/R$id;->exo_buffering:I

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->bufferingView:Landroid/view/View;

    .line 481
    iget-object v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->bufferingView:Landroid/view/View;

    const/16 v7, 0x8

    if-eqz v3, :cond_1bf

    .line 482
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 484
    :cond_1bf
    iput v6, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->showBuffering:I

    .line 487
    sget v3, Lcom/google/android/exoplayer2/ui/R$id;->exo_error_message:I

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->errorMessageView:Landroid/widget/TextView;

    .line 488
    iget-object v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->errorMessageView:Landroid/widget/TextView;

    if-eqz v3, :cond_1d2

    .line 489
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 493
    :cond_1d2
    sget v3, Lcom/google/android/exoplayer2/ui/R$id;->exo_controller:I

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 494
    sget v6, Lcom/google/android/exoplayer2/ui/R$id;->exo_controller_placeholder:I

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v3, :cond_1e6

    .line 496
    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    const/4 v7, 0x0

    goto :goto_218

    :cond_1e6
    if-eqz v6, :cond_214

    .line 500
    new-instance v3, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-direct {v3, v0, v9, v7, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 501
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    sget v2, Lcom/google/android/exoplayer2/ui/R$id;->exo_controller:I

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setId(I)V

    .line 502
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 503
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 504
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 505
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 506
    iget-object v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_218

    :cond_214
    const/4 v0, 0x0

    const/4 v7, 0x0

    .line 508
    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 510
    :goto_218
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    if-eqz v0, :cond_21f

    move/from16 v0, v16

    goto :goto_220

    :cond_21f
    move v0, v7

    :goto_220
    iput v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controllerShowTimeoutMs:I

    .line 511
    iput-boolean v4, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controllerHideOnTouch:Z

    .line 512
    iput-boolean v5, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controllerAutoShow:Z

    .line 513
    iput-boolean v8, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controllerHideDuringAds:Z

    if-eqz v13, :cond_22f

    .line 514
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    if-eqz v0, :cond_22f

    const/4 v7, 0x1

    :cond_22f
    iput-boolean v7, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->useController:Z

    .line 515
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    if-eqz v0, :cond_23f

    .line 516
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->hideImmediately()V

    .line 517
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    iget-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->componentListener:Lcom/google/android/exoplayer2/ui/StyledPlayerView$ComponentListener;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->addVisibilityListener(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$VisibilityListener;)V

    .line 519
    :cond_23f
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->updateContentDescription()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)Lcom/google/android/exoplayer2/ui/SubtitleView;
    .registers 1

    .line 268
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)Landroid/view/View;
    .registers 1

    .line 268
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->surfaceView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)V
    .registers 1

    .line 268
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->updateControllerVisibility()V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)Z
    .registers 1

    .line 268
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->isPlayingAd()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)Z
    .registers 1

    .line 268
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controllerHideDuringAds:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)Z
    .registers 1

    .line 268
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->toggleControllerVisibility()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)V
    .registers 1

    .line 268
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->updateContentDescription()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)I
    .registers 1

    .line 268
    iget p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->textureViewRotation:I

    return p0
.end method

.method static synthetic access$202(Lcom/google/android/exoplayer2/ui/StyledPlayerView;I)I
    .registers 2

    .line 268
    iput p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->textureViewRotation:I

    return p1
.end method

.method static synthetic access$300(Landroid/view/TextureView;I)V
    .registers 2

    .line 268
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->applyTextureViewRotation(Landroid/view/TextureView;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;
    .registers 1

    .line 268
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)Landroid/view/View;
    .registers 1

    .line 268
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->shutterView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$600(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)Lcom/google/android/exoplayer2/Player;
    .registers 1

    .line 268
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->player:Lcom/google/android/exoplayer2/Player;

    return-object p0
.end method

.method static synthetic access$700(Lcom/google/android/exoplayer2/ui/StyledPlayerView;Z)V
    .registers 2

    .line 268
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->updateForCurrentTrackSelections(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)V
    .registers 1

    .line 268
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->updateBuffering()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)V
    .registers 1

    .line 268
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->updateErrorMessage()V

    return-void
.end method

.method private static applyTextureViewRotation(Landroid/view/TextureView;I)V
    .registers 8

    .line 1512
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 1513
    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 1514
    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    cmpl-float v4, v1, v3

    if-eqz v4, :cond_3e

    cmpl-float v4, v2, v3

    if-eqz v4, :cond_3e

    if-eqz p1, :cond_3e

    const/high16 v4, 0x40000000    # 2.0f

    div-float v5, v1, v4

    div-float v4, v2, v4

    int-to-float p1, p1

    .line 1518
    invoke-virtual {v0, p1, v5, v4}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 1521
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1522
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 1523
    invoke-virtual {v0, v3, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 1525
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result p1

    div-float/2addr v1, p1

    .line 1526
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result p1

    div-float/2addr v2, p1

    .line 1524
    invoke-virtual {v0, v1, v2, v5, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 1530
    :cond_3e
    invoke-virtual {p0, v0}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private closeShutter()V
    .registers 3

    .line 1438
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->shutterView:Landroid/view/View;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    .line 1439
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    return-void
.end method

.method private static configureEditModeLogo(Landroid/content/res/Resources;Landroid/widget/ImageView;)V
    .registers 3

    .line 1501
    sget v0, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_edit_mode_logo:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1502
    sget v0, Lcom/google/android/exoplayer2/ui/R$color;->exo_edit_mode_background_color:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    return-void
.end method

.method private static configureEditModeLogoV23(Landroid/content/res/Resources;Landroid/widget/ImageView;)V
    .registers 4
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .line 1496
    sget v0, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_edit_mode_logo:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1497
    sget v0, Lcom/google/android/exoplayer2/ui/R$color;->exo_edit_mode_background_color:I

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    return-void
.end method

.method private hideArtwork()V
    .registers 3

    .line 1431
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->artworkView:Landroid/widget/ImageView;

    if-eqz v0, :cond_10

    const v1, 0x106000d

    .line 1432
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1433
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->artworkView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_10
    return-void
.end method

.method private isDpadKey(I)Z
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    const/16 v0, 0x13

    if-eq p1, v0, :cond_27

    const/16 v0, 0x10e

    if-eq p1, v0, :cond_27

    const/16 v0, 0x16

    if-eq p1, v0, :cond_27

    const/16 v0, 0x10f

    if-eq p1, v0, :cond_27

    const/16 v0, 0x14

    if-eq p1, v0, :cond_27

    const/16 v0, 0x10d

    if-eq p1, v0, :cond_27

    const/16 v0, 0x15

    if-eq p1, v0, :cond_27

    const/16 v0, 0x10c

    if-eq p1, v0, :cond_27

    const/16 v0, 0x17

    if-ne p1, v0, :cond_25

    goto :goto_27

    :cond_25
    const/4 p1, 0x0

    goto :goto_28

    :cond_27
    :goto_27
    const/4 p1, 0x1

    :goto_28
    return p1
.end method

.method private isPlayingAd()Z
    .registers 2

    .line 1339
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz v0, :cond_14

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method private maybeShowController(Z)V
    .registers 4

    .line 1305
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controllerHideDuringAds:Z

    if-eqz v0, :cond_b

    return-void

    .line 1308
    :cond_b
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->useController()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1309
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 1310
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->isFullyVisible()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->getShowTimeoutMs()I

    move-result v0

    if-gtz v0, :cond_23

    const/4 v0, 0x1

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    .line 1311
    :goto_24
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->shouldShowControllerIndefinitely()Z

    move-result v1

    if-nez p1, :cond_2e

    if-nez v0, :cond_2e

    if-eqz v1, :cond_31

    .line 1313
    :cond_2e
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->showController(Z)V

    :cond_31
    return-void
.end method

.method private setArtworkFromMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Z
    .registers 10
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "artworkView"
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    move v4, v2

    .line 1388
    :goto_5
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/metadata/Metadata;->length()I

    move-result v5

    if-ge v2, v5, :cond_42

    .line 1389
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/metadata/Metadata;->get(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v5

    .line 1392
    instance-of v6, v5, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;

    if-eqz v6, :cond_1a

    .line 1393
    check-cast v5, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;

    iget-object v6, v5, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;->pictureData:[B

    .line 1394
    iget v5, v5, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;->pictureType:I

    goto :goto_24

    .line 1395
    :cond_1a
    instance-of v6, v5, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;

    if-eqz v6, :cond_3f

    .line 1396
    check-cast v5, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;

    iget-object v6, v5, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;->pictureData:[B

    .line 1397
    iget v5, v5, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;->pictureType:I

    :goto_24
    const/4 v7, 0x3

    if-eq v3, v0, :cond_29

    if-ne v5, v7, :cond_3f

    .line 1403
    :cond_29
    array-length v3, v6

    invoke-static {v6, v1, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1404
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v4, v6, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v4}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->setDrawableArtwork(Landroid/graphics/drawable/Drawable;)Z

    move-result v4

    if-ne v5, v7, :cond_3e

    goto :goto_42

    :cond_3e
    move v3, v5

    :cond_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_42
    :goto_42
    return v4
.end method

.method private setDrawableArtwork(Landroid/graphics/drawable/Drawable;)Z
    .registers 6
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "artworkView"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_25

    .line 1417
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 1418
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-lez v1, :cond_25

    if-lez v2, :cond_25

    int-to-float v1, v1

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 1421
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->artworkView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->onContentAspectRatioChanged(FLcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;Landroid/view/View;)V

    .line 1422
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->artworkView:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1423
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->artworkView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p1, 0x1

    return p1

    :cond_25
    return v0
.end method

.method private static setResizeModeRaw(Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;I)V
    .registers 2

    .line 1507
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setResizeMode(I)V

    return-void
.end method

.method private shouldShowControllerIndefinitely()Z
    .registers 4

    .line 1319
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->player:Lcom/google/android/exoplayer2/Player;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 1322
    :cond_6
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result v0

    .line 1323
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controllerAutoShow:Z

    if-eqz v2, :cond_2e

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->player:Lcom/google/android/exoplayer2/Player;

    .line 1324
    invoke-interface {v2}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2e

    if-eq v0, v1, :cond_2f

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2f

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->player:Lcom/google/android/exoplayer2/Player;

    .line 1327
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlayWhenReady()Z

    move-result v0

    if-nez v0, :cond_2e

    goto :goto_2f

    :cond_2e
    const/4 v1, 0x0

    :cond_2f
    :goto_2f
    return v1
.end method

.method private showController(Z)V
    .registers 3

    .line 1331
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->useController()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1334
    :cond_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    if-eqz p1, :cond_d

    const/4 p1, 0x0

    goto :goto_f

    :cond_d
    iget p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controllerShowTimeoutMs:I

    :goto_f
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setShowTimeoutMs(I)V

    .line 1335
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->show()V

    return-void
.end method

.method public static switchTargetView(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/ui/StyledPlayerView;Lcom/google/android/exoplayer2/ui/StyledPlayerView;)V
    .registers 3
    .param p1    # Lcom/google/android/exoplayer2/ui/StyledPlayerView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/exoplayer2/ui/StyledPlayerView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-ne p1, p2, :cond_3

    return-void

    :cond_3
    if-eqz p2, :cond_8

    .line 541
    invoke-virtual {p2, p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    :cond_8
    if-eqz p1, :cond_e

    const/4 p0, 0x0

    .line 544
    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    :cond_e
    return-void
.end method

.method private toggleControllerVisibility()Z
    .registers 4

    .line 1290
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->useController()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->player:Lcom/google/android/exoplayer2/Player;

    if-nez v0, :cond_c

    goto :goto_23

    .line 1293
    :cond_c
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->isFullyVisible()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_19

    .line 1294
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->maybeShowController(Z)V

    return v2

    .line 1296
    :cond_19
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controllerHideOnTouch:Z

    if-eqz v0, :cond_23

    .line 1297
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->hide()V

    return v2

    :cond_23
    :goto_23
    return v1
.end method

.method private updateBuffering()V
    .registers 5

    .line 1444
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->bufferingView:Landroid/view/View;

    if-eqz v0, :cond_2b

    .line 1445
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->player:Lcom/google/android/exoplayer2/Player;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_20

    .line 1447
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_20

    iget v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->showBuffering:I

    if-eq v0, v3, :cond_21

    if-ne v0, v1, :cond_20

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->player:Lcom/google/android/exoplayer2/Player;

    .line 1449
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_21

    :cond_20
    move v1, v2

    .line 1450
    :cond_21
    :goto_21
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->bufferingView:Landroid/view/View;

    if-eqz v1, :cond_26

    goto :goto_28

    :cond_26
    const/16 v2, 0x8

    :goto_28
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2b
    return-void
.end method

.method private updateContentDescription()V
    .registers 4

    .line 1473
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    const/4 v1, 0x0

    if-eqz v0, :cond_30

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->useController:Z

    if-nez v2, :cond_a

    goto :goto_30

    .line 1475
    :cond_a
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->isFullyVisible()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1477
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controllerHideOnTouch:Z

    if-eqz v0, :cond_1e

    .line 1478
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_hide:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1476
    :cond_1e
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_33

    .line 1482
    :cond_22
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_show:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1481
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_33

    .line 1474
    :cond_30
    :goto_30
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_33
    return-void
.end method

.method private updateControllerVisibility()V
    .registers 2

    .line 1487
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controllerHideDuringAds:Z

    if-eqz v0, :cond_e

    .line 1488
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->hideController()V

    goto :goto_12

    :cond_e
    const/4 v0, 0x0

    .line 1490
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->maybeShowController(Z)V

    :goto_12
    return-void
.end method

.method private updateErrorMessage()V
    .registers 4

    .line 1455
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->errorMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_3c

    .line 1456
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->customErrorMessage:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    .line 1457
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1458
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->errorMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 1461
    :cond_12
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz v0, :cond_1b

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlayerError()Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    if-eqz v0, :cond_35

    .line 1462
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->errorMessageProvider:Lcom/google/android/exoplayer2/util/ErrorMessageProvider;

    if-eqz v1, :cond_35

    .line 1463
    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/util/ErrorMessageProvider;->getErrorMessage(Ljava/lang/Throwable;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    .line 1464
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->errorMessageView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1465
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->errorMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3c

    .line 1467
    :cond_35
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->errorMessageView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3c
    :goto_3c
    return-void
.end method

.method private updateForCurrentTrackSelections(Z)V
    .registers 6

    .line 1343
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz v0, :cond_66

    .line 1344
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_66

    :cond_f
    if-eqz p1, :cond_18

    .line 1352
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->keepContentOnPlayerReset:Z

    if-nez p1, :cond_18

    .line 1354
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->closeShutter()V

    .line 1357
    :cond_18
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentTrackSelections()Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    move-result-object p1

    const/4 v1, 0x0

    .line 1358
    :goto_1d
    iget v2, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->length:I

    if-ge v1, v2, :cond_35

    .line 1359
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->getRendererType(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_32

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->get(I)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 1362
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->hideArtwork()V

    return-void

    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 1368
    :cond_35
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->closeShutter()V

    .line 1370
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->useArtwork()Z

    move-result p1

    if-eqz p1, :cond_62

    .line 1371
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentStaticMetadata()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_46
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 1372
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->setArtworkFromMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Z

    move-result v0

    if-eqz v0, :cond_46

    return-void

    .line 1376
    :cond_59
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->defaultArtwork:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->setDrawableArtwork(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_62

    return-void

    .line 1381
    :cond_62
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->hideArtwork()V

    return-void

    .line 1345
    :cond_66
    :goto_66
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->keepContentOnPlayerReset:Z

    if-nez p1, :cond_70

    .line 1346
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->hideArtwork()V

    .line 1347
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->closeShutter()V

    :cond_70
    return-void
.end method

.method private useArtwork()Z
    .registers 2
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "artworkView"
        }
        result = true
    .end annotation

    .line 1282
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->useArtwork:Z

    if-eqz v0, :cond_b

    .line 1283
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->artworkView:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method private useController()Z
    .registers 2
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "controller"
        }
        result = true
    .end annotation

    .line 1273
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->useController:Z

    if-eqz v0, :cond_b

    .line 1274
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 6

    .line 812
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz v0, :cond_f

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 813
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 816
    :cond_f
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->isDpadKey(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2d

    .line 818
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->useController()Z

    move-result v3

    if-eqz v3, :cond_2d

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->isFullyVisible()Z

    move-result v3

    if-nez v3, :cond_2d

    .line 820
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->maybeShowController(Z)V

    goto :goto_4a

    .line 822
    :cond_2d
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    if-nez v3, :cond_47

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_3a

    goto :goto_47

    :cond_3a
    if-eqz v0, :cond_45

    .line 827
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->useController()Z

    move-result p1

    if-eqz p1, :cond_45

    .line 829
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->maybeShowController(Z)V

    :cond_45
    move v2, v1

    goto :goto_4a

    .line 825
    :cond_47
    :goto_47
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->maybeShowController(Z)V

    :goto_4a
    return v2
.end method

.method public dispatchMediaKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    .line 842
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->useController()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method

.method public getAdOverlayInfos()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/ads/AdsLoader$OverlayInfo;",
            ">;"
        }
    .end annotation

    .line 1254
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1255
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->overlayFrameLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_14

    .line 1256
    new-instance v2, Lcom/google/android/exoplayer2/source/ads/AdsLoader$OverlayInfo;

    const/4 v3, 0x3

    const-string v4, "Transparent overlay does not impact viewability"

    invoke-direct {v2, v1, v3, v4}, Lcom/google/android/exoplayer2/source/ads/AdsLoader$OverlayInfo;-><init>(Landroid/view/View;ILjava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1262
    :cond_14
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    if-eqz v1, :cond_21

    .line 1263
    new-instance v2, Lcom/google/android/exoplayer2/source/ads/AdsLoader$OverlayInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/google/android/exoplayer2/source/ads/AdsLoader$OverlayInfo;-><init>(Landroid/view/View;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1266
    :cond_21
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getAdOverlayViews()[Landroid/view/View;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/google/android/exoplayer2/source/ads/AdsLoader$AdViewProvider$-CC;->$default$getAdOverlayViews(Lcom/google/android/exoplayer2/source/ads/AdsLoader$AdViewProvider;)[Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getAdViewGroup()Landroid/view/ViewGroup;
    .registers 3

    .line 1248
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->adOverlayFrameLayout:Landroid/widget/FrameLayout;

    const-string v1, "exo_ad_overlay must be present for ad playback"

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getControllerAutoShow()Z
    .registers 2

    .line 918
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controllerAutoShow:Z

    return v0
.end method

.method public getControllerHideOnTouch()Z
    .registers 2

    .line 898
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controllerHideOnTouch:Z

    return v0
.end method

.method public getControllerShowTimeoutMs()I
    .registers 2

    .line 877
    iget v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controllerShowTimeoutMs:I

    return v0
.end method

.method public getDefaultArtwork()Landroid/graphics/drawable/Drawable;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 675
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->defaultArtwork:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getOverlayFrameLayout()Landroid/widget/FrameLayout;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1149
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->overlayFrameLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getPlayer()Lcom/google/android/exoplayer2/Player;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 551
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->player:Lcom/google/android/exoplayer2/Player;

    return-object v0
.end method

.method public getResizeMode()I
    .registers 2

    .line 650
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->getResizeMode()I

    move-result v0

    return v0
.end method

.method public getSubtitleView()Lcom/google/android/exoplayer2/ui/SubtitleView;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1160
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    return-object v0
.end method

.method public getUseArtwork()Z
    .registers 2

    .line 656
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->useArtwork:Z

    return v0
.end method

.method public getUseController()Z
    .registers 2

    .line 693
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->useController:Z

    return v0
.end method

.method public getVideoSurfaceView()Landroid/view/View;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1137
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->surfaceView:Landroid/view/View;

    return-object v0
.end method

.method public hideController()V
    .registers 2

    .line 863
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    if-eqz v0, :cond_7

    .line 864
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->hide()V

    :cond_7
    return-void
.end method

.method public isControllerFullyVisible()Z
    .registers 2

    .line 847
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->isFullyVisible()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method protected onContentAspectRatioChanged(FLcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;Landroid/view/View;)V
    .registers 4
    .param p2    # Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_a

    .line 1240
    instance-of p3, p3, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;

    if-eqz p3, :cond_7

    const/4 p1, 0x0

    .line 1239
    :cond_7
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setAspectRatio(F)V

    :cond_a
    return-void
.end method

.method public onPause()V
    .registers 3

    .line 1219
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->surfaceView:Landroid/view/View;

    instance-of v1, v0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;

    if-eqz v1, :cond_b

    .line 1220
    check-cast v0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->onPause()V

    :cond_b
    return-void
.end method

.method public onResume()V
    .registers 3

    .line 1206
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->surfaceView:Landroid/view/View;

    instance-of v1, v0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;

    if-eqz v1, :cond_b

    .line 1207
    check-cast v0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->onResume()V

    :cond_b
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 1165
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->useController()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->player:Lcom/google/android/exoplayer2/Player;

    if-nez v0, :cond_c

    goto :goto_25

    .line 1168
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_22

    if-eq p1, v0, :cond_16

    return v1

    .line 1173
    :cond_16
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->isTouching:Z

    if-eqz p1, :cond_21

    .line 1174
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->isTouching:Z

    .line 1175
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->performClick()Z

    move-result p1

    return p1

    :cond_21
    return v1

    .line 1170
    :cond_22
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->isTouching:Z

    return v0

    :cond_25
    :goto_25
    return v1
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 1191
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->useController()Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->player:Lcom/google/android/exoplayer2/Player;

    if-nez p1, :cond_b

    goto :goto_10

    :cond_b
    const/4 p1, 0x1

    .line 1194
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->maybeShowController(Z)V

    return p1

    :cond_10
    :goto_10
    const/4 p1, 0x0

    return p1
.end method

.method public performClick()Z
    .registers 2

    .line 1185
    invoke-super {p0}, Landroid/widget/FrameLayout;->performClick()Z

    .line 1186
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->toggleControllerVisibility()Z

    move-result v0

    return v0
.end method

.method public setAspectRatioListener(Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioListener;)V
    .registers 3
    .param p1    # Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1114
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1115
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setAspectRatioListener(Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioListener;)V

    return-void
.end method

.method public setControlDispatcher(Lcom/google/android/exoplayer2/ControlDispatcher;)V
    .registers 3

    .line 996
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setControlDispatcher(Lcom/google/android/exoplayer2/ControlDispatcher;)V

    return-void
.end method

.method public setControllerAutoShow(Z)V
    .registers 2

    .line 929
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controllerAutoShow:Z

    return-void
.end method

.method public setControllerHideDuringAds(Z)V
    .registers 2

    .line 939
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controllerHideDuringAds:Z

    return-void
.end method

.method public setControllerHideOnTouch(Z)V
    .registers 3

    .line 907
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 908
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controllerHideOnTouch:Z

    .line 909
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->updateContentDescription()V

    return-void
.end method

.method public setControllerOnFullScreenModeChangedListener(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$OnFullScreenModeChangedListener;)V
    .registers 3
    .param p1    # Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$OnFullScreenModeChangedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 971
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 972
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setOnFullScreenModeChangedListener(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$OnFullScreenModeChangedListener;)V

    return-void
.end method

.method public setControllerShowTimeoutMs(I)V
    .registers 3

    .line 888
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 889
    iput p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controllerShowTimeoutMs:I

    .line 890
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->isFullyVisible()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 892
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->showController()V

    :cond_12
    return-void
.end method

.method public setControllerVisibilityListener(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$VisibilityListener;)V
    .registers 4
    .param p1    # Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$VisibilityListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 950
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 951
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controllerVisibilityListener:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$VisibilityListener;

    if-ne v0, p1, :cond_a

    return-void

    :cond_a
    if-eqz v0, :cond_11

    .line 955
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->removeVisibilityListener(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$VisibilityListener;)V

    .line 957
    :cond_11
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controllerVisibilityListener:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$VisibilityListener;

    if-eqz p1, :cond_1a

    .line 959
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->addVisibilityListener(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$VisibilityListener;)V

    :cond_1a
    return-void
.end method

.method public setCustomErrorMessage(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 805
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->errorMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 806
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->customErrorMessage:Ljava/lang/CharSequence;

    .line 807
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->updateErrorMessage()V

    return-void
.end method

.method public setDefaultArtwork(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 685
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->defaultArtwork:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_a

    .line 686
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->defaultArtwork:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 687
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->updateForCurrentTrackSelections(Z)V

    :cond_a
    return-void
.end method

.method public setErrorMessageProvider(Lcom/google/android/exoplayer2/util/ErrorMessageProvider;)V
    .registers 3
    .param p1    # Lcom/google/android/exoplayer2/util/ErrorMessageProvider;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ErrorMessageProvider<",
            "-",
            "Lcom/google/android/exoplayer2/ExoPlaybackException;",
            ">;)V"
        }
    .end annotation

    .line 792
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->errorMessageProvider:Lcom/google/android/exoplayer2/util/ErrorMessageProvider;

    if-eq v0, p1, :cond_9

    .line 793
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->errorMessageProvider:Lcom/google/android/exoplayer2/util/ErrorMessageProvider;

    .line 794
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->updateErrorMessage()V

    :cond_9
    return-void
.end method

.method public setExtraAdGroupMarkers([J[Z)V
    .registers 4
    .param p1    # [J
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # [Z
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1102
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1103
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setExtraAdGroupMarkers([J[Z)V

    return-void
.end method

.method public setKeepContentOnPlayerReset(Z)V
    .registers 3

    .line 748
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->keepContentOnPlayerReset:Z

    if-eq v0, p1, :cond_a

    .line 749
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->keepContentOnPlayerReset:Z

    const/4 p1, 0x0

    .line 750
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->updateForCurrentTrackSelections(Z)V

    :cond_a
    return-void
.end method

.method public setPlaybackPreparer(Lcom/google/android/exoplayer2/PlaybackPreparer;)V
    .registers 3
    .param p1    # Lcom/google/android/exoplayer2/PlaybackPreparer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 986
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 987
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setPlaybackPreparer(Lcom/google/android/exoplayer2/PlaybackPreparer;)V

    return-void
.end method

.method public setPlayer(Lcom/google/android/exoplayer2/Player;)V
    .registers 9
    .param p1    # Lcom/google/android/exoplayer2/Player;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 568
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_e

    move v0, v2

    goto :goto_f

    :cond_e
    move v0, v3

    :goto_f
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    if-eqz p1, :cond_21

    .line 570
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1f

    goto :goto_21

    :cond_1f
    move v0, v3

    goto :goto_22

    :cond_21
    :goto_21
    move v0, v2

    .line 569
    :goto_22
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 571
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->player:Lcom/google/android/exoplayer2/Player;

    if-ne v0, p1, :cond_2a

    return-void

    :cond_2a
    const/4 v1, 0x0

    if-eqz v0, :cond_67

    .line 576
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->componentListener:Lcom/google/android/exoplayer2/ui/StyledPlayerView$ComponentListener;

    invoke-interface {v0, v4}, Lcom/google/android/exoplayer2/Player;->removeListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    .line 577
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getVideoComponent()Lcom/google/android/exoplayer2/Player$VideoComponent;

    move-result-object v4

    if-eqz v4, :cond_5c

    .line 579
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->componentListener:Lcom/google/android/exoplayer2/ui/StyledPlayerView$ComponentListener;

    invoke-interface {v4, v5}, Lcom/google/android/exoplayer2/Player$VideoComponent;->removeVideoListener(Lcom/google/android/exoplayer2/video/VideoListener;)V

    .line 580
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->surfaceView:Landroid/view/View;

    instance-of v6, v5, Landroid/view/TextureView;

    if-eqz v6, :cond_49

    .line 581
    check-cast v5, Landroid/view/TextureView;

    invoke-interface {v4, v5}, Lcom/google/android/exoplayer2/Player$VideoComponent;->clearVideoTextureView(Landroid/view/TextureView;)V

    goto :goto_5c

    .line 582
    :cond_49
    instance-of v6, v5, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;

    if-eqz v6, :cond_53

    .line 583
    check-cast v5, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;

    invoke-virtual {v5, v1}, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->setVideoComponent(Lcom/google/android/exoplayer2/Player$VideoComponent;)V

    goto :goto_5c

    .line 584
    :cond_53
    instance-of v6, v5, Landroid/view/SurfaceView;

    if-eqz v6, :cond_5c

    .line 585
    check-cast v5, Landroid/view/SurfaceView;

    invoke-interface {v4, v5}, Lcom/google/android/exoplayer2/Player$VideoComponent;->clearVideoSurfaceView(Landroid/view/SurfaceView;)V

    .line 588
    :cond_5c
    :goto_5c
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getTextComponent()Lcom/google/android/exoplayer2/Player$TextComponent;

    move-result-object v0

    if-eqz v0, :cond_67

    .line 590
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->componentListener:Lcom/google/android/exoplayer2/ui/StyledPlayerView$ComponentListener;

    invoke-interface {v0, v4}, Lcom/google/android/exoplayer2/Player$TextComponent;->removeTextOutput(Lcom/google/android/exoplayer2/text/TextOutput;)V

    .line 593
    :cond_67
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    if-eqz v0, :cond_6e

    .line 594
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setCues(Ljava/util/List;)V

    .line 596
    :cond_6e
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->player:Lcom/google/android/exoplayer2/Player;

    .line 597
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->useController()Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 598
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    .line 600
    :cond_7b
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->updateBuffering()V

    .line 601
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->updateErrorMessage()V

    .line 602
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->updateForCurrentTrackSelections(Z)V

    if-eqz p1, :cond_cf

    .line 604
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getVideoComponent()Lcom/google/android/exoplayer2/Player$VideoComponent;

    move-result-object v0

    if-eqz v0, :cond_b0

    .line 606
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->surfaceView:Landroid/view/View;

    instance-of v2, v1, Landroid/view/TextureView;

    if-eqz v2, :cond_98

    .line 607
    check-cast v1, Landroid/view/TextureView;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player$VideoComponent;->setVideoTextureView(Landroid/view/TextureView;)V

    goto :goto_ab

    .line 608
    :cond_98
    instance-of v2, v1, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;

    if-eqz v2, :cond_a2

    .line 609
    check-cast v1, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->setVideoComponent(Lcom/google/android/exoplayer2/Player$VideoComponent;)V

    goto :goto_ab

    .line 610
    :cond_a2
    instance-of v2, v1, Landroid/view/SurfaceView;

    if-eqz v2, :cond_ab

    .line 611
    check-cast v1, Landroid/view/SurfaceView;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player$VideoComponent;->setVideoSurfaceView(Landroid/view/SurfaceView;)V

    .line 613
    :cond_ab
    :goto_ab
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->componentListener:Lcom/google/android/exoplayer2/ui/StyledPlayerView$ComponentListener;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player$VideoComponent;->addVideoListener(Lcom/google/android/exoplayer2/video/VideoListener;)V

    .line 615
    :cond_b0
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getTextComponent()Lcom/google/android/exoplayer2/Player$TextComponent;

    move-result-object v0

    if-eqz v0, :cond_c6

    .line 617
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->componentListener:Lcom/google/android/exoplayer2/ui/StyledPlayerView$ComponentListener;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player$TextComponent;->addTextOutput(Lcom/google/android/exoplayer2/text/TextOutput;)V

    .line 618
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    if-eqz v1, :cond_c6

    .line 619
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player$TextComponent;->getCurrentCues()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setCues(Ljava/util/List;)V

    .line 622
    :cond_c6
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->componentListener:Lcom/google/android/exoplayer2/ui/StyledPlayerView$ComponentListener;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player;->addListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    .line 623
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->maybeShowController(Z)V

    goto :goto_d2

    .line 625
    :cond_cf
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->hideController()V

    :goto_d2
    return-void
.end method

.method public setRepeatToggleModes(I)V
    .registers 3

    .line 1046
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1047
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setRepeatToggleModes(I)V

    return-void
.end method

.method public setResizeMode(I)V
    .registers 3

    .line 644
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setResizeMode(I)V

    return-void
.end method

.method public setShowBuffering(I)V
    .registers 3

    .line 779
    iget v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->showBuffering:I

    if-eq v0, p1, :cond_9

    .line 780
    iput p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->showBuffering:I

    .line 781
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->updateBuffering()V

    :cond_9
    return-void
.end method

.method public setShowFastForwardButton(Z)V
    .registers 3

    .line 1016
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1017
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setShowFastForwardButton(Z)V

    return-void
.end method

.method public setShowMultiWindowTimeBar(Z)V
    .registers 3

    .line 1086
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1087
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setShowMultiWindowTimeBar(Z)V

    return-void
.end method

.method public setShowNextButton(Z)V
    .registers 3

    .line 1036
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1037
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setShowNextButton(Z)V

    return-void
.end method

.method public setShowPreviousButton(Z)V
    .registers 3

    .line 1026
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1027
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setShowPreviousButton(Z)V

    return-void
.end method

.method public setShowRewindButton(Z)V
    .registers 3

    .line 1006
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1007
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setShowRewindButton(Z)V

    return-void
.end method

.method public setShowShuffleButton(Z)V
    .registers 3

    .line 1056
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1057
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setShowShuffleButton(Z)V

    return-void
.end method

.method public setShowSubtitleButton(Z)V
    .registers 3

    .line 1066
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1067
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setShowSubtitleButton(Z)V

    return-void
.end method

.method public setShowVrButton(Z)V
    .registers 3

    .line 1076
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1077
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setShowVrButton(Z)V

    return-void
.end method

.method public setShutterBackgroundColor(I)V
    .registers 3

    .line 723
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->shutterView:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 724
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_7
    return-void
.end method

.method public setUseArtwork(Z)V
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    .line 665
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->artworkView:Landroid/widget/ImageView;

    if-eqz v1, :cond_8

    goto :goto_a

    :cond_8
    move v1, v0

    goto :goto_b

    :cond_a
    :goto_a
    const/4 v1, 0x1

    :goto_b
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 666
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->useArtwork:Z

    if-eq v1, p1, :cond_17

    .line 667
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->useArtwork:Z

    .line 668
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->updateForCurrentTrackSelections(Z)V

    :cond_17
    return-void
.end method

.method public setUseController(Z)V
    .registers 3

    if-eqz p1, :cond_9

    .line 703
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    if-eqz v0, :cond_7

    goto :goto_9

    :cond_7
    const/4 v0, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 v0, 0x1

    :goto_a
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 704
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->useController:Z

    if-ne v0, p1, :cond_12

    return-void

    .line 707
    :cond_12
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->useController:Z

    .line 708
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->useController()Z

    move-result p1

    if-eqz p1, :cond_22

    .line 709
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    goto :goto_2f

    .line 710
    :cond_22
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    if-eqz p1, :cond_2f

    .line 711
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->hide()V

    .line 712
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    .line 714
    :cond_2f
    :goto_2f
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->updateContentDescription()V

    return-void
.end method

.method public setUseSensorRotation(Z)V
    .registers 4

    .line 762
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->useSensorRotation:Z

    if-eq v0, p1, :cond_11

    .line 763
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->useSensorRotation:Z

    .line 764
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->surfaceView:Landroid/view/View;

    instance-of v1, v0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;

    if-eqz v1, :cond_11

    .line 765
    check-cast v0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->setUseSensorRotation(Z)V

    :cond_11
    return-void
.end method

.method public setVisibility(I)V
    .registers 4

    .line 631
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 632
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->surfaceView:Landroid/view/View;

    instance-of v1, v0, Landroid/view/SurfaceView;

    if-eqz v1, :cond_c

    .line 634
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    return-void
.end method

.method public showController()V
    .registers 2

    .line 858
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->shouldShowControllerIndefinitely()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->showController(Z)V

    return-void
.end method
