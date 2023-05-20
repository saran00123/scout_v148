.class final Lzlc/season/rxdownload3/core/DownloadCore$initRxJavaPlugin$1;
.super Ljava/lang/Object;
.source "DownloadCore.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzlc/season/rxdownload3/core/DownloadCore;->initRxJavaPlugin()V
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
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "accept"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final INSTANCE:Lzlc/season/rxdownload3/core/DownloadCore$initRxJavaPlugin$1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lzlc/season/rxdownload3/core/DownloadCore$initRxJavaPlugin$1;

    invoke-direct {v0}, Lzlc/season/rxdownload3/core/DownloadCore$initRxJavaPlugin$1;-><init>()V

    sput-object v0, Lzlc/season/rxdownload3/core/DownloadCore$initRxJavaPlugin$1;->INSTANCE:Lzlc/season/rxdownload3/core/DownloadCore$initRxJavaPlugin$1;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    .line 13
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lzlc/season/rxdownload3/core/DownloadCore$initRxJavaPlugin$1;->accept(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final accept(Ljava/lang/Throwable;)V
    .registers 3
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    instance-of v0, p1, Ljava/lang/InterruptedException;

    if-eqz v0, :cond_f

    const-string v0, "InterruptedException"

    invoke-static {v0, p1}, Lzlc/season/rxdownload3/helper/LoggerKt;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_22

    .line 24
    :cond_f
    instance-of v0, p1, Ljava/io/InterruptedIOException;

    if-eqz v0, :cond_19

    const-string v0, "InterruptedIOException"

    invoke-static {v0, p1}, Lzlc/season/rxdownload3/helper/LoggerKt;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_22

    .line 25
    :cond_19
    instance-of v0, p1, Ljava/net/SocketException;

    if-eqz v0, :cond_22

    const-string v0, "SocketException"

    invoke-static {v0, p1}, Lzlc/season/rxdownload3/helper/LoggerKt;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_22
    :goto_22
    return-void
.end method
