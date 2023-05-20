.class public Lcom/huawei/updatesdk/a/a/d/h/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Landroid/car/Car; = null

.field private static b:Ljava/lang/String; = null

.field private static c:Ljava/lang/String; = null

.field private static d:Z = false


# direct methods
.method static synthetic a()Landroid/car/Car;
    .registers 1

    sget-object v0, Lcom/huawei/updatesdk/a/a/d/h/a;->a:Landroid/car/Car;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    sput-object p0, Lcom/huawei/updatesdk/a/a/d/h/a;->c:Ljava/lang/String;

    return-object p0
.end method

.method private static a(Landroid/content/Context;)V
    .registers 3

    if-eqz p0, :cond_3e

    sget-boolean v0, Lcom/huawei/updatesdk/a/a/d/h/a;->d:Z

    if-eqz v0, :cond_7

    goto :goto_3e

    :cond_7
    const/4 v0, 0x1

    :try_start_8
    sput-boolean v0, Lcom/huawei/updatesdk/a/a/d/h/a;->d:Z

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Lcom/huawei/updatesdk/a/a/d/h/a$a;

    invoke-direct {v0}, Lcom/huawei/updatesdk/a/a/d/h/a$a;-><init>()V

    invoke-static {p0, v0}, Landroid/car/Car;->createCar(Landroid/content/Context;Landroid/content/ServiceConnection;)Landroid/car/Car;

    move-result-object p0

    sput-object p0, Lcom/huawei/updatesdk/a/a/d/h/a;->a:Landroid/car/Car;

    sget-object p0, Lcom/huawei/updatesdk/a/a/d/h/a;->a:Landroid/car/Car;

    if-eqz p0, :cond_3e

    sget-object p0, Lcom/huawei/updatesdk/a/a/d/h/a;->a:Landroid/car/Car;

    invoke-virtual {p0}, Landroid/car/Car;->connect()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_23

    goto :goto_3e

    :catchall_23
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Car Service Connect Error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CarInfoUtil"

    invoke-static {v0, p0}, Lcom/huawei/updatesdk/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3e
    :goto_3e
    return-void
.end method

.method static synthetic b()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/huawei/updatesdk/a/a/d/h/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    sput-object p0, Lcom/huawei/updatesdk/a/a/d/h/a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static b(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/huawei/updatesdk/a/a/d/h/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic c()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/huawei/updatesdk/a/a/d/h/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/huawei/updatesdk/a/a/d/h/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static e()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/huawei/updatesdk/a/a/d/h/a;->b:Ljava/lang/String;

    return-object v0
.end method
