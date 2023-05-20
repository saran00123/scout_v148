.class public final Lzlc/season/rxdownload3/core/RangeTmpFile$FileStructure;
.super Ljava/lang/Object;
.source "RangeTmpFile.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzlc/season/rxdownload3/core/RangeTmpFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FileStructure"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRangeTmpFile.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RangeTmpFile.kt\nzlc/season/rxdownload3/core/RangeTmpFile$FileStructure\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,215:1\n1494#2,3:216\n*E\n*S KotlinDebug\n*F\n+ 1 RangeTmpFile.kt\nzlc/season/rxdownload3/core/RangeTmpFile$FileStructure\n*L\n169#1,3:216\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0018\u001a\u00020\u0010H\u0002J\u0010\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0002J\u0006\u0010\u001d\u001a\u00020\u001eJ\u000e\u0010\u001f\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cJ\u000e\u0010 \u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cJ\u0006\u0010!\u001a\u00020\u0010J\u000e\u0010\"\u001a\u00020\u001a2\u0006\u0010#\u001a\u00020$J\u000e\u0010%\u001a\u00020\u001a2\u0006\u0010#\u001a\u00020$R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0005\u001a\n \u0007*\u0004\u0018\u00010\u00060\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R \u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0012\"\u0004\u0008\u0017\u0010\u0014\u00a8\u0006&"
    }
    d2 = {
        "Lzlc/season/rxdownload3/core/RangeTmpFile$FileStructure;",
        "",
        "(Lzlc/season/rxdownload3/core/RangeTmpFile;)V",
        "FILE_HEADER_MAGIC_NUMBER",
        "",
        "FILE_HEADER_MAGIC_NUMBER_HEX",
        "Lokio/ByteString;",
        "kotlin.jvm.PlatformType",
        "segments",
        "",
        "Lzlc/season/rxdownload3/core/RangeTmpFile$Segment;",
        "getSegments",
        "()Ljava/util/List;",
        "setSegments",
        "(Ljava/util/List;)V",
        "totalSegments",
        "",
        "getTotalSegments",
        "()J",
        "setTotalSegments",
        "(J)V",
        "totalSize",
        "getTotalSize",
        "setTotalSize",
        "calculateSegments",
        "checkFileHeader",
        "",
        "source",
        "Lokio/BufferedSource;",
        "isFinish",
        "",
        "readHeader",
        "readSegments",
        "size",
        "writeHeader",
        "sink",
        "Lokio/BufferedSink;",
        "writeSegments",
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
.field private final FILE_HEADER_MAGIC_NUMBER:Ljava/lang/String;

.field private final FILE_HEADER_MAGIC_NUMBER_HEX:Lokio/ByteString;

.field private segments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzlc/season/rxdownload3/core/RangeTmpFile$Segment;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Lzlc/season/rxdownload3/core/RangeTmpFile;

.field private totalSegments:J

.field private totalSize:J


# direct methods
.method public constructor <init>(Lzlc/season/rxdownload3/core/RangeTmpFile;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 102
    iput-object p1, p0, Lzlc/season/rxdownload3/core/RangeTmpFile$FileStructure;->this$0:Lzlc/season/rxdownload3/core/RangeTmpFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "a1b2c3d4e5f6"

    .line 103
    iput-object p1, p0, Lzlc/season/rxdownload3/core/RangeTmpFile$FileStructure;->FILE_HEADER_MAGIC_NUMBER:Ljava/lang/String;

    .line 104
    iget-object p1, p0, Lzlc/season/rxdownload3/core/RangeTmpFile$FileStructure;->FILE_HEADER_MAGIC_NUMBER:Ljava/lang/String;

    invoke-static {p1}, Lokio/ByteString;->decodeHex(Ljava/lang/String;)Lokio/ByteString;

    move-result-object p1

    iput-object p1, p0, Lzlc/season/rxdownload3/core/RangeTmpFile$FileStructure;->FILE_HEADER_MAGIC_NUMBER_HEX:Lokio/ByteString;

    .line 109
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lzlc/season/rxdownload3/core/RangeTmpFile$FileStructure;->segments:Ljava/util/List;

    return-void
.end method

.method private final calculateSegments()J
    .registers 5

    .line 180
    iget-object v0, p0, Lzlc/season/rxdownload3/core/RangeTmpFile$FileStructure;->this$0:Lzlc/season/rxdownload3/core/RangeTmpFile;

    invoke-virtual {v0}, Lzlc/season/rxdownload3/core/RangeTmpFile;->getMission()Lzlc/season/rxdownload3/core/RealMission;

    move-result-object v0

    invoke-virtual {v0}, Lzlc/season/rxdownload3/core/RealMission;->getTotalSize()J

    move-result-wide v0

    sget-object v2, Lzlc/season/rxdownload3/core/DownloadConfig;->INSTANCE:Lzlc/season/rxdownload3/core/DownloadConfig;

    invoke-virtual {v2}, Lzlc/season/rxdownload3/core/DownloadConfig;->getRangeDownloadSize$rxdownload3_release()J

    move-result-wide v2

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_29

    .line 182
    iget-object v0, p0, Lzlc/season/rxdownload3/core/RangeTmpFile$FileStructure;->this$0:Lzlc/season/rxdownload3/core/RangeTmpFile;

    invoke-virtual {v0}, Lzlc/season/rxdownload3/core/RangeTmpFile;->getMission()Lzlc/season/rxdownload3/core/RealMission;

    move-result-object v0

    invoke-virtual {v0}, Lzlc/season/rxdownload3/core/RealMission;->getTotalSize()J

    move-result-wide v0

    sget-object v2, Lzlc/season/rxdownload3/core/DownloadConfig;->INSTANCE:Lzlc/season/rxdownload3/core/DownloadConfig;

    invoke-virtual {v2}, Lzlc/season/rxdownload3/core/DownloadConfig;->getRangeDownloadSize$rxdownload3_release()J

    move-result-wide v2

    div-long/2addr v0, v2

    goto :goto_3d

    .line 184
    :cond_29
    iget-object v0, p0, Lzlc/season/rxdownload3/core/RangeTmpFile$FileStructure;->this$0:Lzlc/season/rxdownload3/core/RangeTmpFile;

    invoke-virtual {v0}, Lzlc/season/rxdownload3/core/RangeTmpFile;->getMission()Lzlc/season/rxdownload3/core/RealMission;

    move-result-object v0

    invoke-virtual {v0}, Lzlc/season/rxdownload3/core/RealMission;->getTotalSize()J

    move-result-wide v0

    sget-object v2, Lzlc/season/rxdownload3/core/DownloadConfig;->INSTANCE:Lzlc/season/rxdownload3/core/DownloadConfig;

    invoke-virtual {v2}, Lzlc/season/rxdownload3/core/DownloadConfig;->getRangeDownloadSize$rxdownload3_release()J

    move-result-wide v2

    div-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    :goto_3d
    return-wide v0
.end method

.method private final checkFileHeader(Lokio/BufferedSource;)V
    .registers 4

    .line 173
    iget-object v0, p0, Lzlc/season/rxdownload3/core/RangeTmpFile$FileStructure;->FILE_HEADER_MAGIC_NUMBER_HEX:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object p1

    .line 174
    iget-object v0, p0, Lzlc/season/rxdownload3/core/RangeTmpFile$FileStructure;->FILE_HEADER_MAGIC_NUMBER:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-nez p1, :cond_1a

    return-void

    .line 175
    :cond_1a
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lzlc/season/rxdownload3/core/RangeTmpFile$FileStructure;->this$0:Lzlc/season/rxdownload3/core/RangeTmpFile;

    invoke-static {v1}, Lzlc/season/rxdownload3/core/RangeTmpFile;->access$getFile$p(Lzlc/season/rxdownload3/core/RangeTmpFile;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " not a tmp file"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method


# virtual methods
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

    .line 109
    iget-object v0, p0, Lzlc/season/rxdownload3/core/RangeTmpFile$FileStructure;->segments:Ljava/util/List;

    return-object v0
.end method

.method public final getTotalSegments()J
    .registers 3

    .line 107
    iget-wide v0, p0, Lzlc/season/rxdownload3/core/RangeTmpFile$FileStructure;->totalSegments:J

    return-wide v0
.end method

.method public final getTotalSize()J
    .registers 3

    .line 106
    iget-wide v0, p0, Lzlc/season/rxdownload3/core/RangeTmpFile$FileStructure;->totalSize:J

    return-wide v0
.end method

.method public final isFinish()Z
    .registers 4

    .line 165
    iget-object v0, p0, Lzlc/season/rxdownload3/core/RangeTmpFile$FileStructure;->segments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 169
    :cond_a
    iget-object v0, p0, Lzlc/season/rxdownload3/core/RangeTmpFile$FileStructure;->segments:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 216
    instance-of v2, v0, Ljava/util/Collection;

    if-eqz v2, :cond_1c

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1c

    goto :goto_33

    .line 217
    :cond_1c
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzlc/season/rxdownload3/core/RangeTmpFile$Segment;

    .line 169
    invoke-virtual {v2}, Lzlc/season/rxdownload3/core/RangeTmpFile$Segment;->isComplete()Z

    move-result v2

    if-eqz v2, :cond_20

    const/4 v1, 0x1

    :cond_33
    :goto_33
    return v1
.end method

.method public final readHeader(Lokio/BufferedSource;)V
    .registers 4
    .param p1    # Lokio/BufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    invoke-direct {p0, p1}, Lzlc/season/rxdownload3/core/RangeTmpFile$FileStructure;->checkFileHeader(Lokio/BufferedSource;)V

    .line 126
    invoke-interface {p1}, Lokio/BufferedSource;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lzlc/season/rxdownload3/core/RangeTmpFile$FileStructure;->totalSize:J

    .line 127
    invoke-interface {p1}, Lokio/BufferedSource;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lzlc/season/rxdownload3/core/RangeTmpFile$FileStructure;->totalSegments:J

    return-void
.end method

.method public final readSegments(Lokio/BufferedSource;)V
    .registers 20
    .param p1    # Lokio/BufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "source"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    iget-object v2, v0, Lzlc/season/rxdownload3/core/RangeTmpFile$FileStructure;->segments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 151
    iget-wide v2, v0, Lzlc/season/rxdownload3/core/RangeTmpFile$FileStructure;->totalSegments:J

    const-wide/16 v4, 0x0

    :goto_12
    cmp-long v6, v4, v2

    if-gez v6, :cond_3f

    .line 152
    new-instance v6, Lokio/Buffer;

    invoke-direct {v6}, Lokio/Buffer;-><init>()V

    const-wide/16 v7, 0x20

    .line 153
    invoke-interface {v1, v6, v7, v8}, Lokio/BufferedSource;->readFully(Lokio/Buffer;J)V

    .line 155
    invoke-virtual {v6}, Lokio/Buffer;->readLong()J

    move-result-wide v10

    .line 156
    invoke-virtual {v6}, Lokio/Buffer;->readLong()J

    move-result-wide v12

    .line 157
    invoke-virtual {v6}, Lokio/Buffer;->readLong()J

    move-result-wide v14

    .line 158
    invoke-virtual {v6}, Lokio/Buffer;->readLong()J

    move-result-wide v16

    .line 160
    iget-object v6, v0, Lzlc/season/rxdownload3/core/RangeTmpFile$FileStructure;->segments:Ljava/util/List;

    new-instance v7, Lzlc/season/rxdownload3/core/RangeTmpFile$Segment;

    move-object v9, v7

    invoke-direct/range {v9 .. v17}, Lzlc/season/rxdownload3/core/RangeTmpFile$Segment;-><init>(JJJJ)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    goto :goto_12

    :cond_3f
    return-void
.end method

.method public final setSegments(Ljava/util/List;)V
    .registers 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzlc/season/rxdownload3/core/RangeTmpFile$Segment;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iput-object p1, p0, Lzlc/season/rxdownload3/core/RangeTmpFile$FileStructure;->segments:Ljava/util/List;

    return-void
.end method

.method public final setTotalSegments(J)V
    .registers 3

    .line 107
    iput-wide p1, p0, Lzlc/season/rxdownload3/core/RangeTmpFile$FileStructure;->totalSegments:J

    return-void
.end method

.method public final setTotalSize(J)V
    .registers 3

    .line 106
    iput-wide p1, p0, Lzlc/season/rxdownload3/core/RangeTmpFile$FileStructure;->totalSize:J

    return-void
.end method

.method public final size()J
    .registers 5

    .line 112
    iget-object v0, p0, Lzlc/season/rxdownload3/core/RangeTmpFile$FileStructure;->FILE_HEADER_MAGIC_NUMBER_HEX:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final writeHeader(Lokio/BufferedSink;)V
    .registers 4
    .param p1    # Lokio/BufferedSink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lzlc/season/rxdownload3/core/RangeTmpFile$FileStructure;->this$0:Lzlc/season/rxdownload3/core/RangeTmpFile;

    invoke-virtual {v0}, Lzlc/season/rxdownload3/core/RangeTmpFile;->getMission()Lzlc/season/rxdownload3/core/RealMission;

    move-result-object v0

    invoke-virtual {v0}, Lzlc/season/rxdownload3/core/RealMission;->getTotalSize()J

    move-result-wide v0

    iput-wide v0, p0, Lzlc/season/rxdownload3/core/RangeTmpFile$FileStructure;->totalSize:J

    .line 117
    invoke-direct {p0}, Lzlc/season/rxdownload3/core/RangeTmpFile$FileStructure;->calculateSegments()J

    move-result-wide v0

    iput-wide v0, p0, Lzlc/season/rxdownload3/core/RangeTmpFile$FileStructure;->totalSegments:J

    .line 119
    iget-object v0, p0, Lzlc/season/rxdownload3/core/RangeTmpFile$FileStructure;->FILE_HEADER_MAGIC_NUMBER_HEX:Lokio/ByteString;

    invoke-interface {p1, v0}, Lokio/BufferedSink;->write(Lokio/ByteString;)Lokio/BufferedSink;

    .line 120
    iget-wide v0, p0, Lzlc/season/rxdownload3/core/RangeTmpFile$FileStructure;->totalSize:J

    invoke-interface {p1, v0, v1}, Lokio/BufferedSink;->writeLong(J)Lokio/BufferedSink;

    .line 121
    iget-wide v0, p0, Lzlc/season/rxdownload3/core/RangeTmpFile$FileStructure;->totalSegments:J

    invoke-interface {p1, v0, v1}, Lokio/BufferedSink;->writeLong(J)Lokio/BufferedSink;

    return-void
.end method

.method public final writeSegments(Lokio/BufferedSink;)V
    .registers 23
    .param p1    # Lokio/BufferedSink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "sink"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    iget-object v2, v0, Lzlc/season/rxdownload3/core/RangeTmpFile$FileStructure;->segments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 135
    iget-wide v2, v0, Lzlc/season/rxdownload3/core/RangeTmpFile$FileStructure;->totalSegments:J

    const-wide/16 v4, 0x0

    move-wide v15, v4

    :goto_13
    cmp-long v6, v4, v2

    if-gez v6, :cond_5a

    .line 136
    iget-wide v6, v0, Lzlc/season/rxdownload3/core/RangeTmpFile$FileStructure;->totalSegments:J

    const-wide/16 v17, 0x1

    sub-long v6, v6, v17

    cmp-long v6, v4, v6

    if-nez v6, :cond_2c

    .line 137
    iget-object v6, v0, Lzlc/season/rxdownload3/core/RangeTmpFile$FileStructure;->this$0:Lzlc/season/rxdownload3/core/RangeTmpFile;

    invoke-virtual {v6}, Lzlc/season/rxdownload3/core/RangeTmpFile;->getMission()Lzlc/season/rxdownload3/core/RealMission;

    move-result-object v6

    invoke-virtual {v6}, Lzlc/season/rxdownload3/core/RealMission;->getTotalSize()J

    move-result-wide v6

    goto :goto_33

    .line 139
    :cond_2c
    sget-object v6, Lzlc/season/rxdownload3/core/DownloadConfig;->INSTANCE:Lzlc/season/rxdownload3/core/DownloadConfig;

    invoke-virtual {v6}, Lzlc/season/rxdownload3/core/DownloadConfig;->getRangeDownloadSize$rxdownload3_release()J

    move-result-wide v6

    add-long/2addr v6, v15

    :goto_33
    sub-long v6, v6, v17

    move-wide v13, v6

    .line 142
    iget-object v11, v0, Lzlc/season/rxdownload3/core/RangeTmpFile$FileStructure;->segments:Ljava/util/List;

    new-instance v12, Lzlc/season/rxdownload3/core/RangeTmpFile$Segment;

    move-object v6, v12

    move-wide v7, v4

    move-wide v9, v15

    move-wide/from16 v19, v2

    move-object v0, v11

    move-object v2, v12

    move-wide v11, v15

    invoke-direct/range {v6 .. v14}, Lzlc/season/rxdownload3/core/RangeTmpFile$Segment;-><init>(JJJJ)V

    invoke-virtual {v2, v1}, Lzlc/season/rxdownload3/core/RangeTmpFile$Segment;->write(Lokio/BufferedSink;)Lzlc/season/rxdownload3/core/RangeTmpFile$Segment;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    sget-object v0, Lzlc/season/rxdownload3/core/DownloadConfig;->INSTANCE:Lzlc/season/rxdownload3/core/DownloadConfig;

    invoke-virtual {v0}, Lzlc/season/rxdownload3/core/DownloadConfig;->getRangeDownloadSize$rxdownload3_release()J

    move-result-wide v2

    add-long/2addr v15, v2

    add-long v4, v4, v17

    move-object/from16 v0, p0

    move-wide/from16 v2, v19

    goto :goto_13

    :cond_5a
    return-void
.end method
