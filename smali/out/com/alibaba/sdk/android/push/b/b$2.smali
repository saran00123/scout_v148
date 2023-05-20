.class Lcom/alibaba/sdk/android/push/b/b$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/sdk/android/push/CommonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/sdk/android/push/b/b;->a(Landroid/content/Context;Lcom/alibaba/sdk/android/push/CommonCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/sdk/android/push/CommonCallback;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/alibaba/sdk/android/push/b/b;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/push/b/b;Lcom/alibaba/sdk/android/push/CommonCallback;Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lcom/alibaba/sdk/android/push/b/b$2;->c:Lcom/alibaba/sdk/android/push/b/b;

    iput-object p2, p0, Lcom/alibaba/sdk/android/push/b/b$2;->a:Lcom/alibaba/sdk/android/push/CommonCallback;

    iput-object p3, p0, Lcom/alibaba/sdk/android/push/b/b$2;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    :try_start_0
    invoke-static {}, Lcom/taobao/accs/AccsState;->getInstance()Lcom/taobao/accs/AccsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/accs/AccsState;->getState()Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_a

    :catch_9
    const/4 v0, 0x0

    :goto_a
    iget-object v1, p0, Lcom/alibaba/sdk/android/push/b/b$2;->a:Lcom/alibaba/sdk/android/push/CommonCallback;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Lcom/alibaba/sdk/android/push/CommonCallback;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/b/b$2;->a:Lcom/alibaba/sdk/android/push/CommonCallback;

    invoke-interface {v0, p1}, Lcom/alibaba/sdk/android/push/CommonCallback;->onSuccess(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/alibaba/sdk/android/push/b/b$2;->c:Lcom/alibaba/sdk/android/push/b/b;

    invoke-static {p1}, Lcom/alibaba/sdk/android/push/b/b;->a(Lcom/alibaba/sdk/android/push/b/b;)Lcom/alibaba/sdk/android/push/b/a;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/b/b$2;->b:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/alibaba/sdk/android/push/b/a;->b(Landroid/content/Context;)V

    return-void
.end method
