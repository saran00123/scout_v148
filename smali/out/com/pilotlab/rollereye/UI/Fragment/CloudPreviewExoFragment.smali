.class public Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;
.super Landroidx/fragment/app/Fragment;
.source "CloudPreviewExoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment$OnFragmentInteractionListener;
    }
.end annotation


# static fields
.field private static final ARG_PARAM1:Ljava/lang/String; = "param1"


# instance fields
.field private TAG:Ljava/lang/String;

.field private alertDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

.field private customDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

.field private exo_player_view:Lcom/google/android/exoplayer2/ui/PlayerView;

.field private fragment_exo_preview_play:Landroid/widget/ImageButton;

.field private fragment_preview_exo_preview_ry:Landroid/widget/RelativeLayout;

.field private fragment_preview_video_previewImage:Landroid/widget/ImageView;

.field private fragment_preview_video_speed:Landroid/widget/Button;

.field private mListener:Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment$OnFragmentInteractionListener;

.field mediaItem:Lcom/google/android/exoplayer2/MediaItem;

.field private player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

.field private player_speed:F

.field private recordBean:Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 58
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const-string v0, "CloudPreviewExoFragment"

    .line 35
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->TAG:Ljava/lang/String;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 49
    iput v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->player_speed:F

    return-void
.end method

.method static synthetic access$000(Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;)Ljava/lang/String;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;)Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->alertDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    return-object p0
.end method

.method static synthetic access$200(Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;)Landroid/widget/RelativeLayout;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->fragment_preview_exo_preview_ry:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$300(Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;)V
    .registers 1

    .line 32
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->stop()V

    return-void
.end method

.method static synthetic access$400(Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;)Landroid/widget/Button;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->fragment_preview_video_speed:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$500(Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->customDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    return-object p0
.end method

.method static synthetic access$502(Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;Lcom/pilotlab/rollereye/CustomerView/CustomDialog;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;
    .registers 2

    .line 32
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->customDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    return-object p1
.end method

.method private initPlayer()V
    .registers 3

    .line 158
    new-instance v0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->build()Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .line 159
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->exo_player_view:Lcom/google/android/exoplayer2/ui/PlayerView;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    .line 161
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->recordBean:Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->getLocal_path()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_36

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->recordBean:Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->getLocal_path()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 162
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->recordBean:Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->getLocal_path()Ljava/lang/String;

    move-result-object v0

    goto :goto_3c

    .line 164
    :cond_36
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->recordBean:Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 167
    :goto_3c
    invoke-static {v0}, Lcom/google/android/exoplayer2/MediaItem;->fromUri(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    .line 169
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setMediaItem(Lcom/google/android/exoplayer2/MediaItem;)V

    .line 171
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->exo_player_view:Lcom/google/android/exoplayer2/ui/PlayerView;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment$1;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment$1;-><init>(Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setControllerVisibilityListener(Lcom/google/android/exoplayer2/ui/PlayerControlView$VisibilityListener;)V

    .line 183
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment$2;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment$2;-><init>(Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    return-void
.end method

.method private initTumb()V
    .registers 3

    .line 272
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->recordBean:Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;

    .line 273
    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->getThumb_url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->fragment_preview_video_previewImage:Landroid/widget/ImageView;

    .line 274
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method private initView()V
    .registers 4

    .line 102
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->alertDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    .line 103
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->view:Landroid/view/View;

    const v1, 0x7f0a0330

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ui/PlayerView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->exo_player_view:Lcom/google/android/exoplayer2/ui/PlayerView;

    .line 105
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->view:Landroid/view/View;

    const v1, 0x7f0a033e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->fragment_preview_exo_preview_ry:Landroid/widget/RelativeLayout;

    .line 106
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->view:Landroid/view/View;

    const v1, 0x7f0a033d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->fragment_preview_video_previewImage:Landroid/widget/ImageView;

    .line 107
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->view:Landroid/view/View;

    const v1, 0x7f0a0333

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->fragment_preview_video_speed:Landroid/widget/Button;

    .line 108
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->view:Landroid/view/View;

    const v1, 0x7f0a0331

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->fragment_exo_preview_play:Landroid/widget/ImageButton;

    return-void
.end method

.method public static newInstance(Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;)Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;
    .registers 4

    .line 62
    new-instance v0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;

    invoke-direct {v0}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;-><init>()V

    .line 63
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "param1"

    .line 64
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 65
    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private pause()V
    .registers 2

    .line 293
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_7

    .line 294
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->pause()V

    :cond_7
    return-void
.end method

.method private preparePlayer()V
    .registers 2

    .line 246
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->alertDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->show()V

    .line 248
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->prepare()V

    return-void
.end method

.method private setPlayerSpeed(F)V
    .registers 6

    .line 300
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_24

    .line 301
    new-instance v0, Lcom/google/android/exoplayer2/PlaybackParameters;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/PlaybackParameters;-><init>(F)V

    .line 303
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "speed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    :cond_24
    return-void
.end method

.method private stop()V
    .registers 2

    .line 285
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_f

    .line 286
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->stop()V

    .line 287
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->release()V

    const/4 v0, 0x0

    .line 288
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    :cond_f
    return-void
.end method


# virtual methods
.method protected initEvent()V
    .registers 2

    .line 113
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->fragment_preview_video_speed:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->fragment_exo_preview_play:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;
    .registers 8

    .line 253
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->customDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    if-eqz v0, :cond_7

    .line 254
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->dismiss()V

    .line 256
    :cond_7
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 257
    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setCancelable(Z)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    const v1, 0x7f11003b

    .line 258
    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    .line 259
    invoke-virtual {v0, p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    if-eqz p2, :cond_28

    if-eqz p3, :cond_28

    .line 261
    invoke-virtual {v0, p2, p3}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    :cond_28
    if-eqz p4, :cond_2f

    if-eqz p5, :cond_2f

    .line 263
    invoke-virtual {v0, p4, p5}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    .line 265
    :cond_2f
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->create()Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->customDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    .line 268
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->customDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    return-object p1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2

    .line 79
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .registers 4

    .line 125
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 126
    instance-of v0, p1, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment$OnFragmentInteractionListener;

    if-eqz v0, :cond_c

    .line 127
    check-cast p1, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment$OnFragmentInteractionListener;

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->mListener:Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment$OnFragmentInteractionListener;

    return-void

    .line 129
    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must implement OnFragmentInteractionListener"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onButtonPressed(Z)V
    .registers 3

    .line 118
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->mListener:Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment$OnFragmentInteractionListener;

    if-eqz v0, :cond_7

    .line 119
    invoke-interface {v0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment$OnFragmentInteractionListener;->onFragmentInteraction(Z)V

    :cond_7
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6

    .line 318
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0331

    if-eq p1, v0, :cond_4f

    const v0, 0x7f0a0333

    if-eq p1, v0, :cond_f

    goto :goto_55

    .line 325
    :cond_f
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz p1, :cond_55

    .line 326
    iget p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->player_speed:F

    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_21

    const/high16 p1, 0x40000000    # 2.0f

    .line 327
    iput p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->player_speed:F

    goto :goto_49

    :cond_21
    float-to-double v0, p1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_2d

    const/high16 p1, 0x40800000    # 4.0f

    .line 329
    iput p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->player_speed:F

    goto :goto_49

    :cond_2d
    float-to-double v0, p1

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_39

    const/high16 p1, 0x41000000    # 8.0f

    .line 331
    iput p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->player_speed:F

    goto :goto_49

    :cond_39
    float-to-double v0, p1

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    cmpl-double p1, v0, v2

    if-nez p1, :cond_45

    const/high16 p1, 0x3f000000    # 0.5f

    .line 333
    iput p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->player_speed:F

    goto :goto_49

    :cond_45
    const/high16 p1, 0x3f800000    # 1.0f

    .line 334
    iput p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->player_speed:F

    .line 335
    :goto_49
    iget p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->player_speed:F

    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->setPlayerSpeed(F)V

    goto :goto_55

    .line 321
    :cond_4f
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->initPlayer()V

    .line 322
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->preparePlayer()V

    :cond_55
    :goto_55
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 71
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 73
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "param1"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->recordBean:Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;

    :cond_17
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    const p3, 0x7f0d0096

    const/4 v0, 0x0

    .line 87
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->view:Landroid/view/View;

    .line 88
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->initView()V

    .line 89
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->initEvent()V

    .line 90
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->view:Landroid/view/View;

    return-object p1
.end method

.method public onDestroyView()V
    .registers 2

    .line 95
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 96
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->alertDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    if-eqz v0, :cond_a

    .line 97
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    :cond_a
    return-void
.end method

.method public onDetach()V
    .registers 3

    .line 310
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    .line 311
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->mListener:Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment$OnFragmentInteractionListener;

    .line 312
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->stop()V

    .line 313
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDetach"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPause()V
    .registers 1

    .line 142
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 143
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->pause()V

    return-void
.end method

.method public onResume()V
    .registers 1

    .line 136
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 137
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->initTumb()V

    return-void
.end method

.method public play()V
    .registers 3

    .line 278
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_e

    .line 279
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->play()V

    .line 280
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->fragment_preview_exo_preview_ry:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_e
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .registers 2

    .line 148
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    if-nez p1, :cond_8

    .line 150
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment;->pause()V

    :cond_8
    return-void
.end method
