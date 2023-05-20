.class public Lcom/xiaomi/push/gc$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/gc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/xiaomi/push/gc$c;

.field public static final a:Lcom/xiaomi/push/gc$d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/xiaomi/push/gc$c;

    invoke-direct {v0}, Lcom/xiaomi/push/gc$c;-><init>()V

    sput-object v0, Lcom/xiaomi/push/gc$a;->a:Lcom/xiaomi/push/gc$c;

    new-instance v0, Lcom/xiaomi/push/gc$d;

    invoke-direct {v0}, Lcom/xiaomi/push/gc$d;-><init>()V

    sput-object v0, Lcom/xiaomi/push/gc$a;->a:Lcom/xiaomi/push/gc$d;

    return-void
.end method

.method public static a([B)[B
    .registers 2

    sget-object v0, Lcom/xiaomi/push/gc$a;->a:Lcom/xiaomi/push/gc$d;

    invoke-static {p0, v0}, Lcom/xiaomi/push/gc$a;->a([BLcom/xiaomi/push/gc$b;)[B

    move-result-object p0

    return-object p0
.end method

.method public static a([BLcom/xiaomi/push/gc$b;)[B
    .registers 4

    invoke-static {p0}, Lcom/xiaomi/push/gc;->a([B)Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-static {p0}, Lcom/xiaomi/push/gc;->a([B)Lcom/xiaomi/push/gc;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/push/gc;->a(Lcom/xiaomi/push/gc;)B

    move-result v0

    if-eqz v0, :cond_28

    invoke-static {p0}, Lcom/xiaomi/push/gc;->a(Lcom/xiaomi/push/gc;)B

    move-result v0

    invoke-interface {p1}, Lcom/xiaomi/push/gc$b;->a()B

    move-result v1

    if-eq v0, v1, :cond_1b

    goto :goto_28

    :cond_1b
    invoke-static {p0}, Lcom/xiaomi/push/gc;->a(Lcom/xiaomi/push/gc;)[B

    move-result-object v0

    invoke-static {p0}, Lcom/xiaomi/push/gc;->a(Lcom/xiaomi/push/gc;)I

    move-result p0

    invoke-interface {p1, v0, p0}, Lcom/xiaomi/push/gc$b;->a([BI)[B

    move-result-object p0

    return-object p0

    :cond_28
    :goto_28
    invoke-static {p0}, Lcom/xiaomi/push/gc;->a(Lcom/xiaomi/push/gc;)[B

    move-result-object p0

    :cond_2c
    return-object p0
.end method
