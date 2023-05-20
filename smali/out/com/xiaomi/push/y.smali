.class Lcom/xiaomi/push/y;
.super Lcom/xiaomi/push/x;


# instance fields
.field final synthetic a:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/Runnable;)V
    .registers 4

    iput-object p3, p0, Lcom/xiaomi/push/y;->a:Ljava/lang/Runnable;

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/push/x;-><init>(Landroid/content/Context;Ljava/io/File;Lcom/xiaomi/push/y;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)V
    .registers 2

    iget-object p1, p0, Lcom/xiaomi/push/y;->a:Ljava/lang/Runnable;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_7
    return-void
.end method
