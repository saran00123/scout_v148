.class public Lcom/taobao/accs/net/s;
.super Lcom/taobao/accs/net/b;
.source "Taobao"

# interfaces
.implements Lorg/android/spdy/SessionCb;
.implements Lorg/android/spdy/Spdycb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/accs/net/s$a;
    }
.end annotation


# instance fields
.field private A:Ljava/lang/Object;

.field private B:J

.field private C:J

.field private D:J

.field private E:J

.field private F:I

.field private G:Ljava/lang/String;

.field private H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

.field private I:Lcom/taobao/accs/ut/a/c;

.field private J:Z

.field private K:Ljava/lang/String;

.field private L:Z

.field private M:Lcom/taobao/accs/net/g;

.field private N:Ljava/lang/String;

.field protected n:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field protected o:Ljava/lang/String;

.field protected p:I

.field protected q:Ljava/lang/String;

.field protected r:I

.field private s:I

.field private t:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/taobao/accs/data/Message;",
            ">;"
        }
    .end annotation
.end field

.field private u:Lcom/taobao/accs/net/s$a;

.field private v:Z

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Lorg/android/spdy/SpdyAgent;

.field private z:Lorg/android/spdy/SpdySession;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .registers 4

    .line 129
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/accs/net/b;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    const/4 p1, 0x3

    .line 75
    iput p1, p0, Lcom/taobao/accs/net/s;->s:I

    .line 77
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/taobao/accs/net/s;->t:Ljava/util/LinkedList;

    const/4 p1, 0x1

    .line 81
    iput-boolean p1, p0, Lcom/taobao/accs/net/s;->v:Z

    const/4 p1, 0x0

    .line 87
    iput-object p1, p0, Lcom/taobao/accs/net/s;->y:Lorg/android/spdy/SpdyAgent;

    .line 89
    iput-object p1, p0, Lcom/taobao/accs/net/s;->z:Lorg/android/spdy/SpdySession;

    .line 91
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/taobao/accs/net/s;->A:Ljava/lang/Object;

    const/4 p2, -0x1

    .line 101
    iput p2, p0, Lcom/taobao/accs/net/s;->F:I

    .line 103
    iput-object p1, p0, Lcom/taobao/accs/net/s;->G:Ljava/lang/String;

    const/4 p1, 0x0

    .line 109
    iput-boolean p1, p0, Lcom/taobao/accs/net/s;->J:Z

    const-string p2, ""

    .line 111
    iput-object p2, p0, Lcom/taobao/accs/net/s;->K:Ljava/lang/String;

    .line 113
    iput-boolean p1, p0, Lcom/taobao/accs/net/s;->L:Z

    .line 130
    new-instance p1, Lcom/taobao/accs/net/g;

    invoke-virtual {p0}, Lcom/taobao/accs/net/s;->m()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/taobao/accs/net/g;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/taobao/accs/net/s;->M:Lcom/taobao/accs/net/g;

    .line 131
    invoke-direct {p0}, Lcom/taobao/accs/net/s;->r()V

    return-void
.end method

.method static synthetic a(Lcom/taobao/accs/net/s;J)J
    .registers 3

    .line 57
    iput-wide p1, p0, Lcom/taobao/accs/net/s;->B:J

    return-wide p1
.end method

.method static synthetic a(Lcom/taobao/accs/net/s;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 57
    iput-object p1, p0, Lcom/taobao/accs/net/s;->K:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/taobao/accs/net/s;)Ljava/util/LinkedList;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/taobao/accs/net/s;->t:Ljava/util/LinkedList;

    return-object p0
.end method

.method private a(Lcom/alibaba/sdk/android/error/ErrorCode;)V
    .registers 13

    const/4 v0, 0x0

    .line 1030
    iput-object v0, p0, Lcom/taobao/accs/net/s;->k:Ljava/lang/String;

    .line 1031
    invoke-virtual {p0}, Lcom/taobao/accs/net/s;->l()V

    .line 1034
    iget-object v0, p0, Lcom/taobao/accs/net/s;->u:Lcom/taobao/accs/net/s$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 1035
    iget v0, v0, Lcom/taobao/accs/net/s$a;->a:I

    goto :goto_f

    :cond_e
    move v0, v1

    .line 1037
    :goto_f
    iget-object v2, p0, Lcom/taobao/accs/net/s;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "code not 200 is"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->setCloseReason(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 1038
    iput-boolean v2, p0, Lcom/taobao/accs/net/s;->L:Z

    .line 1039
    iget v3, p0, Lcom/taobao/accs/net/s;->c:I

    if-nez v3, :cond_33

    const-string v3, "service"

    goto :goto_35

    :cond_33
    const-string v3, "inapp"

    .line 1040
    :goto_35
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v4

    const v5, 0x101d1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CONNECTED NO 200 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v0, 0xdd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v0, 0x2

    new-array v10, v0, [Ljava/lang/String;

    iget-object v0, p0, Lcom/taobao/accs/net/s;->x:Ljava/lang/String;

    aput-object v0, v10, v1

    iget-object v0, p0, Lcom/taobao/accs/net/s;->K:Ljava/lang/String;

    aput-object v0, v10, v2

    move-object v7, p1

    invoke-virtual/range {v4 .. v10}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 1041
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "accs"

    const-string v2, "auth"

    invoke-static {v1, v2, p1, v0, p1}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitAlarmFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/taobao/accs/data/Message;)V
    .registers 8

    .line 286
    iget-object v0, p1, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    if-eqz v0, :cond_ba

    iget-object v0, p0, Lcom/taobao/accs/net/s;->t:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_ba

    .line 290
    :cond_e
    iget-object v0, p0, Lcom/taobao/accs/net/s;->t:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_16
    if-ltz v0, :cond_b1

    .line 291
    iget-object v2, p0, Lcom/taobao/accs/net/s;->t:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/accs/data/Message;

    if-eqz v2, :cond_ad

    .line 292
    iget-object v3, v2, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    if-eqz v3, :cond_ad

    .line 293
    invoke-virtual {v2}, Lcom/taobao/accs/data/Message;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ad

    .line 294
    iget-object v3, p1, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_bc

    goto :goto_84

    .line 311
    :pswitch_3e
    iget-object v3, v2, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_50

    iget-object v3, v2, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    .line 312
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_84

    .line 313
    :cond_50
    iget-object v3, p0, Lcom/taobao/accs/net/s;->t:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    goto :goto_84

    .line 304
    :pswitch_56
    iget-object v3, v2, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_68

    iget-object v3, v2, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    .line 305
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_84

    .line 306
    :cond_68
    iget-object v3, p0, Lcom/taobao/accs/net/s;->t:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    goto :goto_84

    .line 297
    :pswitch_6e
    iget-object v3, v2, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v1, :cond_7f

    iget-object v3, v2, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    .line 298
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_84

    .line 299
    :cond_7f
    iget-object v3, p0, Lcom/taobao/accs/net/s;->t:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 318
    :cond_84
    :goto_84
    invoke-virtual {p0}, Lcom/taobao/accs/net/s;->d()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearRepeatControlCommand message:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual {v2}, Lcom/taobao/accs/data/Message;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    .line 318
    invoke-static {v3, v2, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_ad
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_16

    .line 322
    :cond_b1
    iget-object v0, p0, Lcom/taobao/accs/net/s;->e:Lcom/taobao/accs/data/d;

    if-eqz v0, :cond_ba

    .line 323
    iget-object v0, p0, Lcom/taobao/accs/net/s;->e:Lcom/taobao/accs/data/d;

    invoke-virtual {v0, p1}, Lcom/taobao/accs/data/d;->b(Lcom/taobao/accs/data/Message;)V

    :cond_ba
    :goto_ba
    return-void

    nop

    :pswitch_data_bc
    .packed-switch 0x1
        :pswitch_6e
        :pswitch_6e
        :pswitch_56
        :pswitch_56
        :pswitch_3e
        :pswitch_3e
    .end packed-switch
.end method

.method static synthetic a(Lcom/taobao/accs/net/s;Lcom/taobao/accs/data/Message;)V
    .registers 2

    .line 57
    invoke-direct {p0, p1}, Lcom/taobao/accs/net/s;->a(Lcom/taobao/accs/data/Message;)V

    return-void
.end method

.method static synthetic a(Lcom/taobao/accs/net/s;Z)Z
    .registers 2

    .line 57
    iput-boolean p1, p0, Lcom/taobao/accs/net/s;->J:Z

    return p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 15

    .line 482
    iget-object v0, p0, Lcom/taobao/accs/net/s;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/utl/Utils;->getMode(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_b

    return v2

    .line 486
    :cond_b
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_1e

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 487
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b0

    :cond_1e
    const/4 v0, 0x3

    .line 488
    invoke-direct {p0, v0}, Lcom/taobao/accs/net/s;->c(I)V

    .line 492
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2a

    :cond_28
    move v0, v2

    goto :goto_38

    .line 494
    :cond_2a
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_32

    move v0, v1

    goto :goto_38

    .line 496
    :cond_32
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_28

    .line 499
    :goto_38
    iget-object p1, p0, Lcom/taobao/accs/net/s;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-virtual {p1, v0}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->setFailReason(I)V

    .line 500
    iget-object p1, p0, Lcom/taobao/accs/net/s;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-virtual {p1}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->onConnectStop()V

    .line 501
    iget p1, p0, Lcom/taobao/accs/net/s;->c:I

    if-nez p1, :cond_49

    const-string p1, "service"

    goto :goto_4b

    :cond_49
    const-string p1, "inapp"

    .line 504
    :goto_4b
    iget-object p2, p0, Lcom/taobao/accs/net/s;->u:Lcom/taobao/accs/net/s$a;

    if-eqz p2, :cond_52

    .line 505
    iget p2, p2, Lcom/taobao/accs/net/s$a;->a:I

    goto :goto_53

    :cond_52
    move p2, v3

    .line 507
    :goto_53
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v4

    const v5, 0x101d1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DISCONNECT "

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 508
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 p1, 0xdd

    .line 509
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-array v10, v1, [Ljava/lang/String;

    iget-object p1, p0, Lcom/taobao/accs/net/s;->x:Ljava/lang/String;

    aput-object p1, v10, v3

    iget-object p1, p0, Lcom/taobao/accs/net/s;->K:Ljava/lang/String;

    aput-object p1, v10, v2

    .line 507
    invoke-virtual/range {v4 .. v10}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 510
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "retrytimes:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "accs"

    const-string v1, "connect"

    invoke-static {v0, v1, p1, p2, p3}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitAlarmFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    :cond_b0
    return v2
.end method

.method static synthetic b(Lcom/taobao/accs/net/s;)I
    .registers 1

    .line 57
    iget p0, p0, Lcom/taobao/accs/net/s;->s:I

    return p0
.end method

.method static synthetic b(Lcom/taobao/accs/net/s;J)J
    .registers 3

    .line 57
    iput-wide p1, p0, Lcom/taobao/accs/net/s;->C:J

    return-wide p1
.end method

.method static synthetic b(Lcom/taobao/accs/net/s;Ljava/lang/String;)V
    .registers 2

    .line 57
    invoke-direct {p0, p1}, Lcom/taobao/accs/net/s;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/taobao/accs/net/s;Z)Z
    .registers 2

    .line 57
    iput-boolean p1, p0, Lcom/taobao/accs/net/s;->L:Z

    return p1
.end method

.method static synthetic c(Lcom/taobao/accs/net/s;)Lcom/taobao/accs/ut/monitor/SessionMonitor;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/taobao/accs/net/s;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    return-object p0
.end method

.method private declared-synchronized c(I)V
    .registers 11

    monitor-enter p0

    .line 527
    :try_start_1
    invoke-virtual {p0}, Lcom/taobao/accs/net/s;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "notifyStatus start"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "status"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p0, p1}, Lcom/taobao/accs/net/s;->a(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {v0, v1, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 528
    iget v0, p0, Lcom/taobao/accs/net/s;->s:I

    if-ne p1, v0, :cond_2a

    .line 529
    invoke-virtual {p0}, Lcom/taobao/accs/net/s;->d()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ignore notifyStatus"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_d5

    .line 530
    monitor-exit p0

    return-void

    .line 532
    :cond_2a
    :try_start_2a
    iput p1, p0, Lcom/taobao/accs/net/s;->s:I

    if-eq p1, v6, :cond_8d

    if-eq p1, v2, :cond_70

    const/4 v0, 0x3

    if-eq p1, v0, :cond_36

    const/4 v0, 0x4

    goto/16 :goto_ba

    .line 577
    :cond_36
    invoke-virtual {p0}, Lcom/taobao/accs/net/s;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "notifyStatus"

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "status"

    aput-object v4, v3, v5

    invoke-virtual {p0, p1}, Lcom/taobao/accs/net/s;->a(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0, v1, v3}, Lcom/taobao/accs/utl/ALog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 578
    invoke-direct {p0}, Lcom/taobao/accs/net/s;->q()V

    .line 579
    iget-object v0, p0, Lcom/taobao/accs/net/s;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/net/f;->a(Landroid/content/Context;)Lcom/taobao/accs/net/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/accs/net/f;->d()V

    .line 580
    iget-object v0, p0, Lcom/taobao/accs/net/s;->A:Ljava/lang/Object;

    monitor-enter v0
    :try_end_5a
    .catchall {:try_start_2a .. :try_end_5a} :catchall_d5

    .line 582
    :try_start_5a
    iget-object v1, p0, Lcom/taobao/accs/net/s;->A:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5f} :catch_62
    .catchall {:try_start_5a .. :try_end_5f} :catchall_60

    goto :goto_62

    :catchall_60
    move-exception p1

    goto :goto_6e

    .line 585
    :catch_62
    :goto_62
    :try_start_62
    monitor-exit v0
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_60

    .line 586
    :try_start_63
    iget-object v0, p0, Lcom/taobao/accs/net/s;->e:Lcom/taobao/accs/data/d;

    sget-object v1, Lcom/taobao/accs/a;->CON_DISCONNECTED:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v0, v1}, Lcom/taobao/accs/data/d;->a(Lcom/alibaba/sdk/android/error/ErrorCode;)V

    .line 587
    invoke-virtual {p0, v5, v6}, Lcom/taobao/accs/net/s;->a(ZZ)V
    :try_end_6d
    .catchall {:try_start_63 .. :try_end_6d} :catchall_d5

    goto :goto_ba

    .line 585
    :goto_6e
    :try_start_6e
    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_60

    :try_start_6f
    throw p1

    .line 536
    :cond_70
    iget-object v0, p0, Lcom/taobao/accs/net/s;->n:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_79

    .line 537
    iget-object v0, p0, Lcom/taobao/accs/net/s;->n:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v6}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 539
    :cond_79
    iget-object v0, p0, Lcom/taobao/accs/net/s;->N:Ljava/lang/String;

    .line 540
    invoke-static {}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v1

    new-instance v3, Lcom/taobao/accs/net/v;

    invoke-direct {v3, p0, v0}, Lcom/taobao/accs/net/v;-><init>(Lcom/taobao/accs/net/s;Ljava/lang/String;)V

    const-wide/32 v7, 0x1d4c0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3, v7, v8, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_ba

    .line 556
    :cond_8d
    iget-object v0, p0, Lcom/taobao/accs/net/s;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/net/f;->a(Landroid/content/Context;)Lcom/taobao/accs/net/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/accs/net/f;->f()V

    .line 557
    invoke-direct {p0}, Lcom/taobao/accs/net/s;->q()V

    .line 558
    iget-object v0, p0, Lcom/taobao/accs/net/s;->n:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_a2

    .line 559
    iget-object v0, p0, Lcom/taobao/accs/net/s;->n:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v6}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 561
    :cond_a2
    iget-object v0, p0, Lcom/taobao/accs/net/s;->A:Ljava/lang/Object;

    monitor-enter v0
    :try_end_a5
    .catchall {:try_start_6f .. :try_end_a5} :catchall_d5

    .line 563
    :try_start_a5
    iget-object v1, p0, Lcom/taobao/accs/net/s;->A:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_aa} :catch_ad
    .catchall {:try_start_a5 .. :try_end_aa} :catchall_ab

    goto :goto_ad

    :catchall_ab
    move-exception p1

    goto :goto_d3

    .line 566
    :catch_ad
    :goto_ad
    :try_start_ad
    monitor-exit v0
    :try_end_ae
    .catchall {:try_start_ad .. :try_end_ae} :catchall_ab

    .line 567
    :try_start_ae
    iget-object v0, p0, Lcom/taobao/accs/net/s;->t:Ljava/util/LinkedList;

    monitor-enter v0
    :try_end_b1
    .catchall {:try_start_ae .. :try_end_b1} :catchall_d5

    .line 569
    :try_start_b1
    iget-object v1, p0, Lcom/taobao/accs/net/s;->t:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_b6} :catch_b9
    .catchall {:try_start_b1 .. :try_end_b6} :catchall_b7

    goto :goto_b9

    :catchall_b7
    move-exception p1

    goto :goto_d1

    .line 572
    :catch_b9
    :goto_b9
    :try_start_b9
    monitor-exit v0
    :try_end_ba
    .catchall {:try_start_b9 .. :try_end_ba} :catchall_b7

    .line 592
    :goto_ba
    :try_start_ba
    invoke-virtual {p0}, Lcom/taobao/accs/net/s;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "notifyStatus end"

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "status"

    aput-object v3, v2, v5

    invoke-virtual {p0, p1}, Lcom/taobao/accs/net/s;->a(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v6

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_cf
    .catchall {:try_start_ba .. :try_end_cf} :catchall_d5

    .line 593
    monitor-exit p0

    return-void

    .line 572
    :goto_d1
    :try_start_d1
    monitor-exit v0
    :try_end_d2
    .catchall {:try_start_d1 .. :try_end_d2} :catchall_b7

    :try_start_d2
    throw p1
    :try_end_d3
    .catchall {:try_start_d2 .. :try_end_d3} :catchall_d5

    .line 566
    :goto_d3
    :try_start_d3
    monitor-exit v0
    :try_end_d4
    .catchall {:try_start_d3 .. :try_end_d4} :catchall_ab

    :try_start_d4
    throw p1
    :try_end_d5
    .catchall {:try_start_d4 .. :try_end_d5} :catchall_d5

    :catchall_d5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic d(Lcom/taobao/accs/net/s;)Ljava/lang/String;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/taobao/accs/net/s;->N:Ljava/lang/String;

    return-object p0
.end method

.method private d(Ljava/lang/String;)V
    .registers 18

    move-object/from16 v10, p0

    move-object/from16 v0, p1

    .line 329
    iget v1, v10, Lcom/taobao/accs/net/s;->s:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_279

    const/4 v3, 0x1

    if-ne v1, v3, :cond_e

    goto/16 :goto_279

    .line 333
    :cond_e
    iget-object v1, v10, Lcom/taobao/accs/net/s;->M:Lcom/taobao/accs/net/g;

    if-nez v1, :cond_1d

    .line 334
    new-instance v1, Lcom/taobao/accs/net/g;

    invoke-virtual/range {p0 .. p0}, Lcom/taobao/accs/net/s;->m()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/taobao/accs/net/g;-><init>(Ljava/lang/String;)V

    iput-object v1, v10, Lcom/taobao/accs/net/s;->M:Lcom/taobao/accs/net/g;

    .line 336
    :cond_1d
    iget-object v1, v10, Lcom/taobao/accs/net/s;->M:Lcom/taobao/accs/net/g;

    invoke-virtual/range {p0 .. p0}, Lcom/taobao/accs/net/s;->m()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/taobao/accs/net/g;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const-wide/16 v4, 0x0

    const/16 v6, 0x1bb

    const-wide/16 v11, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x4

    const/4 v13, 0x0

    if-eqz v1, :cond_d0

    .line 337
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_d0

    .line 339
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3c
    :goto_3c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/strategy/IConnStrategy;

    if-eqz v1, :cond_3c

    .line 341
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/accs/net/s;->d()Ljava/lang/String;

    move-result-object v9

    new-array v14, v8, [Ljava/lang/Object;

    const-string v15, "ip"

    aput-object v15, v14, v13

    invoke-interface {v1}, Lanet/channel/strategy/IConnStrategy;->getIp()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v3

    const-string v15, "port"

    aput-object v15, v14, v2

    invoke-interface {v1}, Lanet/channel/strategy/IConnStrategy;->getPort()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v14, v7

    const-string v1, "connect"

    invoke-static {v9, v1, v14}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3c

    .line 344
    :cond_6e
    iget-boolean v0, v10, Lcom/taobao/accs/net/s;->L:Z

    if-eqz v0, :cond_79

    .line 345
    iget-object v0, v10, Lcom/taobao/accs/net/s;->M:Lcom/taobao/accs/net/g;

    invoke-virtual {v0}, Lcom/taobao/accs/net/g;->b()V

    .line 346
    iput-boolean v13, v10, Lcom/taobao/accs/net/s;->L:Z

    .line 348
    :cond_79
    iget-object v0, v10, Lcom/taobao/accs/net/s;->M:Lcom/taobao/accs/net/g;

    invoke-virtual {v0}, Lcom/taobao/accs/net/g;->a()Lanet/channel/strategy/IConnStrategy;

    move-result-object v0

    if-nez v0, :cond_86

    .line 349
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/accs/net/s;->m()Ljava/lang/String;

    move-result-object v1

    goto :goto_8a

    :cond_86
    invoke-interface {v0}, Lanet/channel/strategy/IConnStrategy;->getIp()Ljava/lang/String;

    move-result-object v1

    :goto_8a
    iput-object v1, v10, Lcom/taobao/accs/net/s;->o:Ljava/lang/String;

    if-nez v0, :cond_8f

    goto :goto_93

    .line 350
    :cond_8f
    invoke-interface {v0}, Lanet/channel/strategy/IConnStrategy;->getPort()I

    move-result v6

    :goto_93
    iput v6, v10, Lcom/taobao/accs/net/s;->p:I

    const-string v0, "accs"

    const-string v1, "dns"

    const-string v6, "httpdns"

    .line 351
    invoke-static {v0, v1, v6, v4, v5}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 352
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/accs/net/s;->d()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "ip"

    aput-object v4, v1, v13

    iget-object v4, v10, Lcom/taobao/accs/net/s;->o:Ljava/lang/String;

    aput-object v4, v1, v3

    const-string v4, "port"

    aput-object v4, v1, v2

    iget v4, v10, Lcom/taobao/accs/net/s;->p:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v7

    const-string v4, "originPos"

    aput-object v4, v1, v8

    const/4 v4, 0x5

    iget-object v5, v10, Lcom/taobao/accs/net/s;->M:Lcom/taobao/accs/net/g;

    invoke-virtual {v5}, Lcom/taobao/accs/net/g;->c()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const-string v4, "connect from amdc succ"

    invoke-static {v0, v4, v1}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_fe

    :cond_d0
    if-eqz v0, :cond_d5

    .line 355
    iput-object v0, v10, Lcom/taobao/accs/net/s;->o:Ljava/lang/String;

    goto :goto_db

    .line 357
    :cond_d5
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/accs/net/s;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/taobao/accs/net/s;->o:Ljava/lang/String;

    .line 360
    :goto_db
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v14, 0x2

    rem-long/2addr v0, v14

    cmp-long v0, v0, v11

    if-nez v0, :cond_e8

    const/16 v6, 0x50

    :cond_e8
    iput v6, v10, Lcom/taobao/accs/net/s;->p:I

    const-string v0, "accs"

    const-string v1, "dns"

    const-string v6, "localdns"

    .line 361
    invoke-static {v0, v1, v6, v4, v5}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 362
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/accs/net/s;->d()Ljava/lang/String;

    move-result-object v0

    new-array v1, v13, [Ljava/lang/Object;

    const-string v4, "connect get ip from amdc fail!!"

    invoke-static {v0, v4, v1}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 364
    :goto_fe
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v10, Lcom/taobao/accs/net/s;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v10, Lcom/taobao/accs/net/s;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/accs/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/taobao/accs/net/s;->w:Ljava/lang/String;

    .line 366
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/accs/net/s;->d()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const-string v4, "URL"

    aput-object v4, v1, v13

    iget-object v4, v10, Lcom/taobao/accs/net/s;->w:Ljava/lang/String;

    aput-object v4, v1, v3

    const-string v4, "connect"

    invoke-static {v0, v4, v1}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 367
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/taobao/accs/net/s;->N:Ljava/lang/String;

    .line 369
    iget-object v0, v10, Lcom/taobao/accs/net/s;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    if-eqz v0, :cond_14c

    .line 371
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object v0

    iget-object v1, v10, Lcom/taobao/accs/net/s;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-interface {v0, v1}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V

    .line 373
    :cond_14c
    new-instance v0, Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-direct {v0}, Lcom/taobao/accs/ut/monitor/SessionMonitor;-><init>()V

    iput-object v0, v10, Lcom/taobao/accs/net/s;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    .line 374
    iget-object v0, v10, Lcom/taobao/accs/net/s;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    iget v1, v10, Lcom/taobao/accs/net/s;->c:I

    if-nez v1, :cond_15c

    const-string v1, "service"

    goto :goto_15e

    :cond_15c
    const-string v1, "inapp"

    :goto_15e
    invoke-virtual {v0, v1}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->setConnectType(Ljava/lang/String;)V

    .line 376
    iget-object v0, v10, Lcom/taobao/accs/net/s;->y:Lorg/android/spdy/SpdyAgent;

    if-eqz v0, :cond_279

    .line 378
    :try_start_165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v10, Lcom/taobao/accs/net/s;->D:J

    .line 379
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, v10, Lcom/taobao/accs/net/s;->E:J

    .line 380
    iget-object v0, v10, Lcom/taobao/accs/net/s;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/utl/UtilityImpl;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/taobao/accs/net/s;->q:Ljava/lang/String;

    .line 381
    iget-object v0, v10, Lcom/taobao/accs/net/s;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/utl/UtilityImpl;->b(Landroid/content/Context;)I

    move-result v0

    iput v0, v10, Lcom/taobao/accs/net/s;->r:I

    .line 383
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v10, Lcom/taobao/accs/net/s;->B:J

    .line 384
    iget-object v0, v10, Lcom/taobao/accs/net/s;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-virtual {v0}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->onStartConnect()V

    .line 385
    invoke-direct {v10, v2}, Lcom/taobao/accs/net/s;->c(I)V

    .line 386
    iget-object v14, v10, Lcom/taobao/accs/net/s;->A:Ljava/lang/Object;

    monitor-enter v14
    :try_end_192
    .catch Ljava/lang/Exception; {:try_start_165 .. :try_end_192} :catch_275

    .line 389
    :try_start_192
    iget-object v0, v10, Lcom/taobao/accs/net/s;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20a

    iget v0, v10, Lcom/taobao/accs/net/s;->r:I

    if-ltz v0, :cond_20a

    iget-boolean v0, v10, Lcom/taobao/accs/net/s;->J:Z

    if-eqz v0, :cond_20a

    .line 390
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/accs/net/s;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "connect"

    new-array v4, v8, [Ljava/lang/Object;

    const-string v5, "proxy"

    aput-object v5, v4, v13

    iget-object v5, v10, Lcom/taobao/accs/net/s;->q:Ljava/lang/String;

    aput-object v5, v4, v3

    const-string v3, "port"

    aput-object v3, v4, v2

    iget v2, v10, Lcom/taobao/accs/net/s;->r:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v7

    invoke-static {v0, v1, v4}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 391
    new-instance v0, Lorg/android/spdy/SessionInfo;

    iget-object v2, v10, Lcom/taobao/accs/net/s;->o:Ljava/lang/String;

    iget v3, v10, Lcom/taobao/accs/net/s;->p:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/taobao/accs/net/s;->m()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v10, Lcom/taobao/accs/net/s;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v10, Lcom/taobao/accs/net/s;->q:Ljava/lang/String;

    iget v6, v10, Lcom/taobao/accs/net/s;->r:I

    iget-object v7, v10, Lcom/taobao/accs/net/s;->N:Ljava/lang/String;

    const/16 v9, 0x1082

    move-object v1, v0

    move-object/from16 v8, p0

    invoke-direct/range {v1 .. v9}, Lorg/android/spdy/SessionInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;Lorg/android/spdy/SessionCb;I)V

    .line 392
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v10, Lcom/taobao/accs/net/s;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v10, Lcom/taobao/accs/net/s;->r:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/taobao/accs/net/s;->K:Ljava/lang/String;

    goto :goto_245

    .line 394
    :cond_20a
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/accs/net/s;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "connect normal"

    new-array v2, v13, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 395
    new-instance v0, Lorg/android/spdy/SessionInfo;

    iget-object v2, v10, Lcom/taobao/accs/net/s;->o:Ljava/lang/String;

    iget v3, v10, Lcom/taobao/accs/net/s;->p:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/taobao/accs/net/s;->m()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v10, Lcom/taobao/accs/net/s;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, v10, Lcom/taobao/accs/net/s;->N:Ljava/lang/String;

    const/16 v9, 0x1082

    move-object v1, v0

    move-object/from16 v8, p0

    invoke-direct/range {v1 .. v9}, Lorg/android/spdy/SessionInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;Lorg/android/spdy/SessionCb;I)V

    const-string v1, ""

    .line 396
    iput-object v1, v10, Lcom/taobao/accs/net/s;->K:Ljava/lang/String;

    .line 398
    :goto_245
    invoke-direct/range {p0 .. p0}, Lcom/taobao/accs/net/s;->o()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/android/spdy/SessionInfo;->setPubKeySeqNum(I)V

    const v1, 0x9c40

    .line 399
    invoke-virtual {v0, v1}, Lorg/android/spdy/SessionInfo;->setConnectionTimeoutMs(I)V

    .line 400
    iget-object v1, v10, Lcom/taobao/accs/net/s;->y:Lorg/android/spdy/SpdyAgent;

    invoke-virtual {v1, v0}, Lorg/android/spdy/SpdyAgent;->createSession(Lorg/android/spdy/SessionInfo;)Lorg/android/spdy/SpdySession;

    move-result-object v0

    iput-object v0, v10, Lcom/taobao/accs/net/s;->z:Lorg/android/spdy/SpdySession;

    .line 401
    iget-object v0, v10, Lcom/taobao/accs/net/s;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    iput-wide v11, v0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->connection_stop_date:J

    .line 402
    iget-object v0, v10, Lcom/taobao/accs/net/s;->A:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_263
    .catch Ljava/lang/InterruptedException; {:try_start_192 .. :try_end_263} :catch_26d
    .catch Ljava/lang/Exception; {:try_start_192 .. :try_end_263} :catch_266
    .catchall {:try_start_192 .. :try_end_263} :catchall_264

    goto :goto_271

    :catchall_264
    move-exception v0

    goto :goto_273

    :catch_266
    move-exception v0

    .line 406
    :try_start_267
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 407
    iput-boolean v13, v10, Lcom/taobao/accs/net/s;->J:Z

    goto :goto_271

    :catch_26d
    move-exception v0

    .line 404
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 409
    :goto_271
    monitor-exit v14

    goto :goto_279

    :goto_273
    monitor-exit v14
    :try_end_274
    .catchall {:try_start_267 .. :try_end_274} :catchall_264

    :try_start_274
    throw v0
    :try_end_275
    .catch Ljava/lang/Exception; {:try_start_274 .. :try_end_275} :catch_275

    :catch_275
    move-exception v0

    .line 411
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_279
    :goto_279
    return-void
.end method

.method static synthetic e(Lcom/taobao/accs/net/s;)Lcom/taobao/accs/net/g;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/taobao/accs/net/s;->M:Lcom/taobao/accs/net/g;

    return-object p0
.end method

.method static synthetic f(Lcom/taobao/accs/net/s;)Z
    .registers 1

    .line 57
    iget-boolean p0, p0, Lcom/taobao/accs/net/s;->v:Z

    return p0
.end method

.method static synthetic g(Lcom/taobao/accs/net/s;)J
    .registers 3

    .line 57
    iget-wide v0, p0, Lcom/taobao/accs/net/s;->B:J

    return-wide v0
.end method

.method static synthetic h(Lcom/taobao/accs/net/s;)Lorg/android/spdy/SpdySession;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/taobao/accs/net/s;->z:Lorg/android/spdy/SpdySession;

    return-object p0
.end method

.method static synthetic i(Lcom/taobao/accs/net/s;)V
    .registers 1

    .line 57
    invoke-direct {p0}, Lcom/taobao/accs/net/s;->q()V

    return-void
.end method

.method private o()I
    .registers 6

    .line 417
    invoke-virtual {p0}, Lcom/taobao/accs/net/s;->k()Z

    move-result v0

    .line 419
    sget v1, Lcom/taobao/accs/AccsClientConfig;->mEnv:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_b

    goto :goto_2f

    .line 427
    :cond_b
    iget-object v1, p0, Lcom/taobao/accs/net/s;->i:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v1}, Lcom/taobao/accs/AccsClientConfig;->getChannelPubKey()I

    move-result v1

    if-lez v1, :cond_2a

    .line 429
    invoke-virtual {p0}, Lcom/taobao/accs/net/s;->d()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "pubKey"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "getPublicKeyType use custom pub key"

    invoke-static {v0, v3, v2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_2a
    if-eqz v0, :cond_2e

    const/4 v3, 0x4

    goto :goto_2f

    :cond_2e
    const/4 v3, 0x3

    :goto_2f
    return v3
.end method

.method private p()V
    .registers 11

    .line 443
    iget-object v0, p0, Lcom/taobao/accs/net/s;->z:Lorg/android/spdy/SpdySession;

    if-nez v0, :cond_9

    const/4 v0, 0x3

    .line 444
    invoke-direct {p0, v0}, Lcom/taobao/accs/net/s;->c(I)V

    return-void

    :cond_9
    const/4 v0, 0x0

    .line 448
    :try_start_a
    iget-object v1, p0, Lcom/taobao/accs/net/s;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/taobao/accs/utl/UtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 449
    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 450
    invoke-virtual {p0}, Lcom/taobao/accs/net/s;->i()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/accs/net/s;->i:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v3}, Lcom/taobao/accs/AccsClientConfig;->getAppSecret()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/taobao/accs/net/s;->d:Landroid/content/Context;

    .line 451
    invoke-static {v4}, Lcom/taobao/accs/utl/UtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 450
    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/UtilityImpl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 453
    iget-object v3, p0, Lcom/taobao/accs/net/s;->w:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/taobao/accs/net/s;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 454
    invoke-virtual {p0}, Lcom/taobao/accs/net/s;->d()Ljava/lang/String;

    move-result-object v4

    const-string v5, "auth"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    const-string v8, "url"

    aput-object v8, v7, v0

    const/4 v8, 0x1

    aput-object v3, v7, v8

    invoke-static {v4, v5, v7}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 455
    iput-object v3, p0, Lcom/taobao/accs/net/s;->x:Ljava/lang/String;

    .line 457
    invoke-virtual {p0}, Lcom/taobao/accs/net/s;->i()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v4, v2}, Lcom/taobao/accs/net/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_95

    .line 458
    sget-object v3, Lcom/taobao/accs/a;->AUTH_PARAM_ERROR:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/error/ErrorCode;->copy()Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "device "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " key "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/taobao/accs/net/s;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " sign "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->detail(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v1

    .line 459
    invoke-virtual {p0}, Lcom/taobao/accs/net/s;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "auth param error!"

    new-array v4, v6, [Ljava/lang/Object;

    const-string v5, "code"

    aput-object v5, v4, v0

    aput-object v1, v4, v8

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 460
    invoke-direct {p0, v1}, Lcom/taobao/accs/net/s;->a(Lcom/alibaba/sdk/android/error/ErrorCode;)V

    return-void

    .line 464
    :cond_95
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 465
    new-instance v1, Lorg/android/spdy/SpdyRequest;

    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-string v6, "GET"

    sget-object v7, Lorg/android/spdy/RequestPriority;->DEFAULT_PRIORITY:Lorg/android/spdy/RequestPriority;

    const v8, 0x13880

    const v9, 0x9c40

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lorg/android/spdy/SpdyRequest;-><init>(Ljava/net/URL;Ljava/lang/String;Lorg/android/spdy/RequestPriority;II)V

    .line 470
    invoke-virtual {p0}, Lcom/taobao/accs/net/s;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/android/spdy/SpdyRequest;->setDomain(Ljava/lang/String;)V

    .line 471
    new-instance v2, Lorg/android/spdy/SpdyDataProvider;

    const/4 v3, 0x0

    check-cast v3, [B

    invoke-direct {v2, v3}, Lorg/android/spdy/SpdyDataProvider;-><init>([B)V

    .line 472
    iget-object v3, p0, Lcom/taobao/accs/net/s;->z:Lorg/android/spdy/SpdySession;

    invoke-virtual {p0}, Lcom/taobao/accs/net/s;->m()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v2, v4, p0}, Lorg/android/spdy/SpdySession;->submitRequest(Lorg/android/spdy/SpdyRequest;Lorg/android/spdy/SpdyDataProvider;Ljava/lang/Object;Lorg/android/spdy/Spdycb;)I
    :try_end_c7
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_c7} :catch_c8

    goto :goto_e9

    :catch_c8
    move-exception v1

    .line 474
    invoke-virtual {p0}, Lcom/taobao/accs/net/s;->d()Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "auth exception "

    invoke-static {v2, v3, v1, v0}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 475
    sget-object v0, Lcom/taobao/accs/a;->AUTH_EXCEPTION:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorCode;->copy()Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->detail(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/taobao/accs/net/s;->a(Lcom/alibaba/sdk/android/error/ErrorCode;)V

    :goto_e9
    return-void
.end method

.method private declared-synchronized q()V
    .registers 3

    monitor-enter p0

    .line 518
    :try_start_1
    iget v0, p0, Lcom/taobao/accs/net/s;->c:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1f

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 519
    monitor-exit p0

    return-void

    .line 521
    :cond_8
    :try_start_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/accs/net/s;->B:J

    .line 522
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/accs/net/s;->C:J

    .line 523
    iget-object v0, p0, Lcom/taobao/accs/net/s;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/net/f;->a(Landroid/content/Context;)Lcom/taobao/accs/net/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/accs/net/f;->a()V
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_1f

    .line 524
    monitor-exit p0

    return-void

    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private r()V
    .registers 7

    const-string v0, "initClient"

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 603
    :try_start_4
    sput-boolean v1, Lorg/android/spdy/SpdyAgent;->enableDebug:Z

    .line 604
    iget-object v1, p0, Lcom/taobao/accs/net/s;->d:Landroid/content/Context;

    sget-object v3, Lorg/android/spdy/SpdyVersion;->SPDY3:Lorg/android/spdy/SpdyVersion;

    sget-object v4, Lorg/android/spdy/SpdySessionKind;->NONE_SESSION:Lorg/android/spdy/SpdySessionKind;

    invoke-static {v1, v3, v4}, Lorg/android/spdy/SpdyAgent;->getInstance(Landroid/content/Context;Lorg/android/spdy/SpdyVersion;Lorg/android/spdy/SpdySessionKind;)Lorg/android/spdy/SpdyAgent;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/accs/net/s;->y:Lorg/android/spdy/SpdyAgent;

    .line 606
    invoke-static {}, Lorg/android/spdy/SpdyAgent;->checkLoadSucc()Z

    move-result v1

    if-eqz v1, :cond_74

    .line 608
    invoke-static {}, Lcom/taobao/accs/utl/f;->a()V

    .line 609
    invoke-virtual {p0}, Lcom/taobao/accs/net/s;->k()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 610
    iget-object v1, p0, Lcom/taobao/accs/net/s;->y:Lorg/android/spdy/SpdyAgent;

    new-instance v3, Lcom/taobao/accs/net/w;

    invoke-direct {v3, p0}, Lcom/taobao/accs/net/w;-><init>(Lcom/taobao/accs/net/s;)V

    invoke-virtual {v1, v3}, Lorg/android/spdy/SpdyAgent;->setAccsSslCallback(Lorg/android/spdy/AccsSSLCallback;)V

    .line 617
    :cond_2b
    invoke-static {v2}, Lcom/taobao/accs/utl/OrangeAdapter;->isTnetLogOff(Z)Z

    move-result v1

    if-nez v1, :cond_8b

    .line 619
    iget v1, p0, Lcom/taobao/accs/net/s;->c:I

    if-nez v1, :cond_38

    const-string v1, "service"

    goto :goto_3a

    :cond_38
    const-string v1, "inapp"

    .line 620
    :goto_3a
    invoke-virtual {p0}, Lcom/taobao/accs/net/s;->d()Ljava/lang/String;

    move-result-object v3

    const-string v4, "into--[setTnetLogPath]"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 621
    iget-object v3, p0, Lcom/taobao/accs/net/s;->d:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/taobao/accs/utl/UtilityImpl;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 622
    invoke-virtual {p0}, Lcom/taobao/accs/net/s;->d()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "config tnet log path:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 623
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8b

    .line 624
    iget-object v3, p0, Lcom/taobao/accs/net/s;->y:Lorg/android/spdy/SpdyAgent;

    const/high16 v4, 0x500000

    const/4 v5, 0x5

    invoke-virtual {v3, v1, v4, v5}, Lorg/android/spdy/SpdyAgent;->configLogFile(Ljava/lang/String;II)I

    goto :goto_8b

    .line 628
    :cond_74
    invoke-virtual {p0}, Lcom/taobao/accs/net/s;->d()Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 629
    invoke-static {}, Lcom/taobao/accs/utl/f;->b()V
    :try_end_80
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_80} :catch_81

    goto :goto_8b

    :catch_81
    move-exception v1

    .line 632
    invoke-virtual {p0}, Lcom/taobao/accs/net/s;->d()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_8b
    :goto_8b
    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    const/4 v0, 0x1

    .line 136
    iput-boolean v0, p0, Lcom/taobao/accs/net/s;->v:Z

    .line 137
    invoke-virtual {p0}, Lcom/taobao/accs/net/s;->d()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "start"

    invoke-static {v0, v3, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    iget-object v0, p0, Lcom/taobao/accs/net/s;->d:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/taobao/accs/net/s;->a(Landroid/content/Context;)V

    .line 139
    iget-object v0, p0, Lcom/taobao/accs/net/s;->u:Lcom/taobao/accs/net/s$a;

    if-nez v0, :cond_48

    .line 140
    invoke-virtual {p0}, Lcom/taobao/accs/net/s;->d()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "start thread"

    invoke-static {v0, v3, v2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    new-instance v0, Lcom/taobao/accs/net/s$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NetworkThread_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/taobao/accs/net/s;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/taobao/accs/net/s$a;-><init>(Lcom/taobao/accs/net/s;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/taobao/accs/net/s;->u:Lcom/taobao/accs/net/s$a;

    .line 142
    iget-object v0, p0, Lcom/taobao/accs/net/s;->u:Lcom/taobao/accs/net/s$a;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/taobao/accs/net/s$a;->setPriority(I)V

    .line 143
    iget-object v0, p0, Lcom/taobao/accs/net/s;->u:Lcom/taobao/accs/net/s$a;

    invoke-virtual {v0}, Lcom/taobao/accs/net/s$a;->start()V

    .line 145
    :cond_48
    invoke-virtual {p0, v1, v1}, Lcom/taobao/accs/net/s;->a(ZZ)V

    return-void
.end method

.method protected a(Landroid/content/Context;)V
    .registers 4

    .line 1137
    iget-boolean v0, p0, Lcom/taobao/accs/net/s;->g:Z

    if-eqz v0, :cond_5

    return-void

    .line 1140
    :cond_5
    invoke-super {p0, p1}, Lcom/taobao/accs/net/b;->a(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 1141
    invoke-static {p1}, Lanet/channel/GlobalAppRuntimeInfo;->setBackground(Z)V

    const/4 v0, 0x1

    .line 1142
    iput-boolean v0, p0, Lcom/taobao/accs/net/s;->g:Z

    .line 1143
    invoke-virtual {p0}, Lcom/taobao/accs/net/s;->d()Ljava/lang/String;

    move-result-object v0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v1, "init awcn success!"

    invoke-static {v0, v1, p1}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected a(Lcom/taobao/accs/data/Message;Z)V
    .registers 8

    .line 149
    iget-boolean v0, p0, Lcom/taobao/accs/net/s;->v:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_e4

    if-nez p1, :cond_9

    goto/16 :goto_e4

    .line 154
    :cond_9
    :try_start_9
    invoke-static {}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    const/16 v2, 0x3e8

    if-gt v0, v2, :cond_6d

    .line 158
    invoke-static {}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    new-instance v2, Lcom/taobao/accs/net/t;

    invoke-direct {v2, p0, p1, p2}, Lcom/taobao/accs/net/t;-><init>(Lcom/taobao/accs/net/s;Lcom/taobao/accs/data/Message;Z)V

    iget-wide v3, p1, Lcom/taobao/accs/data/Message;->Q:J

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4, p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p2

    .line 196
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->a()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_49

    iget-object v0, p1, Lcom/taobao/accs/data/Message;->O:Ljava/lang/String;

    if-eqz v0, :cond_49

    .line 199
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->c()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 200
    iget-object v0, p1, Lcom/taobao/accs/data/Message;->O:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/taobao/accs/net/s;->a(Ljava/lang/String;)Z

    .line 202
    :cond_40
    iget-object v0, p0, Lcom/taobao/accs/net/s;->e:Lcom/taobao/accs/data/d;

    iget-object v0, v0, Lcom/taobao/accs/data/d;->a:Ljava/util/concurrent/ConcurrentMap;

    iget-object v2, p1, Lcom/taobao/accs/data/Message;->O:Ljava/lang/String;

    invoke-interface {v0, v2, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    :cond_49
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object p2

    if-eqz p2, :cond_e3

    .line 206
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object p2

    iget-object v0, p0, Lcom/taobao/accs/net/s;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/utl/UtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setDeviceId(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object p2

    iget v0, p0, Lcom/taobao/accs/net/s;->c:I

    invoke-virtual {p2, v0}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setConnType(I)V

    .line 208
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->onEnterQueueData()V

    goto :goto_e3

    .line 155
    :cond_6d
    new-instance p2, Ljava/util/concurrent/RejectedExecutionException;

    const-string v0, "accs"

    invoke-direct {p2, v0}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_75
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_9 .. :try_end_75} :catch_99
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_75} :catch_75

    :catch_75
    move-exception p2

    .line 216
    invoke-virtual {p0}, Lcom/taobao/accs/net/s;->d()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "send error"

    invoke-static {v0, v2, p2, v1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 217
    iget-object v0, p0, Lcom/taobao/accs/net/s;->e:Lcom/taobao/accs/data/d;

    sget-object v1, Lcom/taobao/accs/a;->UNKNOWN_ERROR:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/error/ErrorCode;->copy()Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v1

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->detail(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/taobao/accs/data/d;->a(Lcom/taobao/accs/data/Message;Lcom/alibaba/sdk/android/error/ErrorCode;)V

    goto :goto_e3

    .line 212
    :catch_99
    invoke-static {}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result p2

    .line 213
    iget-object v0, p0, Lcom/taobao/accs/net/s;->e:Lcom/taobao/accs/data/d;

    sget-object v2, Lcom/taobao/accs/a;->MESSAGE_QUEUE_FULL:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/error/ErrorCode;->copy()Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "channel "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->detail(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/taobao/accs/data/d;->a(Lcom/taobao/accs/data/Message;Lcom/alibaba/sdk/android/error/ErrorCode;)V

    .line 214
    invoke-virtual {p0}, Lcom/taobao/accs/net/s;->d()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send queue full count:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_e3
    :goto_e3
    return-void

    .line 150
    :cond_e4
    :goto_e4
    invoke-virtual {p0}, Lcom/taobao/accs/net/s;->d()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "not running or msg null! "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/taobao/accs/net/s;->v:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected a(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 4

    const/4 p1, 0x4

    .line 1071
    :try_start_1
    invoke-direct {p0, p1}, Lcom/taobao/accs/net/s;->c(I)V

    .line 1072
    invoke-virtual {p0}, Lcom/taobao/accs/net/s;->l()V

    .line 1073
    iget-object p1, p0, Lcom/taobao/accs/net/s;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-virtual {p1, p3}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->setCloseReason(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_d

    goto :goto_11

    :catch_d
    move-exception p1

    .line 1075
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_11
    return-void
.end method

.method public a(ZZ)V
    .registers 7

    .line 245
    invoke-virtual {p0}, Lcom/taobao/accs/net/s;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "try ping, force:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 246
    iget v0, p0, Lcom/taobao/accs/net/s;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2c

    .line 247
    invoke-virtual {p0}, Lcom/taobao/accs/net/s;->d()Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    const-string v0, "INAPP, skip"

    invoke-static {p1, v0, p2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2c
    if-eqz p2, :cond_3c

    .line 250
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    mul-double/2addr v0, v2

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    goto :goto_3e

    :cond_3c
    const-wide/16 v0, 0x0

    :goto_3e
    double-to-int p2, v0

    invoke-static {p1, p2}, Lcom/taobao/accs/data/Message;->a(ZI)Lcom/taobao/accs/data/Message;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/taobao/accs/net/s;->b(Lcom/taobao/accs/data/Message;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .registers 7

    .line 1087
    iget-object v0, p0, Lcom/taobao/accs/net/s;->t:Ljava/util/LinkedList;

    monitor-enter v0

    .line 1088
    :try_start_3
    iget-object v1, p0, Lcom/taobao/accs/net/s;->t:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_b
    if-ltz v1, :cond_32

    .line 1089
    iget-object v3, p0, Lcom/taobao/accs/net/s;->t:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/accs/data/Message;

    if-eqz v3, :cond_2f

    .line 1091
    invoke-virtual {v3}, Lcom/taobao/accs/data/Message;->a()I

    move-result v4

    if-ne v4, v2, :cond_2f

    iget-object v4, v3, Lcom/taobao/accs/data/Message;->O:Ljava/lang/String;

    if-eqz v4, :cond_2f

    iget-object v3, v3, Lcom/taobao/accs/data/Message;->O:Ljava/lang/String;

    .line 1093
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 1094
    iget-object p1, p0, Lcom/taobao/accs/net/s;->t:Ljava/util/LinkedList;

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    goto :goto_33

    :cond_2f
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    :cond_32
    const/4 v2, 0x0

    .line 1099
    :goto_33
    monitor-exit v0

    return v2

    :catchall_35
    move-exception p1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw p1
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1148
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/taobao/accs/net/s;->i:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v0}, Lcom/taobao/accs/AccsClientConfig;->getChannelHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .registers 2

    const/4 v0, 0x0

    .line 1059
    iput-boolean v0, p0, Lcom/taobao/accs/net/s;->J:Z

    .line 1060
    iput v0, p0, Lcom/taobao/accs/net/s;->f:I

    return-void
.end method

.method public bioPingRecvCallback(Lorg/android/spdy/SpdySession;I)V
    .registers 5

    .line 1065
    invoke-virtual {p0}, Lcom/taobao/accs/net/s;->d()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bioPingRecvCallback uniId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lcom/taobao/accs/utl/ALog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public c()Lcom/taobao/accs/ut/a/c;
    .registers 4

    .line 270
    iget-object v0, p0, Lcom/taobao/accs/net/s;->I:Lcom/taobao/accs/ut/a/c;

    if-nez v0, :cond_b

    .line 271
    new-instance v0, Lcom/taobao/accs/ut/a/c;

    invoke-direct {v0}, Lcom/taobao/accs/ut/a/c;-><init>()V

    iput-object v0, p0, Lcom/taobao/accs/net/s;->I:Lcom/taobao/accs/ut/a/c;

    .line 273
    :cond_b
    iget-object v0, p0, Lcom/taobao/accs/net/s;->I:Lcom/taobao/accs/ut/a/c;

    iget v1, p0, Lcom/taobao/accs/net/s;->c:I

    iput v1, v0, Lcom/taobao/accs/ut/a/c;->b:I

    .line 274
    iget-object v0, p0, Lcom/taobao/accs/net/s;->I:Lcom/taobao/accs/ut/a/c;

    iget-object v1, p0, Lcom/taobao/accs/net/s;->t:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    iput v1, v0, Lcom/taobao/accs/ut/a/c;->d:I

    .line 275
    iget-object v0, p0, Lcom/taobao/accs/net/s;->I:Lcom/taobao/accs/ut/a/c;

    iget-object v1, p0, Lcom/taobao/accs/net/s;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/taobao/accs/utl/UtilityImpl;->g(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/taobao/accs/ut/a/c;->i:Z

    .line 276
    iget-object v0, p0, Lcom/taobao/accs/net/s;->I:Lcom/taobao/accs/ut/a/c;

    iget-object v1, p0, Lcom/taobao/accs/net/s;->K:Ljava/lang/String;

    iput-object v1, v0, Lcom/taobao/accs/ut/a/c;->f:Ljava/lang/String;

    .line 277
    iget v1, p0, Lcom/taobao/accs/net/s;->s:I

    iput v1, v0, Lcom/taobao/accs/ut/a/c;->a:I

    .line 278
    iget-object v1, p0, Lcom/taobao/accs/net/s;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    const/4 v2, 0x0

    if-eqz v1, :cond_3c

    invoke-virtual {v1}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->getRet()Z

    move-result v1

    if-eqz v1, :cond_3c

    const/4 v1, 0x1

    goto :goto_3d

    :cond_3c
    move v1, v2

    :goto_3d
    iput-boolean v1, v0, Lcom/taobao/accs/ut/a/c;->c:Z

    .line 279
    iget-object v0, p0, Lcom/taobao/accs/net/s;->I:Lcom/taobao/accs/ut/a/c;

    invoke-virtual {p0}, Lcom/taobao/accs/net/s;->n()Z

    move-result v1

    iput-boolean v1, v0, Lcom/taobao/accs/ut/a/c;->j:Z

    .line 280
    iget-object v0, p0, Lcom/taobao/accs/net/s;->I:Lcom/taobao/accs/ut/a/c;

    iget-object v1, p0, Lcom/taobao/accs/net/s;->e:Lcom/taobao/accs/data/d;

    if-nez v1, :cond_4e

    goto :goto_54

    :cond_4e
    iget-object v1, p0, Lcom/taobao/accs/net/s;->e:Lcom/taobao/accs/data/d;

    invoke-virtual {v1}, Lcom/taobao/accs/data/d;->d()I

    move-result v2

    :goto_54
    iput v2, v0, Lcom/taobao/accs/ut/a/c;->e:I

    .line 281
    iget-object v0, p0, Lcom/taobao/accs/net/s;->I:Lcom/taobao/accs/ut/a/c;

    iget-object v1, p0, Lcom/taobao/accs/net/s;->x:Ljava/lang/String;

    iput-object v1, v0, Lcom/taobao/accs/ut/a/c;->g:Ljava/lang/String;

    return-object v0
.end method

.method protected d()Ljava/lang/String;
    .registers 3

    .line 1123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SilenceConn_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/accs/net/s;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .registers 4

    .line 223
    invoke-super {p0}, Lcom/taobao/accs/net/b;->e()V

    const/4 v0, 0x0

    .line 224
    iput-boolean v0, p0, Lcom/taobao/accs/net/s;->v:Z

    .line 225
    invoke-static {}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v1

    new-instance v2, Lcom/taobao/accs/net/u;

    invoke-direct {v2, p0}, Lcom/taobao/accs/net/u;-><init>(Lcom/taobao/accs/net/s;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 240
    invoke-virtual {p0}, Lcom/taobao/accs/net/s;->d()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "shut down"

    invoke-static {v1, v2, v0}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public getSSLMeta(Lorg/android/spdy/SpdySession;)[B
    .registers 4

    .line 1106
    iget-object v0, p0, Lcom/taobao/accs/net/s;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/taobao/accs/net/s;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/android/spdy/SpdySession;->getDomain()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/taobao/accs/utl/UtilityImpl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method protected h()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public l()V
    .registers 4

    .line 260
    invoke-virtual {p0}, Lcom/taobao/accs/net/s;->d()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, " force close!"

    invoke-static {v0, v2, v1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 262
    :try_start_c
    iget-object v0, p0, Lcom/taobao/accs/net/s;->z:Lorg/android/spdy/SpdySession;

    invoke-virtual {v0}, Lorg/android/spdy/SpdySession;->closeSession()I

    .line 263
    iget-object v0, p0, Lcom/taobao/accs/net/s;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->setCloseType(I)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_17} :catch_17

    :catch_17
    const/4 v0, 0x3

    .line 266
    invoke-direct {p0, v0}, Lcom/taobao/accs/net/s;->c(I)V

    return-void
.end method

.method public m()Ljava/lang/String;
    .registers 6

    .line 596
    iget-object v0, p0, Lcom/taobao/accs/net/s;->i:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v0}, Lcom/taobao/accs/AccsClientConfig;->getChannelHost()Ljava/lang/String;

    move-result-object v0

    .line 597
    invoke-virtual {p0}, Lcom/taobao/accs/net/s;->d()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "host"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const-string v3, "getChannelHost"

    invoke-static {v1, v3, v2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v0, :cond_1e

    const-string v0, ""

    :cond_1e
    return-object v0
.end method

.method public n()Z
    .registers 2

    .line 832
    iget-boolean v0, p0, Lcom/taobao/accs/net/s;->v:Z

    return v0
.end method

.method public putSSLMeta(Lorg/android/spdy/SpdySession;[B)I
    .registers 5

    .line 1111
    iget-object v0, p0, Lcom/taobao/accs/net/s;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/taobao/accs/net/s;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/android/spdy/SpdySession;->getDomain()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1, p2}, Lcom/taobao/accs/utl/UtilityImpl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[B)I

    move-result p1

    return p1
.end method

.method public spdyCustomControlFrameFailCallback(Lorg/android/spdy/SpdySession;Ljava/lang/Object;II)V
    .registers 5

    .line 1129
    invoke-virtual {p0, p3}, Lcom/taobao/accs/net/s;->b(I)V

    return-void
.end method

.method public spdyCustomControlFrameRecvCallback(Lorg/android/spdy/SpdySession;Ljava/lang/Object;IIII[B)V
    .registers 14

    .line 939
    invoke-direct {p0}, Lcom/taobao/accs/net/s;->q()V

    .line 941
    invoke-virtual {p0}, Lcom/taobao/accs/net/s;->d()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x4

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string p5, "type"

    aput-object p5, p2, p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/4 p6, 0x1

    aput-object p5, p2, p6

    const-string p5, "len"

    const/4 v0, 0x2

    aput-object p5, p2, v0

    array-length v1, p7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, p2, v2

    const-string v1, "onFrame"

    invoke-static {p1, v1, p2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 943
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 945
    sget-object p2, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {p2}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result p2

    if-eqz p2, :cond_77

    .line 946
    array-length p2, p7

    const/16 v1, 0x200

    if-ge p2, v1, :cond_77

    .line 947
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    move p2, p3

    .line 948
    :goto_3f
    array-length v3, p7

    if-ge p2, v3, :cond_55

    .line 949
    aget-byte v3, p7, p2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    goto :goto_3f

    .line 951
    :cond_55
    invoke-virtual {p0}, Lcom/taobao/accs/net/s;->d()Ljava/lang/String;

    move-result-object p2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " log time:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, p3, [Ljava/lang/Object;

    invoke-static {p2, p1, v1}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_77
    const/16 p1, 0xc8

    if-ne p4, p1, :cond_cc

    .line 958
    :try_start_7b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 959
    iget-object p4, p0, Lcom/taobao/accs/net/s;->e:Lcom/taobao/accs/data/d;

    invoke-virtual {p4, p7}, Lcom/taobao/accs/data/d;->a([B)V

    .line 960
    iget-object p4, p0, Lcom/taobao/accs/net/s;->e:Lcom/taobao/accs/data/d;

    invoke-virtual {p4}, Lcom/taobao/accs/data/d;->g()Lcom/taobao/accs/ut/a/d;

    move-result-object p4

    if-eqz p4, :cond_bd

    .line 962
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p4, Lcom/taobao/accs/ut/a/d;->c:Ljava/lang/String;

    .line 963
    iget p1, p0, Lcom/taobao/accs/net/s;->c:I

    if-nez p1, :cond_99

    const-string p1, "service"

    goto :goto_9b

    :cond_99
    const-string p1, "inapp"

    :goto_9b
    iput-object p1, p4, Lcom/taobao/accs/ut/a/d;->g:Ljava/lang/String;

    .line 964
    invoke-virtual {p4}, Lcom/taobao/accs/ut/a/d;->a()V
    :try_end_a0
    .catch Ljava/lang/Throwable; {:try_start_7b .. :try_end_a0} :catch_a1

    goto :goto_bd

    :catch_a1
    move-exception p1

    .line 967
    invoke-virtual {p0}, Lcom/taobao/accs/net/s;->d()Ljava/lang/String;

    move-result-object p2

    new-array p4, p3, [Ljava/lang/Object;

    const-string p5, "onDataReceive "

    invoke-static {p2, p5, p1, p4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 968
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object p2

    const p4, 0x101d1

    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const-string p5, "SERVICE_DATA_RECEIVE"

    invoke-virtual {p2, p4, p5, p1}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;)V

    .line 970
    :cond_bd
    :goto_bd
    invoke-virtual {p0}, Lcom/taobao/accs/net/s;->d()Ljava/lang/String;

    move-result-object p1

    new-array p2, p3, [Ljava/lang/Object;

    const-string p4, "try handle msg"

    invoke-static {p1, p4, p2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 971
    invoke-virtual {p0}, Lcom/taobao/accs/net/s;->g()V

    goto :goto_e0

    .line 973
    :cond_cc
    invoke-virtual {p0}, Lcom/taobao/accs/net/s;->d()Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    aput-object p5, p2, p3

    array-length p4, p7

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p2, p6

    const-string p4, "drop frame"

    invoke-static {p1, p4, p2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 975
    :goto_e0
    invoke-virtual {p0}, Lcom/taobao/accs/net/s;->d()Ljava/lang/String;

    move-result-object p1

    new-array p2, p3, [Ljava/lang/Object;

    const-string p3, "spdyCustomControlFrameRecvCallback"

    invoke-static {p1, p3, p2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public spdyDataChunkRecvCB(Lorg/android/spdy/SpdySession;ZJLorg/android/spdy/SpdyByteArray;Ljava/lang/Object;)V
    .registers 7

    .line 1117
    invoke-virtual {p0}, Lcom/taobao/accs/net/s;->d()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "spdyDataChunkRecvCB"

    invoke-static {p1, p3, p2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public spdyDataRecvCallback(Lorg/android/spdy/SpdySession;ZJILjava/lang/Object;)V
    .registers 7

    .line 1053
    invoke-virtual {p0}, Lcom/taobao/accs/net/s;->d()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "spdyDataRecvCallback"

    invoke-static {p1, p3, p2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public spdyDataSendCallback(Lorg/android/spdy/SpdySession;ZJILjava/lang/Object;)V
    .registers 7

    .line 1047
    invoke-virtual {p0}, Lcom/taobao/accs/net/s;->d()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "spdyDataSendCallback"

    invoke-static {p1, p3, p2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public spdyOnStreamResponse(Lorg/android/spdy/SpdySession;JLjava/util/Map;Ljava/lang/Object;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/android/spdy/SpdySession;",
            "J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const-string p1, "spdyOnStreamResponse"

    .line 997
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/taobao/accs/net/s;->B:J

    .line 998
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/taobao/accs/net/s;->C:J

    const/4 p2, 0x0

    .line 1000
    :try_start_f
    invoke-static {p4}, Lcom/taobao/accs/utl/UtilityImpl;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p3

    const-string p5, "SilenceConn_"

    const/4 v0, 0x2

    .line 1001
    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "header"

    aput-object v2, v1, p2

    const/4 v2, 0x1

    aput-object p4, v1, v2

    invoke-static {p5, p1, v1}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p4, ":status"

    .line 1002
    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p4
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_2e} :catch_e2

    const/16 p5, 0xc8

    const-string v1, "httpStatusCode"

    if-ne p4, p5, :cond_ae

    .line 1004
    :try_start_34
    invoke-virtual {p0}, Lcom/taobao/accs/net/s;->d()Ljava/lang/String;

    move-result-object p5

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v1, v0, p2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, v0, v2

    invoke-static {p5, p1, v0}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1005
    invoke-direct {p0, v2}, Lcom/taobao/accs/net/s;->c(I)V

    const-string p4, "x-at"

    .line 1006
    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 1007
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_58

    .line 1008
    iput-object p3, p0, Lcom/taobao/accs/net/s;->k:Ljava/lang/String;

    .line 1012
    :cond_58
    iget-object p3, p0, Lcom/taobao/accs/net/s;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    iget-object p4, p0, Lcom/taobao/accs/net/s;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    iget-wide p4, p4, Lcom/taobao/accs/ut/monitor/SessionMonitor;->connection_stop_date:J

    const-wide/16 v0, 0x0

    cmp-long p4, p4, v0

    if-lez p4, :cond_6e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    iget-object v0, p0, Lcom/taobao/accs/net/s;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    iget-wide v0, v0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->connection_stop_date:J

    sub-long v0, p4, v0

    :cond_6e
    iput-wide v0, p3, Lcom/taobao/accs/ut/monitor/SessionMonitor;->auth_time:J

    .line 1013
    iget p3, p0, Lcom/taobao/accs/net/s;->c:I

    if-nez p3, :cond_77

    const-string p3, "service"

    goto :goto_79

    :cond_77
    const-string p3, "inapp"

    .line 1014
    :goto_79
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v0

    const v1, 0x101d1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "CONNECTED 200 "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/accs/net/s;->x:Ljava/lang/String;

    iget-object v4, p0, Lcom/taobao/accs/net/s;->K:Ljava/lang/String;

    const/16 p3, 0xdd

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string p3, "0"

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    const-string p3, "accs"

    const-string p4, "auth"

    const-string p5, ""

    .line 1015
    invoke-static {p3, p4, p5}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitAlarmSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_fa

    .line 1017
    :cond_ae
    invoke-virtual {p0}, Lcom/taobao/accs/net/s;->d()Ljava/lang/String;

    move-result-object p3

    new-array p5, v0, [Ljava/lang/Object;

    aput-object v1, p5, p2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p5, v2

    invoke-static {p3, p1, p5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1018
    sget-object p3, Lcom/taobao/accs/a;->NETWORKSDK_SPDY_RES_ERROR:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {p3}, Lcom/alibaba/sdk/android/error/ErrorCode;->copy()Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object p3

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "channel code "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->detail(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object p3

    invoke-virtual {p3}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/taobao/accs/net/s;->a(Lcom/alibaba/sdk/android/error/ErrorCode;)V
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_e1} :catch_e2

    goto :goto_fa

    :catch_e2
    move-exception p3

    .line 1022
    invoke-virtual {p0}, Lcom/taobao/accs/net/s;->d()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p3

    new-array p5, p2, [Ljava/lang/Object;

    invoke-static {p4, p3, p5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1023
    invoke-virtual {p0}, Lcom/taobao/accs/net/s;->l()V

    .line 1024
    iget-object p3, p0, Lcom/taobao/accs/net/s;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    const-string p4, "exception"

    invoke-virtual {p3, p4}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->setCloseReason(Ljava/lang/String;)V

    .line 1026
    :goto_fa
    invoke-virtual {p0}, Lcom/taobao/accs/net/s;->d()Ljava/lang/String;

    move-result-object p3

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p3, p1, p2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public spdyPingRecvCallback(Lorg/android/spdy/SpdySession;JLjava/lang/Object;)V
    .registers 7

    .line 921
    invoke-virtual {p0}, Lcom/taobao/accs/net/s;->d()Ljava/lang/String;

    move-result-object p1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "spdyPingRecvCallback uniId:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p4, v0}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-gez p1, :cond_22

    return-void

    .line 925
    :cond_22
    iget-object p1, p0, Lcom/taobao/accs/net/s;->e:Lcom/taobao/accs/data/d;

    invoke-virtual {p1}, Lcom/taobao/accs/data/d;->b()V

    .line 926
    iget-object p1, p0, Lcom/taobao/accs/net/s;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/taobao/accs/net/f;->a(Landroid/content/Context;)Lcom/taobao/accs/net/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/accs/net/f;->e()V

    .line 927
    iget-object p1, p0, Lcom/taobao/accs/net/s;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/taobao/accs/net/f;->a(Landroid/content/Context;)Lcom/taobao/accs/net/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/accs/net/f;->a()V

    .line 928
    iget-object p1, p0, Lcom/taobao/accs/net/s;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-virtual {p1}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->onPingCBReceive()V

    .line 930
    iget-object p1, p0, Lcom/taobao/accs/net/s;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    iget p1, p1, Lcom/taobao/accs/ut/monitor/SessionMonitor;->ping_rec_times:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_51

    .line 931
    iget-object p1, p0, Lcom/taobao/accs/net/s;->d:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    const-string p4, "service_end"

    invoke-static {p1, p4, p2, p3}, Lcom/taobao/accs/utl/UtilityImpl;->a(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_51
    return-void
.end method

.method public spdyRequestRecvCallback(Lorg/android/spdy/SpdySession;JLjava/lang/Object;)V
    .registers 5

    .line 991
    invoke-virtual {p0}, Lcom/taobao/accs/net/s;->d()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "spdyRequestRecvCallback"

    invoke-static {p1, p3, p2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public spdySessionCloseCallback(Lorg/android/spdy/SpdySession;Ljava/lang/Object;Lorg/android/spdy/SuperviseConnectInfo;I)V
    .registers 21

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    .line 880
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/accs/net/s;->d()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "errorCode"

    aput-object v6, v4, v5

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v4, v7

    const-string v6, "spdySessionCloseCallback"

    invoke-static {v0, v6, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_3e

    .line 883
    :try_start_1e
    invoke-virtual/range {p1 .. p1}, Lorg/android/spdy/SpdySession;->cleanUp()I
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_21} :catch_22

    goto :goto_3e

    :catch_22
    move-exception v0

    move-object v4, v0

    .line 886
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/accs/net/s;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "session cleanUp has exception: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v0, v4, v6}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3e
    :goto_3e
    const/4 v0, 0x3

    .line 889
    invoke-direct {v1, v0}, Lcom/taobao/accs/net/s;->c(I)V

    .line 893
    iget-object v0, v1, Lcom/taobao/accs/net/s;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-virtual {v0}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->onCloseConnect()V

    .line 894
    iget-object v0, v1, Lcom/taobao/accs/net/s;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-virtual {v0}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->getConCloseDate()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v0, v8, v10

    if-lez v0, :cond_67

    iget-object v0, v1, Lcom/taobao/accs/net/s;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-virtual {v0}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->getConStopDate()J

    move-result-wide v8

    cmp-long v0, v8, v10

    if-lez v0, :cond_67

    .line 895
    iget-object v0, v1, Lcom/taobao/accs/net/s;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-virtual {v0}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->getConCloseDate()J

    iget-object v0, v1, Lcom/taobao/accs/net/s;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-virtual {v0}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->getConStopDate()J

    .line 898
    :cond_67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/taobao/accs/net/s;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-virtual {v4}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->getCloseReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "tnet error:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 899
    iget-object v6, v1, Lcom/taobao/accs/net/s;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-virtual {v6, v0}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->setCloseReason(Ljava/lang/String;)V

    if-eqz v2, :cond_91

    .line 901
    iget-object v0, v1, Lcom/taobao/accs/net/s;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    iget v2, v2, Lorg/android/spdy/SuperviseConnectInfo;->keepalive_period_second:I

    int-to-long v8, v2

    iput-wide v8, v0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->live_time:J

    .line 903
    :cond_91
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object v0

    iget-object v2, v1, Lcom/taobao/accs/net/s;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-interface {v0, v2}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V

    .line 905
    iget-object v0, v1, Lcom/taobao/accs/net/s;->e:Lcom/taobao/accs/data/d;

    invoke-virtual {v0}, Lcom/taobao/accs/data/d;->e()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a4
    :goto_a4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_cb

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/accs/data/Message;

    .line 906
    invoke-virtual {v2}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v6

    if-eqz v6, :cond_a4

    .line 907
    invoke-virtual {v2}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v6

    const-string v8, "session close"

    invoke-virtual {v6, v8}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setFailReason(Ljava/lang/String;)V

    .line 908
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object v6

    invoke-virtual {v2}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v2

    invoke-interface {v6, v2}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V

    goto :goto_a4

    .line 912
    :cond_cb
    iget v0, v1, Lcom/taobao/accs/net/s;->c:I

    if-nez v0, :cond_d2

    const-string v0, "service"

    goto :goto_d4

    :cond_d2
    const-string v0, "inapp"

    .line 913
    :goto_d4
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/accs/net/s;->d()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "spdySessionCloseCallback, conKeepTime:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/taobao/accs/net/s;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    iget-wide v8, v8, Lcom/taobao/accs/ut/monitor/SessionMonitor;->live_time:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " connectType:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {v2, v6, v8}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 914
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v9

    const v10, 0x101d1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DISCONNECT CLOSE "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget-object v0, v1, Lcom/taobao/accs/net/s;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    iget-wide v13, v0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->live_time:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const/16 v0, 0xdd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    new-array v15, v3, [Ljava/lang/String;

    iget-object v0, v1, Lcom/taobao/accs/net/s;->x:Ljava/lang/String;

    aput-object v0, v15, v5

    iget-object v0, v1, Lcom/taobao/accs/net/s;->K:Ljava/lang/String;

    aput-object v0, v15, v7

    invoke-virtual/range {v9 .. v15}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    return-void
.end method

.method public spdySessionConnectCB(Lorg/android/spdy/SpdySession;Lorg/android/spdy/SuperviseConnectInfo;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 864
    iget v2, v1, Lorg/android/spdy/SuperviseConnectInfo;->connectTime:I

    iput v2, v0, Lcom/taobao/accs/net/s;->F:I

    .line 865
    iget v2, v1, Lorg/android/spdy/SuperviseConnectInfo;->handshakeTime:I

    .line 866
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/accs/net/s;->d()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "sessionConnectInterval"

    aput-object v6, v4, v5

    iget v6, v0, Lcom/taobao/accs/net/s;->F:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v4, v7

    const/4 v6, 0x2

    const-string v8, "sslTime"

    aput-object v8, v4, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v4, v9

    const/4 v8, 0x4

    const-string v10, "reuse"

    aput-object v10, v4, v8

    iget v8, v1, Lorg/android/spdy/SuperviseConnectInfo;->sessionTicketReused:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v10, 0x5

    aput-object v8, v4, v10

    const-string v8, "spdySessionConnectCB"

    invoke-static {v3, v8, v4}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 867
    invoke-direct/range {p0 .. p0}, Lcom/taobao/accs/net/s;->p()V

    .line 868
    iget-object v3, v0, Lcom/taobao/accs/net/s;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-virtual {v3, v7}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->setRet(Z)V

    .line 869
    iget-object v3, v0, Lcom/taobao/accs/net/s;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-virtual {v3}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->onConnectStop()V

    .line 870
    iget-object v3, v0, Lcom/taobao/accs/net/s;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    iget v4, v0, Lcom/taobao/accs/net/s;->F:I

    int-to-long v10, v4

    iput-wide v10, v3, Lcom/taobao/accs/ut/monitor/SessionMonitor;->tcp_time:J

    int-to-long v10, v2

    .line 871
    iput-wide v10, v3, Lcom/taobao/accs/ut/monitor/SessionMonitor;->ssl_time:J

    .line 872
    iget v3, v0, Lcom/taobao/accs/net/s;->c:I

    if-nez v3, :cond_5c

    const-string v3, "service"

    goto :goto_5e

    :cond_5c
    const-string v3, "inapp"

    .line 873
    :goto_5e
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v10

    const v11, 0x101d1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CONNECTED "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lorg/android/spdy/SuperviseConnectInfo;->sessionTicketReused:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iget v3, v0, Lcom/taobao/accs/net/s;->F:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    const/16 v2, 0xdd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    new-array v2, v9, [Ljava/lang/String;

    iget v1, v1, Lorg/android/spdy/SuperviseConnectInfo;->sessionTicketReused:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v5

    iget-object v1, v0, Lcom/taobao/accs/net/s;->x:Ljava/lang/String;

    aput-object v1, v2, v7

    iget-object v1, v0, Lcom/taobao/accs/net/s;->K:Ljava/lang/String;

    aput-object v1, v2, v6

    move-object/from16 v16, v2

    invoke-virtual/range {v10 .. v16}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    const-string v1, "accs"

    const-string v2, "connect"

    const-string v3, ""

    .line 874
    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitAlarmSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public spdySessionFailedError(Lorg/android/spdy/SpdySession;ILjava/lang/Object;)V
    .registers 15

    const/4 p3, 0x0

    if-eqz p1, :cond_22

    .line 840
    :try_start_3
    invoke-virtual {p1}, Lorg/android/spdy/SpdySession;->cleanUp()I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_7

    goto :goto_22

    :catch_7
    move-exception p1

    .line 843
    invoke-virtual {p0}, Lcom/taobao/accs/net/s;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "session cleanUp has exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, p3, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 846
    :cond_22
    :goto_22
    iget-object p1, p0, Lcom/taobao/accs/net/s;->u:Lcom/taobao/accs/net/s$a;

    if-eqz p1, :cond_29

    .line 847
    iget p1, p1, Lcom/taobao/accs/net/s$a;->a:I

    goto :goto_2a

    :cond_29
    move p1, p3

    .line 849
    :goto_2a
    invoke-virtual {p0}, Lcom/taobao/accs/net/s;->d()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "retryTimes"

    aput-object v2, v1, p3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-string v4, "errorId"

    aput-object v4, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v1, v5

    const-string v4, "spdySessionFailedError"

    invoke-static {v0, v4, v1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 850
    iput-boolean p3, p0, Lcom/taobao/accs/net/s;->J:Z

    .line 851
    iput-boolean v3, p0, Lcom/taobao/accs/net/s;->L:Z

    .line 852
    invoke-direct {p0, v5}, Lcom/taobao/accs/net/s;->c(I)V

    .line 853
    iget-object v0, p0, Lcom/taobao/accs/net/s;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-virtual {v0, p2}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->setFailReason(I)V

    .line 854
    iget-object v0, p0, Lcom/taobao/accs/net/s;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-virtual {v0}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->onConnectStop()V

    .line 855
    iget v0, p0, Lcom/taobao/accs/net/s;->c:I

    if-nez v0, :cond_65

    const-string v0, "service"

    goto :goto_67

    :cond_65
    const-string v0, "inapp"

    .line 856
    :goto_67
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v4

    const v5, 0x101d1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DISCONNECT "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v0, 0xdd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-array v10, v2, [Ljava/lang/String;

    iget-object v0, p0, Lcom/taobao/accs/net/s;->x:Ljava/lang/String;

    aput-object v0, v10, p3

    iget-object p3, p0, Lcom/taobao/accs/net/s;->K:Ljava/lang/String;

    aput-object p3, v10, v3

    invoke-virtual/range {v4 .. v10}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 857
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "retrytimes:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "accs"

    const-string v1, "connect"

    invoke-static {v0, v1, p1, p3, p2}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitAlarmFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public spdyStreamCloseCallback(Lorg/android/spdy/SpdySession;JILjava/lang/Object;Lorg/android/spdy/SuperviseData;)V
    .registers 7

    .line 981
    invoke-virtual {p0}, Lcom/taobao/accs/net/s;->d()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p3, p2, [Ljava/lang/Object;

    const-string p5, "spdyStreamCloseCallback"

    invoke-static {p1, p5, p3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p4, :cond_45

    .line 983
    invoke-virtual {p0}, Lcom/taobao/accs/net/s;->d()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const-string p6, "statusCode"

    aput-object p6, p3, p2

    const/4 p2, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    aput-object p6, p3, p2

    invoke-static {p1, p5, p3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 984
    sget-object p1, Lcom/taobao/accs/a;->NETWORKSDK_SPDY_CLOSE_ERROR:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/error/ErrorCode;->copy()Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "channel code "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->detail(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/taobao/accs/net/s;->a(Lcom/alibaba/sdk/android/error/ErrorCode;)V

    :cond_45
    return-void
.end method
