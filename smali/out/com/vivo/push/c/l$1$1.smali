.class final Lcom/vivo/push/c/l$1$1;
.super Ljava/lang/Object;
.source "OnNotificationArrivedReceiveTask.java"

# interfaces
.implements Lcom/vivo/push/c/l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/push/c/l$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vivo/push/c/l$1;


# direct methods
.method constructor <init>(Lcom/vivo/push/c/l$1;)V
    .registers 2

    .line 116
    iput-object p1, p0, Lcom/vivo/push/c/l$1$1;->a:Lcom/vivo/push/c/l$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .line 119
    iget-object v0, p0, Lcom/vivo/push/c/l$1$1;->a:Lcom/vivo/push/c/l$1;

    iget-object v0, v0, Lcom/vivo/push/c/l$1;->d:Lcom/vivo/push/c/l;

    iget-object v1, p0, Lcom/vivo/push/c/l$1$1;->a:Lcom/vivo/push/c/l$1;

    iget-object v1, v1, Lcom/vivo/push/c/l$1;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/vivo/push/c/l;->a(Lcom/vivo/push/c/l;Ljava/lang/String;)V

    return-void
.end method

.method public final b()V
    .registers 4

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pkg name : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/push/c/l$1$1;->a:Lcom/vivo/push/c/l$1;

    iget-object v1, v1, Lcom/vivo/push/c/l$1;->d:Lcom/vivo/push/c/l;

    invoke-static {v1}, Lcom/vivo/push/c/l;->f(Lcom/vivo/push/c/l;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \u901a\u77e5\u5c55\u793a\u5931\u8d25"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnNotificationArrivedTask"

    invoke-static {v1, v0}, Lcom/vivo/push/util/n;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v0, p0, Lcom/vivo/push/c/l$1$1;->a:Lcom/vivo/push/c/l$1;

    iget-object v0, v0, Lcom/vivo/push/c/l$1;->d:Lcom/vivo/push/c/l;

    invoke-static {v0}, Lcom/vivo/push/c/l;->g(Lcom/vivo/push/c/l;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "\u7cfb\u7edf\u9519\u8bef\u5bfc\u81f4\u901a\u77e5\u5c55\u793a\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/vivo/push/util/n;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/vivo/push/c/l$1$1;->a:Lcom/vivo/push/c/l$1;

    iget-object v0, v0, Lcom/vivo/push/c/l$1;->d:Lcom/vivo/push/c/l;

    iget-object v1, p0, Lcom/vivo/push/c/l$1$1;->a:Lcom/vivo/push/c/l$1;

    iget-object v1, v1, Lcom/vivo/push/c/l$1;->b:Ljava/lang/String;

    const/16 v2, 0x847

    invoke-static {v0, v1, v2}, Lcom/vivo/push/c/l;->a(Lcom/vivo/push/c/l;Ljava/lang/String;I)V

    return-void
.end method
