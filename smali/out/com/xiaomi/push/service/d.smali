.class public Lcom/xiaomi/push/service/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/push/service/d$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaomi/push/service/d$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/xiaomi/push/service/d;->a:Ljava/util/List;

    return-void
.end method

.method private static a()V
    .registers 6

    sget-object v0, Lcom/xiaomi/push/service/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_27

    sget-object v1, Lcom/xiaomi/push/service/d;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/push/service/d$a;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v1, Lcom/xiaomi/push/service/d$a;->a:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-lez v2, :cond_24

    sget-object v2, Lcom/xiaomi/push/service/d;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_24
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_27
    sget-object v0, Lcom/xiaomi/push/service/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_37

    sget-object v0, Lcom/xiaomi/push/service/d;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_37
    return-void
.end method

.method protected static a(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;I)V
    .registers 10

    invoke-static {p0}, Lcom/xiaomi/push/l;->a(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2a

    if-lez p2, :cond_2a

    if-eqz p1, :cond_2a

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x14

    if-lt p0, v0, :cond_2a

    new-instance p0, Lcom/xiaomi/push/service/d$a;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/push/service/av;->a(Landroid/app/Notification;)[Landroid/app/Notification$Action;

    move-result-object v6

    move-object v1, p0

    move v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/push/service/d$a;-><init>(Ljava/lang/String;JI[Landroid/app/Notification$Action;)V

    invoke-static {p0}, Lcom/xiaomi/push/service/d;->a(Lcom/xiaomi/push/service/d$a;)V

    :cond_2a
    return-void
.end method

.method private static a(Lcom/xiaomi/push/service/d$a;)V
    .registers 2

    sget-object v0, Lcom/xiaomi/push/service/d;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/xiaomi/push/service/d;->a()V

    return-void
.end method
