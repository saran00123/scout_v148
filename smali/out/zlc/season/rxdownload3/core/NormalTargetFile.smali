.class public final Lzlc/season/rxdownload3/core/NormalTargetFile;
.super Ljava/lang/Object;
.source "NormalTargetFile.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\r\u001a\u00020\u000eJ\u0006\u0010\u000f\u001a\u00020\u000eJ\u0006\u0010\u0010\u001a\u00020\u0011J\u0006\u0010\u0012\u001a\u00020\u0013J\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u00152\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u0017R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lzlc/season/rxdownload3/core/NormalTargetFile;",
        "",
        "mission",
        "Lzlc/season/rxdownload3/core/RealMission;",
        "(Lzlc/season/rxdownload3/core/RealMission;)V",
        "getMission",
        "()Lzlc/season/rxdownload3/core/RealMission;",
        "realFile",
        "Ljava/io/File;",
        "realFilePath",
        "",
        "shadowFile",
        "shadowFilePath",
        "checkFile",
        "",
        "delete",
        "getStatus",
        "Lzlc/season/rxdownload3/core/Status;",
        "isFinish",
        "",
        "save",
        "Lio/reactivex/Flowable;",
        "response",
        "Lretrofit2/Response;",
        "Lokhttp3/ResponseBody;",
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
.field private final mission:Lzlc/season/rxdownload3/core/RealMission;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final realFile:Ljava/io/File;

.field private final realFilePath:Ljava/lang/String;

.field private final shadowFile:Ljava/io/File;

.field private final shadowFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lzlc/season/rxdownload3/core/RealMission;)V
    .registers 3
    .param p1    # Lzlc/season/rxdownload3/core/RealMission;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "mission"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzlc/season/rxdownload3/core/NormalTargetFile;->mission:Lzlc/season/rxdownload3/core/RealMission;

    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lzlc/season/rxdownload3/core/NormalTargetFile;->mission:Lzlc/season/rxdownload3/core/RealMission;

    invoke-virtual {v0}, Lzlc/season/rxdownload3/core/RealMission;->getActual()Lzlc/season/rxdownload3/core/Mission;

    move-result-object v0

    invoke-virtual {v0}, Lzlc/season/rxdownload3/core/Mission;->getSavePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lzlc/season/rxdownload3/core/NormalTargetFile;->mission:Lzlc/season/rxdownload3/core/RealMission;

    invoke-virtual {v0}, Lzlc/season/rxdownload3/core/RealMission;->getActual()Lzlc/season/rxdownload3/core/Mission;

    move-result-object v0

    invoke-virtual {v0}, Lzlc/season/rxdownload3/core/Mission;->getSaveName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lzlc/season/rxdownload3/core/NormalTargetFile;->realFilePath:Ljava/lang/String;

    .line 17
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lzlc/season/rxdownload3/core/NormalTargetFile;->realFilePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".download"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lzlc/season/rxdownload3/core/NormalTargetFile;->shadowFilePath:Ljava/lang/String;

    .line 19
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lzlc/season/rxdownload3/core/NormalTargetFile;->realFilePath:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lzlc/season/rxdownload3/core/NormalTargetFile;->realFile:Ljava/io/File;

    .line 20
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lzlc/season/rxdownload3/core/NormalTargetFile;->shadowFilePath:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lzlc/season/rxdownload3/core/NormalTargetFile;->shadowFile:Ljava/io/File;

    .line 23
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lzlc/season/rxdownload3/core/NormalTargetFile;->mission:Lzlc/season/rxdownload3/core/RealMission;

    invoke-virtual {v0}, Lzlc/season/rxdownload3/core/RealMission;->getActual()Lzlc/season/rxdownload3/core/Mission;

    move-result-object v0

    invoke-virtual {v0}, Lzlc/season/rxdownload3/core/Mission;->getSavePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_76

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_79

    .line 25
    :cond_76
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :cond_79
    return-void
.end method

.method public static final synthetic access$getRealFile$p(Lzlc/season/rxdownload3/core/NormalTargetFile;)Ljava/io/File;
    .registers 1

    .line 15
    iget-object p0, p0, Lzlc/season/rxdownload3/core/NormalTargetFile;->realFile:Ljava/io/File;

    return-object p0
.end method

.method public static final synthetic access$getShadowFile$p(Lzlc/season/rxdownload3/core/NormalTargetFile;)Ljava/io/File;
    .registers 1

    .line 15
    iget-object p0, p0, Lzlc/season/rxdownload3/core/NormalTargetFile;->shadowFile:Ljava/io/File;

    return-object p0
.end method


# virtual methods
.method public final checkFile()V
    .registers 2

    .line 46
    iget-object v0, p0, Lzlc/season/rxdownload3/core/NormalTargetFile;->shadowFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 47
    iget-object v0, p0, Lzlc/season/rxdownload3/core/NormalTargetFile;->shadowFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 49
    :cond_d
    iget-object v0, p0, Lzlc/season/rxdownload3/core/NormalTargetFile;->shadowFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    return-void
.end method

.method public final delete()V
    .registers 2

    .line 88
    iget-object v0, p0, Lzlc/season/rxdownload3/core/NormalTargetFile;->realFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lzlc/season/rxdownload3/core/NormalTargetFile;->realFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 89
    :cond_d
    iget-object v0, p0, Lzlc/season/rxdownload3/core/NormalTargetFile;->shadowFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lzlc/season/rxdownload3/core/NormalTargetFile;->shadowFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1a
    return-void
.end method

.method public final getMission()Lzlc/season/rxdownload3/core/RealMission;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 15
    iget-object v0, p0, Lzlc/season/rxdownload3/core/NormalTargetFile;->mission:Lzlc/season/rxdownload3/core/RealMission;

    return-object v0
.end method

.method public final getStatus()Lzlc/season/rxdownload3/core/Status;
    .registers 19
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p0

    .line 38
    invoke-virtual/range {p0 .. p0}, Lzlc/season/rxdownload3/core/NormalTargetFile;->isFinish()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 39
    new-instance v1, Lzlc/season/rxdownload3/core/Status;

    iget-object v2, v0, Lzlc/season/rxdownload3/core/NormalTargetFile;->realFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    iget-object v2, v0, Lzlc/season/rxdownload3/core/NormalTargetFile;->realFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lzlc/season/rxdownload3/core/Status;-><init>(JJZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_2d

    .line 41
    :cond_1e
    new-instance v1, Lzlc/season/rxdownload3/core/Status;

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x7

    const/16 v17, 0x0

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Lzlc/season/rxdownload3/core/Status;-><init>(JJZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_2d
    return-object v1
.end method

.method public final isFinish()Z
    .registers 2

    .line 30
    iget-object v0, p0, Lzlc/season/rxdownload3/core/NormalTargetFile;->realFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public final realFile()Ljava/io/File;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 34
    iget-object v0, p0, Lzlc/season/rxdownload3/core/NormalTargetFile;->realFile:Ljava/io/File;

    return-object v0
.end method

.method public final save(Lretrofit2/Response;)Lio/reactivex/Flowable;
    .registers 18
    .param p1    # Lretrofit2/Response;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "Lokhttp3/ResponseBody;",
            ">;)",
            "Lio/reactivex/Flowable<",
            "Lzlc/season/rxdownload3/core/Status;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "response"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p1 .. p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lokhttp3/ResponseBody;

    if-eqz v3, :cond_5c

    const-string v0, "response.body() ?: throw\u2026(\"Response body is NULL\")"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x3e8

    .line 55
    sget-object v2, Lzlc/season/rxdownload3/core/DownloadConfig;->INSTANCE:Lzlc/season/rxdownload3/core/DownloadConfig;

    invoke-virtual {v2}, Lzlc/season/rxdownload3/core/DownloadConfig;->getFps$rxdownload3_release()I

    move-result v2

    div-int/2addr v0, v2

    int-to-long v8, v0

    .line 57
    new-instance v6, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    const-wide/16 v4, 0x0

    iput-wide v4, v6, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    const-wide/16 v4, 0x2000

    .line 59
    invoke-virtual {v3}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v13

    .line 61
    new-instance v7, Lzlc/season/rxdownload3/core/Downloading;

    new-instance v0, Lzlc/season/rxdownload3/core/Status;

    iget-wide v11, v6, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-static/range {p1 .. p1}, Lzlc/season/rxdownload3/helper/HttpUtilKt;->isChunked(Lretrofit2/Response;)Z

    move-result v15

    move-object v10, v0

    invoke-direct/range {v10 .. v15}, Lzlc/season/rxdownload3/core/Status;-><init>(JJZ)V

    invoke-direct {v7, v0}, Lzlc/season/rxdownload3/core/Downloading;-><init>(Lzlc/season/rxdownload3/core/Status;)V

    .line 63
    new-instance v0, Lzlc/season/rxdownload3/core/NormalTargetFile$save$1;

    move-object v1, v0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Lzlc/season/rxdownload3/core/NormalTargetFile$save$1;-><init>(Lzlc/season/rxdownload3/core/NormalTargetFile;Lokhttp3/ResponseBody;JLkotlin/jvm/internal/Ref$LongRef;Lzlc/season/rxdownload3/core/Downloading;)V

    check-cast v0, Lio/reactivex/FlowableOnSubscribe;

    .line 84
    sget-object v1, Lio/reactivex/BackpressureStrategy;->BUFFER:Lio/reactivex/BackpressureStrategy;

    .line 63
    invoke-static {v0, v1}, Lio/reactivex/Flowable;->create(Lio/reactivex/FlowableOnSubscribe;Lio/reactivex/BackpressureStrategy;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 84
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v2, 0x1

    invoke-virtual {v0, v8, v9, v1, v2}, Lio/reactivex/Flowable;->sample(JLjava/util/concurrent/TimeUnit;Z)Lio/reactivex/Flowable;

    move-result-object v0

    const-string v1, "Flowable.create<Status>(\u2026riod, MILLISECONDS, true)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 53
    :cond_5c
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Response body is NULL"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method
