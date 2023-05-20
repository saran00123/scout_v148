.class Lcom/alibaba/sdk/android/push/b/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/sdk/android/push/CommonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/sdk/android/push/b/a;->d(Lcom/alibaba/sdk/android/push/CommonCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/sdk/android/push/CommonCallback;

.field final synthetic b:Lcom/alibaba/sdk/android/push/b/a;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/push/b/a;Lcom/alibaba/sdk/android/push/CommonCallback;)V
    .registers 3

    iput-object p1, p0, Lcom/alibaba/sdk/android/push/b/a$2;->b:Lcom/alibaba/sdk/android/push/b/a;

    iput-object p2, p0, Lcom/alibaba/sdk/android/push/b/a$2;->a:Lcom/alibaba/sdk/android/push/CommonCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/b/a$2;->a:Lcom/alibaba/sdk/android/push/CommonCallback;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2}, Lcom/alibaba/sdk/android/push/CommonCallback;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .registers 4

    const-string v0, "off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {}, Lcom/alibaba/sdk/android/push/b/a;->c()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v0

    const-string v1, "already off. return"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/b/a$2;->a:Lcom/alibaba/sdk/android/push/CommonCallback;

    if-eqz v0, :cond_27

    invoke-interface {v0, p1}, Lcom/alibaba/sdk/android/push/CommonCallback;->onSuccess(Ljava/lang/String;)V

    goto :goto_27

    :cond_19
    iget-object p1, p0, Lcom/alibaba/sdk/android/push/b/a$2;->b:Lcom/alibaba/sdk/android/push/b/a;

    invoke-static {p1}, Lcom/alibaba/sdk/android/push/b/a;->a(Lcom/alibaba/sdk/android/push/b/a;)Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/alibaba/sdk/android/push/b/a$2$1;

    invoke-direct {v0, p0}, Lcom/alibaba/sdk/android/push/b/a$2$1;-><init>(Lcom/alibaba/sdk/android/push/b/a$2;)V

    invoke-static {p1, v0}, Lcom/taobao/agoo/TaobaoRegister;->unbindAgoo(Landroid/content/Context;Lcom/taobao/agoo/ICallback;)V

    :cond_27
    :goto_27
    return-void
.end method
