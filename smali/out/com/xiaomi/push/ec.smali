.class public final Lcom/xiaomi/push/ec;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/xiaomi/push/ec;


# instance fields
.field private a:I

.field private a:Landroid/content/Context;

.field private a:Lcom/xiaomi/push/eg;

.field private a:Ljava/lang/String;

.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/xiaomi/push/ee;",
            "Lcom/xiaomi/push/ef;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/ec;->a:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/xiaomi/push/ec;->a:Landroid/content/Context;

    iget-object p1, p0, Lcom/xiaomi/push/ec;->a:Ljava/util/HashMap;

    sget-object v0, Lcom/xiaomi/push/ee;->b:Lcom/xiaomi/push/ee;

    new-instance v1, Lcom/xiaomi/push/ei;

    invoke-direct {v1}, Lcom/xiaomi/push/ei;-><init>()V

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/xiaomi/push/ec;->a:Ljava/util/HashMap;

    sget-object v0, Lcom/xiaomi/push/ee;->c:Lcom/xiaomi/push/ee;

    new-instance v1, Lcom/xiaomi/push/ej;

    invoke-direct {v1}, Lcom/xiaomi/push/ej;-><init>()V

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/xiaomi/push/ec;->a:Ljava/util/HashMap;

    sget-object v0, Lcom/xiaomi/push/ee;->a:Lcom/xiaomi/push/ee;

    new-instance v1, Lcom/xiaomi/push/ea;

    invoke-direct {v1}, Lcom/xiaomi/push/ea;-><init>()V

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/xiaomi/push/ec;->a:Ljava/util/HashMap;

    sget-object v0, Lcom/xiaomi/push/ee;->d:Lcom/xiaomi/push/ee;

    new-instance v1, Lcom/xiaomi/push/eh;

    invoke-direct {v1}, Lcom/xiaomi/push/eh;-><init>()V

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/xiaomi/push/ec;
    .registers 3

    sget-object v0, Lcom/xiaomi/push/ec;->a:Lcom/xiaomi/push/ec;

    if-nez v0, :cond_17

    const-class v0, Lcom/xiaomi/push/ec;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/xiaomi/push/ec;->a:Lcom/xiaomi/push/ec;

    if-nez v1, :cond_12

    new-instance v1, Lcom/xiaomi/push/ec;

    invoke-direct {v1, p0}, Lcom/xiaomi/push/ec;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/xiaomi/push/ec;->a:Lcom/xiaomi/push/ec;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    :cond_17
    :goto_17
    sget-object p0, Lcom/xiaomi/push/ec;->a:Lcom/xiaomi/push/ec;

    return-object p0
.end method

.method static synthetic a(Lcom/xiaomi/push/ec;Lcom/xiaomi/push/ee;Landroid/content/Context;Lcom/xiaomi/push/eb;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/push/ec;->a(Lcom/xiaomi/push/ee;Landroid/content/Context;Lcom/xiaomi/push/eb;)V

    return-void
.end method

.method private a(Lcom/xiaomi/push/ee;Landroid/content/Context;Lcom/xiaomi/push/eb;)V
    .registers 5

    iget-object v0, p0, Lcom/xiaomi/push/ec;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/push/ef;

    invoke-interface {p1, p2, p3}, Lcom/xiaomi/push/ef;->a(Landroid/content/Context;Lcom/xiaomi/push/eb;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xiaomi/push/service/aj;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/xiaomi/push/ec;->a:I

    return v0
.end method

.method public a()Lcom/xiaomi/push/eg;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/ec;->a:Lcom/xiaomi/push/eg;

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/ec;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/xiaomi/push/ec;->a:I

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 13

    if-eqz p1, :cond_2d

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2d

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2d

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_2d

    :cond_15
    invoke-virtual {p0, p3}, Lcom/xiaomi/push/ec;->a(I)V

    iget-object p3, p0, Lcom/xiaomi/push/ec;->a:Landroid/content/Context;

    invoke-static {p3}, Lcom/xiaomi/push/ak;->a(Landroid/content/Context;)Lcom/xiaomi/push/ak;

    move-result-object p3

    new-instance v6, Lcom/xiaomi/push/ed;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/push/ed;-><init>(Lcom/xiaomi/push/ec;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v6}, Lcom/xiaomi/push/ak;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_2d
    :goto_2d
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, ""

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0x3f0

    const-string p4, "A receive a incorrect message"

    invoke-static {p1, p2, p3, p4}, Lcom/xiaomi/push/dy;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public a(Lcom/xiaomi/push/ee;Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .registers 6

    if-eqz p1, :cond_e

    iget-object v0, p0, Lcom/xiaomi/push/ec;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/push/ef;

    invoke-interface {p1, p2, p3, p4}, Lcom/xiaomi/push/ef;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_17

    :cond_e
    const/16 p1, 0x3f0

    const-string p3, "null"

    const-string p4, "A receive a incorrect message with empty type"

    invoke-static {p2, p3, p1, p4}, Lcom/xiaomi/push/dy;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    :goto_17
    return-void
.end method

.method public a(Lcom/xiaomi/push/eg;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/push/ec;->a:Lcom/xiaomi/push/eg;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/push/ec;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ILcom/xiaomi/push/eg;)V
    .registers 5

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/ec;->a(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/xiaomi/push/ec;->b(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/xiaomi/push/ec;->a(I)V

    invoke-virtual {p0, p4}, Lcom/xiaomi/push/ec;->a(Lcom/xiaomi/push/eg;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/ec;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/push/ec;->b:Ljava/lang/String;

    return-void
.end method
