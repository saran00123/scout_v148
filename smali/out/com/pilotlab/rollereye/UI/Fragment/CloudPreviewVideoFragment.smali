.class public Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;
.super Landroidx/fragment/app/Fragment;
.source "CloudPreviewVideoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment$OnFragmentInteractionListener;
    }
.end annotation


# static fields
.field private static final ARG_PARAM1:Ljava/lang/String; = "param1"


# instance fields
.field private TAG:Ljava/lang/String;

.field private alertDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

.field private customDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

.field private delay_time:J

.field private fragment_preview_video_bottombar:Landroid/widget/LinearLayout;

.field private fragment_preview_video_control:Landroid/widget/RelativeLayout;

.field private fragment_preview_video_currentPlayerSeconds:Landroid/widget/TextView;

.field private fragment_preview_video_imageButtonPause:Landroid/widget/ImageButton;

.field private fragment_preview_video_imageButtonPlay:Landroid/widget/ImageButton;

.field private fragment_preview_video_playerSeekBar:Landroid/widget/SeekBar;

.field private fragment_preview_video_previewImage:Landroid/widget/ImageView;

.field private fragment_preview_video_speed:Landroid/widget/Button;

.field private fragment_preview_video_sufaceview:Landroid/view/SurfaceView;

.field private fragment_preview_video_totalPlayerSeconds:Landroid/widget/TextView;

.field private isExit:Z

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment$OnFragmentInteractionListener;

.field private player:Landroid/media/MediaPlayer;

.field private player_speed:F

.field private recordBean:Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 72
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const-string v0, "CloudPreviewVideoFragment"

    .line 41
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->isExit:Z

    const-wide/16 v0, 0x1388

    .line 64
    iput-wide v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->delay_time:J

    const/high16 v0, 0x3f800000    # 1.0f

    .line 65
    iput v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->player_speed:F

    return-void
.end method

.method static synthetic access$000(Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;)Landroid/media/MediaPlayer;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->player:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$100(Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;)Landroid/widget/ImageButton;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->fragment_preview_video_imageButtonPause:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;)Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->alertDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;)Landroid/widget/TextView;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->fragment_preview_video_totalPlayerSeconds:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;)Landroid/view/SurfaceView;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->fragment_preview_video_sufaceview:Landroid/view/SurfaceView;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;F)F
    .registers 2

    .line 38
    iput p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->player_speed:F

    return p1
.end method

.method static synthetic access$1400(Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;)Landroid/widget/Button;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->fragment_preview_video_speed:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->customDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;Lcom/pilotlab/rollereye/CustomerView/CustomDialog;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;
    .registers 2

    .line 38
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->customDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;)V
    .registers 1

    .line 38
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->stop()V

    return-void
.end method

.method static synthetic access$200(Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;)Landroid/widget/ImageButton;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->fragment_preview_video_imageButtonPlay:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$300(Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;)J
    .registers 3

    .line 38
    iget-wide v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->delay_time:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;)Landroid/os/Handler;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;)Landroid/widget/TextView;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->fragment_preview_video_currentPlayerSeconds:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;)Z
    .registers 1

    .line 38
    iget-boolean p0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->isExit:Z

    return p0
.end method

.method static synthetic access$700(Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;)Landroid/widget/SeekBar;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->fragment_preview_video_playerSeekBar:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static synthetic access$800(Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;)Landroid/widget/RelativeLayout;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->fragment_preview_video_control:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$900(Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;)Landroid/widget/LinearLayout;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->fragment_preview_video_bottombar:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private iniSufaView()V
    .registers 4

    .line 193
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->fragment_preview_video_sufaceview:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 194
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 195
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->getTruelyWidthPx(Landroid/content/Context;)I

    move-result v0

    mul-int/lit8 v1, v0, 0x3

    .line 196
    div-int/lit8 v1, v1, 0x4

    .line 197
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->fragment_preview_video_sufaceview:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 198
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 199
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 200
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->fragment_preview_video_sufaceview:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->fragment_preview_video_sufaceview:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment$3;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment$3;-><init>(Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;)V

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

.method private initHandler()V
    .registers 2

    .line 168
    new-instance v0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment$2;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment$2;-><init>(Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private initPlayer()V
    .registers 3

    .line 250
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->alertDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->show()V

    .line 251
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->player:Landroid/media/MediaPlayer;

    .line 252
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->player:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 254
    :try_start_12
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->recordBean:Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->getLocal_path()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_37

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->recordBean:Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->getLocal_path()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 255
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->player:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->recordBean:Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->getLocal_path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_42

    .line 257
    :cond_37
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->player:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->recordBean:Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 258
    :goto_42
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_47} :catch_48

    goto :goto_4c

    :catch_48
    move-exception v0

    .line 260
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 263
    :goto_4c
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->player:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment$4;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment$4;-><init>(Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 269
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->player:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment$5;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment$5;-><init>(Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 285
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->player:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment$6;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment$6;-><init>(Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 302
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->player:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment$7;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment$7;-><init>(Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 318
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->player:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment$8;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment$8;-><init>(Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    return-void
.end method

.method private initTumb()V
    .registers 4

    .line 354
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->recordBean:Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;

    .line 355
    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->getThumb_url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->fragment_preview_video_previewImage:Landroid/widget/ImageView;

    .line 356
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 357
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->fragment_preview_video_previewImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 358
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->fragment_preview_video_bottombar:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 359
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->fragment_preview_video_imageButtonPause:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 360
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->fragment_preview_video_imageButtonPlay:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method

.method private initView()V
    .registers 4

    .line 118
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->alertDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    .line 120
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->view:Landroid/view/View;

    const v1, 0x7f0a0348

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->fragment_preview_video_sufaceview:Landroid/view/SurfaceView;

    .line 121
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->view:Landroid/view/View;

    const v1, 0x7f0a0340

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->fragment_preview_video_bottombar:Landroid/widget/LinearLayout;

    .line 122
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->view:Landroid/view/View;

    const v1, 0x7f0a0342

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->fragment_preview_video_currentPlayerSeconds:Landroid/widget/TextView;

    .line 123
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->view:Landroid/view/View;

    const v1, 0x7f0a0349

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->fragment_preview_video_totalPlayerSeconds:Landroid/widget/TextView;

    .line 124
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->view:Landroid/view/View;

    const v1, 0x7f0a0345

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->fragment_preview_video_playerSeekBar:Landroid/widget/SeekBar;

    .line 125
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->view:Landroid/view/View;

    const v1, 0x7f0a0346

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->fragment_preview_video_previewImage:Landroid/widget/ImageView;

    .line 126
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->view:Landroid/view/View;

    const v1, 0x7f0a0341

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->fragment_preview_video_control:Landroid/widget/RelativeLayout;

    .line 127
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->view:Landroid/view/View;

    const v1, 0x7f0a0344

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->fragment_preview_video_imageButtonPlay:Landroid/widget/ImageButton;

    .line 128
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->view:Landroid/view/View;

    const v1, 0x7f0a0343

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->fragment_preview_video_imageButtonPause:Landroid/widget/ImageButton;

    .line 129
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->view:Landroid/view/View;

    const v1, 0x7f0a0347

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->fragment_preview_video_speed:Landroid/widget/Button;

    return-void
.end method

.method public static newInstance(Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;)Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;
    .registers 4

    .line 76
    new-instance v0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;

    invoke-direct {v0}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;-><init>()V

    .line 77
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "param1"

    .line 78
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 79
    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private pause()V
    .registers 6

    .line 387
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_4b

    .line 388
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x111

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 389
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 390
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 392
    :cond_18
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->player:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 393
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->fragment_preview_video_imageButtonPlay:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 394
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->fragment_preview_video_imageButtonPause:Landroid/widget/ImageButton;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 395
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->fragment_preview_video_previewImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 396
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->fragment_preview_video_currentPlayerSeconds:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v3

    div-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    invoke-static {v3, v4}, Lcom/pilotlab/rollereye/Utils/CommonUtils;->durationFormLong2Text(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 397
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->fragment_preview_video_playerSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 398
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->fragment_preview_video_bottombar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_4b
    return-void
.end method

.method private setPlayerSpeed(F)V
    .registers 4

    .line 404
    :try_start_0
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v0

    .line 405
    invoke-virtual {v0, p1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    .line 406
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setPlaybackParams(Landroid/media/PlaybackParams;)V

    .line 407
    iget p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->player_speed:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_2f

    .line 408
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->fragment_preview_video_speed:Landroid/widget/Button;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->player_speed:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "X"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3c

    .line 409
    :cond_2f
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->fragment_preview_video_speed:Landroid/widget/Button;

    const v0, 0x7f110063

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_37} :catch_38

    goto :goto_3c

    :catch_38
    move-exception p1

    .line 411
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3c
    return-void
.end method

.method private stop()V
    .registers 3

    .line 377
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x111

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 378
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_16

    .line 379
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 380
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 381
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->player:Landroid/media/MediaPlayer;

    .line 383
    :cond_16
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x110

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method


# virtual methods
.method protected initEvent()V
    .registers 3

    .line 133
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->fragment_preview_video_imageButtonPlay:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->fragment_preview_video_imageButtonPause:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->fragment_preview_video_sufaceview:Landroid/view/SurfaceView;

    invoke-virtual {v0, p0}, Landroid/view/SurfaceView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->fragment_preview_video_bottombar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->fragment_preview_video_speed:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->fragment_preview_video_playerSeekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment$1;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment$1;-><init>(Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;
    .registers 8

    .line 335
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->customDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    if-eqz v0, :cond_7

    .line 336
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->dismiss()V

    .line 338
    :cond_7
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 339
    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setCancelable(Z)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    const v1, 0x7f11003b

    .line 340
    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    .line 341
    invoke-virtual {v0, p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    if-eqz p2, :cond_28

    if-eqz p3, :cond_28

    .line 343
    invoke-virtual {v0, p2, p3}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    :cond_28
    if-eqz p4, :cond_2f

    if-eqz p5, :cond_2f

    .line 345
    invoke-virtual {v0, p4, p5}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    .line 347
    :cond_2f
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->create()Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->customDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    .line 350
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->customDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    return-object p1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2

    .line 93
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .registers 4

    .line 227
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 228
    instance-of v0, p1, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment$OnFragmentInteractionListener;

    if-eqz v0, :cond_c

    .line 229
    check-cast p1, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment$OnFragmentInteractionListener;

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->mListener:Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment$OnFragmentInteractionListener;

    return-void

    .line 231
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

    .line 220
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->mListener:Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment$OnFragmentInteractionListener;

    if-eqz v0, :cond_7

    .line 221
    invoke-interface {v0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment$OnFragmentInteractionListener;->onFragmentInteraction(Z)V

    :cond_7
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 7

    .line 423
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/16 v0, 0x111

    const/16 v1, 0x8

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_114

    :pswitch_c
    goto/16 :goto_112

    .line 425
    :pswitch_e
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->fragment_preview_video_control:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2e

    .line 426
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->fragment_preview_video_control:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 427
    invoke-virtual {p0, v2}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->onButtonPressed(Z)V

    .line 428
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->player:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_27

    .line 429
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->fragment_preview_video_bottombar:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 430
    :cond_27
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_112

    .line 432
    :cond_2e
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->fragment_preview_video_control:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/4 p1, 0x1

    .line 433
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->onButtonPressed(Z)V

    .line 434
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->player:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_40

    .line 435
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->fragment_preview_video_bottombar:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 436
    :cond_40
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->mHandler:Landroid/os/Handler;

    iget-wide v3, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->delay_time:J

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 438
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->fragment_preview_video_imageButtonPause:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 439
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->fragment_preview_video_imageButtonPlay:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 441
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->player:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_69

    .line 442
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_62

    .line 443
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->fragment_preview_video_imageButtonPause:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_112

    .line 445
    :cond_62
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->fragment_preview_video_imageButtonPlay:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_112

    .line 448
    :cond_69
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->fragment_preview_video_imageButtonPlay:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_112

    .line 473
    :pswitch_70
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->player:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_112

    .line 474
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->fragment_preview_video_imageButtonPlay:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 475
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->fragment_preview_video_imageButtonPause:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 476
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 477
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->fragment_preview_video_bottombar:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 478
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->fragment_preview_video_previewImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 479
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->mHandler:Landroid/os/Handler;

    iget-wide v1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->delay_time:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 480
    iget p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->player_speed:F

    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_a2

    const/high16 p1, 0x40000000    # 2.0f

    .line 481
    iput p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->player_speed:F

    goto :goto_ca

    :cond_a2
    float-to-double v0, p1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_ae

    const/high16 p1, 0x40800000    # 4.0f

    .line 483
    iput p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->player_speed:F

    goto :goto_ca

    :cond_ae
    float-to-double v0, p1

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_ba

    const/high16 p1, 0x41000000    # 8.0f

    .line 485
    iput p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->player_speed:F

    goto :goto_ca

    :cond_ba
    float-to-double v0, p1

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    cmpl-double p1, v0, v2

    if-nez p1, :cond_c6

    const/high16 p1, 0x3f000000    # 0.5f

    .line 487
    iput p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->player_speed:F

    goto :goto_ca

    :cond_c6
    const/high16 p1, 0x3f800000    # 1.0f

    .line 488
    iput p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->player_speed:F

    .line 489
    :goto_ca
    iget p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->player_speed:F

    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->setPlayerSpeed(F)V

    goto :goto_112

    .line 453
    :pswitch_d0
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->fragment_preview_video_imageButtonPlay:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 454
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->fragment_preview_video_imageButtonPause:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 455
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 456
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->player:Landroid/media/MediaPlayer;

    if-nez p1, :cond_e7

    .line 457
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->initPlayer()V

    goto :goto_f4

    .line 459
    :cond_e7
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 460
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->fragment_preview_video_bottombar:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 461
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->fragment_preview_video_previewImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 463
    :goto_f4
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->mHandler:Landroid/os/Handler;

    iget-wide v1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->delay_time:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_112

    .line 466
    :pswitch_fc
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 467
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->fragment_preview_video_imageButtonPlay:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 468
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->fragment_preview_video_imageButtonPause:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 469
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->player:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_112

    .line 470
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->pause()V

    :cond_112
    :goto_112
    return-void

    nop

    :pswitch_data_114
    .packed-switch 0x7f0a0343
        :pswitch_fc
        :pswitch_d0
        :pswitch_c
        :pswitch_c
        :pswitch_70
        :pswitch_e
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 85
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 87
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "param1"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->recordBean:Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;

    :cond_17
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    const p3, 0x7f0d0098

    const/4 v0, 0x0

    .line 101
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->view:Landroid/view/View;

    .line 102
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->initView()V

    .line 103
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->initEvent()V

    .line 104
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->initHandler()V

    .line 105
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->iniSufaView()V

    .line 106
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->view:Landroid/view/View;

    return-object p1
.end method

.method public onDestroyView()V
    .registers 2

    .line 111
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 112
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->alertDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    if-eqz v0, :cond_a

    .line 113
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    :cond_a
    return-void
.end method

.method public onDetach()V
    .registers 2

    .line 417
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    .line 418
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->mListener:Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment$OnFragmentInteractionListener;

    return-void
.end method

.method public onPause()V
    .registers 1

    .line 244
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 246
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->stop()V

    return-void
.end method

.method public onResume()V
    .registers 1

    .line 238
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 239
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->initTumb()V

    return-void
.end method

.method public play()V
    .registers 5

    .line 365
    :try_start_0
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x111

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 366
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 367
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->fragment_preview_video_bottombar:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 368
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->fragment_preview_video_previewImage:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 369
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->mHandler:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->delay_time:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_20

    :catch_20
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .registers 3

    .line 497
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    if-nez p1, :cond_9

    .line 499
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->pause()V

    goto :goto_13

    .line 501
    :cond_9
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->view:Landroid/view/View;

    if-eqz p1, :cond_13

    .line 502
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->fragment_preview_video_control:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_13
    :goto_13
    return-void
.end method
