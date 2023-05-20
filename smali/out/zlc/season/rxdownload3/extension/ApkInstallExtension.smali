.class public final Lzlc/season/rxdownload3/extension/ApkInstallExtension;
.super Ljava/lang/Object;
.source "ApkInstallExtension.kt"

# interfaces
.implements Lzlc/season/rxdownload3/extension/Extension;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzlc/season/rxdownload3/extension/ApkInstallExtension$ApkInstallService;,
        Lzlc/season/rxdownload3/extension/ApkInstallExtension$ApkInstallActivity;,
        Lzlc/season/rxdownload3/extension/ApkInstallExtension$Installing;,
        Lzlc/season/rxdownload3/extension/ApkInstallExtension$Installed;,
        Lzlc/season/rxdownload3/extension/ApkInstallExtension$ApkFileNotExistsException;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001:\u0005\u0019\u001a\u001b\u001c\u001dB\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014H\u0016J\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0008\u0010\u0018\u001a\u00020\u0017H\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u00020\u0008X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\r\u001a\u00020\u000eX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u001e"
    }
    d2 = {
        "Lzlc/season/rxdownload3/extension/ApkInstallExtension;",
        "Lzlc/season/rxdownload3/extension/Extension;",
        "()V",
        "apkFile",
        "Ljava/io/File;",
        "apkPackageName",
        "",
        "context",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "setContext",
        "(Landroid/content/Context;)V",
        "mission",
        "Lzlc/season/rxdownload3/core/RealMission;",
        "getMission",
        "()Lzlc/season/rxdownload3/core/RealMission;",
        "setMission",
        "(Lzlc/season/rxdownload3/core/RealMission;)V",
        "action",
        "Lio/reactivex/Maybe;",
        "",
        "init",
        "",
        "registerService",
        "ApkFileNotExistsException",
        "ApkInstallActivity",
        "ApkInstallService",
        "Installed",
        "Installing",
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
.field private apkFile:Ljava/io/File;

.field private apkPackageName:Ljava/lang/String;

.field public context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public mission:Lzlc/season/rxdownload3/core/RealMission;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 28
    iput-object v0, p0, Lzlc/season/rxdownload3/extension/ApkInstallExtension;->apkPackageName:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getApkFile$p(Lzlc/season/rxdownload3/extension/ApkInstallExtension;)Ljava/io/File;
    .registers 1

    .line 23
    iget-object p0, p0, Lzlc/season/rxdownload3/extension/ApkInstallExtension;->apkFile:Ljava/io/File;

    return-object p0
.end method

.method public static final synthetic access$getApkPackageName$p(Lzlc/season/rxdownload3/extension/ApkInstallExtension;)Ljava/lang/String;
    .registers 1

    .line 23
    iget-object p0, p0, Lzlc/season/rxdownload3/extension/ApkInstallExtension;->apkPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$registerService(Lzlc/season/rxdownload3/extension/ApkInstallExtension;)V
    .registers 1

    .line 23
    invoke-direct {p0}, Lzlc/season/rxdownload3/extension/ApkInstallExtension;->registerService()V

    return-void
.end method

.method public static final synthetic access$setApkFile$p(Lzlc/season/rxdownload3/extension/ApkInstallExtension;Ljava/io/File;)V
    .registers 2

    .line 23
    iput-object p1, p0, Lzlc/season/rxdownload3/extension/ApkInstallExtension;->apkFile:Ljava/io/File;

    return-void
.end method

.method public static final synthetic access$setApkPackageName$p(Lzlc/season/rxdownload3/extension/ApkInstallExtension;Ljava/lang/String;)V
    .registers 2

    .line 23
    iput-object p1, p0, Lzlc/season/rxdownload3/extension/ApkInstallExtension;->apkPackageName:Ljava/lang/String;

    return-void
.end method

.method private final registerService()V
    .registers 3

    .line 60
    sget-object v0, Lzlc/season/rxdownload3/extension/ApkInstallExtension$ApkInstallService;->INSTANCE:Lzlc/season/rxdownload3/extension/ApkInstallExtension$ApkInstallService;

    invoke-virtual {v0}, Lzlc/season/rxdownload3/extension/ApkInstallExtension$ApkInstallService;->get()Lio/reactivex/processors/FlowableProcessor;

    move-result-object v0

    new-instance v1, Lzlc/season/rxdownload3/extension/ApkInstallExtension$registerService$1;

    invoke-direct {v1, p0}, Lzlc/season/rxdownload3/extension/ApkInstallExtension$registerService$1;-><init>(Lzlc/season/rxdownload3/extension/ApkInstallExtension;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    invoke-virtual {v0, v1}, Lio/reactivex/processors/FlowableProcessor;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method


# virtual methods
.method public action()Lio/reactivex/Maybe;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Maybe<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 40
    new-instance v0, Lzlc/season/rxdownload3/extension/ApkInstallExtension$action$1;

    invoke-direct {v0, p0}, Lzlc/season/rxdownload3/extension/ApkInstallExtension$action$1;-><init>(Lzlc/season/rxdownload3/extension/ApkInstallExtension;)V

    check-cast v0, Lio/reactivex/MaybeOnSubscribe;

    invoke-static {v0}, Lio/reactivex/Maybe;->create(Lio/reactivex/MaybeOnSubscribe;)Lio/reactivex/Maybe;

    move-result-object v0

    const-string v1, "Maybe.create<Any> {\n    \u2026it.onSuccess(1)\n        }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 25
    iget-object v0, p0, Lzlc/season/rxdownload3/extension/ApkInstallExtension;->context:Landroid/content/Context;

    if-nez v0, :cond_9

    const-string v1, "context"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    return-object v0
.end method

.method public final getMission()Lzlc/season/rxdownload3/core/RealMission;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 24
    iget-object v0, p0, Lzlc/season/rxdownload3/extension/ApkInstallExtension;->mission:Lzlc/season/rxdownload3/core/RealMission;

    if-nez v0, :cond_9

    const-string v1, "mission"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    return-object v0
.end method

.method public init(Lzlc/season/rxdownload3/core/RealMission;)V
    .registers 3
    .param p1    # Lzlc/season/rxdownload3/core/RealMission;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "mission"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iput-object p1, p0, Lzlc/season/rxdownload3/extension/ApkInstallExtension;->mission:Lzlc/season/rxdownload3/core/RealMission;

    .line 32
    sget-object p1, Lzlc/season/rxdownload3/core/DownloadConfig;->INSTANCE:Lzlc/season/rxdownload3/core/DownloadConfig;

    invoke-virtual {p1}, Lzlc/season/rxdownload3/core/DownloadConfig;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_15

    const-string p1, "No context, you should set context first"

    .line 33
    invoke-static {p1}, Lzlc/season/rxdownload3/helper/LoggerKt;->logd(Ljava/lang/String;)V

    goto :goto_22

    .line 35
    :cond_15
    sget-object p1, Lzlc/season/rxdownload3/core/DownloadConfig;->INSTANCE:Lzlc/season/rxdownload3/core/DownloadConfig;

    invoke-virtual {p1}, Lzlc/season/rxdownload3/core/DownloadConfig;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_20

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_20
    iput-object p1, p0, Lzlc/season/rxdownload3/extension/ApkInstallExtension;->context:Landroid/content/Context;

    :goto_22
    return-void
.end method

.method public final setContext(Landroid/content/Context;)V
    .registers 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iput-object p1, p0, Lzlc/season/rxdownload3/extension/ApkInstallExtension;->context:Landroid/content/Context;

    return-void
.end method

.method public final setMission(Lzlc/season/rxdownload3/core/RealMission;)V
    .registers 3
    .param p1    # Lzlc/season/rxdownload3/core/RealMission;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lzlc/season/rxdownload3/extension/ApkInstallExtension;->mission:Lzlc/season/rxdownload3/core/RealMission;

    return-void
.end method
