.class final Lzlc/season/rxdownload3/core/RealMission$createFlowable$4;
.super Ljava/lang/Object;
.source "RealMission.kt"

# interfaces
.implements Lio/reactivex/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzlc/season/rxdownload3/core/RealMission;->createFlowable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
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

    iput-object p1, p0, Lzlc/season/rxdownload3/core/RealMission$createFlowable$4;->this$0:Lzlc/season/rxdownload3/core/RealMission;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    const-string v0, "Mission complete!"

    .line 157
    invoke-static {v0}, Lzlc/season/rxdownload3/helper/LoggerKt;->logd(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lzlc/season/rxdownload3/core/RealMission$createFlowable$4;->this$0:Lzlc/season/rxdownload3/core/RealMission;

    new-instance v1, Lzlc/season/rxdownload3/core/Succeed;

    invoke-virtual {v0}, Lzlc/season/rxdownload3/core/RealMission;->getStatus()Lzlc/season/rxdownload3/core/Status;

    move-result-object v2

    invoke-direct {v1, v2}, Lzlc/season/rxdownload3/core/Succeed;-><init>(Lzlc/season/rxdownload3/core/Status;)V

    check-cast v1, Lzlc/season/rxdownload3/core/Status;

    invoke-virtual {v0, v1}, Lzlc/season/rxdownload3/core/RealMission;->emitStatusWithNotification(Lzlc/season/rxdownload3/core/Status;)V

    return-void
.end method
