.class Lcom/huawei/updatesdk/b/d/c$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/updatesdk/b/d/c;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/huawei/updatesdk/b/d/c;


# direct methods
.method constructor <init>(Lcom/huawei/updatesdk/b/d/c;)V
    .registers 2

    iput-object p1, p0, Lcom/huawei/updatesdk/b/d/c$a;->a:Lcom/huawei/updatesdk/b/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/huawei/updatesdk/b/d/c$a;->a:Lcom/huawei/updatesdk/b/d/c;

    invoke-static {v0}, Lcom/huawei/updatesdk/b/d/c;->a(Lcom/huawei/updatesdk/b/d/c;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/huawei/updatesdk/b/d/c$a;->a:Lcom/huawei/updatesdk/b/d/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/huawei/updatesdk/b/d/c;->a(Lcom/huawei/updatesdk/b/d/c;Z)Z

    iget-object v0, p0, Lcom/huawei/updatesdk/b/d/c$a;->a:Lcom/huawei/updatesdk/b/d/c;

    invoke-static {v0}, Lcom/huawei/updatesdk/b/d/c;->a(Lcom/huawei/updatesdk/b/d/c;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_17
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/huawei/updatesdk/b/d/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/huawei/updatesdk/a/a/d/d;->a(Ljava/io/File;)Z

    return-void
.end method
