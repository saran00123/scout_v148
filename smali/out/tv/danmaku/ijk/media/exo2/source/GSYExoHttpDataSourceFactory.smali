.class public final Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSourceFactory;
.super Lcom/google/android/exoplayer2/upstream/HttpDataSource$BaseFactory;
.source "GSYExoHttpDataSourceFactory.java"


# instance fields
.field private final allowCrossProtocolRedirects:Z

.field private final connectTimeoutMillis:I

.field private final listener:Lcom/google/android/exoplayer2/upstream/TransferListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final readTimeoutMillis:I

.field private final userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, v0}, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSourceFactory;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZ)V
    .registers 11

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 78
    invoke-direct/range {v0 .. v5}, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSourceFactory;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/TransferListener;IIZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/TransferListener;)V
    .registers 9
    .param p2    # Lcom/google/android/exoplayer2/upstream/TransferListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/16 v3, 0x1f40

    const/16 v4, 0x1f40

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 60
    invoke-direct/range {v0 .. v5}, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSourceFactory;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/TransferListener;IIZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/TransferListener;IIZ)V
    .registers 6
    .param p2    # Lcom/google/android/exoplayer2/upstream/TransferListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 101
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$BaseFactory;-><init>()V

    .line 102
    iput-object p1, p0, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSourceFactory;->userAgent:Ljava/lang/String;

    .line 103
    iput-object p2, p0, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSourceFactory;->listener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    .line 104
    iput p3, p0, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSourceFactory;->connectTimeoutMillis:I

    .line 105
    iput p4, p0, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSourceFactory;->readTimeoutMillis:I

    .line 106
    iput-boolean p5, p0, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSourceFactory;->allowCrossProtocolRedirects:Z

    return-void
.end method


# virtual methods
.method protected bridge synthetic createDataSourceInternal(Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;)Lcom/google/android/exoplayer2/upstream/HttpDataSource;
    .registers 2

    .line 28
    invoke-virtual {p0, p1}, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSourceFactory;->createDataSourceInternal(Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;)Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;

    move-result-object p1

    return-object p1
.end method

.method protected createDataSourceInternal(Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;)Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;
    .registers 10

    .line 112
    new-instance v7, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;

    iget-object v1, p0, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSourceFactory;->userAgent:Ljava/lang/String;

    iget v3, p0, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSourceFactory;->connectTimeoutMillis:I

    iget v4, p0, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSourceFactory;->readTimeoutMillis:I

    iget-boolean v5, p0, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSourceFactory;->allowCrossProtocolRedirects:Z

    const/4 v2, 0x0

    move-object v0, v7

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/util/Predicate;IIZLcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;)V

    .line 120
    iget-object p1, p0, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSourceFactory;->listener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    if-eqz p1, :cond_17

    .line 121
    invoke-virtual {v7, p1}, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->addTransferListener(Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    :cond_17
    return-object v7
.end method
