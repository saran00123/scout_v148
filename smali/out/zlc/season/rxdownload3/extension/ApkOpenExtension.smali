.class public final Lzlc/season/rxdownload3/extension/ApkOpenExtension;
.super Ljava/lang/Object;
.source "ApkOpenExtension.kt"

# interfaces
.implements Lzlc/season/rxdownload3/extension/Extension;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0012H\u0016J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0008\u0010\u0016\u001a\u00020\u0015H\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\u000cX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0017"
    }
    d2 = {
        "Lzlc/season/rxdownload3/extension/ApkOpenExtension;",
        "Lzlc/season/rxdownload3/extension/Extension;",
        "()V",
        "apkFile",
        "Ljava/io/File;",
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
        "openApp",
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
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getApkFile$p(Lzlc/season/rxdownload3/extension/ApkOpenExtension;)Ljava/io/File;
    .registers 1

    .line 13
    iget-object p0, p0, Lzlc/season/rxdownload3/extension/ApkOpenExtension;->apkFile:Ljava/io/File;

    return-object p0
.end method

.method public static final synthetic access$openApp(Lzlc/season/rxdownload3/extension/ApkOpenExtension;)V
    .registers 1

    .line 13
    invoke-direct {p0}, Lzlc/season/rxdownload3/extension/ApkOpenExtension;->openApp()V

    return-void
.end method

.method public static final synthetic access$setApkFile$p(Lzlc/season/rxdownload3/extension/ApkOpenExtension;Ljava/io/File;)V
    .registers 2

    .line 13
    iput-object p1, p0, Lzlc/season/rxdownload3/extension/ApkOpenExtension;->apkFile:Ljava/io/File;

    return-void
.end method

.method private final openApp()V
    .registers 5

    .line 41
    iget-object v0, p0, Lzlc/season/rxdownload3/extension/ApkOpenExtension;->context:Landroid/content/Context;

    const-string v1, "context"

    if-nez v0, :cond_9

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Lzlc/season/rxdownload3/extension/ApkOpenExtension;->context:Landroid/content/Context;

    if-nez v2, :cond_14

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_14
    iget-object v3, p0, Lzlc/season/rxdownload3/extension/ApkOpenExtension;->apkFile:Ljava/io/File;

    if-nez v3, :cond_1b

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1b
    invoke-static {v2, v3}, Lzlc/season/rxdownload3/helper/UtilsKt;->getPackageName(Landroid/content/Context;Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v2, 0x10000000

    .line 42
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 43
    iget-object v2, p0, Lzlc/season/rxdownload3/extension/ApkOpenExtension;->context:Landroid/content/Context;

    if-nez v2, :cond_2f

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2f
    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

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

    .line 30
    new-instance v0, Lzlc/season/rxdownload3/extension/ApkOpenExtension$action$1;

    invoke-direct {v0, p0}, Lzlc/season/rxdownload3/extension/ApkOpenExtension$action$1;-><init>(Lzlc/season/rxdownload3/extension/ApkOpenExtension;)V

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

    .line 15
    iget-object v0, p0, Lzlc/season/rxdownload3/extension/ApkOpenExtension;->context:Landroid/content/Context;

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

    .line 14
    iget-object v0, p0, Lzlc/season/rxdownload3/extension/ApkOpenExtension;->mission:Lzlc/season/rxdownload3/core/RealMission;

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

    .line 21
    iput-object p1, p0, Lzlc/season/rxdownload3/extension/ApkOpenExtension;->mission:Lzlc/season/rxdownload3/core/RealMission;

    .line 22
    sget-object p1, Lzlc/season/rxdownload3/core/DownloadConfig;->INSTANCE:Lzlc/season/rxdownload3/core/DownloadConfig;

    invoke-virtual {p1}, Lzlc/season/rxdownload3/core/DownloadConfig;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_15

    const-string p1, "No context, you should set context first"

    .line 23
    invoke-static {p1}, Lzlc/season/rxdownload3/helper/LoggerKt;->logd(Ljava/lang/String;)V

    goto :goto_22

    .line 25
    :cond_15
    sget-object p1, Lzlc/season/rxdownload3/core/DownloadConfig;->INSTANCE:Lzlc/season/rxdownload3/core/DownloadConfig;

    invoke-virtual {p1}, Lzlc/season/rxdownload3/core/DownloadConfig;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_20

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_20
    iput-object p1, p0, Lzlc/season/rxdownload3/extension/ApkOpenExtension;->context:Landroid/content/Context;

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

    .line 15
    iput-object p1, p0, Lzlc/season/rxdownload3/extension/ApkOpenExtension;->context:Landroid/content/Context;

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

    .line 14
    iput-object p1, p0, Lzlc/season/rxdownload3/extension/ApkOpenExtension;->mission:Lzlc/season/rxdownload3/core/RealMission;

    return-void
.end method
