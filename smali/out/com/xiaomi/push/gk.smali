.class public Lcom/xiaomi/push/gk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static a:Ljava/lang/String; = "wcc-ml-test10.bj"

.field public static final b:Ljava/lang/String;

.field public static c:Ljava/lang/String;


# instance fields
.field private a:I

.field private a:Lcom/xiaomi/push/gn;

.field private a:Z

.field private b:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/xiaomi/push/ag;->a:Ljava/lang/String;

    sput-object v0, Lcom/xiaomi/push/gk;->b:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/push/gk;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;ILjava/lang/String;Lcom/xiaomi/push/gn;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/lang/String;",
            "Lcom/xiaomi/push/gn;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/xiaomi/push/gj;->a:Z

    iput-boolean v0, p0, Lcom/xiaomi/push/gk;->a:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/gk;->b:Z

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/push/gk;->a(Ljava/util/Map;ILjava/lang/String;Lcom/xiaomi/push/gn;)V

    return-void
.end method

.method public static final a()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/xiaomi/push/gk;->c:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    invoke-static {}, Lcom/xiaomi/push/ad;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "sandbox.xmpush.xiaomi.com"

    return-object v0

    :cond_e
    invoke-static {}, Lcom/xiaomi/push/ad;->b()Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Lcom/xiaomi/push/gk;->b:Ljava/lang/String;

    return-object v0

    :cond_17
    const-string v0, "app.chat.xiaomi.net"

    return-object v0
.end method

.method public static final a(Ljava/lang/String;)V
    .registers 2

    invoke-static {}, Lcom/xiaomi/push/u;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/l;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/xiaomi/push/ad;->b()Z

    move-result v0

    if-eqz v0, :cond_11

    return-void

    :cond_11
    sput-object p0, Lcom/xiaomi/push/gk;->c:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/util/Map;ILjava/lang/String;Lcom/xiaomi/push/gn;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/lang/String;",
            "Lcom/xiaomi/push/gn;",
            ")V"
        }
    .end annotation

    iput p2, p0, Lcom/xiaomi/push/gk;->a:I

    iput-object p3, p0, Lcom/xiaomi/push/gk;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/push/gk;->a:Lcom/xiaomi/push/gn;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/xiaomi/push/gk;->a:I

    return v0
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/xiaomi/push/gk;->a:Z

    return-void
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/xiaomi/push/gk;->a:Z

    return v0
.end method

.method public a()[B
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/gk;->f:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/push/gk;->f:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/gk;->e:Ljava/lang/String;

    if-nez v0, :cond_a

    invoke-static {}, Lcom/xiaomi/push/gk;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/gk;->e:Ljava/lang/String;

    :cond_a
    iget-object v0, p0, Lcom/xiaomi/push/gk;->e:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/push/gk;->e:Ljava/lang/String;

    return-void
.end method
