.class final Lzlc/season/rxdownload3/core/RangeTargetFile$save$1;
.super Ljava/lang/Object;
.source "RangeTargetFile.kt"

# interfaces
.implements Lio/reactivex/FlowableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzlc/season/rxdownload3/core/RangeTargetFile;->save(Lretrofit2/Response;Lzlc/season/rxdownload3/core/RangeTmpFile$Segment;Lzlc/season/rxdownload3/core/RangeTmpFile;)Lio/reactivex/Flowable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/FlowableOnSubscribe<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRangeTargetFile.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RangeTargetFile.kt\nzlc/season/rxdownload3/core/RangeTargetFile$save$1\n*L\n1#1,120:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0014\u0010\u0002\u001a\u0010\u0012\u000c\u0012\n \u0005*\u0004\u0018\u00010\u00040\u00040\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lio/reactivex/FlowableEmitter;",
        "",
        "kotlin.jvm.PlatformType",
        "subscribe"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $respBody:Lokhttp3/ResponseBody;

.field final synthetic $segment:Lzlc/season/rxdownload3/core/RangeTmpFile$Segment;

.field final synthetic $tmpFile:Lzlc/season/rxdownload3/core/RangeTmpFile;

.field final synthetic this$0:Lzlc/season/rxdownload3/core/RangeTargetFile;


# direct methods
.method constructor <init>(Lzlc/season/rxdownload3/core/RangeTargetFile;Lokhttp3/ResponseBody;Lzlc/season/rxdownload3/core/RangeTmpFile;Lzlc/season/rxdownload3/core/RangeTmpFile$Segment;)V
    .registers 5

    iput-object p1, p0, Lzlc/season/rxdownload3/core/RangeTargetFile$save$1;->this$0:Lzlc/season/rxdownload3/core/RangeTargetFile;

    iput-object p2, p0, Lzlc/season/rxdownload3/core/RangeTargetFile$save$1;->$respBody:Lokhttp3/ResponseBody;

    iput-object p3, p0, Lzlc/season/rxdownload3/core/RangeTargetFile$save$1;->$tmpFile:Lzlc/season/rxdownload3/core/RangeTmpFile;

    iput-object p4, p0, Lzlc/season/rxdownload3/core/RangeTargetFile$save$1;->$segment:Lzlc/season/rxdownload3/core/RangeTmpFile$Segment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/FlowableEmitter;)V
    .registers 28
    .param p1    # Lio/reactivex/FlowableEmitter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/FlowableEmitter<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "it"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iget-object v2, v1, Lzlc/season/rxdownload3/core/RangeTargetFile$save$1;->this$0:Lzlc/season/rxdownload3/core/RangeTargetFile;

    invoke-static {v2}, Lzlc/season/rxdownload3/core/RangeTargetFile;->access$getBUFFER_SIZE$p(Lzlc/season/rxdownload3/core/RangeTargetFile;)I

    move-result v2

    new-array v2, v2, [B

    .line 63
    iget-object v3, v1, Lzlc/season/rxdownload3/core/RangeTargetFile$save$1;->$respBody:Lokhttp3/ResponseBody;

    invoke-virtual {v3}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v3

    check-cast v3, Ljava/io/Closeable;

    const/4 v4, 0x0

    move-object v5, v4

    check-cast v5, Ljava/lang/Throwable;

    :try_start_1d
    move-object v6, v3

    check-cast v6, Ljava/io/InputStream;

    .line 64
    new-instance v7, Ljava/io/RandomAccessFile;

    iget-object v8, v1, Lzlc/season/rxdownload3/core/RangeTargetFile$save$1;->this$0:Lzlc/season/rxdownload3/core/RangeTargetFile;

    invoke-static {v8}, Lzlc/season/rxdownload3/core/RangeTargetFile;->access$getShadowFile$p(Lzlc/season/rxdownload3/core/RangeTargetFile;)Ljava/io/File;

    move-result-object v8

    iget-object v9, v1, Lzlc/season/rxdownload3/core/RangeTargetFile$save$1;->this$0:Lzlc/season/rxdownload3/core/RangeTargetFile;

    invoke-static {v9}, Lzlc/season/rxdownload3/core/RangeTargetFile;->access$getMODE$p(Lzlc/season/rxdownload3/core/RangeTargetFile;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    check-cast v7, Ljava/io/Closeable;

    move-object v8, v4

    check-cast v8, Ljava/lang/Throwable;
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_36} :catch_1cd
    .catchall {:try_start_1d .. :try_end_36} :catchall_1cb

    :try_start_36
    move-object v9, v7

    check-cast v9, Ljava/io/RandomAccessFile;

    .line 65
    new-instance v10, Ljava/io/RandomAccessFile;

    iget-object v11, v1, Lzlc/season/rxdownload3/core/RangeTargetFile$save$1;->$tmpFile:Lzlc/season/rxdownload3/core/RangeTmpFile;

    invoke-virtual {v11}, Lzlc/season/rxdownload3/core/RangeTmpFile;->getFile()Ljava/io/File;

    move-result-object v11

    iget-object v12, v1, Lzlc/season/rxdownload3/core/RangeTargetFile$save$1;->this$0:Lzlc/season/rxdownload3/core/RangeTargetFile;

    invoke-static {v12}, Lzlc/season/rxdownload3/core/RangeTargetFile;->access$getMODE$p(Lzlc/season/rxdownload3/core/RangeTargetFile;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    check-cast v10, Ljava/io/Closeable;

    move-object v11, v4

    check-cast v11, Ljava/lang/Throwable;
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_4f} :catch_1c4
    .catchall {:try_start_36 .. :try_end_4f} :catchall_1c1

    :try_start_4f
    move-object v12, v10

    check-cast v12, Ljava/io/RandomAccessFile;

    .line 66
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v9

    check-cast v9, Ljava/io/Closeable;

    move-object v13, v4

    check-cast v13, Ljava/lang/Throwable;
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_5b} :catch_1b6
    .catchall {:try_start_4f .. :try_end_5b} :catchall_1b3

    :try_start_5b
    move-object/from16 v20, v9

    check-cast v20, Ljava/nio/channels/FileChannel;

    .line 67
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v12

    check-cast v12, Ljava/io/Closeable;

    check-cast v4, Ljava/lang/Throwable;
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_67} :catch_1a8
    .catchall {:try_start_5b .. :try_end_67} :catchall_1a5

    :try_start_67
    move-object v14, v12

    check-cast v14, Ljava/nio/channels/FileChannel;

    .line 70
    sget-object v15, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_67 .. :try_end_6c} :catch_19a
    .catchall {:try_start_67 .. :try_end_6c} :catchall_197

    move-object/from16 v21, v3

    .line 71
    :try_start_6e
    iget-object v3, v1, Lzlc/season/rxdownload3/core/RangeTargetFile$save$1;->$tmpFile:Lzlc/season/rxdownload3/core/RangeTmpFile;
    :try_end_70
    .catch Ljava/lang/Throwable; {:try_start_6e .. :try_end_70} :catch_192
    .catchall {:try_start_6e .. :try_end_70} :catchall_18d

    move-object/from16 v22, v5

    :try_start_72
    iget-object v5, v1, Lzlc/season/rxdownload3/core/RangeTargetFile$save$1;->$segment:Lzlc/season/rxdownload3/core/RangeTmpFile$Segment;

    invoke-virtual {v3, v5}, Lzlc/season/rxdownload3/core/RangeTmpFile;->getPosition(Lzlc/season/rxdownload3/core/RangeTmpFile$Segment;)J

    move-result-wide v16

    const-wide/16 v18, 0x20

    .line 69
    invoke-virtual/range {v14 .. v19}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v3

    .line 74
    invoke-virtual {v6, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5
    :try_end_82
    .catch Ljava/lang/Throwable; {:try_start_72 .. :try_end_82} :catch_186
    .catchall {:try_start_72 .. :try_end_82} :catchall_17f

    move/from16 v23, v5

    :goto_84
    const/4 v14, -0x1

    if-eq v5, v14, :cond_f0

    .line 77
    :try_start_87
    invoke-interface/range {p1 .. p1}, Lio/reactivex/FlowableEmitter;->isCancelled()Z

    move-result v14

    if-nez v14, :cond_f0

    .line 80
    sget-object v15, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    .line 81
    iget-object v14, v1, Lzlc/season/rxdownload3/core/RangeTargetFile$save$1;->$segment:Lzlc/season/rxdownload3/core/RangeTmpFile$Segment;

    invoke-virtual {v14}, Lzlc/season/rxdownload3/core/RangeTmpFile$Segment;->getCurrent()J

    move-result-wide v16
    :try_end_95
    .catch Ljava/lang/Throwable; {:try_start_87 .. :try_end_95} :catch_e7
    .catchall {:try_start_87 .. :try_end_95} :catchall_17f

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    int-to-long v7, v5

    move-object/from16 v14, v20

    move-wide/from16 v18, v7

    .line 79
    :try_start_9e
    invoke-virtual/range {v14 .. v19}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v14

    .line 85
    iget-object v15, v1, Lzlc/season/rxdownload3/core/RangeTargetFile$save$1;->$segment:Lzlc/season/rxdownload3/core/RangeTmpFile$Segment;

    invoke-virtual {v15}, Lzlc/season/rxdownload3/core/RangeTmpFile$Segment;->getCurrent()J

    move-result-wide v16

    add-long v7, v16, v7

    invoke-virtual {v15, v7, v8}, Lzlc/season/rxdownload3/core/RangeTmpFile$Segment;->setCurrent(J)V

    const/4 v7, 0x0

    .line 87
    invoke-virtual {v14, v2, v7, v5}, Ljava/nio/MappedByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    const/16 v5, 0x10

    .line 88
    iget-object v8, v1, Lzlc/season/rxdownload3/core/RangeTargetFile$save$1;->$segment:Lzlc/season/rxdownload3/core/RangeTmpFile$Segment;

    invoke-virtual {v8}, Lzlc/season/rxdownload3/core/RangeTmpFile$Segment;->getCurrent()J

    move-result-wide v14

    invoke-virtual {v3, v5, v14, v15}, Ljava/nio/MappedByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 90
    invoke-virtual {v6, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    add-int v8, v23, v5

    .line 93
    iget-object v14, v1, Lzlc/season/rxdownload3/core/RangeTargetFile$save$1;->this$0:Lzlc/season/rxdownload3/core/RangeTargetFile;

    invoke-static {v14}, Lzlc/season/rxdownload3/core/RangeTargetFile;->access$getTRIGGER_SIZE$p(Lzlc/season/rxdownload3/core/RangeTargetFile;)I

    move-result v14

    if-lt v8, v14, :cond_d4

    .line 94
    invoke-static {}, Lzlc/season/rxdownload3/helper/UtilsKt;->getANY()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v0, v8}, Lio/reactivex/FlowableEmitter;->onNext(Ljava/lang/Object;)V
    :try_end_d1
    .catch Ljava/lang/Throwable; {:try_start_9e .. :try_end_d1} :catch_db
    .catchall {:try_start_9e .. :try_end_d1} :catchall_16b

    move/from16 v23, v7

    goto :goto_d6

    :cond_d4
    move/from16 v23, v8

    :goto_d6
    move-object/from16 v7, v24

    move-object/from16 v8, v25

    goto :goto_84

    :catch_db
    move-exception v0

    move-object v4, v0

    move-object/from16 v3, v21

    move-object/from16 v5, v22

    move-object/from16 v7, v24

    move-object/from16 v2, v25

    goto/16 :goto_19d

    :catch_e7
    move-exception v0

    move-object v4, v0

    move-object v2, v8

    move-object/from16 v3, v21

    move-object/from16 v5, v22

    goto/16 :goto_19d

    :cond_f0
    move-object/from16 v24, v7

    move-object/from16 v25, v8

    .line 99
    :try_start_f4
    invoke-static {}, Lzlc/season/rxdownload3/helper/UtilsKt;->getANY()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/reactivex/FlowableEmitter;->onNext(Ljava/lang/Object;)V

    .line 100
    invoke-interface/range {p1 .. p1}, Lio/reactivex/FlowableEmitter;->onComplete()V

    .line 101
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_100
    .catch Ljava/lang/Throwable; {:try_start_f4 .. :try_end_100} :catch_175
    .catchall {:try_start_f4 .. :try_end_100} :catchall_16b

    .line 67
    :try_start_100
    invoke-static {v12, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 102
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_105
    .catch Ljava/lang/Throwable; {:try_start_100 .. :try_end_105} :catch_161
    .catchall {:try_start_100 .. :try_end_105} :catchall_156

    .line 66
    :try_start_105
    invoke-static {v9, v13}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 103
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_10a
    .catch Ljava/lang/Throwable; {:try_start_105 .. :try_end_10a} :catch_14b
    .catchall {:try_start_105 .. :try_end_10a} :catchall_140

    .line 65
    :try_start_10a
    invoke-static {v10, v11}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 104
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_10f
    .catch Ljava/lang/Throwable; {:try_start_10a .. :try_end_10f} :catch_137
    .catchall {:try_start_10a .. :try_end_10f} :catchall_12c

    move-object/from16 v7, v24

    move-object/from16 v2, v25

    .line 64
    :try_start_113
    invoke-static {v7, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 105
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_118
    .catch Ljava/lang/Throwable; {:try_start_113 .. :try_end_118} :catch_127
    .catchall {:try_start_113 .. :try_end_118} :catchall_120

    move-object/from16 v3, v21

    move-object/from16 v5, v22

    .line 63
    invoke-static {v3, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_120
    move-exception v0

    move-object/from16 v3, v21

    move-object/from16 v5, v22

    goto/16 :goto_1d0

    :catch_127
    move-exception v0

    move-object/from16 v3, v21

    goto/16 :goto_1ce

    :catchall_12c
    move-exception v0

    move-object/from16 v3, v21

    move-object/from16 v5, v22

    move-object/from16 v7, v24

    move-object/from16 v2, v25

    goto/16 :goto_1c7

    :catch_137
    move-exception v0

    move-object/from16 v3, v21

    move-object/from16 v5, v22

    move-object/from16 v7, v24

    goto/16 :goto_1c5

    :catchall_140
    move-exception v0

    move-object/from16 v3, v21

    move-object/from16 v5, v22

    move-object/from16 v7, v24

    move-object/from16 v2, v25

    goto/16 :goto_1bb

    :catch_14b
    move-exception v0

    move-object/from16 v3, v21

    move-object/from16 v5, v22

    move-object/from16 v7, v24

    move-object/from16 v2, v25

    goto/16 :goto_1b8

    :catchall_156
    move-exception v0

    move-object/from16 v3, v21

    move-object/from16 v5, v22

    move-object/from16 v7, v24

    move-object/from16 v2, v25

    goto/16 :goto_1ad

    :catch_161
    move-exception v0

    move-object/from16 v3, v21

    move-object/from16 v5, v22

    move-object/from16 v7, v24

    move-object/from16 v2, v25

    goto :goto_1aa

    :catchall_16b
    move-exception v0

    move-object/from16 v3, v21

    move-object/from16 v5, v22

    move-object/from16 v7, v24

    move-object/from16 v2, v25

    goto :goto_19f

    :catch_175
    move-exception v0

    move-object/from16 v3, v21

    move-object/from16 v5, v22

    move-object/from16 v7, v24

    move-object/from16 v2, v25

    goto :goto_19c

    :catchall_17f
    move-exception v0

    move-object v2, v8

    move-object/from16 v3, v21

    move-object/from16 v5, v22

    goto :goto_19f

    :catch_186
    move-exception v0

    move-object v2, v8

    move-object/from16 v3, v21

    move-object/from16 v5, v22

    goto :goto_19c

    :catchall_18d
    move-exception v0

    move-object v2, v8

    move-object/from16 v3, v21

    goto :goto_19f

    :catch_192
    move-exception v0

    move-object v2, v8

    move-object/from16 v3, v21

    goto :goto_19c

    :catchall_197
    move-exception v0

    move-object v2, v8

    goto :goto_19f

    :catch_19a
    move-exception v0

    move-object v2, v8

    :goto_19c
    move-object v4, v0

    .line 67
    :goto_19d
    :try_start_19d
    throw v4
    :try_end_19e
    .catchall {:try_start_19d .. :try_end_19e} :catchall_19e

    :catchall_19e
    move-exception v0

    :goto_19f
    :try_start_19f
    invoke-static {v12, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_1a3
    .catch Ljava/lang/Throwable; {:try_start_19f .. :try_end_1a3} :catch_1a3
    .catchall {:try_start_19f .. :try_end_1a3} :catchall_1ac

    :catch_1a3
    move-exception v0

    goto :goto_1aa

    :catchall_1a5
    move-exception v0

    move-object v2, v8

    goto :goto_1ad

    :catch_1a8
    move-exception v0

    move-object v2, v8

    :goto_1aa
    move-object v13, v0

    .line 66
    :try_start_1ab
    throw v13
    :try_end_1ac
    .catchall {:try_start_1ab .. :try_end_1ac} :catchall_1ac

    :catchall_1ac
    move-exception v0

    :goto_1ad
    :try_start_1ad
    invoke-static {v9, v13}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_1b1
    .catch Ljava/lang/Throwable; {:try_start_1ad .. :try_end_1b1} :catch_1b1
    .catchall {:try_start_1ad .. :try_end_1b1} :catchall_1ba

    :catch_1b1
    move-exception v0

    goto :goto_1b8

    :catchall_1b3
    move-exception v0

    move-object v2, v8

    goto :goto_1bb

    :catch_1b6
    move-exception v0

    move-object v2, v8

    :goto_1b8
    move-object v11, v0

    .line 65
    :try_start_1b9
    throw v11
    :try_end_1ba
    .catchall {:try_start_1b9 .. :try_end_1ba} :catchall_1ba

    :catchall_1ba
    move-exception v0

    :goto_1bb
    :try_start_1bb
    invoke-static {v10, v11}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_1bf
    .catch Ljava/lang/Throwable; {:try_start_1bb .. :try_end_1bf} :catch_1c4
    .catchall {:try_start_1bb .. :try_end_1bf} :catchall_1bf

    :catchall_1bf
    move-exception v0

    goto :goto_1c7

    :catchall_1c1
    move-exception v0

    move-object v2, v8

    goto :goto_1c7

    :catch_1c4
    move-exception v0

    :goto_1c5
    move-object v8, v0

    .line 64
    :try_start_1c6
    throw v8
    :try_end_1c7
    .catchall {:try_start_1c6 .. :try_end_1c7} :catchall_1c1

    :goto_1c7
    :try_start_1c7
    invoke-static {v7, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_1cb
    .catch Ljava/lang/Throwable; {:try_start_1c7 .. :try_end_1cb} :catch_1cd
    .catchall {:try_start_1c7 .. :try_end_1cb} :catchall_1cb

    :catchall_1cb
    move-exception v0

    goto :goto_1d0

    :catch_1cd
    move-exception v0

    :goto_1ce
    move-object v5, v0

    .line 63
    :try_start_1cf
    throw v5
    :try_end_1d0
    .catchall {:try_start_1cf .. :try_end_1d0} :catchall_1cb

    :goto_1d0
    invoke-static {v3, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method
