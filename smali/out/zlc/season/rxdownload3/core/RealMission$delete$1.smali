.class final Lzlc/season/rxdownload3/core/RealMission$delete$1;
.super Ljava/lang/Object;
.source "RealMission.kt"

# interfaces
.implements Lio/reactivex/MaybeOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzlc/season/rxdownload3/core/RealMission;->delete(Z)Lio/reactivex/Maybe;
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
.field final synthetic $deleteFile:Z

.field final synthetic this$0:Lzlc/season/rxdownload3/core/RealMission;


# direct methods
.method constructor <init>(Lzlc/season/rxdownload3/core/RealMission;Z)V
    .registers 3

    iput-object p1, p0, Lzlc/season/rxdownload3/core/RealMission$delete$1;->this$0:Lzlc/season/rxdownload3/core/RealMission;

    iput-boolean p2, p0, Lzlc/season/rxdownload3/core/RealMission$delete$1;->$deleteFile:Z

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

    .line 227
    iget-object v0, p0, Lzlc/season/rxdownload3/core/RealMission$delete$1;->this$0:Lzlc/season/rxdownload3/core/RealMission;

    invoke-virtual {v0}, Lzlc/season/rxdownload3/core/RealMission;->realStop$rxdownload3_release()V

    .line 229
    iget-boolean v0, p0, Lzlc/season/rxdownload3/core/RealMission$delete$1;->$deleteFile:Z

    if-eqz v0, :cond_19

    .line 230
    iget-object v0, p0, Lzlc/season/rxdownload3/core/RealMission$delete$1;->this$0:Lzlc/season/rxdownload3/core/RealMission;

    invoke-static {v0}, Lzlc/season/rxdownload3/core/RealMission;->access$getDownloadType$p(Lzlc/season/rxdownload3/core/RealMission;)Lzlc/season/rxdownload3/core/DownloadType;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lzlc/season/rxdownload3/core/DownloadType;->delete()V

    .line 233
    :cond_19
    iget-object v0, p0, Lzlc/season/rxdownload3/core/RealMission$delete$1;->this$0:Lzlc/season/rxdownload3/core/RealMission;

    invoke-static {v0}, Lzlc/season/rxdownload3/core/RealMission;->access$getEnableDb$p(Lzlc/season/rxdownload3/core/RealMission;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 234
    iget-object v0, p0, Lzlc/season/rxdownload3/core/RealMission$delete$1;->this$0:Lzlc/season/rxdownload3/core/RealMission;

    invoke-static {v0}, Lzlc/season/rxdownload3/core/RealMission;->access$getDbActor$p(Lzlc/season/rxdownload3/core/RealMission;)Lzlc/season/rxdownload3/database/DbActor;

    move-result-object v0

    iget-object v1, p0, Lzlc/season/rxdownload3/core/RealMission$delete$1;->this$0:Lzlc/season/rxdownload3/core/RealMission;

    invoke-interface {v0, v1}, Lzlc/season/rxdownload3/database/DbActor;->delete(Lzlc/season/rxdownload3/core/RealMission;)V

    .line 236
    :cond_2c
    iget-object v0, p0, Lzlc/season/rxdownload3/core/RealMission$delete$1;->this$0:Lzlc/season/rxdownload3/core/RealMission;

    new-instance v1, Lzlc/season/rxdownload3/core/Deleted;

    new-instance v10, Lzlc/season/rxdownload3/core/Status;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x7

    const/4 v9, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lzlc/season/rxdownload3/core/Status;-><init>(JJZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v1, v10}, Lzlc/season/rxdownload3/core/Deleted;-><init>(Lzlc/season/rxdownload3/core/Status;)V

    check-cast v1, Lzlc/season/rxdownload3/core/Status;

    invoke-virtual {v0, v1}, Lzlc/season/rxdownload3/core/RealMission;->emitStatusWithNotification(Lzlc/season/rxdownload3/core/Status;)V

    .line 237
    invoke-static {}, Lzlc/season/rxdownload3/helper/UtilsKt;->getANY()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/reactivex/MaybeEmitter;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
