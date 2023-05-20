.class public final Lzlc/season/rxdownload3/core/RangeTmpFile;
.super Ljava/lang/Object;
.source "RangeTmpFile.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzlc/season/rxdownload3/core/RangeTmpFile$FileStructure;,
        Lzlc/season/rxdownload3/core/RangeTmpFile$Segment;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRangeTmpFile.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RangeTmpFile.kt\nzlc/season/rxdownload3/core/RangeTmpFile\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,215:1\n1586#2,2:216\n*E\n*S KotlinDebug\n*F\n+ 1 RangeTmpFile.kt\nzlc/season/rxdownload3/core/RangeTmpFile\n*L\n92#1,2:216\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001:\u0002!\"B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u0010\u001a\u00020\u0011J\u0006\u0010\u0012\u001a\u00020\u000cJ\u0006\u0010\u0013\u001a\u00020\u0011J\u0006\u0010\u0014\u001a\u00020\u0006J\u000e\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018J\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u001aJ\u0006\u0010\u001b\u001a\u00020\u001cJ\u0006\u0010\u001d\u001a\u00020\u001cJ\u0008\u0010\u001e\u001a\u00020\u0011H\u0002J\u0006\u0010\u001f\u001a\u00020\u0011J\u0008\u0010 \u001a\u00020\u0011H\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00060\u0008R\u00020\u0000X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006#"
    }
    d2 = {
        "Lzlc/season/rxdownload3/core/RangeTmpFile;",
        "",
        "mission",
        "Lzlc/season/rxdownload3/core/RealMission;",
        "(Lzlc/season/rxdownload3/core/RealMission;)V",
        "file",
        "Ljava/io/File;",
        "fileStructure",
        "Lzlc/season/rxdownload3/core/RangeTmpFile$FileStructure;",
        "getMission",
        "()Lzlc/season/rxdownload3/core/RealMission;",
        "status",
        "Lzlc/season/rxdownload3/core/Status;",
        "tmpDirPath",
        "",
        "tmpFilePath",
        "checkFile",
        "",
        "currentStatus",
        "delete",
        "getFile",
        "getPosition",
        "",
        "segment",
        "Lzlc/season/rxdownload3/core/RangeTmpFile$Segment;",
        "getSegments",
        "",
        "isExists",
        "",
        "isFinish",
        "readStructure",
        "reset",
        "writeStructure",
        "FileStructure",
        "Segment",
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
.field private final file:Ljava/io/File;

.field private final fileStructure:Lzlc/season/rxdownload3/core/RangeTmpFile$FileStructure;

.field private final mission:Lzlc/season/rxdownload3/core/RealMission;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final status:Lzlc/season/rxdownload3/core/Status;

.field private final tmpDirPath:Ljava/lang/String;

.field private final tmpFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lzlc/season/rxdownload3/core/RealMission;)V
    .registers 10
    .param p1    # Lzlc/season/rxdownload3/core/RealMission;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "mission"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzlc/season/rxdownload3/core/RangeTmpFile;->mission:Lzlc/season/rxdownload3/core/RealMission;

    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lzlc/season/rxdownload3/core/RangeTmpFile;->mission:Lzlc/season/rxdownload3/core/RealMission;

    invoke-virtual {v0}, Lzlc/season/rxdownload3/core/RealMission;->getActual()Lzlc/season/rxdownload3/core/Mission;

    move-result-object v0

    invoke-virtual {v0}, Lzlc/season/rxdownload3/core/Mission;->getSavePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".TMP"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lzlc/season/rxdownload3/core/RangeTmpFile;->tmpDirPath:Ljava/lang/String;

    .line 17
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lzlc/season/rxdownload3/core/RangeTmpFile;->tmpDirPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lzlc/season/rxdownload3/core/RangeTmpFile;->mission:Lzlc/season/rxdownload3/core/RealMission;

    invoke-virtual {v0}, Lzlc/season/rxdownload3/core/RealMission;->getActual()Lzlc/season/rxdownload3/core/Mission;

    move-result-object v0

    invoke-virtual {v0}, Lzlc/season/rxdownload3/core/Mission;->getSaveName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".tmp"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lzlc/season/rxdownload3/core/RangeTmpFile;->tmpFilePath:Ljava/lang/String;

    .line 19
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lzlc/season/rxdownload3/core/RangeTmpFile;->tmpFilePath:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lzlc/season/rxdownload3/core/RangeTmpFile;->file:Ljava/io/File;

    .line 21
    new-instance p1, Lzlc/season/rxdownload3/core/RangeTmpFile$FileStructure;

    invoke-direct {p1, p0}, Lzlc/season/rxdownload3/core/RangeTmpFile$FileStructure;-><init>(Lzlc/season/rxdownload3/core/RangeTmpFile;)V

    iput-object p1, p0, Lzlc/season/rxdownload3/core/RangeTmpFile;->fileStructure:Lzlc/season/rxdownload3/core/RangeTmpFile$FileStructure;

    .line 23
    new-instance p1, Lzlc/season/rxdownload3/core/Status;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lzlc/season/rxdownload3/core/Status;-><init>(JJZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lzlc/season/rxdownload3/core/RangeTmpFile;->status:Lzlc/season/rxdownload3/core/Status;

    .line 26
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lzlc/season/rxdownload3/core/RangeTmpFile;->tmpDirPath:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_85

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_88

    .line 28
    :cond_85
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 31
    :cond_88
    iget-object p1, p0, Lzlc/season/rxdownload3/core/RangeTmpFile;->file:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_93

    .line 32
    invoke-direct {p0}, Lzlc/season/rxdownload3/core/RangeTmpFile;->readStructure()V

    :cond_93
    return-void
.end method

.method public static final synthetic access$getFile$p(Lzlc/season/rxdownload3/core/RangeTmpFile;)Ljava/io/File;
    .registers 1

    .line 15
    iget-object p0, p0, Lzlc/season/rxdownload3/core/RangeTmpFile;->file:Ljava/io/File;

    return-object p0
.end method

.method private final readStructure()V
    .registers 6

    .line 58
    iget-object v0, p0, Lzlc/season/rxdownload3/core/RangeTmpFile;->file:Ljava/io/File;

    invoke-static {v0}, Lokio/Okio;->source(Ljava/io/File;)Lokio/Source;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    check-cast v0, Ljava/io/Closeable;

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Throwable;

    :try_start_f
    move-object v2, v0

    check-cast v2, Lokio/BufferedSource;

    .line 59
    iget-object v3, p0, Lzlc/season/rxdownload3/core/RangeTmpFile;->fileStructure:Lzlc/season/rxdownload3/core/RangeTmpFile$FileStructure;

    const-string v4, "it"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lzlc/season/rxdownload3/core/RangeTmpFile$FileStructure;->readHeader(Lokio/BufferedSource;)V

    .line 60
    iget-object v3, p0, Lzlc/season/rxdownload3/core/RangeTmpFile;->fileStructure:Lzlc/season/rxdownload3/core/RangeTmpFile$FileStructure;

    invoke-virtual {v3, v2}, Lzlc/season/rxdownload3/core/RangeTmpFile$FileStructure;->readSegments(Lokio/BufferedSource;)V

    .line 61
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_23} :catch_29
    .catchall {:try_start_f .. :try_end_23} :catchall_27

    .line 58
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_27
    move-exception v2

    goto :goto_2b

    :catch_29
    move-exception v1

    :try_start_2a
    throw v1
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_27

    :goto_2b
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private final writeStructure()V
    .registers 6

    .line 65
    iget-object v0, p0, Lzlc/season/rxdownload3/core/RangeTmpFile;->file:Ljava/io/File;

    invoke-static {v0}, Lokio/Okio;->sink(Ljava/io/File;)Lokio/Sink;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v0

    check-cast v0, Ljava/io/Closeable;

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Throwable;

    :try_start_f
    move-object v2, v0

    check-cast v2, Lokio/BufferedSink;

    .line 66
    iget-object v3, p0, Lzlc/season/rxdownload3/core/RangeTmpFile;->fileStructure:Lzlc/season/rxdownload3/core/RangeTmpFile$FileStructure;

    const-string v4, "it"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lzlc/season/rxdownload3/core/RangeTmpFile$FileStructure;->writeHeader(Lokio/BufferedSink;)V

    .line 67
    iget-object v3, p0, Lzlc/season/rxdownload3/core/RangeTmpFile;->fileStructure:Lzlc/season/rxdownload3/core/RangeTmpFile$FileStructure;

    invoke-virtual {v3, v2}, Lzlc/season/rxdownload3/core/RangeTmpFile$FileStructure;->writeSegments(Lokio/BufferedSink;)V

    .line 68
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_23} :catch_29
    .catchall {:try_start_f .. :try_end_23} :catchall_27

    .line 65
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_27
    move-exception v2

    goto :goto_2b

    :catch_29
    move-exception v1

    :try_start_2a
    throw v1
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_27

    :goto_2b
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public final checkFile()V
    .registers 5

    .line 37
    iget-object v0, p0, Lzlc/season/rxdownload3/core/RangeTmpFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 38
    iget-object v0, p0, Lzlc/season/rxdownload3/core/RangeTmpFile;->fileStructure:Lzlc/season/rxdownload3/core/RangeTmpFile$FileStructure;

    invoke-virtual {v0}, Lzlc/season/rxdownload3/core/RangeTmpFile$FileStructure;->getTotalSize()J

    move-result-wide v0

    iget-object v2, p0, Lzlc/season/rxdownload3/core/RangeTmpFile;->mission:Lzlc/season/rxdownload3/core/RealMission;

    invoke-virtual {v2}, Lzlc/season/rxdownload3/core/RealMission;->getTotalSize()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_24

    .line 39
    invoke-virtual {p0}, Lzlc/season/rxdownload3/core/RangeTmpFile;->reset()V

    goto :goto_24

    .line 42
    :cond_1c
    iget-object v0, p0, Lzlc/season/rxdownload3/core/RangeTmpFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 43
    invoke-direct {p0}, Lzlc/season/rxdownload3/core/RangeTmpFile;->writeStructure()V

    :cond_24
    :goto_24
    return-void
.end method

.method public final currentStatus()Lzlc/season/rxdownload3/core/Status;
    .registers 11
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 89
    iget-object v0, p0, Lzlc/season/rxdownload3/core/RangeTmpFile;->fileStructure:Lzlc/season/rxdownload3/core/RangeTmpFile$FileStructure;

    invoke-virtual {v0}, Lzlc/season/rxdownload3/core/RangeTmpFile$FileStructure;->getTotalSize()J

    move-result-wide v0

    .line 91
    invoke-virtual {p0}, Lzlc/season/rxdownload3/core/RangeTmpFile;->getSegments()Ljava/util/List;

    move-result-object v2

    .line 92
    check-cast v2, Ljava/lang/Iterable;

    .line 216
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-wide/16 v3, 0x0

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lzlc/season/rxdownload3/core/RangeTmpFile$Segment;

    .line 93
    invoke-virtual {v5}, Lzlc/season/rxdownload3/core/RangeTmpFile$Segment;->getCurrent()J

    move-result-wide v6

    invoke-virtual {v5}, Lzlc/season/rxdownload3/core/RangeTmpFile$Segment;->getStart()J

    move-result-wide v8

    sub-long/2addr v6, v8

    add-long/2addr v3, v6

    goto :goto_12

    .line 96
    :cond_29
    iget-object v2, p0, Lzlc/season/rxdownload3/core/RangeTmpFile;->status:Lzlc/season/rxdownload3/core/Status;

    invoke-virtual {v2, v3, v4}, Lzlc/season/rxdownload3/core/Status;->setDownloadSize(J)V

    .line 97
    iget-object v2, p0, Lzlc/season/rxdownload3/core/RangeTmpFile;->status:Lzlc/season/rxdownload3/core/Status;

    invoke-virtual {v2, v0, v1}, Lzlc/season/rxdownload3/core/Status;->setTotalSize(J)V

    .line 99
    iget-object v0, p0, Lzlc/season/rxdownload3/core/RangeTmpFile;->status:Lzlc/season/rxdownload3/core/Status;

    return-object v0
.end method

.method public final delete()V
    .registers 2

    .line 72
    iget-object v0, p0, Lzlc/season/rxdownload3/core/RangeTmpFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lzlc/season/rxdownload3/core/RangeTmpFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_d
    return-void
.end method

.method public final getFile()Ljava/io/File;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 76
    iget-object v0, p0, Lzlc/season/rxdownload3/core/RangeTmpFile;->file:Ljava/io/File;

    return-object v0
.end method

.method public final getMission()Lzlc/season/rxdownload3/core/RealMission;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 15
    iget-object v0, p0, Lzlc/season/rxdownload3/core/RangeTmpFile;->mission:Lzlc/season/rxdownload3/core/RealMission;

    return-object v0
.end method

.method public final getPosition(Lzlc/season/rxdownload3/core/RangeTmpFile$Segment;)J
    .registers 8
    .param p1    # Lzlc/season/rxdownload3/core/RangeTmpFile$Segment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "segment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lzlc/season/rxdownload3/core/RangeTmpFile;->fileStructure:Lzlc/season/rxdownload3/core/RangeTmpFile$FileStructure;

    invoke-virtual {v0}, Lzlc/season/rxdownload3/core/RangeTmpFile$FileStructure;->size()J

    move-result-wide v0

    invoke-virtual {p1}, Lzlc/season/rxdownload3/core/RangeTmpFile$Segment;->getIndex()J

    move-result-wide v2

    const-wide/16 v4, 0x20

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final getSegments()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lzlc/season/rxdownload3/core/RangeTmpFile$Segment;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 80
    iget-object v0, p0, Lzlc/season/rxdownload3/core/RangeTmpFile;->fileStructure:Lzlc/season/rxdownload3/core/RangeTmpFile$FileStructure;

    invoke-virtual {v0}, Lzlc/season/rxdownload3/core/RangeTmpFile$FileStructure;->getSegments()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final isExists()Z
    .registers 2

    .line 213
    iget-object v0, p0, Lzlc/season/rxdownload3/core/RangeTmpFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public final isFinish()Z
    .registers 2

    .line 54
    iget-object v0, p0, Lzlc/season/rxdownload3/core/RangeTmpFile;->fileStructure:Lzlc/season/rxdownload3/core/RangeTmpFile$FileStructure;

    invoke-virtual {v0}, Lzlc/season/rxdownload3/core/RangeTmpFile$FileStructure;->isFinish()Z

    move-result v0

    return v0
.end method

.method public final reset()V
    .registers 2

    .line 48
    iget-object v0, p0, Lzlc/season/rxdownload3/core/RangeTmpFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 49
    iget-object v0, p0, Lzlc/season/rxdownload3/core/RangeTmpFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 50
    invoke-direct {p0}, Lzlc/season/rxdownload3/core/RangeTmpFile;->writeStructure()V

    return-void
.end method
