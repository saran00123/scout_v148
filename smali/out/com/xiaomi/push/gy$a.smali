.class public Lcom/xiaomi/push/gy$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/gy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/xiaomi/push/gy$a;

.field public static final b:Lcom/xiaomi/push/gy$a;

.field public static final c:Lcom/xiaomi/push/gy$a;

.field public static final d:Lcom/xiaomi/push/gy$a;

.field public static final e:Lcom/xiaomi/push/gy$a;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/xiaomi/push/gy$a;

    const-string v1, "get"

    invoke-direct {v0, v1}, Lcom/xiaomi/push/gy$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/push/gy$a;->a:Lcom/xiaomi/push/gy$a;

    new-instance v0, Lcom/xiaomi/push/gy$a;

    const-string v1, "set"

    invoke-direct {v0, v1}, Lcom/xiaomi/push/gy$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/push/gy$a;->b:Lcom/xiaomi/push/gy$a;

    new-instance v0, Lcom/xiaomi/push/gy$a;

    const-string v1, "result"

    invoke-direct {v0, v1}, Lcom/xiaomi/push/gy$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/push/gy$a;->c:Lcom/xiaomi/push/gy$a;

    new-instance v0, Lcom/xiaomi/push/gy$a;

    const-string v1, "error"

    invoke-direct {v0, v1}, Lcom/xiaomi/push/gy$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/push/gy$a;->d:Lcom/xiaomi/push/gy$a;

    new-instance v0, Lcom/xiaomi/push/gy$a;

    const-string v1, "command"

    invoke-direct {v0, v1}, Lcom/xiaomi/push/gy$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/push/gy$a;->e:Lcom/xiaomi/push/gy$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/push/gy$a;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/xiaomi/push/gy$a;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/xiaomi/push/gy$a;->a:Lcom/xiaomi/push/gy$a;

    invoke-virtual {v1}, Lcom/xiaomi/push/gy$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    sget-object p0, Lcom/xiaomi/push/gy$a;->a:Lcom/xiaomi/push/gy$a;

    return-object p0

    :cond_17
    sget-object v1, Lcom/xiaomi/push/gy$a;->b:Lcom/xiaomi/push/gy$a;

    invoke-virtual {v1}, Lcom/xiaomi/push/gy$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    sget-object p0, Lcom/xiaomi/push/gy$a;->b:Lcom/xiaomi/push/gy$a;

    return-object p0

    :cond_26
    sget-object v1, Lcom/xiaomi/push/gy$a;->d:Lcom/xiaomi/push/gy$a;

    invoke-virtual {v1}, Lcom/xiaomi/push/gy$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    sget-object p0, Lcom/xiaomi/push/gy$a;->d:Lcom/xiaomi/push/gy$a;

    return-object p0

    :cond_35
    sget-object v1, Lcom/xiaomi/push/gy$a;->c:Lcom/xiaomi/push/gy$a;

    invoke-virtual {v1}, Lcom/xiaomi/push/gy$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    sget-object p0, Lcom/xiaomi/push/gy$a;->c:Lcom/xiaomi/push/gy$a;

    return-object p0

    :cond_44
    sget-object v1, Lcom/xiaomi/push/gy$a;->e:Lcom/xiaomi/push/gy$a;

    invoke-virtual {v1}, Lcom/xiaomi/push/gy$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_53

    sget-object p0, Lcom/xiaomi/push/gy$a;->e:Lcom/xiaomi/push/gy$a;

    return-object p0

    :cond_53
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/gy$a;->a:Ljava/lang/String;

    return-object v0
.end method
