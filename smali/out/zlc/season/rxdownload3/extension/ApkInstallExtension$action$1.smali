.class final Lzlc/season/rxdownload3/extension/ApkInstallExtension$action$1;
.super Ljava/lang/Object;
.source "ApkInstallExtension.kt"

# interfaces
.implements Lio/reactivex/MaybeOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzlc/season/rxdownload3/extension/ApkInstallExtension;->action()Lio/reactivex/Maybe;
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
        "Lio/reactivex/MaybeOnSubscribe<",
        "TT;>;"
    }
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
        "Lio/reactivex/MaybeEmitter;",
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
.field final synthetic this$0:Lzlc/season/rxdownload3/extension/ApkInstallExtension;


# direct methods
.method constructor <init>(Lzlc/season/rxdownload3/extension/ApkInstallExtension;)V
    .registers 2

    iput-object p1, p0, Lzlc/season/rxdownload3/extension/ApkInstallExtension$action$1;->this$0:Lzlc/season/rxdownload3/extension/ApkInstallExtension;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/MaybeEmitter;)V
    .registers 13
    .param p1    # Lio/reactivex/MaybeEmitter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeEmitter<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lzlc/season/rxdownload3/extension/ApkInstallExtension$action$1;->this$0:Lzlc/season/rxdownload3/extension/ApkInstallExtension;

    invoke-virtual {v0}, Lzlc/season/rxdownload3/extension/ApkInstallExtension;->getMission()Lzlc/season/rxdownload3/core/RealMission;

    move-result-object v1

    invoke-virtual {v1}, Lzlc/season/rxdownload3/core/RealMission;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lzlc/season/rxdownload3/extension/ApkInstallExtension;->access$setApkFile$p(Lzlc/season/rxdownload3/extension/ApkInstallExtension;Ljava/io/File;)V

    .line 42
    iget-object v0, p0, Lzlc/season/rxdownload3/extension/ApkInstallExtension$action$1;->this$0:Lzlc/season/rxdownload3/extension/ApkInstallExtension;

    invoke-static {v0}, Lzlc/season/rxdownload3/extension/ApkInstallExtension;->access$getApkFile$p(Lzlc/season/rxdownload3/extension/ApkInstallExtension;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_49

    .line 43
    iget-object v0, p0, Lzlc/season/rxdownload3/extension/ApkInstallExtension$action$1;->this$0:Lzlc/season/rxdownload3/extension/ApkInstallExtension;

    invoke-virtual {v0}, Lzlc/season/rxdownload3/extension/ApkInstallExtension;->getMission()Lzlc/season/rxdownload3/core/RealMission;

    move-result-object v0

    new-instance v1, Lzlc/season/rxdownload3/core/Failed;

    new-instance v10, Lzlc/season/rxdownload3/core/Status;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x7

    const/4 v9, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lzlc/season/rxdownload3/core/Status;-><init>(JJZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v2, Lzlc/season/rxdownload3/extension/ApkInstallExtension$ApkFileNotExistsException;

    invoke-direct {v2}, Lzlc/season/rxdownload3/extension/ApkInstallExtension$ApkFileNotExistsException;-><init>()V

    check-cast v2, Ljava/lang/Throwable;

    invoke-direct {v1, v10, v2}, Lzlc/season/rxdownload3/core/Failed;-><init>(Lzlc/season/rxdownload3/core/Status;Ljava/lang/Throwable;)V

    check-cast v1, Lzlc/season/rxdownload3/core/Status;

    invoke-virtual {v0, v1}, Lzlc/season/rxdownload3/core/RealMission;->emitStatusWithNotification(Lzlc/season/rxdownload3/core/Status;)V

    .line 44
    new-instance v0, Lzlc/season/rxdownload3/extension/ApkInstallExtension$ApkFileNotExistsException;

    invoke-direct {v0}, Lzlc/season/rxdownload3/extension/ApkInstallExtension$ApkFileNotExistsException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    invoke-interface {p1, v0}, Lio/reactivex/MaybeEmitter;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 48
    :cond_49
    iget-object v0, p0, Lzlc/season/rxdownload3/extension/ApkInstallExtension$action$1;->this$0:Lzlc/season/rxdownload3/extension/ApkInstallExtension;

    invoke-virtual {v0}, Lzlc/season/rxdownload3/extension/ApkInstallExtension;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lzlc/season/rxdownload3/extension/ApkInstallExtension$action$1;->this$0:Lzlc/season/rxdownload3/extension/ApkInstallExtension;

    invoke-static {v2}, Lzlc/season/rxdownload3/extension/ApkInstallExtension;->access$getApkFile$p(Lzlc/season/rxdownload3/extension/ApkInstallExtension;)Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_5a

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5a
    invoke-static {v1, v2}, Lzlc/season/rxdownload3/helper/UtilsKt;->getPackageName(Landroid/content/Context;Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lzlc/season/rxdownload3/extension/ApkInstallExtension;->access$setApkPackageName$p(Lzlc/season/rxdownload3/extension/ApkInstallExtension;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lzlc/season/rxdownload3/extension/ApkInstallExtension$action$1;->this$0:Lzlc/season/rxdownload3/extension/ApkInstallExtension;

    invoke-virtual {v0}, Lzlc/season/rxdownload3/extension/ApkInstallExtension;->getMission()Lzlc/season/rxdownload3/core/RealMission;

    move-result-object v0

    new-instance v1, Lzlc/season/rxdownload3/extension/ApkInstallExtension$Installing;

    iget-object v2, p0, Lzlc/season/rxdownload3/extension/ApkInstallExtension$action$1;->this$0:Lzlc/season/rxdownload3/extension/ApkInstallExtension;

    invoke-virtual {v2}, Lzlc/season/rxdownload3/extension/ApkInstallExtension;->getMission()Lzlc/season/rxdownload3/core/RealMission;

    move-result-object v2

    invoke-virtual {v2}, Lzlc/season/rxdownload3/core/RealMission;->getStatus()Lzlc/season/rxdownload3/core/Status;

    move-result-object v2

    invoke-direct {v1, v2}, Lzlc/season/rxdownload3/extension/ApkInstallExtension$Installing;-><init>(Lzlc/season/rxdownload3/core/Status;)V

    check-cast v1, Lzlc/season/rxdownload3/core/Status;

    invoke-virtual {v0, v1}, Lzlc/season/rxdownload3/core/RealMission;->emitStatusWithNotification(Lzlc/season/rxdownload3/core/Status;)V

    .line 52
    iget-object v0, p0, Lzlc/season/rxdownload3/extension/ApkInstallExtension$action$1;->this$0:Lzlc/season/rxdownload3/extension/ApkInstallExtension;

    invoke-static {v0}, Lzlc/season/rxdownload3/extension/ApkInstallExtension;->access$registerService(Lzlc/season/rxdownload3/extension/ApkInstallExtension;)V

    .line 53
    sget-object v0, Lzlc/season/rxdownload3/extension/ApkInstallExtension$ApkInstallActivity;->Companion:Lzlc/season/rxdownload3/extension/ApkInstallExtension$ApkInstallActivity$Companion;

    iget-object v1, p0, Lzlc/season/rxdownload3/extension/ApkInstallExtension$action$1;->this$0:Lzlc/season/rxdownload3/extension/ApkInstallExtension;

    invoke-virtual {v1}, Lzlc/season/rxdownload3/extension/ApkInstallExtension;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lzlc/season/rxdownload3/extension/ApkInstallExtension$action$1;->this$0:Lzlc/season/rxdownload3/extension/ApkInstallExtension;

    invoke-static {v2}, Lzlc/season/rxdownload3/extension/ApkInstallExtension;->access$getApkFile$p(Lzlc/season/rxdownload3/extension/ApkInstallExtension;)Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_93

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_93
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "apkFile!!.path"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lzlc/season/rxdownload3/extension/ApkInstallExtension$ApkInstallActivity$Companion;->start(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 55
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/reactivex/MaybeEmitter;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
