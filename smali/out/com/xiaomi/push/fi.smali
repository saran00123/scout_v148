.class Lcom/xiaomi/push/fi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/push/fh$a;


# instance fields
.field private volatile a:J

.field private a:Landroid/app/PendingIntent;

.field protected a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/push/fi;->a:Landroid/app/PendingIntent;

    iput-object v0, p0, Lcom/xiaomi/push/fi;->a:Landroid/content/Context;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/push/fi;->a:J

    iput-object p1, p0, Lcom/xiaomi/push/fi;->a:Landroid/content/Context;

    return-void
.end method

.method private a(Landroid/app/AlarmManager;JLandroid/app/PendingIntent;)V
    .registers 13

    const-class v0, Landroid/app/AlarmManager;

    :try_start_2
    const-string v1, "setExact"

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, Landroid/app/PendingIntent;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v1, v6

    aput-object p4, v1, v7

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2d} :catch_2e

    goto :goto_43

    :catch_2e
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[Alarm] invoke setExact method meet error. "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/logger/b;->d(Ljava/lang/String;)V

    :goto_43
    return-void
.end method

.method private b(J)V
    .registers 8

    iget-object v0, p0, Lcom/xiaomi/push/fi;->a:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_2c

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v2

    iget-object v2, p0, Lcom/xiaomi/push/fi;->a:Landroid/app/PendingIntent;

    aput-object v2, v1, v3

    const-string v2, "setExactAndAllowWhileIdle"

    invoke-static {v0, v2, v1}, Lcom/xiaomi/push/bj;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_31

    :cond_2c
    iget-object v1, p0, Lcom/xiaomi/push/fi;->a:Landroid/app/PendingIntent;

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/xiaomi/push/fi;->a(Landroid/app/AlarmManager;JLandroid/app/PendingIntent;)V

    :goto_31
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Alarm] register timer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/xiaomi/push/fi;->a:Landroid/app/PendingIntent;

    if-eqz p1, :cond_58

    invoke-virtual {p1}, Landroid/app/PendingIntent;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_5a

    :cond_58
    const-string p1, ""

    :goto_5a
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/logger/b;->c(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 7

    const-string v0, "[Alarm] unregister timer"

    iget-object v1, p0, Lcom/xiaomi/push/fi;->a:Landroid/app/PendingIntent;

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/xiaomi/push/fi;->a:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    const/4 v4, 0x0

    :try_start_13
    iget-object v5, p0, Lcom/xiaomi/push/fi;->a:Landroid/app/PendingIntent;

    invoke-virtual {v1, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_18} :catch_22
    .catchall {:try_start_13 .. :try_end_18} :catchall_19

    goto :goto_22

    :catchall_19
    move-exception v1

    iput-object v4, p0, Lcom/xiaomi/push/fi;->a:Landroid/app/PendingIntent;

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->c(Ljava/lang/String;)V

    iput-wide v2, p0, Lcom/xiaomi/push/fi;->a:J

    throw v1

    :catch_22
    :goto_22
    iput-object v4, p0, Lcom/xiaomi/push/fi;->a:Landroid/app/PendingIntent;

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->c(Ljava/lang/String;)V

    iput-wide v2, p0, Lcom/xiaomi/push/fi;->a:J

    :cond_29
    iput-wide v2, p0, Lcom/xiaomi/push/fi;->a:J

    return-void
.end method

.method public a(J)V
    .registers 5

    iget-object v0, p0, Lcom/xiaomi/push/fi;->a:Landroid/app/PendingIntent;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr p1, v0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/push/fi;->b(J)V

    return-void
.end method

.method public a(Landroid/content/Intent;J)V
    .registers 7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1f

    if-lt v0, v2, :cond_10

    iget-object v0, p0, Lcom/xiaomi/push/fi;->a:Landroid/content/Context;

    const/high16 v2, 0x2000000

    invoke-static {v0, v1, p1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    goto :goto_16

    :cond_10
    iget-object v0, p0, Lcom/xiaomi/push/fi;->a:Landroid/content/Context;

    invoke-static {v0, v1, p1, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    :goto_16
    iput-object p1, p0, Lcom/xiaomi/push/fi;->a:Landroid/app/PendingIntent;

    invoke-direct {p0, p2, p3}, Lcom/xiaomi/push/fi;->b(J)V

    return-void
.end method

.method public a(Z)V
    .registers 10

    iget-object v0, p0, Lcom/xiaomi/push/fi;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/et;->a(Landroid/content/Context;)Lcom/xiaomi/push/et;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/et;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    if-nez p1, :cond_15

    iget-wide v4, p0, Lcom/xiaomi/push/fi;->a:J

    cmp-long v4, v4, v2

    if-nez v4, :cond_15

    return-void

    :cond_15
    if-eqz p1, :cond_1a

    invoke-virtual {p0}, Lcom/xiaomi/push/fi;->a()V

    :cond_1a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    if-nez p1, :cond_39

    iget-wide v6, p0, Lcom/xiaomi/push/fi;->a:J

    cmp-long p1, v6, v2

    if-nez p1, :cond_27

    goto :goto_39

    :cond_27
    iget-wide v2, p0, Lcom/xiaomi/push/fi;->a:J

    cmp-long p1, v2, v4

    if-gtz p1, :cond_3f

    iget-wide v2, p0, Lcom/xiaomi/push/fi;->a:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/xiaomi/push/fi;->a:J

    iget-wide v2, p0, Lcom/xiaomi/push/fi;->a:J

    cmp-long p1, v2, v4

    if-gez p1, :cond_3f

    goto :goto_3c

    :cond_39
    :goto_39
    rem-long v2, v4, v0

    sub-long/2addr v0, v2

    :goto_3c
    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/xiaomi/push/fi;->a:J

    :cond_3f
    new-instance p1, Landroid/content/Intent;

    sget-object v0, Lcom/xiaomi/push/service/bh;->q:Ljava/lang/String;

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/push/fi;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-wide v0, p0, Lcom/xiaomi/push/fi;->a:J

    invoke-virtual {p0, p1, v0, v1}, Lcom/xiaomi/push/fi;->a(Landroid/content/Intent;J)V

    return-void
.end method

.method public a()Z
    .registers 5

    iget-wide v0, p0, Lcom/xiaomi/push/fi;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method
