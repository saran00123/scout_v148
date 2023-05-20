.class final Lzlc/season/rxdownload3/core/RealMission$initNotification$2;
.super Ljava/lang/Object;
.source "RealMission.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzlc/season/rxdownload3/core/RealMission;->initNotification()V
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
        "Lzlc/season/rxdownload3/core/Status;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lzlc/season/rxdownload3/core/Status;",
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

    iput-object p1, p0, Lzlc/season/rxdownload3/core/RealMission$initNotification$2;->this$0:Lzlc/season/rxdownload3/core/RealMission;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    .line 23
    check-cast p1, Lzlc/season/rxdownload3/core/Status;

    invoke-virtual {p0, p1}, Lzlc/season/rxdownload3/core/RealMission$initNotification$2;->accept(Lzlc/season/rxdownload3/core/Status;)V

    return-void
.end method

.method public final accept(Lzlc/season/rxdownload3/core/Status;)V
    .registers 3
    .param p1    # Lzlc/season/rxdownload3/core/Status;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lzlc/season/rxdownload3/core/RealMission$initNotification$2;->this$0:Lzlc/season/rxdownload3/core/RealMission;

    invoke-static {v0}, Lzlc/season/rxdownload3/core/RealMission;->access$getEnableNotification$p(Lzlc/season/rxdownload3/core/RealMission;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lzlc/season/rxdownload3/core/RealMission$initNotification$2;->this$0:Lzlc/season/rxdownload3/core/RealMission;

    invoke-virtual {v0}, Lzlc/season/rxdownload3/core/RealMission;->getActual()Lzlc/season/rxdownload3/core/Mission;

    move-result-object v0

    invoke-virtual {v0}, Lzlc/season/rxdownload3/core/Mission;->getEnableNotification()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 128
    iget-object v0, p0, Lzlc/season/rxdownload3/core/RealMission$initNotification$2;->this$0:Lzlc/season/rxdownload3/core/RealMission;

    invoke-static {v0, p1}, Lzlc/season/rxdownload3/core/RealMission;->access$showNotification(Lzlc/season/rxdownload3/core/RealMission;Lzlc/season/rxdownload3/core/Status;)V

    :cond_1e
    return-void
.end method
