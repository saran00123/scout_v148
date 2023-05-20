.class public Lcom/xiaomi/push/ad;
.super Ljava/lang/Object;


# static fields
.field private static a:I

.field public static final a:Ljava/lang/String;

.field public static final a:Z

.field public static final b:Z

.field public static final c:Z

.field public static final d:Z

.field public static e:Z

.field public static final f:Z

.field public static final g:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    sget-boolean v0, Lcom/xiaomi/push/ag;->a:Z

    const-string v1, "ONEBOX"

    if-eqz v0, :cond_8

    move-object v0, v1

    goto :goto_a

    :cond_8
    const-string v0, "@SHIP.TO.2A2FE0D7@"

    :goto_a
    sput-object v0, Lcom/xiaomi/push/ad;->a:Ljava/lang/String;

    sget-object v0, Lcom/xiaomi/push/ad;->a:Ljava/lang/String;

    const-string v2, "2A2FE0D7"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/push/ad;->a:Z

    sget-boolean v0, Lcom/xiaomi/push/ad;->a:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_29

    sget-object v0, Lcom/xiaomi/push/ad;->a:Ljava/lang/String;

    const-string v4, "DEBUG"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_29

    :cond_27
    move v0, v2

    goto :goto_2a

    :cond_29
    :goto_29
    move v0, v3

    :goto_2a
    sput-boolean v0, Lcom/xiaomi/push/ad;->b:Z

    sget-object v0, Lcom/xiaomi/push/ad;->a:Ljava/lang/String;

    const-string v4, "LOGABLE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/push/ad;->c:Z

    sget-object v0, Lcom/xiaomi/push/ad;->a:Ljava/lang/String;

    const-string v4, "YY"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/push/ad;->d:Z

    sget-object v0, Lcom/xiaomi/push/ad;->a:Ljava/lang/String;

    const-string v4, "TEST"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/push/ad;->e:Z

    sget-object v0, Lcom/xiaomi/push/ad;->a:Ljava/lang/String;

    const-string v4, "BETA"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/push/ad;->f:Z

    sget-object v0, Lcom/xiaomi/push/ad;->a:Ljava/lang/String;

    if-eqz v0, :cond_61

    const-string v4, "RC"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_61

    move v2, v3

    :cond_61
    sput-boolean v2, Lcom/xiaomi/push/ad;->g:Z

    sput v3, Lcom/xiaomi/push/ad;->a:I

    sget-object v0, Lcom/xiaomi/push/ad;->a:Ljava/lang/String;

    const-string v2, "SANDBOX"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_73

    const/4 v0, 0x2

    :goto_70
    sput v0, Lcom/xiaomi/push/ad;->a:I

    goto :goto_7f

    :cond_73
    sget-object v0, Lcom/xiaomi/push/ad;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7d

    const/4 v0, 0x3

    goto :goto_70

    :cond_7d
    sput v3, Lcom/xiaomi/push/ad;->a:I

    :goto_7f
    return-void
.end method

.method public static a()I
    .registers 1

    sget v0, Lcom/xiaomi/push/ad;->a:I

    return v0
.end method

.method public static a(I)V
    .registers 1

    sput p0, Lcom/xiaomi/push/ad;->a:I

    return-void
.end method

.method public static a()Z
    .registers 2

    sget v0, Lcom/xiaomi/push/ad;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public static b()Z
    .registers 2

    sget v0, Lcom/xiaomi/push/ad;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method
