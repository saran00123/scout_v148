.class Lcom/alibaba/sdk/android/push/g/a$b;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sdk/android/push/g/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/sdk/android/push/g/a;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/push/g/a;)V
    .registers 2

    iput-object p1, p0, Lcom/alibaba/sdk/android/push/g/a$b;->a:Lcom/alibaba/sdk/android/push/g/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    if-eqz p2, :cond_54

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    const/4 p1, 0x0

    const-string v0, "noConnectivity"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_2b

    iget-object p1, p0, Lcom/alibaba/sdk/android/push/g/a$b;->a:Lcom/alibaba/sdk/android/push/g/a;

    iget-boolean p1, p1, Lcom/alibaba/sdk/android/push/g/a;->d:Z

    if-nez p1, :cond_54

    iget-object p1, p0, Lcom/alibaba/sdk/android/push/g/a$b;->a:Lcom/alibaba/sdk/android/push/g/a;

    iget-boolean p1, p1, Lcom/alibaba/sdk/android/push/g/a;->b:Z

    if-eqz p1, :cond_54

    :goto_23
    iget-object p1, p0, Lcom/alibaba/sdk/android/push/g/a$b;->a:Lcom/alibaba/sdk/android/push/g/a;

    iget-object p1, p1, Lcom/alibaba/sdk/android/push/g/a;->a:Lcom/alibaba/sdk/android/push/g/a$a;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/push/g/a$a;->a()V

    goto :goto_54

    :cond_2b
    invoke-static {}, Lcom/alibaba/sdk/android/push/g/a;->c()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object p1

    const-string p2, "Network has lost"

    invoke-virtual {p1, p2}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;)V

    goto :goto_54

    :cond_35
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_54

    invoke-static {p1}, Lcom/alibaba/sdk/android/push/common/util/a;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_54

    iget-object p1, p0, Lcom/alibaba/sdk/android/push/g/a$b;->a:Lcom/alibaba/sdk/android/push/g/a;

    iget-boolean p1, p1, Lcom/alibaba/sdk/android/push/g/a;->d:Z

    if-nez p1, :cond_54

    iget-object p1, p0, Lcom/alibaba/sdk/android/push/g/a$b;->a:Lcom/alibaba/sdk/android/push/g/a;

    iget-boolean p1, p1, Lcom/alibaba/sdk/android/push/g/a;->b:Z

    if-eqz p1, :cond_54

    goto :goto_23

    :cond_54
    :goto_54
    return-void
.end method
