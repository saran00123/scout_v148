.class public final Lcom/vivo/push/d;
.super Ljava/lang/Object;
.source "PushClientManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/push/d$a;
    }
.end annotation


# static fields
.field private static volatile m:Lcom/vivo/push/d;


# instance fields
.field a:J

.field b:J

.field c:J

.field d:J

.field public e:Landroid/content/Context;

.field public f:Z

.field public g:Lcom/vivo/push/util/a;

.field h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Z

.field public k:Lcom/vivo/push/IPushClientFactory;

.field public l:I

.field private n:J

.field private o:J

.field private p:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/vivo/push/d$a;",
            ">;"
        }
    .end annotation
.end field

.field private q:I

.field private r:Ljava/lang/Boolean;

.field private s:Ljava/lang/Long;


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 105
    iput-wide v0, p0, Lcom/vivo/push/d;->a:J

    .line 106
    iput-wide v0, p0, Lcom/vivo/push/d;->b:J

    .line 107
    iput-wide v0, p0, Lcom/vivo/push/d;->c:J

    .line 108
    iput-wide v0, p0, Lcom/vivo/push/d;->d:J

    .line 109
    iput-wide v0, p0, Lcom/vivo/push/d;->n:J

    .line 110
    iput-wide v0, p0, Lcom/vivo/push/d;->o:J

    const/4 v0, 0x1

    .line 113
    iput-boolean v0, p0, Lcom/vivo/push/d;->f:Z

    .line 117
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/vivo/push/d;->p:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 118
    iput v0, p0, Lcom/vivo/push/d;->q:I

    .line 128
    new-instance v0, Lcom/vivo/push/c;

    invoke-direct {v0}, Lcom/vivo/push/c;-><init>()V

    iput-object v0, p0, Lcom/vivo/push/d;->k:Lcom/vivo/push/IPushClientFactory;

    return-void
.end method

.method public static declared-synchronized a()Lcom/vivo/push/d;
    .registers 2

    const-class v0, Lcom/vivo/push/d;

    monitor-enter v0

    .line 132
    :try_start_3
    sget-object v1, Lcom/vivo/push/d;->m:Lcom/vivo/push/d;

    if-nez v1, :cond_e

    .line 133
    new-instance v1, Lcom/vivo/push/d;

    invoke-direct {v1}, Lcom/vivo/push/d;-><init>()V

    sput-object v1, Lcom/vivo/push/d;->m:Lcom/vivo/push/d;

    .line 135
    :cond_e
    sget-object v1, Lcom/vivo/push/d;->m:Lcom/vivo/push/d;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static a(J)Z
    .registers 6

    .line 591
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, p0, v2

    if-eqz v2, :cond_18

    cmp-long v2, v0, p0

    if-lez v2, :cond_18

    const-wide/16 v2, 0x7d0

    add-long/2addr p0, v2

    cmp-long p0, v0, p0

    if-ltz p0, :cond_16

    goto :goto_18

    :cond_16
    const/4 p0, 0x0

    return p0

    :cond_18
    :goto_18
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method final a(Lcom/vivo/push/b/b;Lcom/vivo/push/IPushActionListener;)Lcom/vivo/push/d$a;
    .registers 5

    .line 394
    new-instance v0, Lcom/vivo/push/d$a;

    invoke-direct {v0, p1, p2}, Lcom/vivo/push/d$a;-><init>(Lcom/vivo/push/b/c;Lcom/vivo/push/IPushActionListener;)V

    .line 395
    invoke-virtual {p0, v0}, Lcom/vivo/push/d;->a(Lcom/vivo/push/d$a;)Ljava/lang/String;

    move-result-object p2

    .line 3119
    iput-object p2, p1, Lcom/vivo/push/b/c;->e:Ljava/lang/String;

    .line 397
    new-instance v1, Lcom/vivo/push/d$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/vivo/push/d$2;-><init>(Lcom/vivo/push/d;Lcom/vivo/push/b/b;Ljava/lang/String;)V

    .line 4067
    iput-object v1, v0, Lcom/vivo/push/d$a;->b:Ljava/lang/Runnable;

    return-object v0
.end method

.method final declared-synchronized a(Lcom/vivo/push/d$a;)Ljava/lang/String;
    .registers 4

    monitor-enter p0

    .line 684
    :try_start_1
    iget-object v0, p0, Lcom/vivo/push/d;->p:Landroid/util/SparseArray;

    iget v1, p0, Lcom/vivo/push/d;->q:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 685
    iget p1, p0, Lcom/vivo/push/d;->q:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/vivo/push/d;->q:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    monitor-exit p0

    return-object p1

    :catchall_14
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Landroid/content/Context;)V
    .registers 4

    monitor-enter p0

    .line 150
    :try_start_1
    iget-object v0, p0, Lcom/vivo/push/d;->e:Landroid/content/Context;

    if-nez v0, :cond_4a

    .line 151
    invoke-static {p1}, Lcom/vivo/push/util/ContextDelegate;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/push/d;->e:Landroid/content/Context;

    .line 152
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.vivo.pushclient.action.RECEIVE"

    .line 1438
    invoke-static {p1, v0, v1}, Lcom/vivo/push/util/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 152
    iput-boolean v0, p0, Lcom/vivo/push/d;->j:Z

    .line 153
    invoke-static {}, Lcom/vivo/push/util/v;->b()Lcom/vivo/push/util/v;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/push/d;->e:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/vivo/push/util/v;->a(Landroid/content/Context;)V

    .line 2164
    new-instance v0, Lcom/vivo/push/b/g;

    invoke-direct {v0}, Lcom/vivo/push/b/g;-><init>()V

    .line 2165
    invoke-virtual {p0, v0}, Lcom/vivo/push/d;->a(Lcom/vivo/push/g;)V

    .line 155
    new-instance v0, Lcom/vivo/push/util/a;

    invoke-direct {v0}, Lcom/vivo/push/util/a;-><init>()V

    iput-object v0, p0, Lcom/vivo/push/d;->g:Lcom/vivo/push/util/a;

    .line 156
    iget-object v0, p0, Lcom/vivo/push/d;->g:Lcom/vivo/push/util/a;

    const-string v1, "com.vivo.push_preferences.appconfig_v1"

    invoke-virtual {v0, p1, v1}, Lcom/vivo/push/util/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Lcom/vivo/push/d;->e()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/vivo/push/d;->h:Ljava/lang/String;

    .line 158
    iget-object p1, p0, Lcom/vivo/push/d;->g:Lcom/vivo/push/util/a;

    const-string v0, "APP_ALIAS"

    invoke-virtual {p1, v0}, Lcom/vivo/push/util/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/vivo/push/d;->i:Ljava/lang/String;
    :try_end_4a
    .catchall {:try_start_1 .. :try_end_4a} :catchall_4c

    .line 160
    :cond_4a
    monitor-exit p0

    return-void

    :catchall_4c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Lcom/vivo/push/g;)V
    .registers 6

    .line 905
    invoke-static {}, Lcom/vivo/push/d;->a()Lcom/vivo/push/d;

    move-result-object v0

    .line 6294
    iget-object v0, v0, Lcom/vivo/push/d;->e:Landroid/content/Context;

    const-string v1, "PushClientManager"

    if-nez p1, :cond_17

    const-string p1, "sendCommand, null command!"

    .line 907
    invoke-static {v1, p1}, Lcom/vivo/push/util/n;->a(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_16

    const-string p1, "[\u6267\u884c\u6307\u4ee4\u5931\u8d25]\u6307\u4ee4\u7a7a\uff01"

    .line 909
    invoke-static {v0, p1}, Lcom/vivo/push/util/n;->c(Landroid/content/Context;Ljava/lang/String;)V

    :cond_16
    return-void

    .line 913
    :cond_17
    iget-object v2, p0, Lcom/vivo/push/d;->k:Lcom/vivo/push/IPushClientFactory;

    invoke-interface {v2, p1}, Lcom/vivo/push/IPushClientFactory;->createTask(Lcom/vivo/push/g;)Lcom/vivo/push/e;

    move-result-object v2

    if-nez v2, :cond_4a

    .line 915
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendCommand, null command task! pushCommand = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/push/util/n;->a(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_49

    .line 917
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[\u6267\u884c\u6307\u4ee4\u5931\u8d25]\u6307\u4ee4"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "\u4efb\u52a1\u7a7a\uff01"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/vivo/push/util/n;->c(Landroid/content/Context;Ljava/lang/String;)V

    :cond_49
    return-void

    .line 921
    :cond_4a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "client--sendCommand, command = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/vivo/push/util/n;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    invoke-static {v2}, Lcom/vivo/push/f;->a(Lcom/vivo/push/e;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 4

    .line 277
    iput-object p1, p0, Lcom/vivo/push/d;->h:Ljava/lang/String;

    .line 278
    iget-object p1, p0, Lcom/vivo/push/d;->g:Lcom/vivo/push/util/a;

    iget-object v0, p0, Lcom/vivo/push/d;->h:Ljava/lang/String;

    const-string v1, "APP_TOKEN"

    invoke-virtual {p1, v1, v0}, Lcom/vivo/push/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .registers 4

    .line 675
    invoke-virtual {p0, p1}, Lcom/vivo/push/d;->b(Ljava/lang/String;)Lcom/vivo/push/d$a;

    move-result-object p1

    if-eqz p1, :cond_d

    const/4 v0, 0x0

    .line 677
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lcom/vivo/push/d$a;->a(I[Ljava/lang/Object;)V

    return-void

    :cond_d
    const-string p1, "PushClientManager"

    const-string p2, "notifyStatusChanged token is null"

    .line 679
    invoke-static {p1, p2}, Lcom/vivo/push/util/n;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final varargs a(Ljava/lang/String;I[Ljava/lang/Object;)V
    .registers 4

    .line 497
    invoke-virtual {p0, p1}, Lcom/vivo/push/d;->b(Ljava/lang/String;)Lcom/vivo/push/d$a;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 499
    invoke-virtual {p1, p2, p3}, Lcom/vivo/push/d$a;->a(I[Ljava/lang/Object;)V

    return-void

    :cond_a
    const-string p1, "PushClientManager"

    const-string p2, "notifyApp token is null"

    .line 501
    invoke-static {p1, p2}, Lcom/vivo/push/util/n;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method final a(Ljava/util/ArrayList;Lcom/vivo/push/IPushActionListener;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/vivo/push/IPushActionListener;",
            ")V"
        }
    .end annotation

    .line 730
    iget-object v0, p0, Lcom/vivo/push/d;->e:Landroid/content/Context;

    if-nez v0, :cond_c

    if-eqz p2, :cond_b

    const/16 p1, 0x66

    .line 732
    invoke-interface {p2, p1}, Lcom/vivo/push/IPushActionListener;->onStateChanged(I)V

    :cond_b
    return-void

    .line 736
    :cond_c
    new-instance v1, Lcom/vivo/push/b/z;

    const/4 v2, 0x1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0, p1}, Lcom/vivo/push/b/z;-><init>(ZLjava/lang/String;Ljava/util/ArrayList;)V

    const/16 v0, 0x1f4

    .line 5045
    iput v0, v1, Lcom/vivo/push/b/c;->h:I

    .line 738
    iget-boolean v2, p0, Lcom/vivo/push/d;->j:Z

    if-eqz v2, :cond_a4

    .line 740
    invoke-virtual {p0}, Lcom/vivo/push/d;->f()Z

    move-result v2

    if-nez v2, :cond_2c

    if-eqz p2, :cond_2b

    const/16 p1, 0x65

    .line 742
    invoke-interface {p2, p1}, Lcom/vivo/push/IPushActionListener;->onStateChanged(I)V

    :cond_2b
    return-void

    .line 746
    :cond_2c
    iget-wide v2, p0, Lcom/vivo/push/d;->n:J

    invoke-static {v2, v3}, Lcom/vivo/push/d;->a(J)Z

    move-result v2

    if-nez v2, :cond_3c

    if-eqz p2, :cond_3b

    const/16 p1, 0x3ea

    .line 748
    invoke-interface {p2, p1}, Lcom/vivo/push/IPushActionListener;->onStateChanged(I)V

    :cond_3b
    return-void

    .line 752
    :cond_3c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/vivo/push/d;->n:J

    .line 754
    new-instance v2, Lcom/vivo/push/d$a;

    invoke-direct {v2, v1, p2}, Lcom/vivo/push/d$a;-><init>(Lcom/vivo/push/b/c;Lcom/vivo/push/IPushActionListener;)V

    invoke-virtual {p0, v2}, Lcom/vivo/push/d;->a(Lcom/vivo/push/d$a;)Ljava/lang/String;

    move-result-object p2

    .line 5119
    iput-object p2, v1, Lcom/vivo/push/b/c;->e:Ljava/lang/String;

    .line 756
    iget-object v2, p0, Lcom/vivo/push/d;->h:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5b

    const/16 p1, 0x4e21

    .line 757
    invoke-virtual {p0, p2, p1}, Lcom/vivo/push/d;->a(Ljava/lang/String;I)V

    return-void

    .line 760
    :cond_5b
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gez v2, :cond_67

    const/16 p1, 0x4e22

    .line 761
    invoke-virtual {p0, p2, p1}, Lcom/vivo/push/d;->a(Ljava/lang/String;I)V

    return-void

    .line 765
    :cond_67
    invoke-virtual {p0}, Lcom/vivo/push/d;->b()Ljava/util/List;

    move-result-object v2

    .line 768
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 770
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v3, v2

    if-le v3, v0, :cond_7c

    const/16 p1, 0x4e24

    .line 771
    invoke-virtual {p0, p2, p1}, Lcom/vivo/push/d;->a(Ljava/lang/String;I)V

    return-void

    .line 774
    :cond_7c
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_80
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 775
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v2, v0

    const-wide/16 v4, 0x46

    cmp-long v0, v2, v4

    if-lez v0, :cond_80

    const/16 p1, 0x4e23

    .line 776
    invoke-virtual {p0, p2, p1}, Lcom/vivo/push/d;->a(Ljava/lang/String;I)V

    return-void

    .line 780
    :cond_9d
    invoke-virtual {p0, v1}, Lcom/vivo/push/d;->a(Lcom/vivo/push/g;)V

    .line 781
    invoke-virtual {p0, p2}, Lcom/vivo/push/d;->c(Ljava/lang/String;)V

    return-void

    .line 783
    :cond_a4
    invoke-virtual {p0, v1}, Lcom/vivo/push/d;->a(Lcom/vivo/push/g;)V

    if-eqz p2, :cond_ad

    const/4 p1, 0x0

    .line 785
    invoke-interface {p2, p1}, Lcom/vivo/push/IPushActionListener;->onStateChanged(I)V

    :cond_ad
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "APP_TAGS"

    .line 190
    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_9

    return-void

    .line 193
    :cond_9
    iget-object v1, p0, Lcom/vivo/push/d;->g:Lcom/vivo/push/util/a;

    invoke-virtual {v1, v0}, Lcom/vivo/push/util/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 195
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 196
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    goto :goto_21

    .line 198
    :cond_1b
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 200
    :goto_21
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_25
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 201
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_25

    .line 203
    :cond_39
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 204
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 205
    iget-object p1, p0, Lcom/vivo/push/d;->g:Lcom/vivo/push/util/a;

    invoke-virtual {p1, v0}, Lcom/vivo/push/util/a;->c(Ljava/lang/String;)V

    return-void

    .line 207
    :cond_49
    iget-object v1, p0, Lcom/vivo/push/d;->g:Lcom/vivo/push/util/a;

    invoke-virtual {v1, v0, p1}, Lcom/vivo/push/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4e
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_4e} :catch_4f

    return-void

    :catch_4f
    move-exception p1

    .line 210
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 211
    iget-object p1, p0, Lcom/vivo/push/d;->g:Lcom/vivo/push/util/a;

    invoke-virtual {p1, v0}, Lcom/vivo/push/util/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method final declared-synchronized b(Ljava/lang/String;)Lcom/vivo/push/d$a;
    .registers 4

    monitor-enter p0

    if-eqz p1, :cond_19

    .line 692
    :try_start_3
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 693
    iget-object v0, p0, Lcom/vivo/push/d;->p:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/push/d$a;

    .line 694
    iget-object v1, p0, Lcom/vivo/push/d;->p:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_14} :catch_19
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    .line 695
    monitor-exit p0

    return-object v0

    :catchall_16
    move-exception p1

    monitor-exit p0

    throw p1

    :catch_19
    :cond_19
    const/4 p1, 0x0

    .line 700
    monitor-exit p0

    return-object p1
.end method

.method public final b()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/vivo/push/d;->g:Lcom/vivo/push/util/a;

    const-string v1, "APP_TAGS"

    invoke-virtual {v0, v1}, Lcom/vivo/push/util/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 172
    :try_start_d
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_14

    return-object v2

    .line 175
    :cond_14
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 177
    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 178
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2a
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_2a} :catch_2b

    goto :goto_1d

    .line 181
    :catch_2b
    iget-object v0, p0, Lcom/vivo/push/d;->g:Lcom/vivo/push/util/a;

    invoke-virtual {v0, v1}, Lcom/vivo/push/util/a;->c(Ljava/lang/String;)V

    .line 182
    invoke-interface {v2}, Ljava/util/List;->clear()V

    const-string v0, "PushClientManager"

    const-string v1, "getTags error"

    .line 183
    invoke-static {v0, v1}, Lcom/vivo/push/util/n;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    return-object v2
.end method

.method final b(Ljava/util/ArrayList;Lcom/vivo/push/IPushActionListener;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/vivo/push/IPushActionListener;",
            ")V"
        }
    .end annotation

    .line 812
    iget-object v0, p0, Lcom/vivo/push/d;->e:Landroid/content/Context;

    if-nez v0, :cond_c

    if-eqz p2, :cond_b

    const/16 p1, 0x66

    .line 814
    invoke-interface {p2, p1}, Lcom/vivo/push/IPushActionListener;->onStateChanged(I)V

    :cond_b
    return-void

    .line 818
    :cond_c
    new-instance v1, Lcom/vivo/push/b/z;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0, p1}, Lcom/vivo/push/b/z;-><init>(ZLjava/lang/String;Ljava/util/ArrayList;)V

    const/16 v0, 0x1f4

    .line 6045
    iput v0, v1, Lcom/vivo/push/b/c;->h:I

    .line 820
    iget-boolean v3, p0, Lcom/vivo/push/d;->j:Z

    if-eqz v3, :cond_9b

    .line 821
    invoke-virtual {p0}, Lcom/vivo/push/d;->f()Z

    move-result v2

    if-nez v2, :cond_2c

    if-eqz p2, :cond_2b

    const/16 p1, 0x65

    .line 823
    invoke-interface {p2, p1}, Lcom/vivo/push/IPushActionListener;->onStateChanged(I)V

    :cond_2b
    return-void

    .line 827
    :cond_2c
    iget-wide v2, p0, Lcom/vivo/push/d;->o:J

    invoke-static {v2, v3}, Lcom/vivo/push/d;->a(J)Z

    move-result v2

    if-nez v2, :cond_3c

    if-eqz p2, :cond_3b

    const/16 p1, 0x3ea

    .line 829
    invoke-interface {p2, p1}, Lcom/vivo/push/IPushActionListener;->onStateChanged(I)V

    :cond_3b
    return-void

    .line 833
    :cond_3c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/vivo/push/d;->o:J

    .line 835
    new-instance v2, Lcom/vivo/push/d$a;

    invoke-direct {v2, v1, p2}, Lcom/vivo/push/d$a;-><init>(Lcom/vivo/push/b/c;Lcom/vivo/push/IPushActionListener;)V

    invoke-virtual {p0, v2}, Lcom/vivo/push/d;->a(Lcom/vivo/push/d$a;)Ljava/lang/String;

    move-result-object p2

    .line 6119
    iput-object p2, v1, Lcom/vivo/push/b/c;->e:Ljava/lang/String;

    .line 837
    iget-object v2, p0, Lcom/vivo/push/d;->h:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5b

    const/16 p1, 0x4e21

    .line 838
    invoke-virtual {p0, p2, p1}, Lcom/vivo/push/d;->a(Ljava/lang/String;I)V

    return-void

    .line 841
    :cond_5b
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gez v2, :cond_67

    const/16 p1, 0x4e22

    .line 842
    invoke-virtual {p0, p2, p1}, Lcom/vivo/push/d;->a(Ljava/lang/String;I)V

    return-void

    .line 845
    :cond_67
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_73

    const/16 p1, 0x4e24

    .line 846
    invoke-virtual {p0, p2, p1}, Lcom/vivo/push/d;->a(Ljava/lang/String;I)V

    return-void

    .line 849
    :cond_73
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_77
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_94

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 850
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v2, v0

    const-wide/16 v4, 0x46

    cmp-long v0, v2, v4

    if-lez v0, :cond_77

    const/16 p1, 0x4e23

    .line 851
    invoke-virtual {p0, p2, p1}, Lcom/vivo/push/d;->a(Ljava/lang/String;I)V

    return-void

    .line 855
    :cond_94
    invoke-virtual {p0, v1}, Lcom/vivo/push/d;->a(Lcom/vivo/push/g;)V

    .line 856
    invoke-virtual {p0, p2}, Lcom/vivo/push/d;->c(Ljava/lang/String;)V

    return-void

    .line 858
    :cond_9b
    invoke-virtual {p0, v1}, Lcom/vivo/push/d;->a(Lcom/vivo/push/g;)V

    if-eqz p2, :cond_a3

    .line 860
    invoke-interface {p2, v2}, Lcom/vivo/push/IPushActionListener;->onStateChanged(I)V

    :cond_a3
    return-void
.end method

.method public final b(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "APP_TAGS"

    .line 217
    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_9

    return-void

    .line 220
    :cond_9
    iget-object v1, p0, Lcom/vivo/push/d;->g:Lcom/vivo/push/util/a;

    invoke-virtual {v1, v0}, Lcom/vivo/push/util/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 222
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 223
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    goto :goto_21

    .line 225
    :cond_1b
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 227
    :goto_21
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_25
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 228
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_25

    .line 230
    :cond_35
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 231
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 232
    iget-object p1, p0, Lcom/vivo/push/d;->g:Lcom/vivo/push/util/a;

    invoke-virtual {p1, v0}, Lcom/vivo/push/util/a;->c(Ljava/lang/String;)V

    return-void

    .line 234
    :cond_45
    iget-object v1, p0, Lcom/vivo/push/d;->g:Lcom/vivo/push/util/a;

    invoke-virtual {v1, v0, p1}, Lcom/vivo/push/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4a
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_4a} :catch_4b

    return-void

    :catch_4b
    move-exception p1

    .line 237
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 238
    iget-object p1, p0, Lcom/vivo/push/d;->g:Lcom/vivo/push/util/a;

    invoke-virtual {p1, v0}, Lcom/vivo/push/util/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method final c(Ljava/lang/String;)V
    .registers 3

    .line 932
    new-instance v0, Lcom/vivo/push/d$5;

    invoke-direct {v0, p0, p1}, Lcom/vivo/push/d$5;-><init>(Lcom/vivo/push/d;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/vivo/push/f;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c()Z
    .registers 3

    .line 243
    iget-object v0, p0, Lcom/vivo/push/d;->e:Landroid/content/Context;

    if-nez v0, :cond_d

    const-string v0, "PushClientManager"

    const-string v1, "support:context is null"

    .line 244
    invoke-static {v0, v1}, Lcom/vivo/push/util/n;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    .line 247
    :cond_d
    invoke-virtual {p0}, Lcom/vivo/push/d;->f()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/push/d;->r:Ljava/lang/Boolean;

    .line 248
    iget-object v0, p0, Lcom/vivo/push/d;->r:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final d()V
    .registers 3

    const/4 v0, 0x0

    .line 258
    iput-object v0, p0, Lcom/vivo/push/d;->i:Ljava/lang/String;

    .line 259
    iget-object v0, p0, Lcom/vivo/push/d;->g:Lcom/vivo/push/util/a;

    const-string v1, "APP_ALIAS"

    invoke-virtual {v0, v1}, Lcom/vivo/push/util/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method final e()Ljava/lang/String;
    .registers 4

    .line 267
    iget-object v0, p0, Lcom/vivo/push/d;->g:Lcom/vivo/push/util/a;

    const-string v1, "APP_TOKEN"

    invoke-virtual {v0, v1}, Lcom/vivo/push/util/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 269
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_20

    iget-object v1, p0, Lcom/vivo/push/d;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/vivo/push/util/y;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 2510
    iget-object v0, p0, Lcom/vivo/push/d;->g:Lcom/vivo/push/util/a;

    invoke-virtual {v0}, Lcom/vivo/push/util/a;->a()V

    const/4 v0, 0x0

    :cond_20
    return-object v0
.end method

.method final f()Z
    .registers 5

    .line 1020
    iget-object v0, p0, Lcom/vivo/push/d;->r:Ljava/lang/Boolean;

    if-nez v0, :cond_36

    .line 7010
    iget-object v0, p0, Lcom/vivo/push/d;->e:Landroid/content/Context;

    if-nez v0, :cond_b

    const-wide/16 v0, -0x1

    goto :goto_1f

    .line 7013
    :cond_b
    iget-object v1, p0, Lcom/vivo/push/d;->s:Ljava/lang/Long;

    if-nez v1, :cond_19

    .line 7014
    invoke-static {v0}, Lcom/vivo/push/util/y;->b(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/push/d;->s:Ljava/lang/Long;

    .line 7016
    :cond_19
    iget-object v0, p0, Lcom/vivo/push/d;->s:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_1f
    const-wide/16 v2, 0x4ce

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2f

    .line 1021
    iget-object v0, p0, Lcom/vivo/push/d;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/vivo/push/util/y;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const/4 v0, 0x1

    goto :goto_30

    :cond_2f
    const/4 v0, 0x0

    :goto_30
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/push/d;->r:Ljava/lang/Boolean;

    .line 1023
    :cond_36
    iget-object v0, p0, Lcom/vivo/push/d;->r:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
