.class public final Lzlc/season/rxdownload3/core/RangeTargetFile;
.super Ljava/lang/Object;
.source "RangeTargetFile.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u0012\u001a\u00020\u0013J\u0006\u0010\u0014\u001a\u00020\u0013J\u0006\u0010\u0015\u001a\u00020\u0016J\u0006\u0010\u0017\u001a\u00020\u0016J\u0006\u0010\u0018\u001a\u00020\u0016J\u0006\u0010\u000c\u001a\u00020\rJ\u0006\u0010\u0019\u001a\u00020\u0013J*\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u001b2\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u001d2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0006X\u0082D\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006#"
    }
    d2 = {
        "Lzlc/season/rxdownload3/core/RangeTargetFile;",
        "",
        "mission",
        "Lzlc/season/rxdownload3/core/RealMission;",
        "(Lzlc/season/rxdownload3/core/RealMission;)V",
        "BUFFER_SIZE",
        "",
        "MODE",
        "",
        "TRIGGER_SIZE",
        "getMission",
        "()Lzlc/season/rxdownload3/core/RealMission;",
        "realFile",
        "Ljava/io/File;",
        "realFileDirPath",
        "realFilePath",
        "shadowFile",
        "shadowFilePath",
        "createShadowFile",
        "",
        "delete",
        "isExists",
        "",
        "isFinish",
        "isShadowExists",
        "rename",
        "save",
        "Lio/reactivex/Flowable;",
        "response",
        "Lretrofit2/Response;",
        "Lokhttp3/ResponseBody;",
        "segment",
        "Lzlc/season/rxdownload3/core/RangeTmpFile$Segment;",
        "tmpFile",
        "Lzlc/season/rxdownload3/core/RangeTmpFile;",
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
.field private final BUFFER_SIZE:I

.field private final MODE:Ljava/lang/String;

.field private final TRIGGER_SIZE:I

.field private final mission:Lzlc/season/rxdownload3/core/RealMission;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final realFile:Ljava/io/File;

.field private final realFileDirPath:Ljava/lang/String;

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

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzlc/season/rxdownload3/core/RangeTargetFile;->mission:Lzlc/season/rxdownload3/core/RealMission;

    .line 17
    iget-object p1, p0, Lzlc/season/rxdownload3/core/RangeTargetFile;->mission:Lzlc/season/rxdownload3/core/RealMission;

    invoke-virtual {p1}, Lzlc/season/rxdownload3/core/RealMission;->getActual()Lzlc/season/rxdownload3/core/Mission;

    move-result-object p1

    invoke-virtual {p1}, Lzlc/season/rxdownload3/core/Mission;->getSavePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lzlc/season/rxdownload3/core/RangeTargetFile;->realFileDirPath:Ljava/lang/String;

    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lzlc/season/rxdownload3/core/RangeTargetFile;->realFileDirPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lzlc/season/rxdownload3/core/RangeTargetFile;->mission:Lzlc/season/rxdownload3/core/RealMission;

    invoke-virtual {v0}, Lzlc/season/rxdownload3/core/RealMission;->getActual()Lzlc/season/rxdownload3/core/Mission;

    move-result-object v0

    invoke-virtual {v0}, Lzlc/season/rxdownload3/core/Mission;->getSaveName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lzlc/season/rxdownload3/core/RangeTargetFile;->realFilePath:Ljava/lang/String;

    .line 20
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lzlc/season/rxdownload3/core/RangeTargetFile;->realFilePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".download"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lzlc/season/rxdownload3/core/RangeTargetFile;->shadowFilePath:Ljava/lang/String;

    .line 22
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lzlc/season/rxdownload3/core/RangeTargetFile;->realFilePath:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lzlc/season/rxdownload3/core/RangeTargetFile;->realFile:Ljava/io/File;

    .line 23
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lzlc/season/rxdownload3/core/RangeTargetFile;->shadowFilePath:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lzlc/season/rxdownload3/core/RangeTargetFile;->shadowFile:Ljava/io/File;

    const-string p1, "rw"

    .line 25
    iput-object p1, p0, Lzlc/season/rxdownload3/core/RangeTargetFile;->MODE:Ljava/lang/String;

    const/16 p1, 0x2000

    .line 26
    iput p1, p0, Lzlc/season/rxdownload3/core/RangeTargetFile;->BUFFER_SIZE:I

    .line 27
    iget p1, p0, Lzlc/season/rxdownload3/core/RangeTargetFile;->BUFFER_SIZE:I

    mul-int/lit8 p1, p1, 0x14

    iput p1, p0, Lzlc/season/rxdownload3/core/RangeTargetFile;->TRIGGER_SIZE:I

    .line 30
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lzlc/season/rxdownload3/core/RangeTargetFile;->realFileDirPath:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_80

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_83

    .line 32
    :cond_80
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :cond_83
    return-void
.end method

.method public static final synthetic access$getBUFFER_SIZE$p(Lzlc/season/rxdownload3/core/RangeTargetFile;)I
    .registers 1

    .line 16
    iget p0, p0, Lzlc/season/rxdownload3/core/RangeTargetFile;->BUFFER_SIZE:I

    return p0
.end method

.method public static final synthetic access$getMODE$p(Lzlc/season/rxdownload3/core/RangeTargetFile;)Ljava/lang/String;
    .registers 1

    .line 16
    iget-object p0, p0, Lzlc/season/rxdownload3/core/RangeTargetFile;->MODE:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getShadowFile$p(Lzlc/season/rxdownload3/core/RangeTargetFile;)Ljava/io/File;
    .registers 1

    .line 16
    iget-object p0, p0, Lzlc/season/rxdownload3/core/RangeTargetFile;->shadowFile:Ljava/io/File;

    return-object p0
.end method

.method public static final synthetic access$getTRIGGER_SIZE$p(Lzlc/season/rxdownload3/core/RangeTargetFile;)I
    .registers 1

    .line 16
    iget p0, p0, Lzlc/season/rxdownload3/core/RangeTargetFile;->TRIGGER_SIZE:I

    return p0
.end method


# virtual methods
.method public final createShadowFile()V
    .registers 4

    .line 45
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lzlc/season/rxdownload3/core/RangeTargetFile;->shadowFile:Ljava/io/File;

    iget-object v2, p0, Lzlc/season/rxdownload3/core/RangeTargetFile;->MODE:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 46
    iget-object v1, p0, Lzlc/season/rxdownload3/core/RangeTargetFile;->mission:Lzlc/season/rxdownload3/core/RealMission;

    invoke-virtual {v1}, Lzlc/season/rxdownload3/core/RealMission;->getTotalSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V

    return-void
.end method

.method public final delete()V
    .registers 2

    .line 110
    iget-object v0, p0, Lzlc/season/rxdownload3/core/RangeTargetFile;->shadowFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lzlc/season/rxdownload3/core/RangeTargetFile;->shadowFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 111
    :cond_d
    iget-object v0, p0, Lzlc/season/rxdownload3/core/RangeTargetFile;->realFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lzlc/season/rxdownload3/core/RangeTargetFile;->realFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1a
    return-void
.end method

.method public final getMission()Lzlc/season/rxdownload3/core/RealMission;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 16
    iget-object v0, p0, Lzlc/season/rxdownload3/core/RangeTargetFile;->mission:Lzlc/season/rxdownload3/core/RealMission;

    return-object v0
.end method

.method public final isExists()Z
    .registers 2

    .line 115
    iget-object v0, p0, Lzlc/season/rxdownload3/core/RangeTargetFile;->realFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public final isFinish()Z
    .registers 2

    .line 37
    iget-object v0, p0, Lzlc/season/rxdownload3/core/RangeTargetFile;->realFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public final isShadowExists()Z
    .registers 2

    .line 41
    iget-object v0, p0, Lzlc/season/rxdownload3/core/RangeTargetFile;->shadowFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public final realFile()Ljava/io/File;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 50
    iget-object v0, p0, Lzlc/season/rxdownload3/core/RangeTargetFile;->realFile:Ljava/io/File;

    return-object v0
.end method

.method public final rename()V
    .registers 3

    .line 54
    iget-object v0, p0, Lzlc/season/rxdownload3/core/RangeTargetFile;->shadowFile:Ljava/io/File;

    iget-object v1, p0, Lzlc/season/rxdownload3/core/RangeTargetFile;->realFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    return-void
.end method

.method public final save(Lretrofit2/Response;Lzlc/season/rxdownload3/core/RangeTmpFile$Segment;Lzlc/season/rxdownload3/core/RangeTmpFile;)Lio/reactivex/Flowable;
    .registers 5
    .param p1    # Lretrofit2/Response;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lzlc/season/rxdownload3/core/RangeTmpFile$Segment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lzlc/season/rxdownload3/core/RangeTmpFile;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "Lokhttp3/ResponseBody;",
            ">;",
            "Lzlc/season/rxdownload3/core/RangeTmpFile$Segment;",
            "Lzlc/season/rxdownload3/core/RangeTmpFile;",
            ")",
            "Lio/reactivex/Flowable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "segment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tmpFile"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lokhttp3/ResponseBody;

    if-eqz p1, :cond_2f

    const-string v0, "response.body() ?: throw\u2026(\"Response body is NULL\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    new-instance v0, Lzlc/season/rxdownload3/core/RangeTargetFile$save$1;

    invoke-direct {v0, p0, p1, p3, p2}, Lzlc/season/rxdownload3/core/RangeTargetFile$save$1;-><init>(Lzlc/season/rxdownload3/core/RangeTargetFile;Lokhttp3/ResponseBody;Lzlc/season/rxdownload3/core/RangeTmpFile;Lzlc/season/rxdownload3/core/RangeTmpFile$Segment;)V

    check-cast v0, Lio/reactivex/FlowableOnSubscribe;

    .line 106
    sget-object p1, Lio/reactivex/BackpressureStrategy;->LATEST:Lio/reactivex/BackpressureStrategy;

    .line 60
    invoke-static {v0, p1}, Lio/reactivex/Flowable;->create(Lio/reactivex/FlowableOnSubscribe;Lio/reactivex/BackpressureStrategy;)Lio/reactivex/Flowable;

    move-result-object p1

    const-string p2, "Flowable.create<Any>({\n \u2026     }\n        }, LATEST)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 58
    :cond_2f
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Response body is NULL"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method
