.class final Lzlc/season/rxdownload3/core/RealMission$createFlowable$3;
.super Ljava/lang/Object;
.source "RealMission.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzlc/season/rxdownload3/core/RealMission;->createFlowable()V
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


# instance fields
.field final synthetic this$0:Lzlc/season/rxdownload3/core/RealMission;


# direct methods
.method constructor <init>(Lzlc/season/rxdownload3/core/RealMission;)V
    .registers 2

    iput-object p1, p0, Lzlc/season/rxdownload3/core/RealMission$createFlowable$3;->this$0:Lzlc/season/rxdownload3/core/RealMission;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    .line 23
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lzlc/season/rxdownload3/core/RealMission$createFlowable$3;->accept(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final accept(Ljava/lang/Throwable;)V
    .registers 5
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mission error! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lzlc/season/rxdownload3/helper/LoggerKt;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 154
    iget-object v0, p0, Lzlc/season/rxdownload3/core/RealMission$createFlowable$3;->this$0:Lzlc/season/rxdownload3/core/RealMission;

    new-instance v1, Lzlc/season/rxdownload3/core/Failed;

    invoke-virtual {v0}, Lzlc/season/rxdownload3/core/RealMission;->getStatus()Lzlc/season/rxdownload3/core/Status;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lzlc/season/rxdownload3/core/Failed;-><init>(Lzlc/season/rxdownload3/core/Status;Ljava/lang/Throwable;)V

    check-cast v1, Lzlc/season/rxdownload3/core/Status;

    invoke-virtual {v0, v1}, Lzlc/season/rxdownload3/core/RealMission;->emitStatusWithNotification(Lzlc/season/rxdownload3/core/Status;)V

    return-void
.end method
