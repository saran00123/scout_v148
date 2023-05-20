.class public Lzlc/season/rxdownload3/core/Status;
.super Ljava/lang/Object;
.source "Status.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u000c\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u0016\u0018\u00002\u00020\u0001B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0000\u00a2\u0006\u0002\u0010\u0003B#\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u0006\u0010\u0014\u001a\u00020\u0015J\u0006\u0010\u0016\u001a\u00020\u0015J\u0006\u0010\u0017\u001a\u00020\u0015J\u0008\u0010\u0018\u001a\u00020\u0008H\u0016J\u0006\u0010\u0019\u001a\u00020\u0015R\u001a\u0010\u0007\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0006\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u000f\"\u0004\u0008\u0013\u0010\u0011\u00a8\u0006\u001a"
    }
    d2 = {
        "Lzlc/season/rxdownload3/core/Status;",
        "",
        "status",
        "(Lzlc/season/rxdownload3/core/Status;)V",
        "downloadSize",
        "",
        "totalSize",
        "chunkFlag",
        "",
        "(JJZ)V",
        "getChunkFlag",
        "()Z",
        "setChunkFlag",
        "(Z)V",
        "getDownloadSize",
        "()J",
        "setDownloadSize",
        "(J)V",
        "getTotalSize",
        "setTotalSize",
        "formatDownloadSize",
        "",
        "formatString",
        "formatTotalSize",
        "isImportant",
        "percent",
        "rxdownload3_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private chunkFlag:Z

.field private downloadSize:J

.field private totalSize:J


# direct methods
.method public constructor <init>()V
    .registers 9

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lzlc/season/rxdownload3/core/Status;-><init>(JJZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(JJZ)V
    .registers 6

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lzlc/season/rxdownload3/core/Status;->downloadSize:J

    iput-wide p3, p0, Lzlc/season/rxdownload3/core/Status;->totalSize:J

    iput-boolean p5, p0, Lzlc/season/rxdownload3/core/Status;->chunkFlag:Z

    return-void
.end method

.method public synthetic constructor <init>(JJZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 12

    and-int/lit8 p7, p6, 0x1

    const-wide/16 v0, 0x0

    if-eqz p7, :cond_8

    move-wide v2, v0

    goto :goto_9

    :cond_8
    move-wide v2, p1

    :goto_9
    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_e

    goto :goto_f

    :cond_e
    move-wide v0, p3

    :goto_f
    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_14

    const/4 p5, 0x0

    :cond_14
    move p6, p5

    move-object p1, p0

    move-wide p2, v2

    move-wide p4, v0

    .line 9
    invoke-direct/range {p1 .. p6}, Lzlc/season/rxdownload3/core/Status;-><init>(JJZ)V

    return-void
.end method

.method public constructor <init>(Lzlc/season/rxdownload3/core/Status;)V
    .registers 9
    .param p1    # Lzlc/season/rxdownload3/core/Status;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-wide v2, p1, Lzlc/season/rxdownload3/core/Status;->downloadSize:J

    iget-wide v4, p1, Lzlc/season/rxdownload3/core/Status;->totalSize:J

    iget-boolean v6, p1, Lzlc/season/rxdownload3/core/Status;->chunkFlag:Z

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lzlc/season/rxdownload3/core/Status;-><init>(JJZ)V

    return-void
.end method


# virtual methods
.method public final formatDownloadSize()Ljava/lang/String;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 18
    iget-wide v0, p0, Lzlc/season/rxdownload3/core/Status;->downloadSize:J

    invoke-static {v0, v1}, Lzlc/season/rxdownload3/helper/UtilsKt;->formatSize(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final formatString()Ljava/lang/String;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lzlc/season/rxdownload3/core/Status;->formatDownloadSize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lzlc/season/rxdownload3/core/Status;->formatTotalSize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final formatTotalSize()Ljava/lang/String;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 14
    iget-wide v0, p0, Lzlc/season/rxdownload3/core/Status;->totalSize:J

    invoke-static {v0, v1}, Lzlc/season/rxdownload3/helper/UtilsKt;->formatSize(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getChunkFlag()Z
    .registers 2

    .line 9
    iget-boolean v0, p0, Lzlc/season/rxdownload3/core/Status;->chunkFlag:Z

    return v0
.end method

.method public final getDownloadSize()J
    .registers 3

    .line 7
    iget-wide v0, p0, Lzlc/season/rxdownload3/core/Status;->downloadSize:J

    return-wide v0
.end method

.method public final getTotalSize()J
    .registers 3

    .line 8
    iget-wide v0, p0, Lzlc/season/rxdownload3/core/Status;->totalSize:J

    return-wide v0
.end method

.method public isImportant()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final percent()Ljava/lang/String;
    .registers 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 27
    iget-wide v0, p0, Lzlc/season/rxdownload3/core/Status;->totalSize:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const-wide/16 v0, 0x0

    goto :goto_14

    .line 30
    :cond_b
    iget-wide v2, p0, Lzlc/season/rxdownload3/core/Status;->downloadSize:J

    long-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v2, v4

    long-to-double v0, v0

    div-double v0, v2, v0

    .line 32
    :goto_14
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v2

    const-string v3, "nf"

    .line 33
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 34
    invoke-virtual {v2, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    const-string v1, "nf.format(result)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final setChunkFlag(Z)V
    .registers 2

    .line 9
    iput-boolean p1, p0, Lzlc/season/rxdownload3/core/Status;->chunkFlag:Z

    return-void
.end method

.method public final setDownloadSize(J)V
    .registers 3

    .line 7
    iput-wide p1, p0, Lzlc/season/rxdownload3/core/Status;->downloadSize:J

    return-void
.end method

.method public final setTotalSize(J)V
    .registers 3

    .line 8
    iput-wide p1, p0, Lzlc/season/rxdownload3/core/Status;->totalSize:J

    return-void
.end method
