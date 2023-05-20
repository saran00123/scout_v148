.class Lcom/alibaba/sdk/android/push/g/a$a$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/sdk/android/push/g/a$a;->onLooperPrepared()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/sdk/android/push/g/a$a;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/push/g/a$a;)V
    .registers 2

    iput-object p1, p0, Lcom/alibaba/sdk/android/push/g/a$a$1;->a:Lcom/alibaba/sdk/android/push/g/a$a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_a

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_57

    :cond_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Lcom/alibaba/sdk/android/push/g/a;->c()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Looping handleMessage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->d(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    if-ne p1, v2, :cond_2d

    invoke-virtual {p0, v1}, Lcom/alibaba/sdk/android/push/g/a$a$1;->removeMessages(I)V

    :cond_2d
    iget-object p1, p0, Lcom/alibaba/sdk/android/push/g/a$a$1;->a:Lcom/alibaba/sdk/android/push/g/a$a;

    iget-object p1, p1, Lcom/alibaba/sdk/android/push/g/a$a;->f:Lcom/alibaba/sdk/android/push/g/a;

    iget-boolean p1, p1, Lcom/alibaba/sdk/android/push/g/a;->d:Z

    if-nez p1, :cond_57

    iget-object p1, p0, Lcom/alibaba/sdk/android/push/g/a$a$1;->a:Lcom/alibaba/sdk/android/push/g/a$a;

    invoke-static {p1, v0}, Lcom/alibaba/sdk/android/push/g/a$a;->a(Lcom/alibaba/sdk/android/push/g/a$a;Ljava/lang/Object;)Lcom/alibaba/sdk/android/push/g/e;

    move-result-object p1

    if-eqz p1, :cond_57

    iget-object v1, p0, Lcom/alibaba/sdk/android/push/g/a$a$1;->a:Lcom/alibaba/sdk/android/push/g/a$a;

    invoke-virtual {v1, p1}, Lcom/alibaba/sdk/android/push/g/a$a;->a(Lcom/alibaba/sdk/android/push/g/e;)Z

    move-result v1

    if-eqz v1, :cond_4b

    iget-object v1, p0, Lcom/alibaba/sdk/android/push/g/a$a$1;->a:Lcom/alibaba/sdk/android/push/g/a$a;

    iget v1, v1, Lcom/alibaba/sdk/android/push/g/a$a;->d:I

    if-gt v1, v2, :cond_57

    :cond_4b
    iget-object v1, p0, Lcom/alibaba/sdk/android/push/g/a$a$1;->a:Lcom/alibaba/sdk/android/push/g/a$a;

    iget-object v1, v1, Lcom/alibaba/sdk/android/push/g/a$a;->b:Landroid/os/Handler;

    new-instance v2, Lcom/alibaba/sdk/android/push/g/a$a$1$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/alibaba/sdk/android/push/g/a$a$1$1;-><init>(Lcom/alibaba/sdk/android/push/g/a$a$1;Ljava/lang/Object;Lcom/alibaba/sdk/android/push/g/e;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_57
    return-void
.end method
