.class public Lcom/xiaomi/push/fw;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/push/fw$a;
    }
.end annotation


# static fields
.field private static final a:I

.field private static a:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget-object v0, Lcom/xiaomi/push/fm;->c:Lcom/xiaomi/push/fm;

    invoke-virtual {v0}, Lcom/xiaomi/push/fm;->a()I

    move-result v0

    sput v0, Lcom/xiaomi/push/fw;->a:I

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/xiaomi/push/fw;->a:J

    return-void
.end method

.method public static a()V
    .registers 4

    sget-wide v0, Lcom/xiaomi/push/fw;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_16

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lcom/xiaomi/push/fw;->a:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x6ddd00

    cmp-long v0, v0, v2

    if-lez v0, :cond_22

    :cond_16
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/xiaomi/push/fw;->a:J

    const/4 v0, 0x0

    sget v1, Lcom/xiaomi/push/fw;->a:I

    invoke-static {v0, v1}, Lcom/xiaomi/push/fw;->a(II)V

    :cond_22
    return-void
.end method

.method public static a(I)V
    .registers 3

    invoke-static {}, Lcom/xiaomi/push/fu;->a()Lcom/xiaomi/push/fu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/fu;->a()Lcom/xiaomi/push/fn;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/push/fm;->k:Lcom/xiaomi/push/fm;

    invoke-virtual {v1}, Lcom/xiaomi/push/fm;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/fn;->a(I)Lcom/xiaomi/push/fn;

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/fn;->c(I)Lcom/xiaomi/push/fn;

    invoke-static {}, Lcom/xiaomi/push/fu;->a()Lcom/xiaomi/push/fu;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/fu;->a(Lcom/xiaomi/push/fn;)V

    return-void
.end method

.method public static declared-synchronized a(II)V
    .registers 5

    const-class v0, Lcom/xiaomi/push/fw;

    monitor-enter v0

    const v1, 0xffffff

    if-ge p1, v1, :cond_1d

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, p1

    :try_start_b
    sget-object p1, Lcom/xiaomi/push/fw$a;->a:Ljava/util/Hashtable;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, p0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_22

    :cond_1d
    const-string p0, "stats key should less than 16777215"

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/logger/b;->d(Ljava/lang/String;)V
    :try_end_22
    .catchall {:try_start_b .. :try_end_22} :catchall_24

    :goto_22
    monitor-exit v0

    return-void

    :catchall_24
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a(IIILjava/lang/String;I)V
    .registers 6

    invoke-static {}, Lcom/xiaomi/push/fu;->a()Lcom/xiaomi/push/fu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/fu;->a()Lcom/xiaomi/push/fn;

    move-result-object v0

    int-to-byte p0, p0

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/fn;->a(B)Lcom/xiaomi/push/fn;

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/fn;->a(I)Lcom/xiaomi/push/fn;

    invoke-virtual {v0, p2}, Lcom/xiaomi/push/fn;->b(I)Lcom/xiaomi/push/fn;

    invoke-virtual {v0, p3}, Lcom/xiaomi/push/fn;->b(Ljava/lang/String;)Lcom/xiaomi/push/fn;

    invoke-virtual {v0, p4}, Lcom/xiaomi/push/fn;->c(I)Lcom/xiaomi/push/fn;

    invoke-static {}, Lcom/xiaomi/push/fu;->a()Lcom/xiaomi/push/fu;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/fu;->a(Lcom/xiaomi/push/fn;)V

    return-void
.end method

.method public static declared-synchronized a(IILjava/lang/String;I)V
    .registers 10

    const-class v0, Lcom/xiaomi/push/fw;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, p1

    sget-object v3, Lcom/xiaomi/push/fw$a;->a:Ljava/util/Hashtable;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    invoke-static {}, Lcom/xiaomi/push/fu;->a()Lcom/xiaomi/push/fu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/push/fu;->a()Lcom/xiaomi/push/fn;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/xiaomi/push/fn;->a(I)Lcom/xiaomi/push/fn;

    sget-object v4, Lcom/xiaomi/push/fw$a;->a:Ljava/util/Hashtable;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v1, v4

    long-to-int p0, v1

    invoke-virtual {v3, p0}, Lcom/xiaomi/push/fn;->b(I)Lcom/xiaomi/push/fn;

    invoke-virtual {v3, p2}, Lcom/xiaomi/push/fn;->b(Ljava/lang/String;)Lcom/xiaomi/push/fn;

    const/4 p0, -0x1

    if-le p3, p0, :cond_3f

    invoke-virtual {v3, p3}, Lcom/xiaomi/push/fn;->c(I)Lcom/xiaomi/push/fn;

    :cond_3f
    invoke-static {}, Lcom/xiaomi/push/fu;->a()Lcom/xiaomi/push/fu;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/xiaomi/push/fu;->a(Lcom/xiaomi/push/fn;)V

    sget-object p0, Lcom/xiaomi/push/fw$a;->a:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_55

    :cond_50
    const-string p0, "stats key not found"

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/logger/b;->d(Ljava/lang/String;)V
    :try_end_55
    .catchall {:try_start_3 .. :try_end_55} :catchall_57

    :goto_55
    monitor-exit v0

    return-void

    :catchall_57
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/bd$b;)V
    .registers 3

    new-instance v0, Lcom/xiaomi/push/fp;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/push/fp;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/bd$b;)V

    invoke-virtual {v0}, Lcom/xiaomi/push/fp;->a()V

    return-void
.end method

.method public static a(Ljava/lang/String;ILjava/lang/Exception;)V
    .registers 5

    invoke-static {}, Lcom/xiaomi/push/fu;->a()Lcom/xiaomi/push/fu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/fu;->a()Lcom/xiaomi/push/fn;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/push/fu;->a()Lcom/xiaomi/push/ft;

    move-result-object v1

    if-eqz v1, :cond_23

    invoke-static {}, Lcom/xiaomi/push/fu;->a()Lcom/xiaomi/push/ft;

    move-result-object v1

    iget-object v1, v1, Lcom/xiaomi/push/ft;->a:Lcom/xiaomi/push/service/XMPushService;

    if-eqz v1, :cond_23

    invoke-static {}, Lcom/xiaomi/push/fu;->a()Lcom/xiaomi/push/ft;

    move-result-object v1

    iget-object v1, v1, Lcom/xiaomi/push/ft;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v1}, Lcom/xiaomi/push/bi;->c(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/fn;->c(I)Lcom/xiaomi/push/fn;

    :cond_23
    if-lez p1, :cond_3c

    sget-object p2, Lcom/xiaomi/push/fm;->l:Lcom/xiaomi/push/fm;

    invoke-virtual {p2}, Lcom/xiaomi/push/fm;->a()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/xiaomi/push/fn;->a(I)Lcom/xiaomi/push/fn;

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/fn;->b(Ljava/lang/String;)Lcom/xiaomi/push/fn;

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/fn;->b(I)Lcom/xiaomi/push/fn;

    invoke-static {}, Lcom/xiaomi/push/fu;->a()Lcom/xiaomi/push/fu;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/fu;->a(Lcom/xiaomi/push/fn;)V

    goto :goto_58

    :cond_3c
    :try_start_3c
    invoke-static {p2}, Lcom/xiaomi/push/fs;->a(Ljava/lang/Exception;)Lcom/xiaomi/push/fs$a;

    move-result-object p1

    iget-object p2, p1, Lcom/xiaomi/push/fs$a;->a:Lcom/xiaomi/push/fm;

    invoke-virtual {p2}, Lcom/xiaomi/push/fm;->a()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/xiaomi/push/fn;->a(I)Lcom/xiaomi/push/fn;

    iget-object p1, p1, Lcom/xiaomi/push/fs$a;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/fn;->c(Ljava/lang/String;)Lcom/xiaomi/push/fn;

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/fn;->b(Ljava/lang/String;)Lcom/xiaomi/push/fn;

    invoke-static {}, Lcom/xiaomi/push/fu;->a()Lcom/xiaomi/push/fu;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/fu;->a(Lcom/xiaomi/push/fn;)V
    :try_end_58
    .catch Ljava/lang/NullPointerException; {:try_start_3c .. :try_end_58} :catch_58

    :catch_58
    :goto_58
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4

    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/push/fs;->b(Ljava/lang/Exception;)Lcom/xiaomi/push/fs$a;

    move-result-object p1

    invoke-static {}, Lcom/xiaomi/push/fu;->a()Lcom/xiaomi/push/fu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/fu;->a()Lcom/xiaomi/push/fn;

    move-result-object v0

    iget-object v1, p1, Lcom/xiaomi/push/fs$a;->a:Lcom/xiaomi/push/fm;

    invoke-virtual {v1}, Lcom/xiaomi/push/fm;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/fn;->a(I)Lcom/xiaomi/push/fn;

    iget-object p1, p1, Lcom/xiaomi/push/fs$a;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/fn;->c(Ljava/lang/String;)Lcom/xiaomi/push/fn;

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/fn;->b(Ljava/lang/String;)Lcom/xiaomi/push/fn;

    invoke-static {}, Lcom/xiaomi/push/fu;->a()Lcom/xiaomi/push/ft;

    move-result-object p0

    if-eqz p0, :cond_3d

    invoke-static {}, Lcom/xiaomi/push/fu;->a()Lcom/xiaomi/push/ft;

    move-result-object p0

    iget-object p0, p0, Lcom/xiaomi/push/ft;->a:Lcom/xiaomi/push/service/XMPushService;

    if-eqz p0, :cond_3d

    invoke-static {}, Lcom/xiaomi/push/fu;->a()Lcom/xiaomi/push/ft;

    move-result-object p0

    iget-object p0, p0, Lcom/xiaomi/push/ft;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {p0}, Lcom/xiaomi/push/bi;->c(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_39

    const/4 p0, 0x1

    goto :goto_3a

    :cond_39
    const/4 p0, 0x0

    :goto_3a
    invoke-virtual {v0, p0}, Lcom/xiaomi/push/fn;->c(I)Lcom/xiaomi/push/fn;

    :cond_3d
    invoke-static {}, Lcom/xiaomi/push/fu;->a()Lcom/xiaomi/push/fu;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/fu;->a(Lcom/xiaomi/push/fn;)V
    :try_end_44
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_44} :catch_44

    :catch_44
    return-void
.end method

.method public static a()[B
    .registers 1

    invoke-static {}, Lcom/xiaomi/push/fu;->a()Lcom/xiaomi/push/fu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/fu;->a()Lcom/xiaomi/push/fo;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-static {v0}, Lcom/xiaomi/push/jf;->a(Lcom/xiaomi/push/jg;)[B

    move-result-object v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return-object v0
.end method

.method public static b()V
    .registers 4

    sget v0, Lcom/xiaomi/push/fw;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-static {v1, v0, v2, v3}, Lcom/xiaomi/push/fw;->a(IILjava/lang/String;I)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4

    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/push/fs;->d(Ljava/lang/Exception;)Lcom/xiaomi/push/fs$a;

    move-result-object p1

    invoke-static {}, Lcom/xiaomi/push/fu;->a()Lcom/xiaomi/push/fu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/fu;->a()Lcom/xiaomi/push/fn;

    move-result-object v0

    iget-object v1, p1, Lcom/xiaomi/push/fs$a;->a:Lcom/xiaomi/push/fm;

    invoke-virtual {v1}, Lcom/xiaomi/push/fm;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/fn;->a(I)Lcom/xiaomi/push/fn;

    iget-object p1, p1, Lcom/xiaomi/push/fs$a;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/fn;->c(Ljava/lang/String;)Lcom/xiaomi/push/fn;

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/fn;->b(Ljava/lang/String;)Lcom/xiaomi/push/fn;

    invoke-static {}, Lcom/xiaomi/push/fu;->a()Lcom/xiaomi/push/ft;

    move-result-object p0

    if-eqz p0, :cond_3d

    invoke-static {}, Lcom/xiaomi/push/fu;->a()Lcom/xiaomi/push/ft;

    move-result-object p0

    iget-object p0, p0, Lcom/xiaomi/push/ft;->a:Lcom/xiaomi/push/service/XMPushService;

    if-eqz p0, :cond_3d

    invoke-static {}, Lcom/xiaomi/push/fu;->a()Lcom/xiaomi/push/ft;

    move-result-object p0

    iget-object p0, p0, Lcom/xiaomi/push/ft;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {p0}, Lcom/xiaomi/push/bi;->c(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_39

    const/4 p0, 0x1

    goto :goto_3a

    :cond_39
    const/4 p0, 0x0

    :goto_3a
    invoke-virtual {v0, p0}, Lcom/xiaomi/push/fn;->c(I)Lcom/xiaomi/push/fn;

    :cond_3d
    invoke-static {}, Lcom/xiaomi/push/fu;->a()Lcom/xiaomi/push/fu;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/fu;->a(Lcom/xiaomi/push/fn;)V
    :try_end_44
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_44} :catch_44

    :catch_44
    return-void
.end method
