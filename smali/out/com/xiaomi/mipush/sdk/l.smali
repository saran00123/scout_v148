.class public Lcom/xiaomi/mipush/sdk/l;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mipush/sdk/l$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/xiaomi/mipush/sdk/e;",
            "Lcom/xiaomi/mipush/sdk/l$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/mipush/sdk/l;->a:Ljava/util/HashMap;

    sget-object v0, Lcom/xiaomi/mipush/sdk/e;->a:Lcom/xiaomi/mipush/sdk/e;

    new-instance v1, Lcom/xiaomi/mipush/sdk/l$a;

    const-string v2, "newInstance"

    const-string v3, "com.xiaomi.assemble.control.HmsPushManager"

    invoke-direct {v1, v3, v2}, Lcom/xiaomi/mipush/sdk/l$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/xiaomi/mipush/sdk/l;->a(Lcom/xiaomi/mipush/sdk/e;Lcom/xiaomi/mipush/sdk/l$a;)V

    sget-object v0, Lcom/xiaomi/mipush/sdk/e;->b:Lcom/xiaomi/mipush/sdk/e;

    new-instance v1, Lcom/xiaomi/mipush/sdk/l$a;

    const-string v3, "com.xiaomi.assemble.control.FCMPushManager"

    invoke-direct {v1, v3, v2}, Lcom/xiaomi/mipush/sdk/l$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/xiaomi/mipush/sdk/l;->a(Lcom/xiaomi/mipush/sdk/e;Lcom/xiaomi/mipush/sdk/l$a;)V

    sget-object v0, Lcom/xiaomi/mipush/sdk/e;->c:Lcom/xiaomi/mipush/sdk/e;

    new-instance v1, Lcom/xiaomi/mipush/sdk/l$a;

    const-string v3, "com.xiaomi.assemble.control.COSPushManager"

    invoke-direct {v1, v3, v2}, Lcom/xiaomi/mipush/sdk/l$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/xiaomi/mipush/sdk/l;->a(Lcom/xiaomi/mipush/sdk/e;Lcom/xiaomi/mipush/sdk/l$a;)V

    sget-object v0, Lcom/xiaomi/mipush/sdk/e;->d:Lcom/xiaomi/mipush/sdk/e;

    new-instance v1, Lcom/xiaomi/mipush/sdk/l$a;

    const-string v3, "com.xiaomi.assemble.control.FTOSPushManager"

    invoke-direct {v1, v3, v2}, Lcom/xiaomi/mipush/sdk/l$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/xiaomi/mipush/sdk/l;->a(Lcom/xiaomi/mipush/sdk/e;Lcom/xiaomi/mipush/sdk/l$a;)V

    return-void
.end method

.method public static a(Lcom/xiaomi/mipush/sdk/e;)Lcom/xiaomi/mipush/sdk/au;
    .registers 2

    sget-object v0, Lcom/xiaomi/mipush/sdk/m;->a:[I

    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/e;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1f

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1c

    const/4 v0, 0x3

    if-eq p0, v0, :cond_19

    const/4 v0, 0x4

    if-eq p0, v0, :cond_16

    const/4 p0, 0x0

    goto :goto_21

    :cond_16
    sget-object p0, Lcom/xiaomi/mipush/sdk/au;->f:Lcom/xiaomi/mipush/sdk/au;

    goto :goto_21

    :cond_19
    sget-object p0, Lcom/xiaomi/mipush/sdk/au;->e:Lcom/xiaomi/mipush/sdk/au;

    goto :goto_21

    :cond_1c
    sget-object p0, Lcom/xiaomi/mipush/sdk/au;->d:Lcom/xiaomi/mipush/sdk/au;

    goto :goto_21

    :cond_1f
    sget-object p0, Lcom/xiaomi/mipush/sdk/au;->c:Lcom/xiaomi/mipush/sdk/au;

    :goto_21
    return-object p0
.end method

.method public static a(Lcom/xiaomi/mipush/sdk/e;)Lcom/xiaomi/mipush/sdk/l$a;
    .registers 2

    sget-object v0, Lcom/xiaomi/mipush/sdk/l;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mipush/sdk/l$a;

    return-object p0
.end method

.method public static a(Lcom/xiaomi/mipush/sdk/e;)Lcom/xiaomi/push/ia;
    .registers 1

    sget-object p0, Lcom/xiaomi/push/ia;->ao:Lcom/xiaomi/push/ia;

    return-object p0
.end method

.method private static a(Lcom/xiaomi/mipush/sdk/e;Lcom/xiaomi/mipush/sdk/l$a;)V
    .registers 3

    if-eqz p1, :cond_7

    sget-object v0, Lcom/xiaomi/mipush/sdk/l;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return-void
.end method
