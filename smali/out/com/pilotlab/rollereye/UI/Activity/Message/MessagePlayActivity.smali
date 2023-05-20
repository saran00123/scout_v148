.class public Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MessagePlayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
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

.field private fragment_preview_video_sufaceview:Landroid/view/SurfaceView;

.field private fragment_preview_video_totalPlayerSeconds:Landroid/widget/TextView;

.field private isExit:Z

.field private layout_left:Landroid/widget/LinearLayout;

.field private mHandler:Landroid/os/Handler;

.field private playUrl:Ljava/lang/String;

.field private player:Landroid/media/MediaPlayer;

.field private position:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 35
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->isExit:Z

    const-wide/16 v0, 0x2710

    .line 54
    iput-wide v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->delay_time:J

    return-void
.end method

.method static synthetic access$000(Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;)Landroid/media/MediaPlayer;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->player:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$100(Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;)Landroid/widget/ImageButton;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->fragment_preview_video_imageButtonPause:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;)Landroid/widget/LinearLayout;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->fragment_preview_video_bottombar:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;I)I
    .registers 2

    .line 35
    iput p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->position:I

    return p1
.end method

.method static synthetic access$1200(Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;)Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->alertDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;)Landroid/widget/TextView;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->fragment_preview_video_totalPlayerSeconds:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;)Landroid/view/SurfaceView;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->fragment_preview_video_sufaceview:Landroid/view/SurfaceView;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->customDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;Lcom/pilotlab/rollereye/CustomerView/CustomDialog;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;
    .registers 2

    .line 35
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->customDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;)V
    .registers 1

    .line 35
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->stop()V

    return-void
.end method

.method static synthetic access$200(Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;)Landroid/widget/ImageButton;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->fragment_preview_video_imageButtonPlay:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$300(Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;)J
    .registers 3

    .line 35
    iget-wide v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->delay_time:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;)Landroid/os/Handler;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;)Landroid/widget/TextView;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->fragment_preview_video_currentPlayerSeconds:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;)Z
    .registers 1

    .line 35
    iget-boolean p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->isExit:Z

    return p0
.end method

.method static synthetic access$700(Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;)Landroid/widget/SeekBar;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->fragment_preview_video_playerSeekBar:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static synthetic access$800(Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;)Landroid/widget/LinearLayout;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->layout_left:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$900(Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;)Landroid/widget/RelativeLayout;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->fragment_preview_video_control:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method private iniSufaView()V
    .registers 4

    .line 201
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->fragment_preview_video_sufaceview:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity$3;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity$3;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;)V

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 222
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->fragment_preview_video_sufaceview:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 223
    invoke-static {p0}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->getTruelyWidthPx(Landroid/content/Context;)I

    move-result v0

    mul-int/lit8 v1, v0, 0x3

    .line 224
    div-int/lit8 v1, v1, 0x4

    .line 225
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->fragment_preview_video_sufaceview:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 226
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 227
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 228
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->fragment_preview_video_sufaceview:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->fragment_preview_video_sufaceview:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity$4;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity$4;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;)V

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

.method private initHandler()V
    .registers 2

    .line 176
    new-instance v0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity$2;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity$2;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private initPlayer()V
    .registers 3

    .line 249
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->alertDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->show()V

    .line 250
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->playUrl:Ljava/lang/String;

    .line 251
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->player:Landroid/media/MediaPlayer;

    .line 252
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->player:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 254
    :try_start_1e
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->player:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->playUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_2a} :catch_2b

    goto :goto_2f

    :catch_2b
    move-exception v0

    .line 257
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 260
    :goto_2f
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->player:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity$5;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity$5;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 275
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->player:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity$6;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity$6;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 291
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->player:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity$7;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity$7;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    return-void
.end method

.method private initView()V
    .registers 3

    .line 124
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->alertDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    const v0, 0x7f0a0448

    .line 126
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->layout_left:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0348

    .line 127
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->fragment_preview_video_sufaceview:Landroid/view/SurfaceView;

    const v0, 0x7f0a0340

    .line 128
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->fragment_preview_video_bottombar:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0342

    .line 129
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->fragment_preview_video_currentPlayerSeconds:Landroid/widget/TextView;

    const v0, 0x7f0a0349

    .line 130
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->fragment_preview_video_totalPlayerSeconds:Landroid/widget/TextView;

    const v0, 0x7f0a0345

    .line 131
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->fragment_preview_video_playerSeekBar:Landroid/widget/SeekBar;

    const v0, 0x7f0a0346

    .line 132
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->fragment_preview_video_previewImage:Landroid/widget/ImageView;

    .line 133
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->fragment_preview_video_previewImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const v0, 0x7f0a0341

    .line 134
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->fragment_preview_video_control:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0344

    .line 135
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->fragment_preview_video_imageButtonPlay:Landroid/widget/ImageButton;

    const v0, 0x7f0a0343

    .line 136
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->fragment_preview_video_imageButtonPause:Landroid/widget/ImageButton;

    const v0, 0x7f0a0347

    .line 137
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private pause()V
    .registers 4

    .line 344
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_34

    .line 345
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x111

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 346
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 347
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 349
    :cond_18
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->layout_left:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 350
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->fragment_preview_video_imageButtonPlay:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 351
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->fragment_preview_video_imageButtonPause:Landroid/widget/ImageButton;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 352
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->fragment_preview_video_bottombar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 353
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->fragment_preview_video_control:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_34
    return-void
.end method

.method private stop()V
    .registers 3

    .line 321
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x111

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 322
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_16

    .line 323
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 324
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 325
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->player:Landroid/media/MediaPlayer;

    .line 327
    :cond_16
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x110

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method


# virtual methods
.method protected exitCoutOut()V
    .registers 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1c
    .end annotation

    .line 91
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    .line 92
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 93
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public fullScreen()V
    .registers 3

    .line 98
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    .line 105
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method protected initEvent()V
    .registers 3

    .line 141
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->layout_left:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->fragment_preview_video_imageButtonPlay:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->fragment_preview_video_imageButtonPause:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->fragment_preview_video_sufaceview:Landroid/view/SurfaceView;

    invoke-virtual {v0, p0}, Landroid/view/SurfaceView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->fragment_preview_video_bottombar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->fragment_preview_video_playerSeekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity$1;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity$1;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;
    .registers 8

    .line 359
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->customDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    if-eqz v0, :cond_7

    .line 360
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->dismiss()V

    .line 362
    :cond_7
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 363
    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setCancelable(Z)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    const v1, 0x7f11003b

    .line 364
    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    .line 365
    invoke-virtual {v0, p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    if-eqz p2, :cond_24

    if-eqz p3, :cond_24

    .line 367
    invoke-virtual {v0, p2, p3}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    :cond_24
    if-eqz p4, :cond_2b

    if-eqz p5, :cond_2b

    .line 369
    invoke-virtual {v0, p4, p5}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    .line 371
    :cond_2b
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->create()Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->customDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    .line 374
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->customDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    return-object p1
.end method

.method public onClick(Landroid/view/View;)V
    .registers 7

    .line 379
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/16 v0, 0x111

    const/16 v1, 0x8

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_c0

    goto/16 :goto_be

    .line 430
    :sswitch_e
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->finish()V

    goto/16 :goto_be

    .line 381
    :sswitch_13
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->fragment_preview_video_control:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_35

    .line 382
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->layout_left:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 383
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->fragment_preview_video_control:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 384
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->player:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_2e

    .line 385
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->fragment_preview_video_bottombar:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 386
    :cond_2e
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_be

    .line 388
    :cond_35
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->layout_left:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 389
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->fragment_preview_video_control:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 390
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->player:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_48

    .line 391
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->fragment_preview_video_bottombar:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 392
    :cond_48
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->mHandler:Landroid/os/Handler;

    iget-wide v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->delay_time:J

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 394
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->fragment_preview_video_imageButtonPause:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 395
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->fragment_preview_video_imageButtonPlay:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 397
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->player:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_6f

    .line 398
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_69

    .line 399
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->fragment_preview_video_imageButtonPause:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_be

    .line 401
    :cond_69
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->fragment_preview_video_imageButtonPlay:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_be

    .line 404
    :cond_6f
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->fragment_preview_video_imageButtonPlay:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_be

    .line 409
    :sswitch_75
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->fragment_preview_video_imageButtonPlay:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 410
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->fragment_preview_video_imageButtonPause:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 411
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 412
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->player:Landroid/media/MediaPlayer;

    if-nez p1, :cond_8c

    .line 413
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->initPlayer()V

    goto :goto_99

    .line 415
    :cond_8c
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 416
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->layout_left:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 417
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->fragment_preview_video_bottombar:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 419
    :goto_99
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->mHandler:Landroid/os/Handler;

    iget-wide v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->delay_time:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_be

    .line 422
    :sswitch_a1
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 423
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->fragment_preview_video_imageButtonPlay:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 424
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->fragment_preview_video_imageButtonPause:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 425
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->player:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_b7

    .line 426
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->pause()V

    .line 427
    :cond_b7
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->mHandler:Landroid/os/Handler;

    iget-wide v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->delay_time:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_be
    return-void

    nop

    :sswitch_data_c0
    .sparse-switch
        0x7f0a0343 -> :sswitch_a1
        0x7f0a0344 -> :sswitch_75
        0x7f0a0348 -> :sswitch_13
        0x7f0a0448 -> :sswitch_e
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 63
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->fullScreen()V

    .line 65
    invoke-static {p0}, Lcom/pilotlab/rollereye/RollerEyeApplication;->addActivity(Landroid/app/Activity;)V

    const p1, 0x7f0d0035

    .line 66
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->setContentView(I)V

    .line 67
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->initView()V

    .line 68
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->initEvent()V

    .line 69
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->initHandler()V

    .line 70
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->iniSufaView()V

    .line 72
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->initPlayer()V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 332
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 333
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->alertDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    if-eqz v0, :cond_a

    .line 334
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 335
    :cond_a
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->customDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    if-eqz v0, :cond_11

    .line 336
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->dismiss()V

    .line 337
    :cond_11
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->stop()V

    .line 339
    invoke-static {p0}, Lcom/pilotlab/rollereye/RollerEyeApplication;->removeActivity(Landroid/app/Activity;)V

    return-void
.end method

.method protected onPause()V
    .registers 1

    .line 111
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 112
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->pause()V

    return-void
.end method

.method protected onResume()V
    .registers 1

    .line 85
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 86
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->fullScreen()V

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

    .line 117
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onWindowFocusChanged(Z)V

    .line 118
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->fullScreen()V

    return-void
.end method

.method public play()V
    .registers 3

    .line 309
    :try_start_0
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 310
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->layout_left:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 311
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->fragment_preview_video_bottombar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 312
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->fragment_preview_video_imageButtonPause:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->fragment_preview_video_imageButtonPlay:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1c

    :catch_1c
    return-void
.end method
