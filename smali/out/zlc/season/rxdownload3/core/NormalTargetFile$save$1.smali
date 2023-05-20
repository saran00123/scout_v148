.class final Lzlc/season/rxdownload3/core/NormalTargetFile$save$1;
.super Ljava/lang/Object;
.source "NormalTargetFile.kt"

# interfaces
.implements Lio/reactivex/FlowableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzlc/season/rxdownload3/core/NormalTargetFile;->save(Lretrofit2/Response;)Lio/reactivex/Flowable;
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
    value = "SMAP\nNormalTargetFile.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NormalTargetFile.kt\nzlc/season/rxdownload3/core/NormalTargetFile$save$1\n*L\n1#1,91:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0014\u0010\u0002\u001a\u0010\u0012\u000c\u0012\n \u0005*\u0004\u0018\u00010\u00040\u00040\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lio/reactivex/FlowableEmitter;",
        "Lzlc/season/rxdownload3/core/Status;",
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
.field final synthetic $byteSize:J

.field final synthetic $downloadSize:Lkotlin/jvm/internal/Ref$LongRef;

.field final synthetic $downloading:Lzlc/season/rxdownload3/core/Downloading;

.field final synthetic $respBody:Lokhttp3/ResponseBody;

.field final synthetic this$0:Lzlc/season/rxdownload3/core/NormalTargetFile;


# direct methods
.method constructor <init>(Lzlc/season/rxdownload3/core/NormalTargetFile;Lokhttp3/ResponseBody;JLkotlin/jvm/internal/Ref$LongRef;Lzlc/season/rxdownload3/core/Downloading;)V
    .registers 7

    iput-object p1, p0, Lzlc/season/rxdownload3/core/NormalTargetFile$save$1;->this$0:Lzlc/season/rxdownload3/core/NormalTargetFile;

    iput-object p2, p0, Lzlc/season/rxdownload3/core/NormalTargetFile$save$1;->$respBody:Lokhttp3/ResponseBody;

    iput-wide p3, p0, Lzlc/season/rxdownload3/core/NormalTargetFile$save$1;->$byteSize:J

    iput-object p5, p0, Lzlc/season/rxdownload3/core/NormalTargetFile$save$1;->$downloadSize:Lkotlin/jvm/internal/Ref$LongRef;

    iput-object p6, p0, Lzlc/season/rxdownload3/core/NormalTargetFile$save$1;->$downloading:Lzlc/season/rxdownload3/core/Downloading;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/FlowableEmitter;)V
    .registers 13
    .param p1    # Lio/reactivex/FlowableEmitter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/FlowableEmitter<",
            "Lzlc/season/rxdownload3/core/Status;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lzlc/season/rxdownload3/core/NormalTargetFile$save$1;->$respBody:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v0

    check-cast v0, Ljava/io/Closeable;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/lang/Throwable;

    :try_start_11
    move-object v3, v0

    check-cast v3, Lokio/BufferedSource;

    .line 65
    iget-object v4, p0, Lzlc/season/rxdownload3/core/NormalTargetFile$save$1;->this$0:Lzlc/season/rxdownload3/core/NormalTargetFile;

    invoke-static {v4}, Lzlc/season/rxdownload3/core/NormalTargetFile;->access$getShadowFile$p(Lzlc/season/rxdownload3/core/NormalTargetFile;)Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lokio/Okio;->sink(Ljava/io/File;)Lokio/Sink;

    move-result-object v4

    invoke-static {v4}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v4

    check-cast v4, Ljava/io/Closeable;

    check-cast v1, Ljava/lang/Throwable;
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_26} :catch_89
    .catchall {:try_start_11 .. :try_end_26} :catchall_87

    :try_start_26
    move-object v5, v4

    check-cast v5, Lokio/BufferedSink;

    .line 66
    invoke-interface {v5}, Lokio/BufferedSink;->buffer()Lokio/Buffer;

    move-result-object v5

    .line 67
    iget-wide v6, p0, Lzlc/season/rxdownload3/core/NormalTargetFile$save$1;->$byteSize:J

    invoke-interface {v3, v5, v6, v7}, Lokio/BufferedSource;->read(Lokio/Buffer;J)J

    move-result-wide v6

    :goto_33
    const-wide/16 v8, -0x1

    cmp-long v8, v6, v8

    if-eqz v8, :cond_5b

    .line 69
    invoke-interface {p1}, Lio/reactivex/FlowableEmitter;->isCancelled()Z

    move-result v8

    if-nez v8, :cond_5b

    .line 70
    iget-object v8, p0, Lzlc/season/rxdownload3/core/NormalTargetFile$save$1;->$downloadSize:Lkotlin/jvm/internal/Ref$LongRef;

    iget-wide v9, v8, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    add-long/2addr v9, v6

    iput-wide v9, v8, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 71
    iget-object v6, p0, Lzlc/season/rxdownload3/core/NormalTargetFile$save$1;->$downloading:Lzlc/season/rxdownload3/core/Downloading;

    iget-object v7, p0, Lzlc/season/rxdownload3/core/NormalTargetFile$save$1;->$downloadSize:Lkotlin/jvm/internal/Ref$LongRef;

    iget-wide v7, v7, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-virtual {v6, v7, v8}, Lzlc/season/rxdownload3/core/Downloading;->setDownloadSize(J)V

    .line 73
    iget-object v6, p0, Lzlc/season/rxdownload3/core/NormalTargetFile$save$1;->$downloading:Lzlc/season/rxdownload3/core/Downloading;

    invoke-interface {p1, v6}, Lio/reactivex/FlowableEmitter;->onNext(Ljava/lang/Object;)V

    .line 74
    iget-wide v6, p0, Lzlc/season/rxdownload3/core/NormalTargetFile$save$1;->$byteSize:J

    invoke-interface {v3, v5, v6, v7}, Lokio/BufferedSource;->read(Lokio/Buffer;J)J

    move-result-wide v6

    goto :goto_33

    .line 77
    :cond_5b
    invoke-interface {p1}, Lio/reactivex/FlowableEmitter;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_73

    .line 78
    iget-object v3, p0, Lzlc/season/rxdownload3/core/NormalTargetFile$save$1;->this$0:Lzlc/season/rxdownload3/core/NormalTargetFile;

    invoke-static {v3}, Lzlc/season/rxdownload3/core/NormalTargetFile;->access$getShadowFile$p(Lzlc/season/rxdownload3/core/NormalTargetFile;)Ljava/io/File;

    move-result-object v3

    iget-object v5, p0, Lzlc/season/rxdownload3/core/NormalTargetFile$save$1;->this$0:Lzlc/season/rxdownload3/core/NormalTargetFile;

    invoke-static {v5}, Lzlc/season/rxdownload3/core/NormalTargetFile;->access$getRealFile$p(Lzlc/season/rxdownload3/core/NormalTargetFile;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 80
    invoke-interface {p1}, Lio/reactivex/FlowableEmitter;->onComplete()V

    .line 82
    :cond_73
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_75
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_75} :catch_80
    .catchall {:try_start_26 .. :try_end_75} :catchall_7e

    .line 65
    :try_start_75
    invoke-static {v4, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 83
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_7a
    .catch Ljava/lang/Throwable; {:try_start_75 .. :try_end_7a} :catch_89
    .catchall {:try_start_75 .. :try_end_7a} :catchall_87

    .line 64
    invoke-static {v0, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_7e
    move-exception p1

    goto :goto_83

    :catch_80
    move-exception p1

    move-object v1, p1

    .line 65
    :try_start_82
    throw v1
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_7e

    :goto_83
    :try_start_83
    invoke-static {v4, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
    :try_end_87
    .catch Ljava/lang/Throwable; {:try_start_83 .. :try_end_87} :catch_89
    .catchall {:try_start_83 .. :try_end_87} :catchall_87

    :catchall_87
    move-exception p1

    goto :goto_8c

    :catch_89
    move-exception p1

    move-object v2, p1

    .line 64
    :try_start_8b
    throw v2
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_87

    :goto_8c
    invoke-static {v0, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method
