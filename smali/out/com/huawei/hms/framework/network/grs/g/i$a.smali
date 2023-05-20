.class Lcom/huawei/hms/framework/network/grs/g/i$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/framework/network/grs/g/i;->a(Lcom/huawei/hms/framework/network/grs/g/l/c;Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/e/c;)Lcom/huawei/hms/framework/network/grs/g/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/huawei/hms/framework/network/grs/g/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/huawei/hms/framework/network/grs/g/l/c;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/huawei/hms/framework/network/grs/e/c;

.field final synthetic d:Lcom/huawei/hms/framework/network/grs/g/i;


# direct methods
.method constructor <init>(Lcom/huawei/hms/framework/network/grs/g/i;Lcom/huawei/hms/framework/network/grs/g/l/c;Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/e/c;)V
    .registers 5

    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/g/i$a;->d:Lcom/huawei/hms/framework/network/grs/g/i;

    iput-object p2, p0, Lcom/huawei/hms/framework/network/grs/g/i$a;->a:Lcom/huawei/hms/framework/network/grs/g/l/c;

    iput-object p3, p0, Lcom/huawei/hms/framework/network/grs/g/i$a;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/huawei/hms/framework/network/grs/g/i$a;->c:Lcom/huawei/hms/framework/network/grs/e/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/huawei/hms/framework/network/grs/g/e;
    .registers 5

    new-instance v0, Lcom/huawei/hms/framework/network/grs/g/d;

    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/g/i$a;->a:Lcom/huawei/hms/framework/network/grs/g/l/c;

    iget-object v2, p0, Lcom/huawei/hms/framework/network/grs/g/i$a;->d:Lcom/huawei/hms/framework/network/grs/g/i;

    invoke-static {v2}, Lcom/huawei/hms/framework/network/grs/g/i;->b(Lcom/huawei/hms/framework/network/grs/g/i;)Lcom/huawei/hms/framework/network/grs/e/a;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/huawei/hms/framework/network/grs/g/d;-><init>(Lcom/huawei/hms/framework/network/grs/g/l/c;Lcom/huawei/hms/framework/network/grs/e/a;)V

    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/g/i$a;->d:Lcom/huawei/hms/framework/network/grs/g/i;

    invoke-static {v1}, Lcom/huawei/hms/framework/network/grs/g/i;->a(Lcom/huawei/hms/framework/network/grs/g/i;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/hms/framework/network/grs/g/i$a;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/huawei/hms/framework/network/grs/g/i$a;->c:Lcom/huawei/hms/framework/network/grs/e/c;

    invoke-virtual {v0, v1, v2, v3}, Lcom/huawei/hms/framework/network/grs/g/d;->a(Ljava/util/concurrent/ExecutorService;Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/e/c;)Lcom/huawei/hms/framework/network/grs/g/e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/huawei/hms/framework/network/grs/g/i$a;->call()Lcom/huawei/hms/framework/network/grs/g/e;

    move-result-object v0

    return-object v0
.end method
