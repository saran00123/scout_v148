.class public final Lzlc/season/rxdownload3/core/NormalDownload;
.super Lzlc/season/rxdownload3/core/DownloadType;
.source "NormalDownload.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016J\u0010\u0010\t\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u000b0\nH\u0016J\n\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0016J\u0008\u0010\u000e\u001a\u00020\u0008H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lzlc/season/rxdownload3/core/NormalDownload;",
        "Lzlc/season/rxdownload3/core/DownloadType;",
        "mission",
        "Lzlc/season/rxdownload3/core/RealMission;",
        "(Lzlc/season/rxdownload3/core/RealMission;)V",
        "targetFile",
        "Lzlc/season/rxdownload3/core/NormalTargetFile;",
        "delete",
        "",
        "download",
        "Lio/reactivex/Flowable;",
        "Lzlc/season/rxdownload3/core/Status;",
        "getFile",
        "Ljava/io/File;",
        "initStatus",
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
.field private final targetFile:Lzlc/season/rxdownload3/core/NormalTargetFile;


# direct methods
.method public constructor <init>(Lzlc/season/rxdownload3/core/RealMission;)V
    .registers 3
    .param p1    # Lzlc/season/rxdownload3/core/RealMission;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "mission"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0, p1}, Lzlc/season/rxdownload3/core/DownloadType;-><init>(Lzlc/season/rxdownload3/core/RealMission;)V

    .line 11
    new-instance v0, Lzlc/season/rxdownload3/core/NormalTargetFile;

    invoke-direct {v0, p1}, Lzlc/season/rxdownload3/core/NormalTargetFile;-><init>(Lzlc/season/rxdownload3/core/RealMission;)V

    iput-object v0, p0, Lzlc/season/rxdownload3/core/NormalDownload;->targetFile:Lzlc/season/rxdownload3/core/NormalTargetFile;

    return-void
.end method

.method public static final synthetic access$getTargetFile$p(Lzlc/season/rxdownload3/core/NormalDownload;)Lzlc/season/rxdownload3/core/NormalTargetFile;
    .registers 1

    .line 10
    iget-object p0, p0, Lzlc/season/rxdownload3/core/NormalDownload;->targetFile:Lzlc/season/rxdownload3/core/NormalTargetFile;

    return-object p0
.end method


# virtual methods
.method public delete()V
    .registers 2

    .line 33
    iget-object v0, p0, Lzlc/season/rxdownload3/core/NormalDownload;->targetFile:Lzlc/season/rxdownload3/core/NormalTargetFile;

    invoke-virtual {v0}, Lzlc/season/rxdownload3/core/NormalTargetFile;->delete()V

    return-void
.end method

.method public download()Lio/reactivex/Flowable;
    .registers 3
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

    .line 37
    invoke-virtual {p0}, Lzlc/season/rxdownload3/core/NormalDownload;->getMission()Lzlc/season/rxdownload3/core/RealMission;

    move-result-object v0

    invoke-virtual {v0}, Lzlc/season/rxdownload3/core/RealMission;->getActual()Lzlc/season/rxdownload3/core/Mission;

    move-result-object v0

    invoke-virtual {v0}, Lzlc/season/rxdownload3/core/Mission;->getOverwrite()Z

    move-result v0

    if-nez v0, :cond_20

    .line 38
    iget-object v0, p0, Lzlc/season/rxdownload3/core/NormalDownload;->targetFile:Lzlc/season/rxdownload3/core/NormalTargetFile;

    invoke-virtual {v0}, Lzlc/season/rxdownload3/core/NormalTargetFile;->isFinish()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 39
    invoke-static {}, Lio/reactivex/Flowable;->empty()Lio/reactivex/Flowable;

    move-result-object v0

    const-string v1, "Flowable.empty()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 43
    :cond_20
    iget-object v0, p0, Lzlc/season/rxdownload3/core/NormalDownload;->targetFile:Lzlc/season/rxdownload3/core/NormalTargetFile;

    invoke-virtual {v0}, Lzlc/season/rxdownload3/core/NormalTargetFile;->checkFile()V

    .line 45
    invoke-static {}, Lzlc/season/rxdownload3/helper/UtilsKt;->getANY()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Maybe;->just(Ljava/lang/Object;)Lio/reactivex/Maybe;

    move-result-object v0

    .line 46
    new-instance v1, Lzlc/season/rxdownload3/core/NormalDownload$download$1;

    invoke-direct {v1, p0}, Lzlc/season/rxdownload3/core/NormalDownload$download$1;-><init>(Lzlc/season/rxdownload3/core/NormalDownload;)V

    check-cast v1, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v1}, Lio/reactivex/Maybe;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Maybe;

    move-result-object v0

    .line 47
    new-instance v1, Lzlc/season/rxdownload3/core/NormalDownload$download$2;

    invoke-direct {v1, p0}, Lzlc/season/rxdownload3/core/NormalDownload$download$2;-><init>(Lzlc/season/rxdownload3/core/NormalDownload;)V

    check-cast v1, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v1}, Lio/reactivex/Maybe;->flatMapPublisher(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v0

    const-string v1, "Maybe.just(ANY)\n        \u2026ave(it)\n                }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 26
    iget-object v0, p0, Lzlc/season/rxdownload3/core/NormalDownload;->targetFile:Lzlc/season/rxdownload3/core/NormalTargetFile;

    invoke-virtual {v0}, Lzlc/season/rxdownload3/core/NormalTargetFile;->isFinish()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 27
    iget-object v0, p0, Lzlc/season/rxdownload3/core/NormalDownload;->targetFile:Lzlc/season/rxdownload3/core/NormalTargetFile;

    invoke-virtual {v0}, Lzlc/season/rxdownload3/core/NormalTargetFile;->realFile()Ljava/io/File;

    move-result-object v0

    return-object v0

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public initStatus()V
    .registers 12

    .line 14
    invoke-virtual {p0}, Lzlc/season/rxdownload3/core/NormalDownload;->getMission()Lzlc/season/rxdownload3/core/RealMission;

    move-result-object v0

    invoke-virtual {v0}, Lzlc/season/rxdownload3/core/RealMission;->getActual()Lzlc/season/rxdownload3/core/Mission;

    move-result-object v0

    invoke-virtual {v0}, Lzlc/season/rxdownload3/core/Mission;->getOverwrite()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 15
    invoke-virtual {p0}, Lzlc/season/rxdownload3/core/NormalDownload;->getMission()Lzlc/season/rxdownload3/core/RealMission;

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

    goto :goto_4e

    .line 17
    :cond_2a
    iget-object v0, p0, Lzlc/season/rxdownload3/core/NormalDownload;->targetFile:Lzlc/season/rxdownload3/core/NormalTargetFile;

    invoke-virtual {v0}, Lzlc/season/rxdownload3/core/NormalTargetFile;->getStatus()Lzlc/season/rxdownload3/core/Status;

    move-result-object v0

    .line 18
    invoke-virtual {p0}, Lzlc/season/rxdownload3/core/NormalDownload;->getMission()Lzlc/season/rxdownload3/core/RealMission;

    move-result-object v1

    .line 19
    iget-object v2, p0, Lzlc/season/rxdownload3/core/NormalDownload;->targetFile:Lzlc/season/rxdownload3/core/NormalTargetFile;

    invoke-virtual {v2}, Lzlc/season/rxdownload3/core/NormalTargetFile;->isFinish()Z

    move-result v2

    if-eqz v2, :cond_44

    new-instance v2, Lzlc/season/rxdownload3/core/Succeed;

    invoke-direct {v2, v0}, Lzlc/season/rxdownload3/core/Succeed;-><init>(Lzlc/season/rxdownload3/core/Status;)V

    check-cast v2, Lzlc/season/rxdownload3/core/Status;

    goto :goto_4b

    .line 20
    :cond_44
    new-instance v2, Lzlc/season/rxdownload3/core/Normal;

    invoke-direct {v2, v0}, Lzlc/season/rxdownload3/core/Normal;-><init>(Lzlc/season/rxdownload3/core/Status;)V

    check-cast v2, Lzlc/season/rxdownload3/core/Status;

    .line 18
    :goto_4b
    invoke-virtual {v1, v2}, Lzlc/season/rxdownload3/core/RealMission;->setStatus(Lzlc/season/rxdownload3/core/Status;)V

    :goto_4e
    return-void
.end method
