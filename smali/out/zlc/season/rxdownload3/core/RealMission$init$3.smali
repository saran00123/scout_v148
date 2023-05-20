.class final Lzlc/season/rxdownload3/core/RealMission$init$3;
.super Ljava/lang/Object;
.source "RealMission.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzlc/season/rxdownload3/core/RealMission;->init()V
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
        "Ljava/lang/Object;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
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


# instance fields
.field final synthetic this$0:Lzlc/season/rxdownload3/core/RealMission;


# direct methods
.method constructor <init>(Lzlc/season/rxdownload3/core/RealMission;)V
    .registers 2

    iput-object p1, p0, Lzlc/season/rxdownload3/core/RealMission$init$3;->this$0:Lzlc/season/rxdownload3/core/RealMission;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget-object p1, p0, Lzlc/season/rxdownload3/core/RealMission$init$3;->this$0:Lzlc/season/rxdownload3/core/RealMission;

    invoke-virtual {p1}, Lzlc/season/rxdownload3/core/RealMission;->getStatus()Lzlc/season/rxdownload3/core/Status;

    move-result-object v0

    invoke-virtual {p1, v0}, Lzlc/season/rxdownload3/core/RealMission;->emitStatus(Lzlc/season/rxdownload3/core/Status;)V

    .line 70
    iget-object p1, p0, Lzlc/season/rxdownload3/core/RealMission$init$3;->this$0:Lzlc/season/rxdownload3/core/RealMission;

    invoke-static {p1}, Lzlc/season/rxdownload3/core/RealMission;->access$getAutoStart$p(Lzlc/season/rxdownload3/core/RealMission;)Z

    move-result p1

    if-nez p1, :cond_1e

    sget-object p1, Lzlc/season/rxdownload3/core/DownloadConfig;->INSTANCE:Lzlc/season/rxdownload3/core/DownloadConfig;

    invoke-virtual {p1}, Lzlc/season/rxdownload3/core/DownloadConfig;->getAutoStart$rxdownload3_release()Z

    move-result p1

    if-eqz p1, :cond_23

    .line 71
    :cond_1e
    iget-object p1, p0, Lzlc/season/rxdownload3/core/RealMission$init$3;->this$0:Lzlc/season/rxdownload3/core/RealMission;

    invoke-static {p1}, Lzlc/season/rxdownload3/core/RealMission;->access$realStart(Lzlc/season/rxdownload3/core/RealMission;)V

    :cond_23
    return-void
.end method
