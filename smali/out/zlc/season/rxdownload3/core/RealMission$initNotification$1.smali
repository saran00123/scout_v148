.class final Lzlc/season/rxdownload3/core/RealMission$initNotification$1;
.super Ljava/lang/Object;
.source "RealMission.kt"

# interfaces
.implements Lio/reactivex/functions/Predicate;


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
        "Lio/reactivex/functions/Predicate<",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lzlc/season/rxdownload3/core/Status;",
        "test"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $count:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic this$0:Lzlc/season/rxdownload3/core/RealMission;


# direct methods
.method constructor <init>(Lzlc/season/rxdownload3/core/RealMission;Lkotlin/jvm/internal/Ref$IntRef;)V
    .registers 3

    iput-object p1, p0, Lzlc/season/rxdownload3/core/RealMission$initNotification$1;->this$0:Lzlc/season/rxdownload3/core/RealMission;

    iput-object p2, p0, Lzlc/season/rxdownload3/core/RealMission$initNotification$1;->$count:Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic test(Ljava/lang/Object;)Z
    .registers 2

    .line 23
    check-cast p1, Lzlc/season/rxdownload3/core/Status;

    invoke-virtual {p0, p1}, Lzlc/season/rxdownload3/core/RealMission$initNotification$1;->test(Lzlc/season/rxdownload3/core/Status;)Z

    move-result p1

    return p1
.end method

.method public final test(Lzlc/season/rxdownload3/core/Status;)Z
    .registers 10
    .param p1    # Lzlc/season/rxdownload3/core/Status;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lzlc/season/rxdownload3/core/RealMission$initNotification$1;->this$0:Lzlc/season/rxdownload3/core/RealMission;

    invoke-static {v0}, Lzlc/season/rxdownload3/core/RealMission;->access$getEnableNotification$p(Lzlc/season/rxdownload3/core/RealMission;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lzlc/season/rxdownload3/core/RealMission$initNotification$1;->this$0:Lzlc/season/rxdownload3/core/RealMission;

    invoke-virtual {v0}, Lzlc/season/rxdownload3/core/RealMission;->getActual()Lzlc/season/rxdownload3/core/Mission;

    move-result-object v0

    invoke-virtual {v0}, Lzlc/season/rxdownload3/core/Mission;->getEnableNotification()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 117
    invoke-virtual {p1}, Lzlc/season/rxdownload3/core/Status;->isImportant()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_3d

    iget-object p1, p0, Lzlc/season/rxdownload3/core/RealMission$initNotification$1;->$count:Lkotlin/jvm/internal/Ref$IntRef;

    iget p1, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    int-to-long v2, p1

    iget-object p1, p0, Lzlc/season/rxdownload3/core/RealMission$initNotification$1;->this$0:Lzlc/season/rxdownload3/core/RealMission;

    invoke-static {p1}, Lzlc/season/rxdownload3/core/RealMission;->access$getNotificationPeriod$p(Lzlc/season/rxdownload3/core/RealMission;)J

    move-result-wide v4

    const/16 p1, 0xa

    int-to-long v6, p1

    mul-long/2addr v4, v6

    cmp-long p1, v2, v4

    if-ltz p1, :cond_35

    goto :goto_3d

    .line 121
    :cond_35
    iget-object p1, p0, Lzlc/season/rxdownload3/core/RealMission$initNotification$1;->$count:Lkotlin/jvm/internal/Ref$IntRef;

    iget v2, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr v2, v0

    iput v2, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    return v1

    .line 118
    :cond_3d
    :goto_3d
    iget-object p1, p0, Lzlc/season/rxdownload3/core/RealMission$initNotification$1;->$count:Lkotlin/jvm/internal/Ref$IntRef;

    iput v1, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    return v0

    :cond_42
    return v1
.end method
