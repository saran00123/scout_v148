.class Lcom/google/android/exoplayer2/offline/DownloadManager$Task;
.super Ljava/lang/Thread;
.source "DownloadManager.java"

# interfaces
.implements Lcom/google/android/exoplayer2/offline/Downloader$ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/offline/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Task"
.end annotation


# instance fields
.field private contentLength:J

.field private final downloadProgress:Lcom/google/android/exoplayer2/offline/DownloadProgress;

.field private final downloader:Lcom/google/android/exoplayer2/offline/Downloader;

.field private finalException:Ljava/lang/Exception;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private volatile internalHandler:Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private volatile isCanceled:Z

.field private final isRemove:Z

.field private final minRetryCount:I

.field private final request:Lcom/google/android/exoplayer2/offline/DownloadRequest;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/offline/DownloadRequest;Lcom/google/android/exoplayer2/offline/Downloader;Lcom/google/android/exoplayer2/offline/DownloadProgress;ZILcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;)V
    .registers 7

    .line 1309
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1310
    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->request:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    .line 1311
    iput-object p2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->downloader:Lcom/google/android/exoplayer2/offline/Downloader;

    .line 1312
    iput-object p3, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->downloadProgress:Lcom/google/android/exoplayer2/offline/DownloadProgress;

    .line 1313
    iput-boolean p4, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->isRemove:Z

    .line 1314
    iput p5, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->minRetryCount:I

    .line 1315
    iput-object p6, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->internalHandler:Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;

    const-wide/16 p1, -0x1

    .line 1316
    iput-wide p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->contentLength:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/offline/DownloadRequest;Lcom/google/android/exoplayer2/offline/Downloader;Lcom/google/android/exoplayer2/offline/DownloadProgress;ZILcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;Lcom/google/android/exoplayer2/offline/DownloadManager$1;)V
    .registers 8

    .line 1289
    invoke-direct/range {p0 .. p6}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;-><init>(Lcom/google/android/exoplayer2/offline/DownloadRequest;Lcom/google/android/exoplayer2/offline/Downloader;Lcom/google/android/exoplayer2/offline/DownloadProgress;ZILcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)Z
    .registers 1

    .line 1289
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->isRemove:Z

    return p0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)Lcom/google/android/exoplayer2/offline/DownloadRequest;
    .registers 1

    .line 1289
    iget-object p0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->request:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)Z
    .registers 1

    .line 1289
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->isCanceled:Z

    return p0
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)Ljava/lang/Exception;
    .registers 1

    .line 1289
    iget-object p0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->finalException:Ljava/lang/Exception;

    return-object p0
.end method

.method private static getRetryDelayMillis(I)I
    .registers 2

    add-int/lit8 p0, p0, -0x1

    mul-int/lit16 p0, p0, 0x3e8

    const/16 v0, 0x1388

    .line 1395
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public cancel(Z)V
    .registers 2

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    .line 1326
    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->internalHandler:Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;

    .line 1328
    :cond_5
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->isCanceled:Z

    if-nez p1, :cond_14

    const/4 p1, 0x1

    .line 1329
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->isCanceled:Z

    .line 1330
    iget-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->downloader:Lcom/google/android/exoplayer2/offline/Downloader;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/offline/Downloader;->cancel()V

    .line 1331
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->interrupt()V

    :cond_14
    return-void
.end method

.method public onProgress(JJF)V
    .registers 8

    .line 1377
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->downloadProgress:Lcom/google/android/exoplayer2/offline/DownloadProgress;

    iput-wide p3, v0, Lcom/google/android/exoplayer2/offline/DownloadProgress;->bytesDownloaded:J

    .line 1378
    iput p5, v0, Lcom/google/android/exoplayer2/offline/DownloadProgress;->percentDownloaded:F

    .line 1379
    iget-wide p3, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->contentLength:J

    cmp-long p3, p1, p3

    if-eqz p3, :cond_21

    .line 1380
    iput-wide p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->contentLength:J

    .line 1381
    iget-object p3, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->internalHandler:Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;

    if-eqz p3, :cond_21

    const/16 p4, 0xa

    const/16 p5, 0x20

    shr-long v0, p1, p5

    long-to-int p5, v0

    long-to-int p1, p1

    .line 1384
    invoke-virtual {p3, p4, p5, p1, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1389
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_21
    return-void
.end method

.method public run()V
    .registers 9

    .line 1340
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->isRemove:Z

    if-eqz v0, :cond_a

    .line 1341
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->downloader:Lcom/google/android/exoplayer2/offline/Downloader;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/offline/Downloader;->remove()V

    goto :goto_42

    :cond_a
    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    move v3, v2

    .line 1345
    :cond_e
    :goto_e
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->isCanceled:Z
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_10} :catch_3b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_37

    if-nez v4, :cond_42

    .line 1347
    :try_start_12
    iget-object v4, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->downloader:Lcom/google/android/exoplayer2/offline/Downloader;

    invoke-interface {v4, p0}, Lcom/google/android/exoplayer2/offline/Downloader;->download(Lcom/google/android/exoplayer2/offline/Downloader$ProgressListener;)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_17} :catch_18
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_17} :catch_3b
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_17} :catch_37

    goto :goto_42

    :catch_18
    move-exception v4

    .line 1350
    :try_start_19
    iget-boolean v5, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->isCanceled:Z

    if-nez v5, :cond_e

    .line 1351
    iget-object v5, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->downloadProgress:Lcom/google/android/exoplayer2/offline/DownloadProgress;

    iget-wide v5, v5, Lcom/google/android/exoplayer2/offline/DownloadProgress;->bytesDownloaded:J

    cmp-long v7, v5, v0

    if-eqz v7, :cond_27

    move v3, v2

    move-wide v0, v5

    :cond_27
    add-int/lit8 v3, v3, 0x1

    .line 1356
    iget v5, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->minRetryCount:I

    if-gt v3, v5, :cond_36

    .line 1359
    invoke-static {v3}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->getRetryDelayMillis(I)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_e

    .line 1357
    :cond_36
    throw v4
    :try_end_37
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_37} :catch_3b
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_37} :catch_37

    :catch_37
    move-exception v0

    .line 1367
    iput-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->finalException:Ljava/lang/Exception;

    goto :goto_42

    .line 1365
    :catch_3b
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1369
    :cond_42
    :goto_42
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->internalHandler:Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;

    if-eqz v0, :cond_4f

    const/16 v1, 0x9

    .line 1371
    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_4f
    return-void
.end method
