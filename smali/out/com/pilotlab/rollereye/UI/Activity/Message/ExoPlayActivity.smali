.class public Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ExoPlayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ExoPlayActivity"


# instance fields
.field private activity_exo_video_speed:Landroid/widget/Button;

.field private activity_preview_exo_preview_Image:Landroid/widget/ImageView;

.field private activity_preview_exo_preview_play:Landroid/widget/ImageButton;

.field private activity_preview_exo_preview_ry:Landroid/widget/RelativeLayout;

.field private alertDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

.field private customDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

.field private exo_player_view:Lcom/google/android/exoplayer2/ui/PlayerView;

.field private layout_left:Landroid/widget/LinearLayout;

.field private playUrl:Ljava/lang/String;

.field private player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

.field private player_speed:F

.field private thumbUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 47
    iput v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;->player_speed:F

    return-void
.end method

.method static synthetic access$000(Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;)Landroid/widget/LinearLayout;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;->layout_left:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$100(Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;)Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;->alertDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    return-object p0
.end method

.method static synthetic access$200(Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;)Landroid/widget/RelativeLayout;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;->activity_preview_exo_preview_ry:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$300(Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;)V
    .registers 1

    .line 32
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;->stop()V

    return-void
.end method

.method static synthetic access$400(Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;)Landroid/widget/Button;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;->activity_exo_video_speed:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$500(Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;->customDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    return-object p0
.end method

.method static synthetic access$502(Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;Lcom/pilotlab/rollereye/CustomerView/CustomDialog;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;
    .registers 2

    .line 32
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;->customDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    return-object p1
.end method

.method private initPlayer()V
    .registers 3

    .line 149
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;->playUrl:Ljava/lang/String;

    .line 151
    new-instance v0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->build()Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .line 152
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;->exo_player_view:Lcom/google/android/exoplayer2/ui/PlayerView;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    .line 154
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;->playUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/MediaItem;->fromUri(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v0

    .line 156
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setMediaItem(Lcom/google/android/exoplayer2/MediaItem;)V

    .line 158
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity$2;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity$2;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    return-void
.end method

.method private initTumb()V
    .registers 3

    .line 217
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "thumbUrl"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;->thumbUrl:Ljava/lang/String;

    .line 218
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;->thumbUrl:Ljava/lang/String;

    .line 219
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;->activity_preview_exo_preview_Image:Landroid/widget/ImageView;

    .line 220
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method private initView()V
    .registers 3

    .line 110
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;->alertDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    const v0, 0x7f0a0448

    .line 112
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;->layout_left:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0137

    .line 113
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;->activity_preview_exo_preview_Image:Landroid/widget/ImageView;

    const v0, 0x7f0a0139

    .line 114
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;->activity_preview_exo_preview_ry:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0138

    .line 115
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;->activity_preview_exo_preview_play:Landroid/widget/ImageButton;

    const v0, 0x7f0a02d1

    .line 117
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ui/PlayerView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;->exo_player_view:Lcom/google/android/exoplayer2/ui/PlayerView;

    const v0, 0x7f0a00ca

    .line 118
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;->activity_exo_video_speed:Landroid/widget/Button;

    return-void
.end method

.method private pause()V
    .registers 2

    .line 262
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_7

    .line 263
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->pause()V

    :cond_7
    return-void
.end method

.method private preparePlayer()V
    .registers 2

    .line 142
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;->alertDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->show()V

    .line 144
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->prepare()V

    return-void
.end method

.method private setPlayerSpeed(F)V
    .registers 5

    .line 225
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_24

    .line 226
    new-instance v0, Lcom/google/android/exoplayer2/PlaybackParameters;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/PlaybackParameters;-><init>(F)V

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "speed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ExoPlayActivity"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    :cond_24
    return-void
.end method

.method private stop()V
    .registers 2

    .line 241
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_f

    .line 242
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->stop()V

    .line 243
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->release()V

    const/4 v0, 0x0

    .line 244
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    :cond_f
    return-void
.end method


# virtual methods
.method protected exitCoutOut()V
    .registers 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1c
    .end annotation

    .line 77
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    .line 78
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 79
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public fullScreen()V
    .registers 3

    .line 84
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    .line 91
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method protected initEvent()V
    .registers 3

    .line 124
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;->layout_left:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;->activity_exo_video_speed:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;->activity_preview_exo_preview_play:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;->exo_player_view:Lcom/google/android/exoplayer2/ui/PlayerView;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity$1;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity$1;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setControllerVisibilityListener(Lcom/google/android/exoplayer2/ui/PlayerControlView$VisibilityListener;)V

    return-void
.end method

.method public myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;
    .registers 8

    .line 268
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;->customDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    if-eqz v0, :cond_7

    .line 269
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->dismiss()V

    .line 271
    :cond_7
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 272
    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setCancelable(Z)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    const v1, 0x7f11003b

    .line 273
    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    .line 274
    invoke-virtual {v0, p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    if-eqz p2, :cond_24

    if-eqz p3, :cond_24

    .line 276
    invoke-virtual {v0, p2, p3}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    :cond_24
    if-eqz p4, :cond_2b

    if-eqz p5, :cond_2b

    .line 278
    invoke-virtual {v0, p4, p5}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    .line 280
    :cond_2b
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->create()Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;->customDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    .line 283
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;->customDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    return-object p1
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6

    .line 288
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a00ca

    if-eq p1, v0, :cond_1f

    const v0, 0x7f0a0138

    if-eq p1, v0, :cond_18

    const v0, 0x7f0a0448

    if-eq p1, v0, :cond_14

    goto :goto_5e

    .line 296
    :cond_14
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;->finish()V

    goto :goto_5e

    .line 291
    :cond_18
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;->initPlayer()V

    .line 292
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;->preparePlayer()V

    goto :goto_5e

    .line 299
    :cond_1f
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz p1, :cond_5e

    .line 300
    iget p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;->player_speed:F

    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_31

    const/high16 p1, 0x40000000    # 2.0f

    .line 301
    iput p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;->player_speed:F

    goto :goto_59

    :cond_31
    float-to-double v0, p1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_3d

    const/high16 p1, 0x40800000    # 4.0f

    .line 303
    iput p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;->player_speed:F

    goto :goto_59

    :cond_3d
    float-to-double v0, p1

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_49

    const/high16 p1, 0x41000000    # 8.0f

    .line 305
    iput p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;->player_speed:F

    goto :goto_59

    :cond_49
    float-to-double v0, p1

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    cmpl-double p1, v0, v2

    if-nez p1, :cond_55

    const/high16 p1, 0x3f000000    # 0.5f

    .line 307
    iput p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;->player_speed:F

    goto :goto_59

    :cond_55
    const/high16 p1, 0x3f800000    # 1.0f

    .line 308
    iput p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;->player_speed:F

    .line 309
    :goto_59
    iget p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;->player_speed:F

    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;->setPlayerSpeed(F)V

    :cond_5e
    :goto_5e
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 52
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;->fullScreen()V

    .line 54
    invoke-static {p0}, Lcom/pilotlab/rollereye/RollerEyeApplication;->addActivity(Landroid/app/Activity;)V

    const p1, 0x7f0d0029

    .line 55
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;->setContentView(I)V

    .line 56
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;->initView()V

    .line 57
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;->initEvent()V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 250
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 251
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;->alertDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    if-eqz v0, :cond_a

    .line 252
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 253
    :cond_a
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;->customDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    if-eqz v0, :cond_11

    .line 254
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->dismiss()V

    .line 255
    :cond_11
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;->stop()V

    .line 257
    invoke-static {p0}, Lcom/pilotlab/rollereye/RollerEyeApplication;->removeActivity(Landroid/app/Activity;)V

    return-void
.end method

.method protected onPause()V
    .registers 1

    .line 97
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 98
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;->pause()V

    return-void
.end method

.method protected onResume()V
    .registers 1

    .line 70
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 71
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;->initTumb()V

    .line 72
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;->fullScreen()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2

    .line 103
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onWindowFocusChanged(Z)V

    .line 104
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;->fullScreen()V

    return-void
.end method

.method public play()V
    .registers 3

    .line 234
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_e

    .line 235
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->play()V

    .line 236
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;->activity_preview_exo_preview_ry:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_e
    return-void
.end method
