.class public final Lcom/vivo/push/util/n;
.super Ljava/lang/Object;
.source "LogUtil.java"


# static fields
.field public static final a:Lcom/vivo/push/util/m;

.field private static b:Z

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 8
    new-instance v0, Lcom/vivo/push/util/l;

    invoke-direct {v0}, Lcom/vivo/push/util/l;-><init>()V

    sput-object v0, Lcom/vivo/push/util/n;->a:Lcom/vivo/push/util/m;

    const-string v0, "persist.sys.log.ctrl"

    const-string v1, "no"

    .line 1017
    invoke-static {v0, v1}, Lcom/vivo/push/util/y;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/vivo/push/util/n;->b:Z

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    .line 35
    sget-object v0, Lcom/vivo/push/util/n;->a:Lcom/vivo/push/util/m;

    invoke-interface {v0, p0, p1}, Lcom/vivo/push/util/m;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4

    .line 45
    sget-object v0, Lcom/vivo/push/util/n;->a:Lcom/vivo/push/util/m;

    invoke-interface {v0, p0, p1, p2}, Lcom/vivo/push/util/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 3

    .line 40
    sget-object v0, Lcom/vivo/push/util/n;->a:Lcom/vivo/push/util/m;

    invoke-interface {v0, p0, p1}, Lcom/vivo/push/util/m;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 2

    .line 81
    sget-object v0, Lcom/vivo/push/util/n;->a:Lcom/vivo/push/util/m;

    invoke-interface {v0, p0}, Lcom/vivo/push/util/m;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 86
    sget-object v0, Lcom/vivo/push/util/n;->a:Lcom/vivo/push/util/m;

    invoke-interface {v0, p0, p1}, Lcom/vivo/push/util/m;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Z)V
    .registers 1

    .line 25
    sput-boolean p0, Lcom/vivo/push/util/n;->b:Z

    .line 26
    sput-boolean p0, Lcom/vivo/push/util/n;->c:Z

    return-void
.end method

.method public static a()Z
    .registers 1

    .line 21
    sget-boolean v0, Lcom/vivo/push/util/n;->b:Z

    return v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    .line 50
    sget-object v0, Lcom/vivo/push/util/n;->a:Lcom/vivo/push/util/m;

    invoke-interface {v0, p0, p1}, Lcom/vivo/push/util/m;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4

    .line 71
    sget-object v0, Lcom/vivo/push/util/n;->a:Lcom/vivo/push/util/m;

    invoke-interface {v0, p0, p1, p2}, Lcom/vivo/push/util/m;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 96
    sget-object v0, Lcom/vivo/push/util/n;->a:Lcom/vivo/push/util/m;

    invoke-interface {v0, p0, p1}, Lcom/vivo/push/util/m;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    .line 61
    sget-object v0, Lcom/vivo/push/util/n;->a:Lcom/vivo/push/util/m;

    invoke-interface {v0, p0, p1}, Lcom/vivo/push/util/m;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 101
    sget-object v0, Lcom/vivo/push/util/n;->a:Lcom/vivo/push/util/m;

    invoke-interface {v0, p0, p1}, Lcom/vivo/push/util/m;->c(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    .line 66
    sget-object v0, Lcom/vivo/push/util/n;->a:Lcom/vivo/push/util/m;

    invoke-interface {v0, p0, p1}, Lcom/vivo/push/util/m;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    .line 76
    sget-object v0, Lcom/vivo/push/util/n;->a:Lcom/vivo/push/util/m;

    invoke-interface {v0, p0, p1}, Lcom/vivo/push/util/m;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method
