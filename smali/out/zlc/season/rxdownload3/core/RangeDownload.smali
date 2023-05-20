.class public final Lzlc/season/rxdownload3/core/RangeDownload;
.super Lzlc/season/rxdownload3/core/DownloadType;
.source "RangeDownload.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRangeDownload.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RangeDownload.kt\nzlc/season/rxdownload3/core/RangeDownload\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,84:1\n673#2:85\n746#2,2:86\n1586#2,2:88\n*E\n*S KotlinDebug\n*F\n+ 1 RangeDownload.kt\nzlc/season/rxdownload3/core/RangeDownload\n*L\n64#1:85\n64#1,2:86\n65#1,2:88\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u000b\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\r0\u000cH\u0016J\n\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u0008\u0010\u0010\u001a\u00020\nH\u0016J\u0008\u0010\u0011\u001a\u00020\u0012H\u0002J\u0016\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u000c2\u0006\u0010\u0015\u001a\u00020\u0016H\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lzlc/season/rxdownload3/core/RangeDownload;",
        "Lzlc/season/rxdownload3/core/DownloadType;",
        "mission",
        "Lzlc/season/rxdownload3/core/RealMission;",
        "(Lzlc/season/rxdownload3/core/RealMission;)V",
        "targetFile",
        "Lzlc/season/rxdownload3/core/RangeTargetFile;",
        "tmpFile",
        "Lzlc/season/rxdownload3/core/RangeTmpFile;",
        "delete",
        "",
        "download",
        "Lio/reactivex/Flowable;",
        "Lzlc/season/rxdownload3/core/Status;",
        "getFile",
        "Ljava/io/File;",
        "initStatus",
        "isFinish",
        "",
        "rangeDownload",
        "",
        "segment",
        "Lzlc/season/rxdownload3/core/RangeTmpFile$Segment;",
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
.field private final targetFile:Lzlc/season/rxdownload3/core/RangeTargetFile;

.field private final tmpFile:Lzlc/season/rxdownload3/core/RangeTmpFile;


# direct methods
.method public constructor <init>(Lzlc/season/rxdownload3/core/RealMission;)V
    .registers 3
    .param p1    # Lzlc/season/rxdownload3/core/RealMission;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "mission"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0, p1}, Lzlc/season/rxdownload3/core/DownloadType;-><init>(Lzlc/season/rxdownload3/core/RealMission;)V

    .line 14
    new-instance v0, Lzlc/season/rxdownload3/core/RangeTargetFile;

    invoke-direct {v0, p1}, Lzlc/season/rxdownload3/core/RangeTargetFile;-><init>(Lzlc/season/rxdownload3/core/RealMission;)V

    iput-object v0, p0, Lzlc/season/rxdownload3/core/RangeDownload;->targetFile:Lzlc/season/rxdownload3/core/RangeTargetFile;

    .line 16
    new-instance v0, Lzlc/season/rxdownload3/core/RangeTmpFile;

    invoke-direct {v0, p1}, Lzlc/season/rxdownload3/core/RangeTmpFile;-><init>(Lzlc/season/rxdownload3/core/RealMission;)V

    iput-object v0, p0, Lzlc/season/rxdownload3/core/RangeDownload;->tmpFile:Lzlc/season/rxdownload3/core/RangeTmpFile;

    return-void
.end method

.method public static final synthetic access$getTargetFile$p(Lzlc/season/rxdownload3/core/RangeDownload;)Lzlc/season/rxdownload3/core/RangeTargetFile;
    .registers 1

    .line 13
    iget-object p0, p0, Lzlc/season/rxdownload3/core/RangeDownload;->targetFile:Lzlc/season/rxdownload3/core/RangeTargetFile;

    return-object p0
.end method

.method public static final synthetic access$getTmpFile$p(Lzlc/season/rxdownload3/core/RangeDownload;)Lzlc/season/rxdownload3/core/RangeTmpFile;
    .registers 1

    .line 13
    iget-object p0, p0, Lzlc/season/rxdownload3/core/RangeDownload;->tmpFile:Lzlc/season/rxdownload3/core/RangeTmpFile;

    return-object p0
.end method

.method private final isFinish()Z
    .registers 2

    .line 44
    iget-object v0, p0, Lzlc/season/rxdownload3/core/RangeDownload;->tmpFile:Lzlc/season/rxdownload3/core/RangeTmpFile;

    invoke-virtual {v0}, Lzlc/season/rxdownload3/core/RangeTmpFile;->isFinish()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lzlc/season/rxdownload3/core/RangeDownload;->targetFile:Lzlc/season/rxdownload3/core/RangeTargetFile;

    invoke-virtual {v0}, Lzlc/season/rxdownload3/core/RangeTargetFile;->isFinish()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method private final rangeDownload(Lzlc/season/rxdownload3/core/RangeTmpFile$Segment;)Lio/reactivex/Flowable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzlc/season/rxdownload3/core/RangeTmpFile$Segment;",
            ")",
            "Lio/reactivex/Flowable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 74
    invoke-static {p1}, Lio/reactivex/Maybe;->just(Ljava/lang/Object;)Lio/reactivex/Maybe;

    move-result-object v0

    .line 75
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Maybe;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Maybe;

    move-result-object v0

    .line 76
    sget-object v1, Lzlc/season/rxdownload3/core/RangeDownload$rangeDownload$1;->INSTANCE:Lzlc/season/rxdownload3/core/RangeDownload$rangeDownload$1;

    check-cast v1, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v1}, Lio/reactivex/Maybe;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Maybe;

    move-result-object v0

    .line 77
    sget-object v1, Lzlc/season/rxdownload3/core/RangeDownload$rangeDownload$2;->INSTANCE:Lzlc/season/rxdownload3/core/RangeDownload$rangeDownload$2;

    check-cast v1, Lio/reactivex/functions/Consumer;

    invoke-virtual {v0, v1}, Lio/reactivex/Maybe;->doOnSuccess(Lio/reactivex/functions/Consumer;)Lio/reactivex/Maybe;

    move-result-object v0

    .line 78
    new-instance v1, Lzlc/season/rxdownload3/core/RangeDownload$rangeDownload$3;

    invoke-direct {v1, p0}, Lzlc/season/rxdownload3/core/RangeDownload$rangeDownload$3;-><init>(Lzlc/season/rxdownload3/core/RangeDownload;)V

    check-cast v1, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v1}, Lio/reactivex/Maybe;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Maybe;

    move-result-object v0

    .line 79
    new-instance v1, Lzlc/season/rxdownload3/core/RangeDownload$rangeDownload$4;

    invoke-direct {v1, p0, p1}, Lzlc/season/rxdownload3/core/RangeDownload$rangeDownload$4;-><init>(Lzlc/season/rxdownload3/core/RangeDownload;Lzlc/season/rxdownload3/core/RangeTmpFile$Segment;)V

    check-cast v1, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v1}, Lio/reactivex/Maybe;->flatMapPublisher(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object p1

    const-string v0, "Maybe.just(segment)\n    \u2026e(it, segment, tmpFile) }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public delete()V
    .registers 2

    .line 39
    iget-object v0, p0, Lzlc/season/rxdownload3/core/RangeDownload;->targetFile:Lzlc/season/rxdownload3/core/RangeTargetFile;

    invoke-virtual {v0}, Lzlc/season/rxdownload3/core/RangeTargetFile;->delete()V

    .line 40
    iget-object v0, p0, Lzlc/season/rxdownload3/core/RangeDownload;->tmpFile:Lzlc/season/rxdownload3/core/RangeTmpFile;

    invoke-virtual {v0}, Lzlc/season/rxdownload3/core/RangeTmpFile;->delete()V

    return-void
.end method

.method public download()Lio/reactivex/Flowable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "+",
            "Lzlc/season/rxdownload3/core/Status;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 48
    invoke-virtual {p0}, Lzlc/season/rxdownload3/core/RangeDownload;->getMission()Lzlc/season/rxdownload3/core/RealMission;

    move-result-object v0

    invoke-virtual {v0}, Lzlc/season/rxdownload3/core/RealMission;->getActual()Lzlc/season/rxdownload3/core/Mission;

    move-result-object v0

    invoke-virtual {v0}, Lzlc/season/rxdownload3/core/Mission;->getOverwrite()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 49
    invoke-direct {p0}, Lzlc/season/rxdownload3/core/RangeDownload;->isFinish()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 50
    invoke-static {}, Lio/reactivex/Flowable;->empty()Lio/reactivex/Flowable;

    move-result-object v0

    const-string v1, "Flowable.empty()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 54
    :cond_1e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 56
    iget-object v1, p0, Lzlc/season/rxdownload3/core/RangeDownload;->targetFile:Lzlc/season/rxdownload3/core/RangeTargetFile;

    invoke-virtual {v1}, Lzlc/season/rxdownload3/core/RangeTargetFile;->isShadowExists()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 57
    iget-object v1, p0, Lzlc/season/rxdownload3/core/RangeDownload;->tmpFile:Lzlc/season/rxdownload3/core/RangeTmpFile;

    invoke-virtual {v1}, Lzlc/season/rxdownload3/core/RangeTmpFile;->checkFile()V

    goto :goto_3d

    .line 59
    :cond_33
    iget-object v1, p0, Lzlc/season/rxdownload3/core/RangeDownload;->targetFile:Lzlc/season/rxdownload3/core/RangeTargetFile;

    invoke-virtual {v1}, Lzlc/season/rxdownload3/core/RangeTargetFile;->createShadowFile()V

    .line 60
    iget-object v1, p0, Lzlc/season/rxdownload3/core/RangeDownload;->tmpFile:Lzlc/season/rxdownload3/core/RangeTmpFile;

    invoke-virtual {v1}, Lzlc/season/rxdownload3/core/RangeTmpFile;->reset()V

    .line 63
    :goto_3d
    iget-object v1, p0, Lzlc/season/rxdownload3/core/RangeDownload;->tmpFile:Lzlc/season/rxdownload3/core/RangeTmpFile;

    invoke-virtual {v1}, Lzlc/season/rxdownload3/core/RangeTmpFile;->getSegments()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 85
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 86
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_50
    :goto_50
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_69

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lzlc/season/rxdownload3/core/RangeTmpFile$Segment;

    .line 64
    invoke-virtual {v4}, Lzlc/season/rxdownload3/core/RangeTmpFile$Segment;->isComplete()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_50

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_50

    .line 87
    :cond_69
    check-cast v2, Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    .line 88
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_71
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_85

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzlc/season/rxdownload3/core/RangeTmpFile$Segment;

    .line 65
    invoke-direct {p0, v2}, Lzlc/season/rxdownload3/core/RangeDownload;->rangeDownload(Lzlc/season/rxdownload3/core/RangeTmpFile$Segment;)Lio/reactivex/Flowable;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_71

    .line 67
    :cond_85
    check-cast v0, Ljava/lang/Iterable;

    sget-object v1, Lzlc/season/rxdownload3/core/DownloadConfig;->INSTANCE:Lzlc/season/rxdownload3/core/DownloadConfig;

    invoke-virtual {v1}, Lzlc/season/rxdownload3/core/DownloadConfig;->getMaxRange$rxdownload3_release()I

    move-result v1

    invoke-static {v0, v1}, Lio/reactivex/Flowable;->mergeDelayError(Ljava/lang/Iterable;I)Lio/reactivex/Flowable;

    move-result-object v0

    .line 68
    new-instance v1, Lzlc/season/rxdownload3/core/RangeDownload$download$3;

    invoke-direct {v1, p0}, Lzlc/season/rxdownload3/core/RangeDownload$download$3;-><init>(Lzlc/season/rxdownload3/core/RangeDownload;)V

    check-cast v1, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 69
    new-instance v1, Lzlc/season/rxdownload3/core/RangeDownload$download$4;

    invoke-direct {v1, p0}, Lzlc/season/rxdownload3/core/RangeDownload$download$4;-><init>(Lzlc/season/rxdownload3/core/RangeDownload;)V

    check-cast v1, Lio/reactivex/functions/Action;

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->doOnComplete(Lio/reactivex/functions/Action;)Lio/reactivex/Flowable;

    move-result-object v0

    const-string v1, "Flowable.mergeDelayError\u2026e { targetFile.rename() }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 32
    invoke-direct {p0}, Lzlc/season/rxdownload3/core/RangeDownload;->isFinish()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 33
    iget-object v0, p0, Lzlc/season/rxdownload3/core/RangeDownload;->targetFile:Lzlc/season/rxdownload3/core/RangeTargetFile;

    invoke-virtual {v0}, Lzlc/season/rxdownload3/core/RangeTargetFile;->realFile()Ljava/io/File;

    move-result-object v0

    return-object v0

    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method public initStatus()V
    .registers 12

    .line 19
    invoke-virtual {p0}, Lzlc/season/rxdownload3/core/RangeDownload;->getMission()Lzlc/season/rxdownload3/core/RealMission;

    move-result-object v0

    invoke-virtual {v0}, Lzlc/season/rxdownload3/core/RealMission;->getActual()Lzlc/season/rxdownload3/core/Mission;

    move-result-object v0

    invoke-virtual {v0}, Lzlc/season/rxdownload3/core/Mission;->getOverwrite()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 20
    invoke-virtual {p0}, Lzlc/season/rxdownload3/core/RangeDownload;->getMission()Lzlc/season/rxdownload3/core/RealMission;

    move-result-object v0

    new-instance v1, Lzlc/season/rxdownload3/core/Normal;

    new-instance v10, Lzlc/season/rxdownload3/core/Status;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x7

    const/4 v9, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lzlc/season/rxdownload3/core/Status;-><init>(JJZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v1, v10}, Lzlc/season/rxdownload3/core/Normal;-><init>(Lzlc/season/rxdownload3/core/Status;)V

    check-cast v1, Lzlc/season/rxdownload3/core/Status;

    invoke-virtual {v0, v1}, Lzlc/season/rxdownload3/core/RealMission;->setStatus(Lzlc/season/rxdownload3/core/Status;)V

    goto :goto_4c

    .line 22
    :cond_2a
    iget-object v0, p0, Lzlc/season/rxdownload3/core/RangeDownload;->tmpFile:Lzlc/season/rxdownload3/core/RangeTmpFile;

    invoke-virtual {v0}, Lzlc/season/rxdownload3/core/RangeTmpFile;->currentStatus()Lzlc/season/rxdownload3/core/Status;

    move-result-object v0

    .line 24
    invoke-virtual {p0}, Lzlc/season/rxdownload3/core/RangeDownload;->getMission()Lzlc/season/rxdownload3/core/RealMission;

    move-result-object v1

    .line 25
    invoke-direct {p0}, Lzlc/season/rxdownload3/core/RangeDownload;->isFinish()Z

    move-result v2

    if-eqz v2, :cond_42

    new-instance v2, Lzlc/season/rxdownload3/core/Succeed;

    invoke-direct {v2, v0}, Lzlc/season/rxdownload3/core/Succeed;-><init>(Lzlc/season/rxdownload3/core/Status;)V

    check-cast v2, Lzlc/season/rxdownload3/core/Status;

    goto :goto_49

    .line 26
    :cond_42
    new-instance v2, Lzlc/season/rxdownload3/core/Normal;

    invoke-direct {v2, v0}, Lzlc/season/rxdownload3/core/Normal;-><init>(Lzlc/season/rxdownload3/core/Status;)V

    check-cast v2, Lzlc/season/rxdownload3/core/Status;

    .line 24
    :goto_49
    invoke-virtual {v1, v2}, Lzlc/season/rxdownload3/core/RealMission;->setStatus(Lzlc/season/rxdownload3/core/Status;)V

    :goto_4c
    return-void
.end method
