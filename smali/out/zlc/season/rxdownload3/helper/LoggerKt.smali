.class public final Lzlc/season/rxdownload3/helper/LoggerKt;
.super Ljava/lang/Object;
.source "Logger.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0002\u0008\u0002\u001a\u000e\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0001\u001a\u001a\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u001a\u000e\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0001\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082D\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "TAG",
        "",
        "logd",
        "",
        "message",
        "loge",
        "throwable",
        "",
        "logi",
        "rxdownload3_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RxDownload"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static final logd(Ljava/lang/String;)V
    .registers 2
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "message"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    sget-object v0, Lzlc/season/rxdownload3/core/DownloadConfig;->INSTANCE:Lzlc/season/rxdownload3/core/DownloadConfig;

    invoke-virtual {v0}, Lzlc/season/rxdownload3/core/DownloadConfig;->getDEBUG$rxdownload3_release()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 23
    sget-object v0, Lzlc/season/rxdownload3/helper/LoggerKt;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    return-void
.end method

.method public static final loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "message"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    sget-object v0, Lzlc/season/rxdownload3/core/DownloadConfig;->INSTANCE:Lzlc/season/rxdownload3/core/DownloadConfig;

    invoke-virtual {v0}, Lzlc/season/rxdownload3/core/DownloadConfig;->getDEBUG$rxdownload3_release()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 17
    sget-object v0, Lzlc/season/rxdownload3/helper/LoggerKt;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_12
    return-void
.end method

.method public static synthetic loge$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    .registers 4

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_7

    const/4 p1, 0x0

    .line 15
    check-cast p1, Ljava/lang/Throwable;

    :cond_7
    invoke-static {p0, p1}, Lzlc/season/rxdownload3/helper/LoggerKt;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final logi(Ljava/lang/String;)V
    .registers 2
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "message"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sget-object v0, Lzlc/season/rxdownload3/core/DownloadConfig;->INSTANCE:Lzlc/season/rxdownload3/core/DownloadConfig;

    invoke-virtual {v0}, Lzlc/season/rxdownload3/core/DownloadConfig;->getDEBUG$rxdownload3_release()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 11
    sget-object v0, Lzlc/season/rxdownload3/helper/LoggerKt;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    return-void
.end method
