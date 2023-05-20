.class Lcom/huawei/hms/framework/network/grs/c$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/framework/network/grs/c;-><init>(Landroid/content/Context;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/huawei/hms/framework/network/grs/c;


# direct methods
.method constructor <init>(Lcom/huawei/hms/framework/network/grs/c;Landroid/content/Context;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Landroid/content/Context;)V
    .registers 5

    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/c$a;->d:Lcom/huawei/hms/framework/network/grs/c;

    iput-object p2, p0, Lcom/huawei/hms/framework/network/grs/c$a;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/huawei/hms/framework/network/grs/c$a;->b:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    iput-object p4, p0, Lcom/huawei/hms/framework/network/grs/c$a;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .registers 7

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/c$a;->d:Lcom/huawei/hms/framework/network/grs/c;

    new-instance v1, Lcom/huawei/hms/framework/network/grs/g/i;

    invoke-direct {v1}, Lcom/huawei/hms/framework/network/grs/g/i;-><init>()V

    invoke-static {v0, v1}, Lcom/huawei/hms/framework/network/grs/c;->a(Lcom/huawei/hms/framework/network/grs/c;Lcom/huawei/hms/framework/network/grs/g/i;)Lcom/huawei/hms/framework/network/grs/g/i;

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/c$a;->d:Lcom/huawei/hms/framework/network/grs/c;

    new-instance v1, Lcom/huawei/hms/framework/network/grs/e/c;

    iget-object v2, p0, Lcom/huawei/hms/framework/network/grs/c$a;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/huawei/hms/framework/network/grs/GrsApp;->getInstance()Lcom/huawei/hms/framework/network/grs/GrsApp;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Lcom/huawei/hms/framework/network/grs/GrsApp;->getBrand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "share_pre_grs_conf_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/huawei/hms/framework/network/grs/e/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/huawei/hms/framework/network/grs/c;->a(Lcom/huawei/hms/framework/network/grs/c;Lcom/huawei/hms/framework/network/grs/e/c;)Lcom/huawei/hms/framework/network/grs/e/c;

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/c$a;->d:Lcom/huawei/hms/framework/network/grs/c;

    new-instance v1, Lcom/huawei/hms/framework/network/grs/e/c;

    iget-object v2, p0, Lcom/huawei/hms/framework/network/grs/c$a;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/huawei/hms/framework/network/grs/GrsApp;->getInstance()Lcom/huawei/hms/framework/network/grs/GrsApp;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/huawei/hms/framework/network/grs/GrsApp;->getBrand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "share_pre_grs_services_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/huawei/hms/framework/network/grs/e/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/huawei/hms/framework/network/grs/c;->b(Lcom/huawei/hms/framework/network/grs/c;Lcom/huawei/hms/framework/network/grs/e/c;)Lcom/huawei/hms/framework/network/grs/e/c;

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/c$a;->d:Lcom/huawei/hms/framework/network/grs/c;

    new-instance v1, Lcom/huawei/hms/framework/network/grs/e/a;

    invoke-static {v0}, Lcom/huawei/hms/framework/network/grs/c;->b(Lcom/huawei/hms/framework/network/grs/c;)Lcom/huawei/hms/framework/network/grs/e/c;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/hms/framework/network/grs/c$a;->d:Lcom/huawei/hms/framework/network/grs/c;

    invoke-static {v3}, Lcom/huawei/hms/framework/network/grs/c;->c(Lcom/huawei/hms/framework/network/grs/c;)Lcom/huawei/hms/framework/network/grs/e/c;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/hms/framework/network/grs/c$a;->d:Lcom/huawei/hms/framework/network/grs/c;

    invoke-static {v4}, Lcom/huawei/hms/framework/network/grs/c;->a(Lcom/huawei/hms/framework/network/grs/c;)Lcom/huawei/hms/framework/network/grs/g/i;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/huawei/hms/framework/network/grs/e/a;-><init>(Lcom/huawei/hms/framework/network/grs/e/c;Lcom/huawei/hms/framework/network/grs/e/c;Lcom/huawei/hms/framework/network/grs/g/i;)V

    invoke-static {v0, v1}, Lcom/huawei/hms/framework/network/grs/c;->a(Lcom/huawei/hms/framework/network/grs/c;Lcom/huawei/hms/framework/network/grs/e/a;)Lcom/huawei/hms/framework/network/grs/e/a;

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/c$a;->d:Lcom/huawei/hms/framework/network/grs/c;

    new-instance v1, Lcom/huawei/hms/framework/network/grs/a;

    invoke-static {v0}, Lcom/huawei/hms/framework/network/grs/c;->e(Lcom/huawei/hms/framework/network/grs/c;)Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/hms/framework/network/grs/c$a;->d:Lcom/huawei/hms/framework/network/grs/c;

    invoke-static {v3}, Lcom/huawei/hms/framework/network/grs/c;->d(Lcom/huawei/hms/framework/network/grs/c;)Lcom/huawei/hms/framework/network/grs/e/a;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/hms/framework/network/grs/c$a;->d:Lcom/huawei/hms/framework/network/grs/c;

    invoke-static {v4}, Lcom/huawei/hms/framework/network/grs/c;->a(Lcom/huawei/hms/framework/network/grs/c;)Lcom/huawei/hms/framework/network/grs/g/i;

    move-result-object v4

    iget-object v5, p0, Lcom/huawei/hms/framework/network/grs/c$a;->d:Lcom/huawei/hms/framework/network/grs/c;

    invoke-static {v5}, Lcom/huawei/hms/framework/network/grs/c;->c(Lcom/huawei/hms/framework/network/grs/c;)Lcom/huawei/hms/framework/network/grs/e/c;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/huawei/hms/framework/network/grs/a;-><init>(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Lcom/huawei/hms/framework/network/grs/e/a;Lcom/huawei/hms/framework/network/grs/g/i;Lcom/huawei/hms/framework/network/grs/e/c;)V

    invoke-static {v0, v1}, Lcom/huawei/hms/framework/network/grs/c;->a(Lcom/huawei/hms/framework/network/grs/c;Lcom/huawei/hms/framework/network/grs/a;)Lcom/huawei/hms/framework/network/grs/a;

    new-instance v0, Lcom/huawei/hms/framework/network/grs/f/b;

    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/c$a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/huawei/hms/framework/network/grs/c$a;->b:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/hms/framework/network/grs/f/b;-><init>(Landroid/content/Context;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Z)V

    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/c$a;->b:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    invoke-virtual {v0, v1}, Lcom/huawei/hms/framework/network/grs/f/b;->a(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;)V

    new-instance v0, Lcom/huawei/hms/framework/network/grs/g/l/c;

    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/c$a;->b:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    iget-object v2, p0, Lcom/huawei/hms/framework/network/grs/c$a;->a:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/huawei/hms/framework/network/grs/g/l/c;-><init>(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/huawei/hms/framework/network/grs/g/l/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/huawei/hms/framework/network/grs/c;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scan serviceSet is:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/c$a;->d:Lcom/huawei/hms/framework/network/grs/c;

    invoke-static {v1}, Lcom/huawei/hms/framework/network/grs/c;->c(Lcom/huawei/hms/framework/network/grs/c;)Lcom/huawei/hms/framework/network/grs/e/c;

    move-result-object v1

    const-string v2, "services"

    const-string v4, ""

    invoke-virtual {v1, v2, v4}, Lcom/huawei/hms/framework/network/grs/e/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/huawei/hms/framework/network/grs/g/j;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_13a

    iget-object v4, p0, Lcom/huawei/hms/framework/network/grs/c$a;->d:Lcom/huawei/hms/framework/network/grs/c;

    invoke-static {v4}, Lcom/huawei/hms/framework/network/grs/c;->c(Lcom/huawei/hms/framework/network/grs/c;)Lcom/huawei/hms/framework/network/grs/e/c;

    move-result-object v4

    invoke-virtual {v4, v2, v0}, Lcom/huawei/hms/framework/network/grs/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/huawei/hms/framework/network/grs/c;->c()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "postList is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " currentServices:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13a

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/c$a;->d:Lcom/huawei/hms/framework/network/grs/c;

    invoke-static {v0}, Lcom/huawei/hms/framework/network/grs/c;->e(Lcom/huawei/hms/framework/network/grs/c;)Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/c$a;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->getGrsParasKey(ZZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/c$a;->d:Lcom/huawei/hms/framework/network/grs/c;

    invoke-static {v1}, Lcom/huawei/hms/framework/network/grs/c;->a(Lcom/huawei/hms/framework/network/grs/c;)Lcom/huawei/hms/framework/network/grs/g/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/huawei/hms/framework/network/grs/g/i;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/c$a;->d:Lcom/huawei/hms/framework/network/grs/c;

    invoke-static {v0}, Lcom/huawei/hms/framework/network/grs/c;->a(Lcom/huawei/hms/framework/network/grs/c;)Lcom/huawei/hms/framework/network/grs/g/i;

    move-result-object v0

    new-instance v1, Lcom/huawei/hms/framework/network/grs/g/l/c;

    iget-object v2, p0, Lcom/huawei/hms/framework/network/grs/c$a;->b:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    iget-object v4, p0, Lcom/huawei/hms/framework/network/grs/c$a;->c:Landroid/content/Context;

    invoke-direct {v1, v2, v4}, Lcom/huawei/hms/framework/network/grs/g/l/c;-><init>(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Landroid/content/Context;)V

    iget-object v2, p0, Lcom/huawei/hms/framework/network/grs/c$a;->d:Lcom/huawei/hms/framework/network/grs/c;

    invoke-static {v2}, Lcom/huawei/hms/framework/network/grs/c;->c(Lcom/huawei/hms/framework/network/grs/c;)Lcom/huawei/hms/framework/network/grs/e/c;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v4, v2}, Lcom/huawei/hms/framework/network/grs/g/i;->a(Lcom/huawei/hms/framework/network/grs/g/l/c;Lcom/huawei/hms/framework/network/grs/b;Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/e/c;)V

    :cond_13a
    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/c$a;->d:Lcom/huawei/hms/framework/network/grs/c;

    invoke-static {v0}, Lcom/huawei/hms/framework/network/grs/c;->b(Lcom/huawei/hms/framework/network/grs/c;)Lcom/huawei/hms/framework/network/grs/e/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/hms/framework/network/grs/e/c;->a()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hms/framework/network/grs/c;->a(Lcom/huawei/hms/framework/network/grs/c;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/c$a;->d:Lcom/huawei/hms/framework/network/grs/c;

    invoke-static {v0}, Lcom/huawei/hms/framework/network/grs/c;->d(Lcom/huawei/hms/framework/network/grs/c;)Lcom/huawei/hms/framework/network/grs/e/a;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/c$a;->b:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    iget-object v2, p0, Lcom/huawei/hms/framework/network/grs/c$a;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/huawei/hms/framework/network/grs/e/a;->b(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/c$a;->d:Lcom/huawei/hms/framework/network/grs/c;

    invoke-static {v0, v3}, Lcom/huawei/hms/framework/network/grs/c;->a(Lcom/huawei/hms/framework/network/grs/c;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/huawei/hms/framework/network/grs/c$a;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
