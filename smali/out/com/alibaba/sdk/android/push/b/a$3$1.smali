.class Lcom/alibaba/sdk/android/push/b/a$3$1;
.super Lcom/taobao/agoo/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/sdk/android/push/b/a$3;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/sdk/android/push/b/a$3;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/push/b/a$3;)V
    .registers 2

    iput-object p1, p0, Lcom/alibaba/sdk/android/push/b/a$3$1;->a:Lcom/alibaba/sdk/android/push/b/a$3;

    invoke-direct {p0}, Lcom/taobao/agoo/ICallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object p1, p0, Lcom/alibaba/sdk/android/push/b/a$3$1;->a:Lcom/alibaba/sdk/android/push/b/a$3;

    iget-object p1, p1, Lcom/alibaba/sdk/android/push/b/a$3;->a:Lcom/alibaba/sdk/android/push/CommonCallback;

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/alibaba/sdk/android/push/b/a$3$1;->a:Lcom/alibaba/sdk/android/push/b/a$3;

    iget-object p1, p1, Lcom/alibaba/sdk/android/push/b/a$3;->a:Lcom/alibaba/sdk/android/push/CommonCallback;

    sget-object v0, Lcom/alibaba/sdk/android/push/common/a/f;->m:Lcom/alibaba/sdk/android/push/common/a/f;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/push/common/a/f;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcom/alibaba/sdk/android/push/CommonCallback;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    return-void
.end method

.method public onSuccess()V
    .registers 3

    invoke-static {}, Lcom/alibaba/sdk/android/push/g/g;->a()Lcom/alibaba/sdk/android/push/g/g;

    move-result-object v0

    new-instance v1, Lcom/alibaba/sdk/android/push/b/a$3$1$1;

    invoke-direct {v1, p0}, Lcom/alibaba/sdk/android/push/b/a$3$1$1;-><init>(Lcom/alibaba/sdk/android/push/b/a$3$1;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/push/g/g;->e(Lcom/alibaba/sdk/android/push/CommonCallback;)V

    return-void
.end method
