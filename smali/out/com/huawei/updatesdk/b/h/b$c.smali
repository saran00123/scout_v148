.class Lcom/huawei/updatesdk/b/h/b$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/updatesdk/b/h/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/huawei/updatesdk/b/h/b$a;)V
    .registers 2

    invoke-direct {p0}, Lcom/huawei/updatesdk/b/h/b$c;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    const-string v0, "PackageManagerRunnable"

    const-string v1, "PackageManagerRunnable run!!!!"

    invoke-static {v0, v1}, Lcom/huawei/updatesdk/a/a/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/huawei/updatesdk/b/d/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/huawei/updatesdk/a/a/d/d;->a(Ljava/io/File;)Z

    return-void
.end method
