.class public Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;
.super Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;
.source "TestVisualizerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private TAG:Ljava/lang/String;

.field private activity_test_btn1:Landroid/widget/Button;

.field private activity_test_btn2:Landroid/widget/Button;

.field private activity_test_btn3:Landroid/widget/Button;

.field private activity_test_btn4:Landroid/widget/Button;

.field private activity_test_btn5:Landroid/widget/Button;

.field private activity_test_btn6:Landroid/widget/Button;

.field private activity_test_btn7:Landroid/widget/Button;

.field private activity_test_sb1:Landroid/widget/SeekBar;

.field private activity_test_sb2:Landroid/widget/SeekBar;

.field private activity_test_sb3:Landroid/widget/SeekBar;

.field audioSessionId:I

.field count:J

.field private exo_player_view:Lcom/google/android/exoplayer2/ui/PlayerView;

.field filePath:Ljava/lang/String;

.field private layout_left:Landroid/widget/LinearLayout;

.field private myControlCommandDispose:Lio/reactivex/disposables/Disposable;

.field private myDisposable:Lio/reactivex/disposables/Disposable;

.field private player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

.field public socketServices:Lcom/pilotlab/rollereye/Services/SocketServices;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 30
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;-><init>()V

    const-string v0, ""

    .line 37
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->filePath:Ljava/lang/String;

    const-string v0, "TestVisualizerActivity"

    .line 51
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->TAG:Ljava/lang/String;

    const-wide/16 v0, 0x1

    .line 135
    iput-wide v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->count:J

    return-void
.end method

.method static synthetic access$002(Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .registers 2

    .line 30
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->myControlCommandDispose:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$100(Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;)Lcom/pilotlab/rollereye/P2P/P2PClient;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    return-object p0
.end method

.method static synthetic access$200(Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;Ljava/lang/Long;)V
    .registers 2

    .line 30
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->motion1(Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic access$300(Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;Ljava/lang/Long;)V
    .registers 2

    .line 30
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->motion2(Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic access$400(Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;Ljava/lang/Long;)V
    .registers 2

    .line 30
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->motion3(Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic access$500(Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;Ljava/lang/Long;)V
    .registers 2

    .line 30
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->motion4(Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic access$600(Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;Ljava/lang/Long;)V
    .registers 2

    .line 30
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->motion5(Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic access$700(Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;Ljava/lang/Long;)V
    .registers 2

    .line 30
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->motion6(Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic access$800(Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;)V
    .registers 1

    .line 30
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->initVisualize()V

    return-void
.end method

.method private initControlCommand(I)V
    .registers 5

    .line 87
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb3:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    mul-int/lit8 v0, v0, 0x14

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2}, Lio/reactivex/Observable;->interval(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity$2;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity$2;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    .line 92
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity$1;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;I)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private initData()V
    .registers 1

    return-void
.end method

.method private initPlayer(Ljava/lang/String;)V
    .registers 3

    .line 360
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object p1

    if-nez p1, :cond_b

    return-void

    :cond_b
    const/4 v0, 0x0

    .line 365
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 366
    new-instance v0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity$3;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity$3;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    return-void
.end method

.method private initPlayer2()V
    .registers 3

    .line 68
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Global;->getSocketServices()Lcom/pilotlab/rollereye/Services/SocketServices;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->socketServices:Lcom/pilotlab/rollereye/Services/SocketServices;

    .line 71
    new-instance v0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->build()Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .line 72
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->exo_player_view:Lcom/google/android/exoplayer2/ui/PlayerView;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    return-void
.end method

.method private initVisualize()V
    .registers 5

    .line 378
    new-instance v0, Landroid/media/audiofx/Visualizer;

    iget v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->audioSessionId:I

    invoke-direct {v0, v1}, Landroid/media/audiofx/Visualizer;-><init>(I)V

    .line 379
    invoke-static {}, Landroid/media/audiofx/Visualizer;->getCaptureSizeRange()[I

    move-result-object v1

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/media/audiofx/Visualizer;->setCaptureSize(I)I

    .line 380
    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity$4;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity$4;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;)V

    .line 399
    invoke-static {}, Landroid/media/audiofx/Visualizer;->getMaxCaptureRate()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    .line 380
    invoke-virtual {v0, v1, v3, v2, v2}, Landroid/media/audiofx/Visualizer;->setDataCaptureListener(Landroid/media/audiofx/Visualizer$OnDataCaptureListener;IZZ)I

    .line 401
    invoke-virtual {v0, v2}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I

    return-void
.end method

.method private motion1(Ljava/lang/Long;)V
    .registers 12

    .line 335
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    const-string v1, " "

    const/high16 v2, 0x41200000    # 10.0f

    const-string v3, "V 0.0 "

    const/4 v4, 0x0

    if-nez v0, :cond_44

    .line 336
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v0, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v5, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb1:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb2:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v5, v1, v4}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    goto/16 :goto_21f

    .line 337
    :cond_44
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x2

    cmp-long v0, v5, v7

    if-nez v0, :cond_81

    .line 338
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v0, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v5, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb1:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb2:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v5, v1, v4}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    goto/16 :goto_21f

    .line 339
    :cond_81
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x3

    cmp-long v0, v5, v7

    if-nez v0, :cond_be

    .line 340
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v0, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v5, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb1:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb2:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v5, v1, v4}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    goto/16 :goto_21f

    .line 341
    :cond_be
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x4

    cmp-long v0, v5, v7

    if-nez v0, :cond_fb

    .line 342
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v0, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v5, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb1:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb2:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v5, v1, v4}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    goto/16 :goto_21f

    .line 343
    :cond_fb
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x5

    cmp-long v0, v5, v7

    const-string v2, "V 0.0 0.0 0.0"

    if-nez v0, :cond_115

    .line 344
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v0, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v1, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    invoke-direct {v0, v1, v2, v4}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    goto/16 :goto_21f

    .line 345
    :cond_115
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x6

    cmp-long v0, v5, v7

    const/high16 v5, -0x3ee00000    # -10.0f

    if-nez v0, :cond_154

    .line 346
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v0, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v2, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb1:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb2:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v5

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1, v4}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    goto/16 :goto_21f

    .line 347
    :cond_154
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x7

    cmp-long v0, v6, v8

    if-nez v0, :cond_191

    .line 348
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v0, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v2, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb1:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb2:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v5

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1, v4}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    goto/16 :goto_21f

    .line 349
    :cond_191
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x8

    cmp-long v0, v6, v8

    if-nez v0, :cond_1cd

    .line 350
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v0, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v2, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb1:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb2:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v5

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1, v4}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    goto :goto_21f

    .line 351
    :cond_1cd
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x9

    cmp-long v0, v6, v8

    if-nez v0, :cond_209

    .line 352
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v0, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v2, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb1:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb2:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v5

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1, v4}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    goto :goto_21f

    .line 353
    :cond_209
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v5, 0xa

    cmp-long p1, v0, v5

    if-nez p1, :cond_21f

    .line 354
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v0, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v1, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    invoke-direct {v0, v1, v2, v4}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    :cond_21f
    :goto_21f
    return-void
.end method

.method private motion2(Ljava/lang/Long;)V
    .registers 13

    .line 312
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    const/high16 v1, -0x3ee00000    # -10.0f

    const-string v2, " "

    const/high16 v3, 0x41200000    # 10.0f

    const-string v4, "V 0.0 "

    const/4 v5, 0x0

    if-nez v0, :cond_46

    .line 313
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v0, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v6, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb1:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb2:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v6, v1, v5}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    goto/16 :goto_21f

    .line 314
    :cond_46
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x2

    cmp-long v0, v6, v8

    if-nez v0, :cond_83

    .line 315
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v0, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v6, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb1:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb2:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v6, v1, v5}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    goto/16 :goto_21f

    .line 316
    :cond_83
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x3

    cmp-long v0, v6, v8

    if-nez v0, :cond_c0

    .line 317
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v0, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v6, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb1:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb2:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v6, v1, v5}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    goto/16 :goto_21f

    .line 318
    :cond_c0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x4

    cmp-long v0, v6, v8

    if-nez v0, :cond_fd

    .line 319
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v0, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v6, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb1:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb2:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v6, v1, v5}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    goto/16 :goto_21f

    .line 320
    :cond_fd
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x5

    cmp-long v0, v6, v8

    const-string v6, "V 0.0 0.0 0.0"

    if-nez v0, :cond_117

    .line 321
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v0, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v1, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    invoke-direct {v0, v1, v6, v5}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    goto/16 :goto_21f

    .line 322
    :cond_117
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/16 v9, 0x6

    cmp-long v0, v7, v9

    if-nez v0, :cond_154

    .line 323
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v0, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v6, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb1:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v1

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb2:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v6, v1, v5}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    goto/16 :goto_21f

    .line 324
    :cond_154
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/16 v9, 0x7

    cmp-long v0, v7, v9

    if-nez v0, :cond_191

    .line 325
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v0, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v6, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb1:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v1

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb2:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v6, v1, v5}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    goto/16 :goto_21f

    .line 326
    :cond_191
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/16 v9, 0x8

    cmp-long v0, v7, v9

    if-nez v0, :cond_1cd

    .line 327
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v0, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v6, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb1:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v1

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb2:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v6, v1, v5}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    goto :goto_21f

    .line 328
    :cond_1cd
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/16 v9, 0x9

    cmp-long v0, v7, v9

    if-nez v0, :cond_209

    .line 329
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v0, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v6, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb1:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v1

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb2:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v6, v1, v5}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    goto :goto_21f

    .line 330
    :cond_209
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0xa

    cmp-long p1, v0, v2

    if-nez p1, :cond_21f

    .line 331
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v0, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v1, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    invoke-direct {v0, v1, v6, v5}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    :cond_21f
    :goto_21f
    return-void
.end method

.method private motion3(Ljava/lang/Long;)V
    .registers 12

    .line 289
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    const-string v1, " "

    const/high16 v2, -0x3ee00000    # -10.0f

    const-string v3, "V 0.0 "

    const/4 v4, 0x0

    if-nez v0, :cond_44

    .line 290
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v0, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v5, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb1:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb2:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v5, v1, v4}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    goto/16 :goto_21f

    .line 291
    :cond_44
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x2

    cmp-long v0, v5, v7

    if-nez v0, :cond_81

    .line 292
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v0, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v5, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb1:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb2:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v5, v1, v4}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    goto/16 :goto_21f

    .line 293
    :cond_81
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x3

    cmp-long v0, v5, v7

    if-nez v0, :cond_be

    .line 294
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v0, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v5, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb1:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb2:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v5, v1, v4}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    goto/16 :goto_21f

    .line 295
    :cond_be
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x4

    cmp-long v0, v5, v7

    if-nez v0, :cond_fb

    .line 296
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v0, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v5, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb1:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb2:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v5, v1, v4}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    goto/16 :goto_21f

    .line 297
    :cond_fb
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x5

    cmp-long v0, v5, v7

    const-string v2, "V 0.0 0.0 0.0"

    if-nez v0, :cond_115

    .line 298
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v0, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v1, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    invoke-direct {v0, v1, v2, v4}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    goto/16 :goto_21f

    .line 299
    :cond_115
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x6

    cmp-long v0, v5, v7

    const/high16 v5, 0x41200000    # 10.0f

    if-nez v0, :cond_154

    .line 300
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v0, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v2, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb1:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb2:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v5

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1, v4}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    goto/16 :goto_21f

    .line 301
    :cond_154
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x7

    cmp-long v0, v6, v8

    if-nez v0, :cond_191

    .line 302
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v0, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v2, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb1:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb2:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v5

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1, v4}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    goto/16 :goto_21f

    .line 303
    :cond_191
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x8

    cmp-long v0, v6, v8

    if-nez v0, :cond_1cd

    .line 304
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v0, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v2, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb1:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb2:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v5

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1, v4}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    goto :goto_21f

    .line 305
    :cond_1cd
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x9

    cmp-long v0, v6, v8

    if-nez v0, :cond_209

    .line 306
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v0, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v2, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb1:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb2:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v5

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1, v4}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    goto :goto_21f

    .line 307
    :cond_209
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v5, 0xa

    cmp-long p1, v0, v5

    if-nez p1, :cond_21f

    .line 308
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v0, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v1, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    invoke-direct {v0, v1, v2, v4}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    :cond_21f
    :goto_21f
    return-void
.end method

.method private motion4(Ljava/lang/Long;)V
    .registers 13

    .line 266
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    const/high16 v1, 0x41200000    # 10.0f

    const-string v2, " "

    const/high16 v3, -0x3ee00000    # -10.0f

    const-string v4, "V 0.0 "

    const/4 v5, 0x0

    if-nez v0, :cond_46

    .line 267
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v0, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v6, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb1:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb2:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v6, v1, v5}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    goto/16 :goto_21f

    .line 268
    :cond_46
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x2

    cmp-long v0, v6, v8

    if-nez v0, :cond_83

    .line 269
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v0, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v6, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb1:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb2:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v6, v1, v5}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    goto/16 :goto_21f

    .line 270
    :cond_83
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x3

    cmp-long v0, v6, v8

    if-nez v0, :cond_c0

    .line 271
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v0, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v6, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb1:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb2:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v6, v1, v5}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    goto/16 :goto_21f

    .line 272
    :cond_c0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x4

    cmp-long v0, v6, v8

    if-nez v0, :cond_fd

    .line 273
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v0, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v6, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb1:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb2:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v6, v1, v5}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    goto/16 :goto_21f

    .line 274
    :cond_fd
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x5

    cmp-long v0, v6, v8

    const-string v6, "V 0.0 0.0 0.0"

    if-nez v0, :cond_117

    .line 275
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v0, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v1, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    invoke-direct {v0, v1, v6, v5}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    goto/16 :goto_21f

    .line 276
    :cond_117
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/16 v9, 0x6

    cmp-long v0, v7, v9

    if-nez v0, :cond_154

    .line 277
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v0, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v6, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb1:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v1

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb2:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v6, v1, v5}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    goto/16 :goto_21f

    .line 278
    :cond_154
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/16 v9, 0x7

    cmp-long v0, v7, v9

    if-nez v0, :cond_191

    .line 279
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v0, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v6, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb1:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v1

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb2:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v6, v1, v5}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    goto/16 :goto_21f

    .line 280
    :cond_191
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/16 v9, 0x8

    cmp-long v0, v7, v9

    if-nez v0, :cond_1cd

    .line 281
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v0, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v6, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb1:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v1

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb2:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v6, v1, v5}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    goto :goto_21f

    .line 282
    :cond_1cd
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/16 v9, 0x9

    cmp-long v0, v7, v9

    if-nez v0, :cond_209

    .line 283
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v0, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v6, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb1:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v1

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb2:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v6, v1, v5}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    goto :goto_21f

    .line 284
    :cond_209
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0xa

    cmp-long p1, v0, v2

    if-nez p1, :cond_21f

    .line 285
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v0, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v1, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    invoke-direct {v0, v1, v6, v5}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    :cond_21f
    :goto_21f
    return-void
.end method

.method private motion5(Ljava/lang/Long;)V
    .registers 11

    .line 231
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    const-string v1, " "

    const-string v2, "V 0.0 "

    if-nez v0, :cond_3c

    .line 232
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->socketServices:Lcom/pilotlab/rollereye/Services/SocketServices;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb1:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb2:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/Services/SocketServices;->send(Ljava/lang/String;)V

    goto/16 :goto_ca

    .line 233
    :cond_3c
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x2

    cmp-long v0, v3, v5

    const-string v3, "V 0.0 0.0 0.0"

    if-nez v0, :cond_4f

    .line 234
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->socketServices:Lcom/pilotlab/rollereye/Services/SocketServices;

    invoke-virtual {p1, v3}, Lcom/pilotlab/rollereye/Services/SocketServices;->send(Ljava/lang/String;)V

    goto/16 :goto_ca

    .line 235
    :cond_4f
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x3

    cmp-long v0, v4, v6

    const/high16 v4, -0x3e600000    # -20.0f

    if-nez v0, :cond_86

    .line 236
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->socketServices:Lcom/pilotlab/rollereye/Services/SocketServices;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb1:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb2:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/Services/SocketServices;->send(Ljava/lang/String;)V

    goto :goto_ca

    .line 237
    :cond_86
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x4

    cmp-long v0, v5, v7

    if-nez v0, :cond_bb

    .line 238
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->socketServices:Lcom/pilotlab/rollereye/Services/SocketServices;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb1:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb2:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/Services/SocketServices;->send(Ljava/lang/String;)V

    goto :goto_ca

    .line 239
    :cond_bb
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v4, 0x5

    cmp-long p1, v0, v4

    if-nez p1, :cond_ca

    .line 240
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->socketServices:Lcom/pilotlab/rollereye/Services/SocketServices;

    invoke-virtual {p1, v3}, Lcom/pilotlab/rollereye/Services/SocketServices;->send(Ljava/lang/String;)V

    :cond_ca
    :goto_ca
    return-void
.end method

.method private motion6(Ljava/lang/Long;)V
    .registers 12

    .line 256
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const-string v2, " "

    const/high16 v3, -0x3ee00000    # -10.0f

    const-string v4, "V 0.0 "

    const/4 v5, 0x0

    if-nez v0, :cond_3c

    .line 257
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v0, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v6, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb1:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v6, v1, v5}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    goto :goto_88

    .line 258
    :cond_3c
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x2

    cmp-long v0, v6, v8

    if-nez v0, :cond_70

    .line 259
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v0, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v6, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb1:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v6, v1, v5}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    goto :goto_88

    .line 260
    :cond_70
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x3

    cmp-long p1, v0, v2

    if-nez p1, :cond_88

    .line 261
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v0, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v1, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    const-string v2, "V 0.0 0.0 0.0"

    invoke-direct {v0, v1, v2, v5}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    :cond_88
    :goto_88
    return-void
.end method

.method private motion7(Ljava/lang/Long;)V
    .registers 20

    move-object/from16 v1, p0

    .line 138
    iget-object v0, v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->socketServices:Lcom/pilotlab/rollereye/Services/SocketServices;

    if-eqz v0, :cond_41a

    .line 140
    :try_start_6
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0xe

    rem-long/2addr v2, v4
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_d} :catch_416

    const-wide/16 v6, 0x1

    cmp-long v0, v2, v6

    const-string v2, "V 0.0 "

    const/high16 v3, 0x41200000    # 10.0f

    const-string v8, "V 0.0 0.0 0.0"

    const-string v9, " "

    if-nez v0, :cond_5f

    .line 141
    :try_start_1b
    iget-object v0, v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->TAG:Ljava/lang/String;

    const-string v4, "1"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->socketServices:Lcom/pilotlab/rollereye/Services/SocketServices;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb1:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb2:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/pilotlab/rollereye/Services/SocketServices;->send(Ljava/lang/String;)V

    .line 143
    iget-object v0, v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb3:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    mul-int/lit8 v0, v0, 0x14

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 144
    iget-object v0, v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->socketServices:Lcom/pilotlab/rollereye/Services/SocketServices;

    invoke-virtual {v0, v8}, Lcom/pilotlab/rollereye/Services/SocketServices;->send(Ljava/lang/String;)V

    goto/16 :goto_410

    .line 145
    :cond_5f
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    rem-long/2addr v10, v4

    const-wide/16 v12, 0x2

    cmp-long v0, v10, v12

    const/high16 v10, -0x3ee00000    # -10.0f

    if-nez v0, :cond_b0

    .line 146
    iget-object v0, v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->TAG:Ljava/lang/String;

    const-string v3, "2"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v0, v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->socketServices:Lcom/pilotlab/rollereye/Services/SocketServices;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb1:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v10

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb2:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v10

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/pilotlab/rollereye/Services/SocketServices;->send(Ljava/lang/String;)V

    .line 148
    iget-object v0, v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb3:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    mul-int/lit8 v0, v0, 0x14

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 149
    iget-object v0, v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->socketServices:Lcom/pilotlab/rollereye/Services/SocketServices;

    invoke-virtual {v0, v8}, Lcom/pilotlab/rollereye/Services/SocketServices;->send(Ljava/lang/String;)V

    goto/16 :goto_410

    .line 150
    :cond_b0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    rem-long/2addr v11, v4

    const-wide/16 v13, 0x3

    cmp-long v0, v11, v13

    if-nez v0, :cond_ff

    .line 151
    iget-object v0, v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->TAG:Ljava/lang/String;

    const-string v4, "3"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->socketServices:Lcom/pilotlab/rollereye/Services/SocketServices;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb1:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb2:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v10

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/pilotlab/rollereye/Services/SocketServices;->send(Ljava/lang/String;)V

    .line 153
    iget-object v0, v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb3:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    mul-int/lit8 v0, v0, 0x14

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 154
    iget-object v0, v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->socketServices:Lcom/pilotlab/rollereye/Services/SocketServices;

    invoke-virtual {v0, v8}, Lcom/pilotlab/rollereye/Services/SocketServices;->send(Ljava/lang/String;)V

    goto/16 :goto_410

    .line 155
    :cond_ff
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    rem-long/2addr v11, v4
    :try_end_104
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_104} :catch_416

    const-wide/16 v13, 0x4

    cmp-long v0, v11, v13

    const-string v11, "4"

    if-nez v0, :cond_14e

    .line 156
    :try_start_10c
    iget-object v0, v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v0, v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->socketServices:Lcom/pilotlab/rollereye/Services/SocketServices;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb1:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v10

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb2:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/pilotlab/rollereye/Services/SocketServices;->send(Ljava/lang/String;)V

    .line 158
    iget-object v0, v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb3:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    mul-int/lit8 v0, v0, 0x14

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 159
    iget-object v0, v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->socketServices:Lcom/pilotlab/rollereye/Services/SocketServices;

    invoke-virtual {v0, v8}, Lcom/pilotlab/rollereye/Services/SocketServices;->send(Ljava/lang/String;)V

    goto/16 :goto_410

    .line 160
    :cond_14e
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    rem-long/2addr v12, v4

    const-wide/16 v14, 0x5

    cmp-long v0, v12, v14

    const/high16 v12, 0x40000000    # 2.0f

    const/4 v13, 0x0

    if-nez v0, :cond_197

    .line 161
    iget-object v0, v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->socketServices:Lcom/pilotlab/rollereye/Services/SocketServices;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb1:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    mul-float/2addr v2, v12

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/pilotlab/rollereye/Services/SocketServices;->send(Ljava/lang/String;)V

    .line 163
    iget-object v0, v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb3:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    mul-int/lit8 v0, v0, 0x14

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 164
    iget-object v0, v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->socketServices:Lcom/pilotlab/rollereye/Services/SocketServices;

    invoke-virtual {v0, v8}, Lcom/pilotlab/rollereye/Services/SocketServices;->send(Ljava/lang/String;)V

    goto/16 :goto_410

    .line 165
    :cond_197
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    rem-long/2addr v14, v4

    const-wide/16 v16, 0x6

    cmp-long v0, v14, v16

    if-nez v0, :cond_1dd

    .line 166
    iget-object v0, v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->socketServices:Lcom/pilotlab/rollereye/Services/SocketServices;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb1:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v10

    mul-float/2addr v2, v12

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/pilotlab/rollereye/Services/SocketServices;->send(Ljava/lang/String;)V

    .line 168
    iget-object v0, v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb3:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    mul-int/lit8 v0, v0, 0x14

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 169
    iget-object v0, v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->socketServices:Lcom/pilotlab/rollereye/Services/SocketServices;

    invoke-virtual {v0, v8}, Lcom/pilotlab/rollereye/Services/SocketServices;->send(Ljava/lang/String;)V

    goto/16 :goto_410

    .line 170
    :cond_1dd
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    rem-long/2addr v14, v4
    :try_end_1e2
    .catch Ljava/lang/InterruptedException; {:try_start_10c .. :try_end_1e2} :catch_416

    const-wide/16 v16, 0x7

    cmp-long v0, v14, v16

    const-string v2, "V "

    if-nez v0, :cond_22b

    .line 172
    :try_start_1ea
    iget-object v0, v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->socketServices:Lcom/pilotlab/rollereye/Services/SocketServices;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb1:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v10

    mul-float/2addr v2, v12

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/pilotlab/rollereye/Services/SocketServices;->send(Ljava/lang/String;)V

    .line 173
    iget-object v0, v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb3:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    mul-int/lit8 v0, v0, 0x14

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 174
    iget-object v0, v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->socketServices:Lcom/pilotlab/rollereye/Services/SocketServices;

    invoke-virtual {v0, v8}, Lcom/pilotlab/rollereye/Services/SocketServices;->send(Ljava/lang/String;)V

    .line 176
    iget-object v0, v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_410

    .line 178
    :cond_22b
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    rem-long/2addr v14, v4

    const-wide/16 v16, 0x8

    cmp-long v0, v14, v16

    if-nez v0, :cond_277

    .line 179
    iget-object v0, v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v0, v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->socketServices:Lcom/pilotlab/rollereye/Services/SocketServices;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb1:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    mul-float/2addr v2, v12

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/pilotlab/rollereye/Services/SocketServices;->send(Ljava/lang/String;)V

    .line 182
    iget-object v0, v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb3:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    mul-int/lit8 v0, v0, 0x14

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 183
    iget-object v0, v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->socketServices:Lcom/pilotlab/rollereye/Services/SocketServices;

    invoke-virtual {v0, v8}, Lcom/pilotlab/rollereye/Services/SocketServices;->send(Ljava/lang/String;)V

    goto/16 :goto_410

    .line 186
    :cond_277
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    rem-long/2addr v14, v4

    const-wide/16 v16, 0x9

    cmp-long v0, v14, v16

    if-nez v0, :cond_2c3

    .line 187
    iget-object v0, v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v0, v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->socketServices:Lcom/pilotlab/rollereye/Services/SocketServices;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb1:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    mul-float/2addr v2, v12

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/pilotlab/rollereye/Services/SocketServices;->send(Ljava/lang/String;)V

    .line 189
    iget-object v0, v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb3:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    mul-int/lit8 v0, v0, 0x14

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 190
    iget-object v0, v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->socketServices:Lcom/pilotlab/rollereye/Services/SocketServices;

    invoke-virtual {v0, v8}, Lcom/pilotlab/rollereye/Services/SocketServices;->send(Ljava/lang/String;)V

    goto/16 :goto_410

    .line 193
    :cond_2c3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    rem-long/2addr v14, v4

    const-wide/16 v16, 0xa

    cmp-long v0, v14, v16

    if-nez v0, :cond_30f

    .line 194
    iget-object v0, v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->socketServices:Lcom/pilotlab/rollereye/Services/SocketServices;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb1:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v10

    mul-float/2addr v2, v12

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/pilotlab/rollereye/Services/SocketServices;->send(Ljava/lang/String;)V

    .line 196
    iget-object v0, v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb3:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    mul-int/lit8 v0, v0, 0x14

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 197
    iget-object v0, v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->socketServices:Lcom/pilotlab/rollereye/Services/SocketServices;

    invoke-virtual {v0, v8}, Lcom/pilotlab/rollereye/Services/SocketServices;->send(Ljava/lang/String;)V

    goto/16 :goto_410

    .line 199
    :cond_30f
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    rem-long/2addr v12, v4
    :try_end_314
    .catch Ljava/lang/InterruptedException; {:try_start_1ea .. :try_end_314} :catch_416

    const-wide/16 v14, 0xb

    cmp-long v0, v12, v14

    const/high16 v2, 0x40400000    # 3.0f

    const-string v9, "V 0.0 0.0 "

    if-nez v0, :cond_353

    .line 200
    :try_start_31e
    iget-object v0, v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v0, v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->socketServices:Lcom/pilotlab/rollereye/Services/SocketServices;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb2:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getProgress()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    mul-float/2addr v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/pilotlab/rollereye/Services/SocketServices;->send(Ljava/lang/String;)V

    .line 202
    iget-object v0, v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb3:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    mul-int/lit8 v0, v0, 0x14

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 203
    iget-object v0, v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->socketServices:Lcom/pilotlab/rollereye/Services/SocketServices;

    invoke-virtual {v0, v8}, Lcom/pilotlab/rollereye/Services/SocketServices;->send(Ljava/lang/String;)V

    goto/16 :goto_410

    .line 204
    :cond_353
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    rem-long/2addr v12, v4

    const-wide/16 v14, 0xc

    cmp-long v0, v12, v14

    if-nez v0, :cond_393

    .line 205
    iget-object v0, v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v0, v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->socketServices:Lcom/pilotlab/rollereye/Services/SocketServices;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb2:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v10

    mul-float/2addr v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/pilotlab/rollereye/Services/SocketServices;->send(Ljava/lang/String;)V

    .line 207
    iget-object v0, v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb3:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    mul-int/lit8 v0, v0, 0x14

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 208
    iget-object v0, v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->socketServices:Lcom/pilotlab/rollereye/Services/SocketServices;

    invoke-virtual {v0, v8}, Lcom/pilotlab/rollereye/Services/SocketServices;->send(Ljava/lang/String;)V

    goto/16 :goto_410

    .line 209
    :cond_393
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    rem-long/2addr v12, v4

    const-wide/16 v14, 0xd

    cmp-long v0, v12, v14

    if-nez v0, :cond_3d2

    .line 210
    iget-object v0, v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v0, v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->socketServices:Lcom/pilotlab/rollereye/Services/SocketServices;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb2:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v10

    mul-float/2addr v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/pilotlab/rollereye/Services/SocketServices;->send(Ljava/lang/String;)V

    .line 212
    iget-object v0, v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb3:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    mul-int/lit8 v0, v0, 0x14

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 213
    iget-object v0, v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->socketServices:Lcom/pilotlab/rollereye/Services/SocketServices;

    invoke-virtual {v0, v8}, Lcom/pilotlab/rollereye/Services/SocketServices;->send(Ljava/lang/String;)V

    goto :goto_410

    .line 214
    :cond_3d2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    rem-long/2addr v12, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v12, v4

    if-nez v0, :cond_410

    .line 215
    iget-object v0, v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v0, v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->socketServices:Lcom/pilotlab/rollereye/Services/SocketServices;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb2:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getProgress()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    mul-float/2addr v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/pilotlab/rollereye/Services/SocketServices;->send(Ljava/lang/String;)V

    .line 217
    iget-object v0, v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb3:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    mul-int/lit8 v0, v0, 0x14

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 218
    iget-object v0, v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->socketServices:Lcom/pilotlab/rollereye/Services/SocketServices;

    invoke-virtual {v0, v8}, Lcom/pilotlab/rollereye/Services/SocketServices;->send(Ljava/lang/String;)V

    .line 222
    :cond_410
    :goto_410
    iget-wide v2, v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->count:J

    add-long/2addr v2, v6

    iput-wide v2, v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->count:J
    :try_end_415
    .catch Ljava/lang/InterruptedException; {:try_start_31e .. :try_end_415} :catch_416

    goto :goto_41a

    :catch_416
    move-exception v0

    .line 224
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_41a
    :goto_41a
    return-void
.end method


# virtual methods
.method protected initEvent()V
    .registers 2

    .line 405
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->initEvent()V

    .line 406
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->layout_left:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 407
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_btn1:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 408
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_btn2:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 409
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_btn3:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 410
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_btn4:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 411
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_btn5:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 412
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_btn6:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 413
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_btn7:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected initView()V
    .registers 2

    .line 418
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->initView()V

    const v0, 0x7f0a0448

    .line 419
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->layout_left:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0178

    .line 420
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ui/PlayerView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->exo_player_view:Lcom/google/android/exoplayer2/ui/PlayerView;

    const v0, 0x7f0a0171

    .line 422
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_btn1:Landroid/widget/Button;

    const v0, 0x7f0a0172

    .line 423
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_btn2:Landroid/widget/Button;

    const v0, 0x7f0a0173

    .line 424
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_btn3:Landroid/widget/Button;

    const v0, 0x7f0a0174

    .line 425
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_btn4:Landroid/widget/Button;

    const v0, 0x7f0a0179

    .line 427
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb1:Landroid/widget/SeekBar;

    const v0, 0x7f0a017a

    .line 428
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb2:Landroid/widget/SeekBar;

    const v0, 0x7f0a017b

    .line 429
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_sb3:Landroid/widget/SeekBar;

    const v0, 0x7f0a0175

    .line 431
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_btn5:Landroid/widget/Button;

    const v0, 0x7f0a0176

    .line 432
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_btn6:Landroid/widget/Button;

    const v0, 0x7f0a0177

    .line 433
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->activity_test_btn7:Landroid/widget/Button;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 471
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0448

    if-eq p1, v0, :cond_35

    packed-switch p1, :pswitch_data_3a

    goto :goto_38

    .line 494
    :pswitch_d
    iget-wide v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->count:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->motion7(Ljava/lang/Long;)V

    goto :goto_38

    :pswitch_17
    const/4 p1, 0x6

    .line 491
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->initControlCommand(I)V

    goto :goto_38

    :pswitch_1c
    const/4 p1, 0x5

    .line 488
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->initControlCommand(I)V

    goto :goto_38

    :pswitch_21
    const/4 p1, 0x4

    .line 485
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->initControlCommand(I)V

    goto :goto_38

    :pswitch_26
    const/4 p1, 0x3

    .line 482
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->initControlCommand(I)V

    goto :goto_38

    :pswitch_2b
    const/4 p1, 0x2

    .line 479
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->initControlCommand(I)V

    goto :goto_38

    :pswitch_30
    const/4 p1, 0x1

    .line 476
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->initControlCommand(I)V

    goto :goto_38

    .line 473
    :cond_35
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->finish()V

    :goto_38
    return-void

    nop

    :pswitch_data_3a
    .packed-switch 0x7f0a0171
        :pswitch_30
        :pswitch_2b
        :pswitch_26
        :pswitch_21
        :pswitch_1c
        :pswitch_17
        :pswitch_d
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 2

    .line 460
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->onDestroy()V

    .line 461
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->myDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_a

    .line 462
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 463
    :cond_a
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_16

    .line 464
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->stop()V

    .line 465
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->release()V

    :cond_16
    return-void
.end method

.method protected onResume()V
    .registers 1

    .line 438
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->onResume()V

    .line 439
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->fullScreen()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2

    .line 444
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->onWindowFocusChanged(Z)V

    .line 445
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->fullScreen()V

    return-void
.end method

.method protected setUpContentView()V
    .registers 2

    const v0, 0x7f0d0049

    .line 56
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->setContentView(I)V

    return-void
.end method

.method protected setUpData(Landroid/os/Bundle;)V
    .registers 2

    .line 450
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->initData()V

    return-void
.end method

.method protected setUpView()V
    .registers 1

    .line 61
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->initView()V

    .line 62
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->initEvent()V

    .line 63
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->initPlayer2()V

    return-void
.end method
