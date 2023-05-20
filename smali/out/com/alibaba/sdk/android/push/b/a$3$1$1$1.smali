.class Lcom/alibaba/sdk/android/push/b/a$3$1$1$1;
.super Lcom/taobao/agoo/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/sdk/android/push/b/a$3$1$1;->onFailed(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/sdk/android/push/b/a$3$1$1;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/push/b/a$3$1$1;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/alibaba/sdk/android/push/b/a$3$1$1$1;->c:Lcom/alibaba/sdk/android/push/b/a$3$1$1;

    iput-object p2, p0, Lcom/alibaba/sdk/android/push/b/a$3$1$1$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/sdk/android/push/b/a$3$1$1$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/taobao/agoo/ICallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object p1, p0, Lcom/alibaba/sdk/android/push/b/a$3$1$1$1;->c:Lcom/alibaba/sdk/android/push/b/a$3$1$1;

    iget-object p1, p1, Lcom/alibaba/sdk/android/push/b/a$3$1$1;->a:Lcom/alibaba/sdk/android/push/b/a$3$1;

    iget-object p1, p1, Lcom/alibaba/sdk/android/push/b/a$3$1;->a:Lcom/alibaba/sdk/android/push/b/a$3;

    iget-object p1, p1, Lcom/alibaba/sdk/android/push/b/a$3;->a:Lcom/alibaba/sdk/android/push/CommonCallback;

    if-eqz p1, :cond_25

    iget-object p1, p0, Lcom/alibaba/sdk/android/push/b/a$3$1$1$1;->c:Lcom/alibaba/sdk/android/push/b/a$3$1$1;

    iget-object p1, p1, Lcom/alibaba/sdk/android/push/b/a$3$1$1;->a:Lcom/alibaba/sdk/android/push/b/a$3$1;

    iget-object p1, p1, Lcom/alibaba/sdk/android/push/b/a$3$1;->a:Lcom/alibaba/sdk/android/push/b/a$3;

    iget-object p1, p1, Lcom/alibaba/sdk/android/push/b/a$3;->a:Lcom/alibaba/sdk/android/push/CommonCallback;

    sget-object p2, Lcom/alibaba/sdk/android/push/common/a/f;->m:Lcom/alibaba/sdk/android/push/common/a/f;

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/push/common/a/f;->a()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/alibaba/sdk/android/push/common/a/f;->m:Lcom/alibaba/sdk/android/push/common/a/f;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/push/common/a/f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/alibaba/sdk/android/push/CommonCallback;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    :cond_25
    return-void
.end method

.method public onSuccess()V
    .registers 4

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/b/a$3$1$1$1;->c:Lcom/alibaba/sdk/android/push/b/a$3$1$1;

    iget-object v0, v0, Lcom/alibaba/sdk/android/push/b/a$3$1$1;->a:Lcom/alibaba/sdk/android/push/b/a$3$1;

    iget-object v0, v0, Lcom/alibaba/sdk/android/push/b/a$3$1;->a:Lcom/alibaba/sdk/android/push/b/a$3;

    iget-object v0, v0, Lcom/alibaba/sdk/android/push/b/a$3;->a:Lcom/alibaba/sdk/android/push/CommonCallback;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/b/a$3$1$1$1;->c:Lcom/alibaba/sdk/android/push/b/a$3$1$1;

    iget-object v0, v0, Lcom/alibaba/sdk/android/push/b/a$3$1$1;->a:Lcom/alibaba/sdk/android/push/b/a$3$1;

    iget-object v0, v0, Lcom/alibaba/sdk/android/push/b/a$3$1;->a:Lcom/alibaba/sdk/android/push/b/a$3;

    iget-object v0, v0, Lcom/alibaba/sdk/android/push/b/a$3;->a:Lcom/alibaba/sdk/android/push/CommonCallback;

    iget-object v1, p0, Lcom/alibaba/sdk/android/push/b/a$3$1$1$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/sdk/android/push/b/a$3$1$1$1;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/sdk/android/push/CommonCallback;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    return-void
.end method
