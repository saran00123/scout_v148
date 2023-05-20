.class public Lcom/pilotlab/ffmpeg/TestFfmpegActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "TestFfmpegActivity.java"


# static fields
.field private static FRAME_MAX_LEN:I = 0x500000

.field private static PERMISSIONS_STORAGE:[Ljava/lang/String; = null

.field private static final REQUEST_EXTERNAL_STORAGE:I = 0x1


# instance fields
.field private FRAME_MIN_LEN:I

.field private TAG:Ljava/lang/String;

.field private audioDecoder:Lcom/pilotlab/ffmpeg/AudioDecoder;

.field private h:I

.field private isFinish:Z

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private path:Ljava/lang/String;

.field private player:Lcom/pilotlab/ffmpeg/ffmpeg;

.field private surfaceView:Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;

.field private u:[B

.field private v:[B

.field private w:I

.field private y:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 57
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pilotlab/ffmpeg/TestFfmpegActivity;->PERMISSIONS_STORAGE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 35
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/pilotlab/ffmpeg/TestFfmpegActivity;->isFinish:Z

    const/16 v0, 0x780

    .line 46
    iput v0, p0, Lcom/pilotlab/ffmpeg/TestFfmpegActivity;->w:I

    const/16 v0, 0x438

    .line 48
    iput v0, p0, Lcom/pilotlab/ffmpeg/TestFfmpegActivity;->h:I

    .line 49
    iget v0, p0, Lcom/pilotlab/ffmpeg/TestFfmpegActivity;->w:I

    iget v1, p0, Lcom/pilotlab/ffmpeg/TestFfmpegActivity;->h:I

    mul-int v2, v0, v1

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/pilotlab/ffmpeg/TestFfmpegActivity;->y:[B

    mul-int v2, v0, v1

    .line 50
    div-int/lit8 v2, v2, 0x4

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/pilotlab/ffmpeg/TestFfmpegActivity;->u:[B

    mul-int/2addr v0, v1

    .line 51
    div-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/pilotlab/ffmpeg/TestFfmpegActivity;->v:[B

    const/16 v0, 0x32

    .line 54
    iput v0, p0, Lcom/pilotlab/ffmpeg/TestFfmpegActivity;->FRAME_MIN_LEN:I

    const-string v0, "TestFfmpegActivity"

    .line 67
    iput-object v0, p0, Lcom/pilotlab/ffmpeg/TestFfmpegActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/pilotlab/ffmpeg/TestFfmpegActivity;)I
    .registers 1

    .line 35
    iget p0, p0, Lcom/pilotlab/ffmpeg/TestFfmpegActivity;->w:I

    return p0
.end method

.method static synthetic access$100(Lcom/pilotlab/ffmpeg/TestFfmpegActivity;)I
    .registers 1

    .line 35
    iget p0, p0, Lcom/pilotlab/ffmpeg/TestFfmpegActivity;->h:I

    return p0
.end method

.method static synthetic access$1000(Lcom/pilotlab/ffmpeg/TestFfmpegActivity;)[B
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/pilotlab/ffmpeg/TestFfmpegActivity;->u:[B

    return-object p0
.end method

.method static synthetic access$1100(Lcom/pilotlab/ffmpeg/TestFfmpegActivity;)[B
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/pilotlab/ffmpeg/TestFfmpegActivity;->v:[B

    return-object p0
.end method

.method static synthetic access$200(Lcom/pilotlab/ffmpeg/TestFfmpegActivity;)Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/pilotlab/ffmpeg/TestFfmpegActivity;->surfaceView:Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/pilotlab/ffmpeg/TestFfmpegActivity;)Ljava/lang/String;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/pilotlab/ffmpeg/TestFfmpegActivity;->path:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400()I
    .registers 1

    .line 35
    sget v0, Lcom/pilotlab/ffmpeg/TestFfmpegActivity;->FRAME_MAX_LEN:I

    return v0
.end method

.method static synthetic access$500(Lcom/pilotlab/ffmpeg/TestFfmpegActivity;)Z
    .registers 1

    .line 35
    iget-boolean p0, p0, Lcom/pilotlab/ffmpeg/TestFfmpegActivity;->isFinish:Z

    return p0
.end method

.method static synthetic access$502(Lcom/pilotlab/ffmpeg/TestFfmpegActivity;Z)Z
    .registers 2

    .line 35
    iput-boolean p1, p0, Lcom/pilotlab/ffmpeg/TestFfmpegActivity;->isFinish:Z

    return p1
.end method

.method static synthetic access$600(Lcom/pilotlab/ffmpeg/TestFfmpegActivity;[BII)I
    .registers 4

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/pilotlab/ffmpeg/TestFfmpegActivity;->findHead([BII)I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/pilotlab/ffmpeg/TestFfmpegActivity;[BI)Z
    .registers 3

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/pilotlab/ffmpeg/TestFfmpegActivity;->isHead([BI)Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/pilotlab/ffmpeg/TestFfmpegActivity;)I
    .registers 1

    .line 35
    iget p0, p0, Lcom/pilotlab/ffmpeg/TestFfmpegActivity;->FRAME_MIN_LEN:I

    return p0
.end method

.method static synthetic access$900(Lcom/pilotlab/ffmpeg/TestFfmpegActivity;)[B
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/pilotlab/ffmpeg/TestFfmpegActivity;->y:[B

    return-object p0
.end method

.method private findHead([BII)I
    .registers 5

    :goto_0
    if-gt p2, p3, :cond_c

    .line 263
    invoke-direct {p0, p1, p2}, Lcom/pilotlab/ffmpeg/TestFfmpegActivity;->isHead([BI)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_c

    :cond_9
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_c
    :goto_c
    if-ne p2, p3, :cond_f

    const/4 p2, -0x1

    :cond_f
    return p2
.end method

.method private fullScreen()V
    .registers 3

    .line 97
    invoke-virtual {p0}, Lcom/pilotlab/ffmpeg/TestFfmpegActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    .line 104
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method private isHead([BI)Z
    .registers 5

    .line 278
    aget-byte v0, p1, p2

    const/4 v1, 0x1

    if-nez v0, :cond_18

    add-int/lit8 v0, p2, 0x1

    aget-byte v0, p1, v0

    if-nez v0, :cond_18

    add-int/lit8 v0, p2, 0x2

    aget-byte v0, p1, v0

    if-nez v0, :cond_18

    add-int/lit8 p2, p2, 0x3

    aget-byte p1, p1, p2

    if-ne p1, v1, :cond_18

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    return v1
.end method

.method public static verifyStoragePermissions(Landroid/app/Activity;)V
    .registers 3

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 288
    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_e

    .line 292
    sget-object v0, Lcom/pilotlab/ffmpeg/TestFfmpegActivity;->PERMISSIONS_STORAGE:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_e
    return-void
.end method


# virtual methods
.method public Event(Lcom/pilotlab/rollereye/Bean/AudioFrameMessage;)V
    .registers 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 300
    iget-object v0, p0, Lcom/pilotlab/ffmpeg/TestFfmpegActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/AudioFrameMessage;->getIndex()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public Event(Lcom/pilotlab/rollereye/Bean/VideoFrameMessage;)V
    .registers 15
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/4 v0, 0x1

    .line 308
    new-array v10, v0, [I

    .line 309
    new-array v11, v0, [I

    .line 310
    new-array v12, v0, [I

    .line 311
    iget-object v1, p0, Lcom/pilotlab/ffmpeg/TestFfmpegActivity;->player:Lcom/pilotlab/ffmpeg/ffmpeg;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/VideoFrameMessage;->getData()[B

    move-result-object v2

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/VideoFrameMessage;->getData_length()I

    move-result v3

    iget-object v4, p0, Lcom/pilotlab/ffmpeg/TestFfmpegActivity;->y:[B

    iget-object v6, p0, Lcom/pilotlab/ffmpeg/TestFfmpegActivity;->u:[B

    iget-object v8, p0, Lcom/pilotlab/ffmpeg/TestFfmpegActivity;->v:[B

    move-object v5, v10

    move-object v7, v11

    move-object v9, v12

    invoke-virtual/range {v1 .. v9}, Lcom/pilotlab/ffmpeg/ffmpeg;->Decode([BI[B[I[B[I[B[I)I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, -0x2

    if-ne p1, v2, :cond_5b

    .line 316
    new-array p1, v0, [I

    .line 317
    new-array v2, v0, [I

    .line 318
    iget-object v3, p0, Lcom/pilotlab/ffmpeg/TestFfmpegActivity;->player:Lcom/pilotlab/ffmpeg/ffmpeg;

    invoke-virtual {v3, p1, v2}, Lcom/pilotlab/ffmpeg/ffmpeg;->Rest([I[I)I

    .line 319
    iget-object v3, p0, Lcom/pilotlab/ffmpeg/TestFfmpegActivity;->surfaceView:Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;

    aget v4, p1, v1

    aget v5, v2, v1

    invoke-virtual {v3, v4, v5}, Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;->updateRenderWidthHeight(II)V

    .line 323
    iget v3, p0, Lcom/pilotlab/ffmpeg/TestFfmpegActivity;->mScreenWidth:I

    int-to-double v3, v3

    aget v5, p1, v1

    int-to-double v5, v5

    div-double/2addr v3, v5

    .line 325
    aget p1, p1, v1

    int-to-double v5, p1

    mul-double/2addr v5, v3

    double-to-int p1, v5

    .line 326
    aget v2, v2, v1

    int-to-double v5, v2

    mul-double/2addr v5, v3

    double-to-int v2, v5

    const v3, 0x7f0a0461

    .line 332
    invoke-virtual {p0, v3}, Lcom/pilotlab/ffmpeg/TestFfmpegActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 333
    iput p1, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 334
    iput v2, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 335
    invoke-virtual {p0, v3}, Lcom/pilotlab/ffmpeg/TestFfmpegActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 338
    :cond_5b
    iget-object p1, p0, Lcom/pilotlab/ffmpeg/TestFfmpegActivity;->surfaceView:Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;

    iget-object v2, p0, Lcom/pilotlab/ffmpeg/TestFfmpegActivity;->y:[B

    aget v3, v10, v1

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    iget-object v3, p0, Lcom/pilotlab/ffmpeg/TestFfmpegActivity;->u:[B

    aget v4, v11, v1

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    iget-object v4, p0, Lcom/pilotlab/ffmpeg/TestFfmpegActivity;->v:[B

    aget v1, v12, v1

    invoke-static {v4, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    invoke-virtual {p1, v2, v3, v1}, Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;->update([B[B[B)V

    .line 339
    iget-object p1, p0, Lcom/pilotlab/ffmpeg/TestFfmpegActivity;->surfaceView:Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;

    invoke-virtual {p1, v0}, Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;->setRenderShowPic(Z)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7

    .line 72
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0032

    .line 74
    invoke-virtual {p0, p1}, Lcom/pilotlab/ffmpeg/TestFfmpegActivity;->setContentView(I)V

    .line 76
    invoke-static {p0}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->getWidthInPx(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/pilotlab/ffmpeg/TestFfmpegActivity;->mScreenWidth:I

    .line 77
    invoke-static {p0}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->getHeightInPx(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/pilotlab/ffmpeg/TestFfmpegActivity;->mScreenHeight:I

    const p1, 0x7f0a055a

    .line 79
    invoke-virtual {p0, p1}, Lcom/pilotlab/ffmpeg/TestFfmpegActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;

    iput-object p1, p0, Lcom/pilotlab/ffmpeg/TestFfmpegActivity;->surfaceView:Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;

    .line 80
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/test.264"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/ffmpeg/TestFfmpegActivity;->path:Ljava/lang/String;

    .line 81
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/test.h264"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/ffmpeg/TestFfmpegActivity;->path:Ljava/lang/String;

    .line 83
    invoke-static {p0}, Lcom/pilotlab/ffmpeg/TestFfmpegActivity;->verifyStoragePermissions(Landroid/app/Activity;)V

    .line 85
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/pilotlab/ffmpeg/TestFfmpegActivity;->path:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_70

    const-string p1, "exist"

    .line 87
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 89
    :cond_70
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Global;->getP2PService()Lcom/pilotlab/rollereye/P2P/P2PService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/P2P/P2PService;->getList_client()Ljava/util/List;

    move-result-object p1

    .line 90
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_a4

    .line 91
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v2, Lcom/pilotlab/rollereye/Bean/IoMessage;

    const/16 v3, 0x1ff

    const-string v4, "abcdefg"

    invoke-direct {v2, v3, v4}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    .line 92
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v0, Lcom/pilotlab/rollereye/Bean/IoMessage;

    const/16 v1, 0x300

    invoke-direct {v0, v1, v4}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    :cond_a4
    return-void
.end method

.method protected onPause()V
    .registers 2

    .line 129
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 131
    iget-object v0, p0, Lcom/pilotlab/ffmpeg/TestFfmpegActivity;->audioDecoder:Lcom/pilotlab/ffmpeg/AudioDecoder;

    invoke-virtual {v0}, Lcom/pilotlab/ffmpeg/AudioDecoder;->release()V

    .line 133
    iget-object v0, p0, Lcom/pilotlab/ffmpeg/TestFfmpegActivity;->player:Lcom/pilotlab/ffmpeg/ffmpeg;

    invoke-virtual {v0}, Lcom/pilotlab/ffmpeg/ffmpeg;->DecoderRelease()I

    .line 135
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 136
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_1e
    return-void
.end method

.method protected onResume()V
    .registers 2

    .line 110
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 111
    invoke-direct {p0}, Lcom/pilotlab/ffmpeg/TestFfmpegActivity;->fullScreen()V

    .line 112
    iget-object v0, p0, Lcom/pilotlab/ffmpeg/TestFfmpegActivity;->surfaceView:Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;

    invoke-virtual {p0, v0}, Lcom/pilotlab/ffmpeg/TestFfmpegActivity;->play(Landroid/view/View;)V

    return-void
.end method

.method public play(Landroid/view/View;)V
    .registers 3

    .line 142
    new-instance p1, Lcom/pilotlab/ffmpeg/ffmpeg;

    invoke-direct {p1}, Lcom/pilotlab/ffmpeg/ffmpeg;-><init>()V

    .line 143
    invoke-virtual {p1}, Lcom/pilotlab/ffmpeg/ffmpeg;->DecoderRelease()I

    .line 145
    new-instance v0, Lcom/pilotlab/ffmpeg/TestFfmpegActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/pilotlab/ffmpeg/TestFfmpegActivity$1;-><init>(Lcom/pilotlab/ffmpeg/TestFfmpegActivity;Lcom/pilotlab/ffmpeg/ffmpeg;)V

    .line 242
    invoke-virtual {v0}, Lcom/pilotlab/ffmpeg/TestFfmpegActivity$1;->start()V

    return-void
.end method
