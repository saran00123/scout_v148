.class final Lzlc/season/rxdownload3/extension/ApkInstallExtension$registerService$1;
.super Ljava/lang/Object;
.source "ApkInstallExtension.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzlc/season/rxdownload3/extension/ApkInstallExtension;->registerService()V
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
        "Lkotlin/Pair<",
        "+",
        "Ljava/lang/Boolean;",
        "+",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lkotlin/Pair;",
        "",
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


# instance fields
.field final synthetic this$0:Lzlc/season/rxdownload3/extension/ApkInstallExtension;


# direct methods
.method constructor <init>(Lzlc/season/rxdownload3/extension/ApkInstallExtension;)V
    .registers 2

    iput-object p1, p0, Lzlc/season/rxdownload3/extension/ApkInstallExtension$registerService$1;->this$0:Lzlc/season/rxdownload3/extension/ApkInstallExtension;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    .line 23
    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p0, p1}, Lzlc/season/rxdownload3/extension/ApkInstallExtension$registerService$1;->accept(Lkotlin/Pair;)V

    return-void
.end method

.method public final accept(Lkotlin/Pair;)V
    .registers 4
    .param p1    # Lkotlin/Pair;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 62
    iget-object v1, p0, Lzlc/season/rxdownload3/extension/ApkInstallExtension$registerService$1;->this$0:Lzlc/season/rxdownload3/extension/ApkInstallExtension;

    invoke-static {v1}, Lzlc/season/rxdownload3/extension/ApkInstallExtension;->access$getApkPackageName$p(Lzlc/season/rxdownload3/extension/ApkInstallExtension;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 63
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3e

    .line 64
    iget-object p1, p0, Lzlc/season/rxdownload3/extension/ApkInstallExtension$registerService$1;->this$0:Lzlc/season/rxdownload3/extension/ApkInstallExtension;

    invoke-virtual {p1}, Lzlc/season/rxdownload3/extension/ApkInstallExtension;->getMission()Lzlc/season/rxdownload3/core/RealMission;

    move-result-object p1

    new-instance v0, Lzlc/season/rxdownload3/extension/ApkInstallExtension$Installed;

    iget-object v1, p0, Lzlc/season/rxdownload3/extension/ApkInstallExtension$registerService$1;->this$0:Lzlc/season/rxdownload3/extension/ApkInstallExtension;

    invoke-virtual {v1}, Lzlc/season/rxdownload3/extension/ApkInstallExtension;->getMission()Lzlc/season/rxdownload3/core/RealMission;

    move-result-object v1

    invoke-virtual {v1}, Lzlc/season/rxdownload3/core/RealMission;->getStatus()Lzlc/season/rxdownload3/core/Status;

    move-result-object v1

    invoke-direct {v0, v1}, Lzlc/season/rxdownload3/extension/ApkInstallExtension$Installed;-><init>(Lzlc/season/rxdownload3/core/Status;)V

    check-cast v0, Lzlc/season/rxdownload3/core/Status;

    invoke-virtual {p1, v0}, Lzlc/season/rxdownload3/core/RealMission;->emitStatusWithNotification(Lzlc/season/rxdownload3/core/Status;)V

    goto :goto_58

    .line 66
    :cond_3e
    iget-object p1, p0, Lzlc/season/rxdownload3/extension/ApkInstallExtension$registerService$1;->this$0:Lzlc/season/rxdownload3/extension/ApkInstallExtension;

    invoke-virtual {p1}, Lzlc/season/rxdownload3/extension/ApkInstallExtension;->getMission()Lzlc/season/rxdownload3/core/RealMission;

    move-result-object p1

    new-instance v0, Lzlc/season/rxdownload3/core/Succeed;

    iget-object v1, p0, Lzlc/season/rxdownload3/extension/ApkInstallExtension$registerService$1;->this$0:Lzlc/season/rxdownload3/extension/ApkInstallExtension;

    invoke-virtual {v1}, Lzlc/season/rxdownload3/extension/ApkInstallExtension;->getMission()Lzlc/season/rxdownload3/core/RealMission;

    move-result-object v1

    invoke-virtual {v1}, Lzlc/season/rxdownload3/core/RealMission;->getStatus()Lzlc/season/rxdownload3/core/Status;

    move-result-object v1

    invoke-direct {v0, v1}, Lzlc/season/rxdownload3/core/Succeed;-><init>(Lzlc/season/rxdownload3/core/Status;)V

    check-cast v0, Lzlc/season/rxdownload3/core/Status;

    invoke-virtual {p1, v0}, Lzlc/season/rxdownload3/core/RealMission;->emitStatusWithNotification(Lzlc/season/rxdownload3/core/Status;)V

    :cond_58
    :goto_58
    return-void
.end method
