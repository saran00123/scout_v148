.class public Lcom/xiaomi/push/service/ae;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/push/service/ae$a;,
        Lcom/xiaomi/push/service/ae$b;
    }
.end annotation


# static fields
.field private static a:Lcom/xiaomi/push/service/ae$a;

.field private static a:Lcom/xiaomi/push/service/ae$b;


# direct methods
.method public static a(Landroid/content/Context;Lcom/xiaomi/push/ir;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/xiaomi/push/ir;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/push/service/ae;->a:Lcom/xiaomi/push/service/ae$a;

    if-eqz v0, :cond_c

    if-nez p1, :cond_7

    goto :goto_c

    :cond_7
    invoke-interface {v0, p0, p1}, Lcom/xiaomi/push/service/ae$a;->a(Landroid/content/Context;Lcom/xiaomi/push/ir;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_c
    :goto_c
    const-string p0, "pepa listener or container is null"

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lcom/xiaomi/push/ir;)V
    .registers 3

    sget-object v0, Lcom/xiaomi/push/service/ae;->a:Lcom/xiaomi/push/service/ae$a;

    if-eqz v0, :cond_b

    if-nez p1, :cond_7

    goto :goto_b

    :cond_7
    invoke-interface {v0, p0, p1}, Lcom/xiaomi/push/service/ae$a;->a(Landroid/content/Context;Lcom/xiaomi/push/ir;)V

    goto :goto_10

    :cond_b
    :goto_b
    const-string p0, "handle msg wrong"

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    :goto_10
    return-void
.end method

.method public static a(Lcom/xiaomi/push/ir;)V
    .registers 2

    sget-object v0, Lcom/xiaomi/push/service/ae;->a:Lcom/xiaomi/push/service/ae$b;

    if-eqz v0, :cond_b

    if-nez p0, :cond_7

    goto :goto_b

    :cond_7
    invoke-interface {v0, p0}, Lcom/xiaomi/push/service/ae$b;->a(Lcom/xiaomi/push/ir;)V

    goto :goto_10

    :cond_b
    :goto_b
    const-string p0, "pepa clearMessage is null"

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    :goto_10
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 2

    sget-object v0, Lcom/xiaomi/push/service/ae;->a:Lcom/xiaomi/push/service/ae$b;

    if-eqz v0, :cond_b

    if-nez p0, :cond_7

    goto :goto_b

    :cond_7
    invoke-interface {v0, p0}, Lcom/xiaomi/push/service/ae$b;->a(Ljava/lang/String;)V

    goto :goto_10

    :cond_b
    :goto_b
    const-string p0, "pepa clearMessage is null"

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    :goto_10
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/xiaomi/push/ir;Z)Z
    .registers 4

    sget-object v0, Lcom/xiaomi/push/service/ae;->a:Lcom/xiaomi/push/service/ae$a;

    if-eqz v0, :cond_c

    if-nez p1, :cond_7

    goto :goto_c

    :cond_7
    invoke-interface {v0, p0, p1, p2}, Lcom/xiaomi/push/service/ae$a;->a(Landroid/content/Context;Lcom/xiaomi/push/ir;Z)Z

    move-result p0

    goto :goto_12

    :cond_c
    :goto_c
    const-string p0, "pepa judement listener or container is null"

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_12
    return p0
.end method

.method public static a(Lcom/xiaomi/push/ir;)Z
    .registers 2

    sget-object v0, Lcom/xiaomi/push/service/ae;->a:Lcom/xiaomi/push/service/ae$b;

    if-eqz v0, :cond_c

    if-nez p0, :cond_7

    goto :goto_c

    :cond_7
    invoke-interface {v0, p0}, Lcom/xiaomi/push/service/ae$b;->a(Lcom/xiaomi/push/ir;)Z

    move-result p0

    goto :goto_12

    :cond_c
    :goto_c
    const-string p0, "pepa handleReceiveMessage is null"

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_12
    return p0
.end method
