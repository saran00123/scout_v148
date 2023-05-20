.class Lcom/xiaomi/clientreport/manager/d;
.super Lcom/xiaomi/push/ak$a;


# instance fields
.field final synthetic a:Lcom/xiaomi/clientreport/manager/a;


# direct methods
.method constructor <init>(Lcom/xiaomi/clientreport/manager/a;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/clientreport/manager/d;->a:Lcom/xiaomi/clientreport/manager/a;

    invoke-direct {p0}, Lcom/xiaomi/push/ak$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "100888"

    return-object v0
.end method

.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/clientreport/manager/d;->a:Lcom/xiaomi/clientreport/manager/a;

    invoke-static {v0}, Lcom/xiaomi/clientreport/manager/a;->a(Lcom/xiaomi/clientreport/manager/a;)I

    move-result v0

    if-lez v0, :cond_16

    iget-object v0, p0, Lcom/xiaomi/clientreport/manager/d;->a:Lcom/xiaomi/clientreport/manager/a;

    invoke-static {v0}, Lcom/xiaomi/clientreport/manager/a;->a(Lcom/xiaomi/clientreport/manager/a;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/clientreport/manager/e;

    invoke-direct {v1, p0}, Lcom/xiaomi/clientreport/manager/e;-><init>(Lcom/xiaomi/clientreport/manager/d;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_16
    return-void
.end method
